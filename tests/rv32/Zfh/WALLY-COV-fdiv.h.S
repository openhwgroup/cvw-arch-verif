///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zfh//WALLY-COV-fdiv.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.543478
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
fdiv.h f8, f22, f14 # perform first operation
fdiv.h f7, f8, f1 # perform second operation

# Testcase cmp_gpr_hazard raw test
fdiv.h f10, f20, f24 # perform first operation
fdiv.h f4, f17, f10 # perform second operation

# Testcase cmp_gpr_hazard waw test
fdiv.h f11, f21, f5 # perform first operation
fdiv.h f11, f6, f2 # perform second operation

# Testcase cmp_gpr_hazard waw test
fdiv.h f17, f9, f25 # perform first operation
fdiv.h f17, f26, f8 # perform second operation

# Testcase cmp_gpr_hazard war test
fdiv.h f3, f1, f12 # perform first operation
fdiv.h f1, f19, f6 # perform second operation

# Testcase cmp_gpr_hazard war test
fdiv.h f20, f9, f22 # perform first operation
fdiv.h f22, f28, f24 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0xa3f138fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7d11e88a # load x3 with value 0x7d11e88a
sw x3, 0(x2) # store 0x7d11e88a in memory
flh f0, 0(x2) # load 0x7d11e88a from memory into f0
li x3, 0xbf0f0ade # load x3 with value 0xbf0f0ade
sw x3, 0(x2) # store 0xbf0f0ade in memory
flh f3, 0(x2) # load 0xbf0f0ade from memory into f3
fdiv.h f0, f0, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0x798fa9fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2cce8ce6 # load x3 with value 0x2cce8ce6
sw x3, 0(x2) # store 0x2cce8ce6 in memory
flh f1, 0(x2) # load 0x2cce8ce6 from memory into f1
li x3, 0xa7bff743 # load x3 with value 0xa7bff743
sw x3, 0(x2) # store 0xa7bff743 in memory
flh f17, 0(x2) # load 0xa7bff743 from memory into f17
fdiv.h f1, f1, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0x1629951f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdc18981b # load x3 with value 0xdc18981b
sw x3, 0(x2) # store 0xdc18981b in memory
flh f2, 0(x2) # load 0xdc18981b from memory into f2
li x3, 0x358cb827 # load x3 with value 0x358cb827
sw x3, 0(x2) # store 0x358cb827 in memory
flh f31, 0(x2) # load 0x358cb827 from memory into f31
fdiv.h f2, f2, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0x96e37011 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x70f581ea # load x3 with value 0x70f581ea
sw x3, 0(x2) # store 0x70f581ea in memory
flh f3, 0(x2) # load 0x70f581ea from memory into f3
li x3, 0x3bfb3caf # load x3 with value 0x3bfb3caf
sw x3, 0(x2) # store 0x3bfb3caf in memory
flh f20, 0(x2) # load 0x3bfb3caf from memory into f20
fdiv.h f3, f3, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0xaeea7aaa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9c60cb70 # load x3 with value 0x9c60cb70
sw x3, 0(x2) # store 0x9c60cb70 in memory
flh f4, 0(x2) # load 0x9c60cb70 from memory into f4
li x3, 0xced4e63a # load x3 with value 0xced4e63a
sw x3, 0(x2) # store 0xced4e63a in memory
flh f27, 0(x2) # load 0xced4e63a from memory into f27
fdiv.h f4, f4, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0x33fe89ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0294f16c # load x3 with value 0x0294f16c
sw x3, 0(x2) # store 0x0294f16c in memory
flh f5, 0(x2) # load 0x0294f16c from memory into f5
li x3, 0x5c7ab3fb # load x3 with value 0x5c7ab3fb
sw x3, 0(x2) # store 0x5c7ab3fb in memory
flh f6, 0(x2) # load 0x5c7ab3fb from memory into f6
fdiv.h f5, f5, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0xbf80e4be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa49535d2 # load x3 with value 0xa49535d2
sw x3, 0(x2) # store 0xa49535d2 in memory
flh f6, 0(x2) # load 0xa49535d2 from memory into f6
li x3, 0xe4e6922e # load x3 with value 0xe4e6922e
sw x3, 0(x2) # store 0xe4e6922e in memory
flh f28, 0(x2) # load 0xe4e6922e from memory into f28
fdiv.h f6, f6, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0x45079808 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x85dc7a20 # load x3 with value 0x85dc7a20
sw x3, 0(x2) # store 0x85dc7a20 in memory
flh f7, 0(x2) # load 0x85dc7a20 from memory into f7
li x3, 0x791aab7d # load x3 with value 0x791aab7d
sw x3, 0(x2) # store 0x791aab7d in memory
flh f31, 0(x2) # load 0x791aab7d from memory into f31
fdiv.h f7, f7, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0xe2a07fd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2ec2162d # load x3 with value 0x2ec2162d
sw x3, 0(x2) # store 0x2ec2162d in memory
flh f8, 0(x2) # load 0x2ec2162d from memory into f8
li x3, 0x00dec0f1 # load x3 with value 0x00dec0f1
sw x3, 0(x2) # store 0x00dec0f1 in memory
flh f13, 0(x2) # load 0x00dec0f1 from memory into f13
fdiv.h f8, f8, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0xe8264fa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x592067b2 # load x3 with value 0x592067b2
sw x3, 0(x2) # store 0x592067b2 in memory
flh f9, 0(x2) # load 0x592067b2 from memory into f9
li x3, 0xf78ecfc7 # load x3 with value 0xf78ecfc7
sw x3, 0(x2) # store 0xf78ecfc7 in memory
flh f13, 0(x2) # load 0xf78ecfc7 from memory into f13
fdiv.h f9, f9, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0x02ef95e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeb7b6c3f # load x3 with value 0xeb7b6c3f
sw x3, 0(x2) # store 0xeb7b6c3f in memory
flh f10, 0(x2) # load 0xeb7b6c3f from memory into f10
li x3, 0x04a9c2be # load x3 with value 0x04a9c2be
sw x3, 0(x2) # store 0x04a9c2be in memory
flh f26, 0(x2) # load 0x04a9c2be from memory into f26
fdiv.h f10, f10, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0x4d73b17e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x798e7355 # load x3 with value 0x798e7355
sw x3, 0(x2) # store 0x798e7355 in memory
flh f11, 0(x2) # load 0x798e7355 from memory into f11
li x3, 0x0f763ca1 # load x3 with value 0x0f763ca1
sw x3, 0(x2) # store 0x0f763ca1 in memory
flh f3, 0(x2) # load 0x0f763ca1 from memory into f3
fdiv.h f11, f11, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0xda395213 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xccf82a27 # load x3 with value 0xccf82a27
sw x3, 0(x2) # store 0xccf82a27 in memory
flh f12, 0(x2) # load 0xccf82a27 from memory into f12
li x3, 0xb5882260 # load x3 with value 0xb5882260
sw x3, 0(x2) # store 0xb5882260 in memory
flh f30, 0(x2) # load 0xb5882260 from memory into f30
fdiv.h f12, f12, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0x987a7fbd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x55acecc2 # load x3 with value 0x55acecc2
sw x3, 0(x2) # store 0x55acecc2 in memory
flh f13, 0(x2) # load 0x55acecc2 from memory into f13
li x3, 0x6a83af69 # load x3 with value 0x6a83af69
sw x3, 0(x2) # store 0x6a83af69 in memory
flh f20, 0(x2) # load 0x6a83af69 from memory into f20
fdiv.h f13, f13, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0xe1b82bfe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf5303829 # load x3 with value 0xf5303829
sw x3, 0(x2) # store 0xf5303829 in memory
flh f14, 0(x2) # load 0xf5303829 from memory into f14
li x3, 0x75360691 # load x3 with value 0x75360691
sw x3, 0(x2) # store 0x75360691 in memory
flh f14, 0(x2) # load 0x75360691 from memory into f14
fdiv.h f14, f14, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0x3b9960f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x38c2659d # load x3 with value 0x38c2659d
sw x3, 0(x2) # store 0x38c2659d in memory
flh f15, 0(x2) # load 0x38c2659d from memory into f15
li x3, 0x05e6194f # load x3 with value 0x05e6194f
sw x3, 0(x2) # store 0x05e6194f in memory
flh f3, 0(x2) # load 0x05e6194f from memory into f3
fdiv.h f15, f15, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0x05ce63cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x14a4ce0b # load x3 with value 0x14a4ce0b
sw x3, 0(x2) # store 0x14a4ce0b in memory
flh f16, 0(x2) # load 0x14a4ce0b from memory into f16
li x3, 0xcca8cba5 # load x3 with value 0xcca8cba5
sw x3, 0(x2) # store 0xcca8cba5 in memory
flh f22, 0(x2) # load 0xcca8cba5 from memory into f22
fdiv.h f16, f16, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0x23e7b4bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xed17550a # load x3 with value 0xed17550a
sw x3, 0(x2) # store 0xed17550a in memory
flh f17, 0(x2) # load 0xed17550a from memory into f17
li x3, 0xadebc6cb # load x3 with value 0xadebc6cb
sw x3, 0(x2) # store 0xadebc6cb in memory
flh f13, 0(x2) # load 0xadebc6cb from memory into f13
fdiv.h f17, f17, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0xe85c596c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x84674bfd # load x3 with value 0x84674bfd
sw x3, 0(x2) # store 0x84674bfd in memory
flh f18, 0(x2) # load 0x84674bfd from memory into f18
li x3, 0x4bb89ebd # load x3 with value 0x4bb89ebd
sw x3, 0(x2) # store 0x4bb89ebd in memory
flh f19, 0(x2) # load 0x4bb89ebd from memory into f19
fdiv.h f18, f18, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0x232b8ab5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x81f3bbc3 # load x3 with value 0x81f3bbc3
sw x3, 0(x2) # store 0x81f3bbc3 in memory
flh f19, 0(x2) # load 0x81f3bbc3 from memory into f19
li x3, 0x15549ef4 # load x3 with value 0x15549ef4
sw x3, 0(x2) # store 0x15549ef4 in memory
flh f22, 0(x2) # load 0x15549ef4 from memory into f22
fdiv.h f19, f19, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0x8aedf0b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1037e003 # load x3 with value 0x1037e003
sw x3, 0(x2) # store 0x1037e003 in memory
flh f20, 0(x2) # load 0x1037e003 from memory into f20
li x3, 0x6de46c33 # load x3 with value 0x6de46c33
sw x3, 0(x2) # store 0x6de46c33 in memory
flh f15, 0(x2) # load 0x6de46c33 from memory into f15
fdiv.h f20, f20, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0xf3ce2d98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x34270ad3 # load x3 with value 0x34270ad3
sw x3, 0(x2) # store 0x34270ad3 in memory
flh f21, 0(x2) # load 0x34270ad3 from memory into f21
li x3, 0x0fb00a75 # load x3 with value 0x0fb00a75
sw x3, 0(x2) # store 0x0fb00a75 in memory
flh f27, 0(x2) # load 0x0fb00a75 from memory into f27
fdiv.h f21, f21, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0x180fd824 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3cd773cd # load x3 with value 0x3cd773cd
sw x3, 0(x2) # store 0x3cd773cd in memory
flh f22, 0(x2) # load 0x3cd773cd from memory into f22
li x3, 0x0f85fac6 # load x3 with value 0x0f85fac6
sw x3, 0(x2) # store 0x0f85fac6 in memory
flh f5, 0(x2) # load 0x0f85fac6 from memory into f5
fdiv.h f22, f22, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0xc6f96609 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x161ed171 # load x3 with value 0x161ed171
sw x3, 0(x2) # store 0x161ed171 in memory
flh f23, 0(x2) # load 0x161ed171 from memory into f23
li x3, 0x1fd498f5 # load x3 with value 0x1fd498f5
sw x3, 0(x2) # store 0x1fd498f5 in memory
flh f17, 0(x2) # load 0x1fd498f5 from memory into f17
fdiv.h f23, f23, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0x24019cb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf6b2afff # load x3 with value 0xf6b2afff
sw x3, 0(x2) # store 0xf6b2afff in memory
flh f24, 0(x2) # load 0xf6b2afff from memory into f24
li x3, 0x3ab2350e # load x3 with value 0x3ab2350e
sw x3, 0(x2) # store 0x3ab2350e in memory
flh f3, 0(x2) # load 0x3ab2350e from memory into f3
fdiv.h f24, f24, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0xbcd5a66f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdeec6969 # load x3 with value 0xdeec6969
sw x3, 0(x2) # store 0xdeec6969 in memory
flh f25, 0(x2) # load 0xdeec6969 from memory into f25
li x3, 0x1ea256c6 # load x3 with value 0x1ea256c6
sw x3, 0(x2) # store 0x1ea256c6 in memory
flh f22, 0(x2) # load 0x1ea256c6 from memory into f22
fdiv.h f25, f25, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0xf8607342 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5c00a0e6 # load x3 with value 0x5c00a0e6
sw x3, 0(x2) # store 0x5c00a0e6 in memory
flh f26, 0(x2) # load 0x5c00a0e6 from memory into f26
li x3, 0x1b7ed390 # load x3 with value 0x1b7ed390
sw x3, 0(x2) # store 0x1b7ed390 in memory
flh f17, 0(x2) # load 0x1b7ed390 from memory into f17
fdiv.h f26, f26, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0xe89c18e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa89d89c3 # load x3 with value 0xa89d89c3
sw x3, 0(x2) # store 0xa89d89c3 in memory
flh f27, 0(x2) # load 0xa89d89c3 from memory into f27
li x3, 0xdf589490 # load x3 with value 0xdf589490
sw x3, 0(x2) # store 0xdf589490 in memory
flh f24, 0(x2) # load 0xdf589490 from memory into f24
fdiv.h f27, f27, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0x28fabf8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x880607b1 # load x3 with value 0x880607b1
sw x3, 0(x2) # store 0x880607b1 in memory
flh f28, 0(x2) # load 0x880607b1 from memory into f28
li x3, 0x0878cdfd # load x3 with value 0x0878cdfd
sw x3, 0(x2) # store 0x0878cdfd in memory
flh f29, 0(x2) # load 0x0878cdfd from memory into f29
fdiv.h f28, f28, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0xd7f462a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7a31a739 # load x3 with value 0x7a31a739
sw x3, 0(x2) # store 0x7a31a739 in memory
flh f29, 0(x2) # load 0x7a31a739 from memory into f29
li x3, 0x030353aa # load x3 with value 0x030353aa
sw x3, 0(x2) # store 0x030353aa in memory
flh f1, 0(x2) # load 0x030353aa from memory into f1
fdiv.h f29, f29, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0xaca43e16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x33eb31f5 # load x3 with value 0x33eb31f5
sw x3, 0(x2) # store 0x33eb31f5 in memory
flh f30, 0(x2) # load 0x33eb31f5 from memory into f30
li x3, 0x1883c388 # load x3 with value 0x1883c388
sw x3, 0(x2) # store 0x1883c388 in memory
flh f20, 0(x2) # load 0x1883c388 from memory into f20
fdiv.h f30, f30, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0xdbb7238d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc64db27f # load x3 with value 0xc64db27f
sw x3, 0(x2) # store 0xc64db27f in memory
flh f31, 0(x2) # load 0xc64db27f from memory into f31
li x3, 0xd7cd2788 # load x3 with value 0xd7cd2788
sw x3, 0(x2) # store 0xd7cd2788 in memory
flh f11, 0(x2) # load 0xd7cd2788 from memory into f11
fdiv.h f31, f31, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
li x0, 0xc5543ef2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x14813d52 # load x3 with value 0x14813d52
sw x3, 0(x2) # store 0x14813d52 in memory
flh f30, 0(x2) # load 0x14813d52 from memory into f30
li x3, 0xb032b336 # load x3 with value 0xb032b336
sw x3, 0(x2) # store 0xb032b336 in memory
flh f0, 0(x2) # load 0xb032b336 from memory into f0
fdiv.h f0, f30, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
li x1, 0x842c9a40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x21b1e5f9 # load x3 with value 0x21b1e5f9
sw x3, 0(x2) # store 0x21b1e5f9 in memory
flh f23, 0(x2) # load 0x21b1e5f9 from memory into f23
li x3, 0x522b18aa # load x3 with value 0x522b18aa
sw x3, 0(x2) # store 0x522b18aa in memory
flh f1, 0(x2) # load 0x522b18aa from memory into f1
fdiv.h f1, f23, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
li x2, 0x299290bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf6120ee0 # load x3 with value 0xf6120ee0
sw x3, 0(x2) # store 0xf6120ee0 in memory
flh f4, 0(x2) # load 0xf6120ee0 from memory into f4
li x3, 0x8a823235 # load x3 with value 0x8a823235
sw x3, 0(x2) # store 0x8a823235 in memory
flh f2, 0(x2) # load 0x8a823235 from memory into f2
fdiv.h f2, f4, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
li x3, 0xfb15edd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5d7d0aaa # load x3 with value 0x5d7d0aaa
sw x3, 0(x2) # store 0x5d7d0aaa in memory
flh f7, 0(x2) # load 0x5d7d0aaa from memory into f7
li x3, 0xf32b847c # load x3 with value 0xf32b847c
sw x3, 0(x2) # store 0xf32b847c in memory
flh f3, 0(x2) # load 0xf32b847c from memory into f3
fdiv.h f3, f7, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
li x4, 0x507eb135 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x39db6a75 # load x3 with value 0x39db6a75
sw x3, 0(x2) # store 0x39db6a75 in memory
flh f31, 0(x2) # load 0x39db6a75 from memory into f31
li x3, 0xd05feb17 # load x3 with value 0xd05feb17
sw x3, 0(x2) # store 0xd05feb17 in memory
flh f4, 0(x2) # load 0xd05feb17 from memory into f4
fdiv.h f4, f31, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
li x5, 0x77b205bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4a47f6fb # load x3 with value 0x4a47f6fb
sw x3, 0(x2) # store 0x4a47f6fb in memory
flh f21, 0(x2) # load 0x4a47f6fb from memory into f21
li x3, 0x8954a357 # load x3 with value 0x8954a357
sw x3, 0(x2) # store 0x8954a357 in memory
flh f5, 0(x2) # load 0x8954a357 from memory into f5
fdiv.h f5, f21, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
li x6, 0x6e2aaf97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3eebd208 # load x3 with value 0x3eebd208
sw x3, 0(x2) # store 0x3eebd208 in memory
flh f29, 0(x2) # load 0x3eebd208 from memory into f29
li x3, 0x4cd2306d # load x3 with value 0x4cd2306d
sw x3, 0(x2) # store 0x4cd2306d in memory
flh f6, 0(x2) # load 0x4cd2306d from memory into f6
fdiv.h f6, f29, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
li x7, 0x35eba0c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x42814a73 # load x3 with value 0x42814a73
sw x3, 0(x2) # store 0x42814a73 in memory
flh f12, 0(x2) # load 0x42814a73 from memory into f12
li x3, 0x0a1d7ffc # load x3 with value 0x0a1d7ffc
sw x3, 0(x2) # store 0x0a1d7ffc in memory
flh f7, 0(x2) # load 0x0a1d7ffc from memory into f7
fdiv.h f7, f12, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
li x8, 0xbe904b66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x47cbc3e4 # load x3 with value 0x47cbc3e4
sw x3, 0(x2) # store 0x47cbc3e4 in memory
flh f4, 0(x2) # load 0x47cbc3e4 from memory into f4
li x3, 0xd75c4627 # load x3 with value 0xd75c4627
sw x3, 0(x2) # store 0xd75c4627 in memory
flh f8, 0(x2) # load 0xd75c4627 from memory into f8
fdiv.h f8, f4, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
li x9, 0x1be74916 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1f4f9d33 # load x3 with value 0x1f4f9d33
sw x3, 0(x2) # store 0x1f4f9d33 in memory
flh f6, 0(x2) # load 0x1f4f9d33 from memory into f6
li x3, 0x6333acd6 # load x3 with value 0x6333acd6
sw x3, 0(x2) # store 0x6333acd6 in memory
flh f9, 0(x2) # load 0x6333acd6 from memory into f9
fdiv.h f9, f6, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
li x10, 0x18a0efba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcbd42d62 # load x3 with value 0xcbd42d62
sw x3, 0(x2) # store 0xcbd42d62 in memory
flh f24, 0(x2) # load 0xcbd42d62 from memory into f24
li x3, 0x4659886a # load x3 with value 0x4659886a
sw x3, 0(x2) # store 0x4659886a in memory
flh f10, 0(x2) # load 0x4659886a from memory into f10
fdiv.h f10, f24, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
li x11, 0xa18e0dea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2e86860b # load x3 with value 0x2e86860b
sw x3, 0(x2) # store 0x2e86860b in memory
flh f5, 0(x2) # load 0x2e86860b from memory into f5
li x3, 0x05d10b43 # load x3 with value 0x05d10b43
sw x3, 0(x2) # store 0x05d10b43 in memory
flh f11, 0(x2) # load 0x05d10b43 from memory into f11
fdiv.h f11, f5, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
li x12, 0x3225546d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xafb44a67 # load x3 with value 0xafb44a67
sw x3, 0(x2) # store 0xafb44a67 in memory
flh f22, 0(x2) # load 0xafb44a67 from memory into f22
li x3, 0x8dd148d5 # load x3 with value 0x8dd148d5
sw x3, 0(x2) # store 0x8dd148d5 in memory
flh f12, 0(x2) # load 0x8dd148d5 from memory into f12
fdiv.h f12, f22, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
li x13, 0xc26c647d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd2099b44 # load x3 with value 0xd2099b44
sw x3, 0(x2) # store 0xd2099b44 in memory
flh f16, 0(x2) # load 0xd2099b44 from memory into f16
li x3, 0x87c4770f # load x3 with value 0x87c4770f
sw x3, 0(x2) # store 0x87c4770f in memory
flh f13, 0(x2) # load 0x87c4770f from memory into f13
fdiv.h f13, f16, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
li x14, 0x4633962f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb0666c23 # load x3 with value 0xb0666c23
sw x3, 0(x2) # store 0xb0666c23 in memory
flh f27, 0(x2) # load 0xb0666c23 from memory into f27
li x3, 0xa64b8f0e # load x3 with value 0xa64b8f0e
sw x3, 0(x2) # store 0xa64b8f0e in memory
flh f14, 0(x2) # load 0xa64b8f0e from memory into f14
fdiv.h f14, f27, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
li x15, 0x03804f32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x855b335e # load x3 with value 0x855b335e
sw x3, 0(x2) # store 0x855b335e in memory
flh f14, 0(x2) # load 0x855b335e from memory into f14
li x3, 0x09756721 # load x3 with value 0x09756721
sw x3, 0(x2) # store 0x09756721 in memory
flh f15, 0(x2) # load 0x09756721 from memory into f15
fdiv.h f15, f14, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
li x16, 0x606e4c8a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2ce720f4 # load x3 with value 0x2ce720f4
sw x3, 0(x2) # store 0x2ce720f4 in memory
flh f13, 0(x2) # load 0x2ce720f4 from memory into f13
li x3, 0xabbf3f94 # load x3 with value 0xabbf3f94
sw x3, 0(x2) # store 0xabbf3f94 in memory
flh f16, 0(x2) # load 0xabbf3f94 from memory into f16
fdiv.h f16, f13, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
li x17, 0x0dac1062 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5f600b05 # load x3 with value 0x5f600b05
sw x3, 0(x2) # store 0x5f600b05 in memory
flh f27, 0(x2) # load 0x5f600b05 from memory into f27
li x3, 0x7c2d45c5 # load x3 with value 0x7c2d45c5
sw x3, 0(x2) # store 0x7c2d45c5 in memory
flh f17, 0(x2) # load 0x7c2d45c5 from memory into f17
fdiv.h f17, f27, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
li x18, 0x2e455d6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x111e7d7a # load x3 with value 0x111e7d7a
sw x3, 0(x2) # store 0x111e7d7a in memory
flh f30, 0(x2) # load 0x111e7d7a from memory into f30
li x3, 0x9b40419d # load x3 with value 0x9b40419d
sw x3, 0(x2) # store 0x9b40419d in memory
flh f18, 0(x2) # load 0x9b40419d from memory into f18
fdiv.h f18, f30, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
li x19, 0x15967c7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x28d452dd # load x3 with value 0x28d452dd
sw x3, 0(x2) # store 0x28d452dd in memory
flh f14, 0(x2) # load 0x28d452dd from memory into f14
li x3, 0xd8dbb221 # load x3 with value 0xd8dbb221
sw x3, 0(x2) # store 0xd8dbb221 in memory
flh f19, 0(x2) # load 0xd8dbb221 from memory into f19
fdiv.h f19, f14, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
li x20, 0x8a5a5dd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0fb4dc27 # load x3 with value 0x0fb4dc27
sw x3, 0(x2) # store 0x0fb4dc27 in memory
flh f15, 0(x2) # load 0x0fb4dc27 from memory into f15
li x3, 0x737eabf9 # load x3 with value 0x737eabf9
sw x3, 0(x2) # store 0x737eabf9 in memory
flh f20, 0(x2) # load 0x737eabf9 from memory into f20
fdiv.h f20, f15, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
li x21, 0x4b2649ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2a8716c4 # load x3 with value 0x2a8716c4
sw x3, 0(x2) # store 0x2a8716c4 in memory
flh f6, 0(x2) # load 0x2a8716c4 from memory into f6
li x3, 0xa6bb0b6f # load x3 with value 0xa6bb0b6f
sw x3, 0(x2) # store 0xa6bb0b6f in memory
flh f21, 0(x2) # load 0xa6bb0b6f from memory into f21
fdiv.h f21, f6, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
li x22, 0x21f75cdb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x404bfaba # load x3 with value 0x404bfaba
sw x3, 0(x2) # store 0x404bfaba in memory
flh f26, 0(x2) # load 0x404bfaba from memory into f26
li x3, 0x4f879b81 # load x3 with value 0x4f879b81
sw x3, 0(x2) # store 0x4f879b81 in memory
flh f22, 0(x2) # load 0x4f879b81 from memory into f22
fdiv.h f22, f26, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
li x23, 0x8c78cea1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xef54374b # load x3 with value 0xef54374b
sw x3, 0(x2) # store 0xef54374b in memory
flh f12, 0(x2) # load 0xef54374b from memory into f12
li x3, 0xa6c7ac56 # load x3 with value 0xa6c7ac56
sw x3, 0(x2) # store 0xa6c7ac56 in memory
flh f23, 0(x2) # load 0xa6c7ac56 from memory into f23
fdiv.h f23, f12, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
li x24, 0xd55dc0d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd0cb0b9a # load x3 with value 0xd0cb0b9a
sw x3, 0(x2) # store 0xd0cb0b9a in memory
flh f27, 0(x2) # load 0xd0cb0b9a from memory into f27
li x3, 0xf77dee76 # load x3 with value 0xf77dee76
sw x3, 0(x2) # store 0xf77dee76 in memory
flh f24, 0(x2) # load 0xf77dee76 from memory into f24
fdiv.h f24, f27, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
li x25, 0x84fe5965 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf1126827 # load x3 with value 0xf1126827
sw x3, 0(x2) # store 0xf1126827 in memory
flh f25, 0(x2) # load 0xf1126827 from memory into f25
li x3, 0x4a815217 # load x3 with value 0x4a815217
sw x3, 0(x2) # store 0x4a815217 in memory
flh f25, 0(x2) # load 0x4a815217 from memory into f25
fdiv.h f25, f25, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
li x26, 0xb46521fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0c7b88e5 # load x3 with value 0x0c7b88e5
sw x3, 0(x2) # store 0x0c7b88e5 in memory
flh f1, 0(x2) # load 0x0c7b88e5 from memory into f1
li x3, 0xaa5b1105 # load x3 with value 0xaa5b1105
sw x3, 0(x2) # store 0xaa5b1105 in memory
flh f26, 0(x2) # load 0xaa5b1105 from memory into f26
fdiv.h f26, f1, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
li x27, 0xcf61c5af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xad6c4cfc # load x3 with value 0xad6c4cfc
sw x3, 0(x2) # store 0xad6c4cfc in memory
flh f3, 0(x2) # load 0xad6c4cfc from memory into f3
li x3, 0xf51cebd1 # load x3 with value 0xf51cebd1
sw x3, 0(x2) # store 0xf51cebd1 in memory
flh f27, 0(x2) # load 0xf51cebd1 from memory into f27
fdiv.h f27, f3, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
li x28, 0xb6e31551 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xde1a021b # load x3 with value 0xde1a021b
sw x3, 0(x2) # store 0xde1a021b in memory
flh f3, 0(x2) # load 0xde1a021b from memory into f3
li x3, 0x2da78e6a # load x3 with value 0x2da78e6a
sw x3, 0(x2) # store 0x2da78e6a in memory
flh f28, 0(x2) # load 0x2da78e6a from memory into f28
fdiv.h f28, f3, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
li x29, 0x0210f63b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1c44f619 # load x3 with value 0x1c44f619
sw x3, 0(x2) # store 0x1c44f619 in memory
flh f14, 0(x2) # load 0x1c44f619 from memory into f14
li x3, 0x64b225f3 # load x3 with value 0x64b225f3
sw x3, 0(x2) # store 0x64b225f3 in memory
flh f29, 0(x2) # load 0x64b225f3 from memory into f29
fdiv.h f29, f14, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
li x30, 0x39e16295 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x29b55ae5 # load x3 with value 0x29b55ae5
sw x3, 0(x2) # store 0x29b55ae5 in memory
flh f16, 0(x2) # load 0x29b55ae5 from memory into f16
li x3, 0x610b2b6b # load x3 with value 0x610b2b6b
sw x3, 0(x2) # store 0x610b2b6b in memory
flh f30, 0(x2) # load 0x610b2b6b from memory into f30
fdiv.h f30, f16, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
li x31, 0x3715cc92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8b708729 # load x3 with value 0x8b708729
sw x3, 0(x2) # store 0x8b708729 in memory
flh f20, 0(x2) # load 0x8b708729 from memory into f20
li x3, 0x601f2170 # load x3 with value 0x601f2170
sw x3, 0(x2) # store 0x601f2170 in memory
flh f31, 0(x2) # load 0x601f2170 from memory into f31
fdiv.h f31, f20, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x16, 0xda72db10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f21, 0(x2) # load 0x00000000 from memory into f21
li x3, 0xa8df2237 # load x3 with value 0xa8df2237
sw x3, 0(x2) # store 0xa8df2237 in memory
flh f9, 0(x2) # load 0xa8df2237 from memory into f9
fdiv.h f16, f21, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
li x7, 0x5afe6740 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
li x3, 0xdf14f926 # load x3 with value 0xdf14f926
sw x3, 0(x2) # store 0xdf14f926 in memory
flh f29, 0(x2) # load 0xdf14f926 from memory into f29
fdiv.h f7, f2, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
li x13, 0x27defce8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f1, 0(x2) # load 0x00003c00 from memory into f1
li x3, 0x245e9181 # load x3 with value 0x245e9181
sw x3, 0(x2) # store 0x245e9181 in memory
flh f2, 0(x2) # load 0x245e9181 from memory into f2
fdiv.h f13, f1, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
li x10, 0x0111bbcc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f17, 0(x2) # load 0x0000bc00 from memory into f17
li x3, 0xc0ac23a9 # load x3 with value 0xc0ac23a9
sw x3, 0(x2) # store 0xc0ac23a9 in memory
flh f25, 0(x2) # load 0xc0ac23a9 from memory into f25
fdiv.h f10, f17, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
li x7, 0x0173bdc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f8, 0(x2) # load 0x00003e00 from memory into f8
li x3, 0x917e7762 # load x3 with value 0x917e7762
sw x3, 0(x2) # store 0x917e7762 in memory
flh f30, 0(x2) # load 0x917e7762 from memory into f30
fdiv.h f7, f8, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
li x30, 0x00779d57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f12, 0(x2) # load 0x0000be00 from memory into f12
li x3, 0x146133b9 # load x3 with value 0x146133b9
sw x3, 0(x2) # store 0x146133b9 in memory
flh f28, 0(x2) # load 0x146133b9 from memory into f28
fdiv.h f30, f12, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
li x4, 0x9ad17ead # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f20, 0(x2) # load 0x00004000 from memory into f20
li x3, 0xde3cdea9 # load x3 with value 0xde3cdea9
sw x3, 0(x2) # store 0xde3cdea9 in memory
flh f25, 0(x2) # load 0xde3cdea9 from memory into f25
fdiv.h f4, f20, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
li x1, 0x491622d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f8, 0(x2) # load 0x0000c000 from memory into f8
li x3, 0xc4116398 # load x3 with value 0xc4116398
sw x3, 0(x2) # store 0xc4116398 in memory
flh f24, 0(x2) # load 0xc4116398 from memory into f24
fdiv.h f1, f8, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
li x5, 0x14a2403e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
li x3, 0x76904bf6 # load x3 with value 0x76904bf6
sw x3, 0(x2) # store 0x76904bf6 in memory
flh f25, 0(x2) # load 0x76904bf6 from memory into f25
fdiv.h f5, f7, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
li x20, 0x6582077f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f23, 0(x2) # load 0x00008400 from memory into f23
li x3, 0xd7c93714 # load x3 with value 0xd7c93714
sw x3, 0(x2) # store 0xd7c93714 in memory
flh f17, 0(x2) # load 0xd7c93714 from memory into f17
fdiv.h f20, f23, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
li x24, 0x054f87cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f27, 0(x2) # load 0x00007bff from memory into f27
li x3, 0x3ff37df8 # load x3 with value 0x3ff37df8
sw x3, 0(x2) # store 0x3ff37df8 in memory
flh f22, 0(x2) # load 0x3ff37df8 from memory into f22
fdiv.h f24, f27, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
li x15, 0x80172e74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f1, 0(x2) # load 0x0000fbff from memory into f1
li x3, 0xbe48f18c # load x3 with value 0xbe48f18c
sw x3, 0(x2) # store 0xbe48f18c in memory
flh f29, 0(x2) # load 0xbe48f18c from memory into f29
fdiv.h f15, f1, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
li x24, 0xbfc5fb61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
li x3, 0x281b23f2 # load x3 with value 0x281b23f2
sw x3, 0(x2) # store 0x281b23f2 in memory
flh f2, 0(x2) # load 0x281b23f2 from memory into f2
fdiv.h f24, f17, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
li x20, 0x0c49cb34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f27, 0(x2) # load 0x000083ff from memory into f27
li x3, 0xfdba1716 # load x3 with value 0xfdba1716
sw x3, 0(x2) # store 0xfdba1716 in memory
flh f22, 0(x2) # load 0xfdba1716 from memory into f22
fdiv.h f20, f27, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
li x16, 0x1b476e68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f26, 0(x2) # load 0x00000200 from memory into f26
li x3, 0xc9019b2e # load x3 with value 0xc9019b2e
sw x3, 0(x2) # store 0xc9019b2e in memory
flh f21, 0(x2) # load 0xc9019b2e from memory into f21
fdiv.h f16, f26, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
li x21, 0xeaf4dd9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f12, 0(x2) # load 0x00008200 from memory into f12
li x3, 0xb123a2ac # load x3 with value 0xb123a2ac
sw x3, 0(x2) # store 0xb123a2ac in memory
flh f15, 0(x2) # load 0xb123a2ac from memory into f15
fdiv.h f21, f12, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x15, 0xbf6d1c82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f13, 0(x2) # load 0x00000001 from memory into f13
li x3, 0x6e665938 # load x3 with value 0x6e665938
sw x3, 0(x2) # store 0x6e665938 in memory
flh f29, 0(x2) # load 0x6e665938 from memory into f29
fdiv.h f15, f13, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
li x19, 0x2cc53c06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f28, 0(x2) # load 0x00008001 from memory into f28
li x3, 0x16785385 # load x3 with value 0x16785385
sw x3, 0(x2) # store 0x16785385 in memory
flh f24, 0(x2) # load 0x16785385 from memory into f24
fdiv.h f19, f28, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
li x18, 0x4bc0087f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f13, 0(x2) # load 0x00007c00 from memory into f13
li x3, 0x0a3430d4 # load x3 with value 0x0a3430d4
sw x3, 0(x2) # store 0x0a3430d4 in memory
flh f1, 0(x2) # load 0x0a3430d4 from memory into f1
fdiv.h f18, f13, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
li x23, 0x0074bb46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
li x3, 0xff2ec9c7 # load x3 with value 0xff2ec9c7
sw x3, 0(x2) # store 0xff2ec9c7 in memory
flh f18, 0(x2) # load 0xff2ec9c7 from memory into f18
fdiv.h f23, f3, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
li x12, 0x44a77d07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f27, 0(x2) # load 0x00007e00 from memory into f27
li x3, 0xb1426738 # load x3 with value 0xb1426738
sw x3, 0(x2) # store 0xb1426738 in memory
flh f22, 0(x2) # load 0xb1426738 from memory into f22
fdiv.h f12, f27, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
li x21, 0x8679c067 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f3, 0(x2) # load 0x00007fff from memory into f3
li x3, 0x0da24f8b # load x3 with value 0x0da24f8b
sw x3, 0(x2) # store 0x0da24f8b in memory
flh f10, 0(x2) # load 0x0da24f8b from memory into f10
fdiv.h f21, f3, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
li x6, 0xed93fd14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f27, 0(x2) # load 0x00007c01 from memory into f27
li x3, 0x61e8f3bc # load x3 with value 0x61e8f3bc
sw x3, 0(x2) # store 0x61e8f3bc in memory
flh f30, 0(x2) # load 0x61e8f3bc from memory into f30
fdiv.h f6, f27, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
li x13, 0x7ddb80ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f12, 0(x2) # load 0x00007dff from memory into f12
li x3, 0x4b6994cf # load x3 with value 0x4b6994cf
sw x3, 0(x2) # store 0x4b6994cf in memory
flh f31, 0(x2) # load 0x4b6994cf from memory into f31
fdiv.h f13, f12, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
li x23, 0x464e425d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
li x3, 0x1c3b52bf # load x3 with value 0x1c3b52bf
sw x3, 0(x2) # store 0x1c3b52bf in memory
flh f22, 0(x2) # load 0x1c3b52bf from memory into f22
fdiv.h f23, f18, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
li x29, 0x6a2f6e24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
li x3, 0x9984476d # load x3 with value 0x9984476d
sw x3, 0(x2) # store 0x9984476d in memory
flh f30, 0(x2) # load 0x9984476d from memory into f30
fdiv.h f29, f7, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x15, 0xd171d39e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6c6ea366 # load x3 with value 0x6c6ea366
sw x3, 0(x2) # store 0x6c6ea366 in memory
flh f8, 0(x2) # load 0x6c6ea366 from memory into f8
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f24, 0(x2) # load 0x00000000 from memory into f24
fdiv.h f15, f8, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000)
li x22, 0xa4e2ec5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6fd62ab7 # load x3 with value 0x6fd62ab7
sw x3, 0(x2) # store 0x6fd62ab7 in memory
flh f15, 0(x2) # load 0x6fd62ab7 from memory into f15
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f25, 0(x2) # load 0x00008000 from memory into f25
fdiv.h f22, f15, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3c00)
li x8, 0x644677b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf3931603 # load x3 with value 0xf3931603
sw x3, 0(x2) # store 0xf3931603 in memory
flh f29, 0(x2) # load 0xf3931603 from memory into f29
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
fdiv.h f8, f29, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbc00)
li x26, 0x25a3fda8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0d6af503 # load x3 with value 0x0d6af503
sw x3, 0(x2) # store 0x0d6af503 in memory
flh f20, 0(x2) # load 0x0d6af503 from memory into f20
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f1, 0(x2) # load 0x0000bc00 from memory into f1
fdiv.h f26, f20, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3e00)
li x16, 0x7ecee3a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3d1d5b8e # load x3 with value 0x3d1d5b8e
sw x3, 0(x2) # store 0x3d1d5b8e in memory
flh f10, 0(x2) # load 0x3d1d5b8e from memory into f10
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
fdiv.h f16, f10, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbe00)
li x18, 0x1459924b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa966ddf9 # load x3 with value 0xa966ddf9
sw x3, 0(x2) # store 0xa966ddf9 in memory
flh f14, 0(x2) # load 0xa966ddf9 from memory into f14
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f10, 0(x2) # load 0x0000be00 from memory into f10
fdiv.h f18, f14, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000)
li x23, 0x2c5afa58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x18bf98dc # load x3 with value 0x18bf98dc
sw x3, 0(x2) # store 0x18bf98dc in memory
flh f5, 0(x2) # load 0x18bf98dc from memory into f5
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
fdiv.h f23, f5, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000)
li x13, 0x68d3991e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0c0ffd4a # load x3 with value 0x0c0ffd4a
sw x3, 0(x2) # store 0x0c0ffd4a in memory
flh f16, 0(x2) # load 0x0c0ffd4a from memory into f16
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f30, 0(x2) # load 0x0000c000 from memory into f30
fdiv.h f13, f16, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400)
li x10, 0xa1ed08db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3a67cc18 # load x3 with value 0x3a67cc18
sw x3, 0(x2) # store 0x3a67cc18 in memory
flh f1, 0(x2) # load 0x3a67cc18 from memory into f1
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
fdiv.h f10, f1, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8400)
li x26, 0xe6142dc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc5d7bb0c # load x3 with value 0xc5d7bb0c
sw x3, 0(x2) # store 0xc5d7bb0c in memory
flh f3, 0(x2) # load 0xc5d7bb0c from memory into f3
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f13, 0(x2) # load 0x00008400 from memory into f13
fdiv.h f26, f3, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7bff)
li x17, 0x52f86e6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdbb39de7 # load x3 with value 0xdbb39de7
sw x3, 0(x2) # store 0xdbb39de7 in memory
flh f31, 0(x2) # load 0xdbb39de7 from memory into f31
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f25, 0(x2) # load 0x00007bff from memory into f25
fdiv.h f17, f31, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfbff)
li x11, 0x9b00d33d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe9480011 # load x3 with value 0xe9480011
sw x3, 0(x2) # store 0xe9480011 in memory
flh f1, 0(x2) # load 0xe9480011 from memory into f1
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f24, 0(x2) # load 0x0000fbff from memory into f24
fdiv.h f11, f1, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff)
li x12, 0xe486267e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x81e67a9e # load x3 with value 0x81e67a9e
sw x3, 0(x2) # store 0x81e67a9e in memory
flh f27, 0(x2) # load 0x81e67a9e from memory into f27
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
fdiv.h f12, f27, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x83ff)
li x13, 0xdc2e39cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb078fb27 # load x3 with value 0xb078fb27
sw x3, 0(x2) # store 0xb078fb27 in memory
flh f7, 0(x2) # load 0xb078fb27 from memory into f7
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f21, 0(x2) # load 0x000083ff from memory into f21
fdiv.h f13, f7, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x200)
li x21, 0x09d24491 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa44e18c0 # load x3 with value 0xa44e18c0
sw x3, 0(x2) # store 0xa44e18c0 in memory
flh f20, 0(x2) # load 0xa44e18c0 from memory into f20
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
fdiv.h f21, f20, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8200)
li x21, 0x4a393d0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x941610ec # load x3 with value 0x941610ec
sw x3, 0(x2) # store 0x941610ec in memory
flh f9, 0(x2) # load 0x941610ec from memory into f9
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
fdiv.h f21, f9, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x1, 0x6789a936 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x10b62856 # load x3 with value 0x10b62856
sw x3, 0(x2) # store 0x10b62856 in memory
flh f5, 0(x2) # load 0x10b62856 from memory into f5
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f4, 0(x2) # load 0x00000001 from memory into f4
fdiv.h f1, f5, f4 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8001)
li x1, 0x9fa713f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xef0dd521 # load x3 with value 0xef0dd521
sw x3, 0(x2) # store 0xef0dd521 in memory
flh f16, 0(x2) # load 0xef0dd521 from memory into f16
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f21, 0(x2) # load 0x00008001 from memory into f21
fdiv.h f1, f16, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c00)
li x1, 0x0b983bbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x07066c21 # load x3 with value 0x07066c21
sw x3, 0(x2) # store 0x07066c21 in memory
flh f28, 0(x2) # load 0x07066c21 from memory into f28
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f29, 0(x2) # load 0x00007c00 from memory into f29
fdiv.h f1, f28, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc00)
li x26, 0x94bc75b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaa452498 # load x3 with value 0xaa452498
sw x3, 0(x2) # store 0xaa452498 in memory
flh f24, 0(x2) # load 0xaa452498 from memory into f24
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
fdiv.h f26, f24, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e00)
li x24, 0x1745b936 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1f8f4fcf # load x3 with value 0x1f8f4fcf
sw x3, 0(x2) # store 0x1f8f4fcf in memory
flh f12, 0(x2) # load 0x1f8f4fcf from memory into f12
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f7, 0(x2) # load 0x00007e00 from memory into f7
fdiv.h f24, f12, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff)
li x31, 0x922e63e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5d8daa2c # load x3 with value 0x5d8daa2c
sw x3, 0(x2) # store 0x5d8daa2c in memory
flh f16, 0(x2) # load 0x5d8daa2c from memory into f16
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
fdiv.h f31, f16, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c01)
li x20, 0x997d7035 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x481a3c5e # load x3 with value 0x481a3c5e
sw x3, 0(x2) # store 0x481a3c5e in memory
flh f29, 0(x2) # load 0x481a3c5e from memory into f29
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f30, 0(x2) # load 0x00007c01 from memory into f30
fdiv.h f20, f29, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7dff)
li x29, 0xb9089b9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0a09d405 # load x3 with value 0x0a09d405
sw x3, 0(x2) # store 0x0a09d405 in memory
flh f2, 0(x2) # load 0x0a09d405 from memory into f2
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f14, 0(x2) # load 0x00007dff from memory into f14
fdiv.h f29, f2, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x58b4)
li x22, 0xa1d0391c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9b783d64 # load x3 with value 0x9b783d64
sw x3, 0(x2) # store 0x9b783d64 in memory
flh f19, 0(x2) # load 0x9b783d64 from memory into f19
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
fdiv.h f22, f19, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc93a)
li x28, 0x03a9bb7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0be11c56 # load x3 with value 0x0be11c56
sw x3, 0(x2) # store 0x0be11c56 in memory
flh f2, 0(x2) # load 0x0be11c56 from memory into f2
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
fdiv.h f28, f2, f30 # perform operation

# Testcase cp_frm
li x19, 0x0ba7e340 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xacaf32ba # load x3 with value 0xacaf32ba
sw x3, 0(x2) # store 0xacaf32ba in memory
flh f11, 0(x2) # load 0xacaf32ba from memory into f11
li x3, 0x1052ee6e # load x3 with value 0x1052ee6e
sw x3, 0(x2) # store 0x1052ee6e in memory
flh f1, 0(x2) # load 0x1052ee6e from memory into f1
fdiv.h f19, f11, f1, dyn # perform operation
fdiv.h f19, f11, f1, rdn # perform operation
fdiv.h f19, f11, f1, rmm # perform operation
fdiv.h f19, f11, f1, rne # perform operation
fdiv.h f19, f11, f1, rtz # perform operation
fdiv.h f19, f11, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f11, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f11, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f11, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f11, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f11, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
li x7, 0x7fafd743 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
fdiv.h f7, f30, f31, dyn # perform operation
fdiv.h f7, f30, f31, rdn # perform operation
fdiv.h f7, f30, f31, rmm # perform operation
fdiv.h f7, f30, f31, rne # perform operation
fdiv.h f7, f30, f31, rtz # perform operation
fdiv.h f7, f30, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f30, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f30, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f30, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f30, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f30, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000)
li x9, 0xbe8cb9e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f22, 0(x2) # load 0x00000000 from memory into f22
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f14, 0(x2) # load 0x00008000 from memory into f14
fdiv.h f9, f22, f14, dyn # perform operation
fdiv.h f9, f22, f14, rdn # perform operation
fdiv.h f9, f22, f14, rmm # perform operation
fdiv.h f9, f22, f14, rne # perform operation
fdiv.h f9, f22, f14, rtz # perform operation
fdiv.h f9, f22, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f22, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f22, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f22, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f22, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f22, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3c00)
li x21, 0xc6d41e31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
fdiv.h f21, f6, f5, dyn # perform operation
fdiv.h f21, f6, f5, rdn # perform operation
fdiv.h f21, f6, f5, rmm # perform operation
fdiv.h f21, f6, f5, rne # perform operation
fdiv.h f21, f6, f5, rtz # perform operation
fdiv.h f21, f6, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f6, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f6, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f6, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f6, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f6, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbc00)
li x31, 0xfa46036b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f17, 0(x2) # load 0x0000bc00 from memory into f17
fdiv.h f31, f12, f17, dyn # perform operation
fdiv.h f31, f12, f17, rdn # perform operation
fdiv.h f31, f12, f17, rmm # perform operation
fdiv.h f31, f12, f17, rne # perform operation
fdiv.h f31, f12, f17, rtz # perform operation
fdiv.h f31, f12, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f12, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f12, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f12, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f12, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f12, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3e00)
li x21, 0xcdd6b72e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f13, 0(x2) # load 0x00000000 from memory into f13
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
fdiv.h f21, f13, f6, dyn # perform operation
fdiv.h f21, f13, f6, rdn # perform operation
fdiv.h f21, f13, f6, rmm # perform operation
fdiv.h f21, f13, f6, rne # perform operation
fdiv.h f21, f13, f6, rtz # perform operation
fdiv.h f21, f13, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f13, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f13, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f13, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f13, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f13, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbe00)
li x7, 0xd0cc2bd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
fdiv.h f7, f25, f26, dyn # perform operation
fdiv.h f7, f25, f26, rdn # perform operation
fdiv.h f7, f25, f26, rmm # perform operation
fdiv.h f7, f25, f26, rne # perform operation
fdiv.h f7, f25, f26, rtz # perform operation
fdiv.h f7, f25, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f25, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f25, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f25, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f25, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f25, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x4000)
li x6, 0x91389fa2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f4, 0(x2) # load 0x00000000 from memory into f4
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
fdiv.h f6, f4, f22, dyn # perform operation
fdiv.h f6, f4, f22, rdn # perform operation
fdiv.h f6, f4, f22, rmm # perform operation
fdiv.h f6, f4, f22, rne # perform operation
fdiv.h f6, f4, f22, rtz # perform operation
fdiv.h f6, f4, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f4, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f4, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f4, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f4, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f4, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc000)
li x18, 0x2f8f4d8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f10, 0(x2) # load 0x0000c000 from memory into f10
fdiv.h f18, f25, f10, dyn # perform operation
fdiv.h f18, f25, f10, rdn # perform operation
fdiv.h f18, f25, f10, rmm # perform operation
fdiv.h f18, f25, f10, rne # perform operation
fdiv.h f18, f25, f10, rtz # perform operation
fdiv.h f18, f25, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f25, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f25, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f25, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f25, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f25, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x400)
li x14, 0x5920aff6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f20, 0(x2) # load 0x00000000 from memory into f20
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f4, 0(x2) # load 0x00000400 from memory into f4
fdiv.h f14, f20, f4, dyn # perform operation
fdiv.h f14, f20, f4, rdn # perform operation
fdiv.h f14, f20, f4, rmm # perform operation
fdiv.h f14, f20, f4, rne # perform operation
fdiv.h f14, f20, f4, rtz # perform operation
fdiv.h f14, f20, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f20, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f20, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f20, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f20, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f20, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8400)
li x16, 0x100f7638 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f24, 0(x2) # load 0x00000000 from memory into f24
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
fdiv.h f16, f24, f25, dyn # perform operation
fdiv.h f16, f24, f25, rdn # perform operation
fdiv.h f16, f24, f25, rmm # perform operation
fdiv.h f16, f24, f25, rne # perform operation
fdiv.h f16, f24, f25, rtz # perform operation
fdiv.h f16, f24, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f24, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f24, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f24, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f24, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f24, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7bff)
li x8, 0xf4de7648 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f21, 0(x2) # load 0x00000000 from memory into f21
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
fdiv.h f8, f21, f6, dyn # perform operation
fdiv.h f8, f21, f6, rdn # perform operation
fdiv.h f8, f21, f6, rmm # perform operation
fdiv.h f8, f21, f6, rne # perform operation
fdiv.h f8, f21, f6, rtz # perform operation
fdiv.h f8, f21, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f21, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f21, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f21, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f21, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f21, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfbff)
li x27, 0x50168d99 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f26, 0(x2) # load 0x00000000 from memory into f26
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f1, 0(x2) # load 0x0000fbff from memory into f1
fdiv.h f27, f26, f1, dyn # perform operation
fdiv.h f27, f26, f1, rdn # perform operation
fdiv.h f27, f26, f1, rmm # perform operation
fdiv.h f27, f26, f1, rne # perform operation
fdiv.h f27, f26, f1, rtz # perform operation
fdiv.h f27, f26, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f26, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f26, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f26, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f26, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f26, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3ff)
li x11, 0x0fc79d41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f13, 0(x2) # load 0x00000000 from memory into f13
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f30, 0(x2) # load 0x000003ff from memory into f30
fdiv.h f11, f13, f30, dyn # perform operation
fdiv.h f11, f13, f30, rdn # perform operation
fdiv.h f11, f13, f30, rmm # perform operation
fdiv.h f11, f13, f30, rne # perform operation
fdiv.h f11, f13, f30, rtz # perform operation
fdiv.h f11, f13, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f13, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f13, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f13, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f13, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f13, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x83ff)
li x4, 0x8ecf2c04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
fdiv.h f4, f14, f15, dyn # perform operation
fdiv.h f4, f14, f15, rdn # perform operation
fdiv.h f4, f14, f15, rmm # perform operation
fdiv.h f4, f14, f15, rne # perform operation
fdiv.h f4, f14, f15, rtz # perform operation
fdiv.h f4, f14, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f14, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f14, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f14, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f14, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f14, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x200)
li x4, 0x6af5f102 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f8, 0(x2) # load 0x00000200 from memory into f8
fdiv.h f4, f2, f8, dyn # perform operation
fdiv.h f4, f2, f8, rdn # perform operation
fdiv.h f4, f2, f8, rmm # perform operation
fdiv.h f4, f2, f8, rne # perform operation
fdiv.h f4, f2, f8, rtz # perform operation
fdiv.h f4, f2, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f2, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f2, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f2, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f2, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f2, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8200)
li x22, 0x654b9380 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f24, 0(x2) # load 0x00008200 from memory into f24
fdiv.h f22, f27, f24, dyn # perform operation
fdiv.h f22, f27, f24, rdn # perform operation
fdiv.h f22, f27, f24, rmm # perform operation
fdiv.h f22, f27, f24, rne # perform operation
fdiv.h f22, f27, f24, rtz # perform operation
fdiv.h f22, f27, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f27, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f27, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f27, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f27, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f27, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
li x1, 0x6c538417 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f15, 0(x2) # load 0x00000000 from memory into f15
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f22, 0(x2) # load 0x00000001 from memory into f22
fdiv.h f1, f15, f22, dyn # perform operation
fdiv.h f1, f15, f22, rdn # perform operation
fdiv.h f1, f15, f22, rmm # perform operation
fdiv.h f1, f15, f22, rne # perform operation
fdiv.h f1, f15, f22, rtz # perform operation
fdiv.h f1, f15, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f15, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f15, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f15, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f15, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f15, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8001)
li x9, 0x307347b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f21, 0(x2) # load 0x00000000 from memory into f21
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f17, 0(x2) # load 0x00008001 from memory into f17
fdiv.h f9, f21, f17, dyn # perform operation
fdiv.h f9, f21, f17, rdn # perform operation
fdiv.h f9, f21, f17, rmm # perform operation
fdiv.h f9, f21, f17, rne # perform operation
fdiv.h f9, f21, f17, rtz # perform operation
fdiv.h f9, f21, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f21, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f21, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f21, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f21, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f21, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7c00)
li x1, 0xd7d77199 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f22, 0(x2) # load 0x00007c00 from memory into f22
fdiv.h f1, f12, f22, dyn # perform operation
fdiv.h f1, f12, f22, rdn # perform operation
fdiv.h f1, f12, f22, rmm # perform operation
fdiv.h f1, f12, f22, rne # perform operation
fdiv.h f1, f12, f22, rtz # perform operation
fdiv.h f1, f12, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f12, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f12, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f12, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f12, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f12, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfc00)
li x18, 0x08cb9037 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f30, 0(x2) # load 0x0000fc00 from memory into f30
fdiv.h f18, f31, f30, dyn # perform operation
fdiv.h f18, f31, f30, rdn # perform operation
fdiv.h f18, f31, f30, rmm # perform operation
fdiv.h f18, f31, f30, rne # perform operation
fdiv.h f18, f31, f30, rtz # perform operation
fdiv.h f18, f31, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f31, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f31, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f31, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f31, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f31, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7e00)
li x9, 0x2564f3f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
fdiv.h f9, f12, f14, dyn # perform operation
fdiv.h f9, f12, f14, rdn # perform operation
fdiv.h f9, f12, f14, rmm # perform operation
fdiv.h f9, f12, f14, rne # perform operation
fdiv.h f9, f12, f14, rtz # perform operation
fdiv.h f9, f12, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f12, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f12, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f12, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f12, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f12, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fff)
li x8, 0x41ee642e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
fdiv.h f8, f18, f29, dyn # perform operation
fdiv.h f8, f18, f29, rdn # perform operation
fdiv.h f8, f18, f29, rmm # perform operation
fdiv.h f8, f18, f29, rne # perform operation
fdiv.h f8, f18, f29, rtz # perform operation
fdiv.h f8, f18, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f18, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f18, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f18, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f18, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f18, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7c01)
li x12, 0x56e91b0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f29, 0(x2) # load 0x00007c01 from memory into f29
fdiv.h f12, f18, f29, dyn # perform operation
fdiv.h f12, f18, f29, rdn # perform operation
fdiv.h f12, f18, f29, rmm # perform operation
fdiv.h f12, f18, f29, rne # perform operation
fdiv.h f12, f18, f29, rtz # perform operation
fdiv.h f12, f18, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f18, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f18, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f18, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f18, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f18, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7dff)
li x28, 0x2a21a1ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f9, 0(x2) # load 0x00007dff from memory into f9
fdiv.h f28, f25, f9, dyn # perform operation
fdiv.h f28, f25, f9, rdn # perform operation
fdiv.h f28, f25, f9, rmm # perform operation
fdiv.h f28, f25, f9, rne # perform operation
fdiv.h f28, f25, f9, rtz # perform operation
fdiv.h f28, f25, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f25, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f25, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f25, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f25, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f25, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x58b4)
li x27, 0x018b57e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
fdiv.h f27, f12, f17, dyn # perform operation
fdiv.h f27, f12, f17, rdn # perform operation
fdiv.h f27, f12, f17, rmm # perform operation
fdiv.h f27, f12, f17, rne # perform operation
fdiv.h f27, f12, f17, rtz # perform operation
fdiv.h f27, f12, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f12, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f12, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f12, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f12, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f12, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc93a)
li x11, 0xdb76fd04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f23, 0(x2) # load 0x00000000 from memory into f23
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
fdiv.h f11, f23, f26, dyn # perform operation
fdiv.h f11, f23, f26, rdn # perform operation
fdiv.h f11, f23, f26, rmm # perform operation
fdiv.h f11, f23, f26, rne # perform operation
fdiv.h f11, f23, f26, rtz # perform operation
fdiv.h f11, f23, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f23, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f23, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f23, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f23, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f23, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x0)
li x1, 0x338772a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
fdiv.h f1, f6, f19, dyn # perform operation
fdiv.h f1, f6, f19, rdn # perform operation
fdiv.h f1, f6, f19, rmm # perform operation
fdiv.h f1, f6, f19, rne # perform operation
fdiv.h f1, f6, f19, rtz # perform operation
fdiv.h f1, f6, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f6, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f6, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f6, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f6, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f6, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8000)
li x24, 0xd0d7017a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f17, 0(x2) # load 0x00008000 from memory into f17
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
fdiv.h f24, f17, f31, dyn # perform operation
fdiv.h f24, f17, f31, rdn # perform operation
fdiv.h f24, f17, f31, rmm # perform operation
fdiv.h f24, f17, f31, rne # perform operation
fdiv.h f24, f17, f31, rtz # perform operation
fdiv.h f24, f17, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f17, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f17, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f17, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f17, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f17, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3c00)
li x18, 0xd486096c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f27, 0(x2) # load 0x00008000 from memory into f27
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f9, 0(x2) # load 0x00003c00 from memory into f9
fdiv.h f18, f27, f9, dyn # perform operation
fdiv.h f18, f27, f9, rdn # perform operation
fdiv.h f18, f27, f9, rmm # perform operation
fdiv.h f18, f27, f9, rne # perform operation
fdiv.h f18, f27, f9, rtz # perform operation
fdiv.h f18, f27, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f27, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f27, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f27, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f27, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f27, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xbc00)
li x5, 0x2bde24b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f24, 0(x2) # load 0x00008000 from memory into f24
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f23, 0(x2) # load 0x0000bc00 from memory into f23
fdiv.h f5, f24, f23, dyn # perform operation
fdiv.h f5, f24, f23, rdn # perform operation
fdiv.h f5, f24, f23, rmm # perform operation
fdiv.h f5, f24, f23, rne # perform operation
fdiv.h f5, f24, f23, rtz # perform operation
fdiv.h f5, f24, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f24, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f24, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f24, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f24, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f24, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3e00)
li x31, 0xbb817ed9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f8, 0(x2) # load 0x00008000 from memory into f8
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f22, 0(x2) # load 0x00003e00 from memory into f22
fdiv.h f31, f8, f22, dyn # perform operation
fdiv.h f31, f8, f22, rdn # perform operation
fdiv.h f31, f8, f22, rmm # perform operation
fdiv.h f31, f8, f22, rne # perform operation
fdiv.h f31, f8, f22, rtz # perform operation
fdiv.h f31, f8, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f8, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f8, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f8, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f8, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f8, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xbe00)
li x19, 0x3116245b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f2, 0(x2) # load 0x0000be00 from memory into f2
fdiv.h f19, f7, f2, dyn # perform operation
fdiv.h f19, f7, f2, rdn # perform operation
fdiv.h f19, f7, f2, rmm # perform operation
fdiv.h f19, f7, f2, rne # perform operation
fdiv.h f19, f7, f2, rtz # perform operation
fdiv.h f19, f7, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f7, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f7, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f7, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f7, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f7, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x4000)
li x12, 0xb4b5116d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f28, 0(x2) # load 0x00008000 from memory into f28
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f10, 0(x2) # load 0x00004000 from memory into f10
fdiv.h f12, f28, f10, dyn # perform operation
fdiv.h f12, f28, f10, rdn # perform operation
fdiv.h f12, f28, f10, rmm # perform operation
fdiv.h f12, f28, f10, rne # perform operation
fdiv.h f12, f28, f10, rtz # perform operation
fdiv.h f12, f28, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f28, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f28, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f28, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f28, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f28, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xc000)
li x25, 0x7da99edf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
fdiv.h f25, f7, f21, dyn # perform operation
fdiv.h f25, f7, f21, rdn # perform operation
fdiv.h f25, f7, f21, rmm # perform operation
fdiv.h f25, f7, f21, rne # perform operation
fdiv.h f25, f7, f21, rtz # perform operation
fdiv.h f25, f7, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f7, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f7, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f7, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f7, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f7, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x400)
li x28, 0x2fd43a77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f17, 0(x2) # load 0x00008000 from memory into f17
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
fdiv.h f28, f17, f13, dyn # perform operation
fdiv.h f28, f17, f13, rdn # perform operation
fdiv.h f28, f17, f13, rmm # perform operation
fdiv.h f28, f17, f13, rne # perform operation
fdiv.h f28, f17, f13, rtz # perform operation
fdiv.h f28, f17, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f17, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f17, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f17, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f17, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f17, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8400)
li x25, 0x3bccedd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f27, 0(x2) # load 0x00008400 from memory into f27
fdiv.h f25, f12, f27, dyn # perform operation
fdiv.h f25, f12, f27, rdn # perform operation
fdiv.h f25, f12, f27, rmm # perform operation
fdiv.h f25, f12, f27, rne # perform operation
fdiv.h f25, f12, f27, rtz # perform operation
fdiv.h f25, f12, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f12, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f12, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f12, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f12, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f12, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7bff)
li x23, 0x8c6c1bb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f1, 0(x2) # load 0x00008000 from memory into f1
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
fdiv.h f23, f1, f10, dyn # perform operation
fdiv.h f23, f1, f10, rdn # perform operation
fdiv.h f23, f1, f10, rmm # perform operation
fdiv.h f23, f1, f10, rne # perform operation
fdiv.h f23, f1, f10, rtz # perform operation
fdiv.h f23, f1, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f1, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f1, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f1, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f1, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f1, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfbff)
li x22, 0x954a58be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f8, 0(x2) # load 0x00008000 from memory into f8
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f4, 0(x2) # load 0x0000fbff from memory into f4
fdiv.h f22, f8, f4, dyn # perform operation
fdiv.h f22, f8, f4, rdn # perform operation
fdiv.h f22, f8, f4, rmm # perform operation
fdiv.h f22, f8, f4, rne # perform operation
fdiv.h f22, f8, f4, rtz # perform operation
fdiv.h f22, f8, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f8, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f8, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f8, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f8, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f8, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3ff)
li x9, 0x5b0b03df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f14, 0(x2) # load 0x00008000 from memory into f14
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f19, 0(x2) # load 0x000003ff from memory into f19
fdiv.h f9, f14, f19, dyn # perform operation
fdiv.h f9, f14, f19, rdn # perform operation
fdiv.h f9, f14, f19, rmm # perform operation
fdiv.h f9, f14, f19, rne # perform operation
fdiv.h f9, f14, f19, rtz # perform operation
fdiv.h f9, f14, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f14, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f14, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f14, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f14, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f14, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x83ff)
li x16, 0xaaa6a82c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f27, 0(x2) # load 0x00008000 from memory into f27
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
fdiv.h f16, f27, f29, dyn # perform operation
fdiv.h f16, f27, f29, rdn # perform operation
fdiv.h f16, f27, f29, rmm # perform operation
fdiv.h f16, f27, f29, rne # perform operation
fdiv.h f16, f27, f29, rtz # perform operation
fdiv.h f16, f27, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f27, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f27, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f27, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f27, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f27, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x200)
li x31, 0x04cca611 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f17, 0(x2) # load 0x00008000 from memory into f17
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
fdiv.h f31, f17, f5, dyn # perform operation
fdiv.h f31, f17, f5, rdn # perform operation
fdiv.h f31, f17, f5, rmm # perform operation
fdiv.h f31, f17, f5, rne # perform operation
fdiv.h f31, f17, f5, rtz # perform operation
fdiv.h f31, f17, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f17, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f17, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f17, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f17, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f17, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8200)
li x21, 0x6a54471f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
fdiv.h f21, f3, f10, dyn # perform operation
fdiv.h f21, f3, f10, rdn # perform operation
fdiv.h f21, f3, f10, rmm # perform operation
fdiv.h f21, f3, f10, rne # perform operation
fdiv.h f21, f3, f10, rtz # perform operation
fdiv.h f21, f3, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f3, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f3, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f3, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f3, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f3, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x1)
li x5, 0xd6db7385 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
fdiv.h f5, f2, f27, dyn # perform operation
fdiv.h f5, f2, f27, rdn # perform operation
fdiv.h f5, f2, f27, rmm # perform operation
fdiv.h f5, f2, f27, rne # perform operation
fdiv.h f5, f2, f27, rtz # perform operation
fdiv.h f5, f2, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f2, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f2, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f2, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f2, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f2, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8001)
li x18, 0x85e29303 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f16, 0(x2) # load 0x00008000 from memory into f16
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
fdiv.h f18, f16, f23, dyn # perform operation
fdiv.h f18, f16, f23, rdn # perform operation
fdiv.h f18, f16, f23, rmm # perform operation
fdiv.h f18, f16, f23, rne # perform operation
fdiv.h f18, f16, f23, rtz # perform operation
fdiv.h f18, f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f16, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7c00)
li x13, 0x7c2d3b9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
fdiv.h f13, f3, f2, dyn # perform operation
fdiv.h f13, f3, f2, rdn # perform operation
fdiv.h f13, f3, f2, rmm # perform operation
fdiv.h f13, f3, f2, rne # perform operation
fdiv.h f13, f3, f2, rtz # perform operation
fdiv.h f13, f3, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f3, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f3, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f3, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f3, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f3, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfc00)
li x8, 0x2e78c2d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f29, 0(x2) # load 0x0000fc00 from memory into f29
fdiv.h f8, f3, f29, dyn # perform operation
fdiv.h f8, f3, f29, rdn # perform operation
fdiv.h f8, f3, f29, rmm # perform operation
fdiv.h f8, f3, f29, rne # perform operation
fdiv.h f8, f3, f29, rtz # perform operation
fdiv.h f8, f3, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f3, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f3, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f3, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f3, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f3, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7e00)
li x17, 0xce3572ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f22, 0(x2) # load 0x00008000 from memory into f22
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f28, 0(x2) # load 0x00007e00 from memory into f28
fdiv.h f17, f22, f28, dyn # perform operation
fdiv.h f17, f22, f28, rdn # perform operation
fdiv.h f17, f22, f28, rmm # perform operation
fdiv.h f17, f22, f28, rne # perform operation
fdiv.h f17, f22, f28, rtz # perform operation
fdiv.h f17, f22, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f22, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f22, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f22, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f22, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f22, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7fff)
li x3, 0xa03b774f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f22, 0(x2) # load 0x00007fff from memory into f22
fdiv.h f3, f7, f22, dyn # perform operation
fdiv.h f3, f7, f22, rdn # perform operation
fdiv.h f3, f7, f22, rmm # perform operation
fdiv.h f3, f7, f22, rne # perform operation
fdiv.h f3, f7, f22, rtz # perform operation
fdiv.h f3, f7, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f7, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f7, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f7, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f7, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f7, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7c01)
li x19, 0x5090c8af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f1, 0(x2) # load 0x00007c01 from memory into f1
fdiv.h f19, f26, f1, dyn # perform operation
fdiv.h f19, f26, f1, rdn # perform operation
fdiv.h f19, f26, f1, rmm # perform operation
fdiv.h f19, f26, f1, rne # perform operation
fdiv.h f19, f26, f1, rtz # perform operation
fdiv.h f19, f26, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f26, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f26, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f26, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f26, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f26, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7dff)
li x14, 0x0e046e18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f13, 0(x2) # load 0x00007dff from memory into f13
fdiv.h f14, f31, f13, dyn # perform operation
fdiv.h f14, f31, f13, rdn # perform operation
fdiv.h f14, f31, f13, rmm # perform operation
fdiv.h f14, f31, f13, rne # perform operation
fdiv.h f14, f31, f13, rtz # perform operation
fdiv.h f14, f31, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f31, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f31, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f31, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f31, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f31, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x58b4)
li x1, 0x6614c9f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f22, 0(x2) # load 0x00008000 from memory into f22
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f7, 0(x2) # load 0x000058b4 from memory into f7
fdiv.h f1, f22, f7, dyn # perform operation
fdiv.h f1, f22, f7, rdn # perform operation
fdiv.h f1, f22, f7, rmm # perform operation
fdiv.h f1, f22, f7, rne # perform operation
fdiv.h f1, f22, f7, rtz # perform operation
fdiv.h f1, f22, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f22, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f22, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f22, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f22, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f22, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xc93a)
li x17, 0x2cc8aa4c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f9, 0(x2) # load 0x00008000 from memory into f9
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f4, 0(x2) # load 0x0000c93a from memory into f4
fdiv.h f17, f9, f4, dyn # perform operation
fdiv.h f17, f9, f4, rdn # perform operation
fdiv.h f17, f9, f4, rmm # perform operation
fdiv.h f17, f9, f4, rne # perform operation
fdiv.h f17, f9, f4, rtz # perform operation
fdiv.h f17, f9, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f9, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f9, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f9, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f9, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f9, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x0)
li x3, 0x379ff8c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f18, 0(x2) # load 0x00003c00 from memory into f18
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f24, 0(x2) # load 0x00000000 from memory into f24
fdiv.h f3, f18, f24, dyn # perform operation
fdiv.h f3, f18, f24, rdn # perform operation
fdiv.h f3, f18, f24, rmm # perform operation
fdiv.h f3, f18, f24, rne # perform operation
fdiv.h f3, f18, f24, rtz # perform operation
fdiv.h f3, f18, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f18, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f18, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f18, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f18, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f18, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8000)
li x26, 0x07995033 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
fdiv.h f26, f15, f31, dyn # perform operation
fdiv.h f26, f15, f31, rdn # perform operation
fdiv.h f26, f15, f31, rmm # perform operation
fdiv.h f26, f15, f31, rne # perform operation
fdiv.h f26, f15, f31, rtz # perform operation
fdiv.h f26, f15, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f15, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f15, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f15, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f15, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f15, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3c00)
li x25, 0x40f69fa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f14, 0(x2) # load 0x00003c00 from memory into f14
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f23, 0(x2) # load 0x00003c00 from memory into f23
fdiv.h f25, f14, f23, dyn # perform operation
fdiv.h f25, f14, f23, rdn # perform operation
fdiv.h f25, f14, f23, rmm # perform operation
fdiv.h f25, f14, f23, rne # perform operation
fdiv.h f25, f14, f23, rtz # perform operation
fdiv.h f25, f14, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f14, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f14, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f14, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f14, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f14, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xbc00)
li x21, 0xc98d6d56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f10, 0(x2) # load 0x0000bc00 from memory into f10
fdiv.h f21, f24, f10, dyn # perform operation
fdiv.h f21, f24, f10, rdn # perform operation
fdiv.h f21, f24, f10, rmm # perform operation
fdiv.h f21, f24, f10, rne # perform operation
fdiv.h f21, f24, f10, rtz # perform operation
fdiv.h f21, f24, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f24, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f24, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f24, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f24, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f24, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3e00)
li x5, 0x2d20e566 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f19, 0(x2) # load 0x00003c00 from memory into f19
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
fdiv.h f5, f19, f29, dyn # perform operation
fdiv.h f5, f19, f29, rdn # perform operation
fdiv.h f5, f19, f29, rmm # perform operation
fdiv.h f5, f19, f29, rne # perform operation
fdiv.h f5, f19, f29, rtz # perform operation
fdiv.h f5, f19, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f19, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f19, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f19, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f19, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f19, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xbe00)
li x16, 0x16f24865 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f10, 0(x2) # load 0x00003c00 from memory into f10
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
fdiv.h f16, f10, f28, dyn # perform operation
fdiv.h f16, f10, f28, rdn # perform operation
fdiv.h f16, f10, f28, rmm # perform operation
fdiv.h f16, f10, f28, rne # perform operation
fdiv.h f16, f10, f28, rtz # perform operation
fdiv.h f16, f10, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f10, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f10, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f10, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f10, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f10, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x4000)
li x27, 0xecc46f8a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f19, 0(x2) # load 0x00004000 from memory into f19
fdiv.h f27, f7, f19, dyn # perform operation
fdiv.h f27, f7, f19, rdn # perform operation
fdiv.h f27, f7, f19, rmm # perform operation
fdiv.h f27, f7, f19, rne # perform operation
fdiv.h f27, f7, f19, rtz # perform operation
fdiv.h f27, f7, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f7, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f7, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f7, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f7, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f7, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xc000)
li x7, 0x489e438e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
fdiv.h f7, f16, f23, dyn # perform operation
fdiv.h f7, f16, f23, rdn # perform operation
fdiv.h f7, f16, f23, rmm # perform operation
fdiv.h f7, f16, f23, rne # perform operation
fdiv.h f7, f16, f23, rtz # perform operation
fdiv.h f7, f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f16, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x400)
li x16, 0x9869ac98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f11, 0(x2) # load 0x00003c00 from memory into f11
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
fdiv.h f16, f11, f20, dyn # perform operation
fdiv.h f16, f11, f20, rdn # perform operation
fdiv.h f16, f11, f20, rmm # perform operation
fdiv.h f16, f11, f20, rne # perform operation
fdiv.h f16, f11, f20, rtz # perform operation
fdiv.h f16, f11, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f11, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f11, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f11, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f11, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f11, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8400)
li x3, 0x8de18980 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
fdiv.h f3, f16, f1, dyn # perform operation
fdiv.h f3, f16, f1, rdn # perform operation
fdiv.h f3, f16, f1, rmm # perform operation
fdiv.h f3, f16, f1, rne # perform operation
fdiv.h f3, f16, f1, rtz # perform operation
fdiv.h f3, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f16, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7bff)
li x12, 0xd9b6800c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f20, 0(x2) # load 0x00003c00 from memory into f20
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f27, 0(x2) # load 0x00007bff from memory into f27
fdiv.h f12, f20, f27, dyn # perform operation
fdiv.h f12, f20, f27, rdn # perform operation
fdiv.h f12, f20, f27, rmm # perform operation
fdiv.h f12, f20, f27, rne # perform operation
fdiv.h f12, f20, f27, rtz # perform operation
fdiv.h f12, f20, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f20, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f20, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f20, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f20, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f20, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfbff)
li x13, 0xede8a4f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f3, 0(x2) # load 0x0000fbff from memory into f3
fdiv.h f13, f22, f3, dyn # perform operation
fdiv.h f13, f22, f3, rdn # perform operation
fdiv.h f13, f22, f3, rmm # perform operation
fdiv.h f13, f22, f3, rne # perform operation
fdiv.h f13, f22, f3, rtz # perform operation
fdiv.h f13, f22, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f22, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f22, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f22, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f22, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f22, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3ff)
li x9, 0x84f2447e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f23, 0(x2) # load 0x00003c00 from memory into f23
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f14, 0(x2) # load 0x000003ff from memory into f14
fdiv.h f9, f23, f14, dyn # perform operation
fdiv.h f9, f23, f14, rdn # perform operation
fdiv.h f9, f23, f14, rmm # perform operation
fdiv.h f9, f23, f14, rne # perform operation
fdiv.h f9, f23, f14, rtz # perform operation
fdiv.h f9, f23, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f23, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f23, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f23, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f23, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f23, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x83ff)
li x12, 0x6b67621d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f6, 0(x2) # load 0x00003c00 from memory into f6
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f26, 0(x2) # load 0x000083ff from memory into f26
fdiv.h f12, f6, f26, dyn # perform operation
fdiv.h f12, f6, f26, rdn # perform operation
fdiv.h f12, f6, f26, rmm # perform operation
fdiv.h f12, f6, f26, rne # perform operation
fdiv.h f12, f6, f26, rtz # perform operation
fdiv.h f12, f6, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f6, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f6, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f6, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f6, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f6, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x200)
li x20, 0x88643717 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f23, 0(x2) # load 0x00003c00 from memory into f23
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f21, 0(x2) # load 0x00000200 from memory into f21
fdiv.h f20, f23, f21, dyn # perform operation
fdiv.h f20, f23, f21, rdn # perform operation
fdiv.h f20, f23, f21, rmm # perform operation
fdiv.h f20, f23, f21, rne # perform operation
fdiv.h f20, f23, f21, rtz # perform operation
fdiv.h f20, f23, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f23, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f23, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f23, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f23, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f23, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8200)
li x31, 0xd7f7677d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f11, 0(x2) # load 0x00003c00 from memory into f11
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f13, 0(x2) # load 0x00008200 from memory into f13
fdiv.h f31, f11, f13, dyn # perform operation
fdiv.h f31, f11, f13, rdn # perform operation
fdiv.h f31, f11, f13, rmm # perform operation
fdiv.h f31, f11, f13, rne # perform operation
fdiv.h f31, f11, f13, rtz # perform operation
fdiv.h f31, f11, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f11, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f11, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f11, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f11, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f11, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x1)
li x21, 0x5c8bad4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f28, 0(x2) # load 0x00000001 from memory into f28
fdiv.h f21, f16, f28, dyn # perform operation
fdiv.h f21, f16, f28, rdn # perform operation
fdiv.h f21, f16, f28, rmm # perform operation
fdiv.h f21, f16, f28, rne # perform operation
fdiv.h f21, f16, f28, rtz # perform operation
fdiv.h f21, f16, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f16, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f16, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f16, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f16, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f16, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8001)
li x24, 0x655f8141 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f9, 0(x2) # load 0x00008001 from memory into f9
fdiv.h f24, f30, f9, dyn # perform operation
fdiv.h f24, f30, f9, rdn # perform operation
fdiv.h f24, f30, f9, rmm # perform operation
fdiv.h f24, f30, f9, rne # perform operation
fdiv.h f24, f30, f9, rtz # perform operation
fdiv.h f24, f30, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f30, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f30, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f30, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f30, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f30, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7c00)
li x19, 0xf8805b3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f20, 0(x2) # load 0x00003c00 from memory into f20
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f29, 0(x2) # load 0x00007c00 from memory into f29
fdiv.h f19, f20, f29, dyn # perform operation
fdiv.h f19, f20, f29, rdn # perform operation
fdiv.h f19, f20, f29, rmm # perform operation
fdiv.h f19, f20, f29, rne # perform operation
fdiv.h f19, f20, f29, rtz # perform operation
fdiv.h f19, f20, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f20, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f20, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f20, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f20, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f20, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfc00)
li x6, 0xd8d87399 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f20, 0(x2) # load 0x00003c00 from memory into f20
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f27, 0(x2) # load 0x0000fc00 from memory into f27
fdiv.h f6, f20, f27, dyn # perform operation
fdiv.h f6, f20, f27, rdn # perform operation
fdiv.h f6, f20, f27, rmm # perform operation
fdiv.h f6, f20, f27, rne # perform operation
fdiv.h f6, f20, f27, rtz # perform operation
fdiv.h f6, f20, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f20, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f20, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f20, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f20, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f20, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7e00)
li x8, 0xe7abb68f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f1, 0(x2) # load 0x00007e00 from memory into f1
fdiv.h f8, f3, f1, dyn # perform operation
fdiv.h f8, f3, f1, rdn # perform operation
fdiv.h f8, f3, f1, rmm # perform operation
fdiv.h f8, f3, f1, rne # perform operation
fdiv.h f8, f3, f1, rtz # perform operation
fdiv.h f8, f3, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f3, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f3, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f3, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f3, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f3, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7fff)
li x21, 0xe31c7906 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
fdiv.h f21, f16, f8, dyn # perform operation
fdiv.h f21, f16, f8, rdn # perform operation
fdiv.h f21, f16, f8, rmm # perform operation
fdiv.h f21, f16, f8, rne # perform operation
fdiv.h f21, f16, f8, rtz # perform operation
fdiv.h f21, f16, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f16, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f16, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f16, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f16, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f16, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7c01)
li x17, 0x3af09fdf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f29, 0(x2) # load 0x00003c00 from memory into f29
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f22, 0(x2) # load 0x00007c01 from memory into f22
fdiv.h f17, f29, f22, dyn # perform operation
fdiv.h f17, f29, f22, rdn # perform operation
fdiv.h f17, f29, f22, rmm # perform operation
fdiv.h f17, f29, f22, rne # perform operation
fdiv.h f17, f29, f22, rtz # perform operation
fdiv.h f17, f29, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f29, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f29, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f29, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f29, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f29, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7dff)
li x27, 0x338c76ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f26, 0(x2) # load 0x00003c00 from memory into f26
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f8, 0(x2) # load 0x00007dff from memory into f8
fdiv.h f27, f26, f8, dyn # perform operation
fdiv.h f27, f26, f8, rdn # perform operation
fdiv.h f27, f26, f8, rmm # perform operation
fdiv.h f27, f26, f8, rne # perform operation
fdiv.h f27, f26, f8, rtz # perform operation
fdiv.h f27, f26, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f26, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f26, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f26, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f26, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f26, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x58b4)
li x23, 0xed23d9bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f22, 0(x2) # load 0x000058b4 from memory into f22
fdiv.h f23, f3, f22, dyn # perform operation
fdiv.h f23, f3, f22, rdn # perform operation
fdiv.h f23, f3, f22, rmm # perform operation
fdiv.h f23, f3, f22, rne # perform operation
fdiv.h f23, f3, f22, rtz # perform operation
fdiv.h f23, f3, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f3, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f3, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f3, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f3, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f3, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xc93a)
li x15, 0x68f408fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f11, 0(x2) # load 0x00003c00 from memory into f11
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
fdiv.h f15, f11, f17, dyn # perform operation
fdiv.h f15, f11, f17, rdn # perform operation
fdiv.h f15, f11, f17, rmm # perform operation
fdiv.h f15, f11, f17, rne # perform operation
fdiv.h f15, f11, f17, rtz # perform operation
fdiv.h f15, f11, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f11, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f11, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f11, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f11, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f11, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x0)
li x31, 0x9cca95b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f25, 0(x2) # load 0x0000bc00 from memory into f25
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f15, 0(x2) # load 0x00000000 from memory into f15
fdiv.h f31, f25, f15, dyn # perform operation
fdiv.h f31, f25, f15, rdn # perform operation
fdiv.h f31, f25, f15, rmm # perform operation
fdiv.h f31, f25, f15, rne # perform operation
fdiv.h f31, f25, f15, rtz # perform operation
fdiv.h f31, f25, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f25, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f25, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f25, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f25, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f25, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8000)
li x8, 0x711456a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f9, 0(x2) # load 0x00008000 from memory into f9
fdiv.h f8, f28, f9, dyn # perform operation
fdiv.h f8, f28, f9, rdn # perform operation
fdiv.h f8, f28, f9, rmm # perform operation
fdiv.h f8, f28, f9, rne # perform operation
fdiv.h f8, f28, f9, rtz # perform operation
fdiv.h f8, f28, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f28, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f28, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f28, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f28, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f28, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3c00)
li x4, 0x452d9312 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f30, 0(x2) # load 0x0000bc00 from memory into f30
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f29, 0(x2) # load 0x00003c00 from memory into f29
fdiv.h f4, f30, f29, dyn # perform operation
fdiv.h f4, f30, f29, rdn # perform operation
fdiv.h f4, f30, f29, rmm # perform operation
fdiv.h f4, f30, f29, rne # perform operation
fdiv.h f4, f30, f29, rtz # perform operation
fdiv.h f4, f30, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f30, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f30, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f30, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f30, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f30, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xbc00)
li x17, 0x84dd535f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f30, 0(x2) # load 0x0000bc00 from memory into f30
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f3, 0(x2) # load 0x0000bc00 from memory into f3
fdiv.h f17, f30, f3, dyn # perform operation
fdiv.h f17, f30, f3, rdn # perform operation
fdiv.h f17, f30, f3, rmm # perform operation
fdiv.h f17, f30, f3, rne # perform operation
fdiv.h f17, f30, f3, rtz # perform operation
fdiv.h f17, f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f30, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3e00)
li x25, 0xc3ac66ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
fdiv.h f25, f24, f29, dyn # perform operation
fdiv.h f25, f24, f29, rdn # perform operation
fdiv.h f25, f24, f29, rmm # perform operation
fdiv.h f25, f24, f29, rne # perform operation
fdiv.h f25, f24, f29, rtz # perform operation
fdiv.h f25, f24, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f24, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f24, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f24, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f24, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f24, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xbe00)
li x1, 0x385adfcf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f20, 0(x2) # load 0x0000bc00 from memory into f20
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
fdiv.h f1, f20, f8, dyn # perform operation
fdiv.h f1, f20, f8, rdn # perform operation
fdiv.h f1, f20, f8, rmm # perform operation
fdiv.h f1, f20, f8, rne # perform operation
fdiv.h f1, f20, f8, rtz # perform operation
fdiv.h f1, f20, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f20, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f20, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f20, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f20, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f20, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x4000)
li x19, 0x30b13c0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
fdiv.h f19, f28, f14, dyn # perform operation
fdiv.h f19, f28, f14, rdn # perform operation
fdiv.h f19, f28, f14, rmm # perform operation
fdiv.h f19, f28, f14, rne # perform operation
fdiv.h f19, f28, f14, rtz # perform operation
fdiv.h f19, f28, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f28, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f28, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f28, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f28, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f28, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xc000)
li x16, 0x16d615c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f8, 0(x2) # load 0x0000bc00 from memory into f8
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
fdiv.h f16, f8, f9, dyn # perform operation
fdiv.h f16, f8, f9, rdn # perform operation
fdiv.h f16, f8, f9, rmm # perform operation
fdiv.h f16, f8, f9, rne # perform operation
fdiv.h f16, f8, f9, rtz # perform operation
fdiv.h f16, f8, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f8, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f8, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f8, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f8, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f8, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x400)
li x15, 0x200b6141 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f3, 0(x2) # load 0x00000400 from memory into f3
fdiv.h f15, f28, f3, dyn # perform operation
fdiv.h f15, f28, f3, rdn # perform operation
fdiv.h f15, f28, f3, rmm # perform operation
fdiv.h f15, f28, f3, rne # perform operation
fdiv.h f15, f28, f3, rtz # perform operation
fdiv.h f15, f28, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f28, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f28, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f28, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f28, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f28, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8400)
li x6, 0xce699712 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f12, 0(x2) # load 0x0000bc00 from memory into f12
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f13, 0(x2) # load 0x00008400 from memory into f13
fdiv.h f6, f12, f13, dyn # perform operation
fdiv.h f6, f12, f13, rdn # perform operation
fdiv.h f6, f12, f13, rmm # perform operation
fdiv.h f6, f12, f13, rne # perform operation
fdiv.h f6, f12, f13, rtz # perform operation
fdiv.h f6, f12, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f12, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f12, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f12, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f12, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f12, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7bff)
li x16, 0x479d0a54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f23, 0(x2) # load 0x00007bff from memory into f23
fdiv.h f16, f5, f23, dyn # perform operation
fdiv.h f16, f5, f23, rdn # perform operation
fdiv.h f16, f5, f23, rmm # perform operation
fdiv.h f16, f5, f23, rne # perform operation
fdiv.h f16, f5, f23, rtz # perform operation
fdiv.h f16, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f5, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfbff)
li x6, 0xb73b164f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f13, 0(x2) # load 0x0000bc00 from memory into f13
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f29, 0(x2) # load 0x0000fbff from memory into f29
fdiv.h f6, f13, f29, dyn # perform operation
fdiv.h f6, f13, f29, rdn # perform operation
fdiv.h f6, f13, f29, rmm # perform operation
fdiv.h f6, f13, f29, rne # perform operation
fdiv.h f6, f13, f29, rtz # perform operation
fdiv.h f6, f13, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f13, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f13, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f13, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f13, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f13, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3ff)
li x9, 0x27565085 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f27, 0(x2) # load 0x0000bc00 from memory into f27
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f25, 0(x2) # load 0x000003ff from memory into f25
fdiv.h f9, f27, f25, dyn # perform operation
fdiv.h f9, f27, f25, rdn # perform operation
fdiv.h f9, f27, f25, rmm # perform operation
fdiv.h f9, f27, f25, rne # perform operation
fdiv.h f9, f27, f25, rtz # perform operation
fdiv.h f9, f27, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f27, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f27, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f27, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f27, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f27, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x83ff)
li x15, 0x84765d21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f25, 0(x2) # load 0x000083ff from memory into f25
fdiv.h f15, f24, f25, dyn # perform operation
fdiv.h f15, f24, f25, rdn # perform operation
fdiv.h f15, f24, f25, rmm # perform operation
fdiv.h f15, f24, f25, rne # perform operation
fdiv.h f15, f24, f25, rtz # perform operation
fdiv.h f15, f24, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f24, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f24, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f24, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f24, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f24, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x200)
li x28, 0x9643abf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f25, 0(x2) # load 0x0000bc00 from memory into f25
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f17, 0(x2) # load 0x00000200 from memory into f17
fdiv.h f28, f25, f17, dyn # perform operation
fdiv.h f28, f25, f17, rdn # perform operation
fdiv.h f28, f25, f17, rmm # perform operation
fdiv.h f28, f25, f17, rne # perform operation
fdiv.h f28, f25, f17, rtz # perform operation
fdiv.h f28, f25, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f25, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f25, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f25, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f25, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f25, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8200)
li x16, 0x7d695022 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
fdiv.h f16, f21, f23, dyn # perform operation
fdiv.h f16, f21, f23, rdn # perform operation
fdiv.h f16, f21, f23, rmm # perform operation
fdiv.h f16, f21, f23, rne # perform operation
fdiv.h f16, f21, f23, rtz # perform operation
fdiv.h f16, f21, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f21, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f21, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f21, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f21, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f21, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x1)
li x5, 0xe7d5443f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f8, 0(x2) # load 0x00000001 from memory into f8
fdiv.h f5, f28, f8, dyn # perform operation
fdiv.h f5, f28, f8, rdn # perform operation
fdiv.h f5, f28, f8, rmm # perform operation
fdiv.h f5, f28, f8, rne # perform operation
fdiv.h f5, f28, f8, rtz # perform operation
fdiv.h f5, f28, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f28, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f28, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f28, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f28, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f28, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8001)
li x29, 0xa5279413 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
fdiv.h f29, f5, f24, dyn # perform operation
fdiv.h f29, f5, f24, rdn # perform operation
fdiv.h f29, f5, f24, rmm # perform operation
fdiv.h f29, f5, f24, rne # perform operation
fdiv.h f29, f5, f24, rtz # perform operation
fdiv.h f29, f5, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f5, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f5, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f5, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f5, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f5, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7c00)
li x27, 0x24c90a62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f15, 0(x2) # load 0x00007c00 from memory into f15
fdiv.h f27, f7, f15, dyn # perform operation
fdiv.h f27, f7, f15, rdn # perform operation
fdiv.h f27, f7, f15, rmm # perform operation
fdiv.h f27, f7, f15, rne # perform operation
fdiv.h f27, f7, f15, rtz # perform operation
fdiv.h f27, f7, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f7, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f7, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f7, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f7, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f7, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfc00)
li x31, 0x032477d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f13, 0(x2) # load 0x0000bc00 from memory into f13
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
fdiv.h f31, f13, f8, dyn # perform operation
fdiv.h f31, f13, f8, rdn # perform operation
fdiv.h f31, f13, f8, rmm # perform operation
fdiv.h f31, f13, f8, rne # perform operation
fdiv.h f31, f13, f8, rtz # perform operation
fdiv.h f31, f13, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f13, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f13, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f13, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f13, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f13, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7e00)
li x2, 0xfcfde2c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f27, 0(x2) # load 0x0000bc00 from memory into f27
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f29, 0(x2) # load 0x00007e00 from memory into f29
fdiv.h f2, f27, f29, dyn # perform operation
fdiv.h f2, f27, f29, rdn # perform operation
fdiv.h f2, f27, f29, rmm # perform operation
fdiv.h f2, f27, f29, rne # perform operation
fdiv.h f2, f27, f29, rtz # perform operation
fdiv.h f2, f27, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f27, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f27, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f27, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f27, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f27, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7fff)
li x30, 0xddc093a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f3, 0(x2) # load 0x0000bc00 from memory into f3
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
fdiv.h f30, f3, f2, dyn # perform operation
fdiv.h f30, f3, f2, rdn # perform operation
fdiv.h f30, f3, f2, rmm # perform operation
fdiv.h f30, f3, f2, rne # perform operation
fdiv.h f30, f3, f2, rtz # perform operation
fdiv.h f30, f3, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f3, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f3, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f3, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f3, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f3, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7c01)
li x30, 0x9aa10b79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f27, 0(x2) # load 0x00007c01 from memory into f27
fdiv.h f30, f24, f27, dyn # perform operation
fdiv.h f30, f24, f27, rdn # perform operation
fdiv.h f30, f24, f27, rmm # perform operation
fdiv.h f30, f24, f27, rne # perform operation
fdiv.h f30, f24, f27, rtz # perform operation
fdiv.h f30, f24, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f24, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f24, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f24, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f24, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f24, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7dff)
li x15, 0xea58f6a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f9, 0(x2) # load 0x00007dff from memory into f9
fdiv.h f15, f14, f9, dyn # perform operation
fdiv.h f15, f14, f9, rdn # perform operation
fdiv.h f15, f14, f9, rmm # perform operation
fdiv.h f15, f14, f9, rne # perform operation
fdiv.h f15, f14, f9, rtz # perform operation
fdiv.h f15, f14, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f14, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f14, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f14, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f14, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f14, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x58b4)
li x22, 0xe2ff6a85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f19, 0(x2) # load 0x000058b4 from memory into f19
fdiv.h f22, f16, f19, dyn # perform operation
fdiv.h f22, f16, f19, rdn # perform operation
fdiv.h f22, f16, f19, rmm # perform operation
fdiv.h f22, f16, f19, rne # perform operation
fdiv.h f22, f16, f19, rtz # perform operation
fdiv.h f22, f16, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f16, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f16, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f16, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f16, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f16, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xc93a)
li x31, 0x5adb7748 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f22, 0(x2) # load 0x0000bc00 from memory into f22
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f29, 0(x2) # load 0x0000c93a from memory into f29
fdiv.h f31, f22, f29, dyn # perform operation
fdiv.h f31, f22, f29, rdn # perform operation
fdiv.h f31, f22, f29, rmm # perform operation
fdiv.h f31, f22, f29, rne # perform operation
fdiv.h f31, f22, f29, rtz # perform operation
fdiv.h f31, f22, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f22, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f22, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f22, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f22, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f22, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x0)
li x7, 0x238d6dae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f27, 0(x2) # load 0x00003e00 from memory into f27
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f28, 0(x2) # load 0x00000000 from memory into f28
fdiv.h f7, f27, f28, dyn # perform operation
fdiv.h f7, f27, f28, rdn # perform operation
fdiv.h f7, f27, f28, rmm # perform operation
fdiv.h f7, f27, f28, rne # perform operation
fdiv.h f7, f27, f28, rtz # perform operation
fdiv.h f7, f27, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f27, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f27, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f27, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f27, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f27, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8000)
li x6, 0x00ae996b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f11, 0(x2) # load 0x00003e00 from memory into f11
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
fdiv.h f6, f11, f3, dyn # perform operation
fdiv.h f6, f11, f3, rdn # perform operation
fdiv.h f6, f11, f3, rmm # perform operation
fdiv.h f6, f11, f3, rne # perform operation
fdiv.h f6, f11, f3, rtz # perform operation
fdiv.h f6, f11, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f11, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f11, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f11, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f11, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f11, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3c00)
li x31, 0xd072b14f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f6, 0(x2) # load 0x00003c00 from memory into f6
fdiv.h f31, f1, f6, dyn # perform operation
fdiv.h f31, f1, f6, rdn # perform operation
fdiv.h f31, f1, f6, rmm # perform operation
fdiv.h f31, f1, f6, rne # perform operation
fdiv.h f31, f1, f6, rtz # perform operation
fdiv.h f31, f1, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f1, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f1, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f1, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f1, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f1, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xbc00)
li x18, 0xc187590d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f14, 0(x2) # load 0x00003e00 from memory into f14
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f6, 0(x2) # load 0x0000bc00 from memory into f6
fdiv.h f18, f14, f6, dyn # perform operation
fdiv.h f18, f14, f6, rdn # perform operation
fdiv.h f18, f14, f6, rmm # perform operation
fdiv.h f18, f14, f6, rne # perform operation
fdiv.h f18, f14, f6, rtz # perform operation
fdiv.h f18, f14, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f14, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f14, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f14, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f14, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f14, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3e00)
li x10, 0xe8f09e27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f4, 0(x2) # load 0x00003e00 from memory into f4
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f2, 0(x2) # load 0x00003e00 from memory into f2
fdiv.h f10, f4, f2, dyn # perform operation
fdiv.h f10, f4, f2, rdn # perform operation
fdiv.h f10, f4, f2, rmm # perform operation
fdiv.h f10, f4, f2, rne # perform operation
fdiv.h f10, f4, f2, rtz # perform operation
fdiv.h f10, f4, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f4, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f4, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f4, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f4, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f4, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xbe00)
li x19, 0xa6b75fa6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f27, 0(x2) # load 0x00003e00 from memory into f27
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
fdiv.h f19, f27, f1, dyn # perform operation
fdiv.h f19, f27, f1, rdn # perform operation
fdiv.h f19, f27, f1, rmm # perform operation
fdiv.h f19, f27, f1, rne # perform operation
fdiv.h f19, f27, f1, rtz # perform operation
fdiv.h f19, f27, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f27, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f27, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f27, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f27, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f27, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x4000)
li x27, 0xf675a01c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f21, 0(x2) # load 0x00003e00 from memory into f21
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f20, 0(x2) # load 0x00004000 from memory into f20
fdiv.h f27, f21, f20, dyn # perform operation
fdiv.h f27, f21, f20, rdn # perform operation
fdiv.h f27, f21, f20, rmm # perform operation
fdiv.h f27, f21, f20, rne # perform operation
fdiv.h f27, f21, f20, rtz # perform operation
fdiv.h f27, f21, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f21, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f21, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f21, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f21, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f21, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xc000)
li x5, 0xe00e96e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
fdiv.h f5, f17, f21, dyn # perform operation
fdiv.h f5, f17, f21, rdn # perform operation
fdiv.h f5, f17, f21, rmm # perform operation
fdiv.h f5, f17, f21, rne # perform operation
fdiv.h f5, f17, f21, rtz # perform operation
fdiv.h f5, f17, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f17, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f17, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f17, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f17, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f17, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x400)
li x26, 0x903daa39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f28, 0(x2) # load 0x00003e00 from memory into f28
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
fdiv.h f26, f28, f8, dyn # perform operation
fdiv.h f26, f28, f8, rdn # perform operation
fdiv.h f26, f28, f8, rmm # perform operation
fdiv.h f26, f28, f8, rne # perform operation
fdiv.h f26, f28, f8, rtz # perform operation
fdiv.h f26, f28, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f28, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f28, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f28, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f28, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f28, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8400)
li x4, 0xd9ddfba4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f31, 0(x2) # load 0x00003e00 from memory into f31
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f30, 0(x2) # load 0x00008400 from memory into f30
fdiv.h f4, f31, f30, dyn # perform operation
fdiv.h f4, f31, f30, rdn # perform operation
fdiv.h f4, f31, f30, rmm # perform operation
fdiv.h f4, f31, f30, rne # perform operation
fdiv.h f4, f31, f30, rtz # perform operation
fdiv.h f4, f31, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f31, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f31, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f31, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f31, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f31, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7bff)
li x4, 0xfe80f2d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f16, 0(x2) # load 0x00003e00 from memory into f16
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
fdiv.h f4, f16, f21, dyn # perform operation
fdiv.h f4, f16, f21, rdn # perform operation
fdiv.h f4, f16, f21, rmm # perform operation
fdiv.h f4, f16, f21, rne # perform operation
fdiv.h f4, f16, f21, rtz # perform operation
fdiv.h f4, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f16, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfbff)
li x23, 0xa074452c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f25, 0(x2) # load 0x00003e00 from memory into f25
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
fdiv.h f23, f25, f28, dyn # perform operation
fdiv.h f23, f25, f28, rdn # perform operation
fdiv.h f23, f25, f28, rmm # perform operation
fdiv.h f23, f25, f28, rne # perform operation
fdiv.h f23, f25, f28, rtz # perform operation
fdiv.h f23, f25, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f25, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f25, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f25, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f25, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f25, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3ff)
li x23, 0xf98d95d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f18, 0(x2) # load 0x00003e00 from memory into f18
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f30, 0(x2) # load 0x000003ff from memory into f30
fdiv.h f23, f18, f30, dyn # perform operation
fdiv.h f23, f18, f30, rdn # perform operation
fdiv.h f23, f18, f30, rmm # perform operation
fdiv.h f23, f18, f30, rne # perform operation
fdiv.h f23, f18, f30, rtz # perform operation
fdiv.h f23, f18, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f18, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f18, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f18, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f18, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f18, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x83ff)
li x5, 0x50dbd8c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f24, 0(x2) # load 0x00003e00 from memory into f24
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f4, 0(x2) # load 0x000083ff from memory into f4
fdiv.h f5, f24, f4, dyn # perform operation
fdiv.h f5, f24, f4, rdn # perform operation
fdiv.h f5, f24, f4, rmm # perform operation
fdiv.h f5, f24, f4, rne # perform operation
fdiv.h f5, f24, f4, rtz # perform operation
fdiv.h f5, f24, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f24, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f24, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f24, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f24, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f24, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x200)
li x20, 0xdbecdb15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
fdiv.h f20, f10, f13, dyn # perform operation
fdiv.h f20, f10, f13, rdn # perform operation
fdiv.h f20, f10, f13, rmm # perform operation
fdiv.h f20, f10, f13, rne # perform operation
fdiv.h f20, f10, f13, rtz # perform operation
fdiv.h f20, f10, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f10, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f10, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f10, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f10, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f10, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8200)
li x18, 0x5acc1af3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f14, 0(x2) # load 0x00003e00 from memory into f14
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f24, 0(x2) # load 0x00008200 from memory into f24
fdiv.h f18, f14, f24, dyn # perform operation
fdiv.h f18, f14, f24, rdn # perform operation
fdiv.h f18, f14, f24, rmm # perform operation
fdiv.h f18, f14, f24, rne # perform operation
fdiv.h f18, f14, f24, rtz # perform operation
fdiv.h f18, f14, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f14, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f14, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f14, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f14, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f14, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x1)
li x11, 0xf1f61faa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f5, 0(x2) # load 0x00003e00 from memory into f5
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f12, 0(x2) # load 0x00000001 from memory into f12
fdiv.h f11, f5, f12, dyn # perform operation
fdiv.h f11, f5, f12, rdn # perform operation
fdiv.h f11, f5, f12, rmm # perform operation
fdiv.h f11, f5, f12, rne # perform operation
fdiv.h f11, f5, f12, rtz # perform operation
fdiv.h f11, f5, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f5, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f5, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f5, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f5, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f5, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8001)
li x16, 0xa03b6ae5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f25, 0(x2) # load 0x00008001 from memory into f25
fdiv.h f16, f17, f25, dyn # perform operation
fdiv.h f16, f17, f25, rdn # perform operation
fdiv.h f16, f17, f25, rmm # perform operation
fdiv.h f16, f17, f25, rne # perform operation
fdiv.h f16, f17, f25, rtz # perform operation
fdiv.h f16, f17, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f17, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f17, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f17, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f17, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f17, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7c00)
li x31, 0x0f314acb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f12, 0(x2) # load 0x00007c00 from memory into f12
fdiv.h f31, f29, f12, dyn # perform operation
fdiv.h f31, f29, f12, rdn # perform operation
fdiv.h f31, f29, f12, rmm # perform operation
fdiv.h f31, f29, f12, rne # perform operation
fdiv.h f31, f29, f12, rtz # perform operation
fdiv.h f31, f29, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f29, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f29, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f29, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f29, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f29, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfc00)
li x5, 0x0c0ed338 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f8, 0(x2) # load 0x00003e00 from memory into f8
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f6, 0(x2) # load 0x0000fc00 from memory into f6
fdiv.h f5, f8, f6, dyn # perform operation
fdiv.h f5, f8, f6, rdn # perform operation
fdiv.h f5, f8, f6, rmm # perform operation
fdiv.h f5, f8, f6, rne # perform operation
fdiv.h f5, f8, f6, rtz # perform operation
fdiv.h f5, f8, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f8, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f8, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f8, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f8, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f8, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7e00)
li x16, 0x01287d1d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f8, 0(x2) # load 0x00003e00 from memory into f8
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
fdiv.h f16, f8, f30, dyn # perform operation
fdiv.h f16, f8, f30, rdn # perform operation
fdiv.h f16, f8, f30, rmm # perform operation
fdiv.h f16, f8, f30, rne # perform operation
fdiv.h f16, f8, f30, rtz # perform operation
fdiv.h f16, f8, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f8, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f8, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f8, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f8, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f8, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7fff)
li x30, 0xefec1a1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f18, 0(x2) # load 0x00003e00 from memory into f18
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f4, 0(x2) # load 0x00007fff from memory into f4
fdiv.h f30, f18, f4, dyn # perform operation
fdiv.h f30, f18, f4, rdn # perform operation
fdiv.h f30, f18, f4, rmm # perform operation
fdiv.h f30, f18, f4, rne # perform operation
fdiv.h f30, f18, f4, rtz # perform operation
fdiv.h f30, f18, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f18, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f18, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f18, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f18, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f18, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7c01)
li x20, 0x89910cfa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f24, 0(x2) # load 0x00003e00 from memory into f24
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f11, 0(x2) # load 0x00007c01 from memory into f11
fdiv.h f20, f24, f11, dyn # perform operation
fdiv.h f20, f24, f11, rdn # perform operation
fdiv.h f20, f24, f11, rmm # perform operation
fdiv.h f20, f24, f11, rne # perform operation
fdiv.h f20, f24, f11, rtz # perform operation
fdiv.h f20, f24, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f24, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f24, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f24, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f24, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f24, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7dff)
li x20, 0xc177614a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f22, 0(x2) # load 0x00003e00 from memory into f22
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f12, 0(x2) # load 0x00007dff from memory into f12
fdiv.h f20, f22, f12, dyn # perform operation
fdiv.h f20, f22, f12, rdn # perform operation
fdiv.h f20, f22, f12, rmm # perform operation
fdiv.h f20, f22, f12, rne # perform operation
fdiv.h f20, f22, f12, rtz # perform operation
fdiv.h f20, f22, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f22, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f22, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f22, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f22, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f22, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x58b4)
li x21, 0x1524dfe4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f22, 0(x2) # load 0x00003e00 from memory into f22
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
fdiv.h f21, f22, f11, dyn # perform operation
fdiv.h f21, f22, f11, rdn # perform operation
fdiv.h f21, f22, f11, rmm # perform operation
fdiv.h f21, f22, f11, rne # perform operation
fdiv.h f21, f22, f11, rtz # perform operation
fdiv.h f21, f22, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f22, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f22, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f22, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f22, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f22, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xc93a)
li x12, 0x49a7d5fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f31, 0(x2) # load 0x00003e00 from memory into f31
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f11, 0(x2) # load 0x0000c93a from memory into f11
fdiv.h f12, f31, f11, dyn # perform operation
fdiv.h f12, f31, f11, rdn # perform operation
fdiv.h f12, f31, f11, rmm # perform operation
fdiv.h f12, f31, f11, rne # perform operation
fdiv.h f12, f31, f11, rtz # perform operation
fdiv.h f12, f31, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f31, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f31, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f31, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f31, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f31, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x0)
li x29, 0xc6e9e8dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
fdiv.h f29, f28, f6, dyn # perform operation
fdiv.h f29, f28, f6, rdn # perform operation
fdiv.h f29, f28, f6, rmm # perform operation
fdiv.h f29, f28, f6, rne # perform operation
fdiv.h f29, f28, f6, rtz # perform operation
fdiv.h f29, f28, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f28, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f28, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f28, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f28, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f28, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8000)
li x28, 0x127d5e83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f12, 0(x2) # load 0x0000be00 from memory into f12
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
fdiv.h f28, f12, f26, dyn # perform operation
fdiv.h f28, f12, f26, rdn # perform operation
fdiv.h f28, f12, f26, rmm # perform operation
fdiv.h f28, f12, f26, rne # perform operation
fdiv.h f28, f12, f26, rtz # perform operation
fdiv.h f28, f12, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f12, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f12, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f12, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f12, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f12, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3c00)
li x20, 0x798e5c6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f21, 0(x2) # load 0x0000be00 from memory into f21
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
fdiv.h f20, f21, f5, dyn # perform operation
fdiv.h f20, f21, f5, rdn # perform operation
fdiv.h f20, f21, f5, rmm # perform operation
fdiv.h f20, f21, f5, rne # perform operation
fdiv.h f20, f21, f5, rtz # perform operation
fdiv.h f20, f21, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f21, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f21, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f21, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f21, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f21, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xbc00)
li x22, 0x1770954d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f12, 0(x2) # load 0x0000bc00 from memory into f12
fdiv.h f22, f20, f12, dyn # perform operation
fdiv.h f22, f20, f12, rdn # perform operation
fdiv.h f22, f20, f12, rmm # perform operation
fdiv.h f22, f20, f12, rne # perform operation
fdiv.h f22, f20, f12, rtz # perform operation
fdiv.h f22, f20, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f20, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f20, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f20, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f20, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f20, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3e00)
li x29, 0x204c265f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f5, 0(x2) # load 0x00003e00 from memory into f5
fdiv.h f29, f31, f5, dyn # perform operation
fdiv.h f29, f31, f5, rdn # perform operation
fdiv.h f29, f31, f5, rmm # perform operation
fdiv.h f29, f31, f5, rne # perform operation
fdiv.h f29, f31, f5, rtz # perform operation
fdiv.h f29, f31, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f31, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f31, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f31, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f31, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f31, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xbe00)
li x26, 0xfa5d472b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f4, 0(x2) # load 0x0000be00 from memory into f4
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f29, 0(x2) # load 0x0000be00 from memory into f29
fdiv.h f26, f4, f29, dyn # perform operation
fdiv.h f26, f4, f29, rdn # perform operation
fdiv.h f26, f4, f29, rmm # perform operation
fdiv.h f26, f4, f29, rne # perform operation
fdiv.h f26, f4, f29, rtz # perform operation
fdiv.h f26, f4, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f4, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f4, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f4, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f4, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f4, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x4000)
li x1, 0xe7c222ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f12, 0(x2) # load 0x00004000 from memory into f12
fdiv.h f1, f15, f12, dyn # perform operation
fdiv.h f1, f15, f12, rdn # perform operation
fdiv.h f1, f15, f12, rmm # perform operation
fdiv.h f1, f15, f12, rne # perform operation
fdiv.h f1, f15, f12, rtz # perform operation
fdiv.h f1, f15, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f15, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f15, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f15, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f15, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f15, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xc000)
li x30, 0x35f76f2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f21, 0(x2) # load 0x0000be00 from memory into f21
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
fdiv.h f30, f21, f24, dyn # perform operation
fdiv.h f30, f21, f24, rdn # perform operation
fdiv.h f30, f21, f24, rmm # perform operation
fdiv.h f30, f21, f24, rne # perform operation
fdiv.h f30, f21, f24, rtz # perform operation
fdiv.h f30, f21, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f21, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f21, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f21, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f21, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f21, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x400)
li x11, 0x975f5110 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
fdiv.h f11, f18, f8, dyn # perform operation
fdiv.h f11, f18, f8, rdn # perform operation
fdiv.h f11, f18, f8, rmm # perform operation
fdiv.h f11, f18, f8, rne # perform operation
fdiv.h f11, f18, f8, rtz # perform operation
fdiv.h f11, f18, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f18, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f18, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f18, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f18, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f18, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8400)
li x3, 0xaa0a6fbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f29, 0(x2) # load 0x0000be00 from memory into f29
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f15, 0(x2) # load 0x00008400 from memory into f15
fdiv.h f3, f29, f15, dyn # perform operation
fdiv.h f3, f29, f15, rdn # perform operation
fdiv.h f3, f29, f15, rmm # perform operation
fdiv.h f3, f29, f15, rne # perform operation
fdiv.h f3, f29, f15, rtz # perform operation
fdiv.h f3, f29, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f29, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f29, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f29, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f29, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f29, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7bff)
li x30, 0x97947aff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f29, 0(x2) # load 0x00007bff from memory into f29
fdiv.h f30, f1, f29, dyn # perform operation
fdiv.h f30, f1, f29, rdn # perform operation
fdiv.h f30, f1, f29, rmm # perform operation
fdiv.h f30, f1, f29, rne # perform operation
fdiv.h f30, f1, f29, rtz # perform operation
fdiv.h f30, f1, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f1, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f1, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f1, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f1, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f1, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfbff)
li x19, 0x461a62ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f12, 0(x2) # load 0x0000be00 from memory into f12
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
fdiv.h f19, f12, f21, dyn # perform operation
fdiv.h f19, f12, f21, rdn # perform operation
fdiv.h f19, f12, f21, rmm # perform operation
fdiv.h f19, f12, f21, rne # perform operation
fdiv.h f19, f12, f21, rtz # perform operation
fdiv.h f19, f12, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f12, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f12, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f12, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f12, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f12, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3ff)
li x9, 0x1c460f66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f4, 0(x2) # load 0x0000be00 from memory into f4
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f29, 0(x2) # load 0x000003ff from memory into f29
fdiv.h f9, f4, f29, dyn # perform operation
fdiv.h f9, f4, f29, rdn # perform operation
fdiv.h f9, f4, f29, rmm # perform operation
fdiv.h f9, f4, f29, rne # perform operation
fdiv.h f9, f4, f29, rtz # perform operation
fdiv.h f9, f4, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f4, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f4, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f4, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f4, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f4, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x83ff)
li x26, 0x5c900b8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f3, 0(x2) # load 0x0000be00 from memory into f3
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
fdiv.h f26, f3, f23, dyn # perform operation
fdiv.h f26, f3, f23, rdn # perform operation
fdiv.h f26, f3, f23, rmm # perform operation
fdiv.h f26, f3, f23, rne # perform operation
fdiv.h f26, f3, f23, rtz # perform operation
fdiv.h f26, f3, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f3, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f3, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f3, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f3, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f3, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x200)
li x9, 0xc46e7aa6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f12, 0(x2) # load 0x00000200 from memory into f12
fdiv.h f9, f5, f12, dyn # perform operation
fdiv.h f9, f5, f12, rdn # perform operation
fdiv.h f9, f5, f12, rmm # perform operation
fdiv.h f9, f5, f12, rne # perform operation
fdiv.h f9, f5, f12, rtz # perform operation
fdiv.h f9, f5, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f5, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f5, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f5, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f5, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f5, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8200)
li x16, 0x9a657133 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f25, 0(x2) # load 0x0000be00 from memory into f25
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f18, 0(x2) # load 0x00008200 from memory into f18
fdiv.h f16, f25, f18, dyn # perform operation
fdiv.h f16, f25, f18, rdn # perform operation
fdiv.h f16, f25, f18, rmm # perform operation
fdiv.h f16, f25, f18, rne # perform operation
fdiv.h f16, f25, f18, rtz # perform operation
fdiv.h f16, f25, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f25, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f25, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f25, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f25, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f25, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x1)
li x26, 0x1aaf8215 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f6, 0(x2) # load 0x00000001 from memory into f6
fdiv.h f26, f17, f6, dyn # perform operation
fdiv.h f26, f17, f6, rdn # perform operation
fdiv.h f26, f17, f6, rmm # perform operation
fdiv.h f26, f17, f6, rne # perform operation
fdiv.h f26, f17, f6, rtz # perform operation
fdiv.h f26, f17, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f17, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f17, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f17, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f17, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f17, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8001)
li x9, 0x96322093 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f19, 0(x2) # load 0x0000be00 from memory into f19
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f28, 0(x2) # load 0x00008001 from memory into f28
fdiv.h f9, f19, f28, dyn # perform operation
fdiv.h f9, f19, f28, rdn # perform operation
fdiv.h f9, f19, f28, rmm # perform operation
fdiv.h f9, f19, f28, rne # perform operation
fdiv.h f9, f19, f28, rtz # perform operation
fdiv.h f9, f19, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f19, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f19, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f19, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f19, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f19, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7c00)
li x27, 0x9699a0e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f24, 0(x2) # load 0x00007c00 from memory into f24
fdiv.h f27, f17, f24, dyn # perform operation
fdiv.h f27, f17, f24, rdn # perform operation
fdiv.h f27, f17, f24, rmm # perform operation
fdiv.h f27, f17, f24, rne # perform operation
fdiv.h f27, f17, f24, rtz # perform operation
fdiv.h f27, f17, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f17, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f17, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f17, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f17, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f17, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfc00)
li x3, 0x1f63126c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f6, 0(x2) # load 0x0000be00 from memory into f6
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f9, 0(x2) # load 0x0000fc00 from memory into f9
fdiv.h f3, f6, f9, dyn # perform operation
fdiv.h f3, f6, f9, rdn # perform operation
fdiv.h f3, f6, f9, rmm # perform operation
fdiv.h f3, f6, f9, rne # perform operation
fdiv.h f3, f6, f9, rtz # perform operation
fdiv.h f3, f6, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f6, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f6, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f6, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f6, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f6, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7e00)
li x13, 0x3825df71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f4, 0(x2) # load 0x0000be00 from memory into f4
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f5, 0(x2) # load 0x00007e00 from memory into f5
fdiv.h f13, f4, f5, dyn # perform operation
fdiv.h f13, f4, f5, rdn # perform operation
fdiv.h f13, f4, f5, rmm # perform operation
fdiv.h f13, f4, f5, rne # perform operation
fdiv.h f13, f4, f5, rtz # perform operation
fdiv.h f13, f4, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f4, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f4, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f4, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f4, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f4, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7fff)
li x7, 0x7d4e22fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f9, 0(x2) # load 0x0000be00 from memory into f9
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f5, 0(x2) # load 0x00007fff from memory into f5
fdiv.h f7, f9, f5, dyn # perform operation
fdiv.h f7, f9, f5, rdn # perform operation
fdiv.h f7, f9, f5, rmm # perform operation
fdiv.h f7, f9, f5, rne # perform operation
fdiv.h f7, f9, f5, rtz # perform operation
fdiv.h f7, f9, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f9, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f9, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f9, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f9, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f9, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7c01)
li x7, 0xccb3fa4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f14, 0(x2) # load 0x0000be00 from memory into f14
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
fdiv.h f7, f14, f26, dyn # perform operation
fdiv.h f7, f14, f26, rdn # perform operation
fdiv.h f7, f14, f26, rmm # perform operation
fdiv.h f7, f14, f26, rne # perform operation
fdiv.h f7, f14, f26, rtz # perform operation
fdiv.h f7, f14, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f14, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f14, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f14, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f14, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f14, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7dff)
li x24, 0x66431c72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f17, 0(x2) # load 0x00007dff from memory into f17
fdiv.h f24, f23, f17, dyn # perform operation
fdiv.h f24, f23, f17, rdn # perform operation
fdiv.h f24, f23, f17, rmm # perform operation
fdiv.h f24, f23, f17, rne # perform operation
fdiv.h f24, f23, f17, rtz # perform operation
fdiv.h f24, f23, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f23, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f23, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f23, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f23, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f23, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x58b4)
li x12, 0x810b0b9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f16, 0(x2) # load 0x0000be00 from memory into f16
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
fdiv.h f12, f16, f3, dyn # perform operation
fdiv.h f12, f16, f3, rdn # perform operation
fdiv.h f12, f16, f3, rmm # perform operation
fdiv.h f12, f16, f3, rne # perform operation
fdiv.h f12, f16, f3, rtz # perform operation
fdiv.h f12, f16, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f16, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f16, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f16, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f16, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f16, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xc93a)
li x5, 0xd5a52990 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f13, 0(x2) # load 0x0000c93a from memory into f13
fdiv.h f5, f20, f13, dyn # perform operation
fdiv.h f5, f20, f13, rdn # perform operation
fdiv.h f5, f20, f13, rmm # perform operation
fdiv.h f5, f20, f13, rne # perform operation
fdiv.h f5, f20, f13, rtz # perform operation
fdiv.h f5, f20, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f20, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f20, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f20, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f20, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f20, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x0)
li x8, 0xc264803b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f31, 0(x2) # load 0x00004000 from memory into f31
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f4, 0(x2) # load 0x00000000 from memory into f4
fdiv.h f8, f31, f4, dyn # perform operation
fdiv.h f8, f31, f4, rdn # perform operation
fdiv.h f8, f31, f4, rmm # perform operation
fdiv.h f8, f31, f4, rne # perform operation
fdiv.h f8, f31, f4, rtz # perform operation
fdiv.h f8, f31, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f31, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f31, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f31, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f31, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f31, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8000)
li x15, 0x74494371 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
fdiv.h f15, f28, f26, dyn # perform operation
fdiv.h f15, f28, f26, rdn # perform operation
fdiv.h f15, f28, f26, rmm # perform operation
fdiv.h f15, f28, f26, rne # perform operation
fdiv.h f15, f28, f26, rtz # perform operation
fdiv.h f15, f28, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f28, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f28, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f28, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f28, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f28, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3c00)
li x22, 0x3fccabe4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f15, 0(x2) # load 0x00004000 from memory into f15
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
fdiv.h f22, f15, f24, dyn # perform operation
fdiv.h f22, f15, f24, rdn # perform operation
fdiv.h f22, f15, f24, rmm # perform operation
fdiv.h f22, f15, f24, rne # perform operation
fdiv.h f22, f15, f24, rtz # perform operation
fdiv.h f22, f15, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f15, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f15, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f15, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f15, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f15, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xbc00)
li x16, 0xc6626b33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f1, 0(x2) # load 0x0000bc00 from memory into f1
fdiv.h f16, f27, f1, dyn # perform operation
fdiv.h f16, f27, f1, rdn # perform operation
fdiv.h f16, f27, f1, rmm # perform operation
fdiv.h f16, f27, f1, rne # perform operation
fdiv.h f16, f27, f1, rtz # perform operation
fdiv.h f16, f27, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f27, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f27, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f27, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f27, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f27, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3e00)
li x13, 0x8156b954 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f24, 0(x2) # load 0x00003e00 from memory into f24
fdiv.h f13, f29, f24, dyn # perform operation
fdiv.h f13, f29, f24, rdn # perform operation
fdiv.h f13, f29, f24, rmm # perform operation
fdiv.h f13, f29, f24, rne # perform operation
fdiv.h f13, f29, f24, rtz # perform operation
fdiv.h f13, f29, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f29, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f29, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f29, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f29, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f29, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xbe00)
li x7, 0x20b0fe0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
fdiv.h f7, f6, f31, dyn # perform operation
fdiv.h f7, f6, f31, rdn # perform operation
fdiv.h f7, f6, f31, rmm # perform operation
fdiv.h f7, f6, f31, rne # perform operation
fdiv.h f7, f6, f31, rtz # perform operation
fdiv.h f7, f6, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f6, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f6, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f6, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f6, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f6, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x4000)
li x18, 0x19ebf783 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f3, 0(x2) # load 0x00004000 from memory into f3
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
fdiv.h f18, f3, f23, dyn # perform operation
fdiv.h f18, f3, f23, rdn # perform operation
fdiv.h f18, f3, f23, rmm # perform operation
fdiv.h f18, f3, f23, rne # perform operation
fdiv.h f18, f3, f23, rtz # perform operation
fdiv.h f18, f3, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f3, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f3, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f3, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f3, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f3, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xc000)
li x9, 0x026da581 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f31, 0(x2) # load 0x00004000 from memory into f31
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f8, 0(x2) # load 0x0000c000 from memory into f8
fdiv.h f9, f31, f8, dyn # perform operation
fdiv.h f9, f31, f8, rdn # perform operation
fdiv.h f9, f31, f8, rmm # perform operation
fdiv.h f9, f31, f8, rne # perform operation
fdiv.h f9, f31, f8, rtz # perform operation
fdiv.h f9, f31, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f31, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f31, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f31, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f31, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f31, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x400)
li x24, 0xcc3abaee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f3, 0(x2) # load 0x00000400 from memory into f3
fdiv.h f24, f6, f3, dyn # perform operation
fdiv.h f24, f6, f3, rdn # perform operation
fdiv.h f24, f6, f3, rmm # perform operation
fdiv.h f24, f6, f3, rne # perform operation
fdiv.h f24, f6, f3, rtz # perform operation
fdiv.h f24, f6, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f6, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f6, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f6, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f6, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f6, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8400)
li x30, 0x87b664ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f5, 0(x2) # load 0x00004000 from memory into f5
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f22, 0(x2) # load 0x00008400 from memory into f22
fdiv.h f30, f5, f22, dyn # perform operation
fdiv.h f30, f5, f22, rdn # perform operation
fdiv.h f30, f5, f22, rmm # perform operation
fdiv.h f30, f5, f22, rne # perform operation
fdiv.h f30, f5, f22, rtz # perform operation
fdiv.h f30, f5, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f5, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f5, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f5, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f5, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f5, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7bff)
li x17, 0xcf042e45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f26, 0(x2) # load 0x00004000 from memory into f26
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f13, 0(x2) # load 0x00007bff from memory into f13
fdiv.h f17, f26, f13, dyn # perform operation
fdiv.h f17, f26, f13, rdn # perform operation
fdiv.h f17, f26, f13, rmm # perform operation
fdiv.h f17, f26, f13, rne # perform operation
fdiv.h f17, f26, f13, rtz # perform operation
fdiv.h f17, f26, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f26, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f26, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f26, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f26, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f26, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfbff)
li x9, 0xc8bf6cbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f31, 0(x2) # load 0x00004000 from memory into f31
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f26, 0(x2) # load 0x0000fbff from memory into f26
fdiv.h f9, f31, f26, dyn # perform operation
fdiv.h f9, f31, f26, rdn # perform operation
fdiv.h f9, f31, f26, rmm # perform operation
fdiv.h f9, f31, f26, rne # perform operation
fdiv.h f9, f31, f26, rtz # perform operation
fdiv.h f9, f31, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f31, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f31, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f31, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f31, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f31, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3ff)
li x20, 0x257c03e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f8, 0(x2) # load 0x00004000 from memory into f8
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f3, 0(x2) # load 0x000003ff from memory into f3
fdiv.h f20, f8, f3, dyn # perform operation
fdiv.h f20, f8, f3, rdn # perform operation
fdiv.h f20, f8, f3, rmm # perform operation
fdiv.h f20, f8, f3, rne # perform operation
fdiv.h f20, f8, f3, rtz # perform operation
fdiv.h f20, f8, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f8, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f8, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f8, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f8, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f8, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x83ff)
li x31, 0x11b5c07a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
fdiv.h f31, f6, f16, dyn # perform operation
fdiv.h f31, f6, f16, rdn # perform operation
fdiv.h f31, f6, f16, rmm # perform operation
fdiv.h f31, f6, f16, rne # perform operation
fdiv.h f31, f6, f16, rtz # perform operation
fdiv.h f31, f6, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f6, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f6, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f6, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f6, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f6, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x200)
li x1, 0x8b511303 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f30, 0(x2) # load 0x00004000 from memory into f30
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f14, 0(x2) # load 0x00000200 from memory into f14
fdiv.h f1, f30, f14, dyn # perform operation
fdiv.h f1, f30, f14, rdn # perform operation
fdiv.h f1, f30, f14, rmm # perform operation
fdiv.h f1, f30, f14, rne # perform operation
fdiv.h f1, f30, f14, rtz # perform operation
fdiv.h f1, f30, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f30, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f30, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f30, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f30, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f30, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8200)
li x17, 0x539fb0e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f31, 0(x2) # load 0x00004000 from memory into f31
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f27, 0(x2) # load 0x00008200 from memory into f27
fdiv.h f17, f31, f27, dyn # perform operation
fdiv.h f17, f31, f27, rdn # perform operation
fdiv.h f17, f31, f27, rmm # perform operation
fdiv.h f17, f31, f27, rne # perform operation
fdiv.h f17, f31, f27, rtz # perform operation
fdiv.h f17, f31, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f31, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f31, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f31, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f31, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f31, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x1)
li x7, 0xce0cecc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f4, 0(x2) # load 0x00004000 from memory into f4
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f3, 0(x2) # load 0x00000001 from memory into f3
fdiv.h f7, f4, f3, dyn # perform operation
fdiv.h f7, f4, f3, rdn # perform operation
fdiv.h f7, f4, f3, rmm # perform operation
fdiv.h f7, f4, f3, rne # perform operation
fdiv.h f7, f4, f3, rtz # perform operation
fdiv.h f7, f4, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f4, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f4, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f4, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f4, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f4, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8001)
li x25, 0x63d79e51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f1, 0(x2) # load 0x00008001 from memory into f1
fdiv.h f25, f22, f1, dyn # perform operation
fdiv.h f25, f22, f1, rdn # perform operation
fdiv.h f25, f22, f1, rmm # perform operation
fdiv.h f25, f22, f1, rne # perform operation
fdiv.h f25, f22, f1, rtz # perform operation
fdiv.h f25, f22, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f22, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f22, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f22, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f22, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f22, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7c00)
li x27, 0xf24c1c5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f12, 0(x2) # load 0x00007c00 from memory into f12
fdiv.h f27, f25, f12, dyn # perform operation
fdiv.h f27, f25, f12, rdn # perform operation
fdiv.h f27, f25, f12, rmm # perform operation
fdiv.h f27, f25, f12, rne # perform operation
fdiv.h f27, f25, f12, rtz # perform operation
fdiv.h f27, f25, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f25, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f25, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f25, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f25, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f25, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfc00)
li x10, 0x6f0e5fd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f4, 0(x2) # load 0x0000fc00 from memory into f4
fdiv.h f10, f22, f4, dyn # perform operation
fdiv.h f10, f22, f4, rdn # perform operation
fdiv.h f10, f22, f4, rmm # perform operation
fdiv.h f10, f22, f4, rne # perform operation
fdiv.h f10, f22, f4, rtz # perform operation
fdiv.h f10, f22, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f22, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f22, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f22, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f22, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f22, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7e00)
li x15, 0xb2877365 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f4, 0(x2) # load 0x00007e00 from memory into f4
fdiv.h f15, f25, f4, dyn # perform operation
fdiv.h f15, f25, f4, rdn # perform operation
fdiv.h f15, f25, f4, rmm # perform operation
fdiv.h f15, f25, f4, rne # perform operation
fdiv.h f15, f25, f4, rtz # perform operation
fdiv.h f15, f25, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f25, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f25, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f25, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f25, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f25, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7fff)
li x14, 0xec31a513 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f19, 0(x2) # load 0x00004000 from memory into f19
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f11, 0(x2) # load 0x00007fff from memory into f11
fdiv.h f14, f19, f11, dyn # perform operation
fdiv.h f14, f19, f11, rdn # perform operation
fdiv.h f14, f19, f11, rmm # perform operation
fdiv.h f14, f19, f11, rne # perform operation
fdiv.h f14, f19, f11, rtz # perform operation
fdiv.h f14, f19, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f19, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f19, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f19, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f19, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f19, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7c01)
li x25, 0xdb792db3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f1, 0(x2) # load 0x00004000 from memory into f1
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f11, 0(x2) # load 0x00007c01 from memory into f11
fdiv.h f25, f1, f11, dyn # perform operation
fdiv.h f25, f1, f11, rdn # perform operation
fdiv.h f25, f1, f11, rmm # perform operation
fdiv.h f25, f1, f11, rne # perform operation
fdiv.h f25, f1, f11, rtz # perform operation
fdiv.h f25, f1, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f1, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f1, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f1, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f1, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f1, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7dff)
li x31, 0x67b1f9c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f4, 0(x2) # load 0x00004000 from memory into f4
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f14, 0(x2) # load 0x00007dff from memory into f14
fdiv.h f31, f4, f14, dyn # perform operation
fdiv.h f31, f4, f14, rdn # perform operation
fdiv.h f31, f4, f14, rmm # perform operation
fdiv.h f31, f4, f14, rne # perform operation
fdiv.h f31, f4, f14, rtz # perform operation
fdiv.h f31, f4, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f4, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f4, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f4, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f4, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f4, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x58b4)
li x20, 0x4309b043 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f24, 0(x2) # load 0x00004000 from memory into f24
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f6, 0(x2) # load 0x000058b4 from memory into f6
fdiv.h f20, f24, f6, dyn # perform operation
fdiv.h f20, f24, f6, rdn # perform operation
fdiv.h f20, f24, f6, rmm # perform operation
fdiv.h f20, f24, f6, rne # perform operation
fdiv.h f20, f24, f6, rtz # perform operation
fdiv.h f20, f24, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f24, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f24, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f24, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f24, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f24, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xc93a)
li x12, 0xe292fab2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f7, 0(x2) # load 0x00004000 from memory into f7
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f3, 0(x2) # load 0x0000c93a from memory into f3
fdiv.h f12, f7, f3, dyn # perform operation
fdiv.h f12, f7, f3, rdn # perform operation
fdiv.h f12, f7, f3, rmm # perform operation
fdiv.h f12, f7, f3, rne # perform operation
fdiv.h f12, f7, f3, rtz # perform operation
fdiv.h f12, f7, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f7, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f7, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f7, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f7, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f7, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x0)
li x3, 0x6efdfc39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f20, 0(x2) # load 0x0000c000 from memory into f20
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
fdiv.h f3, f20, f31, dyn # perform operation
fdiv.h f3, f20, f31, rdn # perform operation
fdiv.h f3, f20, f31, rmm # perform operation
fdiv.h f3, f20, f31, rne # perform operation
fdiv.h f3, f20, f31, rtz # perform operation
fdiv.h f3, f20, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f20, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f20, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f20, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f20, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f20, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8000)
li x31, 0x6dc57ccf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f28, 0(x2) # load 0x0000c000 from memory into f28
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f29, 0(x2) # load 0x00008000 from memory into f29
fdiv.h f31, f28, f29, dyn # perform operation
fdiv.h f31, f28, f29, rdn # perform operation
fdiv.h f31, f28, f29, rmm # perform operation
fdiv.h f31, f28, f29, rne # perform operation
fdiv.h f31, f28, f29, rtz # perform operation
fdiv.h f31, f28, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f28, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f28, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f28, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f28, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f28, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3c00)
li x21, 0x0148dfe7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
fdiv.h f21, f18, f24, dyn # perform operation
fdiv.h f21, f18, f24, rdn # perform operation
fdiv.h f21, f18, f24, rmm # perform operation
fdiv.h f21, f18, f24, rne # perform operation
fdiv.h f21, f18, f24, rtz # perform operation
fdiv.h f21, f18, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f18, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f18, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f18, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f18, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f18, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xbc00)
li x28, 0xfb090b8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f11, 0(x2) # load 0x0000bc00 from memory into f11
fdiv.h f28, f21, f11, dyn # perform operation
fdiv.h f28, f21, f11, rdn # perform operation
fdiv.h f28, f21, f11, rmm # perform operation
fdiv.h f28, f21, f11, rne # perform operation
fdiv.h f28, f21, f11, rtz # perform operation
fdiv.h f28, f21, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f21, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f21, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f21, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f21, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f21, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3e00)
li x23, 0x3f4831f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f28, 0(x2) # load 0x00003e00 from memory into f28
fdiv.h f23, f26, f28, dyn # perform operation
fdiv.h f23, f26, f28, rdn # perform operation
fdiv.h f23, f26, f28, rmm # perform operation
fdiv.h f23, f26, f28, rne # perform operation
fdiv.h f23, f26, f28, rtz # perform operation
fdiv.h f23, f26, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f26, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f26, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f26, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f26, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f26, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xbe00)
li x13, 0x521dc635 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f10, 0(x2) # load 0x0000c000 from memory into f10
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f9, 0(x2) # load 0x0000be00 from memory into f9
fdiv.h f13, f10, f9, dyn # perform operation
fdiv.h f13, f10, f9, rdn # perform operation
fdiv.h f13, f10, f9, rmm # perform operation
fdiv.h f13, f10, f9, rne # perform operation
fdiv.h f13, f10, f9, rtz # perform operation
fdiv.h f13, f10, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f10, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f10, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f10, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f10, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f10, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x4000)
li x3, 0xab84e4b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
fdiv.h f3, f9, f27, dyn # perform operation
fdiv.h f3, f9, f27, rdn # perform operation
fdiv.h f3, f9, f27, rmm # perform operation
fdiv.h f3, f9, f27, rne # perform operation
fdiv.h f3, f9, f27, rtz # perform operation
fdiv.h f3, f9, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f9, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f9, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f9, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f9, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f9, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xc000)
li x6, 0xa6a62fd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f22, 0(x2) # load 0x0000c000 from memory into f22
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
fdiv.h f6, f22, f3, dyn # perform operation
fdiv.h f6, f22, f3, rdn # perform operation
fdiv.h f6, f22, f3, rmm # perform operation
fdiv.h f6, f22, f3, rne # perform operation
fdiv.h f6, f22, f3, rtz # perform operation
fdiv.h f6, f22, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f22, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f22, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f22, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f22, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f22, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x400)
li x20, 0x034ae06a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f11, 0(x2) # load 0x0000c000 from memory into f11
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
fdiv.h f20, f11, f7, dyn # perform operation
fdiv.h f20, f11, f7, rdn # perform operation
fdiv.h f20, f11, f7, rmm # perform operation
fdiv.h f20, f11, f7, rne # perform operation
fdiv.h f20, f11, f7, rtz # perform operation
fdiv.h f20, f11, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f11, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f11, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f11, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f11, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f11, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8400)
li x23, 0xb08ad35b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f7, 0(x2) # load 0x0000c000 from memory into f7
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f12, 0(x2) # load 0x00008400 from memory into f12
fdiv.h f23, f7, f12, dyn # perform operation
fdiv.h f23, f7, f12, rdn # perform operation
fdiv.h f23, f7, f12, rmm # perform operation
fdiv.h f23, f7, f12, rne # perform operation
fdiv.h f23, f7, f12, rtz # perform operation
fdiv.h f23, f7, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f7, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f7, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f7, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f7, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f7, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7bff)
li x14, 0xd61a9029 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f8, 0(x2) # load 0x0000c000 from memory into f8
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f26, 0(x2) # load 0x00007bff from memory into f26
fdiv.h f14, f8, f26, dyn # perform operation
fdiv.h f14, f8, f26, rdn # perform operation
fdiv.h f14, f8, f26, rmm # perform operation
fdiv.h f14, f8, f26, rne # perform operation
fdiv.h f14, f8, f26, rtz # perform operation
fdiv.h f14, f8, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f8, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f8, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f8, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f8, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f8, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfbff)
li x17, 0x64eea527 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
fdiv.h f17, f9, f11, dyn # perform operation
fdiv.h f17, f9, f11, rdn # perform operation
fdiv.h f17, f9, f11, rmm # perform operation
fdiv.h f17, f9, f11, rne # perform operation
fdiv.h f17, f9, f11, rtz # perform operation
fdiv.h f17, f9, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f9, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f9, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f9, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f9, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f9, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3ff)
li x11, 0xa2731829 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f30, 0(x2) # load 0x0000c000 from memory into f30
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
fdiv.h f11, f30, f2, dyn # perform operation
fdiv.h f11, f30, f2, rdn # perform operation
fdiv.h f11, f30, f2, rmm # perform operation
fdiv.h f11, f30, f2, rne # perform operation
fdiv.h f11, f30, f2, rtz # perform operation
fdiv.h f11, f30, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f30, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f30, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f30, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f30, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f30, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x83ff)
li x15, 0xe690d03e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f10, 0(x2) # load 0x0000c000 from memory into f10
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f17, 0(x2) # load 0x000083ff from memory into f17
fdiv.h f15, f10, f17, dyn # perform operation
fdiv.h f15, f10, f17, rdn # perform operation
fdiv.h f15, f10, f17, rmm # perform operation
fdiv.h f15, f10, f17, rne # perform operation
fdiv.h f15, f10, f17, rtz # perform operation
fdiv.h f15, f10, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f10, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f10, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f10, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f10, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f10, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x200)
li x22, 0xf7fcba5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f30, 0(x2) # load 0x0000c000 from memory into f30
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
fdiv.h f22, f30, f5, dyn # perform operation
fdiv.h f22, f30, f5, rdn # perform operation
fdiv.h f22, f30, f5, rmm # perform operation
fdiv.h f22, f30, f5, rne # perform operation
fdiv.h f22, f30, f5, rtz # perform operation
fdiv.h f22, f30, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f30, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f30, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f30, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f30, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f30, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8200)
li x14, 0x42d2581f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
fdiv.h f14, f9, f25, dyn # perform operation
fdiv.h f14, f9, f25, rdn # perform operation
fdiv.h f14, f9, f25, rmm # perform operation
fdiv.h f14, f9, f25, rne # perform operation
fdiv.h f14, f9, f25, rtz # perform operation
fdiv.h f14, f9, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f9, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f9, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f9, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f9, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f9, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x1)
li x4, 0xbd953ac8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f19, 0(x2) # load 0x0000c000 from memory into f19
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
fdiv.h f4, f19, f21, dyn # perform operation
fdiv.h f4, f19, f21, rdn # perform operation
fdiv.h f4, f19, f21, rmm # perform operation
fdiv.h f4, f19, f21, rne # perform operation
fdiv.h f4, f19, f21, rtz # perform operation
fdiv.h f4, f19, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f19, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f19, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f19, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f19, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f19, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8001)
li x19, 0xb1671f63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f11, 0(x2) # load 0x0000c000 from memory into f11
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f9, 0(x2) # load 0x00008001 from memory into f9
fdiv.h f19, f11, f9, dyn # perform operation
fdiv.h f19, f11, f9, rdn # perform operation
fdiv.h f19, f11, f9, rmm # perform operation
fdiv.h f19, f11, f9, rne # perform operation
fdiv.h f19, f11, f9, rtz # perform operation
fdiv.h f19, f11, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f11, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f11, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f11, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f11, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f11, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7c00)
li x9, 0x89586316 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
fdiv.h f9, f5, f1, dyn # perform operation
fdiv.h f9, f5, f1, rdn # perform operation
fdiv.h f9, f5, f1, rmm # perform operation
fdiv.h f9, f5, f1, rne # perform operation
fdiv.h f9, f5, f1, rtz # perform operation
fdiv.h f9, f5, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f5, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f5, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f5, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f5, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f5, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfc00)
li x11, 0xa81b89bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f2, 0(x2) # load 0x0000fc00 from memory into f2
fdiv.h f11, f3, f2, dyn # perform operation
fdiv.h f11, f3, f2, rdn # perform operation
fdiv.h f11, f3, f2, rmm # perform operation
fdiv.h f11, f3, f2, rne # perform operation
fdiv.h f11, f3, f2, rtz # perform operation
fdiv.h f11, f3, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f3, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f3, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f3, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f3, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f3, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7e00)
li x17, 0x1ef9ab79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
fdiv.h f17, f24, f10, dyn # perform operation
fdiv.h f17, f24, f10, rdn # perform operation
fdiv.h f17, f24, f10, rmm # perform operation
fdiv.h f17, f24, f10, rne # perform operation
fdiv.h f17, f24, f10, rtz # perform operation
fdiv.h f17, f24, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f24, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f24, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f24, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f24, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f24, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7fff)
li x13, 0xbbbde6d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f14, 0(x2) # load 0x0000c000 from memory into f14
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
fdiv.h f13, f14, f27, dyn # perform operation
fdiv.h f13, f14, f27, rdn # perform operation
fdiv.h f13, f14, f27, rmm # perform operation
fdiv.h f13, f14, f27, rne # perform operation
fdiv.h f13, f14, f27, rtz # perform operation
fdiv.h f13, f14, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f14, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f14, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f14, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f14, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f14, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7c01)
li x31, 0x52eb434b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f14, 0(x2) # load 0x0000c000 from memory into f14
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
fdiv.h f31, f14, f3, dyn # perform operation
fdiv.h f31, f14, f3, rdn # perform operation
fdiv.h f31, f14, f3, rmm # perform operation
fdiv.h f31, f14, f3, rne # perform operation
fdiv.h f31, f14, f3, rtz # perform operation
fdiv.h f31, f14, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f14, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f14, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f14, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f14, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f14, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7dff)
li x25, 0x2e8f16a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f2, 0(x2) # load 0x0000c000 from memory into f2
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
fdiv.h f25, f2, f23, dyn # perform operation
fdiv.h f25, f2, f23, rdn # perform operation
fdiv.h f25, f2, f23, rmm # perform operation
fdiv.h f25, f2, f23, rne # perform operation
fdiv.h f25, f2, f23, rtz # perform operation
fdiv.h f25, f2, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f2, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f2, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f2, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f2, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f2, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x58b4)
li x19, 0x37bb0ad4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f22, 0(x2) # load 0x000058b4 from memory into f22
fdiv.h f19, f26, f22, dyn # perform operation
fdiv.h f19, f26, f22, rdn # perform operation
fdiv.h f19, f26, f22, rmm # perform operation
fdiv.h f19, f26, f22, rne # perform operation
fdiv.h f19, f26, f22, rtz # perform operation
fdiv.h f19, f26, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f26, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f26, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f26, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f26, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f26, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xc93a)
li x24, 0xdaab7bfe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
fdiv.h f24, f25, f20, dyn # perform operation
fdiv.h f24, f25, f20, rdn # perform operation
fdiv.h f24, f25, f20, rmm # perform operation
fdiv.h f24, f25, f20, rne # perform operation
fdiv.h f24, f25, f20, rtz # perform operation
fdiv.h f24, f25, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f25, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f25, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f25, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f25, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f25, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x0)
li x3, 0xc1ea925c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
fdiv.h f3, f29, f25, dyn # perform operation
fdiv.h f3, f29, f25, rdn # perform operation
fdiv.h f3, f29, f25, rmm # perform operation
fdiv.h f3, f29, f25, rne # perform operation
fdiv.h f3, f29, f25, rtz # perform operation
fdiv.h f3, f29, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f29, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f29, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f29, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f29, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f29, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8000)
li x25, 0xb4305c6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f22, 0(x2) # load 0x00008000 from memory into f22
fdiv.h f25, f23, f22, dyn # perform operation
fdiv.h f25, f23, f22, rdn # perform operation
fdiv.h f25, f23, f22, rmm # perform operation
fdiv.h f25, f23, f22, rne # perform operation
fdiv.h f25, f23, f22, rtz # perform operation
fdiv.h f25, f23, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f23, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f23, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f23, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f23, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f23, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3c00)
li x14, 0x080dc13a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f9, 0(x2) # load 0x00003c00 from memory into f9
fdiv.h f14, f29, f9, dyn # perform operation
fdiv.h f14, f29, f9, rdn # perform operation
fdiv.h f14, f29, f9, rmm # perform operation
fdiv.h f14, f29, f9, rne # perform operation
fdiv.h f14, f29, f9, rtz # perform operation
fdiv.h f14, f29, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f29, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f29, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f29, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f29, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f29, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xbc00)
li x23, 0xa27af588 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f22, 0(x2) # load 0x00000400 from memory into f22
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f20, 0(x2) # load 0x0000bc00 from memory into f20
fdiv.h f23, f22, f20, dyn # perform operation
fdiv.h f23, f22, f20, rdn # perform operation
fdiv.h f23, f22, f20, rmm # perform operation
fdiv.h f23, f22, f20, rne # perform operation
fdiv.h f23, f22, f20, rtz # perform operation
fdiv.h f23, f22, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f22, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f22, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f22, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f22, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f22, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3e00)
li x19, 0x9fe77605 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f1, 0(x2) # load 0x00000400 from memory into f1
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
fdiv.h f19, f1, f12, dyn # perform operation
fdiv.h f19, f1, f12, rdn # perform operation
fdiv.h f19, f1, f12, rmm # perform operation
fdiv.h f19, f1, f12, rne # perform operation
fdiv.h f19, f1, f12, rtz # perform operation
fdiv.h f19, f1, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f1, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f1, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f1, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f1, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f1, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xbe00)
li x14, 0x34c9ff1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f31, 0(x2) # load 0x00000400 from memory into f31
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
fdiv.h f14, f31, f26, dyn # perform operation
fdiv.h f14, f31, f26, rdn # perform operation
fdiv.h f14, f31, f26, rmm # perform operation
fdiv.h f14, f31, f26, rne # perform operation
fdiv.h f14, f31, f26, rtz # perform operation
fdiv.h f14, f31, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f31, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f31, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f31, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f31, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f31, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x4000)
li x24, 0x00b72c69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f22, 0(x2) # load 0x00000400 from memory into f22
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f26, 0(x2) # load 0x00004000 from memory into f26
fdiv.h f24, f22, f26, dyn # perform operation
fdiv.h f24, f22, f26, rdn # perform operation
fdiv.h f24, f22, f26, rmm # perform operation
fdiv.h f24, f22, f26, rne # perform operation
fdiv.h f24, f22, f26, rtz # perform operation
fdiv.h f24, f22, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f22, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f22, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f22, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f22, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f22, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xc000)
li x24, 0xa78dae7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f1, 0(x2) # load 0x00000400 from memory into f1
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f12, 0(x2) # load 0x0000c000 from memory into f12
fdiv.h f24, f1, f12, dyn # perform operation
fdiv.h f24, f1, f12, rdn # perform operation
fdiv.h f24, f1, f12, rmm # perform operation
fdiv.h f24, f1, f12, rne # perform operation
fdiv.h f24, f1, f12, rtz # perform operation
fdiv.h f24, f1, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f1, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f1, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f1, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f1, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f1, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x400)
li x2, 0x6ccb48e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f10, 0(x2) # load 0x00000400 from memory into f10
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f19, 0(x2) # load 0x00000400 from memory into f19
fdiv.h f2, f10, f19, dyn # perform operation
fdiv.h f2, f10, f19, rdn # perform operation
fdiv.h f2, f10, f19, rmm # perform operation
fdiv.h f2, f10, f19, rne # perform operation
fdiv.h f2, f10, f19, rtz # perform operation
fdiv.h f2, f10, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f10, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f10, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f10, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f10, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f10, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8400)
li x16, 0x53f91ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
fdiv.h f16, f29, f6, dyn # perform operation
fdiv.h f16, f29, f6, rdn # perform operation
fdiv.h f16, f29, f6, rmm # perform operation
fdiv.h f16, f29, f6, rne # perform operation
fdiv.h f16, f29, f6, rtz # perform operation
fdiv.h f16, f29, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f29, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f29, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f29, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f29, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f29, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7bff)
li x16, 0x3b2e1b81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f3, 0(x2) # load 0x00000400 from memory into f3
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f29, 0(x2) # load 0x00007bff from memory into f29
fdiv.h f16, f3, f29, dyn # perform operation
fdiv.h f16, f3, f29, rdn # perform operation
fdiv.h f16, f3, f29, rmm # perform operation
fdiv.h f16, f3, f29, rne # perform operation
fdiv.h f16, f3, f29, rtz # perform operation
fdiv.h f16, f3, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f3, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f3, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f3, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f3, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f3, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfbff)
li x20, 0xafb6f889 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
fdiv.h f20, f23, f14, dyn # perform operation
fdiv.h f20, f23, f14, rdn # perform operation
fdiv.h f20, f23, f14, rmm # perform operation
fdiv.h f20, f23, f14, rne # perform operation
fdiv.h f20, f23, f14, rtz # perform operation
fdiv.h f20, f23, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f23, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f23, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f23, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f23, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f23, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3ff)
li x22, 0x30366176 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f15, 0(x2) # load 0x00000400 from memory into f15
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f18, 0(x2) # load 0x000003ff from memory into f18
fdiv.h f22, f15, f18, dyn # perform operation
fdiv.h f22, f15, f18, rdn # perform operation
fdiv.h f22, f15, f18, rmm # perform operation
fdiv.h f22, f15, f18, rne # perform operation
fdiv.h f22, f15, f18, rtz # perform operation
fdiv.h f22, f15, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f15, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f15, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f15, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f15, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f15, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x83ff)
li x15, 0x2c68da5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
fdiv.h f15, f16, f18, dyn # perform operation
fdiv.h f15, f16, f18, rdn # perform operation
fdiv.h f15, f16, f18, rmm # perform operation
fdiv.h f15, f16, f18, rne # perform operation
fdiv.h f15, f16, f18, rtz # perform operation
fdiv.h f15, f16, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f16, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f16, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f16, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f16, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f16, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x200)
li x9, 0x1ec6a928 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f12, 0(x2) # load 0x00000400 from memory into f12
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f17, 0(x2) # load 0x00000200 from memory into f17
fdiv.h f9, f12, f17, dyn # perform operation
fdiv.h f9, f12, f17, rdn # perform operation
fdiv.h f9, f12, f17, rmm # perform operation
fdiv.h f9, f12, f17, rne # perform operation
fdiv.h f9, f12, f17, rtz # perform operation
fdiv.h f9, f12, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f12, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f12, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f12, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f12, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f12, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8200)
li x16, 0x126991e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f7, 0(x2) # load 0x00008200 from memory into f7
fdiv.h f16, f24, f7, dyn # perform operation
fdiv.h f16, f24, f7, rdn # perform operation
fdiv.h f16, f24, f7, rmm # perform operation
fdiv.h f16, f24, f7, rne # perform operation
fdiv.h f16, f24, f7, rtz # perform operation
fdiv.h f16, f24, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f24, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f24, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f24, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f24, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f24, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x1)
li x19, 0x8153c811 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
fdiv.h f19, f16, f27, dyn # perform operation
fdiv.h f19, f16, f27, rdn # perform operation
fdiv.h f19, f16, f27, rmm # perform operation
fdiv.h f19, f16, f27, rne # perform operation
fdiv.h f19, f16, f27, rtz # perform operation
fdiv.h f19, f16, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f16, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f16, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f16, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f16, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f16, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8001)
li x14, 0x575087cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f9, 0(x2) # load 0x00008001 from memory into f9
fdiv.h f14, f18, f9, dyn # perform operation
fdiv.h f14, f18, f9, rdn # perform operation
fdiv.h f14, f18, f9, rmm # perform operation
fdiv.h f14, f18, f9, rne # perform operation
fdiv.h f14, f18, f9, rtz # perform operation
fdiv.h f14, f18, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f18, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f18, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f18, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f18, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f18, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7c00)
li x1, 0x13221003 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f15, 0(x2) # load 0x00000400 from memory into f15
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f25, 0(x2) # load 0x00007c00 from memory into f25
fdiv.h f1, f15, f25, dyn # perform operation
fdiv.h f1, f15, f25, rdn # perform operation
fdiv.h f1, f15, f25, rmm # perform operation
fdiv.h f1, f15, f25, rne # perform operation
fdiv.h f1, f15, f25, rtz # perform operation
fdiv.h f1, f15, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f15, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f15, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f15, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f15, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f15, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfc00)
li x4, 0x0145ea3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
fdiv.h f4, f18, f14, dyn # perform operation
fdiv.h f4, f18, f14, rdn # perform operation
fdiv.h f4, f18, f14, rmm # perform operation
fdiv.h f4, f18, f14, rne # perform operation
fdiv.h f4, f18, f14, rtz # perform operation
fdiv.h f4, f18, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f18, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f18, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f18, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f18, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f18, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7e00)
li x9, 0x74ee360c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f20, 0(x2) # load 0x00007e00 from memory into f20
fdiv.h f9, f14, f20, dyn # perform operation
fdiv.h f9, f14, f20, rdn # perform operation
fdiv.h f9, f14, f20, rmm # perform operation
fdiv.h f9, f14, f20, rne # perform operation
fdiv.h f9, f14, f20, rtz # perform operation
fdiv.h f9, f14, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f14, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f14, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f14, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f14, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f14, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7fff)
li x24, 0x480a8ed2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f1, 0(x2) # load 0x00000400 from memory into f1
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f11, 0(x2) # load 0x00007fff from memory into f11
fdiv.h f24, f1, f11, dyn # perform operation
fdiv.h f24, f1, f11, rdn # perform operation
fdiv.h f24, f1, f11, rmm # perform operation
fdiv.h f24, f1, f11, rne # perform operation
fdiv.h f24, f1, f11, rtz # perform operation
fdiv.h f24, f1, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f1, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f1, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f1, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f1, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f1, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7c01)
li x24, 0xef58df4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f21, 0(x2) # load 0x00000400 from memory into f21
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f30, 0(x2) # load 0x00007c01 from memory into f30
fdiv.h f24, f21, f30, dyn # perform operation
fdiv.h f24, f21, f30, rdn # perform operation
fdiv.h f24, f21, f30, rmm # perform operation
fdiv.h f24, f21, f30, rne # perform operation
fdiv.h f24, f21, f30, rtz # perform operation
fdiv.h f24, f21, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f21, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f21, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f21, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f21, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f21, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7dff)
li x28, 0x948942a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f15, 0(x2) # load 0x00000400 from memory into f15
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
fdiv.h f28, f15, f20, dyn # perform operation
fdiv.h f28, f15, f20, rdn # perform operation
fdiv.h f28, f15, f20, rmm # perform operation
fdiv.h f28, f15, f20, rne # perform operation
fdiv.h f28, f15, f20, rtz # perform operation
fdiv.h f28, f15, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f15, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f15, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f15, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f15, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f15, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x58b4)
li x22, 0xcad3d917 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f3, 0(x2) # load 0x00000400 from memory into f3
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
fdiv.h f22, f3, f17, dyn # perform operation
fdiv.h f22, f3, f17, rdn # perform operation
fdiv.h f22, f3, f17, rmm # perform operation
fdiv.h f22, f3, f17, rne # perform operation
fdiv.h f22, f3, f17, rtz # perform operation
fdiv.h f22, f3, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f3, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f3, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f3, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f3, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f3, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xc93a)
li x4, 0xcf480183 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f21, 0(x2) # load 0x00000400 from memory into f21
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f1, 0(x2) # load 0x0000c93a from memory into f1
fdiv.h f4, f21, f1, dyn # perform operation
fdiv.h f4, f21, f1, rdn # perform operation
fdiv.h f4, f21, f1, rmm # perform operation
fdiv.h f4, f21, f1, rne # perform operation
fdiv.h f4, f21, f1, rtz # perform operation
fdiv.h f4, f21, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f21, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f21, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f21, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f21, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f21, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x0)
li x27, 0x47cf37cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f9, 0(x2) # load 0x00000000 from memory into f9
fdiv.h f27, f29, f9, dyn # perform operation
fdiv.h f27, f29, f9, rdn # perform operation
fdiv.h f27, f29, f9, rmm # perform operation
fdiv.h f27, f29, f9, rne # perform operation
fdiv.h f27, f29, f9, rtz # perform operation
fdiv.h f27, f29, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f29, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f29, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f29, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f29, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f29, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8000)
li x26, 0xb6192d18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f31, 0(x2) # load 0x00008400 from memory into f31
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f17, 0(x2) # load 0x00008000 from memory into f17
fdiv.h f26, f31, f17, dyn # perform operation
fdiv.h f26, f31, f17, rdn # perform operation
fdiv.h f26, f31, f17, rmm # perform operation
fdiv.h f26, f31, f17, rne # perform operation
fdiv.h f26, f31, f17, rtz # perform operation
fdiv.h f26, f31, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f31, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f31, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f31, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f31, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f31, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3c00)
li x3, 0x7ad3cd4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f12, 0(x2) # load 0x00008400 from memory into f12
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f11, 0(x2) # load 0x00003c00 from memory into f11
fdiv.h f3, f12, f11, dyn # perform operation
fdiv.h f3, f12, f11, rdn # perform operation
fdiv.h f3, f12, f11, rmm # perform operation
fdiv.h f3, f12, f11, rne # perform operation
fdiv.h f3, f12, f11, rtz # perform operation
fdiv.h f3, f12, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f12, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f12, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f12, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f12, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f12, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xbc00)
li x20, 0xfccacad9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f19, 0(x2) # load 0x00008400 from memory into f19
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
fdiv.h f20, f19, f21, dyn # perform operation
fdiv.h f20, f19, f21, rdn # perform operation
fdiv.h f20, f19, f21, rmm # perform operation
fdiv.h f20, f19, f21, rne # perform operation
fdiv.h f20, f19, f21, rtz # perform operation
fdiv.h f20, f19, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f19, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f19, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f19, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f19, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f19, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3e00)
li x7, 0xad55d3c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f15, 0(x2) # load 0x00008400 from memory into f15
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f27, 0(x2) # load 0x00003e00 from memory into f27
fdiv.h f7, f15, f27, dyn # perform operation
fdiv.h f7, f15, f27, rdn # perform operation
fdiv.h f7, f15, f27, rmm # perform operation
fdiv.h f7, f15, f27, rne # perform operation
fdiv.h f7, f15, f27, rtz # perform operation
fdiv.h f7, f15, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f15, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f15, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f15, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f15, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f15, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xbe00)
li x12, 0xa306c1f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f27, 0(x2) # load 0x00008400 from memory into f27
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f13, 0(x2) # load 0x0000be00 from memory into f13
fdiv.h f12, f27, f13, dyn # perform operation
fdiv.h f12, f27, f13, rdn # perform operation
fdiv.h f12, f27, f13, rmm # perform operation
fdiv.h f12, f27, f13, rne # perform operation
fdiv.h f12, f27, f13, rtz # perform operation
fdiv.h f12, f27, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f27, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f27, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f27, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f27, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f27, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x4000)
li x13, 0x8536dce9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f5, 0(x2) # load 0x00004000 from memory into f5
fdiv.h f13, f24, f5, dyn # perform operation
fdiv.h f13, f24, f5, rdn # perform operation
fdiv.h f13, f24, f5, rmm # perform operation
fdiv.h f13, f24, f5, rne # perform operation
fdiv.h f13, f24, f5, rtz # perform operation
fdiv.h f13, f24, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f24, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f24, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f24, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f24, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f24, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xc000)
li x13, 0x73216718 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
fdiv.h f13, f21, f3, dyn # perform operation
fdiv.h f13, f21, f3, rdn # perform operation
fdiv.h f13, f21, f3, rmm # perform operation
fdiv.h f13, f21, f3, rne # perform operation
fdiv.h f13, f21, f3, rtz # perform operation
fdiv.h f13, f21, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f21, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f21, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f21, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f21, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f21, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x400)
li x6, 0xc5b9c906 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f27, 0(x2) # load 0x00008400 from memory into f27
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
fdiv.h f6, f27, f14, dyn # perform operation
fdiv.h f6, f27, f14, rdn # perform operation
fdiv.h f6, f27, f14, rmm # perform operation
fdiv.h f6, f27, f14, rne # perform operation
fdiv.h f6, f27, f14, rtz # perform operation
fdiv.h f6, f27, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f27, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f27, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f27, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f27, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f27, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8400)
li x31, 0x371288cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f15, 0(x2) # load 0x00008400 from memory into f15
fdiv.h f31, f6, f15, dyn # perform operation
fdiv.h f31, f6, f15, rdn # perform operation
fdiv.h f31, f6, f15, rmm # perform operation
fdiv.h f31, f6, f15, rne # perform operation
fdiv.h f31, f6, f15, rtz # perform operation
fdiv.h f31, f6, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f6, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f6, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f6, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f6, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f6, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7bff)
li x30, 0x9ec1847e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f29, 0(x2) # load 0x00007bff from memory into f29
fdiv.h f30, f9, f29, dyn # perform operation
fdiv.h f30, f9, f29, rdn # perform operation
fdiv.h f30, f9, f29, rmm # perform operation
fdiv.h f30, f9, f29, rne # perform operation
fdiv.h f30, f9, f29, rtz # perform operation
fdiv.h f30, f9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f9, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f9, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f9, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f9, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f9, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfbff)
li x12, 0x49a17354 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f22, 0(x2) # load 0x00008400 from memory into f22
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
fdiv.h f12, f22, f17, dyn # perform operation
fdiv.h f12, f22, f17, rdn # perform operation
fdiv.h f12, f22, f17, rmm # perform operation
fdiv.h f12, f22, f17, rne # perform operation
fdiv.h f12, f22, f17, rtz # perform operation
fdiv.h f12, f22, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f22, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f22, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f22, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f22, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f22, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3ff)
li x11, 0x46f2114f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
fdiv.h f11, f21, f6, dyn # perform operation
fdiv.h f11, f21, f6, rdn # perform operation
fdiv.h f11, f21, f6, rmm # perform operation
fdiv.h f11, f21, f6, rne # perform operation
fdiv.h f11, f21, f6, rtz # perform operation
fdiv.h f11, f21, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f21, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f21, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f21, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f21, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f21, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x83ff)
li x28, 0x5ba3f8f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f27, 0(x2) # load 0x000083ff from memory into f27
fdiv.h f28, f1, f27, dyn # perform operation
fdiv.h f28, f1, f27, rdn # perform operation
fdiv.h f28, f1, f27, rmm # perform operation
fdiv.h f28, f1, f27, rne # perform operation
fdiv.h f28, f1, f27, rtz # perform operation
fdiv.h f28, f1, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f1, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f1, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f1, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f1, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f1, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x200)
li x2, 0xa3335281 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
fdiv.h f2, f24, f25, dyn # perform operation
fdiv.h f2, f24, f25, rdn # perform operation
fdiv.h f2, f24, f25, rmm # perform operation
fdiv.h f2, f24, f25, rne # perform operation
fdiv.h f2, f24, f25, rtz # perform operation
fdiv.h f2, f24, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f24, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f24, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f24, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f24, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f24, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8200)
li x3, 0xe6689b2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f7, 0(x2) # load 0x00008200 from memory into f7
fdiv.h f3, f21, f7, dyn # perform operation
fdiv.h f3, f21, f7, rdn # perform operation
fdiv.h f3, f21, f7, rmm # perform operation
fdiv.h f3, f21, f7, rne # perform operation
fdiv.h f3, f21, f7, rtz # perform operation
fdiv.h f3, f21, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f21, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f21, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f21, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f21, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f21, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x1)
li x10, 0xd5c15a46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
fdiv.h f10, f7, f31, dyn # perform operation
fdiv.h f10, f7, f31, rdn # perform operation
fdiv.h f10, f7, f31, rmm # perform operation
fdiv.h f10, f7, f31, rne # perform operation
fdiv.h f10, f7, f31, rtz # perform operation
fdiv.h f10, f7, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f7, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f7, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f7, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f7, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f7, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8001)
li x2, 0xf222bfc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f21, 0(x2) # load 0x00008001 from memory into f21
fdiv.h f2, f3, f21, dyn # perform operation
fdiv.h f2, f3, f21, rdn # perform operation
fdiv.h f2, f3, f21, rmm # perform operation
fdiv.h f2, f3, f21, rne # perform operation
fdiv.h f2, f3, f21, rtz # perform operation
fdiv.h f2, f3, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f3, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f3, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f3, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f3, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f3, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7c00)
li x11, 0xe0246114 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f22, 0(x2) # load 0x00008400 from memory into f22
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
fdiv.h f11, f22, f16, dyn # perform operation
fdiv.h f11, f22, f16, rdn # perform operation
fdiv.h f11, f22, f16, rmm # perform operation
fdiv.h f11, f22, f16, rne # perform operation
fdiv.h f11, f22, f16, rtz # perform operation
fdiv.h f11, f22, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f22, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f22, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f22, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f22, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f22, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfc00)
li x10, 0x4770737f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f15, 0(x2) # load 0x0000fc00 from memory into f15
fdiv.h f10, f6, f15, dyn # perform operation
fdiv.h f10, f6, f15, rdn # perform operation
fdiv.h f10, f6, f15, rmm # perform operation
fdiv.h f10, f6, f15, rne # perform operation
fdiv.h f10, f6, f15, rtz # perform operation
fdiv.h f10, f6, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f6, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f6, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f6, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f6, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f6, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7e00)
li x17, 0x73a4ce73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f15, 0(x2) # load 0x00008400 from memory into f15
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
fdiv.h f17, f15, f30, dyn # perform operation
fdiv.h f17, f15, f30, rdn # perform operation
fdiv.h f17, f15, f30, rmm # perform operation
fdiv.h f17, f15, f30, rne # perform operation
fdiv.h f17, f15, f30, rtz # perform operation
fdiv.h f17, f15, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f15, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f15, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f15, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f15, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f15, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7fff)
li x21, 0x479a5e78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f27, 0(x2) # load 0x00008400 from memory into f27
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
fdiv.h f21, f27, f8, dyn # perform operation
fdiv.h f21, f27, f8, rdn # perform operation
fdiv.h f21, f27, f8, rmm # perform operation
fdiv.h f21, f27, f8, rne # perform operation
fdiv.h f21, f27, f8, rtz # perform operation
fdiv.h f21, f27, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f27, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f27, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f27, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f27, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f27, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7c01)
li x7, 0x5b5c627e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f10, 0(x2) # load 0x00007c01 from memory into f10
fdiv.h f7, f1, f10, dyn # perform operation
fdiv.h f7, f1, f10, rdn # perform operation
fdiv.h f7, f1, f10, rmm # perform operation
fdiv.h f7, f1, f10, rne # perform operation
fdiv.h f7, f1, f10, rtz # perform operation
fdiv.h f7, f1, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f1, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f1, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f1, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f1, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f1, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7dff)
li x6, 0xb8677221 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
fdiv.h f6, f1, f5, dyn # perform operation
fdiv.h f6, f1, f5, rdn # perform operation
fdiv.h f6, f1, f5, rmm # perform operation
fdiv.h f6, f1, f5, rne # perform operation
fdiv.h f6, f1, f5, rtz # perform operation
fdiv.h f6, f1, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f1, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f1, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f1, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f1, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f1, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x58b4)
li x30, 0xd7e8002f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
fdiv.h f30, f21, f23, dyn # perform operation
fdiv.h f30, f21, f23, rdn # perform operation
fdiv.h f30, f21, f23, rmm # perform operation
fdiv.h f30, f21, f23, rne # perform operation
fdiv.h f30, f21, f23, rtz # perform operation
fdiv.h f30, f21, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f21, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f21, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f21, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f21, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f21, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xc93a)
li x28, 0xcb9bbdf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f14, 0(x2) # load 0x00008400 from memory into f14
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f31, 0(x2) # load 0x0000c93a from memory into f31
fdiv.h f28, f14, f31, dyn # perform operation
fdiv.h f28, f14, f31, rdn # perform operation
fdiv.h f28, f14, f31, rmm # perform operation
fdiv.h f28, f14, f31, rne # perform operation
fdiv.h f28, f14, f31, rtz # perform operation
fdiv.h f28, f14, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f14, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f14, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f14, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f14, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f14, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x0)
li x2, 0xd7f5db02 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f5, 0(x2) # load 0x00007bff from memory into f5
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
fdiv.h f2, f5, f25, dyn # perform operation
fdiv.h f2, f5, f25, rdn # perform operation
fdiv.h f2, f5, f25, rmm # perform operation
fdiv.h f2, f5, f25, rne # perform operation
fdiv.h f2, f5, f25, rtz # perform operation
fdiv.h f2, f5, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f5, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f5, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f5, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f5, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f5, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8000)
li x22, 0x4289580f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
fdiv.h f22, f21, f10, dyn # perform operation
fdiv.h f22, f21, f10, rdn # perform operation
fdiv.h f22, f21, f10, rmm # perform operation
fdiv.h f22, f21, f10, rne # perform operation
fdiv.h f22, f21, f10, rtz # perform operation
fdiv.h f22, f21, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f21, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f21, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f21, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f21, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f21, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3c00)
li x1, 0x594f5237 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
fdiv.h f1, f17, f22, dyn # perform operation
fdiv.h f1, f17, f22, rdn # perform operation
fdiv.h f1, f17, f22, rmm # perform operation
fdiv.h f1, f17, f22, rne # perform operation
fdiv.h f1, f17, f22, rtz # perform operation
fdiv.h f1, f17, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f17, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f17, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f17, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f17, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f17, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xbc00)
li x9, 0x6af91f6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f19, 0(x2) # load 0x00007bff from memory into f19
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
fdiv.h f9, f19, f14, dyn # perform operation
fdiv.h f9, f19, f14, rdn # perform operation
fdiv.h f9, f19, f14, rmm # perform operation
fdiv.h f9, f19, f14, rne # perform operation
fdiv.h f9, f19, f14, rtz # perform operation
fdiv.h f9, f19, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f19, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f19, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f19, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f19, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f19, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3e00)
li x26, 0xcd96eb4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f15, 0(x2) # load 0x00003e00 from memory into f15
fdiv.h f26, f10, f15, dyn # perform operation
fdiv.h f26, f10, f15, rdn # perform operation
fdiv.h f26, f10, f15, rmm # perform operation
fdiv.h f26, f10, f15, rne # perform operation
fdiv.h f26, f10, f15, rtz # perform operation
fdiv.h f26, f10, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f10, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f10, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f10, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f10, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f10, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xbe00)
li x31, 0x76c22750 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f25, 0(x2) # load 0x00007bff from memory into f25
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f6, 0(x2) # load 0x0000be00 from memory into f6
fdiv.h f31, f25, f6, dyn # perform operation
fdiv.h f31, f25, f6, rdn # perform operation
fdiv.h f31, f25, f6, rmm # perform operation
fdiv.h f31, f25, f6, rne # perform operation
fdiv.h f31, f25, f6, rtz # perform operation
fdiv.h f31, f25, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f25, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f25, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f25, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f25, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f25, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x4000)
li x4, 0xc251e01d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f20, 0(x2) # load 0x00007bff from memory into f20
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
fdiv.h f4, f20, f21, dyn # perform operation
fdiv.h f4, f20, f21, rdn # perform operation
fdiv.h f4, f20, f21, rmm # perform operation
fdiv.h f4, f20, f21, rne # perform operation
fdiv.h f4, f20, f21, rtz # perform operation
fdiv.h f4, f20, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f20, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f20, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f20, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f20, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f20, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xc000)
li x31, 0x71cb78f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f29, 0(x2) # load 0x0000c000 from memory into f29
fdiv.h f31, f8, f29, dyn # perform operation
fdiv.h f31, f8, f29, rdn # perform operation
fdiv.h f31, f8, f29, rmm # perform operation
fdiv.h f31, f8, f29, rne # perform operation
fdiv.h f31, f8, f29, rtz # perform operation
fdiv.h f31, f8, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f8, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f8, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f8, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f8, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f8, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x400)
li x26, 0xb73c28d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f22, 0(x2) # load 0x00000400 from memory into f22
fdiv.h f26, f21, f22, dyn # perform operation
fdiv.h f26, f21, f22, rdn # perform operation
fdiv.h f26, f21, f22, rmm # perform operation
fdiv.h f26, f21, f22, rne # perform operation
fdiv.h f26, f21, f22, rtz # perform operation
fdiv.h f26, f21, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f21, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f21, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f21, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f21, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f21, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8400)
li x10, 0x46ef5ccf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f15, 0(x2) # load 0x00008400 from memory into f15
fdiv.h f10, f17, f15, dyn # perform operation
fdiv.h f10, f17, f15, rdn # perform operation
fdiv.h f10, f17, f15, rmm # perform operation
fdiv.h f10, f17, f15, rne # perform operation
fdiv.h f10, f17, f15, rtz # perform operation
fdiv.h f10, f17, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f17, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f17, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f17, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f17, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f17, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7bff)
li x16, 0xc59294a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f4, 0(x2) # load 0x00007bff from memory into f4
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
fdiv.h f16, f4, f2, dyn # perform operation
fdiv.h f16, f4, f2, rdn # perform operation
fdiv.h f16, f4, f2, rmm # perform operation
fdiv.h f16, f4, f2, rne # perform operation
fdiv.h f16, f4, f2, rtz # perform operation
fdiv.h f16, f4, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f4, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f4, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f4, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f4, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f4, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfbff)
li x2, 0xd790312c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
fdiv.h f2, f30, f16, dyn # perform operation
fdiv.h f2, f30, f16, rdn # perform operation
fdiv.h f2, f30, f16, rmm # perform operation
fdiv.h f2, f30, f16, rne # perform operation
fdiv.h f2, f30, f16, rtz # perform operation
fdiv.h f2, f30, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f30, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f30, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f30, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f30, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f30, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3ff)
li x10, 0xf7368d4c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f4, 0(x2) # load 0x00007bff from memory into f4
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f3, 0(x2) # load 0x000003ff from memory into f3
fdiv.h f10, f4, f3, dyn # perform operation
fdiv.h f10, f4, f3, rdn # perform operation
fdiv.h f10, f4, f3, rmm # perform operation
fdiv.h f10, f4, f3, rne # perform operation
fdiv.h f10, f4, f3, rtz # perform operation
fdiv.h f10, f4, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f4, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f4, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f4, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f4, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f4, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x83ff)
li x1, 0xbd266a1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f4, 0(x2) # load 0x000083ff from memory into f4
fdiv.h f1, f17, f4, dyn # perform operation
fdiv.h f1, f17, f4, rdn # perform operation
fdiv.h f1, f17, f4, rmm # perform operation
fdiv.h f1, f17, f4, rne # perform operation
fdiv.h f1, f17, f4, rtz # perform operation
fdiv.h f1, f17, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f17, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f17, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f17, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f17, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f17, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x200)
li x13, 0xdaf06bed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f29, 0(x2) # load 0x00007bff from memory into f29
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f8, 0(x2) # load 0x00000200 from memory into f8
fdiv.h f13, f29, f8, dyn # perform operation
fdiv.h f13, f29, f8, rdn # perform operation
fdiv.h f13, f29, f8, rmm # perform operation
fdiv.h f13, f29, f8, rne # perform operation
fdiv.h f13, f29, f8, rtz # perform operation
fdiv.h f13, f29, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f29, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f29, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f29, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f29, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f29, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8200)
li x19, 0x266202b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f7, 0(x2) # load 0x00008200 from memory into f7
fdiv.h f19, f2, f7, dyn # perform operation
fdiv.h f19, f2, f7, rdn # perform operation
fdiv.h f19, f2, f7, rmm # perform operation
fdiv.h f19, f2, f7, rne # perform operation
fdiv.h f19, f2, f7, rtz # perform operation
fdiv.h f19, f2, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f2, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f2, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f2, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f2, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f2, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x1)
li x11, 0xe0837513 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f23, 0(x2) # load 0x00000001 from memory into f23
fdiv.h f11, f8, f23, dyn # perform operation
fdiv.h f11, f8, f23, rdn # perform operation
fdiv.h f11, f8, f23, rmm # perform operation
fdiv.h f11, f8, f23, rne # perform operation
fdiv.h f11, f8, f23, rtz # perform operation
fdiv.h f11, f8, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f8, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f8, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f8, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f8, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f8, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8001)
li x17, 0xad63c7ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f8, 0(x2) # load 0x00008001 from memory into f8
fdiv.h f17, f12, f8, dyn # perform operation
fdiv.h f17, f12, f8, rdn # perform operation
fdiv.h f17, f12, f8, rmm # perform operation
fdiv.h f17, f12, f8, rne # perform operation
fdiv.h f17, f12, f8, rtz # perform operation
fdiv.h f17, f12, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f12, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f12, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f12, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f12, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f12, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7c00)
li x8, 0x09b54e9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f19, 0(x2) # load 0x00007bff from memory into f19
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
fdiv.h f8, f19, f7, dyn # perform operation
fdiv.h f8, f19, f7, rdn # perform operation
fdiv.h f8, f19, f7, rmm # perform operation
fdiv.h f8, f19, f7, rne # perform operation
fdiv.h f8, f19, f7, rtz # perform operation
fdiv.h f8, f19, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f19, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f19, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f19, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f19, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f19, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfc00)
li x24, 0xa6d59699 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f25, 0(x2) # load 0x00007bff from memory into f25
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f6, 0(x2) # load 0x0000fc00 from memory into f6
fdiv.h f24, f25, f6, dyn # perform operation
fdiv.h f24, f25, f6, rdn # perform operation
fdiv.h f24, f25, f6, rmm # perform operation
fdiv.h f24, f25, f6, rne # perform operation
fdiv.h f24, f25, f6, rtz # perform operation
fdiv.h f24, f25, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f25, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f25, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f25, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f25, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f25, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7e00)
li x6, 0x9c28db93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
fdiv.h f6, f16, f3, dyn # perform operation
fdiv.h f6, f16, f3, rdn # perform operation
fdiv.h f6, f16, f3, rmm # perform operation
fdiv.h f6, f16, f3, rne # perform operation
fdiv.h f6, f16, f3, rtz # perform operation
fdiv.h f6, f16, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f16, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f16, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f16, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f16, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f16, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7fff)
li x19, 0x3486463b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f28, 0(x2) # load 0x00007bff from memory into f28
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
fdiv.h f19, f28, f12, dyn # perform operation
fdiv.h f19, f28, f12, rdn # perform operation
fdiv.h f19, f28, f12, rmm # perform operation
fdiv.h f19, f28, f12, rne # perform operation
fdiv.h f19, f28, f12, rtz # perform operation
fdiv.h f19, f28, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f28, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f28, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f28, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f28, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f28, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7c01)
li x17, 0x4bac2f5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f11, 0(x2) # load 0x00007bff from memory into f11
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f29, 0(x2) # load 0x00007c01 from memory into f29
fdiv.h f17, f11, f29, dyn # perform operation
fdiv.h f17, f11, f29, rdn # perform operation
fdiv.h f17, f11, f29, rmm # perform operation
fdiv.h f17, f11, f29, rne # perform operation
fdiv.h f17, f11, f29, rtz # perform operation
fdiv.h f17, f11, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f11, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f11, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f11, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f11, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f11, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7dff)
li x17, 0x2e0956b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f3, 0(x2) # load 0x00007dff from memory into f3
fdiv.h f17, f21, f3, dyn # perform operation
fdiv.h f17, f21, f3, rdn # perform operation
fdiv.h f17, f21, f3, rmm # perform operation
fdiv.h f17, f21, f3, rne # perform operation
fdiv.h f17, f21, f3, rtz # perform operation
fdiv.h f17, f21, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f21, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f21, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f21, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f21, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f21, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x58b4)
li x1, 0x364fb5f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
fdiv.h f1, f30, f24, dyn # perform operation
fdiv.h f1, f30, f24, rdn # perform operation
fdiv.h f1, f30, f24, rmm # perform operation
fdiv.h f1, f30, f24, rne # perform operation
fdiv.h f1, f30, f24, rtz # perform operation
fdiv.h f1, f30, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f30, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f30, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f30, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f30, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f30, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xc93a)
li x19, 0x1654f4bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f28, 0(x2) # load 0x00007bff from memory into f28
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
fdiv.h f19, f28, f26, dyn # perform operation
fdiv.h f19, f28, f26, rdn # perform operation
fdiv.h f19, f28, f26, rmm # perform operation
fdiv.h f19, f28, f26, rne # perform operation
fdiv.h f19, f28, f26, rtz # perform operation
fdiv.h f19, f28, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f28, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f28, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f28, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f28, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f28, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x0)
li x17, 0x662af511 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f1, 0(x2) # load 0x0000fbff from memory into f1
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f7, 0(x2) # load 0x00000000 from memory into f7
fdiv.h f17, f1, f7, dyn # perform operation
fdiv.h f17, f1, f7, rdn # perform operation
fdiv.h f17, f1, f7, rmm # perform operation
fdiv.h f17, f1, f7, rne # perform operation
fdiv.h f17, f1, f7, rtz # perform operation
fdiv.h f17, f1, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f1, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f1, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f1, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f1, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f1, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8000)
li x11, 0xb900fa23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f18, 0(x2) # load 0x00008000 from memory into f18
fdiv.h f11, f17, f18, dyn # perform operation
fdiv.h f11, f17, f18, rdn # perform operation
fdiv.h f11, f17, f18, rmm # perform operation
fdiv.h f11, f17, f18, rne # perform operation
fdiv.h f11, f17, f18, rtz # perform operation
fdiv.h f11, f17, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f17, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f17, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f17, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f17, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f17, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3c00)
li x26, 0x4a7681f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
fdiv.h f26, f2, f17, dyn # perform operation
fdiv.h f26, f2, f17, rdn # perform operation
fdiv.h f26, f2, f17, rmm # perform operation
fdiv.h f26, f2, f17, rne # perform operation
fdiv.h f26, f2, f17, rtz # perform operation
fdiv.h f26, f2, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f2, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f2, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f2, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f2, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f2, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xbc00)
li x31, 0x83157c7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f10, 0(x2) # load 0x0000fbff from memory into f10
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
fdiv.h f31, f10, f26, dyn # perform operation
fdiv.h f31, f10, f26, rdn # perform operation
fdiv.h f31, f10, f26, rmm # perform operation
fdiv.h f31, f10, f26, rne # perform operation
fdiv.h f31, f10, f26, rtz # perform operation
fdiv.h f31, f10, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f10, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f10, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f10, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f10, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f10, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3e00)
li x20, 0xd273a4e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f6, 0(x2) # load 0x0000fbff from memory into f6
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
fdiv.h f20, f6, f1, dyn # perform operation
fdiv.h f20, f6, f1, rdn # perform operation
fdiv.h f20, f6, f1, rmm # perform operation
fdiv.h f20, f6, f1, rne # perform operation
fdiv.h f20, f6, f1, rtz # perform operation
fdiv.h f20, f6, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f6, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f6, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f6, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f6, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f6, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xbe00)
li x10, 0x4a0f570a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f25, 0(x2) # load 0x0000fbff from memory into f25
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
fdiv.h f10, f25, f5, dyn # perform operation
fdiv.h f10, f25, f5, rdn # perform operation
fdiv.h f10, f25, f5, rmm # perform operation
fdiv.h f10, f25, f5, rne # perform operation
fdiv.h f10, f25, f5, rtz # perform operation
fdiv.h f10, f25, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f25, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f25, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f25, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f25, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f25, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x4000)
li x11, 0x76ce8b70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
fdiv.h f11, f31, f22, dyn # perform operation
fdiv.h f11, f31, f22, rdn # perform operation
fdiv.h f11, f31, f22, rmm # perform operation
fdiv.h f11, f31, f22, rne # perform operation
fdiv.h f11, f31, f22, rtz # perform operation
fdiv.h f11, f31, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f31, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f31, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f31, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f31, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f31, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xc000)
li x4, 0x01fb1539 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f26, 0(x2) # load 0x0000fbff from memory into f26
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
fdiv.h f4, f26, f17, dyn # perform operation
fdiv.h f4, f26, f17, rdn # perform operation
fdiv.h f4, f26, f17, rmm # perform operation
fdiv.h f4, f26, f17, rne # perform operation
fdiv.h f4, f26, f17, rtz # perform operation
fdiv.h f4, f26, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f26, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f26, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f26, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f26, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f26, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x400)
li x15, 0xb992393c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f6, 0(x2) # load 0x0000fbff from memory into f6
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
fdiv.h f15, f6, f8, dyn # perform operation
fdiv.h f15, f6, f8, rdn # perform operation
fdiv.h f15, f6, f8, rmm # perform operation
fdiv.h f15, f6, f8, rne # perform operation
fdiv.h f15, f6, f8, rtz # perform operation
fdiv.h f15, f6, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f6, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f6, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f6, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f6, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f6, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8400)
li x27, 0x3931156c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f15, 0(x2) # load 0x0000fbff from memory into f15
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
fdiv.h f27, f15, f21, dyn # perform operation
fdiv.h f27, f15, f21, rdn # perform operation
fdiv.h f27, f15, f21, rmm # perform operation
fdiv.h f27, f15, f21, rne # perform operation
fdiv.h f27, f15, f21, rtz # perform operation
fdiv.h f27, f15, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f15, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f15, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f15, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f15, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f15, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7bff)
li x26, 0x7adf3652 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f13, 0(x2) # load 0x00007bff from memory into f13
fdiv.h f26, f17, f13, dyn # perform operation
fdiv.h f26, f17, f13, rdn # perform operation
fdiv.h f26, f17, f13, rmm # perform operation
fdiv.h f26, f17, f13, rne # perform operation
fdiv.h f26, f17, f13, rtz # perform operation
fdiv.h f26, f17, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f17, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f17, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f17, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f17, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f17, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfbff)
li x10, 0x216c515a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f6, 0(x2) # load 0x0000fbff from memory into f6
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f23, 0(x2) # load 0x0000fbff from memory into f23
fdiv.h f10, f6, f23, dyn # perform operation
fdiv.h f10, f6, f23, rdn # perform operation
fdiv.h f10, f6, f23, rmm # perform operation
fdiv.h f10, f6, f23, rne # perform operation
fdiv.h f10, f6, f23, rtz # perform operation
fdiv.h f10, f6, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f6, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f6, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f6, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f6, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f6, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3ff)
li x16, 0x2fe2b4c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f9, 0(x2) # load 0x0000fbff from memory into f9
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f29, 0(x2) # load 0x000003ff from memory into f29
fdiv.h f16, f9, f29, dyn # perform operation
fdiv.h f16, f9, f29, rdn # perform operation
fdiv.h f16, f9, f29, rmm # perform operation
fdiv.h f16, f9, f29, rne # perform operation
fdiv.h f16, f9, f29, rtz # perform operation
fdiv.h f16, f9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f9, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f9, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f9, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f9, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f9, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x83ff)
li x26, 0xfbd80e96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f22, 0(x2) # load 0x0000fbff from memory into f22
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
fdiv.h f26, f22, f10, dyn # perform operation
fdiv.h f26, f22, f10, rdn # perform operation
fdiv.h f26, f22, f10, rmm # perform operation
fdiv.h f26, f22, f10, rne # perform operation
fdiv.h f26, f22, f10, rtz # perform operation
fdiv.h f26, f22, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f22, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f22, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f22, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f22, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f22, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x200)
li x19, 0x6f39ee61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f20, 0(x2) # load 0x00000200 from memory into f20
fdiv.h f19, f21, f20, dyn # perform operation
fdiv.h f19, f21, f20, rdn # perform operation
fdiv.h f19, f21, f20, rmm # perform operation
fdiv.h f19, f21, f20, rne # perform operation
fdiv.h f19, f21, f20, rtz # perform operation
fdiv.h f19, f21, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f21, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f21, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f21, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f21, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f21, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8200)
li x28, 0x90f25ac5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f25, 0(x2) # load 0x0000fbff from memory into f25
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
fdiv.h f28, f25, f17, dyn # perform operation
fdiv.h f28, f25, f17, rdn # perform operation
fdiv.h f28, f25, f17, rmm # perform operation
fdiv.h f28, f25, f17, rne # perform operation
fdiv.h f28, f25, f17, rtz # perform operation
fdiv.h f28, f25, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f25, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f25, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f25, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f25, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f25, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x1)
li x27, 0xce25bb48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f25, 0(x2) # load 0x00000001 from memory into f25
fdiv.h f27, f2, f25, dyn # perform operation
fdiv.h f27, f2, f25, rdn # perform operation
fdiv.h f27, f2, f25, rmm # perform operation
fdiv.h f27, f2, f25, rne # perform operation
fdiv.h f27, f2, f25, rtz # perform operation
fdiv.h f27, f2, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f2, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f2, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f2, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f2, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f2, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8001)
li x20, 0x1d791c2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f6, 0(x2) # load 0x0000fbff from memory into f6
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
fdiv.h f20, f6, f14, dyn # perform operation
fdiv.h f20, f6, f14, rdn # perform operation
fdiv.h f20, f6, f14, rmm # perform operation
fdiv.h f20, f6, f14, rne # perform operation
fdiv.h f20, f6, f14, rtz # perform operation
fdiv.h f20, f6, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f6, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f6, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f6, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f6, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f6, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7c00)
li x29, 0x3eb422e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f9, 0(x2) # load 0x00007c00 from memory into f9
fdiv.h f29, f14, f9, dyn # perform operation
fdiv.h f29, f14, f9, rdn # perform operation
fdiv.h f29, f14, f9, rmm # perform operation
fdiv.h f29, f14, f9, rne # perform operation
fdiv.h f29, f14, f9, rtz # perform operation
fdiv.h f29, f14, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f14, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f14, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f14, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f14, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f14, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfc00)
li x18, 0x0663edf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f1, 0(x2) # load 0x0000fc00 from memory into f1
fdiv.h f18, f2, f1, dyn # perform operation
fdiv.h f18, f2, f1, rdn # perform operation
fdiv.h f18, f2, f1, rmm # perform operation
fdiv.h f18, f2, f1, rne # perform operation
fdiv.h f18, f2, f1, rtz # perform operation
fdiv.h f18, f2, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f2, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f2, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f2, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f2, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f2, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7e00)
li x11, 0xe6896ab2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f4, 0(x2) # load 0x0000fbff from memory into f4
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f24, 0(x2) # load 0x00007e00 from memory into f24
fdiv.h f11, f4, f24, dyn # perform operation
fdiv.h f11, f4, f24, rdn # perform operation
fdiv.h f11, f4, f24, rmm # perform operation
fdiv.h f11, f4, f24, rne # perform operation
fdiv.h f11, f4, f24, rtz # perform operation
fdiv.h f11, f4, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f4, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f4, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f4, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f4, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f4, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7fff)
li x25, 0xe96d02cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f3, 0(x2) # load 0x0000fbff from memory into f3
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
fdiv.h f25, f3, f8, dyn # perform operation
fdiv.h f25, f3, f8, rdn # perform operation
fdiv.h f25, f3, f8, rmm # perform operation
fdiv.h f25, f3, f8, rne # perform operation
fdiv.h f25, f3, f8, rtz # perform operation
fdiv.h f25, f3, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f3, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f3, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f3, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f3, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f3, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7c01)
li x8, 0x15528240 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f13, 0(x2) # load 0x0000fbff from memory into f13
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
fdiv.h f8, f13, f26, dyn # perform operation
fdiv.h f8, f13, f26, rdn # perform operation
fdiv.h f8, f13, f26, rmm # perform operation
fdiv.h f8, f13, f26, rne # perform operation
fdiv.h f8, f13, f26, rtz # perform operation
fdiv.h f8, f13, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f13, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f13, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f13, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f13, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f13, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7dff)
li x28, 0x95c83f08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f3, 0(x2) # load 0x0000fbff from memory into f3
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f1, 0(x2) # load 0x00007dff from memory into f1
fdiv.h f28, f3, f1, dyn # perform operation
fdiv.h f28, f3, f1, rdn # perform operation
fdiv.h f28, f3, f1, rmm # perform operation
fdiv.h f28, f3, f1, rne # perform operation
fdiv.h f28, f3, f1, rtz # perform operation
fdiv.h f28, f3, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f3, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f3, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f3, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f3, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f3, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x58b4)
li x25, 0xbe273bd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f22, 0(x2) # load 0x000058b4 from memory into f22
fdiv.h f25, f31, f22, dyn # perform operation
fdiv.h f25, f31, f22, rdn # perform operation
fdiv.h f25, f31, f22, rmm # perform operation
fdiv.h f25, f31, f22, rne # perform operation
fdiv.h f25, f31, f22, rtz # perform operation
fdiv.h f25, f31, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f31, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f31, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f31, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f31, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f31, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xc93a)
li x17, 0x5a025c9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f1, 0(x2) # load 0x0000fbff from memory into f1
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f14, 0(x2) # load 0x0000c93a from memory into f14
fdiv.h f17, f1, f14, dyn # perform operation
fdiv.h f17, f1, f14, rdn # perform operation
fdiv.h f17, f1, f14, rmm # perform operation
fdiv.h f17, f1, f14, rne # perform operation
fdiv.h f17, f1, f14, rtz # perform operation
fdiv.h f17, f1, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f1, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f1, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f1, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f1, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f1, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x0)
li x28, 0x6ff5c391 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f3, 0(x2) # load 0x000003ff from memory into f3
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f7, 0(x2) # load 0x00000000 from memory into f7
fdiv.h f28, f3, f7, dyn # perform operation
fdiv.h f28, f3, f7, rdn # perform operation
fdiv.h f28, f3, f7, rmm # perform operation
fdiv.h f28, f3, f7, rne # perform operation
fdiv.h f28, f3, f7, rtz # perform operation
fdiv.h f28, f3, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f3, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f3, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f3, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f3, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f3, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8000)
li x10, 0x24068d3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f8, 0(x2) # load 0x00008000 from memory into f8
fdiv.h f10, f23, f8, dyn # perform operation
fdiv.h f10, f23, f8, rdn # perform operation
fdiv.h f10, f23, f8, rmm # perform operation
fdiv.h f10, f23, f8, rne # perform operation
fdiv.h f10, f23, f8, rtz # perform operation
fdiv.h f10, f23, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f23, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f23, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f23, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f23, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f23, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3c00)
li x4, 0x7e4a61b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f8, 0(x2) # load 0x000003ff from memory into f8
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f1, 0(x2) # load 0x00003c00 from memory into f1
fdiv.h f4, f8, f1, dyn # perform operation
fdiv.h f4, f8, f1, rdn # perform operation
fdiv.h f4, f8, f1, rmm # perform operation
fdiv.h f4, f8, f1, rne # perform operation
fdiv.h f4, f8, f1, rtz # perform operation
fdiv.h f4, f8, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f8, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f8, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f8, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f8, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f8, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xbc00)
li x7, 0xa5044bd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f26, 0(x2) # load 0x000003ff from memory into f26
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f29, 0(x2) # load 0x0000bc00 from memory into f29
fdiv.h f7, f26, f29, dyn # perform operation
fdiv.h f7, f26, f29, rdn # perform operation
fdiv.h f7, f26, f29, rmm # perform operation
fdiv.h f7, f26, f29, rne # perform operation
fdiv.h f7, f26, f29, rtz # perform operation
fdiv.h f7, f26, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f26, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f26, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f26, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f26, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f26, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3e00)
li x19, 0x4e181c7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f27, 0(x2) # load 0x00003e00 from memory into f27
fdiv.h f19, f23, f27, dyn # perform operation
fdiv.h f19, f23, f27, rdn # perform operation
fdiv.h f19, f23, f27, rmm # perform operation
fdiv.h f19, f23, f27, rne # perform operation
fdiv.h f19, f23, f27, rtz # perform operation
fdiv.h f19, f23, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f23, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f23, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f23, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f23, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f23, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xbe00)
li x13, 0xa19a7d8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f22, 0(x2) # load 0x000003ff from memory into f22
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
fdiv.h f13, f22, f31, dyn # perform operation
fdiv.h f13, f22, f31, rdn # perform operation
fdiv.h f13, f22, f31, rmm # perform operation
fdiv.h f13, f22, f31, rne # perform operation
fdiv.h f13, f22, f31, rtz # perform operation
fdiv.h f13, f22, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f22, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f22, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f22, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f22, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f22, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x4000)
li x8, 0xd4f8889d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f15, 0(x2) # load 0x000003ff from memory into f15
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
fdiv.h f8, f15, f2, dyn # perform operation
fdiv.h f8, f15, f2, rdn # perform operation
fdiv.h f8, f15, f2, rmm # perform operation
fdiv.h f8, f15, f2, rne # perform operation
fdiv.h f8, f15, f2, rtz # perform operation
fdiv.h f8, f15, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f15, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f15, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f15, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f15, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f15, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xc000)
li x5, 0x968cb3b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f30, 0(x2) # load 0x000003ff from memory into f30
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f12, 0(x2) # load 0x0000c000 from memory into f12
fdiv.h f5, f30, f12, dyn # perform operation
fdiv.h f5, f30, f12, rdn # perform operation
fdiv.h f5, f30, f12, rmm # perform operation
fdiv.h f5, f30, f12, rne # perform operation
fdiv.h f5, f30, f12, rtz # perform operation
fdiv.h f5, f30, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f30, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f30, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f30, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f30, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f30, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x400)
li x11, 0xc9d0731c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f30, 0(x2) # load 0x000003ff from memory into f30
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f22, 0(x2) # load 0x00000400 from memory into f22
fdiv.h f11, f30, f22, dyn # perform operation
fdiv.h f11, f30, f22, rdn # perform operation
fdiv.h f11, f30, f22, rmm # perform operation
fdiv.h f11, f30, f22, rne # perform operation
fdiv.h f11, f30, f22, rtz # perform operation
fdiv.h f11, f30, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f30, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f30, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f30, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f30, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f30, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8400)
li x4, 0x75bc5d1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
fdiv.h f4, f27, f21, dyn # perform operation
fdiv.h f4, f27, f21, rdn # perform operation
fdiv.h f4, f27, f21, rmm # perform operation
fdiv.h f4, f27, f21, rne # perform operation
fdiv.h f4, f27, f21, rtz # perform operation
fdiv.h f4, f27, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f27, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f27, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f27, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f27, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f27, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7bff)
li x24, 0x61bd15c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f4, 0(x2) # load 0x000003ff from memory into f4
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
fdiv.h f24, f4, f2, dyn # perform operation
fdiv.h f24, f4, f2, rdn # perform operation
fdiv.h f24, f4, f2, rmm # perform operation
fdiv.h f24, f4, f2, rne # perform operation
fdiv.h f24, f4, f2, rtz # perform operation
fdiv.h f24, f4, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f4, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f4, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f4, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f4, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f4, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfbff)
li x8, 0x3a3784df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f30, 0(x2) # load 0x000003ff from memory into f30
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f13, 0(x2) # load 0x0000fbff from memory into f13
fdiv.h f8, f30, f13, dyn # perform operation
fdiv.h f8, f30, f13, rdn # perform operation
fdiv.h f8, f30, f13, rmm # perform operation
fdiv.h f8, f30, f13, rne # perform operation
fdiv.h f8, f30, f13, rtz # perform operation
fdiv.h f8, f30, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f30, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f30, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f30, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f30, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f30, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3ff)
li x5, 0x0b5bff0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f15, 0(x2) # load 0x000003ff from memory into f15
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f10, 0(x2) # load 0x000003ff from memory into f10
fdiv.h f5, f15, f10, dyn # perform operation
fdiv.h f5, f15, f10, rdn # perform operation
fdiv.h f5, f15, f10, rmm # perform operation
fdiv.h f5, f15, f10, rne # perform operation
fdiv.h f5, f15, f10, rtz # perform operation
fdiv.h f5, f15, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f15, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f15, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f15, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f15, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f15, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x83ff)
li x6, 0x5190d11a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f11, 0(x2) # load 0x000003ff from memory into f11
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
fdiv.h f6, f11, f20, dyn # perform operation
fdiv.h f6, f11, f20, rdn # perform operation
fdiv.h f6, f11, f20, rmm # perform operation
fdiv.h f6, f11, f20, rne # perform operation
fdiv.h f6, f11, f20, rtz # perform operation
fdiv.h f6, f11, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f11, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f11, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f11, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f11, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f11, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x200)
li x15, 0xc2fe5f86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f13, 0(x2) # load 0x000003ff from memory into f13
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f23, 0(x2) # load 0x00000200 from memory into f23
fdiv.h f15, f13, f23, dyn # perform operation
fdiv.h f15, f13, f23, rdn # perform operation
fdiv.h f15, f13, f23, rmm # perform operation
fdiv.h f15, f13, f23, rne # perform operation
fdiv.h f15, f13, f23, rtz # perform operation
fdiv.h f15, f13, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f13, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f13, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f13, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f13, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f13, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8200)
li x25, 0x830b4d1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f16, 0(x2) # load 0x000003ff from memory into f16
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f21, 0(x2) # load 0x00008200 from memory into f21
fdiv.h f25, f16, f21, dyn # perform operation
fdiv.h f25, f16, f21, rdn # perform operation
fdiv.h f25, f16, f21, rmm # perform operation
fdiv.h f25, f16, f21, rne # perform operation
fdiv.h f25, f16, f21, rtz # perform operation
fdiv.h f25, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f16, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x1)
li x16, 0x658644c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f22, 0(x2) # load 0x00000001 from memory into f22
fdiv.h f16, f21, f22, dyn # perform operation
fdiv.h f16, f21, f22, rdn # perform operation
fdiv.h f16, f21, f22, rmm # perform operation
fdiv.h f16, f21, f22, rne # perform operation
fdiv.h f16, f21, f22, rtz # perform operation
fdiv.h f16, f21, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f21, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f21, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f21, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f21, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f21, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8001)
li x7, 0x2a86871f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f10, 0(x2) # load 0x000003ff from memory into f10
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f21, 0(x2) # load 0x00008001 from memory into f21
fdiv.h f7, f10, f21, dyn # perform operation
fdiv.h f7, f10, f21, rdn # perform operation
fdiv.h f7, f10, f21, rmm # perform operation
fdiv.h f7, f10, f21, rne # perform operation
fdiv.h f7, f10, f21, rtz # perform operation
fdiv.h f7, f10, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f10, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f10, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f10, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f10, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f10, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7c00)
li x6, 0x4cf79c9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f22, 0(x2) # load 0x000003ff from memory into f22
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f26, 0(x2) # load 0x00007c00 from memory into f26
fdiv.h f6, f22, f26, dyn # perform operation
fdiv.h f6, f22, f26, rdn # perform operation
fdiv.h f6, f22, f26, rmm # perform operation
fdiv.h f6, f22, f26, rne # perform operation
fdiv.h f6, f22, f26, rtz # perform operation
fdiv.h f6, f22, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f22, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f22, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f22, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f22, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f22, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfc00)
li x27, 0x47be6a9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f24, 0(x2) # load 0x000003ff from memory into f24
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f16, 0(x2) # load 0x0000fc00 from memory into f16
fdiv.h f27, f24, f16, dyn # perform operation
fdiv.h f27, f24, f16, rdn # perform operation
fdiv.h f27, f24, f16, rmm # perform operation
fdiv.h f27, f24, f16, rne # perform operation
fdiv.h f27, f24, f16, rtz # perform operation
fdiv.h f27, f24, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f24, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f24, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f24, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f24, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f24, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7e00)
li x18, 0x8597f2cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f22, 0(x2) # load 0x00007e00 from memory into f22
fdiv.h f18, f12, f22, dyn # perform operation
fdiv.h f18, f12, f22, rdn # perform operation
fdiv.h f18, f12, f22, rmm # perform operation
fdiv.h f18, f12, f22, rne # perform operation
fdiv.h f18, f12, f22, rtz # perform operation
fdiv.h f18, f12, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f12, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f12, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f12, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f12, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f12, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7fff)
li x17, 0xa8f596b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f7, 0(x2) # load 0x000003ff from memory into f7
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f13, 0(x2) # load 0x00007fff from memory into f13
fdiv.h f17, f7, f13, dyn # perform operation
fdiv.h f17, f7, f13, rdn # perform operation
fdiv.h f17, f7, f13, rmm # perform operation
fdiv.h f17, f7, f13, rne # perform operation
fdiv.h f17, f7, f13, rtz # perform operation
fdiv.h f17, f7, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f7, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f7, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f7, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f7, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f7, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7c01)
li x29, 0xa25dfb35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f30, 0(x2) # load 0x000003ff from memory into f30
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
fdiv.h f29, f30, f28, dyn # perform operation
fdiv.h f29, f30, f28, rdn # perform operation
fdiv.h f29, f30, f28, rmm # perform operation
fdiv.h f29, f30, f28, rne # perform operation
fdiv.h f29, f30, f28, rtz # perform operation
fdiv.h f29, f30, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f30, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f30, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f30, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f30, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f30, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7dff)
li x29, 0x7a09dfae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f14, 0(x2) # load 0x000003ff from memory into f14
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f1, 0(x2) # load 0x00007dff from memory into f1
fdiv.h f29, f14, f1, dyn # perform operation
fdiv.h f29, f14, f1, rdn # perform operation
fdiv.h f29, f14, f1, rmm # perform operation
fdiv.h f29, f14, f1, rne # perform operation
fdiv.h f29, f14, f1, rtz # perform operation
fdiv.h f29, f14, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f14, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f14, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f14, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f14, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f14, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x58b4)
li x5, 0x3e8419bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f1, 0(x2) # load 0x000058b4 from memory into f1
fdiv.h f5, f21, f1, dyn # perform operation
fdiv.h f5, f21, f1, rdn # perform operation
fdiv.h f5, f21, f1, rmm # perform operation
fdiv.h f5, f21, f1, rne # perform operation
fdiv.h f5, f21, f1, rtz # perform operation
fdiv.h f5, f21, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f21, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f21, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f21, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f21, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f21, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xc93a)
li x28, 0x7ea38de6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f20, 0(x2) # load 0x000003ff from memory into f20
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
fdiv.h f28, f20, f21, dyn # perform operation
fdiv.h f28, f20, f21, rdn # perform operation
fdiv.h f28, f20, f21, rmm # perform operation
fdiv.h f28, f20, f21, rne # perform operation
fdiv.h f28, f20, f21, rtz # perform operation
fdiv.h f28, f20, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f20, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f20, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f20, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f20, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f20, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x0)
li x31, 0x93f59fff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
fdiv.h f31, f15, f30, dyn # perform operation
fdiv.h f31, f15, f30, rdn # perform operation
fdiv.h f31, f15, f30, rmm # perform operation
fdiv.h f31, f15, f30, rne # perform operation
fdiv.h f31, f15, f30, rtz # perform operation
fdiv.h f31, f15, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f15, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f15, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f15, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f15, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f15, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8000)
li x11, 0x17e0b4dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
fdiv.h f11, f16, f31, dyn # perform operation
fdiv.h f11, f16, f31, rdn # perform operation
fdiv.h f11, f16, f31, rmm # perform operation
fdiv.h f11, f16, f31, rne # perform operation
fdiv.h f11, f16, f31, rtz # perform operation
fdiv.h f11, f16, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f16, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f16, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f16, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f16, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f16, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3c00)
li x5, 0x084e29ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f9, 0(x2) # load 0x000083ff from memory into f9
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f10, 0(x2) # load 0x00003c00 from memory into f10
fdiv.h f5, f9, f10, dyn # perform operation
fdiv.h f5, f9, f10, rdn # perform operation
fdiv.h f5, f9, f10, rmm # perform operation
fdiv.h f5, f9, f10, rne # perform operation
fdiv.h f5, f9, f10, rtz # perform operation
fdiv.h f5, f9, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f9, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f9, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f9, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f9, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f9, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xbc00)
li x14, 0x7dabd211 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f17, 0(x2) # load 0x000083ff from memory into f17
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f12, 0(x2) # load 0x0000bc00 from memory into f12
fdiv.h f14, f17, f12, dyn # perform operation
fdiv.h f14, f17, f12, rdn # perform operation
fdiv.h f14, f17, f12, rmm # perform operation
fdiv.h f14, f17, f12, rne # perform operation
fdiv.h f14, f17, f12, rtz # perform operation
fdiv.h f14, f17, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f17, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f17, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f17, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f17, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f17, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3e00)
li x16, 0xb0b212a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f3, 0(x2) # load 0x000083ff from memory into f3
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f26, 0(x2) # load 0x00003e00 from memory into f26
fdiv.h f16, f3, f26, dyn # perform operation
fdiv.h f16, f3, f26, rdn # perform operation
fdiv.h f16, f3, f26, rmm # perform operation
fdiv.h f16, f3, f26, rne # perform operation
fdiv.h f16, f3, f26, rtz # perform operation
fdiv.h f16, f3, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f3, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f3, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f3, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f3, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f3, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xbe00)
li x15, 0x4f4ba785 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f30, 0(x2) # load 0x000083ff from memory into f30
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f6, 0(x2) # load 0x0000be00 from memory into f6
fdiv.h f15, f30, f6, dyn # perform operation
fdiv.h f15, f30, f6, rdn # perform operation
fdiv.h f15, f30, f6, rmm # perform operation
fdiv.h f15, f30, f6, rne # perform operation
fdiv.h f15, f30, f6, rtz # perform operation
fdiv.h f15, f30, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f30, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f30, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f30, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f30, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f30, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x4000)
li x11, 0xae0ed0a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f13, 0(x2) # load 0x00004000 from memory into f13
fdiv.h f11, f12, f13, dyn # perform operation
fdiv.h f11, f12, f13, rdn # perform operation
fdiv.h f11, f12, f13, rmm # perform operation
fdiv.h f11, f12, f13, rne # perform operation
fdiv.h f11, f12, f13, rtz # perform operation
fdiv.h f11, f12, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f12, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f12, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f12, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f12, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f12, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xc000)
li x19, 0x1b4cb858 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f2, 0(x2) # load 0x000083ff from memory into f2
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
fdiv.h f19, f2, f26, dyn # perform operation
fdiv.h f19, f2, f26, rdn # perform operation
fdiv.h f19, f2, f26, rmm # perform operation
fdiv.h f19, f2, f26, rne # perform operation
fdiv.h f19, f2, f26, rtz # perform operation
fdiv.h f19, f2, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f2, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f2, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f2, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f2, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f2, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x400)
li x26, 0x89eb6fee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f6, 0(x2) # load 0x00000400 from memory into f6
fdiv.h f26, f8, f6, dyn # perform operation
fdiv.h f26, f8, f6, rdn # perform operation
fdiv.h f26, f8, f6, rmm # perform operation
fdiv.h f26, f8, f6, rne # perform operation
fdiv.h f26, f8, f6, rtz # perform operation
fdiv.h f26, f8, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f8, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f8, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f8, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f8, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f8, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8400)
li x13, 0x0e7ce237 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f6, 0(x2) # load 0x000083ff from memory into f6
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
fdiv.h f13, f6, f29, dyn # perform operation
fdiv.h f13, f6, f29, rdn # perform operation
fdiv.h f13, f6, f29, rmm # perform operation
fdiv.h f13, f6, f29, rne # perform operation
fdiv.h f13, f6, f29, rtz # perform operation
fdiv.h f13, f6, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f6, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f6, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f6, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f6, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f6, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7bff)
li x26, 0x25f60d5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
fdiv.h f26, f10, f30, dyn # perform operation
fdiv.h f26, f10, f30, rdn # perform operation
fdiv.h f26, f10, f30, rmm # perform operation
fdiv.h f26, f10, f30, rne # perform operation
fdiv.h f26, f10, f30, rtz # perform operation
fdiv.h f26, f10, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f10, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f10, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f10, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f10, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f10, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfbff)
li x20, 0xaa0a088d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
fdiv.h f20, f15, f16, dyn # perform operation
fdiv.h f20, f15, f16, rdn # perform operation
fdiv.h f20, f15, f16, rmm # perform operation
fdiv.h f20, f15, f16, rne # perform operation
fdiv.h f20, f15, f16, rtz # perform operation
fdiv.h f20, f15, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f15, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f15, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f15, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f15, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f15, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3ff)
li x1, 0x4092a267 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f5, 0(x2) # load 0x000083ff from memory into f5
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
fdiv.h f1, f5, f2, dyn # perform operation
fdiv.h f1, f5, f2, rdn # perform operation
fdiv.h f1, f5, f2, rmm # perform operation
fdiv.h f1, f5, f2, rne # perform operation
fdiv.h f1, f5, f2, rtz # perform operation
fdiv.h f1, f5, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f5, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f5, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f5, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f5, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f5, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x83ff)
li x27, 0x2c0fc80b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f9, 0(x2) # load 0x000083ff from memory into f9
fdiv.h f27, f13, f9, dyn # perform operation
fdiv.h f27, f13, f9, rdn # perform operation
fdiv.h f27, f13, f9, rmm # perform operation
fdiv.h f27, f13, f9, rne # perform operation
fdiv.h f27, f13, f9, rtz # perform operation
fdiv.h f27, f13, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f13, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f13, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f13, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f13, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f13, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x200)
li x9, 0x9a56791a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f4, 0(x2) # load 0x000083ff from memory into f4
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
fdiv.h f9, f4, f16, dyn # perform operation
fdiv.h f9, f4, f16, rdn # perform operation
fdiv.h f9, f4, f16, rmm # perform operation
fdiv.h f9, f4, f16, rne # perform operation
fdiv.h f9, f4, f16, rtz # perform operation
fdiv.h f9, f4, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f4, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f4, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f4, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f4, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f4, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8200)
li x31, 0x015d5fcc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f6, 0(x2) # load 0x000083ff from memory into f6
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
fdiv.h f31, f6, f25, dyn # perform operation
fdiv.h f31, f6, f25, rdn # perform operation
fdiv.h f31, f6, f25, rmm # perform operation
fdiv.h f31, f6, f25, rne # perform operation
fdiv.h f31, f6, f25, rtz # perform operation
fdiv.h f31, f6, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f6, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f6, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f6, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f6, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f6, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x1)
li x6, 0x7b332848 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f9, 0(x2) # load 0x000083ff from memory into f9
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f2, 0(x2) # load 0x00000001 from memory into f2
fdiv.h f6, f9, f2, dyn # perform operation
fdiv.h f6, f9, f2, rdn # perform operation
fdiv.h f6, f9, f2, rmm # perform operation
fdiv.h f6, f9, f2, rne # perform operation
fdiv.h f6, f9, f2, rtz # perform operation
fdiv.h f6, f9, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f9, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f9, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f9, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f9, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f9, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8001)
li x2, 0x888e03c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f28, 0(x2) # load 0x000083ff from memory into f28
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
fdiv.h f2, f28, f14, dyn # perform operation
fdiv.h f2, f28, f14, rdn # perform operation
fdiv.h f2, f28, f14, rmm # perform operation
fdiv.h f2, f28, f14, rne # perform operation
fdiv.h f2, f28, f14, rtz # perform operation
fdiv.h f2, f28, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f28, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f28, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f28, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f28, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f28, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7c00)
li x17, 0x3eb97af9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
fdiv.h f17, f13, f2, dyn # perform operation
fdiv.h f17, f13, f2, rdn # perform operation
fdiv.h f17, f13, f2, rmm # perform operation
fdiv.h f17, f13, f2, rne # perform operation
fdiv.h f17, f13, f2, rtz # perform operation
fdiv.h f17, f13, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f13, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f13, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f13, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f13, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f13, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfc00)
li x25, 0x4acaf299 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
fdiv.h f25, f16, f22, dyn # perform operation
fdiv.h f25, f16, f22, rdn # perform operation
fdiv.h f25, f16, f22, rmm # perform operation
fdiv.h f25, f16, f22, rne # perform operation
fdiv.h f25, f16, f22, rtz # perform operation
fdiv.h f25, f16, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f16, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f16, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f16, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f16, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f16, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7e00)
li x4, 0x619de88c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f5, 0(x2) # load 0x000083ff from memory into f5
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
fdiv.h f4, f5, f8, dyn # perform operation
fdiv.h f4, f5, f8, rdn # perform operation
fdiv.h f4, f5, f8, rmm # perform operation
fdiv.h f4, f5, f8, rne # perform operation
fdiv.h f4, f5, f8, rtz # perform operation
fdiv.h f4, f5, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f5, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f5, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f5, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f5, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f5, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7fff)
li x16, 0x513aa401 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f21, 0(x2) # load 0x000083ff from memory into f21
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
fdiv.h f16, f21, f24, dyn # perform operation
fdiv.h f16, f21, f24, rdn # perform operation
fdiv.h f16, f21, f24, rmm # perform operation
fdiv.h f16, f21, f24, rne # perform operation
fdiv.h f16, f21, f24, rtz # perform operation
fdiv.h f16, f21, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f21, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f21, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f21, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f21, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f21, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7c01)
li x27, 0x9561be2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
fdiv.h f27, f13, f6, dyn # perform operation
fdiv.h f27, f13, f6, rdn # perform operation
fdiv.h f27, f13, f6, rmm # perform operation
fdiv.h f27, f13, f6, rne # perform operation
fdiv.h f27, f13, f6, rtz # perform operation
fdiv.h f27, f13, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f13, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f13, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f13, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f13, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f13, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7dff)
li x29, 0x100df9cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f31, 0(x2) # load 0x000083ff from memory into f31
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
fdiv.h f29, f31, f21, dyn # perform operation
fdiv.h f29, f31, f21, rdn # perform operation
fdiv.h f29, f31, f21, rmm # perform operation
fdiv.h f29, f31, f21, rne # perform operation
fdiv.h f29, f31, f21, rtz # perform operation
fdiv.h f29, f31, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f31, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f31, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f31, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f31, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f31, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x58b4)
li x9, 0x7ee670f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f4, 0(x2) # load 0x000083ff from memory into f4
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f6, 0(x2) # load 0x000058b4 from memory into f6
fdiv.h f9, f4, f6, dyn # perform operation
fdiv.h f9, f4, f6, rdn # perform operation
fdiv.h f9, f4, f6, rmm # perform operation
fdiv.h f9, f4, f6, rne # perform operation
fdiv.h f9, f4, f6, rtz # perform operation
fdiv.h f9, f4, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f4, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f4, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f4, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f4, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f4, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xc93a)
li x11, 0xcc6b5fc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f3, 0(x2) # load 0x0000c93a from memory into f3
fdiv.h f11, f29, f3, dyn # perform operation
fdiv.h f11, f29, f3, rdn # perform operation
fdiv.h f11, f29, f3, rmm # perform operation
fdiv.h f11, f29, f3, rne # perform operation
fdiv.h f11, f29, f3, rtz # perform operation
fdiv.h f11, f29, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f29, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f29, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f29, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f29, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f29, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x0)
li x16, 0x69722292 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f9, 0(x2) # load 0x00000000 from memory into f9
fdiv.h f16, f22, f9, dyn # perform operation
fdiv.h f16, f22, f9, rdn # perform operation
fdiv.h f16, f22, f9, rmm # perform operation
fdiv.h f16, f22, f9, rne # perform operation
fdiv.h f16, f22, f9, rtz # perform operation
fdiv.h f16, f22, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f22, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f22, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f22, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f22, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f22, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8000)
li x24, 0x0446d756 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
fdiv.h f24, f9, f3, dyn # perform operation
fdiv.h f24, f9, f3, rdn # perform operation
fdiv.h f24, f9, f3, rmm # perform operation
fdiv.h f24, f9, f3, rne # perform operation
fdiv.h f24, f9, f3, rtz # perform operation
fdiv.h f24, f9, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f9, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f9, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f9, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f9, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f9, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3c00)
li x27, 0x7e971b57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f18, 0(x2) # load 0x00000200 from memory into f18
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
fdiv.h f27, f18, f3, dyn # perform operation
fdiv.h f27, f18, f3, rdn # perform operation
fdiv.h f27, f18, f3, rmm # perform operation
fdiv.h f27, f18, f3, rne # perform operation
fdiv.h f27, f18, f3, rtz # perform operation
fdiv.h f27, f18, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f18, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f18, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f18, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f18, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f18, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xbc00)
li x20, 0xb180aa03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f12, 0(x2) # load 0x00000200 from memory into f12
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
fdiv.h f20, f12, f18, dyn # perform operation
fdiv.h f20, f12, f18, rdn # perform operation
fdiv.h f20, f12, f18, rmm # perform operation
fdiv.h f20, f12, f18, rne # perform operation
fdiv.h f20, f12, f18, rtz # perform operation
fdiv.h f20, f12, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f12, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f12, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f12, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f12, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f12, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3e00)
li x26, 0x3f9cc2ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f20, 0(x2) # load 0x00003e00 from memory into f20
fdiv.h f26, f19, f20, dyn # perform operation
fdiv.h f26, f19, f20, rdn # perform operation
fdiv.h f26, f19, f20, rmm # perform operation
fdiv.h f26, f19, f20, rne # perform operation
fdiv.h f26, f19, f20, rtz # perform operation
fdiv.h f26, f19, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f19, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f19, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f19, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f19, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f19, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xbe00)
li x16, 0xbcd4bf32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
fdiv.h f16, f25, f8, dyn # perform operation
fdiv.h f16, f25, f8, rdn # perform operation
fdiv.h f16, f25, f8, rmm # perform operation
fdiv.h f16, f25, f8, rne # perform operation
fdiv.h f16, f25, f8, rtz # perform operation
fdiv.h f16, f25, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f25, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f25, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f25, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f25, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f25, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x4000)
li x3, 0xfc910cdc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f4, 0(x2) # load 0x00000200 from memory into f4
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
fdiv.h f3, f4, f2, dyn # perform operation
fdiv.h f3, f4, f2, rdn # perform operation
fdiv.h f3, f4, f2, rmm # perform operation
fdiv.h f3, f4, f2, rne # perform operation
fdiv.h f3, f4, f2, rtz # perform operation
fdiv.h f3, f4, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f4, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f4, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f4, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f4, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f4, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xc000)
li x3, 0xa1b13fbd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f6, 0(x2) # load 0x00000200 from memory into f6
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
fdiv.h f3, f6, f25, dyn # perform operation
fdiv.h f3, f6, f25, rdn # perform operation
fdiv.h f3, f6, f25, rmm # perform operation
fdiv.h f3, f6, f25, rne # perform operation
fdiv.h f3, f6, f25, rtz # perform operation
fdiv.h f3, f6, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f6, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f6, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f6, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f6, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f6, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x400)
li x3, 0xbb9b7f21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f7, 0(x2) # load 0x00000200 from memory into f7
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f22, 0(x2) # load 0x00000400 from memory into f22
fdiv.h f3, f7, f22, dyn # perform operation
fdiv.h f3, f7, f22, rdn # perform operation
fdiv.h f3, f7, f22, rmm # perform operation
fdiv.h f3, f7, f22, rne # perform operation
fdiv.h f3, f7, f22, rtz # perform operation
fdiv.h f3, f7, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f7, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f7, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f7, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f7, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f7, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8400)
li x31, 0x13ba05cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
fdiv.h f31, f19, f9, dyn # perform operation
fdiv.h f31, f19, f9, rdn # perform operation
fdiv.h f31, f19, f9, rmm # perform operation
fdiv.h f31, f19, f9, rne # perform operation
fdiv.h f31, f19, f9, rtz # perform operation
fdiv.h f31, f19, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f19, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f19, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f19, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f19, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f19, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7bff)
li x4, 0xf41dc553 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f10, 0(x2) # load 0x00000200 from memory into f10
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f9, 0(x2) # load 0x00007bff from memory into f9
fdiv.h f4, f10, f9, dyn # perform operation
fdiv.h f4, f10, f9, rdn # perform operation
fdiv.h f4, f10, f9, rmm # perform operation
fdiv.h f4, f10, f9, rne # perform operation
fdiv.h f4, f10, f9, rtz # perform operation
fdiv.h f4, f10, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f10, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f10, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f10, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f10, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f10, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfbff)
li x11, 0x20053bc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f1, 0(x2) # load 0x00000200 from memory into f1
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f15, 0(x2) # load 0x0000fbff from memory into f15
fdiv.h f11, f1, f15, dyn # perform operation
fdiv.h f11, f1, f15, rdn # perform operation
fdiv.h f11, f1, f15, rmm # perform operation
fdiv.h f11, f1, f15, rne # perform operation
fdiv.h f11, f1, f15, rtz # perform operation
fdiv.h f11, f1, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f1, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f1, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f1, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f1, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f1, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3ff)
li x13, 0x1796dd20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f20, 0(x2) # load 0x00000200 from memory into f20
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f1, 0(x2) # load 0x000003ff from memory into f1
fdiv.h f13, f20, f1, dyn # perform operation
fdiv.h f13, f20, f1, rdn # perform operation
fdiv.h f13, f20, f1, rmm # perform operation
fdiv.h f13, f20, f1, rne # perform operation
fdiv.h f13, f20, f1, rtz # perform operation
fdiv.h f13, f20, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f20, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f20, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f20, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f20, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f20, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x83ff)
li x6, 0xca50ac88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f26, 0(x2) # load 0x000083ff from memory into f26
fdiv.h f6, f24, f26, dyn # perform operation
fdiv.h f6, f24, f26, rdn # perform operation
fdiv.h f6, f24, f26, rmm # perform operation
fdiv.h f6, f24, f26, rne # perform operation
fdiv.h f6, f24, f26, rtz # perform operation
fdiv.h f6, f24, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f24, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f24, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f24, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f24, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f24, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x200)
li x31, 0x3d133642 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
fdiv.h f31, f22, f5, dyn # perform operation
fdiv.h f31, f22, f5, rdn # perform operation
fdiv.h f31, f22, f5, rmm # perform operation
fdiv.h f31, f22, f5, rne # perform operation
fdiv.h f31, f22, f5, rtz # perform operation
fdiv.h f31, f22, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f22, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f22, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f22, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f22, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f22, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8200)
li x27, 0x95776af3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f13, 0(x2) # load 0x00008200 from memory into f13
fdiv.h f27, f15, f13, dyn # perform operation
fdiv.h f27, f15, f13, rdn # perform operation
fdiv.h f27, f15, f13, rmm # perform operation
fdiv.h f27, f15, f13, rne # perform operation
fdiv.h f27, f15, f13, rtz # perform operation
fdiv.h f27, f15, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f15, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f15, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f15, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f15, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f15, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x1)
li x8, 0xf0885807 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f27, 0(x2) # load 0x00000200 from memory into f27
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
fdiv.h f8, f27, f11, dyn # perform operation
fdiv.h f8, f27, f11, rdn # perform operation
fdiv.h f8, f27, f11, rmm # perform operation
fdiv.h f8, f27, f11, rne # perform operation
fdiv.h f8, f27, f11, rtz # perform operation
fdiv.h f8, f27, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f27, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f27, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f27, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f27, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f27, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8001)
li x23, 0x93f9f679 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f1, 0(x2) # load 0x00000200 from memory into f1
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
fdiv.h f23, f1, f11, dyn # perform operation
fdiv.h f23, f1, f11, rdn # perform operation
fdiv.h f23, f1, f11, rmm # perform operation
fdiv.h f23, f1, f11, rne # perform operation
fdiv.h f23, f1, f11, rtz # perform operation
fdiv.h f23, f1, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f1, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f1, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f1, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f1, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f1, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7c00)
li x9, 0xdac424ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f26, 0(x2) # load 0x00000200 from memory into f26
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f27, 0(x2) # load 0x00007c00 from memory into f27
fdiv.h f9, f26, f27, dyn # perform operation
fdiv.h f9, f26, f27, rdn # perform operation
fdiv.h f9, f26, f27, rmm # perform operation
fdiv.h f9, f26, f27, rne # perform operation
fdiv.h f9, f26, f27, rtz # perform operation
fdiv.h f9, f26, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f26, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f26, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f26, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f26, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f26, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfc00)
li x18, 0x84eed448 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f19, 0(x2) # load 0x0000fc00 from memory into f19
fdiv.h f18, f24, f19, dyn # perform operation
fdiv.h f18, f24, f19, rdn # perform operation
fdiv.h f18, f24, f19, rmm # perform operation
fdiv.h f18, f24, f19, rne # perform operation
fdiv.h f18, f24, f19, rtz # perform operation
fdiv.h f18, f24, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f24, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f24, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f24, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f24, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f24, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7e00)
li x10, 0x31a93ff7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f4, 0(x2) # load 0x00007e00 from memory into f4
fdiv.h f10, f22, f4, dyn # perform operation
fdiv.h f10, f22, f4, rdn # perform operation
fdiv.h f10, f22, f4, rmm # perform operation
fdiv.h f10, f22, f4, rne # perform operation
fdiv.h f10, f22, f4, rtz # perform operation
fdiv.h f10, f22, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f22, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f22, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f22, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f22, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f22, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7fff)
li x28, 0x66b601b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f2, 0(x2) # load 0x00000200 from memory into f2
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
fdiv.h f28, f2, f27, dyn # perform operation
fdiv.h f28, f2, f27, rdn # perform operation
fdiv.h f28, f2, f27, rmm # perform operation
fdiv.h f28, f2, f27, rne # perform operation
fdiv.h f28, f2, f27, rtz # perform operation
fdiv.h f28, f2, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f2, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f2, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f2, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f2, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f2, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7c01)
li x12, 0xc7d3111c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
fdiv.h f12, f13, f31, dyn # perform operation
fdiv.h f12, f13, f31, rdn # perform operation
fdiv.h f12, f13, f31, rmm # perform operation
fdiv.h f12, f13, f31, rne # perform operation
fdiv.h f12, f13, f31, rtz # perform operation
fdiv.h f12, f13, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f13, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f13, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f13, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f13, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f13, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7dff)
li x2, 0x61cbf8b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f20, 0(x2) # load 0x00000200 from memory into f20
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f10, 0(x2) # load 0x00007dff from memory into f10
fdiv.h f2, f20, f10, dyn # perform operation
fdiv.h f2, f20, f10, rdn # perform operation
fdiv.h f2, f20, f10, rmm # perform operation
fdiv.h f2, f20, f10, rne # perform operation
fdiv.h f2, f20, f10, rtz # perform operation
fdiv.h f2, f20, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f20, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f20, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f20, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f20, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f20, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x58b4)
li x22, 0x72ed6ced # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f28, 0(x2) # load 0x000058b4 from memory into f28
fdiv.h f22, f19, f28, dyn # perform operation
fdiv.h f22, f19, f28, rdn # perform operation
fdiv.h f22, f19, f28, rmm # perform operation
fdiv.h f22, f19, f28, rne # perform operation
fdiv.h f22, f19, f28, rtz # perform operation
fdiv.h f22, f19, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f19, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f19, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f19, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f19, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f19, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xc93a)
li x7, 0x340683f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f14, 0(x2) # load 0x0000c93a from memory into f14
fdiv.h f7, f13, f14, dyn # perform operation
fdiv.h f7, f13, f14, rdn # perform operation
fdiv.h f7, f13, f14, rmm # perform operation
fdiv.h f7, f13, f14, rne # perform operation
fdiv.h f7, f13, f14, rtz # perform operation
fdiv.h f7, f13, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f13, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f13, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f13, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f13, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f13, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x0)
li x22, 0xc664254d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f8, 0(x2) # load 0x00008200 from memory into f8
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f17, 0(x2) # load 0x00000000 from memory into f17
fdiv.h f22, f8, f17, dyn # perform operation
fdiv.h f22, f8, f17, rdn # perform operation
fdiv.h f22, f8, f17, rmm # perform operation
fdiv.h f22, f8, f17, rne # perform operation
fdiv.h f22, f8, f17, rtz # perform operation
fdiv.h f22, f8, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f8, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f8, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f8, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f8, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f8, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8000)
li x22, 0x2d73073d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f5, 0(x2) # load 0x00008200 from memory into f5
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f28, 0(x2) # load 0x00008000 from memory into f28
fdiv.h f22, f5, f28, dyn # perform operation
fdiv.h f22, f5, f28, rdn # perform operation
fdiv.h f22, f5, f28, rmm # perform operation
fdiv.h f22, f5, f28, rne # perform operation
fdiv.h f22, f5, f28, rtz # perform operation
fdiv.h f22, f5, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f5, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f5, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f5, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f5, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f5, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3c00)
li x6, 0x95d75754 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
fdiv.h f6, f2, f30, dyn # perform operation
fdiv.h f6, f2, f30, rdn # perform operation
fdiv.h f6, f2, f30, rmm # perform operation
fdiv.h f6, f2, f30, rne # perform operation
fdiv.h f6, f2, f30, rtz # perform operation
fdiv.h f6, f2, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f2, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f2, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f2, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f2, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f2, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xbc00)
li x6, 0x4a0c3c0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f11, 0(x2) # load 0x00008200 from memory into f11
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f13, 0(x2) # load 0x0000bc00 from memory into f13
fdiv.h f6, f11, f13, dyn # perform operation
fdiv.h f6, f11, f13, rdn # perform operation
fdiv.h f6, f11, f13, rmm # perform operation
fdiv.h f6, f11, f13, rne # perform operation
fdiv.h f6, f11, f13, rtz # perform operation
fdiv.h f6, f11, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f11, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f11, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f11, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f11, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f11, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3e00)
li x3, 0x116f31dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
fdiv.h f3, f14, f7, dyn # perform operation
fdiv.h f3, f14, f7, rdn # perform operation
fdiv.h f3, f14, f7, rmm # perform operation
fdiv.h f3, f14, f7, rne # perform operation
fdiv.h f3, f14, f7, rtz # perform operation
fdiv.h f3, f14, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f14, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f14, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f14, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f14, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f14, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xbe00)
li x7, 0x0eeed3d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
fdiv.h f7, f1, f18, dyn # perform operation
fdiv.h f7, f1, f18, rdn # perform operation
fdiv.h f7, f1, f18, rmm # perform operation
fdiv.h f7, f1, f18, rne # perform operation
fdiv.h f7, f1, f18, rtz # perform operation
fdiv.h f7, f1, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f1, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f1, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f1, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f1, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f1, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x4000)
li x7, 0x186647d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f29, 0(x2) # load 0x00008200 from memory into f29
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f13, 0(x2) # load 0x00004000 from memory into f13
fdiv.h f7, f29, f13, dyn # perform operation
fdiv.h f7, f29, f13, rdn # perform operation
fdiv.h f7, f29, f13, rmm # perform operation
fdiv.h f7, f29, f13, rne # perform operation
fdiv.h f7, f29, f13, rtz # perform operation
fdiv.h f7, f29, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f29, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f29, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f29, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f29, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f29, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xc000)
li x10, 0x996a31ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f4, 0(x2) # load 0x00008200 from memory into f4
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
fdiv.h f10, f4, f24, dyn # perform operation
fdiv.h f10, f4, f24, rdn # perform operation
fdiv.h f10, f4, f24, rmm # perform operation
fdiv.h f10, f4, f24, rne # perform operation
fdiv.h f10, f4, f24, rtz # perform operation
fdiv.h f10, f4, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f4, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f4, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f4, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f4, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f4, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x400)
li x2, 0xd9c5fe88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f26, 0(x2) # load 0x00000400 from memory into f26
fdiv.h f2, f25, f26, dyn # perform operation
fdiv.h f2, f25, f26, rdn # perform operation
fdiv.h f2, f25, f26, rmm # perform operation
fdiv.h f2, f25, f26, rne # perform operation
fdiv.h f2, f25, f26, rtz # perform operation
fdiv.h f2, f25, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f25, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f25, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f25, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f25, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f25, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8400)
li x7, 0xae449763 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f3, 0(x2) # load 0x00008200 from memory into f3
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f5, 0(x2) # load 0x00008400 from memory into f5
fdiv.h f7, f3, f5, dyn # perform operation
fdiv.h f7, f3, f5, rdn # perform operation
fdiv.h f7, f3, f5, rmm # perform operation
fdiv.h f7, f3, f5, rne # perform operation
fdiv.h f7, f3, f5, rtz # perform operation
fdiv.h f7, f3, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f3, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f3, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f3, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f3, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f3, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7bff)
li x31, 0xf2b3297b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f8, 0(x2) # load 0x00008200 from memory into f8
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f25, 0(x2) # load 0x00007bff from memory into f25
fdiv.h f31, f8, f25, dyn # perform operation
fdiv.h f31, f8, f25, rdn # perform operation
fdiv.h f31, f8, f25, rmm # perform operation
fdiv.h f31, f8, f25, rne # perform operation
fdiv.h f31, f8, f25, rtz # perform operation
fdiv.h f31, f8, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f8, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f8, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f8, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f8, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f8, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfbff)
li x23, 0x74a45102 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
fdiv.h f23, f14, f17, dyn # perform operation
fdiv.h f23, f14, f17, rdn # perform operation
fdiv.h f23, f14, f17, rmm # perform operation
fdiv.h f23, f14, f17, rne # perform operation
fdiv.h f23, f14, f17, rtz # perform operation
fdiv.h f23, f14, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f14, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f14, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f14, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f14, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f14, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3ff)
li x16, 0x13bf2329 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f19, 0(x2) # load 0x00008200 from memory into f19
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
fdiv.h f16, f19, f21, dyn # perform operation
fdiv.h f16, f19, f21, rdn # perform operation
fdiv.h f16, f19, f21, rmm # perform operation
fdiv.h f16, f19, f21, rne # perform operation
fdiv.h f16, f19, f21, rtz # perform operation
fdiv.h f16, f19, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f19, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f19, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f19, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f19, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f19, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x83ff)
li x1, 0x4057ccf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
fdiv.h f1, f23, f15, dyn # perform operation
fdiv.h f1, f23, f15, rdn # perform operation
fdiv.h f1, f23, f15, rmm # perform operation
fdiv.h f1, f23, f15, rne # perform operation
fdiv.h f1, f23, f15, rtz # perform operation
fdiv.h f1, f23, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f23, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f23, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f23, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f23, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f23, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x200)
li x22, 0x0ea5dce4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f12, 0(x2) # load 0x00008200 from memory into f12
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
fdiv.h f22, f12, f16, dyn # perform operation
fdiv.h f22, f12, f16, rdn # perform operation
fdiv.h f22, f12, f16, rmm # perform operation
fdiv.h f22, f12, f16, rne # perform operation
fdiv.h f22, f12, f16, rtz # perform operation
fdiv.h f22, f12, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f12, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f12, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f12, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f12, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f12, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8200)
li x12, 0x4ea0f760 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f27, 0(x2) # load 0x00008200 from memory into f27
fdiv.h f12, f2, f27, dyn # perform operation
fdiv.h f12, f2, f27, rdn # perform operation
fdiv.h f12, f2, f27, rmm # perform operation
fdiv.h f12, f2, f27, rne # perform operation
fdiv.h f12, f2, f27, rtz # perform operation
fdiv.h f12, f2, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f2, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f2, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f2, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f2, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f2, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x1)
li x2, 0xe7f8b27e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f3, 0(x2) # load 0x00008200 from memory into f3
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
fdiv.h f2, f3, f26, dyn # perform operation
fdiv.h f2, f3, f26, rdn # perform operation
fdiv.h f2, f3, f26, rmm # perform operation
fdiv.h f2, f3, f26, rne # perform operation
fdiv.h f2, f3, f26, rtz # perform operation
fdiv.h f2, f3, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f3, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f3, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f3, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f3, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f3, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8001)
li x29, 0x43aeb267 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f20, 0(x2) # load 0x00008001 from memory into f20
fdiv.h f29, f1, f20, dyn # perform operation
fdiv.h f29, f1, f20, rdn # perform operation
fdiv.h f29, f1, f20, rmm # perform operation
fdiv.h f29, f1, f20, rne # perform operation
fdiv.h f29, f1, f20, rtz # perform operation
fdiv.h f29, f1, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f1, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f1, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f1, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f1, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f1, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7c00)
li x26, 0x01860a3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f5, 0(x2) # load 0x00007c00 from memory into f5
fdiv.h f26, f15, f5, dyn # perform operation
fdiv.h f26, f15, f5, rdn # perform operation
fdiv.h f26, f15, f5, rmm # perform operation
fdiv.h f26, f15, f5, rne # perform operation
fdiv.h f26, f15, f5, rtz # perform operation
fdiv.h f26, f15, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f15, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f15, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f15, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f15, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f15, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfc00)
li x20, 0x11419da1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f30, 0(x2) # load 0x0000fc00 from memory into f30
fdiv.h f20, f15, f30, dyn # perform operation
fdiv.h f20, f15, f30, rdn # perform operation
fdiv.h f20, f15, f30, rmm # perform operation
fdiv.h f20, f15, f30, rne # perform operation
fdiv.h f20, f15, f30, rtz # perform operation
fdiv.h f20, f15, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f15, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f15, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f15, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f15, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f15, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7e00)
li x5, 0x24102c55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f3, 0(x2) # load 0x00008200 from memory into f3
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f26, 0(x2) # load 0x00007e00 from memory into f26
fdiv.h f5, f3, f26, dyn # perform operation
fdiv.h f5, f3, f26, rdn # perform operation
fdiv.h f5, f3, f26, rmm # perform operation
fdiv.h f5, f3, f26, rne # perform operation
fdiv.h f5, f3, f26, rtz # perform operation
fdiv.h f5, f3, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f3, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f3, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f3, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f3, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f3, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7fff)
li x9, 0xd7fed11c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
fdiv.h f9, f20, f12, dyn # perform operation
fdiv.h f9, f20, f12, rdn # perform operation
fdiv.h f9, f20, f12, rmm # perform operation
fdiv.h f9, f20, f12, rne # perform operation
fdiv.h f9, f20, f12, rtz # perform operation
fdiv.h f9, f20, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f20, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f20, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f20, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f20, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f20, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7c01)
li x29, 0x93d0351a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f22, 0(x2) # load 0x00008200 from memory into f22
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f30, 0(x2) # load 0x00007c01 from memory into f30
fdiv.h f29, f22, f30, dyn # perform operation
fdiv.h f29, f22, f30, rdn # perform operation
fdiv.h f29, f22, f30, rmm # perform operation
fdiv.h f29, f22, f30, rne # perform operation
fdiv.h f29, f22, f30, rtz # perform operation
fdiv.h f29, f22, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f22, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f22, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f22, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f22, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f22, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7dff)
li x18, 0xe8a34f12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f5, 0(x2) # load 0x00008200 from memory into f5
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f15, 0(x2) # load 0x00007dff from memory into f15
fdiv.h f18, f5, f15, dyn # perform operation
fdiv.h f18, f5, f15, rdn # perform operation
fdiv.h f18, f5, f15, rmm # perform operation
fdiv.h f18, f5, f15, rne # perform operation
fdiv.h f18, f5, f15, rtz # perform operation
fdiv.h f18, f5, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f5, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f5, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f5, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f5, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f5, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x58b4)
li x12, 0x5853a901 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f13, 0(x2) # load 0x00008200 from memory into f13
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f19, 0(x2) # load 0x000058b4 from memory into f19
fdiv.h f12, f13, f19, dyn # perform operation
fdiv.h f12, f13, f19, rdn # perform operation
fdiv.h f12, f13, f19, rmm # perform operation
fdiv.h f12, f13, f19, rne # perform operation
fdiv.h f12, f13, f19, rtz # perform operation
fdiv.h f12, f13, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f13, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f13, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f13, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f13, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f13, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xc93a)
li x1, 0xc88a8e8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f19, 0(x2) # load 0x00008200 from memory into f19
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f5, 0(x2) # load 0x0000c93a from memory into f5
fdiv.h f1, f19, f5, dyn # perform operation
fdiv.h f1, f19, f5, rdn # perform operation
fdiv.h f1, f19, f5, rmm # perform operation
fdiv.h f1, f19, f5, rne # perform operation
fdiv.h f1, f19, f5, rtz # perform operation
fdiv.h f1, f19, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f19, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f19, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f19, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f19, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f19, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
li x18, 0xd605426e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
fdiv.h f18, f20, f27, dyn # perform operation
fdiv.h f18, f20, f27, rdn # perform operation
fdiv.h f18, f20, f27, rmm # perform operation
fdiv.h f18, f20, f27, rne # perform operation
fdiv.h f18, f20, f27, rtz # perform operation
fdiv.h f18, f20, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f20, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f20, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f20, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f20, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f20, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000)
li x3, 0x90db41f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f29, 0(x2) # load 0x00000001 from memory into f29
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f24, 0(x2) # load 0x00008000 from memory into f24
fdiv.h f3, f29, f24, dyn # perform operation
fdiv.h f3, f29, f24, rdn # perform operation
fdiv.h f3, f29, f24, rmm # perform operation
fdiv.h f3, f29, f24, rne # perform operation
fdiv.h f3, f29, f24, rtz # perform operation
fdiv.h f3, f29, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f29, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f29, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f29, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f29, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f29, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3c00)
li x30, 0xbd8afa60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f2, 0(x2) # load 0x00000001 from memory into f2
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
fdiv.h f30, f2, f27, dyn # perform operation
fdiv.h f30, f2, f27, rdn # perform operation
fdiv.h f30, f2, f27, rmm # perform operation
fdiv.h f30, f2, f27, rne # perform operation
fdiv.h f30, f2, f27, rtz # perform operation
fdiv.h f30, f2, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f2, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f2, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f2, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f2, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f2, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbc00)
li x28, 0xedeaf61f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f11, 0(x2) # load 0x0000bc00 from memory into f11
fdiv.h f28, f24, f11, dyn # perform operation
fdiv.h f28, f24, f11, rdn # perform operation
fdiv.h f28, f24, f11, rmm # perform operation
fdiv.h f28, f24, f11, rne # perform operation
fdiv.h f28, f24, f11, rtz # perform operation
fdiv.h f28, f24, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f24, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f24, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f24, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f24, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f24, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3e00)
li x2, 0x20052b49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f22, 0(x2) # load 0x00003e00 from memory into f22
fdiv.h f2, f26, f22, dyn # perform operation
fdiv.h f2, f26, f22, rdn # perform operation
fdiv.h f2, f26, f22, rmm # perform operation
fdiv.h f2, f26, f22, rne # perform operation
fdiv.h f2, f26, f22, rtz # perform operation
fdiv.h f2, f26, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f26, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f26, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f26, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f26, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f26, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbe00)
li x8, 0x4bbfb5f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f15, 0(x2) # load 0x00000001 from memory into f15
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f9, 0(x2) # load 0x0000be00 from memory into f9
fdiv.h f8, f15, f9, dyn # perform operation
fdiv.h f8, f15, f9, rdn # perform operation
fdiv.h f8, f15, f9, rmm # perform operation
fdiv.h f8, f15, f9, rne # perform operation
fdiv.h f8, f15, f9, rtz # perform operation
fdiv.h f8, f15, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f15, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f15, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f15, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f15, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f15, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x4000)
li x4, 0xe5300fd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f3, 0(x2) # load 0x00000001 from memory into f3
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
fdiv.h f4, f3, f22, dyn # perform operation
fdiv.h f4, f3, f22, rdn # perform operation
fdiv.h f4, f3, f22, rmm # perform operation
fdiv.h f4, f3, f22, rne # perform operation
fdiv.h f4, f3, f22, rtz # perform operation
fdiv.h f4, f3, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f3, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f3, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f3, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f3, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f3, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc000)
li x21, 0x1f628965 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f29, 0(x2) # load 0x00000001 from memory into f29
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
fdiv.h f21, f29, f17, dyn # perform operation
fdiv.h f21, f29, f17, rdn # perform operation
fdiv.h f21, f29, f17, rmm # perform operation
fdiv.h f21, f29, f17, rne # perform operation
fdiv.h f21, f29, f17, rtz # perform operation
fdiv.h f21, f29, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f29, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f29, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f29, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f29, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f29, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x400)
li x25, 0xf88bbafb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f3, 0(x2) # load 0x00000001 from memory into f3
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
fdiv.h f25, f3, f14, dyn # perform operation
fdiv.h f25, f3, f14, rdn # perform operation
fdiv.h f25, f3, f14, rmm # perform operation
fdiv.h f25, f3, f14, rne # perform operation
fdiv.h f25, f3, f14, rtz # perform operation
fdiv.h f25, f3, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f3, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f3, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f3, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f3, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f3, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8400)
li x13, 0x56c9b72a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
fdiv.h f13, f11, f6, dyn # perform operation
fdiv.h f13, f11, f6, rdn # perform operation
fdiv.h f13, f11, f6, rmm # perform operation
fdiv.h f13, f11, f6, rne # perform operation
fdiv.h f13, f11, f6, rtz # perform operation
fdiv.h f13, f11, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f11, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f11, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f11, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f11, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f11, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7bff)
li x5, 0x7a1f2cea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f22, 0(x2) # load 0x00000001 from memory into f22
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
fdiv.h f5, f22, f2, dyn # perform operation
fdiv.h f5, f22, f2, rdn # perform operation
fdiv.h f5, f22, f2, rmm # perform operation
fdiv.h f5, f22, f2, rne # perform operation
fdiv.h f5, f22, f2, rtz # perform operation
fdiv.h f5, f22, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f22, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f22, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f22, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f22, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f22, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfbff)
li x6, 0xb194b154 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f23, 0(x2) # load 0x00000001 from memory into f23
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
fdiv.h f6, f23, f14, dyn # perform operation
fdiv.h f6, f23, f14, rdn # perform operation
fdiv.h f6, f23, f14, rmm # perform operation
fdiv.h f6, f23, f14, rne # perform operation
fdiv.h f6, f23, f14, rtz # perform operation
fdiv.h f6, f23, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f23, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f23, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f23, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f23, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f23, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3ff)
li x23, 0x4eb4a9e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f4, 0(x2) # load 0x00000001 from memory into f4
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
fdiv.h f23, f4, f2, dyn # perform operation
fdiv.h f23, f4, f2, rdn # perform operation
fdiv.h f23, f4, f2, rmm # perform operation
fdiv.h f23, f4, f2, rne # perform operation
fdiv.h f23, f4, f2, rtz # perform operation
fdiv.h f23, f4, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f4, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f4, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f4, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f4, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f4, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x83ff)
li x22, 0x59fed19e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f7, 0(x2) # load 0x00000001 from memory into f7
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f4, 0(x2) # load 0x000083ff from memory into f4
fdiv.h f22, f7, f4, dyn # perform operation
fdiv.h f22, f7, f4, rdn # perform operation
fdiv.h f22, f7, f4, rmm # perform operation
fdiv.h f22, f7, f4, rne # perform operation
fdiv.h f22, f7, f4, rtz # perform operation
fdiv.h f22, f7, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f7, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f7, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f7, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f7, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f7, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x200)
li x28, 0x61e93ac3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f29, 0(x2) # load 0x00000001 from memory into f29
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
fdiv.h f28, f29, f24, dyn # perform operation
fdiv.h f28, f29, f24, rdn # perform operation
fdiv.h f28, f29, f24, rmm # perform operation
fdiv.h f28, f29, f24, rne # perform operation
fdiv.h f28, f29, f24, rtz # perform operation
fdiv.h f28, f29, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f29, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f29, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f29, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f29, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f29, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8200)
li x28, 0x8c3dc06e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f22, 0(x2) # load 0x00000001 from memory into f22
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f29, 0(x2) # load 0x00008200 from memory into f29
fdiv.h f28, f22, f29, dyn # perform operation
fdiv.h f28, f22, f29, rdn # perform operation
fdiv.h f28, f22, f29, rmm # perform operation
fdiv.h f28, f22, f29, rne # perform operation
fdiv.h f28, f22, f29, rtz # perform operation
fdiv.h f28, f22, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f22, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f22, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f22, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f22, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f22, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
li x1, 0x2a5882e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f2, 0(x2) # load 0x00000001 from memory into f2
fdiv.h f1, f31, f2, dyn # perform operation
fdiv.h f1, f31, f2, rdn # perform operation
fdiv.h f1, f31, f2, rmm # perform operation
fdiv.h f1, f31, f2, rne # perform operation
fdiv.h f1, f31, f2, rtz # perform operation
fdiv.h f1, f31, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f31, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f31, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f31, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f31, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f31, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8001)
li x5, 0x3b89c8e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f30, 0(x2) # load 0x00000001 from memory into f30
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
fdiv.h f5, f30, f15, dyn # perform operation
fdiv.h f5, f30, f15, rdn # perform operation
fdiv.h f5, f30, f15, rmm # perform operation
fdiv.h f5, f30, f15, rne # perform operation
fdiv.h f5, f30, f15, rtz # perform operation
fdiv.h f5, f30, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f30, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f30, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f30, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f30, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f30, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7c00)
li x2, 0x784436b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f10, 0(x2) # load 0x00000001 from memory into f10
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f20, 0(x2) # load 0x00007c00 from memory into f20
fdiv.h f2, f10, f20, dyn # perform operation
fdiv.h f2, f10, f20, rdn # perform operation
fdiv.h f2, f10, f20, rmm # perform operation
fdiv.h f2, f10, f20, rne # perform operation
fdiv.h f2, f10, f20, rtz # perform operation
fdiv.h f2, f10, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f10, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f10, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f10, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f10, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f10, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfc00)
li x3, 0xc17001b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f5, 0(x2) # load 0x00000001 from memory into f5
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
fdiv.h f3, f5, f31, dyn # perform operation
fdiv.h f3, f5, f31, rdn # perform operation
fdiv.h f3, f5, f31, rmm # perform operation
fdiv.h f3, f5, f31, rne # perform operation
fdiv.h f3, f5, f31, rtz # perform operation
fdiv.h f3, f5, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f5, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f5, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f5, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f5, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f5, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7e00)
li x12, 0x0c0929d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f11, 0(x2) # load 0x00007e00 from memory into f11
fdiv.h f12, f27, f11, dyn # perform operation
fdiv.h f12, f27, f11, rdn # perform operation
fdiv.h f12, f27, f11, rmm # perform operation
fdiv.h f12, f27, f11, rne # perform operation
fdiv.h f12, f27, f11, rtz # perform operation
fdiv.h f12, f27, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f27, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f27, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f27, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f27, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f27, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fff)
li x27, 0x4eb8498b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f18, 0(x2) # load 0x00000001 from memory into f18
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f26, 0(x2) # load 0x00007fff from memory into f26
fdiv.h f27, f18, f26, dyn # perform operation
fdiv.h f27, f18, f26, rdn # perform operation
fdiv.h f27, f18, f26, rmm # perform operation
fdiv.h f27, f18, f26, rne # perform operation
fdiv.h f27, f18, f26, rtz # perform operation
fdiv.h f27, f18, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f18, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f18, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f18, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f18, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f18, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7c01)
li x31, 0xe403a510 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f7, 0(x2) # load 0x00000001 from memory into f7
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f27, 0(x2) # load 0x00007c01 from memory into f27
fdiv.h f31, f7, f27, dyn # perform operation
fdiv.h f31, f7, f27, rdn # perform operation
fdiv.h f31, f7, f27, rmm # perform operation
fdiv.h f31, f7, f27, rne # perform operation
fdiv.h f31, f7, f27, rtz # perform operation
fdiv.h f31, f7, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f7, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f7, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f7, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f7, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f7, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7dff)
li x27, 0xa9f81e6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f8, 0(x2) # load 0x00007dff from memory into f8
fdiv.h f27, f24, f8, dyn # perform operation
fdiv.h f27, f24, f8, rdn # perform operation
fdiv.h f27, f24, f8, rmm # perform operation
fdiv.h f27, f24, f8, rne # perform operation
fdiv.h f27, f24, f8, rtz # perform operation
fdiv.h f27, f24, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f24, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f24, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f24, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f24, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f24, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x58b4)
li x20, 0xd01349a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f1, 0(x2) # load 0x00000001 from memory into f1
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
fdiv.h f20, f1, f3, dyn # perform operation
fdiv.h f20, f1, f3, rdn # perform operation
fdiv.h f20, f1, f3, rmm # perform operation
fdiv.h f20, f1, f3, rne # perform operation
fdiv.h f20, f1, f3, rtz # perform operation
fdiv.h f20, f1, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f1, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f1, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f1, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f1, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f1, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc93a)
li x29, 0xa726c9b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f7, 0(x2) # load 0x00000001 from memory into f7
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f28, 0(x2) # load 0x0000c93a from memory into f28
fdiv.h f29, f7, f28, dyn # perform operation
fdiv.h f29, f7, f28, rdn # perform operation
fdiv.h f29, f7, f28, rmm # perform operation
fdiv.h f29, f7, f28, rne # perform operation
fdiv.h f29, f7, f28, rtz # perform operation
fdiv.h f29, f7, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f7, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f7, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f7, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f7, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f7, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x0)
li x20, 0x4c6da3f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f26, 0(x2) # load 0x00008001 from memory into f26
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f8, 0(x2) # load 0x00000000 from memory into f8
fdiv.h f20, f26, f8, dyn # perform operation
fdiv.h f20, f26, f8, rdn # perform operation
fdiv.h f20, f26, f8, rmm # perform operation
fdiv.h f20, f26, f8, rne # perform operation
fdiv.h f20, f26, f8, rtz # perform operation
fdiv.h f20, f26, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f26, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f26, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f26, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f26, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f26, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8000)
li x1, 0xe0381aa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f19, 0(x2) # load 0x00008001 from memory into f19
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f16, 0(x2) # load 0x00008000 from memory into f16
fdiv.h f1, f19, f16, dyn # perform operation
fdiv.h f1, f19, f16, rdn # perform operation
fdiv.h f1, f19, f16, rmm # perform operation
fdiv.h f1, f19, f16, rne # perform operation
fdiv.h f1, f19, f16, rtz # perform operation
fdiv.h f1, f19, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f19, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f19, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f19, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f19, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f19, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3c00)
li x5, 0x28322128 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f8, 0(x2) # load 0x00008001 from memory into f8
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f1, 0(x2) # load 0x00003c00 from memory into f1
fdiv.h f5, f8, f1, dyn # perform operation
fdiv.h f5, f8, f1, rdn # perform operation
fdiv.h f5, f8, f1, rmm # perform operation
fdiv.h f5, f8, f1, rne # perform operation
fdiv.h f5, f8, f1, rtz # perform operation
fdiv.h f5, f8, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f8, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f8, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f8, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f8, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f8, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xbc00)
li x4, 0x5c8c6164 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f30, 0(x2) # load 0x00008001 from memory into f30
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
fdiv.h f4, f30, f14, dyn # perform operation
fdiv.h f4, f30, f14, rdn # perform operation
fdiv.h f4, f30, f14, rmm # perform operation
fdiv.h f4, f30, f14, rne # perform operation
fdiv.h f4, f30, f14, rtz # perform operation
fdiv.h f4, f30, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f30, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f30, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f30, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f30, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f30, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3e00)
li x2, 0xd93f8a55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f9, 0(x2) # load 0x00003e00 from memory into f9
fdiv.h f2, f23, f9, dyn # perform operation
fdiv.h f2, f23, f9, rdn # perform operation
fdiv.h f2, f23, f9, rmm # perform operation
fdiv.h f2, f23, f9, rne # perform operation
fdiv.h f2, f23, f9, rtz # perform operation
fdiv.h f2, f23, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f23, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f23, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f23, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f23, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f23, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xbe00)
li x21, 0x50c6891a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f29, 0(x2) # load 0x0000be00 from memory into f29
fdiv.h f21, f23, f29, dyn # perform operation
fdiv.h f21, f23, f29, rdn # perform operation
fdiv.h f21, f23, f29, rmm # perform operation
fdiv.h f21, f23, f29, rne # perform operation
fdiv.h f21, f23, f29, rtz # perform operation
fdiv.h f21, f23, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f23, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f23, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f23, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f23, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f23, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x4000)
li x2, 0xd2e15588 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f28, 0(x2) # load 0x00008001 from memory into f28
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
fdiv.h f2, f28, f25, dyn # perform operation
fdiv.h f2, f28, f25, rdn # perform operation
fdiv.h f2, f28, f25, rmm # perform operation
fdiv.h f2, f28, f25, rne # perform operation
fdiv.h f2, f28, f25, rtz # perform operation
fdiv.h f2, f28, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f28, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f28, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f28, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f28, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f28, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xc000)
li x21, 0x06ed273f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f27, 0(x2) # load 0x00008001 from memory into f27
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
fdiv.h f21, f27, f5, dyn # perform operation
fdiv.h f21, f27, f5, rdn # perform operation
fdiv.h f21, f27, f5, rmm # perform operation
fdiv.h f21, f27, f5, rne # perform operation
fdiv.h f21, f27, f5, rtz # perform operation
fdiv.h f21, f27, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f27, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f27, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f27, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f27, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f27, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x400)
li x22, 0x1ff17a20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f10, 0(x2) # load 0x00008001 from memory into f10
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f17, 0(x2) # load 0x00000400 from memory into f17
fdiv.h f22, f10, f17, dyn # perform operation
fdiv.h f22, f10, f17, rdn # perform operation
fdiv.h f22, f10, f17, rmm # perform operation
fdiv.h f22, f10, f17, rne # perform operation
fdiv.h f22, f10, f17, rtz # perform operation
fdiv.h f22, f10, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f10, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f10, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f10, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f10, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f10, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8400)
li x5, 0x88c357e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f22, 0(x2) # load 0x00008001 from memory into f22
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
fdiv.h f5, f22, f1, dyn # perform operation
fdiv.h f5, f22, f1, rdn # perform operation
fdiv.h f5, f22, f1, rmm # perform operation
fdiv.h f5, f22, f1, rne # perform operation
fdiv.h f5, f22, f1, rtz # perform operation
fdiv.h f5, f22, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f22, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f22, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f22, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f22, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f22, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7bff)
li x1, 0xdaf672e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f5, 0(x2) # load 0x00007bff from memory into f5
fdiv.h f1, f23, f5, dyn # perform operation
fdiv.h f1, f23, f5, rdn # perform operation
fdiv.h f1, f23, f5, rmm # perform operation
fdiv.h f1, f23, f5, rne # perform operation
fdiv.h f1, f23, f5, rtz # perform operation
fdiv.h f1, f23, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f23, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f23, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f23, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f23, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f23, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfbff)
li x10, 0x1e886456 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f28, 0(x2) # load 0x00008001 from memory into f28
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
fdiv.h f10, f28, f11, dyn # perform operation
fdiv.h f10, f28, f11, rdn # perform operation
fdiv.h f10, f28, f11, rmm # perform operation
fdiv.h f10, f28, f11, rne # perform operation
fdiv.h f10, f28, f11, rtz # perform operation
fdiv.h f10, f28, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f28, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f28, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f28, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f28, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f28, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3ff)
li x11, 0x9e9a491f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f13, 0(x2) # load 0x000003ff from memory into f13
fdiv.h f11, f6, f13, dyn # perform operation
fdiv.h f11, f6, f13, rdn # perform operation
fdiv.h f11, f6, f13, rmm # perform operation
fdiv.h f11, f6, f13, rne # perform operation
fdiv.h f11, f6, f13, rtz # perform operation
fdiv.h f11, f6, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f6, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f6, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f6, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f6, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f6, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x83ff)
li x2, 0x63350777 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f28, 0(x2) # load 0x00008001 from memory into f28
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
fdiv.h f2, f28, f29, dyn # perform operation
fdiv.h f2, f28, f29, rdn # perform operation
fdiv.h f2, f28, f29, rmm # perform operation
fdiv.h f2, f28, f29, rne # perform operation
fdiv.h f2, f28, f29, rtz # perform operation
fdiv.h f2, f28, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f28, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f28, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f28, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f28, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f28, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x200)
li x22, 0xa56e1243 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f8, 0(x2) # load 0x00008001 from memory into f8
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f6, 0(x2) # load 0x00000200 from memory into f6
fdiv.h f22, f8, f6, dyn # perform operation
fdiv.h f22, f8, f6, rdn # perform operation
fdiv.h f22, f8, f6, rmm # perform operation
fdiv.h f22, f8, f6, rne # perform operation
fdiv.h f22, f8, f6, rtz # perform operation
fdiv.h f22, f8, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f8, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f8, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f8, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f8, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f8, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8200)
li x12, 0x222310b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
fdiv.h f12, f11, f20, dyn # perform operation
fdiv.h f12, f11, f20, rdn # perform operation
fdiv.h f12, f11, f20, rmm # perform operation
fdiv.h f12, f11, f20, rne # perform operation
fdiv.h f12, f11, f20, rtz # perform operation
fdiv.h f12, f11, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f11, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f11, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f11, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f11, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f11, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x1)
li x8, 0xab83367c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f25, 0(x2) # load 0x00008001 from memory into f25
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
fdiv.h f8, f25, f21, dyn # perform operation
fdiv.h f8, f25, f21, rdn # perform operation
fdiv.h f8, f25, f21, rmm # perform operation
fdiv.h f8, f25, f21, rne # perform operation
fdiv.h f8, f25, f21, rtz # perform operation
fdiv.h f8, f25, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f25, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f25, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f25, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f25, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f25, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8001)
li x24, 0x83ad7104 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f30, 0(x2) # load 0x00008001 from memory into f30
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f12, 0(x2) # load 0x00008001 from memory into f12
fdiv.h f24, f30, f12, dyn # perform operation
fdiv.h f24, f30, f12, rdn # perform operation
fdiv.h f24, f30, f12, rmm # perform operation
fdiv.h f24, f30, f12, rne # perform operation
fdiv.h f24, f30, f12, rtz # perform operation
fdiv.h f24, f30, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f30, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f30, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f30, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f30, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f30, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7c00)
li x25, 0xe2305308 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f18, 0(x2) # load 0x00007c00 from memory into f18
fdiv.h f25, f23, f18, dyn # perform operation
fdiv.h f25, f23, f18, rdn # perform operation
fdiv.h f25, f23, f18, rmm # perform operation
fdiv.h f25, f23, f18, rne # perform operation
fdiv.h f25, f23, f18, rtz # perform operation
fdiv.h f25, f23, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f23, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f23, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f23, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f23, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f23, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfc00)
li x21, 0x049cfbb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f20, 0(x2) # load 0x00008001 from memory into f20
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f15, 0(x2) # load 0x0000fc00 from memory into f15
fdiv.h f21, f20, f15, dyn # perform operation
fdiv.h f21, f20, f15, rdn # perform operation
fdiv.h f21, f20, f15, rmm # perform operation
fdiv.h f21, f20, f15, rne # perform operation
fdiv.h f21, f20, f15, rtz # perform operation
fdiv.h f21, f20, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f20, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f20, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f20, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f20, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f20, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7e00)
li x10, 0xd247fd35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f25, 0(x2) # load 0x00008001 from memory into f25
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f29, 0(x2) # load 0x00007e00 from memory into f29
fdiv.h f10, f25, f29, dyn # perform operation
fdiv.h f10, f25, f29, rdn # perform operation
fdiv.h f10, f25, f29, rmm # perform operation
fdiv.h f10, f25, f29, rne # perform operation
fdiv.h f10, f25, f29, rtz # perform operation
fdiv.h f10, f25, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f25, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f25, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f25, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f25, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f25, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7fff)
li x9, 0x4722eb7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f1, 0(x2) # load 0x00008001 from memory into f1
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f16, 0(x2) # load 0x00007fff from memory into f16
fdiv.h f9, f1, f16, dyn # perform operation
fdiv.h f9, f1, f16, rdn # perform operation
fdiv.h f9, f1, f16, rmm # perform operation
fdiv.h f9, f1, f16, rne # perform operation
fdiv.h f9, f1, f16, rtz # perform operation
fdiv.h f9, f1, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f1, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f1, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f1, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f1, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f1, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7c01)
li x3, 0x6a994ca3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
fdiv.h f3, f24, f17, dyn # perform operation
fdiv.h f3, f24, f17, rdn # perform operation
fdiv.h f3, f24, f17, rmm # perform operation
fdiv.h f3, f24, f17, rne # perform operation
fdiv.h f3, f24, f17, rtz # perform operation
fdiv.h f3, f24, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f24, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f24, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f24, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f24, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f24, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7dff)
li x17, 0x17621e30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f18, 0(x2) # load 0x00008001 from memory into f18
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f8, 0(x2) # load 0x00007dff from memory into f8
fdiv.h f17, f18, f8, dyn # perform operation
fdiv.h f17, f18, f8, rdn # perform operation
fdiv.h f17, f18, f8, rmm # perform operation
fdiv.h f17, f18, f8, rne # perform operation
fdiv.h f17, f18, f8, rtz # perform operation
fdiv.h f17, f18, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f18, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f18, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f18, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f18, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f18, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x58b4)
li x16, 0x5becae22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f25, 0(x2) # load 0x000058b4 from memory into f25
fdiv.h f16, f31, f25, dyn # perform operation
fdiv.h f16, f31, f25, rdn # perform operation
fdiv.h f16, f31, f25, rmm # perform operation
fdiv.h f16, f31, f25, rne # perform operation
fdiv.h f16, f31, f25, rtz # perform operation
fdiv.h f16, f31, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f31, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f31, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f31, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f31, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f31, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xc93a)
li x12, 0x4226b22b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f25, 0(x2) # load 0x00008001 from memory into f25
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f23, 0(x2) # load 0x0000c93a from memory into f23
fdiv.h f12, f25, f23, dyn # perform operation
fdiv.h f12, f25, f23, rdn # perform operation
fdiv.h f12, f25, f23, rmm # perform operation
fdiv.h f12, f25, f23, rne # perform operation
fdiv.h f12, f25, f23, rtz # perform operation
fdiv.h f12, f25, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f25, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f25, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f25, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f25, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f25, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x0)
li x9, 0xd2e6364f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f13, 0(x2) # load 0x00000000 from memory into f13
fdiv.h f9, f7, f13, dyn # perform operation
fdiv.h f9, f7, f13, rdn # perform operation
fdiv.h f9, f7, f13, rmm # perform operation
fdiv.h f9, f7, f13, rne # perform operation
fdiv.h f9, f7, f13, rtz # perform operation
fdiv.h f9, f7, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f7, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f7, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f7, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f7, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f7, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8000)
li x3, 0x23c14beb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f19, 0(x2) # load 0x00007c00 from memory into f19
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f27, 0(x2) # load 0x00008000 from memory into f27
fdiv.h f3, f19, f27, dyn # perform operation
fdiv.h f3, f19, f27, rdn # perform operation
fdiv.h f3, f19, f27, rmm # perform operation
fdiv.h f3, f19, f27, rne # perform operation
fdiv.h f3, f19, f27, rtz # perform operation
fdiv.h f3, f19, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f19, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f19, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f19, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f19, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f19, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3c00)
li x31, 0xfcec84df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f27, 0(x2) # load 0x00007c00 from memory into f27
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f20, 0(x2) # load 0x00003c00 from memory into f20
fdiv.h f31, f27, f20, dyn # perform operation
fdiv.h f31, f27, f20, rdn # perform operation
fdiv.h f31, f27, f20, rmm # perform operation
fdiv.h f31, f27, f20, rne # perform operation
fdiv.h f31, f27, f20, rtz # perform operation
fdiv.h f31, f27, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f27, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f27, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f27, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f27, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f27, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xbc00)
li x22, 0x65098d87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f15, 0(x2) # load 0x00007c00 from memory into f15
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f2, 0(x2) # load 0x0000bc00 from memory into f2
fdiv.h f22, f15, f2, dyn # perform operation
fdiv.h f22, f15, f2, rdn # perform operation
fdiv.h f22, f15, f2, rmm # perform operation
fdiv.h f22, f15, f2, rne # perform operation
fdiv.h f22, f15, f2, rtz # perform operation
fdiv.h f22, f15, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f15, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f15, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f15, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f15, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f15, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3e00)
li x17, 0x7201511f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
fdiv.h f17, f8, f10, dyn # perform operation
fdiv.h f17, f8, f10, rdn # perform operation
fdiv.h f17, f8, f10, rmm # perform operation
fdiv.h f17, f8, f10, rne # perform operation
fdiv.h f17, f8, f10, rtz # perform operation
fdiv.h f17, f8, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f8, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f8, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f8, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f8, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f8, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xbe00)
li x26, 0xac4c592e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f15, 0(x2) # load 0x00007c00 from memory into f15
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f29, 0(x2) # load 0x0000be00 from memory into f29
fdiv.h f26, f15, f29, dyn # perform operation
fdiv.h f26, f15, f29, rdn # perform operation
fdiv.h f26, f15, f29, rmm # perform operation
fdiv.h f26, f15, f29, rne # perform operation
fdiv.h f26, f15, f29, rtz # perform operation
fdiv.h f26, f15, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f15, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f15, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f15, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f15, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f15, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x4000)
li x4, 0xf0a5e84d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f6, 0(x2) # load 0x00007c00 from memory into f6
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f10, 0(x2) # load 0x00004000 from memory into f10
fdiv.h f4, f6, f10, dyn # perform operation
fdiv.h f4, f6, f10, rdn # perform operation
fdiv.h f4, f6, f10, rmm # perform operation
fdiv.h f4, f6, f10, rne # perform operation
fdiv.h f4, f6, f10, rtz # perform operation
fdiv.h f4, f6, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f6, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f6, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f6, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f6, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f6, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xc000)
li x8, 0x2b06afe8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f6, 0(x2) # load 0x00007c00 from memory into f6
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
fdiv.h f8, f6, f18, dyn # perform operation
fdiv.h f8, f6, f18, rdn # perform operation
fdiv.h f8, f6, f18, rmm # perform operation
fdiv.h f8, f6, f18, rne # perform operation
fdiv.h f8, f6, f18, rtz # perform operation
fdiv.h f8, f6, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f6, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f6, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f6, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f6, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f6, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x400)
li x20, 0xdd849d71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f4, 0(x2) # load 0x00000400 from memory into f4
fdiv.h f20, f8, f4, dyn # perform operation
fdiv.h f20, f8, f4, rdn # perform operation
fdiv.h f20, f8, f4, rmm # perform operation
fdiv.h f20, f8, f4, rne # perform operation
fdiv.h f20, f8, f4, rtz # perform operation
fdiv.h f20, f8, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f8, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f8, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f8, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f8, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f8, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8400)
li x4, 0x646db66f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f10, 0(x2) # load 0x00008400 from memory into f10
fdiv.h f4, f1, f10, dyn # perform operation
fdiv.h f4, f1, f10, rdn # perform operation
fdiv.h f4, f1, f10, rmm # perform operation
fdiv.h f4, f1, f10, rne # perform operation
fdiv.h f4, f1, f10, rtz # perform operation
fdiv.h f4, f1, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f1, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f1, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f1, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f1, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f1, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7bff)
li x19, 0x5680ac25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f26, 0(x2) # load 0x00007c00 from memory into f26
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f14, 0(x2) # load 0x00007bff from memory into f14
fdiv.h f19, f26, f14, dyn # perform operation
fdiv.h f19, f26, f14, rdn # perform operation
fdiv.h f19, f26, f14, rmm # perform operation
fdiv.h f19, f26, f14, rne # perform operation
fdiv.h f19, f26, f14, rtz # perform operation
fdiv.h f19, f26, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f26, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f26, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f26, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f26, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f26, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfbff)
li x15, 0x03149e36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f9, 0(x2) # load 0x00007c00 from memory into f9
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
fdiv.h f15, f9, f14, dyn # perform operation
fdiv.h f15, f9, f14, rdn # perform operation
fdiv.h f15, f9, f14, rmm # perform operation
fdiv.h f15, f9, f14, rne # perform operation
fdiv.h f15, f9, f14, rtz # perform operation
fdiv.h f15, f9, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f9, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f9, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f9, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f9, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f9, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3ff)
li x3, 0xfcdd4966 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f9, 0(x2) # load 0x000003ff from memory into f9
fdiv.h f3, f8, f9, dyn # perform operation
fdiv.h f3, f8, f9, rdn # perform operation
fdiv.h f3, f8, f9, rmm # perform operation
fdiv.h f3, f8, f9, rne # perform operation
fdiv.h f3, f8, f9, rtz # perform operation
fdiv.h f3, f8, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f8, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f8, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f8, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f8, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f8, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x83ff)
li x19, 0xaaf5c680 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f13, 0(x2) # load 0x00007c00 from memory into f13
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
fdiv.h f19, f13, f23, dyn # perform operation
fdiv.h f19, f13, f23, rdn # perform operation
fdiv.h f19, f13, f23, rmm # perform operation
fdiv.h f19, f13, f23, rne # perform operation
fdiv.h f19, f13, f23, rtz # perform operation
fdiv.h f19, f13, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f13, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f13, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f13, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f13, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f13, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x200)
li x29, 0xd9b83584 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
fdiv.h f29, f2, f3, dyn # perform operation
fdiv.h f29, f2, f3, rdn # perform operation
fdiv.h f29, f2, f3, rmm # perform operation
fdiv.h f29, f2, f3, rne # perform operation
fdiv.h f29, f2, f3, rtz # perform operation
fdiv.h f29, f2, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f2, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f2, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f2, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f2, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f2, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8200)
li x10, 0x89ad33f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f26, 0(x2) # load 0x00007c00 from memory into f26
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f12, 0(x2) # load 0x00008200 from memory into f12
fdiv.h f10, f26, f12, dyn # perform operation
fdiv.h f10, f26, f12, rdn # perform operation
fdiv.h f10, f26, f12, rmm # perform operation
fdiv.h f10, f26, f12, rne # perform operation
fdiv.h f10, f26, f12, rtz # perform operation
fdiv.h f10, f26, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f26, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f26, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f26, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f26, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f26, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x1)
li x4, 0x809b8761 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f20, 0(x2) # load 0x00007c00 from memory into f20
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f6, 0(x2) # load 0x00000001 from memory into f6
fdiv.h f4, f20, f6, dyn # perform operation
fdiv.h f4, f20, f6, rdn # perform operation
fdiv.h f4, f20, f6, rmm # perform operation
fdiv.h f4, f20, f6, rne # perform operation
fdiv.h f4, f20, f6, rtz # perform operation
fdiv.h f4, f20, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f20, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f20, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f20, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f20, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f20, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8001)
li x9, 0x19b05eee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
fdiv.h f9, f8, f24, dyn # perform operation
fdiv.h f9, f8, f24, rdn # perform operation
fdiv.h f9, f8, f24, rmm # perform operation
fdiv.h f9, f8, f24, rne # perform operation
fdiv.h f9, f8, f24, rtz # perform operation
fdiv.h f9, f8, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f8, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f8, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f8, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f8, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f8, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7c00)
li x27, 0x61ee5eb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f12, 0(x2) # load 0x00007c00 from memory into f12
fdiv.h f27, f28, f12, dyn # perform operation
fdiv.h f27, f28, f12, rdn # perform operation
fdiv.h f27, f28, f12, rmm # perform operation
fdiv.h f27, f28, f12, rne # perform operation
fdiv.h f27, f28, f12, rtz # perform operation
fdiv.h f27, f28, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f28, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f28, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f28, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f28, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f28, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfc00)
li x11, 0x66532707 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f20, 0(x2) # load 0x0000fc00 from memory into f20
fdiv.h f11, f16, f20, dyn # perform operation
fdiv.h f11, f16, f20, rdn # perform operation
fdiv.h f11, f16, f20, rmm # perform operation
fdiv.h f11, f16, f20, rne # perform operation
fdiv.h f11, f16, f20, rtz # perform operation
fdiv.h f11, f16, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f16, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f16, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f16, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f16, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f16, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7e00)
li x28, 0xbeb3d85c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f25, 0(x2) # load 0x00007c00 from memory into f25
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f7, 0(x2) # load 0x00007e00 from memory into f7
fdiv.h f28, f25, f7, dyn # perform operation
fdiv.h f28, f25, f7, rdn # perform operation
fdiv.h f28, f25, f7, rmm # perform operation
fdiv.h f28, f25, f7, rne # perform operation
fdiv.h f28, f25, f7, rtz # perform operation
fdiv.h f28, f25, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f25, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f25, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f25, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f25, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f25, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7fff)
li x8, 0xc8fde3a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f23, 0(x2) # load 0x00007c00 from memory into f23
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
fdiv.h f8, f23, f24, dyn # perform operation
fdiv.h f8, f23, f24, rdn # perform operation
fdiv.h f8, f23, f24, rmm # perform operation
fdiv.h f8, f23, f24, rne # perform operation
fdiv.h f8, f23, f24, rtz # perform operation
fdiv.h f8, f23, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f23, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f23, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f23, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f23, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f23, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7c01)
li x29, 0xe250f6fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
fdiv.h f29, f11, f3, dyn # perform operation
fdiv.h f29, f11, f3, rdn # perform operation
fdiv.h f29, f11, f3, rmm # perform operation
fdiv.h f29, f11, f3, rne # perform operation
fdiv.h f29, f11, f3, rtz # perform operation
fdiv.h f29, f11, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f11, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f11, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f11, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f11, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f11, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7dff)
li x24, 0xd20eb7e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f30, 0(x2) # load 0x00007c00 from memory into f30
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f14, 0(x2) # load 0x00007dff from memory into f14
fdiv.h f24, f30, f14, dyn # perform operation
fdiv.h f24, f30, f14, rdn # perform operation
fdiv.h f24, f30, f14, rmm # perform operation
fdiv.h f24, f30, f14, rne # perform operation
fdiv.h f24, f30, f14, rtz # perform operation
fdiv.h f24, f30, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f30, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f30, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f30, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f30, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f30, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x58b4)
li x27, 0xd7699ab6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f29, 0(x2) # load 0x000058b4 from memory into f29
fdiv.h f27, f28, f29, dyn # perform operation
fdiv.h f27, f28, f29, rdn # perform operation
fdiv.h f27, f28, f29, rmm # perform operation
fdiv.h f27, f28, f29, rne # perform operation
fdiv.h f27, f28, f29, rtz # perform operation
fdiv.h f27, f28, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f28, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f28, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f28, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f28, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f28, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xc93a)
li x17, 0xe95ac318 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f15, 0(x2) # load 0x00007c00 from memory into f15
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f11, 0(x2) # load 0x0000c93a from memory into f11
fdiv.h f17, f15, f11, dyn # perform operation
fdiv.h f17, f15, f11, rdn # perform operation
fdiv.h f17, f15, f11, rmm # perform operation
fdiv.h f17, f15, f11, rne # perform operation
fdiv.h f17, f15, f11, rtz # perform operation
fdiv.h f17, f15, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f15, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f15, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f15, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f15, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f15, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x0)
li x4, 0x39a4cdb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f28, 0(x2) # load 0x00000000 from memory into f28
fdiv.h f4, f23, f28, dyn # perform operation
fdiv.h f4, f23, f28, rdn # perform operation
fdiv.h f4, f23, f28, rmm # perform operation
fdiv.h f4, f23, f28, rne # perform operation
fdiv.h f4, f23, f28, rtz # perform operation
fdiv.h f4, f23, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f23, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f23, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f23, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f23, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f23, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8000)
li x19, 0xa1a152f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f15, 0(x2) # load 0x0000fc00 from memory into f15
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
fdiv.h f19, f15, f26, dyn # perform operation
fdiv.h f19, f15, f26, rdn # perform operation
fdiv.h f19, f15, f26, rmm # perform operation
fdiv.h f19, f15, f26, rne # perform operation
fdiv.h f19, f15, f26, rtz # perform operation
fdiv.h f19, f15, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f15, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f15, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f15, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f15, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f15, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3c00)
li x22, 0x81159d9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f7, 0(x2) # load 0x0000fc00 from memory into f7
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f12, 0(x2) # load 0x00003c00 from memory into f12
fdiv.h f22, f7, f12, dyn # perform operation
fdiv.h f22, f7, f12, rdn # perform operation
fdiv.h f22, f7, f12, rmm # perform operation
fdiv.h f22, f7, f12, rne # perform operation
fdiv.h f22, f7, f12, rtz # perform operation
fdiv.h f22, f7, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f7, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f7, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f7, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f7, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f7, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xbc00)
li x25, 0xc7bad2a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f18, 0(x2) # load 0x0000fc00 from memory into f18
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f29, 0(x2) # load 0x0000bc00 from memory into f29
fdiv.h f25, f18, f29, dyn # perform operation
fdiv.h f25, f18, f29, rdn # perform operation
fdiv.h f25, f18, f29, rmm # perform operation
fdiv.h f25, f18, f29, rne # perform operation
fdiv.h f25, f18, f29, rtz # perform operation
fdiv.h f25, f18, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f18, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f18, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f18, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f18, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f18, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3e00)
li x14, 0xb8f5e097 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f7, 0(x2) # load 0x0000fc00 from memory into f7
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
fdiv.h f14, f7, f29, dyn # perform operation
fdiv.h f14, f7, f29, rdn # perform operation
fdiv.h f14, f7, f29, rmm # perform operation
fdiv.h f14, f7, f29, rne # perform operation
fdiv.h f14, f7, f29, rtz # perform operation
fdiv.h f14, f7, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f7, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f7, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f7, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f7, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f7, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xbe00)
li x18, 0x848a6df8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f20, 0(x2) # load 0x0000fc00 from memory into f20
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
fdiv.h f18, f20, f17, dyn # perform operation
fdiv.h f18, f20, f17, rdn # perform operation
fdiv.h f18, f20, f17, rmm # perform operation
fdiv.h f18, f20, f17, rne # perform operation
fdiv.h f18, f20, f17, rtz # perform operation
fdiv.h f18, f20, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f20, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f20, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f20, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f20, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f20, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x4000)
li x22, 0x26c817f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f4, 0(x2) # load 0x0000fc00 from memory into f4
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
fdiv.h f22, f4, f14, dyn # perform operation
fdiv.h f22, f4, f14, rdn # perform operation
fdiv.h f22, f4, f14, rmm # perform operation
fdiv.h f22, f4, f14, rne # perform operation
fdiv.h f22, f4, f14, rtz # perform operation
fdiv.h f22, f4, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f4, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f4, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f4, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f4, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f4, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xc000)
li x30, 0x84ce761a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f20, 0(x2) # load 0x0000fc00 from memory into f20
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
fdiv.h f30, f20, f5, dyn # perform operation
fdiv.h f30, f20, f5, rdn # perform operation
fdiv.h f30, f20, f5, rmm # perform operation
fdiv.h f30, f20, f5, rne # perform operation
fdiv.h f30, f20, f5, rtz # perform operation
fdiv.h f30, f20, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f20, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f20, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f20, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f20, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f20, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x400)
li x2, 0xd0cf7db8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f29, 0(x2) # load 0x0000fc00 from memory into f29
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
fdiv.h f2, f29, f14, dyn # perform operation
fdiv.h f2, f29, f14, rdn # perform operation
fdiv.h f2, f29, f14, rmm # perform operation
fdiv.h f2, f29, f14, rne # perform operation
fdiv.h f2, f29, f14, rtz # perform operation
fdiv.h f2, f29, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f29, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f29, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f29, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f29, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f29, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8400)
li x27, 0xb7fd3b6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f17, 0(x2) # load 0x0000fc00 from memory into f17
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f2, 0(x2) # load 0x00008400 from memory into f2
fdiv.h f27, f17, f2, dyn # perform operation
fdiv.h f27, f17, f2, rdn # perform operation
fdiv.h f27, f17, f2, rmm # perform operation
fdiv.h f27, f17, f2, rne # perform operation
fdiv.h f27, f17, f2, rtz # perform operation
fdiv.h f27, f17, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f17, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f17, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f17, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f17, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f17, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7bff)
li x19, 0xdfec34fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f29, 0(x2) # load 0x0000fc00 from memory into f29
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f23, 0(x2) # load 0x00007bff from memory into f23
fdiv.h f19, f29, f23, dyn # perform operation
fdiv.h f19, f29, f23, rdn # perform operation
fdiv.h f19, f29, f23, rmm # perform operation
fdiv.h f19, f29, f23, rne # perform operation
fdiv.h f19, f29, f23, rtz # perform operation
fdiv.h f19, f29, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f29, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f29, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f29, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f29, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f29, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfbff)
li x19, 0x160d879e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f29, 0(x2) # load 0x0000fc00 from memory into f29
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f23, 0(x2) # load 0x0000fbff from memory into f23
fdiv.h f19, f29, f23, dyn # perform operation
fdiv.h f19, f29, f23, rdn # perform operation
fdiv.h f19, f29, f23, rmm # perform operation
fdiv.h f19, f29, f23, rne # perform operation
fdiv.h f19, f29, f23, rtz # perform operation
fdiv.h f19, f29, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f29, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f29, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f29, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f29, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f29, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3ff)
li x8, 0x38b4c831 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f18, 0(x2) # load 0x0000fc00 from memory into f18
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
fdiv.h f8, f18, f27, dyn # perform operation
fdiv.h f8, f18, f27, rdn # perform operation
fdiv.h f8, f18, f27, rmm # perform operation
fdiv.h f8, f18, f27, rne # perform operation
fdiv.h f8, f18, f27, rtz # perform operation
fdiv.h f8, f18, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f18, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f18, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f18, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f18, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f18, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x83ff)
li x30, 0x7d95f981 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f10, 0(x2) # load 0x0000fc00 from memory into f10
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f21, 0(x2) # load 0x000083ff from memory into f21
fdiv.h f30, f10, f21, dyn # perform operation
fdiv.h f30, f10, f21, rdn # perform operation
fdiv.h f30, f10, f21, rmm # perform operation
fdiv.h f30, f10, f21, rne # perform operation
fdiv.h f30, f10, f21, rtz # perform operation
fdiv.h f30, f10, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f10, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f10, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f10, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f10, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f10, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x200)
li x23, 0xaef8e83c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f17, 0(x2) # load 0x00000200 from memory into f17
fdiv.h f23, f28, f17, dyn # perform operation
fdiv.h f23, f28, f17, rdn # perform operation
fdiv.h f23, f28, f17, rmm # perform operation
fdiv.h f23, f28, f17, rne # perform operation
fdiv.h f23, f28, f17, rtz # perform operation
fdiv.h f23, f28, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f28, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f28, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f28, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f28, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f28, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8200)
li x4, 0x49bbfa92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
fdiv.h f4, f23, f1, dyn # perform operation
fdiv.h f4, f23, f1, rdn # perform operation
fdiv.h f4, f23, f1, rmm # perform operation
fdiv.h f4, f23, f1, rne # perform operation
fdiv.h f4, f23, f1, rtz # perform operation
fdiv.h f4, f23, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f23, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f23, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f23, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f23, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f23, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x1)
li x7, 0x057682fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f1, 0(x2) # load 0x0000fc00 from memory into f1
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
fdiv.h f7, f1, f24, dyn # perform operation
fdiv.h f7, f1, f24, rdn # perform operation
fdiv.h f7, f1, f24, rmm # perform operation
fdiv.h f7, f1, f24, rne # perform operation
fdiv.h f7, f1, f24, rtz # perform operation
fdiv.h f7, f1, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f1, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f1, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f1, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f1, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f1, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8001)
li x18, 0x1ac82862 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f16, 0(x2) # load 0x0000fc00 from memory into f16
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
fdiv.h f18, f16, f7, dyn # perform operation
fdiv.h f18, f16, f7, rdn # perform operation
fdiv.h f18, f16, f7, rmm # perform operation
fdiv.h f18, f16, f7, rne # perform operation
fdiv.h f18, f16, f7, rtz # perform operation
fdiv.h f18, f16, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f16, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f16, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f16, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f16, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f16, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7c00)
li x25, 0xbb73e5f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f19, 0(x2) # load 0x00007c00 from memory into f19
fdiv.h f25, f22, f19, dyn # perform operation
fdiv.h f25, f22, f19, rdn # perform operation
fdiv.h f25, f22, f19, rmm # perform operation
fdiv.h f25, f22, f19, rne # perform operation
fdiv.h f25, f22, f19, rtz # perform operation
fdiv.h f25, f22, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f22, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f22, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f22, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f22, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f22, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfc00)
li x19, 0x1d01cd2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f13, 0(x2) # load 0x0000fc00 from memory into f13
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
fdiv.h f19, f13, f31, dyn # perform operation
fdiv.h f19, f13, f31, rdn # perform operation
fdiv.h f19, f13, f31, rmm # perform operation
fdiv.h f19, f13, f31, rne # perform operation
fdiv.h f19, f13, f31, rtz # perform operation
fdiv.h f19, f13, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f13, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f13, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f13, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f13, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f13, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7e00)
li x6, 0x6d0b0d7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
fdiv.h f6, f11, f30, dyn # perform operation
fdiv.h f6, f11, f30, rdn # perform operation
fdiv.h f6, f11, f30, rmm # perform operation
fdiv.h f6, f11, f30, rne # perform operation
fdiv.h f6, f11, f30, rtz # perform operation
fdiv.h f6, f11, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f11, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f11, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f11, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f11, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f11, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7fff)
li x14, 0x178f4ccc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f21, 0(x2) # load 0x0000fc00 from memory into f21
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f16, 0(x2) # load 0x00007fff from memory into f16
fdiv.h f14, f21, f16, dyn # perform operation
fdiv.h f14, f21, f16, rdn # perform operation
fdiv.h f14, f21, f16, rmm # perform operation
fdiv.h f14, f21, f16, rne # perform operation
fdiv.h f14, f21, f16, rtz # perform operation
fdiv.h f14, f21, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f21, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f21, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f21, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f21, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f21, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7c01)
li x29, 0xd11f3bb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f12, 0(x2) # load 0x0000fc00 from memory into f12
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f30, 0(x2) # load 0x00007c01 from memory into f30
fdiv.h f29, f12, f30, dyn # perform operation
fdiv.h f29, f12, f30, rdn # perform operation
fdiv.h f29, f12, f30, rmm # perform operation
fdiv.h f29, f12, f30, rne # perform operation
fdiv.h f29, f12, f30, rtz # perform operation
fdiv.h f29, f12, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f12, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f12, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f12, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f12, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f12, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7dff)
li x4, 0xe01c465c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f15, 0(x2) # load 0x00007dff from memory into f15
fdiv.h f4, f23, f15, dyn # perform operation
fdiv.h f4, f23, f15, rdn # perform operation
fdiv.h f4, f23, f15, rmm # perform operation
fdiv.h f4, f23, f15, rne # perform operation
fdiv.h f4, f23, f15, rtz # perform operation
fdiv.h f4, f23, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f23, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f23, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f23, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f23, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f23, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x58b4)
li x23, 0x2ff2d6d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f25, 0(x2) # load 0x0000fc00 from memory into f25
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f28, 0(x2) # load 0x000058b4 from memory into f28
fdiv.h f23, f25, f28, dyn # perform operation
fdiv.h f23, f25, f28, rdn # perform operation
fdiv.h f23, f25, f28, rmm # perform operation
fdiv.h f23, f25, f28, rne # perform operation
fdiv.h f23, f25, f28, rtz # perform operation
fdiv.h f23, f25, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f25, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f25, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f25, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f25, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f25, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xc93a)
li x18, 0xb8e2370b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f10, 0(x2) # load 0x0000fc00 from memory into f10
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f5, 0(x2) # load 0x0000c93a from memory into f5
fdiv.h f18, f10, f5, dyn # perform operation
fdiv.h f18, f10, f5, rdn # perform operation
fdiv.h f18, f10, f5, rmm # perform operation
fdiv.h f18, f10, f5, rne # perform operation
fdiv.h f18, f10, f5, rtz # perform operation
fdiv.h f18, f10, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f10, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f10, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f10, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f10, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f10, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x0)
li x13, 0x782bcbfb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f26, 0(x2) # load 0x00007e00 from memory into f26
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f9, 0(x2) # load 0x00000000 from memory into f9
fdiv.h f13, f26, f9, dyn # perform operation
fdiv.h f13, f26, f9, rdn # perform operation
fdiv.h f13, f26, f9, rmm # perform operation
fdiv.h f13, f26, f9, rne # perform operation
fdiv.h f13, f26, f9, rtz # perform operation
fdiv.h f13, f26, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f26, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f26, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f26, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f26, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f26, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8000)
li x8, 0x8af88989 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f27, 0(x2) # load 0x00007e00 from memory into f27
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f19, 0(x2) # load 0x00008000 from memory into f19
fdiv.h f8, f27, f19, dyn # perform operation
fdiv.h f8, f27, f19, rdn # perform operation
fdiv.h f8, f27, f19, rmm # perform operation
fdiv.h f8, f27, f19, rne # perform operation
fdiv.h f8, f27, f19, rtz # perform operation
fdiv.h f8, f27, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f27, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f27, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f27, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f27, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f27, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3c00)
li x20, 0xcbcb5c31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
fdiv.h f20, f3, f17, dyn # perform operation
fdiv.h f20, f3, f17, rdn # perform operation
fdiv.h f20, f3, f17, rmm # perform operation
fdiv.h f20, f3, f17, rne # perform operation
fdiv.h f20, f3, f17, rtz # perform operation
fdiv.h f20, f3, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f3, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f3, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f3, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f3, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f3, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xbc00)
li x13, 0xac2e1913 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f12, 0(x2) # load 0x00007e00 from memory into f12
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f10, 0(x2) # load 0x0000bc00 from memory into f10
fdiv.h f13, f12, f10, dyn # perform operation
fdiv.h f13, f12, f10, rdn # perform operation
fdiv.h f13, f12, f10, rmm # perform operation
fdiv.h f13, f12, f10, rne # perform operation
fdiv.h f13, f12, f10, rtz # perform operation
fdiv.h f13, f12, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f12, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f12, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f12, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f12, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f12, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3e00)
li x12, 0x139f32f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f25, 0(x2) # load 0x00003e00 from memory into f25
fdiv.h f12, f15, f25, dyn # perform operation
fdiv.h f12, f15, f25, rdn # perform operation
fdiv.h f12, f15, f25, rmm # perform operation
fdiv.h f12, f15, f25, rne # perform operation
fdiv.h f12, f15, f25, rtz # perform operation
fdiv.h f12, f15, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f15, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f15, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f15, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f15, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f15, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xbe00)
li x25, 0x52deb9e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f20, 0(x2) # load 0x00007e00 from memory into f20
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
fdiv.h f25, f20, f8, dyn # perform operation
fdiv.h f25, f20, f8, rdn # perform operation
fdiv.h f25, f20, f8, rmm # perform operation
fdiv.h f25, f20, f8, rne # perform operation
fdiv.h f25, f20, f8, rtz # perform operation
fdiv.h f25, f20, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f20, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f20, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f20, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f20, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f20, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x4000)
li x3, 0x921a1ec8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f1, 0(x2) # load 0x00007e00 from memory into f1
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
fdiv.h f3, f1, f2, dyn # perform operation
fdiv.h f3, f1, f2, rdn # perform operation
fdiv.h f3, f1, f2, rmm # perform operation
fdiv.h f3, f1, f2, rne # perform operation
fdiv.h f3, f1, f2, rtz # perform operation
fdiv.h f3, f1, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f1, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f1, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f1, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f1, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f1, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xc000)
li x1, 0xf56bd9e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f29, 0(x2) # load 0x00007e00 from memory into f29
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
fdiv.h f1, f29, f24, dyn # perform operation
fdiv.h f1, f29, f24, rdn # perform operation
fdiv.h f1, f29, f24, rmm # perform operation
fdiv.h f1, f29, f24, rne # perform operation
fdiv.h f1, f29, f24, rtz # perform operation
fdiv.h f1, f29, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f29, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f29, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f29, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f29, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f29, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x400)
li x6, 0x687c9c13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f20, 0(x2) # load 0x00007e00 from memory into f20
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f27, 0(x2) # load 0x00000400 from memory into f27
fdiv.h f6, f20, f27, dyn # perform operation
fdiv.h f6, f20, f27, rdn # perform operation
fdiv.h f6, f20, f27, rmm # perform operation
fdiv.h f6, f20, f27, rne # perform operation
fdiv.h f6, f20, f27, rtz # perform operation
fdiv.h f6, f20, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f20, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f20, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f20, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f20, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f20, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8400)
li x1, 0x4c12d9b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f17, 0(x2) # load 0x00007e00 from memory into f17
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f5, 0(x2) # load 0x00008400 from memory into f5
fdiv.h f1, f17, f5, dyn # perform operation
fdiv.h f1, f17, f5, rdn # perform operation
fdiv.h f1, f17, f5, rmm # perform operation
fdiv.h f1, f17, f5, rne # perform operation
fdiv.h f1, f17, f5, rtz # perform operation
fdiv.h f1, f17, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f17, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f17, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f17, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f17, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f17, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7bff)
li x24, 0x32dbd029 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
fdiv.h f24, f21, f17, dyn # perform operation
fdiv.h f24, f21, f17, rdn # perform operation
fdiv.h f24, f21, f17, rmm # perform operation
fdiv.h f24, f21, f17, rne # perform operation
fdiv.h f24, f21, f17, rtz # perform operation
fdiv.h f24, f21, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f21, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f21, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f21, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f21, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f21, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfbff)
li x17, 0x2fc85b92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f5, 0(x2) # load 0x00007e00 from memory into f5
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
fdiv.h f17, f5, f14, dyn # perform operation
fdiv.h f17, f5, f14, rdn # perform operation
fdiv.h f17, f5, f14, rmm # perform operation
fdiv.h f17, f5, f14, rne # perform operation
fdiv.h f17, f5, f14, rtz # perform operation
fdiv.h f17, f5, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f5, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f5, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f5, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f5, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f5, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3ff)
li x3, 0x9a2697bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f22, 0(x2) # load 0x00007e00 from memory into f22
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f15, 0(x2) # load 0x000003ff from memory into f15
fdiv.h f3, f22, f15, dyn # perform operation
fdiv.h f3, f22, f15, rdn # perform operation
fdiv.h f3, f22, f15, rmm # perform operation
fdiv.h f3, f22, f15, rne # perform operation
fdiv.h f3, f22, f15, rtz # perform operation
fdiv.h f3, f22, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f22, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f22, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f22, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f22, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f22, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x83ff)
li x29, 0x79811026 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f17, 0(x2) # load 0x000083ff from memory into f17
fdiv.h f29, f30, f17, dyn # perform operation
fdiv.h f29, f30, f17, rdn # perform operation
fdiv.h f29, f30, f17, rmm # perform operation
fdiv.h f29, f30, f17, rne # perform operation
fdiv.h f29, f30, f17, rtz # perform operation
fdiv.h f29, f30, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f30, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f30, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f30, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f30, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f30, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x200)
li x15, 0xfb64c11a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f13, 0(x2) # load 0x00007e00 from memory into f13
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f2, 0(x2) # load 0x00000200 from memory into f2
fdiv.h f15, f13, f2, dyn # perform operation
fdiv.h f15, f13, f2, rdn # perform operation
fdiv.h f15, f13, f2, rmm # perform operation
fdiv.h f15, f13, f2, rne # perform operation
fdiv.h f15, f13, f2, rtz # perform operation
fdiv.h f15, f13, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f13, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f13, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f13, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f13, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f13, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8200)
li x3, 0x89b34a53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f22, 0(x2) # load 0x00008200 from memory into f22
fdiv.h f3, f10, f22, dyn # perform operation
fdiv.h f3, f10, f22, rdn # perform operation
fdiv.h f3, f10, f22, rmm # perform operation
fdiv.h f3, f10, f22, rne # perform operation
fdiv.h f3, f10, f22, rtz # perform operation
fdiv.h f3, f10, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f10, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f10, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f10, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f10, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f10, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x1)
li x29, 0xf6316c06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f26, 0(x2) # load 0x00007e00 from memory into f26
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f2, 0(x2) # load 0x00000001 from memory into f2
fdiv.h f29, f26, f2, dyn # perform operation
fdiv.h f29, f26, f2, rdn # perform operation
fdiv.h f29, f26, f2, rmm # perform operation
fdiv.h f29, f26, f2, rne # perform operation
fdiv.h f29, f26, f2, rtz # perform operation
fdiv.h f29, f26, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f26, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f26, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f26, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f26, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f26, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8001)
li x12, 0xe661a058 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f7, 0(x2) # load 0x00007e00 from memory into f7
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
fdiv.h f12, f7, f14, dyn # perform operation
fdiv.h f12, f7, f14, rdn # perform operation
fdiv.h f12, f7, f14, rmm # perform operation
fdiv.h f12, f7, f14, rne # perform operation
fdiv.h f12, f7, f14, rtz # perform operation
fdiv.h f12, f7, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f7, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f7, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f7, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f7, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f7, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7c00)
li x9, 0xe43ceb8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f1, 0(x2) # load 0x00007e00 from memory into f1
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f23, 0(x2) # load 0x00007c00 from memory into f23
fdiv.h f9, f1, f23, dyn # perform operation
fdiv.h f9, f1, f23, rdn # perform operation
fdiv.h f9, f1, f23, rmm # perform operation
fdiv.h f9, f1, f23, rne # perform operation
fdiv.h f9, f1, f23, rtz # perform operation
fdiv.h f9, f1, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f1, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f1, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f1, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f1, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f1, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfc00)
li x23, 0x6206880e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f1, 0(x2) # load 0x00007e00 from memory into f1
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
fdiv.h f23, f1, f22, dyn # perform operation
fdiv.h f23, f1, f22, rdn # perform operation
fdiv.h f23, f1, f22, rmm # perform operation
fdiv.h f23, f1, f22, rne # perform operation
fdiv.h f23, f1, f22, rtz # perform operation
fdiv.h f23, f1, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f1, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f1, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f1, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f1, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f1, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7e00)
li x18, 0x1c400376 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f9, 0(x2) # load 0x00007e00 from memory into f9
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f26, 0(x2) # load 0x00007e00 from memory into f26
fdiv.h f18, f9, f26, dyn # perform operation
fdiv.h f18, f9, f26, rdn # perform operation
fdiv.h f18, f9, f26, rmm # perform operation
fdiv.h f18, f9, f26, rne # perform operation
fdiv.h f18, f9, f26, rtz # perform operation
fdiv.h f18, f9, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f9, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f9, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f9, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f9, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f9, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7fff)
li x1, 0xd25af312 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f17, 0(x2) # load 0x00007e00 from memory into f17
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
fdiv.h f1, f17, f25, dyn # perform operation
fdiv.h f1, f17, f25, rdn # perform operation
fdiv.h f1, f17, f25, rmm # perform operation
fdiv.h f1, f17, f25, rne # perform operation
fdiv.h f1, f17, f25, rtz # perform operation
fdiv.h f1, f17, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f17, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f17, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f17, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f17, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f17, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7c01)
li x11, 0x3d75c826 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f25, 0(x2) # load 0x00007e00 from memory into f25
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f19, 0(x2) # load 0x00007c01 from memory into f19
fdiv.h f11, f25, f19, dyn # perform operation
fdiv.h f11, f25, f19, rdn # perform operation
fdiv.h f11, f25, f19, rmm # perform operation
fdiv.h f11, f25, f19, rne # perform operation
fdiv.h f11, f25, f19, rtz # perform operation
fdiv.h f11, f25, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f25, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f25, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f25, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f25, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f25, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7dff)
li x3, 0xa2165bfc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f29, 0(x2) # load 0x00007dff from memory into f29
fdiv.h f3, f30, f29, dyn # perform operation
fdiv.h f3, f30, f29, rdn # perform operation
fdiv.h f3, f30, f29, rmm # perform operation
fdiv.h f3, f30, f29, rne # perform operation
fdiv.h f3, f30, f29, rtz # perform operation
fdiv.h f3, f30, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f30, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f30, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f30, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f30, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f30, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x58b4)
li x17, 0x942f17c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
fdiv.h f17, f31, f3, dyn # perform operation
fdiv.h f17, f31, f3, rdn # perform operation
fdiv.h f17, f31, f3, rmm # perform operation
fdiv.h f17, f31, f3, rne # perform operation
fdiv.h f17, f31, f3, rtz # perform operation
fdiv.h f17, f31, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f31, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f31, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f31, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f31, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f31, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xc93a)
li x22, 0x7db19b1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f24, 0(x2) # load 0x00007e00 from memory into f24
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f1, 0(x2) # load 0x0000c93a from memory into f1
fdiv.h f22, f24, f1, dyn # perform operation
fdiv.h f22, f24, f1, rdn # perform operation
fdiv.h f22, f24, f1, rmm # perform operation
fdiv.h f22, f24, f1, rne # perform operation
fdiv.h f22, f24, f1, rtz # perform operation
fdiv.h f22, f24, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f24, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f24, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f24, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f24, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f24, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x0)
li x12, 0xfab54784 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f5, 0(x2) # load 0x00007fff from memory into f5
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
fdiv.h f12, f5, f30, dyn # perform operation
fdiv.h f12, f5, f30, rdn # perform operation
fdiv.h f12, f5, f30, rmm # perform operation
fdiv.h f12, f5, f30, rne # perform operation
fdiv.h f12, f5, f30, rtz # perform operation
fdiv.h f12, f5, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f5, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f5, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f5, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f5, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f5, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8000)
li x24, 0x317c0be4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
fdiv.h f24, f23, f6, dyn # perform operation
fdiv.h f24, f23, f6, rdn # perform operation
fdiv.h f24, f23, f6, rmm # perform operation
fdiv.h f24, f23, f6, rne # perform operation
fdiv.h f24, f23, f6, rtz # perform operation
fdiv.h f24, f23, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f23, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f23, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f23, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f23, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f23, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3c00)
li x14, 0x91e58249 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f17, 0(x2) # load 0x00007fff from memory into f17
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f19, 0(x2) # load 0x00003c00 from memory into f19
fdiv.h f14, f17, f19, dyn # perform operation
fdiv.h f14, f17, f19, rdn # perform operation
fdiv.h f14, f17, f19, rmm # perform operation
fdiv.h f14, f17, f19, rne # perform operation
fdiv.h f14, f17, f19, rtz # perform operation
fdiv.h f14, f17, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f17, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f17, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f17, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f17, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f17, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xbc00)
li x12, 0x57864768 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f3, 0(x2) # load 0x00007fff from memory into f3
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f4, 0(x2) # load 0x0000bc00 from memory into f4
fdiv.h f12, f3, f4, dyn # perform operation
fdiv.h f12, f3, f4, rdn # perform operation
fdiv.h f12, f3, f4, rmm # perform operation
fdiv.h f12, f3, f4, rne # perform operation
fdiv.h f12, f3, f4, rtz # perform operation
fdiv.h f12, f3, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f3, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f3, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f3, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f3, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f3, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3e00)
li x27, 0xe3ccafc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f19, 0(x2) # load 0x00003e00 from memory into f19
fdiv.h f27, f12, f19, dyn # perform operation
fdiv.h f27, f12, f19, rdn # perform operation
fdiv.h f27, f12, f19, rmm # perform operation
fdiv.h f27, f12, f19, rne # perform operation
fdiv.h f27, f12, f19, rtz # perform operation
fdiv.h f27, f12, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f12, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f12, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f12, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f12, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f12, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xbe00)
li x14, 0xa6472d6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
fdiv.h f14, f18, f15, dyn # perform operation
fdiv.h f14, f18, f15, rdn # perform operation
fdiv.h f14, f18, f15, rmm # perform operation
fdiv.h f14, f18, f15, rne # perform operation
fdiv.h f14, f18, f15, rtz # perform operation
fdiv.h f14, f18, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f18, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f18, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f18, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f18, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f18, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x4000)
li x25, 0x836cf9f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f15, 0(x2) # load 0x00004000 from memory into f15
fdiv.h f25, f8, f15, dyn # perform operation
fdiv.h f25, f8, f15, rdn # perform operation
fdiv.h f25, f8, f15, rmm # perform operation
fdiv.h f25, f8, f15, rne # perform operation
fdiv.h f25, f8, f15, rtz # perform operation
fdiv.h f25, f8, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f8, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f8, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f8, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f8, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f8, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xc000)
li x29, 0x7a2f1ea8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
fdiv.h f29, f10, f26, dyn # perform operation
fdiv.h f29, f10, f26, rdn # perform operation
fdiv.h f29, f10, f26, rmm # perform operation
fdiv.h f29, f10, f26, rne # perform operation
fdiv.h f29, f10, f26, rtz # perform operation
fdiv.h f29, f10, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f10, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f10, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f10, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f10, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f10, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x400)
li x16, 0x528c1c6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f17, 0(x2) # load 0x00007fff from memory into f17
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
fdiv.h f16, f17, f8, dyn # perform operation
fdiv.h f16, f17, f8, rdn # perform operation
fdiv.h f16, f17, f8, rmm # perform operation
fdiv.h f16, f17, f8, rne # perform operation
fdiv.h f16, f17, f8, rtz # perform operation
fdiv.h f16, f17, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f17, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f17, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f17, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f17, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f17, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8400)
li x22, 0x4615bf62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f4, 0(x2) # load 0x00008400 from memory into f4
fdiv.h f22, f6, f4, dyn # perform operation
fdiv.h f22, f6, f4, rdn # perform operation
fdiv.h f22, f6, f4, rmm # perform operation
fdiv.h f22, f6, f4, rne # perform operation
fdiv.h f22, f6, f4, rtz # perform operation
fdiv.h f22, f6, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f6, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f6, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f6, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f6, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f6, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7bff)
li x12, 0x417ad2fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f5, 0(x2) # load 0x00007fff from memory into f5
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
fdiv.h f12, f5, f2, dyn # perform operation
fdiv.h f12, f5, f2, rdn # perform operation
fdiv.h f12, f5, f2, rmm # perform operation
fdiv.h f12, f5, f2, rne # perform operation
fdiv.h f12, f5, f2, rtz # perform operation
fdiv.h f12, f5, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f5, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f5, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f5, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f5, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f5, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfbff)
li x7, 0x12700144 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f16, 0(x2) # load 0x00007fff from memory into f16
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
fdiv.h f7, f16, f21, dyn # perform operation
fdiv.h f7, f16, f21, rdn # perform operation
fdiv.h f7, f16, f21, rmm # perform operation
fdiv.h f7, f16, f21, rne # perform operation
fdiv.h f7, f16, f21, rtz # perform operation
fdiv.h f7, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f16, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3ff)
li x5, 0x7d32e427 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
fdiv.h f5, f23, f6, dyn # perform operation
fdiv.h f5, f23, f6, rdn # perform operation
fdiv.h f5, f23, f6, rmm # perform operation
fdiv.h f5, f23, f6, rne # perform operation
fdiv.h f5, f23, f6, rtz # perform operation
fdiv.h f5, f23, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f23, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f23, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f23, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f23, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f23, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x83ff)
li x15, 0x087f9d7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f11, 0(x2) # load 0x00007fff from memory into f11
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f28, 0(x2) # load 0x000083ff from memory into f28
fdiv.h f15, f11, f28, dyn # perform operation
fdiv.h f15, f11, f28, rdn # perform operation
fdiv.h f15, f11, f28, rmm # perform operation
fdiv.h f15, f11, f28, rne # perform operation
fdiv.h f15, f11, f28, rtz # perform operation
fdiv.h f15, f11, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f11, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f11, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f11, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f11, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f11, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x200)
li x3, 0x1a356441 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
fdiv.h f3, f24, f25, dyn # perform operation
fdiv.h f3, f24, f25, rdn # perform operation
fdiv.h f3, f24, f25, rmm # perform operation
fdiv.h f3, f24, f25, rne # perform operation
fdiv.h f3, f24, f25, rtz # perform operation
fdiv.h f3, f24, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f24, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f24, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f24, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f24, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f24, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8200)
li x23, 0xf1f27d1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f15, 0(x2) # load 0x00007fff from memory into f15
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f9, 0(x2) # load 0x00008200 from memory into f9
fdiv.h f23, f15, f9, dyn # perform operation
fdiv.h f23, f15, f9, rdn # perform operation
fdiv.h f23, f15, f9, rmm # perform operation
fdiv.h f23, f15, f9, rne # perform operation
fdiv.h f23, f15, f9, rtz # perform operation
fdiv.h f23, f15, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f15, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f15, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f15, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f15, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f15, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x1)
li x8, 0x20195e45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f12, 0(x2) # load 0x00000001 from memory into f12
fdiv.h f8, f10, f12, dyn # perform operation
fdiv.h f8, f10, f12, rdn # perform operation
fdiv.h f8, f10, f12, rmm # perform operation
fdiv.h f8, f10, f12, rne # perform operation
fdiv.h f8, f10, f12, rtz # perform operation
fdiv.h f8, f10, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f10, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f10, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f10, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f10, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f10, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8001)
li x10, 0x8763c841 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f21, 0(x2) # load 0x00008001 from memory into f21
fdiv.h f10, f24, f21, dyn # perform operation
fdiv.h f10, f24, f21, rdn # perform operation
fdiv.h f10, f24, f21, rmm # perform operation
fdiv.h f10, f24, f21, rne # perform operation
fdiv.h f10, f24, f21, rtz # perform operation
fdiv.h f10, f24, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f24, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f24, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f24, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f24, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f24, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7c00)
li x21, 0xec0013a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
fdiv.h f21, f2, f1, dyn # perform operation
fdiv.h f21, f2, f1, rdn # perform operation
fdiv.h f21, f2, f1, rmm # perform operation
fdiv.h f21, f2, f1, rne # perform operation
fdiv.h f21, f2, f1, rtz # perform operation
fdiv.h f21, f2, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f2, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f2, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f2, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f2, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f2, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfc00)
li x13, 0x20b6ea3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
fdiv.h f13, f10, f31, dyn # perform operation
fdiv.h f13, f10, f31, rdn # perform operation
fdiv.h f13, f10, f31, rmm # perform operation
fdiv.h f13, f10, f31, rne # perform operation
fdiv.h f13, f10, f31, rtz # perform operation
fdiv.h f13, f10, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f10, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f10, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f10, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f10, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f10, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7e00)
li x26, 0x85ba616a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f3, 0(x2) # load 0x00007fff from memory into f3
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f9, 0(x2) # load 0x00007e00 from memory into f9
fdiv.h f26, f3, f9, dyn # perform operation
fdiv.h f26, f3, f9, rdn # perform operation
fdiv.h f26, f3, f9, rmm # perform operation
fdiv.h f26, f3, f9, rne # perform operation
fdiv.h f26, f3, f9, rtz # perform operation
fdiv.h f26, f3, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f3, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f3, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f3, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f3, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f3, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7fff)
li x11, 0x937f9d9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f31, 0(x2) # load 0x00007fff from memory into f31
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
fdiv.h f11, f31, f10, dyn # perform operation
fdiv.h f11, f31, f10, rdn # perform operation
fdiv.h f11, f31, f10, rmm # perform operation
fdiv.h f11, f31, f10, rne # perform operation
fdiv.h f11, f31, f10, rtz # perform operation
fdiv.h f11, f31, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f31, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f31, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f31, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f31, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f31, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7c01)
li x24, 0xbd198b4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f20, 0(x2) # load 0x00007fff from memory into f20
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f4, 0(x2) # load 0x00007c01 from memory into f4
fdiv.h f24, f20, f4, dyn # perform operation
fdiv.h f24, f20, f4, rdn # perform operation
fdiv.h f24, f20, f4, rmm # perform operation
fdiv.h f24, f20, f4, rne # perform operation
fdiv.h f24, f20, f4, rtz # perform operation
fdiv.h f24, f20, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f20, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f20, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f20, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f20, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f20, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7dff)
li x23, 0xf86489b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f3, 0(x2) # load 0x00007fff from memory into f3
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f12, 0(x2) # load 0x00007dff from memory into f12
fdiv.h f23, f3, f12, dyn # perform operation
fdiv.h f23, f3, f12, rdn # perform operation
fdiv.h f23, f3, f12, rmm # perform operation
fdiv.h f23, f3, f12, rne # perform operation
fdiv.h f23, f3, f12, rtz # perform operation
fdiv.h f23, f3, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f3, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f3, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f3, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f3, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f3, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x58b4)
li x15, 0x10ba6b39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f28, 0(x2) # load 0x000058b4 from memory into f28
fdiv.h f15, f24, f28, dyn # perform operation
fdiv.h f15, f24, f28, rdn # perform operation
fdiv.h f15, f24, f28, rmm # perform operation
fdiv.h f15, f24, f28, rne # perform operation
fdiv.h f15, f24, f28, rtz # perform operation
fdiv.h f15, f24, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f24, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f24, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f24, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f24, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f24, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xc93a)
li x12, 0x7abb3a13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f11, 0(x2) # load 0x00007fff from memory into f11
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f13, 0(x2) # load 0x0000c93a from memory into f13
fdiv.h f12, f11, f13, dyn # perform operation
fdiv.h f12, f11, f13, rdn # perform operation
fdiv.h f12, f11, f13, rmm # perform operation
fdiv.h f12, f11, f13, rne # perform operation
fdiv.h f12, f11, f13, rtz # perform operation
fdiv.h f12, f11, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f11, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f11, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f11, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f11, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f11, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x0)
li x22, 0x6cc95981 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f30, 0(x2) # load 0x00007c01 from memory into f30
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
fdiv.h f22, f30, f29, dyn # perform operation
fdiv.h f22, f30, f29, rdn # perform operation
fdiv.h f22, f30, f29, rmm # perform operation
fdiv.h f22, f30, f29, rne # perform operation
fdiv.h f22, f30, f29, rtz # perform operation
fdiv.h f22, f30, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f30, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f30, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f30, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f30, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f30, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8000)
li x5, 0xcecc291c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f19, 0(x2) # load 0x00008000 from memory into f19
fdiv.h f5, f14, f19, dyn # perform operation
fdiv.h f5, f14, f19, rdn # perform operation
fdiv.h f5, f14, f19, rmm # perform operation
fdiv.h f5, f14, f19, rne # perform operation
fdiv.h f5, f14, f19, rtz # perform operation
fdiv.h f5, f14, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f14, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f14, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f14, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f14, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f14, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3c00)
li x12, 0x4c4d768a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
fdiv.h f12, f16, f3, dyn # perform operation
fdiv.h f12, f16, f3, rdn # perform operation
fdiv.h f12, f16, f3, rmm # perform operation
fdiv.h f12, f16, f3, rne # perform operation
fdiv.h f12, f16, f3, rtz # perform operation
fdiv.h f12, f16, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f16, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f16, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f16, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f16, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f16, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xbc00)
li x9, 0xbf787bd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f2, 0(x2) # load 0x00007c01 from memory into f2
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f8, 0(x2) # load 0x0000bc00 from memory into f8
fdiv.h f9, f2, f8, dyn # perform operation
fdiv.h f9, f2, f8, rdn # perform operation
fdiv.h f9, f2, f8, rmm # perform operation
fdiv.h f9, f2, f8, rne # perform operation
fdiv.h f9, f2, f8, rtz # perform operation
fdiv.h f9, f2, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f2, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f2, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f2, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f2, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f2, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3e00)
li x25, 0xdc91049d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f11, 0(x2) # load 0x00003e00 from memory into f11
fdiv.h f25, f6, f11, dyn # perform operation
fdiv.h f25, f6, f11, rdn # perform operation
fdiv.h f25, f6, f11, rmm # perform operation
fdiv.h f25, f6, f11, rne # perform operation
fdiv.h f25, f6, f11, rtz # perform operation
fdiv.h f25, f6, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f6, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f6, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f6, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f6, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f6, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xbe00)
li x16, 0x063d9596 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f4, 0(x2) # load 0x00007c01 from memory into f4
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f29, 0(x2) # load 0x0000be00 from memory into f29
fdiv.h f16, f4, f29, dyn # perform operation
fdiv.h f16, f4, f29, rdn # perform operation
fdiv.h f16, f4, f29, rmm # perform operation
fdiv.h f16, f4, f29, rne # perform operation
fdiv.h f16, f4, f29, rtz # perform operation
fdiv.h f16, f4, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f4, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f4, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f4, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f4, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f4, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x4000)
li x19, 0x98cffd98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
fdiv.h f19, f26, f9, dyn # perform operation
fdiv.h f19, f26, f9, rdn # perform operation
fdiv.h f19, f26, f9, rmm # perform operation
fdiv.h f19, f26, f9, rne # perform operation
fdiv.h f19, f26, f9, rtz # perform operation
fdiv.h f19, f26, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f26, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f26, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f26, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f26, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f26, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xc000)
li x29, 0xed309e68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f21, 0(x2) # load 0x00007c01 from memory into f21
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
fdiv.h f29, f21, f3, dyn # perform operation
fdiv.h f29, f21, f3, rdn # perform operation
fdiv.h f29, f21, f3, rmm # perform operation
fdiv.h f29, f21, f3, rne # perform operation
fdiv.h f29, f21, f3, rtz # perform operation
fdiv.h f29, f21, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f21, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f21, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f21, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f21, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f21, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x400)
li x20, 0x055fe5f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
fdiv.h f20, f26, f24, dyn # perform operation
fdiv.h f20, f26, f24, rdn # perform operation
fdiv.h f20, f26, f24, rmm # perform operation
fdiv.h f20, f26, f24, rne # perform operation
fdiv.h f20, f26, f24, rtz # perform operation
fdiv.h f20, f26, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f26, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f26, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f26, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f26, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f26, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8400)
li x25, 0xec5027c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f10, 0(x2) # load 0x00008400 from memory into f10
fdiv.h f25, f17, f10, dyn # perform operation
fdiv.h f25, f17, f10, rdn # perform operation
fdiv.h f25, f17, f10, rmm # perform operation
fdiv.h f25, f17, f10, rne # perform operation
fdiv.h f25, f17, f10, rtz # perform operation
fdiv.h f25, f17, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f17, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f17, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f17, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f17, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f17, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7bff)
li x30, 0xad0322d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
fdiv.h f30, f17, f1, dyn # perform operation
fdiv.h f30, f17, f1, rdn # perform operation
fdiv.h f30, f17, f1, rmm # perform operation
fdiv.h f30, f17, f1, rne # perform operation
fdiv.h f30, f17, f1, rtz # perform operation
fdiv.h f30, f17, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f17, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f17, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f17, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f17, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f17, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfbff)
li x30, 0xffc84dba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f9, 0(x2) # load 0x0000fbff from memory into f9
fdiv.h f30, f25, f9, dyn # perform operation
fdiv.h f30, f25, f9, rdn # perform operation
fdiv.h f30, f25, f9, rmm # perform operation
fdiv.h f30, f25, f9, rne # perform operation
fdiv.h f30, f25, f9, rtz # perform operation
fdiv.h f30, f25, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f25, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f25, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f25, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f25, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f25, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3ff)
li x7, 0xe138a9eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f11, 0(x2) # load 0x00007c01 from memory into f11
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
fdiv.h f7, f11, f17, dyn # perform operation
fdiv.h f7, f11, f17, rdn # perform operation
fdiv.h f7, f11, f17, rmm # perform operation
fdiv.h f7, f11, f17, rne # perform operation
fdiv.h f7, f11, f17, rtz # perform operation
fdiv.h f7, f11, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f11, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f11, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f11, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f11, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f11, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x83ff)
li x1, 0x9de89d07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
fdiv.h f1, f13, f8, dyn # perform operation
fdiv.h f1, f13, f8, rdn # perform operation
fdiv.h f1, f13, f8, rmm # perform operation
fdiv.h f1, f13, f8, rne # perform operation
fdiv.h f1, f13, f8, rtz # perform operation
fdiv.h f1, f13, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f13, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f13, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f13, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f13, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f13, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x200)
li x29, 0xd0216a6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
fdiv.h f29, f17, f19, dyn # perform operation
fdiv.h f29, f17, f19, rdn # perform operation
fdiv.h f29, f17, f19, rmm # perform operation
fdiv.h f29, f17, f19, rne # perform operation
fdiv.h f29, f17, f19, rtz # perform operation
fdiv.h f29, f17, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f17, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f17, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f17, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f17, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f17, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8200)
li x29, 0x4ec13eaa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f4, 0(x2) # load 0x00007c01 from memory into f4
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f26, 0(x2) # load 0x00008200 from memory into f26
fdiv.h f29, f4, f26, dyn # perform operation
fdiv.h f29, f4, f26, rdn # perform operation
fdiv.h f29, f4, f26, rmm # perform operation
fdiv.h f29, f4, f26, rne # perform operation
fdiv.h f29, f4, f26, rtz # perform operation
fdiv.h f29, f4, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f4, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f4, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f4, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f4, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f4, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x1)
li x6, 0x7f638978 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f13, 0(x2) # load 0x00000001 from memory into f13
fdiv.h f6, f3, f13, dyn # perform operation
fdiv.h f6, f3, f13, rdn # perform operation
fdiv.h f6, f3, f13, rmm # perform operation
fdiv.h f6, f3, f13, rne # perform operation
fdiv.h f6, f3, f13, rtz # perform operation
fdiv.h f6, f3, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f3, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f3, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f3, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f3, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f3, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8001)
li x14, 0xbf56a49e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f10, 0(x2) # load 0x00008001 from memory into f10
fdiv.h f14, f12, f10, dyn # perform operation
fdiv.h f14, f12, f10, rdn # perform operation
fdiv.h f14, f12, f10, rmm # perform operation
fdiv.h f14, f12, f10, rne # perform operation
fdiv.h f14, f12, f10, rtz # perform operation
fdiv.h f14, f12, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f12, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f12, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f12, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f12, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f12, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7c00)
li x2, 0xe3f8a657 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
fdiv.h f2, f31, f1, dyn # perform operation
fdiv.h f2, f31, f1, rdn # perform operation
fdiv.h f2, f31, f1, rmm # perform operation
fdiv.h f2, f31, f1, rne # perform operation
fdiv.h f2, f31, f1, rtz # perform operation
fdiv.h f2, f31, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f31, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f31, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f31, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f31, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f31, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfc00)
li x27, 0xb62a2346 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f29, 0(x2) # load 0x00007c01 from memory into f29
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
fdiv.h f27, f29, f11, dyn # perform operation
fdiv.h f27, f29, f11, rdn # perform operation
fdiv.h f27, f29, f11, rmm # perform operation
fdiv.h f27, f29, f11, rne # perform operation
fdiv.h f27, f29, f11, rtz # perform operation
fdiv.h f27, f29, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f29, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f29, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f29, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f29, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f29, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7e00)
li x10, 0x1eedd39e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
fdiv.h f10, f9, f19, dyn # perform operation
fdiv.h f10, f9, f19, rdn # perform operation
fdiv.h f10, f9, f19, rmm # perform operation
fdiv.h f10, f9, f19, rne # perform operation
fdiv.h f10, f9, f19, rtz # perform operation
fdiv.h f10, f9, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f9, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f9, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f9, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f9, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f9, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7fff)
li x28, 0x873d21fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f21, 0(x2) # load 0x00007c01 from memory into f21
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
fdiv.h f28, f21, f29, dyn # perform operation
fdiv.h f28, f21, f29, rdn # perform operation
fdiv.h f28, f21, f29, rmm # perform operation
fdiv.h f28, f21, f29, rne # perform operation
fdiv.h f28, f21, f29, rtz # perform operation
fdiv.h f28, f21, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f21, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f21, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f21, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f21, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f21, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7c01)
li x29, 0x6939d393 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f4, 0(x2) # load 0x00007c01 from memory into f4
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f5, 0(x2) # load 0x00007c01 from memory into f5
fdiv.h f29, f4, f5, dyn # perform operation
fdiv.h f29, f4, f5, rdn # perform operation
fdiv.h f29, f4, f5, rmm # perform operation
fdiv.h f29, f4, f5, rne # perform operation
fdiv.h f29, f4, f5, rtz # perform operation
fdiv.h f29, f4, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f4, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f4, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f4, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f4, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f4, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7dff)
li x29, 0xe0369c46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f26, 0(x2) # load 0x00007dff from memory into f26
fdiv.h f29, f16, f26, dyn # perform operation
fdiv.h f29, f16, f26, rdn # perform operation
fdiv.h f29, f16, f26, rmm # perform operation
fdiv.h f29, f16, f26, rne # perform operation
fdiv.h f29, f16, f26, rtz # perform operation
fdiv.h f29, f16, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f16, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f16, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f16, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f16, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f16, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x58b4)
li x28, 0x2b5a9069 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f20, 0(x2) # load 0x00007c01 from memory into f20
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
fdiv.h f28, f20, f24, dyn # perform operation
fdiv.h f28, f20, f24, rdn # perform operation
fdiv.h f28, f20, f24, rmm # perform operation
fdiv.h f28, f20, f24, rne # perform operation
fdiv.h f28, f20, f24, rtz # perform operation
fdiv.h f28, f20, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f20, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f20, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f20, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f20, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f20, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xc93a)
li x5, 0x8dbdc4a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f10, 0(x2) # load 0x00007c01 from memory into f10
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
fdiv.h f5, f10, f18, dyn # perform operation
fdiv.h f5, f10, f18, rdn # perform operation
fdiv.h f5, f10, f18, rmm # perform operation
fdiv.h f5, f10, f18, rne # perform operation
fdiv.h f5, f10, f18, rtz # perform operation
fdiv.h f5, f10, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f10, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f10, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f10, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f10, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f10, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x0)
li x23, 0x7cc533d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
fdiv.h f23, f24, f14, dyn # perform operation
fdiv.h f23, f24, f14, rdn # perform operation
fdiv.h f23, f24, f14, rmm # perform operation
fdiv.h f23, f24, f14, rne # perform operation
fdiv.h f23, f24, f14, rtz # perform operation
fdiv.h f23, f24, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f24, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f24, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f24, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f24, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f24, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8000)
li x23, 0xb178f714 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f8, 0(x2) # load 0x00007dff from memory into f8
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
fdiv.h f23, f8, f2, dyn # perform operation
fdiv.h f23, f8, f2, rdn # perform operation
fdiv.h f23, f8, f2, rmm # perform operation
fdiv.h f23, f8, f2, rne # perform operation
fdiv.h f23, f8, f2, rtz # perform operation
fdiv.h f23, f8, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f8, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f8, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f8, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f8, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f8, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3c00)
li x29, 0x9b6b09d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f9, 0(x2) # load 0x00007dff from memory into f9
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
fdiv.h f29, f9, f28, dyn # perform operation
fdiv.h f29, f9, f28, rdn # perform operation
fdiv.h f29, f9, f28, rmm # perform operation
fdiv.h f29, f9, f28, rne # perform operation
fdiv.h f29, f9, f28, rtz # perform operation
fdiv.h f29, f9, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f9, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f9, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f9, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f9, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f9, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xbc00)
li x3, 0x255c154f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f2, 0(x2) # load 0x00007dff from memory into f2
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f8, 0(x2) # load 0x0000bc00 from memory into f8
fdiv.h f3, f2, f8, dyn # perform operation
fdiv.h f3, f2, f8, rdn # perform operation
fdiv.h f3, f2, f8, rmm # perform operation
fdiv.h f3, f2, f8, rne # perform operation
fdiv.h f3, f2, f8, rtz # perform operation
fdiv.h f3, f2, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f2, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f2, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f2, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f2, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f2, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3e00)
li x28, 0x26841d40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f24, 0(x2) # load 0x00003e00 from memory into f24
fdiv.h f28, f5, f24, dyn # perform operation
fdiv.h f28, f5, f24, rdn # perform operation
fdiv.h f28, f5, f24, rmm # perform operation
fdiv.h f28, f5, f24, rne # perform operation
fdiv.h f28, f5, f24, rtz # perform operation
fdiv.h f28, f5, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f5, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f5, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f5, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f5, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f5, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xbe00)
li x15, 0x8582b711 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f6, 0(x2) # load 0x00007dff from memory into f6
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
fdiv.h f15, f6, f31, dyn # perform operation
fdiv.h f15, f6, f31, rdn # perform operation
fdiv.h f15, f6, f31, rmm # perform operation
fdiv.h f15, f6, f31, rne # perform operation
fdiv.h f15, f6, f31, rtz # perform operation
fdiv.h f15, f6, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f6, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f6, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f6, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f6, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f6, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x4000)
li x9, 0xf452ee18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f4, 0(x2) # load 0x00007dff from memory into f4
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
fdiv.h f9, f4, f25, dyn # perform operation
fdiv.h f9, f4, f25, rdn # perform operation
fdiv.h f9, f4, f25, rmm # perform operation
fdiv.h f9, f4, f25, rne # perform operation
fdiv.h f9, f4, f25, rtz # perform operation
fdiv.h f9, f4, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f4, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f4, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f4, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f4, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f4, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xc000)
li x8, 0x7c97f22b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f10, 0(x2) # load 0x00007dff from memory into f10
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f30, 0(x2) # load 0x0000c000 from memory into f30
fdiv.h f8, f10, f30, dyn # perform operation
fdiv.h f8, f10, f30, rdn # perform operation
fdiv.h f8, f10, f30, rmm # perform operation
fdiv.h f8, f10, f30, rne # perform operation
fdiv.h f8, f10, f30, rtz # perform operation
fdiv.h f8, f10, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f10, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f10, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f10, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f10, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f10, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x400)
li x7, 0xba2bccfd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f28, 0(x2) # load 0x00007dff from memory into f28
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f1, 0(x2) # load 0x00000400 from memory into f1
fdiv.h f7, f28, f1, dyn # perform operation
fdiv.h f7, f28, f1, rdn # perform operation
fdiv.h f7, f28, f1, rmm # perform operation
fdiv.h f7, f28, f1, rne # perform operation
fdiv.h f7, f28, f1, rtz # perform operation
fdiv.h f7, f28, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f28, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f28, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f28, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f28, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f28, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8400)
li x11, 0xc5573cf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f27, 0(x2) # load 0x00007dff from memory into f27
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f30, 0(x2) # load 0x00008400 from memory into f30
fdiv.h f11, f27, f30, dyn # perform operation
fdiv.h f11, f27, f30, rdn # perform operation
fdiv.h f11, f27, f30, rmm # perform operation
fdiv.h f11, f27, f30, rne # perform operation
fdiv.h f11, f27, f30, rtz # perform operation
fdiv.h f11, f27, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f27, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f27, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f27, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f27, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f27, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7bff)
li x10, 0x4e135ff9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f12, 0(x2) # load 0x00007dff from memory into f12
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f22, 0(x2) # load 0x00007bff from memory into f22
fdiv.h f10, f12, f22, dyn # perform operation
fdiv.h f10, f12, f22, rdn # perform operation
fdiv.h f10, f12, f22, rmm # perform operation
fdiv.h f10, f12, f22, rne # perform operation
fdiv.h f10, f12, f22, rtz # perform operation
fdiv.h f10, f12, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f12, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f12, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f12, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f12, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f12, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfbff)
li x15, 0xabf57e47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f6, 0(x2) # load 0x00007dff from memory into f6
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f5, 0(x2) # load 0x0000fbff from memory into f5
fdiv.h f15, f6, f5, dyn # perform operation
fdiv.h f15, f6, f5, rdn # perform operation
fdiv.h f15, f6, f5, rmm # perform operation
fdiv.h f15, f6, f5, rne # perform operation
fdiv.h f15, f6, f5, rtz # perform operation
fdiv.h f15, f6, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f6, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f6, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f6, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f6, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f6, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3ff)
li x18, 0xf77d5dfe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f25, 0(x2) # load 0x000003ff from memory into f25
fdiv.h f18, f20, f25, dyn # perform operation
fdiv.h f18, f20, f25, rdn # perform operation
fdiv.h f18, f20, f25, rmm # perform operation
fdiv.h f18, f20, f25, rne # perform operation
fdiv.h f18, f20, f25, rtz # perform operation
fdiv.h f18, f20, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f20, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f20, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f20, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f20, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f20, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x83ff)
li x31, 0x4cb6b6d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f8, 0(x2) # load 0x00007dff from memory into f8
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f7, 0(x2) # load 0x000083ff from memory into f7
fdiv.h f31, f8, f7, dyn # perform operation
fdiv.h f31, f8, f7, rdn # perform operation
fdiv.h f31, f8, f7, rmm # perform operation
fdiv.h f31, f8, f7, rne # perform operation
fdiv.h f31, f8, f7, rtz # perform operation
fdiv.h f31, f8, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f8, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f8, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f8, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f8, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f8, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x200)
li x29, 0xcac24994 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f1, 0(x2) # load 0x00007dff from memory into f1
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
fdiv.h f29, f1, f15, dyn # perform operation
fdiv.h f29, f1, f15, rdn # perform operation
fdiv.h f29, f1, f15, rmm # perform operation
fdiv.h f29, f1, f15, rne # perform operation
fdiv.h f29, f1, f15, rtz # perform operation
fdiv.h f29, f1, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f1, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f1, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f1, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f1, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f1, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8200)
li x7, 0x241c58ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f15, 0(x2) # load 0x00007dff from memory into f15
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
fdiv.h f7, f15, f10, dyn # perform operation
fdiv.h f7, f15, f10, rdn # perform operation
fdiv.h f7, f15, f10, rmm # perform operation
fdiv.h f7, f15, f10, rne # perform operation
fdiv.h f7, f15, f10, rtz # perform operation
fdiv.h f7, f15, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f15, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f15, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f15, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f15, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f15, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x1)
li x2, 0x738912b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f23, 0(x2) # load 0x00000001 from memory into f23
fdiv.h f2, f5, f23, dyn # perform operation
fdiv.h f2, f5, f23, rdn # perform operation
fdiv.h f2, f5, f23, rmm # perform operation
fdiv.h f2, f5, f23, rne # perform operation
fdiv.h f2, f5, f23, rtz # perform operation
fdiv.h f2, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f5, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8001)
li x25, 0x484e68ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f31, 0(x2) # load 0x00007dff from memory into f31
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f13, 0(x2) # load 0x00008001 from memory into f13
fdiv.h f25, f31, f13, dyn # perform operation
fdiv.h f25, f31, f13, rdn # perform operation
fdiv.h f25, f31, f13, rmm # perform operation
fdiv.h f25, f31, f13, rne # perform operation
fdiv.h f25, f31, f13, rtz # perform operation
fdiv.h f25, f31, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f31, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f31, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f31, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f31, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f31, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7c00)
li x21, 0x1eece81d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f25, 0(x2) # load 0x00007dff from memory into f25
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f19, 0(x2) # load 0x00007c00 from memory into f19
fdiv.h f21, f25, f19, dyn # perform operation
fdiv.h f21, f25, f19, rdn # perform operation
fdiv.h f21, f25, f19, rmm # perform operation
fdiv.h f21, f25, f19, rne # perform operation
fdiv.h f21, f25, f19, rtz # perform operation
fdiv.h f21, f25, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f25, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f25, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f25, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f25, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f25, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfc00)
li x19, 0xfee9327e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f6, 0(x2) # load 0x00007dff from memory into f6
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f30, 0(x2) # load 0x0000fc00 from memory into f30
fdiv.h f19, f6, f30, dyn # perform operation
fdiv.h f19, f6, f30, rdn # perform operation
fdiv.h f19, f6, f30, rmm # perform operation
fdiv.h f19, f6, f30, rne # perform operation
fdiv.h f19, f6, f30, rtz # perform operation
fdiv.h f19, f6, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f6, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f6, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f6, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f6, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f6, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7e00)
li x4, 0x875d70fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f29, 0(x2) # load 0x00007dff from memory into f29
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f12, 0(x2) # load 0x00007e00 from memory into f12
fdiv.h f4, f29, f12, dyn # perform operation
fdiv.h f4, f29, f12, rdn # perform operation
fdiv.h f4, f29, f12, rmm # perform operation
fdiv.h f4, f29, f12, rne # perform operation
fdiv.h f4, f29, f12, rtz # perform operation
fdiv.h f4, f29, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f29, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f29, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f29, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f29, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f29, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7fff)
li x2, 0x04411548 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f3, 0(x2) # load 0x00007dff from memory into f3
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f1, 0(x2) # load 0x00007fff from memory into f1
fdiv.h f2, f3, f1, dyn # perform operation
fdiv.h f2, f3, f1, rdn # perform operation
fdiv.h f2, f3, f1, rmm # perform operation
fdiv.h f2, f3, f1, rne # perform operation
fdiv.h f2, f3, f1, rtz # perform operation
fdiv.h f2, f3, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f3, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f3, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f3, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f3, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f3, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7c01)
li x31, 0xf6b621d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f2, 0(x2) # load 0x00007dff from memory into f2
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f15, 0(x2) # load 0x00007c01 from memory into f15
fdiv.h f31, f2, f15, dyn # perform operation
fdiv.h f31, f2, f15, rdn # perform operation
fdiv.h f31, f2, f15, rmm # perform operation
fdiv.h f31, f2, f15, rne # perform operation
fdiv.h f31, f2, f15, rtz # perform operation
fdiv.h f31, f2, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f2, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f2, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f2, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f2, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f2, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7dff)
li x18, 0x85dca9ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f22, 0(x2) # load 0x00007dff from memory into f22
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f4, 0(x2) # load 0x00007dff from memory into f4
fdiv.h f18, f22, f4, dyn # perform operation
fdiv.h f18, f22, f4, rdn # perform operation
fdiv.h f18, f22, f4, rmm # perform operation
fdiv.h f18, f22, f4, rne # perform operation
fdiv.h f18, f22, f4, rtz # perform operation
fdiv.h f18, f22, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f22, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f22, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f22, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f22, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f22, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x58b4)
li x11, 0xcfa069b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f28, 0(x2) # load 0x00007dff from memory into f28
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
fdiv.h f11, f28, f13, dyn # perform operation
fdiv.h f11, f28, f13, rdn # perform operation
fdiv.h f11, f28, f13, rmm # perform operation
fdiv.h f11, f28, f13, rne # perform operation
fdiv.h f11, f28, f13, rtz # perform operation
fdiv.h f11, f28, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f28, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f28, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f28, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f28, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f28, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xc93a)
li x14, 0x0af321af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f15, 0(x2) # load 0x00007dff from memory into f15
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f8, 0(x2) # load 0x0000c93a from memory into f8
fdiv.h f14, f15, f8, dyn # perform operation
fdiv.h f14, f15, f8, rdn # perform operation
fdiv.h f14, f15, f8, rmm # perform operation
fdiv.h f14, f15, f8, rne # perform operation
fdiv.h f14, f15, f8, rtz # perform operation
fdiv.h f14, f15, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f15, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f15, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f15, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f15, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f15, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x0)
li x16, 0x65aa32bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
fdiv.h f16, f11, f19, dyn # perform operation
fdiv.h f16, f11, f19, rdn # perform operation
fdiv.h f16, f11, f19, rmm # perform operation
fdiv.h f16, f11, f19, rne # perform operation
fdiv.h f16, f11, f19, rtz # perform operation
fdiv.h f16, f11, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f11, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f11, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f11, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f11, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f11, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8000)
li x2, 0x56fbc333 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f12, 0(x2) # load 0x000058b4 from memory into f12
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f27, 0(x2) # load 0x00008000 from memory into f27
fdiv.h f2, f12, f27, dyn # perform operation
fdiv.h f2, f12, f27, rdn # perform operation
fdiv.h f2, f12, f27, rmm # perform operation
fdiv.h f2, f12, f27, rne # perform operation
fdiv.h f2, f12, f27, rtz # perform operation
fdiv.h f2, f12, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f12, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f12, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f12, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f12, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f12, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3c00)
li x12, 0x611ced39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
fdiv.h f12, f13, f5, dyn # perform operation
fdiv.h f12, f13, f5, rdn # perform operation
fdiv.h f12, f13, f5, rmm # perform operation
fdiv.h f12, f13, f5, rne # perform operation
fdiv.h f12, f13, f5, rtz # perform operation
fdiv.h f12, f13, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f13, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f13, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f13, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f13, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f13, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xbc00)
li x1, 0x417de55f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f26, 0(x2) # load 0x000058b4 from memory into f26
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
fdiv.h f1, f26, f15, dyn # perform operation
fdiv.h f1, f26, f15, rdn # perform operation
fdiv.h f1, f26, f15, rmm # perform operation
fdiv.h f1, f26, f15, rne # perform operation
fdiv.h f1, f26, f15, rtz # perform operation
fdiv.h f1, f26, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f26, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f26, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f26, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f26, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f26, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3e00)
li x20, 0xa905fff2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f28, 0(x2) # load 0x000058b4 from memory into f28
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
fdiv.h f20, f28, f29, dyn # perform operation
fdiv.h f20, f28, f29, rdn # perform operation
fdiv.h f20, f28, f29, rmm # perform operation
fdiv.h f20, f28, f29, rne # perform operation
fdiv.h f20, f28, f29, rtz # perform operation
fdiv.h f20, f28, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f28, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f28, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f28, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f28, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f28, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xbe00)
li x30, 0xe0a13a18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f12, 0(x2) # load 0x0000be00 from memory into f12
fdiv.h f30, f24, f12, dyn # perform operation
fdiv.h f30, f24, f12, rdn # perform operation
fdiv.h f30, f24, f12, rmm # perform operation
fdiv.h f30, f24, f12, rne # perform operation
fdiv.h f30, f24, f12, rtz # perform operation
fdiv.h f30, f24, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f24, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f24, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f24, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f24, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f24, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x4000)
li x2, 0xd7c679cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f3, 0(x2) # load 0x00004000 from memory into f3
fdiv.h f2, f8, f3, dyn # perform operation
fdiv.h f2, f8, f3, rdn # perform operation
fdiv.h f2, f8, f3, rmm # perform operation
fdiv.h f2, f8, f3, rne # perform operation
fdiv.h f2, f8, f3, rtz # perform operation
fdiv.h f2, f8, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f8, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f8, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f8, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f8, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f8, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xc000)
li x6, 0x7b14e694 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f11, 0(x2) # load 0x0000c000 from memory into f11
fdiv.h f6, f30, f11, dyn # perform operation
fdiv.h f6, f30, f11, rdn # perform operation
fdiv.h f6, f30, f11, rmm # perform operation
fdiv.h f6, f30, f11, rne # perform operation
fdiv.h f6, f30, f11, rtz # perform operation
fdiv.h f6, f30, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f30, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f30, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f30, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f30, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f30, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x400)
li x3, 0xdca72975 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f27, 0(x2) # load 0x000058b4 from memory into f27
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f28, 0(x2) # load 0x00000400 from memory into f28
fdiv.h f3, f27, f28, dyn # perform operation
fdiv.h f3, f27, f28, rdn # perform operation
fdiv.h f3, f27, f28, rmm # perform operation
fdiv.h f3, f27, f28, rne # perform operation
fdiv.h f3, f27, f28, rtz # perform operation
fdiv.h f3, f27, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f27, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f27, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f27, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f27, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f27, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8400)
li x1, 0x44316e6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f4, 0(x2) # load 0x000058b4 from memory into f4
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
fdiv.h f1, f4, f26, dyn # perform operation
fdiv.h f1, f4, f26, rdn # perform operation
fdiv.h f1, f4, f26, rmm # perform operation
fdiv.h f1, f4, f26, rne # perform operation
fdiv.h f1, f4, f26, rtz # perform operation
fdiv.h f1, f4, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f4, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f4, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f4, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f4, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f4, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7bff)
li x23, 0x2b3fe220 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f28, 0(x2) # load 0x000058b4 from memory into f28
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f22, 0(x2) # load 0x00007bff from memory into f22
fdiv.h f23, f28, f22, dyn # perform operation
fdiv.h f23, f28, f22, rdn # perform operation
fdiv.h f23, f28, f22, rmm # perform operation
fdiv.h f23, f28, f22, rne # perform operation
fdiv.h f23, f28, f22, rtz # perform operation
fdiv.h f23, f28, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f28, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f28, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f28, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f28, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f28, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfbff)
li x1, 0xa3d7499a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f24, 0(x2) # load 0x0000fbff from memory into f24
fdiv.h f1, f23, f24, dyn # perform operation
fdiv.h f1, f23, f24, rdn # perform operation
fdiv.h f1, f23, f24, rmm # perform operation
fdiv.h f1, f23, f24, rne # perform operation
fdiv.h f1, f23, f24, rtz # perform operation
fdiv.h f1, f23, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f23, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f23, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f23, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f23, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f23, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3ff)
li x14, 0xc8764f66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f7, 0(x2) # load 0x000058b4 from memory into f7
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f11, 0(x2) # load 0x000003ff from memory into f11
fdiv.h f14, f7, f11, dyn # perform operation
fdiv.h f14, f7, f11, rdn # perform operation
fdiv.h f14, f7, f11, rmm # perform operation
fdiv.h f14, f7, f11, rne # perform operation
fdiv.h f14, f7, f11, rtz # perform operation
fdiv.h f14, f7, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f7, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f7, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f7, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f7, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f7, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x83ff)
li x10, 0x64d6c4e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f15, 0(x2) # load 0x000058b4 from memory into f15
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
fdiv.h f10, f15, f16, dyn # perform operation
fdiv.h f10, f15, f16, rdn # perform operation
fdiv.h f10, f15, f16, rmm # perform operation
fdiv.h f10, f15, f16, rne # perform operation
fdiv.h f10, f15, f16, rtz # perform operation
fdiv.h f10, f15, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f15, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f15, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f15, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f15, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f15, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x200)
li x28, 0x39a89a0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f21, 0(x2) # load 0x000058b4 from memory into f21
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f18, 0(x2) # load 0x00000200 from memory into f18
fdiv.h f28, f21, f18, dyn # perform operation
fdiv.h f28, f21, f18, rdn # perform operation
fdiv.h f28, f21, f18, rmm # perform operation
fdiv.h f28, f21, f18, rne # perform operation
fdiv.h f28, f21, f18, rtz # perform operation
fdiv.h f28, f21, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f21, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f21, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f21, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f21, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f21, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8200)
li x23, 0x4571ab0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f19, 0(x2) # load 0x000058b4 from memory into f19
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f29, 0(x2) # load 0x00008200 from memory into f29
fdiv.h f23, f19, f29, dyn # perform operation
fdiv.h f23, f19, f29, rdn # perform operation
fdiv.h f23, f19, f29, rmm # perform operation
fdiv.h f23, f19, f29, rne # perform operation
fdiv.h f23, f19, f29, rtz # perform operation
fdiv.h f23, f19, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f19, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f19, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f19, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f19, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f19, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x1)
li x9, 0xb739c395 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f7, 0(x2) # load 0x000058b4 from memory into f7
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
fdiv.h f9, f7, f20, dyn # perform operation
fdiv.h f9, f7, f20, rdn # perform operation
fdiv.h f9, f7, f20, rmm # perform operation
fdiv.h f9, f7, f20, rne # perform operation
fdiv.h f9, f7, f20, rtz # perform operation
fdiv.h f9, f7, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f7, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f7, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f7, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f7, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f7, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8001)
li x7, 0xb4d2bd2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f9, 0(x2) # load 0x000058b4 from memory into f9
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f27, 0(x2) # load 0x00008001 from memory into f27
fdiv.h f7, f9, f27, dyn # perform operation
fdiv.h f7, f9, f27, rdn # perform operation
fdiv.h f7, f9, f27, rmm # perform operation
fdiv.h f7, f9, f27, rne # perform operation
fdiv.h f7, f9, f27, rtz # perform operation
fdiv.h f7, f9, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f9, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f9, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f9, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f9, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f9, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7c00)
li x30, 0xc86c9e8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
fdiv.h f30, f24, f2, dyn # perform operation
fdiv.h f30, f24, f2, rdn # perform operation
fdiv.h f30, f24, f2, rmm # perform operation
fdiv.h f30, f24, f2, rne # perform operation
fdiv.h f30, f24, f2, rtz # perform operation
fdiv.h f30, f24, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f24, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f24, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f24, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f24, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f24, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfc00)
li x19, 0x36e792d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
fdiv.h f19, f17, f3, dyn # perform operation
fdiv.h f19, f17, f3, rdn # perform operation
fdiv.h f19, f17, f3, rmm # perform operation
fdiv.h f19, f17, f3, rne # perform operation
fdiv.h f19, f17, f3, rtz # perform operation
fdiv.h f19, f17, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f17, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f17, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f17, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f17, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f17, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7e00)
li x10, 0x10870f15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
fdiv.h f10, f24, f21, dyn # perform operation
fdiv.h f10, f24, f21, rdn # perform operation
fdiv.h f10, f24, f21, rmm # perform operation
fdiv.h f10, f24, f21, rne # perform operation
fdiv.h f10, f24, f21, rtz # perform operation
fdiv.h f10, f24, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f24, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f24, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f24, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f24, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f24, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7fff)
li x3, 0xbd5a1cfc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f26, 0(x2) # load 0x00007fff from memory into f26
fdiv.h f3, f23, f26, dyn # perform operation
fdiv.h f3, f23, f26, rdn # perform operation
fdiv.h f3, f23, f26, rmm # perform operation
fdiv.h f3, f23, f26, rne # perform operation
fdiv.h f3, f23, f26, rtz # perform operation
fdiv.h f3, f23, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f23, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f23, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f23, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f23, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f23, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7c01)
li x23, 0xa96da613 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
fdiv.h f23, f3, f16, dyn # perform operation
fdiv.h f23, f3, f16, rdn # perform operation
fdiv.h f23, f3, f16, rmm # perform operation
fdiv.h f23, f3, f16, rne # perform operation
fdiv.h f23, f3, f16, rtz # perform operation
fdiv.h f23, f3, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f3, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f3, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f3, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f3, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f3, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7dff)
li x13, 0x79c253bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f26, 0(x2) # load 0x00007dff from memory into f26
fdiv.h f13, f24, f26, dyn # perform operation
fdiv.h f13, f24, f26, rdn # perform operation
fdiv.h f13, f24, f26, rmm # perform operation
fdiv.h f13, f24, f26, rne # perform operation
fdiv.h f13, f24, f26, rtz # perform operation
fdiv.h f13, f24, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f24, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f24, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f24, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f24, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f24, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x58b4)
li x25, 0x2fd8e52f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f27, 0(x2) # load 0x000058b4 from memory into f27
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f4, 0(x2) # load 0x000058b4 from memory into f4
fdiv.h f25, f27, f4, dyn # perform operation
fdiv.h f25, f27, f4, rdn # perform operation
fdiv.h f25, f27, f4, rmm # perform operation
fdiv.h f25, f27, f4, rne # perform operation
fdiv.h f25, f27, f4, rtz # perform operation
fdiv.h f25, f27, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f27, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f27, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f27, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f27, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f27, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xc93a)
li x1, 0xe400e62c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f28, 0(x2) # load 0x000058b4 from memory into f28
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
fdiv.h f1, f28, f21, dyn # perform operation
fdiv.h f1, f28, f21, rdn # perform operation
fdiv.h f1, f28, f21, rmm # perform operation
fdiv.h f1, f28, f21, rne # perform operation
fdiv.h f1, f28, f21, rtz # perform operation
fdiv.h f1, f28, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f28, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f28, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f28, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f28, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f28, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x0)
li x25, 0xc5ac9f43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f8, 0(x2) # load 0x00000000 from memory into f8
fdiv.h f25, f26, f8, dyn # perform operation
fdiv.h f25, f26, f8, rdn # perform operation
fdiv.h f25, f26, f8, rmm # perform operation
fdiv.h f25, f26, f8, rne # perform operation
fdiv.h f25, f26, f8, rtz # perform operation
fdiv.h f25, f26, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f26, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f26, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f26, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f26, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f26, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8000)
li x12, 0xad62c355 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f3, 0(x2) # load 0x0000c93a from memory into f3
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f16, 0(x2) # load 0x00008000 from memory into f16
fdiv.h f12, f3, f16, dyn # perform operation
fdiv.h f12, f3, f16, rdn # perform operation
fdiv.h f12, f3, f16, rmm # perform operation
fdiv.h f12, f3, f16, rne # perform operation
fdiv.h f12, f3, f16, rtz # perform operation
fdiv.h f12, f3, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f3, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f3, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f3, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f3, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f3, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3c00)
li x16, 0x255e9aa8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f11, 0(x2) # load 0x0000c93a from memory into f11
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
fdiv.h f16, f11, f30, dyn # perform operation
fdiv.h f16, f11, f30, rdn # perform operation
fdiv.h f16, f11, f30, rmm # perform operation
fdiv.h f16, f11, f30, rne # perform operation
fdiv.h f16, f11, f30, rtz # perform operation
fdiv.h f16, f11, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f11, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f11, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f11, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f11, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f11, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xbc00)
li x5, 0x2268b571 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f13, 0(x2) # load 0x0000c93a from memory into f13
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
fdiv.h f5, f13, f16, dyn # perform operation
fdiv.h f5, f13, f16, rdn # perform operation
fdiv.h f5, f13, f16, rmm # perform operation
fdiv.h f5, f13, f16, rne # perform operation
fdiv.h f5, f13, f16, rtz # perform operation
fdiv.h f5, f13, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f13, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f13, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f13, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f13, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f13, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3e00)
li x5, 0xf2bf8dc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
fdiv.h f5, f18, f17, dyn # perform operation
fdiv.h f5, f18, f17, rdn # perform operation
fdiv.h f5, f18, f17, rmm # perform operation
fdiv.h f5, f18, f17, rne # perform operation
fdiv.h f5, f18, f17, rtz # perform operation
fdiv.h f5, f18, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f18, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f18, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f18, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f18, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f18, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xbe00)
li x4, 0x01578147 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f1, 0(x2) # load 0x0000c93a from memory into f1
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f3, 0(x2) # load 0x0000be00 from memory into f3
fdiv.h f4, f1, f3, dyn # perform operation
fdiv.h f4, f1, f3, rdn # perform operation
fdiv.h f4, f1, f3, rmm # perform operation
fdiv.h f4, f1, f3, rne # perform operation
fdiv.h f4, f1, f3, rtz # perform operation
fdiv.h f4, f1, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f1, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f1, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f1, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f1, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f1, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x4000)
li x24, 0xa5e17194 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f12, 0(x2) # load 0x00004000 from memory into f12
fdiv.h f24, f18, f12, dyn # perform operation
fdiv.h f24, f18, f12, rdn # perform operation
fdiv.h f24, f18, f12, rmm # perform operation
fdiv.h f24, f18, f12, rne # perform operation
fdiv.h f24, f18, f12, rtz # perform operation
fdiv.h f24, f18, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f18, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f18, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f18, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f18, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f18, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xc000)
li x11, 0x4a3c67f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f25, 0(x2) # load 0x0000c93a from memory into f25
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
fdiv.h f11, f25, f26, dyn # perform operation
fdiv.h f11, f25, f26, rdn # perform operation
fdiv.h f11, f25, f26, rmm # perform operation
fdiv.h f11, f25, f26, rne # perform operation
fdiv.h f11, f25, f26, rtz # perform operation
fdiv.h f11, f25, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f25, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f25, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f25, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f25, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f25, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x400)
li x2, 0xff25183f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f24, 0(x2) # load 0x0000c93a from memory into f24
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
fdiv.h f2, f24, f30, dyn # perform operation
fdiv.h f2, f24, f30, rdn # perform operation
fdiv.h f2, f24, f30, rmm # perform operation
fdiv.h f2, f24, f30, rne # perform operation
fdiv.h f2, f24, f30, rtz # perform operation
fdiv.h f2, f24, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f24, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f24, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f24, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f24, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f24, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8400)
li x21, 0xd78ecb5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f19, 0(x2) # load 0x0000c93a from memory into f19
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
fdiv.h f21, f19, f24, dyn # perform operation
fdiv.h f21, f19, f24, rdn # perform operation
fdiv.h f21, f19, f24, rmm # perform operation
fdiv.h f21, f19, f24, rne # perform operation
fdiv.h f21, f19, f24, rtz # perform operation
fdiv.h f21, f19, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f19, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f19, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f19, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f19, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f19, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7bff)
li x29, 0x9f6e7acd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f15, 0(x2) # load 0x0000c93a from memory into f15
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
fdiv.h f29, f15, f12, dyn # perform operation
fdiv.h f29, f15, f12, rdn # perform operation
fdiv.h f29, f15, f12, rmm # perform operation
fdiv.h f29, f15, f12, rne # perform operation
fdiv.h f29, f15, f12, rtz # perform operation
fdiv.h f29, f15, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f15, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f15, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f15, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f15, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f15, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfbff)
li x15, 0x1725b6c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
fdiv.h f15, f30, f2, dyn # perform operation
fdiv.h f15, f30, f2, rdn # perform operation
fdiv.h f15, f30, f2, rmm # perform operation
fdiv.h f15, f30, f2, rne # perform operation
fdiv.h f15, f30, f2, rtz # perform operation
fdiv.h f15, f30, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f30, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f30, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f30, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f30, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f30, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3ff)
li x31, 0xdb2f477f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f14, 0(x2) # load 0x0000c93a from memory into f14
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f26, 0(x2) # load 0x000003ff from memory into f26
fdiv.h f31, f14, f26, dyn # perform operation
fdiv.h f31, f14, f26, rdn # perform operation
fdiv.h f31, f14, f26, rmm # perform operation
fdiv.h f31, f14, f26, rne # perform operation
fdiv.h f31, f14, f26, rtz # perform operation
fdiv.h f31, f14, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f14, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f14, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f14, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f14, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f14, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x83ff)
li x19, 0xdc32e2d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
fdiv.h f19, f21, f23, dyn # perform operation
fdiv.h f19, f21, f23, rdn # perform operation
fdiv.h f19, f21, f23, rmm # perform operation
fdiv.h f19, f21, f23, rne # perform operation
fdiv.h f19, f21, f23, rtz # perform operation
fdiv.h f19, f21, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f21, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f21, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f21, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f21, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f21, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x200)
li x8, 0x2afda64d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f27, 0(x2) # load 0x0000c93a from memory into f27
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
fdiv.h f8, f27, f19, dyn # perform operation
fdiv.h f8, f27, f19, rdn # perform operation
fdiv.h f8, f27, f19, rmm # perform operation
fdiv.h f8, f27, f19, rne # perform operation
fdiv.h f8, f27, f19, rtz # perform operation
fdiv.h f8, f27, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f27, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f27, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f27, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f27, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f27, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8200)
li x27, 0x203c973d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
fdiv.h f27, f2, f20, dyn # perform operation
fdiv.h f27, f2, f20, rdn # perform operation
fdiv.h f27, f2, f20, rmm # perform operation
fdiv.h f27, f2, f20, rne # perform operation
fdiv.h f27, f2, f20, rtz # perform operation
fdiv.h f27, f2, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f2, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f2, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f2, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f2, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f2, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x1)
li x7, 0x47fbfb07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f31, 0(x2) # load 0x0000c93a from memory into f31
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
fdiv.h f7, f31, f27, dyn # perform operation
fdiv.h f7, f31, f27, rdn # perform operation
fdiv.h f7, f31, f27, rmm # perform operation
fdiv.h f7, f31, f27, rne # perform operation
fdiv.h f7, f31, f27, rtz # perform operation
fdiv.h f7, f31, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f31, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f31, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f31, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f31, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f31, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8001)
li x24, 0x7e9ec43c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f16, 0(x2) # load 0x0000c93a from memory into f16
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f1, 0(x2) # load 0x00008001 from memory into f1
fdiv.h f24, f16, f1, dyn # perform operation
fdiv.h f24, f16, f1, rdn # perform operation
fdiv.h f24, f16, f1, rmm # perform operation
fdiv.h f24, f16, f1, rne # perform operation
fdiv.h f24, f16, f1, rtz # perform operation
fdiv.h f24, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f16, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7c00)
li x8, 0x8086128e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f23, 0(x2) # load 0x0000c93a from memory into f23
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f12, 0(x2) # load 0x00007c00 from memory into f12
fdiv.h f8, f23, f12, dyn # perform operation
fdiv.h f8, f23, f12, rdn # perform operation
fdiv.h f8, f23, f12, rmm # perform operation
fdiv.h f8, f23, f12, rne # perform operation
fdiv.h f8, f23, f12, rtz # perform operation
fdiv.h f8, f23, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f23, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f23, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f23, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f23, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f23, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfc00)
li x26, 0xfe74a081 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f20, 0(x2) # load 0x0000fc00 from memory into f20
fdiv.h f26, f2, f20, dyn # perform operation
fdiv.h f26, f2, f20, rdn # perform operation
fdiv.h f26, f2, f20, rmm # perform operation
fdiv.h f26, f2, f20, rne # perform operation
fdiv.h f26, f2, f20, rtz # perform operation
fdiv.h f26, f2, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f2, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f2, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f2, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f2, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f2, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7e00)
li x8, 0x5b00a7e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f16, 0(x2) # load 0x0000c93a from memory into f16
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f27, 0(x2) # load 0x00007e00 from memory into f27
fdiv.h f8, f16, f27, dyn # perform operation
fdiv.h f8, f16, f27, rdn # perform operation
fdiv.h f8, f16, f27, rmm # perform operation
fdiv.h f8, f16, f27, rne # perform operation
fdiv.h f8, f16, f27, rtz # perform operation
fdiv.h f8, f16, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f16, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f16, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f16, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f16, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f16, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7fff)
li x5, 0xb6ec881d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
fdiv.h f5, f18, f24, dyn # perform operation
fdiv.h f5, f18, f24, rdn # perform operation
fdiv.h f5, f18, f24, rmm # perform operation
fdiv.h f5, f18, f24, rne # perform operation
fdiv.h f5, f18, f24, rtz # perform operation
fdiv.h f5, f18, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f18, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f18, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f18, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f18, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f18, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7c01)
li x5, 0xa46f4254 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f1, 0(x2) # load 0x0000c93a from memory into f1
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
fdiv.h f5, f1, f12, dyn # perform operation
fdiv.h f5, f1, f12, rdn # perform operation
fdiv.h f5, f1, f12, rmm # perform operation
fdiv.h f5, f1, f12, rne # perform operation
fdiv.h f5, f1, f12, rtz # perform operation
fdiv.h f5, f1, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f1, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f1, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f1, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f1, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f1, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7dff)
li x8, 0x10d29489 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f28, 0(x2) # load 0x0000c93a from memory into f28
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f31, 0(x2) # load 0x00007dff from memory into f31
fdiv.h f8, f28, f31, dyn # perform operation
fdiv.h f8, f28, f31, rdn # perform operation
fdiv.h f8, f28, f31, rmm # perform operation
fdiv.h f8, f28, f31, rne # perform operation
fdiv.h f8, f28, f31, rtz # perform operation
fdiv.h f8, f28, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f28, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f28, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f28, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f28, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f28, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x58b4)
li x21, 0x7503eba2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
fdiv.h f21, f6, f10, dyn # perform operation
fdiv.h f21, f6, f10, rdn # perform operation
fdiv.h f21, f6, f10, rmm # perform operation
fdiv.h f21, f6, f10, rne # perform operation
fdiv.h f21, f6, f10, rtz # perform operation
fdiv.h f21, f6, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f6, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f6, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f6, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f6, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f6, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xc93a)
li x2, 0x07d8dc13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f1, 0(x2) # load 0x0000c93a from memory into f1
fdiv.h f2, f18, f1, dyn # perform operation
fdiv.h f2, f18, f1, rdn # perform operation
fdiv.h f2, f18, f1, rmm # perform operation
fdiv.h f2, f18, f1, rne # perform operation
fdiv.h f2, f18, f1, rtz # perform operation
fdiv.h f2, f18, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f18, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f18, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f18, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f18, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f18, f1 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0xae204406 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa7d64a45 # load x3 with value 0xa7d64a45
sw x3, 0(x2) # store 0xa7d64a45 in memory
flh f30, 0(x2) # load 0xa7d64a45 from memory into f30
li x3, 0x611c4382 # load x3 with value 0x611c4382
sw x3, 0(x2) # store 0x611c4382 in memory
flh f21, 0(x2) # load 0x611c4382 from memory into f21
fdiv.h f0, f30, f21 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x68fbc789 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4b809ea5 # load x3 with value 0x4b809ea5
sw x3, 0(x2) # store 0x4b809ea5 in memory
flh f28, 0(x2) # load 0x4b809ea5 from memory into f28
li x3, 0x0946b5b7 # load x3 with value 0x0946b5b7
sw x3, 0(x2) # store 0x0946b5b7 in memory
flh f7, 0(x2) # load 0x0946b5b7 from memory into f7
fdiv.h f1, f28, f7 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x81f40fff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3104e5b6 # load x3 with value 0x3104e5b6
sw x3, 0(x2) # store 0x3104e5b6 in memory
flh f8, 0(x2) # load 0x3104e5b6 from memory into f8
li x3, 0x323f2d18 # load x3 with value 0x323f2d18
sw x3, 0(x2) # store 0x323f2d18 in memory
flh f6, 0(x2) # load 0x323f2d18 from memory into f6
fdiv.h f2, f8, f6 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0xa72f6dbd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x434dc5de # load x3 with value 0x434dc5de
sw x3, 0(x2) # store 0x434dc5de in memory
flh f4, 0(x2) # load 0x434dc5de from memory into f4
li x3, 0xb8e3086e # load x3 with value 0xb8e3086e
sw x3, 0(x2) # store 0xb8e3086e in memory
flh f13, 0(x2) # load 0xb8e3086e from memory into f13
fdiv.h f3, f4, f13 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x6a4f74d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2ef428e0 # load x3 with value 0x2ef428e0
sw x3, 0(x2) # store 0x2ef428e0 in memory
flh f16, 0(x2) # load 0x2ef428e0 from memory into f16
li x3, 0xaa684f97 # load x3 with value 0xaa684f97
sw x3, 0(x2) # store 0xaa684f97 in memory
flh f19, 0(x2) # load 0xaa684f97 from memory into f19
fdiv.h f4, f16, f19 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0xa6ed5520 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf1257b6b # load x3 with value 0xf1257b6b
sw x3, 0(x2) # store 0xf1257b6b in memory
flh f16, 0(x2) # load 0xf1257b6b from memory into f16
li x3, 0x2c997a24 # load x3 with value 0x2c997a24
sw x3, 0(x2) # store 0x2c997a24 in memory
flh f11, 0(x2) # load 0x2c997a24 from memory into f11
fdiv.h f5, f16, f11 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0xe79a9c8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb2cfa007 # load x3 with value 0xb2cfa007
sw x3, 0(x2) # store 0xb2cfa007 in memory
flh f27, 0(x2) # load 0xb2cfa007 from memory into f27
li x3, 0xe501a799 # load x3 with value 0xe501a799
sw x3, 0(x2) # store 0xe501a799 in memory
flh f5, 0(x2) # load 0xe501a799 from memory into f5
fdiv.h f6, f27, f5 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0xd4ae2020 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb3dbd616 # load x3 with value 0xb3dbd616
sw x3, 0(x2) # store 0xb3dbd616 in memory
flh f20, 0(x2) # load 0xb3dbd616 from memory into f20
li x3, 0x9220b8f5 # load x3 with value 0x9220b8f5
sw x3, 0(x2) # store 0x9220b8f5 in memory
flh f25, 0(x2) # load 0x9220b8f5 from memory into f25
fdiv.h f7, f20, f25 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x1a34647a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x821bfc52 # load x3 with value 0x821bfc52
sw x3, 0(x2) # store 0x821bfc52 in memory
flh f8, 0(x2) # load 0x821bfc52 from memory into f8
li x3, 0x2154e656 # load x3 with value 0x2154e656
sw x3, 0(x2) # store 0x2154e656 in memory
flh f4, 0(x2) # load 0x2154e656 from memory into f4
fdiv.h f8, f8, f4 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x134b31e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdd6529b9 # load x3 with value 0xdd6529b9
sw x3, 0(x2) # store 0xdd6529b9 in memory
flh f6, 0(x2) # load 0xdd6529b9 from memory into f6
li x3, 0x1f47ffdb # load x3 with value 0x1f47ffdb
sw x3, 0(x2) # store 0x1f47ffdb in memory
flh f13, 0(x2) # load 0x1f47ffdb from memory into f13
fdiv.h f9, f6, f13 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x960b7077 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd4167454 # load x3 with value 0xd4167454
sw x3, 0(x2) # store 0xd4167454 in memory
flh f26, 0(x2) # load 0xd4167454 from memory into f26
li x3, 0x4d571d24 # load x3 with value 0x4d571d24
sw x3, 0(x2) # store 0x4d571d24 in memory
flh f21, 0(x2) # load 0x4d571d24 from memory into f21
fdiv.h f10, f26, f21 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0xeb76ff42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfbad100e # load x3 with value 0xfbad100e
sw x3, 0(x2) # store 0xfbad100e in memory
flh f23, 0(x2) # load 0xfbad100e from memory into f23
li x3, 0xa2435188 # load x3 with value 0xa2435188
sw x3, 0(x2) # store 0xa2435188 in memory
flh f14, 0(x2) # load 0xa2435188 from memory into f14
fdiv.h f11, f23, f14 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0xcbd32192 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0462895e # load x3 with value 0x0462895e
sw x3, 0(x2) # store 0x0462895e in memory
flh f23, 0(x2) # load 0x0462895e from memory into f23
li x3, 0x67f48746 # load x3 with value 0x67f48746
sw x3, 0(x2) # store 0x67f48746 in memory
flh f16, 0(x2) # load 0x67f48746 from memory into f16
fdiv.h f12, f23, f16 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x69a00e37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc75db489 # load x3 with value 0xc75db489
sw x3, 0(x2) # store 0xc75db489 in memory
flh f14, 0(x2) # load 0xc75db489 from memory into f14
li x3, 0x3cfaa498 # load x3 with value 0x3cfaa498
sw x3, 0(x2) # store 0x3cfaa498 in memory
flh f22, 0(x2) # load 0x3cfaa498 from memory into f22
fdiv.h f13, f14, f22 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x9be3a8e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7184b179 # load x3 with value 0x7184b179
sw x3, 0(x2) # store 0x7184b179 in memory
flh f10, 0(x2) # load 0x7184b179 from memory into f10
li x3, 0xc3432c3d # load x3 with value 0xc3432c3d
sw x3, 0(x2) # store 0xc3432c3d in memory
flh f30, 0(x2) # load 0xc3432c3d from memory into f30
fdiv.h f14, f10, f30 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x5fbfd1e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x13f63d72 # load x3 with value 0x13f63d72
sw x3, 0(x2) # store 0x13f63d72 in memory
flh f27, 0(x2) # load 0x13f63d72 from memory into f27
li x3, 0x30fd8afd # load x3 with value 0x30fd8afd
sw x3, 0(x2) # store 0x30fd8afd in memory
flh f13, 0(x2) # load 0x30fd8afd from memory into f13
fdiv.h f15, f27, f13 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0xda1e855e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x42427792 # load x3 with value 0x42427792
sw x3, 0(x2) # store 0x42427792 in memory
flh f16, 0(x2) # load 0x42427792 from memory into f16
li x3, 0x3a81a3a4 # load x3 with value 0x3a81a3a4
sw x3, 0(x2) # store 0x3a81a3a4 in memory
flh f30, 0(x2) # load 0x3a81a3a4 from memory into f30
fdiv.h f16, f16, f30 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x2ba284ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5d3c804d # load x3 with value 0x5d3c804d
sw x3, 0(x2) # store 0x5d3c804d in memory
flh f31, 0(x2) # load 0x5d3c804d from memory into f31
li x3, 0x93489ae5 # load x3 with value 0x93489ae5
sw x3, 0(x2) # store 0x93489ae5 in memory
flh f21, 0(x2) # load 0x93489ae5 from memory into f21
fdiv.h f17, f31, f21 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x56460050 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x43b76443 # load x3 with value 0x43b76443
sw x3, 0(x2) # store 0x43b76443 in memory
flh f21, 0(x2) # load 0x43b76443 from memory into f21
li x3, 0x58a6644a # load x3 with value 0x58a6644a
sw x3, 0(x2) # store 0x58a6644a in memory
flh f30, 0(x2) # load 0x58a6644a from memory into f30
fdiv.h f18, f21, f30 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x51c01dfb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x56286977 # load x3 with value 0x56286977
sw x3, 0(x2) # store 0x56286977 in memory
flh f1, 0(x2) # load 0x56286977 from memory into f1
li x3, 0x0d5fd672 # load x3 with value 0x0d5fd672
sw x3, 0(x2) # store 0x0d5fd672 in memory
flh f29, 0(x2) # load 0x0d5fd672 from memory into f29
fdiv.h f19, f1, f29 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x5982baeb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x14db543d # load x3 with value 0x14db543d
sw x3, 0(x2) # store 0x14db543d in memory
flh f20, 0(x2) # load 0x14db543d from memory into f20
li x3, 0xee3440db # load x3 with value 0xee3440db
sw x3, 0(x2) # store 0xee3440db in memory
flh f10, 0(x2) # load 0xee3440db from memory into f10
fdiv.h f20, f20, f10 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0xc692049d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x937e0950 # load x3 with value 0x937e0950
sw x3, 0(x2) # store 0x937e0950 in memory
flh f8, 0(x2) # load 0x937e0950 from memory into f8
li x3, 0x9d3f2d47 # load x3 with value 0x9d3f2d47
sw x3, 0(x2) # store 0x9d3f2d47 in memory
flh f10, 0(x2) # load 0x9d3f2d47 from memory into f10
fdiv.h f21, f8, f10 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x025706e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x23859057 # load x3 with value 0x23859057
sw x3, 0(x2) # store 0x23859057 in memory
flh f20, 0(x2) # load 0x23859057 from memory into f20
li x3, 0xa644e001 # load x3 with value 0xa644e001
sw x3, 0(x2) # store 0xa644e001 in memory
flh f6, 0(x2) # load 0xa644e001 from memory into f6
fdiv.h f22, f20, f6 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0xd30143c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc4c34a2b # load x3 with value 0xc4c34a2b
sw x3, 0(x2) # store 0xc4c34a2b in memory
flh f10, 0(x2) # load 0xc4c34a2b from memory into f10
li x3, 0x027c1f5d # load x3 with value 0x027c1f5d
sw x3, 0(x2) # store 0x027c1f5d in memory
flh f23, 0(x2) # load 0x027c1f5d from memory into f23
fdiv.h f23, f10, f23 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x839fdedd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbcf98cba # load x3 with value 0xbcf98cba
sw x3, 0(x2) # store 0xbcf98cba in memory
flh f29, 0(x2) # load 0xbcf98cba from memory into f29
li x3, 0x5dc8bc76 # load x3 with value 0x5dc8bc76
sw x3, 0(x2) # store 0x5dc8bc76 in memory
flh f7, 0(x2) # load 0x5dc8bc76 from memory into f7
fdiv.h f24, f29, f7 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x220e2ceb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5154350a # load x3 with value 0x5154350a
sw x3, 0(x2) # store 0x5154350a in memory
flh f12, 0(x2) # load 0x5154350a from memory into f12
li x3, 0xa5e3b063 # load x3 with value 0xa5e3b063
sw x3, 0(x2) # store 0xa5e3b063 in memory
flh f1, 0(x2) # load 0xa5e3b063 from memory into f1
fdiv.h f25, f12, f1 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xe149ad98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6a395685 # load x3 with value 0x6a395685
sw x3, 0(x2) # store 0x6a395685 in memory
flh f14, 0(x2) # load 0x6a395685 from memory into f14
li x3, 0x0fafa108 # load x3 with value 0x0fafa108
sw x3, 0(x2) # store 0x0fafa108 in memory
flh f26, 0(x2) # load 0x0fafa108 from memory into f26
fdiv.h f26, f14, f26 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x09875396 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbcb76e6a # load x3 with value 0xbcb76e6a
sw x3, 0(x2) # store 0xbcb76e6a in memory
flh f13, 0(x2) # load 0xbcb76e6a from memory into f13
li x3, 0x21b1c190 # load x3 with value 0x21b1c190
sw x3, 0(x2) # store 0x21b1c190 in memory
flh f18, 0(x2) # load 0x21b1c190 from memory into f18
fdiv.h f27, f13, f18 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0xf98af5d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8bdfbfd9 # load x3 with value 0x8bdfbfd9
sw x3, 0(x2) # store 0x8bdfbfd9 in memory
flh f18, 0(x2) # load 0x8bdfbfd9 from memory into f18
li x3, 0x19dd46b4 # load x3 with value 0x19dd46b4
sw x3, 0(x2) # store 0x19dd46b4 in memory
flh f24, 0(x2) # load 0x19dd46b4 from memory into f24
fdiv.h f28, f18, f24 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0xcc24877b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xec4045b1 # load x3 with value 0xec4045b1
sw x3, 0(x2) # store 0xec4045b1 in memory
flh f18, 0(x2) # load 0xec4045b1 from memory into f18
li x3, 0x419b7d7d # load x3 with value 0x419b7d7d
sw x3, 0(x2) # store 0x419b7d7d in memory
flh f3, 0(x2) # load 0x419b7d7d from memory into f3
fdiv.h f29, f18, f3 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x3b29f8de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x74f658dd # load x3 with value 0x74f658dd
sw x3, 0(x2) # store 0x74f658dd in memory
flh f6, 0(x2) # load 0x74f658dd from memory into f6
li x3, 0xe43e8dfb # load x3 with value 0xe43e8dfb
sw x3, 0(x2) # store 0xe43e8dfb in memory
flh f24, 0(x2) # load 0xe43e8dfb from memory into f24
fdiv.h f30, f6, f24 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x1466a83c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x470959de # load x3 with value 0x470959de
sw x3, 0(x2) # store 0x470959de in memory
flh f20, 0(x2) # load 0x470959de from memory into f20
li x3, 0x975ec131 # load x3 with value 0x975ec131
sw x3, 0(x2) # store 0x975ec131 in memory
flh f29, 0(x2) # load 0x975ec131 from memory into f29
fdiv.h f31, f20, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x24, 0xa4351cf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9cc575ec # load x3 with value 0x9cc575ec
sw x3, 0(x2) # store 0x9cc575ec in memory
flh f0, 0(x2) # load 0x9cc575ec from memory into f0
li x3, 0x00ed4c74 # load x3 with value 0x00ed4c74
sw x3, 0(x2) # store 0x00ed4c74 in memory
flh f14, 0(x2) # load 0x00ed4c74 from memory into f14
fdiv.h f24, f0, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x28, 0xd7248a70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf27114d4 # load x3 with value 0xf27114d4
sw x3, 0(x2) # store 0xf27114d4 in memory
flh f1, 0(x2) # load 0xf27114d4 from memory into f1
li x3, 0xf1ee1434 # load x3 with value 0xf1ee1434
sw x3, 0(x2) # store 0xf1ee1434 in memory
flh f4, 0(x2) # load 0xf1ee1434 from memory into f4
fdiv.h f28, f1, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x20, 0x53c7108e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8bbba2b1 # load x3 with value 0x8bbba2b1
sw x3, 0(x2) # store 0x8bbba2b1 in memory
flh f2, 0(x2) # load 0x8bbba2b1 from memory into f2
li x3, 0x5345bd74 # load x3 with value 0x5345bd74
sw x3, 0(x2) # store 0x5345bd74 in memory
flh f30, 0(x2) # load 0x5345bd74 from memory into f30
fdiv.h f20, f2, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x18, 0x7c514340 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0e00c103 # load x3 with value 0x0e00c103
sw x3, 0(x2) # store 0x0e00c103 in memory
flh f3, 0(x2) # load 0x0e00c103 from memory into f3
li x3, 0xfe6f9a80 # load x3 with value 0xfe6f9a80
sw x3, 0(x2) # store 0xfe6f9a80 in memory
flh f6, 0(x2) # load 0xfe6f9a80 from memory into f6
fdiv.h f18, f3, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x19, 0x53a3e771 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf9787b17 # load x3 with value 0xf9787b17
sw x3, 0(x2) # store 0xf9787b17 in memory
flh f4, 0(x2) # load 0xf9787b17 from memory into f4
li x3, 0x5cad1df7 # load x3 with value 0x5cad1df7
sw x3, 0(x2) # store 0x5cad1df7 in memory
flh f12, 0(x2) # load 0x5cad1df7 from memory into f12
fdiv.h f19, f4, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x25, 0x1df2b65d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x71fbb308 # load x3 with value 0x71fbb308
sw x3, 0(x2) # store 0x71fbb308 in memory
flh f5, 0(x2) # load 0x71fbb308 from memory into f5
li x3, 0x23d1c366 # load x3 with value 0x23d1c366
sw x3, 0(x2) # store 0x23d1c366 in memory
flh f16, 0(x2) # load 0x23d1c366 from memory into f16
fdiv.h f25, f5, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x12, 0x189284a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb339c017 # load x3 with value 0xb339c017
sw x3, 0(x2) # store 0xb339c017 in memory
flh f6, 0(x2) # load 0xb339c017 from memory into f6
li x3, 0x2307c066 # load x3 with value 0x2307c066
sw x3, 0(x2) # store 0x2307c066 in memory
flh f20, 0(x2) # load 0x2307c066 from memory into f20
fdiv.h f12, f6, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x23, 0x83d4fdf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x850b29df # load x3 with value 0x850b29df
sw x3, 0(x2) # store 0x850b29df in memory
flh f7, 0(x2) # load 0x850b29df from memory into f7
li x3, 0x93fec52e # load x3 with value 0x93fec52e
sw x3, 0(x2) # store 0x93fec52e in memory
flh f31, 0(x2) # load 0x93fec52e from memory into f31
fdiv.h f23, f7, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x27, 0xb43f09c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x92d99199 # load x3 with value 0x92d99199
sw x3, 0(x2) # store 0x92d99199 in memory
flh f8, 0(x2) # load 0x92d99199 from memory into f8
li x3, 0x6558ece9 # load x3 with value 0x6558ece9
sw x3, 0(x2) # store 0x6558ece9 in memory
flh f17, 0(x2) # load 0x6558ece9 from memory into f17
fdiv.h f27, f8, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x30, 0x0cdb1679 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7d0c54a2 # load x3 with value 0x7d0c54a2
sw x3, 0(x2) # store 0x7d0c54a2 in memory
flh f9, 0(x2) # load 0x7d0c54a2 from memory into f9
li x3, 0xfb612794 # load x3 with value 0xfb612794
sw x3, 0(x2) # store 0xfb612794 in memory
flh f7, 0(x2) # load 0xfb612794 from memory into f7
fdiv.h f30, f9, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x28, 0x9fb0b548 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5495af76 # load x3 with value 0x5495af76
sw x3, 0(x2) # store 0x5495af76 in memory
flh f10, 0(x2) # load 0x5495af76 from memory into f10
li x3, 0x55b0443b # load x3 with value 0x55b0443b
sw x3, 0(x2) # store 0x55b0443b in memory
flh f25, 0(x2) # load 0x55b0443b from memory into f25
fdiv.h f28, f10, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x25, 0x851b81ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0a612684 # load x3 with value 0x0a612684
sw x3, 0(x2) # store 0x0a612684 in memory
flh f11, 0(x2) # load 0x0a612684 from memory into f11
li x3, 0x09a37750 # load x3 with value 0x09a37750
sw x3, 0(x2) # store 0x09a37750 in memory
flh f17, 0(x2) # load 0x09a37750 from memory into f17
fdiv.h f25, f11, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x21, 0x650d7589 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6e8a6aa6 # load x3 with value 0x6e8a6aa6
sw x3, 0(x2) # store 0x6e8a6aa6 in memory
flh f12, 0(x2) # load 0x6e8a6aa6 from memory into f12
li x3, 0x5ac1c63c # load x3 with value 0x5ac1c63c
sw x3, 0(x2) # store 0x5ac1c63c in memory
flh f24, 0(x2) # load 0x5ac1c63c from memory into f24
fdiv.h f21, f12, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x22, 0x8a4866e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8b06f7b8 # load x3 with value 0x8b06f7b8
sw x3, 0(x2) # store 0x8b06f7b8 in memory
flh f13, 0(x2) # load 0x8b06f7b8 from memory into f13
li x3, 0x1c0a6969 # load x3 with value 0x1c0a6969
sw x3, 0(x2) # store 0x1c0a6969 in memory
flh f3, 0(x2) # load 0x1c0a6969 from memory into f3
fdiv.h f22, f13, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x18, 0x507da155 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbb662719 # load x3 with value 0xbb662719
sw x3, 0(x2) # store 0xbb662719 in memory
flh f14, 0(x2) # load 0xbb662719 from memory into f14
li x3, 0x5e4ad08f # load x3 with value 0x5e4ad08f
sw x3, 0(x2) # store 0x5e4ad08f in memory
flh f7, 0(x2) # load 0x5e4ad08f from memory into f7
fdiv.h f18, f14, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x11, 0xdae88267 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0d55905c # load x3 with value 0x0d55905c
sw x3, 0(x2) # store 0x0d55905c in memory
flh f15, 0(x2) # load 0x0d55905c from memory into f15
li x3, 0xa51a9352 # load x3 with value 0xa51a9352
sw x3, 0(x2) # store 0xa51a9352 in memory
flh f2, 0(x2) # load 0xa51a9352 from memory into f2
fdiv.h f11, f15, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x1, 0x489190b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2ce52672 # load x3 with value 0x2ce52672
sw x3, 0(x2) # store 0x2ce52672 in memory
flh f16, 0(x2) # load 0x2ce52672 from memory into f16
li x3, 0x110023d2 # load x3 with value 0x110023d2
sw x3, 0(x2) # store 0x110023d2 in memory
flh f10, 0(x2) # load 0x110023d2 from memory into f10
fdiv.h f1, f16, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x24, 0x94437400 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x03dae9d6 # load x3 with value 0x03dae9d6
sw x3, 0(x2) # store 0x03dae9d6 in memory
flh f17, 0(x2) # load 0x03dae9d6 from memory into f17
li x3, 0x1568fce1 # load x3 with value 0x1568fce1
sw x3, 0(x2) # store 0x1568fce1 in memory
flh f9, 0(x2) # load 0x1568fce1 from memory into f9
fdiv.h f24, f17, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x31, 0xa5d8ed4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6de0ce44 # load x3 with value 0x6de0ce44
sw x3, 0(x2) # store 0x6de0ce44 in memory
flh f18, 0(x2) # load 0x6de0ce44 from memory into f18
li x3, 0xcf56aa5f # load x3 with value 0xcf56aa5f
sw x3, 0(x2) # store 0xcf56aa5f in memory
flh f9, 0(x2) # load 0xcf56aa5f from memory into f9
fdiv.h f31, f18, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x10, 0x8d0d709d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xde50b422 # load x3 with value 0xde50b422
sw x3, 0(x2) # store 0xde50b422 in memory
flh f19, 0(x2) # load 0xde50b422 from memory into f19
li x3, 0xe349d6af # load x3 with value 0xe349d6af
sw x3, 0(x2) # store 0xe349d6af in memory
flh f4, 0(x2) # load 0xe349d6af from memory into f4
fdiv.h f10, f19, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x17, 0x08c2003c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xda5b839f # load x3 with value 0xda5b839f
sw x3, 0(x2) # store 0xda5b839f in memory
flh f20, 0(x2) # load 0xda5b839f from memory into f20
li x3, 0xde0a9acf # load x3 with value 0xde0a9acf
sw x3, 0(x2) # store 0xde0a9acf in memory
flh f3, 0(x2) # load 0xde0a9acf from memory into f3
fdiv.h f17, f20, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x5, 0xc443f604 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0b6da497 # load x3 with value 0x0b6da497
sw x3, 0(x2) # store 0x0b6da497 in memory
flh f21, 0(x2) # load 0x0b6da497 from memory into f21
li x3, 0x7e9b15d5 # load x3 with value 0x7e9b15d5
sw x3, 0(x2) # store 0x7e9b15d5 in memory
flh f12, 0(x2) # load 0x7e9b15d5 from memory into f12
fdiv.h f5, f21, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x18, 0xb406a514 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x892e4ebf # load x3 with value 0x892e4ebf
sw x3, 0(x2) # store 0x892e4ebf in memory
flh f22, 0(x2) # load 0x892e4ebf from memory into f22
li x3, 0x38f7adfa # load x3 with value 0x38f7adfa
sw x3, 0(x2) # store 0x38f7adfa in memory
flh f23, 0(x2) # load 0x38f7adfa from memory into f23
fdiv.h f18, f22, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x28, 0xe926a033 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8658d4bc # load x3 with value 0x8658d4bc
sw x3, 0(x2) # store 0x8658d4bc in memory
flh f23, 0(x2) # load 0x8658d4bc from memory into f23
li x3, 0xa29cbe1b # load x3 with value 0xa29cbe1b
sw x3, 0(x2) # store 0xa29cbe1b in memory
flh f11, 0(x2) # load 0xa29cbe1b from memory into f11
fdiv.h f28, f23, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x29, 0x92a996fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2a2e6d80 # load x3 with value 0x2a2e6d80
sw x3, 0(x2) # store 0x2a2e6d80 in memory
flh f24, 0(x2) # load 0x2a2e6d80 from memory into f24
li x3, 0x0fbe0c11 # load x3 with value 0x0fbe0c11
sw x3, 0(x2) # store 0x0fbe0c11 in memory
flh f15, 0(x2) # load 0x0fbe0c11 from memory into f15
fdiv.h f29, f24, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x14, 0x99976fbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x21fd80b0 # load x3 with value 0x21fd80b0
sw x3, 0(x2) # store 0x21fd80b0 in memory
flh f25, 0(x2) # load 0x21fd80b0 from memory into f25
li x3, 0xe797af51 # load x3 with value 0xe797af51
sw x3, 0(x2) # store 0xe797af51 in memory
flh f5, 0(x2) # load 0xe797af51 from memory into f5
fdiv.h f14, f25, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x24, 0x040d70ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfce737f0 # load x3 with value 0xfce737f0
sw x3, 0(x2) # store 0xfce737f0 in memory
flh f26, 0(x2) # load 0xfce737f0 from memory into f26
li x3, 0x13a169fa # load x3 with value 0x13a169fa
sw x3, 0(x2) # store 0x13a169fa in memory
flh f8, 0(x2) # load 0x13a169fa from memory into f8
fdiv.h f24, f26, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x29, 0x207da6f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc7766272 # load x3 with value 0xc7766272
sw x3, 0(x2) # store 0xc7766272 in memory
flh f27, 0(x2) # load 0xc7766272 from memory into f27
li x3, 0x27fd6cb6 # load x3 with value 0x27fd6cb6
sw x3, 0(x2) # store 0x27fd6cb6 in memory
flh f6, 0(x2) # load 0x27fd6cb6 from memory into f6
fdiv.h f29, f27, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x24, 0xec5dea3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x28ab77f5 # load x3 with value 0x28ab77f5
sw x3, 0(x2) # store 0x28ab77f5 in memory
flh f28, 0(x2) # load 0x28ab77f5 from memory into f28
li x3, 0x58baa5b5 # load x3 with value 0x58baa5b5
sw x3, 0(x2) # store 0x58baa5b5 in memory
flh f29, 0(x2) # load 0x58baa5b5 from memory into f29
fdiv.h f24, f28, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x12, 0xecc20125 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6f0c625 # load x3 with value 0xa6f0c625
sw x3, 0(x2) # store 0xa6f0c625 in memory
flh f29, 0(x2) # load 0xa6f0c625 from memory into f29
li x3, 0xf8af38ee # load x3 with value 0xf8af38ee
sw x3, 0(x2) # store 0xf8af38ee in memory
flh f13, 0(x2) # load 0xf8af38ee from memory into f13
fdiv.h f12, f29, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x21, 0x16c93c26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3b5d0298 # load x3 with value 0x3b5d0298
sw x3, 0(x2) # store 0x3b5d0298 in memory
flh f30, 0(x2) # load 0x3b5d0298 from memory into f30
li x3, 0x7ba5f43a # load x3 with value 0x7ba5f43a
sw x3, 0(x2) # store 0x7ba5f43a in memory
flh f18, 0(x2) # load 0x7ba5f43a from memory into f18
fdiv.h f21, f30, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x17, 0x70f4d9be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdbea25a6 # load x3 with value 0xdbea25a6
sw x3, 0(x2) # store 0xdbea25a6 in memory
flh f31, 0(x2) # load 0xdbea25a6 from memory into f31
li x3, 0xf1431428 # load x3 with value 0xf1431428
sw x3, 0(x2) # store 0xf1431428 in memory
flh f5, 0(x2) # load 0xf1431428 from memory into f5
fdiv.h f17, f31, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x30, 0x82ee07b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x17be1218 # load x3 with value 0x17be1218
sw x3, 0(x2) # store 0x17be1218 in memory
flh f12, 0(x2) # load 0x17be1218 from memory into f12
li x3, 0x1083c221 # load x3 with value 0x1083c221
sw x3, 0(x2) # store 0x1083c221 in memory
flh f0, 0(x2) # load 0x1083c221 from memory into f0
fdiv.h f30, f12, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x8, 0x89d60243 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6a78656f # load x3 with value 0x6a78656f
sw x3, 0(x2) # store 0x6a78656f in memory
flh f29, 0(x2) # load 0x6a78656f from memory into f29
li x3, 0xd564533e # load x3 with value 0xd564533e
sw x3, 0(x2) # store 0xd564533e in memory
flh f1, 0(x2) # load 0xd564533e from memory into f1
fdiv.h f8, f29, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x29, 0x144d26bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe5ac2690 # load x3 with value 0xe5ac2690
sw x3, 0(x2) # store 0xe5ac2690 in memory
flh f21, 0(x2) # load 0xe5ac2690 from memory into f21
li x3, 0x84a88c8c # load x3 with value 0x84a88c8c
sw x3, 0(x2) # store 0x84a88c8c in memory
flh f2, 0(x2) # load 0x84a88c8c from memory into f2
fdiv.h f29, f21, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x10, 0xe337df1c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbc74613b # load x3 with value 0xbc74613b
sw x3, 0(x2) # store 0xbc74613b in memory
flh f22, 0(x2) # load 0xbc74613b from memory into f22
li x3, 0x8630671f # load x3 with value 0x8630671f
sw x3, 0(x2) # store 0x8630671f in memory
flh f3, 0(x2) # load 0x8630671f from memory into f3
fdiv.h f10, f22, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x29, 0x2587de14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb5dc2e63 # load x3 with value 0xb5dc2e63
sw x3, 0(x2) # store 0xb5dc2e63 in memory
flh f28, 0(x2) # load 0xb5dc2e63 from memory into f28
li x3, 0x182f3ad9 # load x3 with value 0x182f3ad9
sw x3, 0(x2) # store 0x182f3ad9 in memory
flh f4, 0(x2) # load 0x182f3ad9 from memory into f4
fdiv.h f29, f28, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x27, 0x1586fd15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb51b93d6 # load x3 with value 0xb51b93d6
sw x3, 0(x2) # store 0xb51b93d6 in memory
flh f6, 0(x2) # load 0xb51b93d6 from memory into f6
li x3, 0xd1b5f08e # load x3 with value 0xd1b5f08e
sw x3, 0(x2) # store 0xd1b5f08e in memory
flh f5, 0(x2) # load 0xd1b5f08e from memory into f5
fdiv.h f27, f6, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x19, 0xcbc36eba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2dc0584b # load x3 with value 0x2dc0584b
sw x3, 0(x2) # store 0x2dc0584b in memory
flh f3, 0(x2) # load 0x2dc0584b from memory into f3
li x3, 0x72fd09ae # load x3 with value 0x72fd09ae
sw x3, 0(x2) # store 0x72fd09ae in memory
flh f6, 0(x2) # load 0x72fd09ae from memory into f6
fdiv.h f19, f3, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x19, 0xcef2e8b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6270044b # load x3 with value 0x6270044b
sw x3, 0(x2) # store 0x6270044b in memory
flh f4, 0(x2) # load 0x6270044b from memory into f4
li x3, 0xb4f94513 # load x3 with value 0xb4f94513
sw x3, 0(x2) # store 0xb4f94513 in memory
flh f7, 0(x2) # load 0xb4f94513 from memory into f7
fdiv.h f19, f4, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x10, 0x8c186a32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0fcbfa6d # load x3 with value 0x0fcbfa6d
sw x3, 0(x2) # store 0x0fcbfa6d in memory
flh f16, 0(x2) # load 0x0fcbfa6d from memory into f16
li x3, 0x7f8d15ce # load x3 with value 0x7f8d15ce
sw x3, 0(x2) # store 0x7f8d15ce in memory
flh f8, 0(x2) # load 0x7f8d15ce from memory into f8
fdiv.h f10, f16, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x7, 0x8cb7986c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb7123cee # load x3 with value 0xb7123cee
sw x3, 0(x2) # store 0xb7123cee in memory
flh f12, 0(x2) # load 0xb7123cee from memory into f12
li x3, 0x1cb7a569 # load x3 with value 0x1cb7a569
sw x3, 0(x2) # store 0x1cb7a569 in memory
flh f9, 0(x2) # load 0x1cb7a569 from memory into f9
fdiv.h f7, f12, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x17, 0x836e1ef1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbb7d0078 # load x3 with value 0xbb7d0078
sw x3, 0(x2) # store 0xbb7d0078 in memory
flh f18, 0(x2) # load 0xbb7d0078 from memory into f18
li x3, 0x4ee11f26 # load x3 with value 0x4ee11f26
sw x3, 0(x2) # store 0x4ee11f26 in memory
flh f10, 0(x2) # load 0x4ee11f26 from memory into f10
fdiv.h f17, f18, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x2, 0xc99e062e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4df0d83f # load x3 with value 0x4df0d83f
sw x3, 0(x2) # store 0x4df0d83f in memory
flh f17, 0(x2) # load 0x4df0d83f from memory into f17
li x3, 0xbcd123b5 # load x3 with value 0xbcd123b5
sw x3, 0(x2) # store 0xbcd123b5 in memory
flh f11, 0(x2) # load 0xbcd123b5 from memory into f11
fdiv.h f2, f17, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x5, 0x1a2f3af3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeaae99ad # load x3 with value 0xeaae99ad
sw x3, 0(x2) # store 0xeaae99ad in memory
flh f30, 0(x2) # load 0xeaae99ad from memory into f30
li x3, 0xda96407e # load x3 with value 0xda96407e
sw x3, 0(x2) # store 0xda96407e in memory
flh f12, 0(x2) # load 0xda96407e from memory into f12
fdiv.h f5, f30, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x6, 0x2e249c1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xad9d912e # load x3 with value 0xad9d912e
sw x3, 0(x2) # store 0xad9d912e in memory
flh f3, 0(x2) # load 0xad9d912e from memory into f3
li x3, 0xfc93f3f6 # load x3 with value 0xfc93f3f6
sw x3, 0(x2) # store 0xfc93f3f6 in memory
flh f13, 0(x2) # load 0xfc93f3f6 from memory into f13
fdiv.h f6, f3, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x27, 0xda0ea780 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0feb06c9 # load x3 with value 0x0feb06c9
sw x3, 0(x2) # store 0x0feb06c9 in memory
flh f8, 0(x2) # load 0x0feb06c9 from memory into f8
li x3, 0x9aeafc9b # load x3 with value 0x9aeafc9b
sw x3, 0(x2) # store 0x9aeafc9b in memory
flh f14, 0(x2) # load 0x9aeafc9b from memory into f14
fdiv.h f27, f8, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x30, 0x76810298 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x529fb62a # load x3 with value 0x529fb62a
sw x3, 0(x2) # store 0x529fb62a in memory
flh f31, 0(x2) # load 0x529fb62a from memory into f31
li x3, 0x3972bcbb # load x3 with value 0x3972bcbb
sw x3, 0(x2) # store 0x3972bcbb in memory
flh f15, 0(x2) # load 0x3972bcbb from memory into f15
fdiv.h f30, f31, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x21, 0x08ce0b33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe88a6294 # load x3 with value 0xe88a6294
sw x3, 0(x2) # store 0xe88a6294 in memory
flh f7, 0(x2) # load 0xe88a6294 from memory into f7
li x3, 0x54e4cbe1 # load x3 with value 0x54e4cbe1
sw x3, 0(x2) # store 0x54e4cbe1 in memory
flh f16, 0(x2) # load 0x54e4cbe1 from memory into f16
fdiv.h f21, f7, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x30, 0x1557a086 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3a9ac51a # load x3 with value 0x3a9ac51a
sw x3, 0(x2) # store 0x3a9ac51a in memory
flh f9, 0(x2) # load 0x3a9ac51a from memory into f9
li x3, 0xdfc3e5bb # load x3 with value 0xdfc3e5bb
sw x3, 0(x2) # store 0xdfc3e5bb in memory
flh f17, 0(x2) # load 0xdfc3e5bb from memory into f17
fdiv.h f30, f9, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x12, 0x330ce43f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc51ae31c # load x3 with value 0xc51ae31c
sw x3, 0(x2) # store 0xc51ae31c in memory
flh f23, 0(x2) # load 0xc51ae31c from memory into f23
li x3, 0xa3e1e399 # load x3 with value 0xa3e1e399
sw x3, 0(x2) # store 0xa3e1e399 in memory
flh f18, 0(x2) # load 0xa3e1e399 from memory into f18
fdiv.h f12, f23, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x7, 0x75ae6b51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf024bd0 # load x3 with value 0xbf024bd0
sw x3, 0(x2) # store 0xbf024bd0 in memory
flh f31, 0(x2) # load 0xbf024bd0 from memory into f31
li x3, 0x0566fb73 # load x3 with value 0x0566fb73
sw x3, 0(x2) # store 0x0566fb73 in memory
flh f19, 0(x2) # load 0x0566fb73 from memory into f19
fdiv.h f7, f31, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x29, 0xd3d18c6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x45362907 # load x3 with value 0x45362907
sw x3, 0(x2) # store 0x45362907 in memory
flh f22, 0(x2) # load 0x45362907 from memory into f22
li x3, 0xbc34c6dc # load x3 with value 0xbc34c6dc
sw x3, 0(x2) # store 0xbc34c6dc in memory
flh f20, 0(x2) # load 0xbc34c6dc from memory into f20
fdiv.h f29, f22, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x3, 0xc08fe3e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf897a65 # load x3 with value 0xbf897a65
sw x3, 0(x2) # store 0xbf897a65 in memory
flh f19, 0(x2) # load 0xbf897a65 from memory into f19
li x3, 0x4d3e07e8 # load x3 with value 0x4d3e07e8
sw x3, 0(x2) # store 0x4d3e07e8 in memory
flh f21, 0(x2) # load 0x4d3e07e8 from memory into f21
fdiv.h f3, f19, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x6, 0x67e3201f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xab8b61e8 # load x3 with value 0xab8b61e8
sw x3, 0(x2) # store 0xab8b61e8 in memory
flh f29, 0(x2) # load 0xab8b61e8 from memory into f29
li x3, 0x87c0b17a # load x3 with value 0x87c0b17a
sw x3, 0(x2) # store 0x87c0b17a in memory
flh f22, 0(x2) # load 0x87c0b17a from memory into f22
fdiv.h f6, f29, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x9, 0xc2abbe47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x65558368 # load x3 with value 0x65558368
sw x3, 0(x2) # store 0x65558368 in memory
flh f25, 0(x2) # load 0x65558368 from memory into f25
li x3, 0xc6e4834e # load x3 with value 0xc6e4834e
sw x3, 0(x2) # store 0xc6e4834e in memory
flh f23, 0(x2) # load 0xc6e4834e from memory into f23
fdiv.h f9, f25, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x9, 0x81730a81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x90cb028c # load x3 with value 0x90cb028c
sw x3, 0(x2) # store 0x90cb028c in memory
flh f22, 0(x2) # load 0x90cb028c from memory into f22
li x3, 0xd596cf8a # load x3 with value 0xd596cf8a
sw x3, 0(x2) # store 0xd596cf8a in memory
flh f24, 0(x2) # load 0xd596cf8a from memory into f24
fdiv.h f9, f22, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x6, 0x1a3b4f89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x58345531 # load x3 with value 0x58345531
sw x3, 0(x2) # store 0x58345531 in memory
flh f12, 0(x2) # load 0x58345531 from memory into f12
li x3, 0xcee06535 # load x3 with value 0xcee06535
sw x3, 0(x2) # store 0xcee06535 in memory
flh f25, 0(x2) # load 0xcee06535 from memory into f25
fdiv.h f6, f12, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x10, 0xafa801b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb8246c2f # load x3 with value 0xb8246c2f
sw x3, 0(x2) # store 0xb8246c2f in memory
flh f12, 0(x2) # load 0xb8246c2f from memory into f12
li x3, 0x0568fe30 # load x3 with value 0x0568fe30
sw x3, 0(x2) # store 0x0568fe30 in memory
flh f26, 0(x2) # load 0x0568fe30 from memory into f26
fdiv.h f10, f12, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x3, 0x1a34f17f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7810f88f # load x3 with value 0x7810f88f
sw x3, 0(x2) # store 0x7810f88f in memory
flh f19, 0(x2) # load 0x7810f88f from memory into f19
li x3, 0x4def784d # load x3 with value 0x4def784d
sw x3, 0(x2) # store 0x4def784d in memory
flh f27, 0(x2) # load 0x4def784d from memory into f27
fdiv.h f3, f19, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x4, 0xa437af62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0490fce8 # load x3 with value 0x0490fce8
sw x3, 0(x2) # store 0x0490fce8 in memory
flh f7, 0(x2) # load 0x0490fce8 from memory into f7
li x3, 0x4b712721 # load x3 with value 0x4b712721
sw x3, 0(x2) # store 0x4b712721 in memory
flh f28, 0(x2) # load 0x4b712721 from memory into f28
fdiv.h f4, f7, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x11, 0x20d2efcd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfb88db10 # load x3 with value 0xfb88db10
sw x3, 0(x2) # store 0xfb88db10 in memory
flh f19, 0(x2) # load 0xfb88db10 from memory into f19
li x3, 0x4084dd2d # load x3 with value 0x4084dd2d
sw x3, 0(x2) # store 0x4084dd2d in memory
flh f29, 0(x2) # load 0x4084dd2d from memory into f29
fdiv.h f11, f19, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x11, 0x404daa3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x05d6af38 # load x3 with value 0x05d6af38
sw x3, 0(x2) # store 0x05d6af38 in memory
flh f24, 0(x2) # load 0x05d6af38 from memory into f24
li x3, 0xb92f6f0f # load x3 with value 0xb92f6f0f
sw x3, 0(x2) # store 0xb92f6f0f in memory
flh f30, 0(x2) # load 0xb92f6f0f from memory into f30
fdiv.h f11, f24, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x26, 0xc3cf853d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe55ca529 # load x3 with value 0xe55ca529
sw x3, 0(x2) # store 0xe55ca529 in memory
flh f2, 0(x2) # load 0xe55ca529 from memory into f2
li x3, 0x4cfff72d # load x3 with value 0x4cfff72d
sw x3, 0(x2) # store 0x4cfff72d in memory
flh f31, 0(x2) # load 0x4cfff72d from memory into f31
fdiv.h f26, f2, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
