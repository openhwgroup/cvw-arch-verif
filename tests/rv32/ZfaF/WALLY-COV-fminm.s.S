///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/ZfaF//WALLY-COV-fminm.s.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.066026
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
fminm.s f4, f6, f3 # perform first operation
fminm.s f25, f4, f29 # perform second operation

# Testcase cmp_gpr_hazard raw test
fminm.s f9, f29, f4 # perform first operation
fminm.s f22, f29, f9 # perform second operation

# Testcase cmp_gpr_hazard waw test
fminm.s f28, f6, f18 # perform first operation
fminm.s f28, f28, f15 # perform second operation

# Testcase cmp_gpr_hazard waw test
fminm.s f9, f27, f10 # perform first operation
fminm.s f9, f12, f5 # perform second operation

# Testcase cmp_gpr_hazard war test
fminm.s f20, f6, f28 # perform first operation
fminm.s f6, f18, f15 # perform second operation

# Testcase cmp_gpr_hazard war test
fminm.s f5, f3, f30 # perform first operation
fminm.s f30, f18, f19 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0x4ed78cc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x37703d9b # load x3 with value 0x37703d9b
sw x3, 0(x2) # store 0x37703d9b in memory
flw f0, 0(x2) # load 0x37703d9b from memory into f0
li x3, 0xf1fb9388 # load x3 with value 0xf1fb9388
sw x3, 0(x2) # store 0xf1fb9388 in memory
flw f2, 0(x2) # load 0xf1fb9388 from memory into f2
fminm.s f0, f0, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0x58d6a99f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x679b87ba # load x3 with value 0x679b87ba
sw x3, 0(x2) # store 0x679b87ba in memory
flw f1, 0(x2) # load 0x679b87ba from memory into f1
li x3, 0x4d1b7a03 # load x3 with value 0x4d1b7a03
sw x3, 0(x2) # store 0x4d1b7a03 in memory
flw f5, 0(x2) # load 0x4d1b7a03 from memory into f5
fminm.s f1, f1, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0x51a55712 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2f4b73bb # load x3 with value 0x2f4b73bb
sw x3, 0(x2) # store 0x2f4b73bb in memory
flw f2, 0(x2) # load 0x2f4b73bb from memory into f2
li x3, 0xbc91d085 # load x3 with value 0xbc91d085
sw x3, 0(x2) # store 0xbc91d085 in memory
flw f9, 0(x2) # load 0xbc91d085 from memory into f9
fminm.s f2, f2, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0xc656aef1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x833c3236 # load x3 with value 0x833c3236
sw x3, 0(x2) # store 0x833c3236 in memory
flw f3, 0(x2) # load 0x833c3236 from memory into f3
li x3, 0x4ad07b74 # load x3 with value 0x4ad07b74
sw x3, 0(x2) # store 0x4ad07b74 in memory
flw f2, 0(x2) # load 0x4ad07b74 from memory into f2
fminm.s f3, f3, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0x99ac836d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x76fbef98 # load x3 with value 0x76fbef98
sw x3, 0(x2) # store 0x76fbef98 in memory
flw f4, 0(x2) # load 0x76fbef98 from memory into f4
li x3, 0xfd628507 # load x3 with value 0xfd628507
sw x3, 0(x2) # store 0xfd628507 in memory
flw f9, 0(x2) # load 0xfd628507 from memory into f9
fminm.s f4, f4, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0x9af78096 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6e8e0c9c # load x3 with value 0x6e8e0c9c
sw x3, 0(x2) # store 0x6e8e0c9c in memory
flw f5, 0(x2) # load 0x6e8e0c9c from memory into f5
li x3, 0x82e2cc78 # load x3 with value 0x82e2cc78
sw x3, 0(x2) # store 0x82e2cc78 in memory
flw f31, 0(x2) # load 0x82e2cc78 from memory into f31
fminm.s f5, f5, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0xec41047d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5fce327b # load x3 with value 0x5fce327b
sw x3, 0(x2) # store 0x5fce327b in memory
flw f6, 0(x2) # load 0x5fce327b from memory into f6
li x3, 0x3c942928 # load x3 with value 0x3c942928
sw x3, 0(x2) # store 0x3c942928 in memory
flw f13, 0(x2) # load 0x3c942928 from memory into f13
fminm.s f6, f6, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0x64fed7ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x170bc349 # load x3 with value 0x170bc349
sw x3, 0(x2) # store 0x170bc349 in memory
flw f7, 0(x2) # load 0x170bc349 from memory into f7
li x3, 0xe30e5c59 # load x3 with value 0xe30e5c59
sw x3, 0(x2) # store 0xe30e5c59 in memory
flw f2, 0(x2) # load 0xe30e5c59 from memory into f2
fminm.s f7, f7, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0x07aa2335 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd0d6659d # load x3 with value 0xd0d6659d
sw x3, 0(x2) # store 0xd0d6659d in memory
flw f8, 0(x2) # load 0xd0d6659d from memory into f8
li x3, 0xca123dbf # load x3 with value 0xca123dbf
sw x3, 0(x2) # store 0xca123dbf in memory
flw f28, 0(x2) # load 0xca123dbf from memory into f28
fminm.s f8, f8, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0xcec48817 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x41bc4651 # load x3 with value 0x41bc4651
sw x3, 0(x2) # store 0x41bc4651 in memory
flw f9, 0(x2) # load 0x41bc4651 from memory into f9
li x3, 0x2e05fe20 # load x3 with value 0x2e05fe20
sw x3, 0(x2) # store 0x2e05fe20 in memory
flw f4, 0(x2) # load 0x2e05fe20 from memory into f4
fminm.s f9, f9, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0xe7a1a3a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x534df4fe # load x3 with value 0x534df4fe
sw x3, 0(x2) # store 0x534df4fe in memory
flw f10, 0(x2) # load 0x534df4fe from memory into f10
li x3, 0xaedfbfd2 # load x3 with value 0xaedfbfd2
sw x3, 0(x2) # store 0xaedfbfd2 in memory
flw f24, 0(x2) # load 0xaedfbfd2 from memory into f24
fminm.s f10, f10, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0x25b2e2d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdbae5ed3 # load x3 with value 0xdbae5ed3
sw x3, 0(x2) # store 0xdbae5ed3 in memory
flw f11, 0(x2) # load 0xdbae5ed3 from memory into f11
li x3, 0x0af7ca84 # load x3 with value 0x0af7ca84
sw x3, 0(x2) # store 0x0af7ca84 in memory
flw f27, 0(x2) # load 0x0af7ca84 from memory into f27
fminm.s f11, f11, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0xd4609d24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbdc8a34d # load x3 with value 0xbdc8a34d
sw x3, 0(x2) # store 0xbdc8a34d in memory
flw f12, 0(x2) # load 0xbdc8a34d from memory into f12
li x3, 0xb70a3a99 # load x3 with value 0xb70a3a99
sw x3, 0(x2) # store 0xb70a3a99 in memory
flw f17, 0(x2) # load 0xb70a3a99 from memory into f17
fminm.s f12, f12, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0x34154433 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x38d5ae54 # load x3 with value 0x38d5ae54
sw x3, 0(x2) # store 0x38d5ae54 in memory
flw f13, 0(x2) # load 0x38d5ae54 from memory into f13
li x3, 0xd954e126 # load x3 with value 0xd954e126
sw x3, 0(x2) # store 0xd954e126 in memory
flw f23, 0(x2) # load 0xd954e126 from memory into f23
fminm.s f13, f13, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0x5748e51c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x02d1aa2d # load x3 with value 0x02d1aa2d
sw x3, 0(x2) # store 0x02d1aa2d in memory
flw f14, 0(x2) # load 0x02d1aa2d from memory into f14
li x3, 0xae267c9f # load x3 with value 0xae267c9f
sw x3, 0(x2) # store 0xae267c9f in memory
flw f5, 0(x2) # load 0xae267c9f from memory into f5
fminm.s f14, f14, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0x049500d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3d5012f1 # load x3 with value 0x3d5012f1
sw x3, 0(x2) # store 0x3d5012f1 in memory
flw f15, 0(x2) # load 0x3d5012f1 from memory into f15
li x3, 0x062dd39c # load x3 with value 0x062dd39c
sw x3, 0(x2) # store 0x062dd39c in memory
flw f3, 0(x2) # load 0x062dd39c from memory into f3
fminm.s f15, f15, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0x231052e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x099fa09d # load x3 with value 0x099fa09d
sw x3, 0(x2) # store 0x099fa09d in memory
flw f16, 0(x2) # load 0x099fa09d from memory into f16
li x3, 0x05989830 # load x3 with value 0x05989830
sw x3, 0(x2) # store 0x05989830 in memory
flw f4, 0(x2) # load 0x05989830 from memory into f4
fminm.s f16, f16, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0xbbce181b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9dca1b4d # load x3 with value 0x9dca1b4d
sw x3, 0(x2) # store 0x9dca1b4d in memory
flw f17, 0(x2) # load 0x9dca1b4d from memory into f17
li x3, 0x3ce1ba99 # load x3 with value 0x3ce1ba99
sw x3, 0(x2) # store 0x3ce1ba99 in memory
flw f25, 0(x2) # load 0x3ce1ba99 from memory into f25
fminm.s f17, f17, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0x1b14abc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf3bdedb3 # load x3 with value 0xf3bdedb3
sw x3, 0(x2) # store 0xf3bdedb3 in memory
flw f18, 0(x2) # load 0xf3bdedb3 from memory into f18
li x3, 0x354ea0b1 # load x3 with value 0x354ea0b1
sw x3, 0(x2) # store 0x354ea0b1 in memory
flw f21, 0(x2) # load 0x354ea0b1 from memory into f21
fminm.s f18, f18, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0x208984f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2884fb20 # load x3 with value 0x2884fb20
sw x3, 0(x2) # store 0x2884fb20 in memory
flw f19, 0(x2) # load 0x2884fb20 from memory into f19
li x3, 0x6beeee63 # load x3 with value 0x6beeee63
sw x3, 0(x2) # store 0x6beeee63 in memory
flw f17, 0(x2) # load 0x6beeee63 from memory into f17
fminm.s f19, f19, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0xb9fcf59c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf4367d72 # load x3 with value 0xf4367d72
sw x3, 0(x2) # store 0xf4367d72 in memory
flw f20, 0(x2) # load 0xf4367d72 from memory into f20
li x3, 0xf5d5bb4b # load x3 with value 0xf5d5bb4b
sw x3, 0(x2) # store 0xf5d5bb4b in memory
flw f18, 0(x2) # load 0xf5d5bb4b from memory into f18
fminm.s f20, f20, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0x30be79ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeddfaa08 # load x3 with value 0xeddfaa08
sw x3, 0(x2) # store 0xeddfaa08 in memory
flw f21, 0(x2) # load 0xeddfaa08 from memory into f21
li x3, 0x1d30d880 # load x3 with value 0x1d30d880
sw x3, 0(x2) # store 0x1d30d880 in memory
flw f13, 0(x2) # load 0x1d30d880 from memory into f13
fminm.s f21, f21, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0xcafa81e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3e8a28c2 # load x3 with value 0x3e8a28c2
sw x3, 0(x2) # store 0x3e8a28c2 in memory
flw f22, 0(x2) # load 0x3e8a28c2 from memory into f22
li x3, 0xe80dc544 # load x3 with value 0xe80dc544
sw x3, 0(x2) # store 0xe80dc544 in memory
flw f7, 0(x2) # load 0xe80dc544 from memory into f7
fminm.s f22, f22, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0xdc1d0cc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x69334b4f # load x3 with value 0x69334b4f
sw x3, 0(x2) # store 0x69334b4f in memory
flw f23, 0(x2) # load 0x69334b4f from memory into f23
li x3, 0x5d242008 # load x3 with value 0x5d242008
sw x3, 0(x2) # store 0x5d242008 in memory
flw f13, 0(x2) # load 0x5d242008 from memory into f13
fminm.s f23, f23, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0xe6eabce2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2103f98d # load x3 with value 0x2103f98d
sw x3, 0(x2) # store 0x2103f98d in memory
flw f24, 0(x2) # load 0x2103f98d from memory into f24
li x3, 0xbf2f3e98 # load x3 with value 0xbf2f3e98
sw x3, 0(x2) # store 0xbf2f3e98 in memory
flw f9, 0(x2) # load 0xbf2f3e98 from memory into f9
fminm.s f24, f24, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0xe55c264e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6c84aed3 # load x3 with value 0x6c84aed3
sw x3, 0(x2) # store 0x6c84aed3 in memory
flw f25, 0(x2) # load 0x6c84aed3 from memory into f25
li x3, 0xf5b63919 # load x3 with value 0xf5b63919
sw x3, 0(x2) # store 0xf5b63919 in memory
flw f6, 0(x2) # load 0xf5b63919 from memory into f6
fminm.s f25, f25, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0x4e38f3b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x10acb2dd # load x3 with value 0x10acb2dd
sw x3, 0(x2) # store 0x10acb2dd in memory
flw f26, 0(x2) # load 0x10acb2dd from memory into f26
li x3, 0xec232d72 # load x3 with value 0xec232d72
sw x3, 0(x2) # store 0xec232d72 in memory
flw f7, 0(x2) # load 0xec232d72 from memory into f7
fminm.s f26, f26, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0x5d125190 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f8acba0 # load x3 with value 0x7f8acba0
sw x3, 0(x2) # store 0x7f8acba0 in memory
flw f27, 0(x2) # load 0x7f8acba0 from memory into f27
li x3, 0x3c88f786 # load x3 with value 0x3c88f786
sw x3, 0(x2) # store 0x3c88f786 in memory
flw f4, 0(x2) # load 0x3c88f786 from memory into f4
fminm.s f27, f27, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0xc75607c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x18e2f627 # load x3 with value 0x18e2f627
sw x3, 0(x2) # store 0x18e2f627 in memory
flw f28, 0(x2) # load 0x18e2f627 from memory into f28
li x3, 0x7552e4bc # load x3 with value 0x7552e4bc
sw x3, 0(x2) # store 0x7552e4bc in memory
flw f13, 0(x2) # load 0x7552e4bc from memory into f13
fminm.s f28, f28, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0x8f8ac82b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1c49e094 # load x3 with value 0x1c49e094
sw x3, 0(x2) # store 0x1c49e094 in memory
flw f29, 0(x2) # load 0x1c49e094 from memory into f29
li x3, 0x7b2f5514 # load x3 with value 0x7b2f5514
sw x3, 0(x2) # store 0x7b2f5514 in memory
flw f29, 0(x2) # load 0x7b2f5514 from memory into f29
fminm.s f29, f29, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0xc1681529 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x838c9fab # load x3 with value 0x838c9fab
sw x3, 0(x2) # store 0x838c9fab in memory
flw f30, 0(x2) # load 0x838c9fab from memory into f30
li x3, 0x5fedc1c7 # load x3 with value 0x5fedc1c7
sw x3, 0(x2) # store 0x5fedc1c7 in memory
flw f12, 0(x2) # load 0x5fedc1c7 from memory into f12
fminm.s f30, f30, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0x2215b173 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe64b6efd # load x3 with value 0xe64b6efd
sw x3, 0(x2) # store 0xe64b6efd in memory
flw f31, 0(x2) # load 0xe64b6efd from memory into f31
li x3, 0xdb1f10e0 # load x3 with value 0xdb1f10e0
sw x3, 0(x2) # store 0xdb1f10e0 in memory
flw f7, 0(x2) # load 0xdb1f10e0 from memory into f7
fminm.s f31, f31, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
li x0, 0xc65b86c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd1b5e2ec # load x3 with value 0xd1b5e2ec
sw x3, 0(x2) # store 0xd1b5e2ec in memory
flw f5, 0(x2) # load 0xd1b5e2ec from memory into f5
li x3, 0x86dcbf33 # load x3 with value 0x86dcbf33
sw x3, 0(x2) # store 0x86dcbf33 in memory
flw f0, 0(x2) # load 0x86dcbf33 from memory into f0
fminm.s f0, f5, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
li x1, 0x73c6867a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1da6ff6f # load x3 with value 0x1da6ff6f
sw x3, 0(x2) # store 0x1da6ff6f in memory
flw f5, 0(x2) # load 0x1da6ff6f from memory into f5
li x3, 0xe10c3575 # load x3 with value 0xe10c3575
sw x3, 0(x2) # store 0xe10c3575 in memory
flw f1, 0(x2) # load 0xe10c3575 from memory into f1
fminm.s f1, f5, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
li x2, 0xda8280c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd7bac167 # load x3 with value 0xd7bac167
sw x3, 0(x2) # store 0xd7bac167 in memory
flw f27, 0(x2) # load 0xd7bac167 from memory into f27
li x3, 0xbfbade40 # load x3 with value 0xbfbade40
sw x3, 0(x2) # store 0xbfbade40 in memory
flw f2, 0(x2) # load 0xbfbade40 from memory into f2
fminm.s f2, f27, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
li x3, 0xb398ac16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa05f30e8 # load x3 with value 0xa05f30e8
sw x3, 0(x2) # store 0xa05f30e8 in memory
flw f24, 0(x2) # load 0xa05f30e8 from memory into f24
li x3, 0x2c3803a1 # load x3 with value 0x2c3803a1
sw x3, 0(x2) # store 0x2c3803a1 in memory
flw f3, 0(x2) # load 0x2c3803a1 from memory into f3
fminm.s f3, f24, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
li x4, 0xf65500d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc347f950 # load x3 with value 0xc347f950
sw x3, 0(x2) # store 0xc347f950 in memory
flw f9, 0(x2) # load 0xc347f950 from memory into f9
li x3, 0xfa5b1c47 # load x3 with value 0xfa5b1c47
sw x3, 0(x2) # store 0xfa5b1c47 in memory
flw f4, 0(x2) # load 0xfa5b1c47 from memory into f4
fminm.s f4, f9, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
li x5, 0x29a456c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0e9634ff # load x3 with value 0x0e9634ff
sw x3, 0(x2) # store 0x0e9634ff in memory
flw f20, 0(x2) # load 0x0e9634ff from memory into f20
li x3, 0x8f4aa000 # load x3 with value 0x8f4aa000
sw x3, 0(x2) # store 0x8f4aa000 in memory
flw f5, 0(x2) # load 0x8f4aa000 from memory into f5
fminm.s f5, f20, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
li x6, 0x126d6250 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x18b723f8 # load x3 with value 0x18b723f8
sw x3, 0(x2) # store 0x18b723f8 in memory
flw f17, 0(x2) # load 0x18b723f8 from memory into f17
li x3, 0xda9db738 # load x3 with value 0xda9db738
sw x3, 0(x2) # store 0xda9db738 in memory
flw f6, 0(x2) # load 0xda9db738 from memory into f6
fminm.s f6, f17, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
li x7, 0x331a40cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd97aad4d # load x3 with value 0xd97aad4d
sw x3, 0(x2) # store 0xd97aad4d in memory
flw f18, 0(x2) # load 0xd97aad4d from memory into f18
li x3, 0x7eec3890 # load x3 with value 0x7eec3890
sw x3, 0(x2) # store 0x7eec3890 in memory
flw f7, 0(x2) # load 0x7eec3890 from memory into f7
fminm.s f7, f18, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
li x8, 0xadce7a49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x55c8c667 # load x3 with value 0x55c8c667
sw x3, 0(x2) # store 0x55c8c667 in memory
flw f17, 0(x2) # load 0x55c8c667 from memory into f17
li x3, 0x99a27d32 # load x3 with value 0x99a27d32
sw x3, 0(x2) # store 0x99a27d32 in memory
flw f8, 0(x2) # load 0x99a27d32 from memory into f8
fminm.s f8, f17, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
li x9, 0x1242076f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6391ae62 # load x3 with value 0x6391ae62
sw x3, 0(x2) # store 0x6391ae62 in memory
flw f26, 0(x2) # load 0x6391ae62 from memory into f26
li x3, 0x249e1457 # load x3 with value 0x249e1457
sw x3, 0(x2) # store 0x249e1457 in memory
flw f9, 0(x2) # load 0x249e1457 from memory into f9
fminm.s f9, f26, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
li x10, 0x1d3d5d1d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdaa687c5 # load x3 with value 0xdaa687c5
sw x3, 0(x2) # store 0xdaa687c5 in memory
flw f14, 0(x2) # load 0xdaa687c5 from memory into f14
li x3, 0x7aa3cdd7 # load x3 with value 0x7aa3cdd7
sw x3, 0(x2) # store 0x7aa3cdd7 in memory
flw f10, 0(x2) # load 0x7aa3cdd7 from memory into f10
fminm.s f10, f14, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
li x11, 0xe8aa493d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdf73d6d3 # load x3 with value 0xdf73d6d3
sw x3, 0(x2) # store 0xdf73d6d3 in memory
flw f12, 0(x2) # load 0xdf73d6d3 from memory into f12
li x3, 0x11fec5fe # load x3 with value 0x11fec5fe
sw x3, 0(x2) # store 0x11fec5fe in memory
flw f11, 0(x2) # load 0x11fec5fe from memory into f11
fminm.s f11, f12, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
li x12, 0x44371666 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6c4dcc93 # load x3 with value 0x6c4dcc93
sw x3, 0(x2) # store 0x6c4dcc93 in memory
flw f16, 0(x2) # load 0x6c4dcc93 from memory into f16
li x3, 0x2deeac59 # load x3 with value 0x2deeac59
sw x3, 0(x2) # store 0x2deeac59 in memory
flw f12, 0(x2) # load 0x2deeac59 from memory into f12
fminm.s f12, f16, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
li x13, 0x5ea916fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x409bd93e # load x3 with value 0x409bd93e
sw x3, 0(x2) # store 0x409bd93e in memory
flw f10, 0(x2) # load 0x409bd93e from memory into f10
li x3, 0xc06abc02 # load x3 with value 0xc06abc02
sw x3, 0(x2) # store 0xc06abc02 in memory
flw f13, 0(x2) # load 0xc06abc02 from memory into f13
fminm.s f13, f10, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
li x14, 0x21275657 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaf434d7e # load x3 with value 0xaf434d7e
sw x3, 0(x2) # store 0xaf434d7e in memory
flw f10, 0(x2) # load 0xaf434d7e from memory into f10
li x3, 0x0573f9c0 # load x3 with value 0x0573f9c0
sw x3, 0(x2) # store 0x0573f9c0 in memory
flw f14, 0(x2) # load 0x0573f9c0 from memory into f14
fminm.s f14, f10, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
li x15, 0x49173e3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa600478f # load x3 with value 0xa600478f
sw x3, 0(x2) # store 0xa600478f in memory
flw f20, 0(x2) # load 0xa600478f from memory into f20
li x3, 0x1ff3e8bd # load x3 with value 0x1ff3e8bd
sw x3, 0(x2) # store 0x1ff3e8bd in memory
flw f15, 0(x2) # load 0x1ff3e8bd from memory into f15
fminm.s f15, f20, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
li x16, 0xb7ebb55c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8787d7d4 # load x3 with value 0x8787d7d4
sw x3, 0(x2) # store 0x8787d7d4 in memory
flw f22, 0(x2) # load 0x8787d7d4 from memory into f22
li x3, 0x73209545 # load x3 with value 0x73209545
sw x3, 0(x2) # store 0x73209545 in memory
flw f16, 0(x2) # load 0x73209545 from memory into f16
fminm.s f16, f22, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
li x17, 0x90e5d976 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe6d76a2b # load x3 with value 0xe6d76a2b
sw x3, 0(x2) # store 0xe6d76a2b in memory
flw f29, 0(x2) # load 0xe6d76a2b from memory into f29
li x3, 0xe530b4b7 # load x3 with value 0xe530b4b7
sw x3, 0(x2) # store 0xe530b4b7 in memory
flw f17, 0(x2) # load 0xe530b4b7 from memory into f17
fminm.s f17, f29, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
li x18, 0xa84cb795 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xae1e2e06 # load x3 with value 0xae1e2e06
sw x3, 0(x2) # store 0xae1e2e06 in memory
flw f3, 0(x2) # load 0xae1e2e06 from memory into f3
li x3, 0x7831acaa # load x3 with value 0x7831acaa
sw x3, 0(x2) # store 0x7831acaa in memory
flw f18, 0(x2) # load 0x7831acaa from memory into f18
fminm.s f18, f3, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
li x19, 0xb1618522 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x531078db # load x3 with value 0x531078db
sw x3, 0(x2) # store 0x531078db in memory
flw f22, 0(x2) # load 0x531078db from memory into f22
li x3, 0x94eaa66d # load x3 with value 0x94eaa66d
sw x3, 0(x2) # store 0x94eaa66d in memory
flw f19, 0(x2) # load 0x94eaa66d from memory into f19
fminm.s f19, f22, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
li x20, 0x6a9b7394 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x14f529bd # load x3 with value 0x14f529bd
sw x3, 0(x2) # store 0x14f529bd in memory
flw f9, 0(x2) # load 0x14f529bd from memory into f9
li x3, 0x7aa1dba6 # load x3 with value 0x7aa1dba6
sw x3, 0(x2) # store 0x7aa1dba6 in memory
flw f20, 0(x2) # load 0x7aa1dba6 from memory into f20
fminm.s f20, f9, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
li x21, 0xe77ffb7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd6272831 # load x3 with value 0xd6272831
sw x3, 0(x2) # store 0xd6272831 in memory
flw f10, 0(x2) # load 0xd6272831 from memory into f10
li x3, 0x83439617 # load x3 with value 0x83439617
sw x3, 0(x2) # store 0x83439617 in memory
flw f21, 0(x2) # load 0x83439617 from memory into f21
fminm.s f21, f10, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
li x22, 0x76d97dc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x63871718 # load x3 with value 0x63871718
sw x3, 0(x2) # store 0x63871718 in memory
flw f31, 0(x2) # load 0x63871718 from memory into f31
li x3, 0xd2333f0a # load x3 with value 0xd2333f0a
sw x3, 0(x2) # store 0xd2333f0a in memory
flw f22, 0(x2) # load 0xd2333f0a from memory into f22
fminm.s f22, f31, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
li x23, 0x96786aef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x721ce76f # load x3 with value 0x721ce76f
sw x3, 0(x2) # store 0x721ce76f in memory
flw f18, 0(x2) # load 0x721ce76f from memory into f18
li x3, 0x7826759f # load x3 with value 0x7826759f
sw x3, 0(x2) # store 0x7826759f in memory
flw f23, 0(x2) # load 0x7826759f from memory into f23
fminm.s f23, f18, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
li x24, 0xe64aa215 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f369e13 # load x3 with value 0x3f369e13
sw x3, 0(x2) # store 0x3f369e13 in memory
flw f1, 0(x2) # load 0x3f369e13 from memory into f1
li x3, 0xc2cca0ef # load x3 with value 0xc2cca0ef
sw x3, 0(x2) # store 0xc2cca0ef in memory
flw f24, 0(x2) # load 0xc2cca0ef from memory into f24
fminm.s f24, f1, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
li x25, 0xbdff2393 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x92b881ad # load x3 with value 0x92b881ad
sw x3, 0(x2) # store 0x92b881ad in memory
flw f27, 0(x2) # load 0x92b881ad from memory into f27
li x3, 0xb564a9cc # load x3 with value 0xb564a9cc
sw x3, 0(x2) # store 0xb564a9cc in memory
flw f25, 0(x2) # load 0xb564a9cc from memory into f25
fminm.s f25, f27, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
li x26, 0x995b2593 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6dd5022f # load x3 with value 0x6dd5022f
sw x3, 0(x2) # store 0x6dd5022f in memory
flw f23, 0(x2) # load 0x6dd5022f from memory into f23
li x3, 0x8d0394cd # load x3 with value 0x8d0394cd
sw x3, 0(x2) # store 0x8d0394cd in memory
flw f26, 0(x2) # load 0x8d0394cd from memory into f26
fminm.s f26, f23, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
li x27, 0xde4b8f3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x55ad471c # load x3 with value 0x55ad471c
sw x3, 0(x2) # store 0x55ad471c in memory
flw f23, 0(x2) # load 0x55ad471c from memory into f23
li x3, 0x87eb633a # load x3 with value 0x87eb633a
sw x3, 0(x2) # store 0x87eb633a in memory
flw f27, 0(x2) # load 0x87eb633a from memory into f27
fminm.s f27, f23, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
li x28, 0xf82a87c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x66e093bc # load x3 with value 0x66e093bc
sw x3, 0(x2) # store 0x66e093bc in memory
flw f16, 0(x2) # load 0x66e093bc from memory into f16
li x3, 0xc27bb74c # load x3 with value 0xc27bb74c
sw x3, 0(x2) # store 0xc27bb74c in memory
flw f28, 0(x2) # load 0xc27bb74c from memory into f28
fminm.s f28, f16, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
li x29, 0x06514583 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa237b958 # load x3 with value 0xa237b958
sw x3, 0(x2) # store 0xa237b958 in memory
flw f8, 0(x2) # load 0xa237b958 from memory into f8
li x3, 0xa0fe8402 # load x3 with value 0xa0fe8402
sw x3, 0(x2) # store 0xa0fe8402 in memory
flw f29, 0(x2) # load 0xa0fe8402 from memory into f29
fminm.s f29, f8, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
li x30, 0x87aa0164 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1ef941e0 # load x3 with value 0x1ef941e0
sw x3, 0(x2) # store 0x1ef941e0 in memory
flw f7, 0(x2) # load 0x1ef941e0 from memory into f7
li x3, 0xbec2e403 # load x3 with value 0xbec2e403
sw x3, 0(x2) # store 0xbec2e403 in memory
flw f30, 0(x2) # load 0xbec2e403 from memory into f30
fminm.s f30, f7, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
li x31, 0xae36937d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x193374d1 # load x3 with value 0x193374d1
sw x3, 0(x2) # store 0x193374d1 in memory
flw f10, 0(x2) # load 0x193374d1 from memory into f10
li x3, 0xd3aa165d # load x3 with value 0xd3aa165d
sw x3, 0(x2) # store 0xd3aa165d in memory
flw f31, 0(x2) # load 0xd3aa165d from memory into f31
fminm.s f31, f10, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x30, 0x1dbb61a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
li x3, 0x26a9a9b5 # load x3 with value 0x26a9a9b5
sw x3, 0(x2) # store 0x26a9a9b5 in memory
flw f15, 0(x2) # load 0x26a9a9b5 from memory into f15
fminm.s f30, f16, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
li x26, 0x6b1e0574 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f10, 0(x2) # load 0x80000000 from memory into f10
li x3, 0x5ba4911e # load x3 with value 0x5ba4911e
sw x3, 0(x2) # store 0x5ba4911e in memory
flw f29, 0(x2) # load 0x5ba4911e from memory into f29
fminm.s f26, f10, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
li x10, 0xa995a2cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
li x3, 0x9457fa22 # load x3 with value 0x9457fa22
sw x3, 0(x2) # store 0x9457fa22 in memory
flw f25, 0(x2) # load 0x9457fa22 from memory into f25
fminm.s f10, f24, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
li x1, 0xcb88735a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f29, 0(x2) # load 0xbf800000 from memory into f29
li x3, 0x100037a7 # load x3 with value 0x100037a7
sw x3, 0(x2) # store 0x100037a7 in memory
flw f7, 0(x2) # load 0x100037a7 from memory into f7
fminm.s f1, f29, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
li x18, 0x6965b06d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f3, 0(x2) # load 0x3fc00000 from memory into f3
li x3, 0x8dfd4f72 # load x3 with value 0x8dfd4f72
sw x3, 0(x2) # store 0x8dfd4f72 in memory
flw f30, 0(x2) # load 0x8dfd4f72 from memory into f30
fminm.s f18, f3, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
li x21, 0x8f2d149c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f31, 0(x2) # load 0xbfc00000 from memory into f31
li x3, 0x64cb6074 # load x3 with value 0x64cb6074
sw x3, 0(x2) # store 0x64cb6074 in memory
flw f27, 0(x2) # load 0x64cb6074 from memory into f27
fminm.s f21, f31, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
li x10, 0x908b9cb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f4, 0(x2) # load 0x40000000 from memory into f4
li x3, 0xa7bc3b4f # load x3 with value 0xa7bc3b4f
sw x3, 0(x2) # store 0xa7bc3b4f in memory
flw f15, 0(x2) # load 0xa7bc3b4f from memory into f15
fminm.s f10, f4, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
li x10, 0xa3f4eaa8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f24, 0(x2) # load 0xc0000000 from memory into f24
li x3, 0xc0fe1a61 # load x3 with value 0xc0fe1a61
sw x3, 0(x2) # store 0xc0fe1a61 in memory
flw f2, 0(x2) # load 0xc0fe1a61 from memory into f2
fminm.s f10, f24, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
li x23, 0x4bb93bf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f16, 0(x2) # load 0x00800000 from memory into f16
li x3, 0x6f85ffcb # load x3 with value 0x6f85ffcb
sw x3, 0(x2) # store 0x6f85ffcb in memory
flw f10, 0(x2) # load 0x6f85ffcb from memory into f10
fminm.s f23, f16, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
li x29, 0xd05cfa2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f15, 0(x2) # load 0x80800000 from memory into f15
li x3, 0x1c8434e0 # load x3 with value 0x1c8434e0
sw x3, 0(x2) # store 0x1c8434e0 in memory
flw f11, 0(x2) # load 0x1c8434e0 from memory into f11
fminm.s f29, f15, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
li x21, 0x86e50a15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
li x3, 0x79bb8b0c # load x3 with value 0x79bb8b0c
sw x3, 0(x2) # store 0x79bb8b0c in memory
flw f8, 0(x2) # load 0x79bb8b0c from memory into f8
fminm.s f21, f29, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
li x29, 0x6e39440c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f9, 0(x2) # load 0xff7fffff from memory into f9
li x3, 0x1b1e629d # load x3 with value 0x1b1e629d
sw x3, 0(x2) # store 0x1b1e629d in memory
flw f3, 0(x2) # load 0x1b1e629d from memory into f3
fminm.s f29, f9, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
li x31, 0x2e55405c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f22, 0(x2) # load 0x007fffff from memory into f22
li x3, 0xd6a3e23a # load x3 with value 0xd6a3e23a
sw x3, 0(x2) # store 0xd6a3e23a in memory
flw f9, 0(x2) # load 0xd6a3e23a from memory into f9
fminm.s f31, f22, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
li x2, 0x64b5fbf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f13, 0(x2) # load 0x807fffff from memory into f13
li x3, 0x03b793e3 # load x3 with value 0x03b793e3
sw x3, 0(x2) # store 0x03b793e3 in memory
flw f21, 0(x2) # load 0x03b793e3 from memory into f21
fminm.s f2, f13, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
li x27, 0x759c4859 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f19, 0(x2) # load 0x00400000 from memory into f19
li x3, 0xd0b504a7 # load x3 with value 0xd0b504a7
sw x3, 0(x2) # store 0xd0b504a7 in memory
flw f10, 0(x2) # load 0xd0b504a7 from memory into f10
fminm.s f27, f19, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
li x7, 0x4d7b8e12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
li x3, 0x70f7da53 # load x3 with value 0x70f7da53
sw x3, 0(x2) # store 0x70f7da53 in memory
flw f8, 0(x2) # load 0x70f7da53 from memory into f8
fminm.s f7, f6, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x31, 0xa2fa142b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
li x3, 0xec22ed9c # load x3 with value 0xec22ed9c
sw x3, 0(x2) # store 0xec22ed9c in memory
flw f17, 0(x2) # load 0xec22ed9c from memory into f17
fminm.s f31, f3, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
li x14, 0x32708e76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f29, 0(x2) # load 0x80000001 from memory into f29
li x3, 0x1d1d8276 # load x3 with value 0x1d1d8276
sw x3, 0(x2) # store 0x1d1d8276 in memory
flw f20, 0(x2) # load 0x1d1d8276 from memory into f20
fminm.s f14, f29, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
li x20, 0xfe30b035 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f22, 0(x2) # load 0x7f800000 from memory into f22
li x3, 0x6a623268 # load x3 with value 0x6a623268
sw x3, 0(x2) # store 0x6a623268 in memory
flw f18, 0(x2) # load 0x6a623268 from memory into f18
fminm.s f20, f22, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
li x6, 0x32c054ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f27, 0(x2) # load 0xff800000 from memory into f27
li x3, 0x91d43426 # load x3 with value 0x91d43426
sw x3, 0(x2) # store 0x91d43426 in memory
flw f20, 0(x2) # load 0x91d43426 from memory into f20
fminm.s f6, f27, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
li x7, 0x1a0061b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f5, 0(x2) # load 0x7fc00000 from memory into f5
li x3, 0x9fd4ac14 # load x3 with value 0x9fd4ac14
sw x3, 0(x2) # store 0x9fd4ac14 in memory
flw f1, 0(x2) # load 0x9fd4ac14 from memory into f1
fminm.s f7, f5, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
li x15, 0x01aa7013 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f26, 0(x2) # load 0x7fffffff from memory into f26
li x3, 0x50c46bc9 # load x3 with value 0x50c46bc9
sw x3, 0(x2) # store 0x50c46bc9 in memory
flw f21, 0(x2) # load 0x50c46bc9 from memory into f21
fminm.s f15, f26, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
li x29, 0xa4fd1f64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
li x3, 0xc55b34bb # load x3 with value 0xc55b34bb
sw x3, 0(x2) # store 0xc55b34bb in memory
flw f27, 0(x2) # load 0xc55b34bb from memory into f27
fminm.s f29, f7, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
li x2, 0x3324903a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f17, 0(x2) # load 0x7fbfffff from memory into f17
li x3, 0xcad1364b # load x3 with value 0xcad1364b
sw x3, 0(x2) # store 0xcad1364b in memory
flw f13, 0(x2) # load 0xcad1364b from memory into f13
fminm.s f2, f17, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
li x4, 0xf0af5000 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f19, 0(x2) # load 0x7ef8654f from memory into f19
li x3, 0x47d2dcbb # load x3 with value 0x47d2dcbb
sw x3, 0(x2) # store 0x47d2dcbb in memory
flw f3, 0(x2) # load 0x47d2dcbb from memory into f3
fminm.s f4, f19, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
li x22, 0xa8535b7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f29, 0(x2) # load 0x813d9ab0 from memory into f29
li x3, 0xee1e993e # load x3 with value 0xee1e993e
sw x3, 0(x2) # store 0xee1e993e in memory
flw f2, 0(x2) # load 0xee1e993e from memory into f2
fminm.s f22, f29, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x18, 0x0a0398be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xac76a867 # load x3 with value 0xac76a867
sw x3, 0(x2) # store 0xac76a867 in memory
flw f1, 0(x2) # load 0xac76a867 from memory into f1
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
fminm.s f18, f1, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000000)
li x25, 0x192322e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x129d7cd4 # load x3 with value 0x129d7cd4
sw x3, 0(x2) # store 0x129d7cd4 in memory
flw f21, 0(x2) # load 0x129d7cd4 from memory into f21
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f22, 0(x2) # load 0x80000000 from memory into f22
fminm.s f25, f21, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
li x6, 0xb7cdc93b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x07a5928f # load x3 with value 0x07a5928f
sw x3, 0(x2) # store 0x07a5928f in memory
flw f26, 0(x2) # load 0x07a5928f from memory into f26
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f19, 0(x2) # load 0x3f800000 from memory into f19
fminm.s f6, f26, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbf800000)
li x7, 0x84ed67cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x764ad66c # load x3 with value 0x764ad66c
sw x3, 0(x2) # store 0x764ad66c in memory
flw f20, 0(x2) # load 0x764ad66c from memory into f20
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
fminm.s f7, f20, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3fc00000)
li x1, 0x472ea5ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd33c6385 # load x3 with value 0xd33c6385
sw x3, 0(x2) # store 0xd33c6385 in memory
flw f24, 0(x2) # load 0xd33c6385 from memory into f24
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f17, 0(x2) # load 0x3fc00000 from memory into f17
fminm.s f1, f24, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbfc00000)
li x2, 0x49924c27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x509f53ba # load x3 with value 0x509f53ba
sw x3, 0(x2) # store 0x509f53ba in memory
flw f13, 0(x2) # load 0x509f53ba from memory into f13
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f19, 0(x2) # load 0xbfc00000 from memory into f19
fminm.s f2, f13, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x40000000)
li x8, 0x636113bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xedbbc432 # load x3 with value 0xedbbc432
sw x3, 0(x2) # store 0xedbbc432 in memory
flw f17, 0(x2) # load 0xedbbc432 from memory into f17
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f31, 0(x2) # load 0x40000000 from memory into f31
fminm.s f8, f17, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0000000)
li x13, 0xce2cb3cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4272e30b # load x3 with value 0x4272e30b
sw x3, 0(x2) # store 0x4272e30b in memory
flw f3, 0(x2) # load 0x4272e30b from memory into f3
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f11, 0(x2) # load 0xc0000000 from memory into f11
fminm.s f13, f3, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800000)
li x6, 0xe832896b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x83f4e5ce # load x3 with value 0x83f4e5ce
sw x3, 0(x2) # store 0x83f4e5ce in memory
flw f15, 0(x2) # load 0x83f4e5ce from memory into f15
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f1, 0(x2) # load 0x00800000 from memory into f1
fminm.s f6, f15, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80800000)
li x30, 0x9068d736 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb261107a # load x3 with value 0xb261107a
sw x3, 0(x2) # store 0xb261107a in memory
flw f24, 0(x2) # load 0xb261107a from memory into f24
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f7, 0(x2) # load 0x80800000 from memory into f7
fminm.s f30, f24, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f7fffff)
li x21, 0xbe01a9f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x277bfa76 # load x3 with value 0x277bfa76
sw x3, 0(x2) # store 0x277bfa76 in memory
flw f19, 0(x2) # load 0x277bfa76 from memory into f19
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f27, 0(x2) # load 0x7f7fffff from memory into f27
fminm.s f21, f19, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff7fffff)
li x26, 0x3921f1c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7b17121f # load x3 with value 0x7b17121f
sw x3, 0(x2) # store 0x7b17121f in memory
flw f12, 0(x2) # load 0x7b17121f from memory into f12
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
fminm.s f26, f12, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffff)
li x19, 0xe79457a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x343cc2e8 # load x3 with value 0x343cc2e8
sw x3, 0(x2) # store 0x343cc2e8 in memory
flw f23, 0(x2) # load 0x343cc2e8 from memory into f23
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f11, 0(x2) # load 0x007fffff from memory into f11
fminm.s f19, f23, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x807fffff)
li x19, 0x01ec7cc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf3b7549e # load x3 with value 0xf3b7549e
sw x3, 0(x2) # store 0xf3b7549e in memory
flw f13, 0(x2) # load 0xf3b7549e from memory into f13
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
fminm.s f19, f13, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400000)
li x29, 0xf7e36cc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1bab2cc0 # load x3 with value 0x1bab2cc0
sw x3, 0(x2) # store 0x1bab2cc0 in memory
flw f22, 0(x2) # load 0x1bab2cc0 from memory into f22
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f9, 0(x2) # load 0x00400000 from memory into f9
fminm.s f29, f22, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80400000)
li x5, 0xa5b84d31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x53b39b66 # load x3 with value 0x53b39b66
sw x3, 0(x2) # store 0x53b39b66 in memory
flw f4, 0(x2) # load 0x53b39b66 from memory into f4
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f28, 0(x2) # load 0x80400000 from memory into f28
fminm.s f5, f4, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x18, 0x49032046 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9e2c3b03 # load x3 with value 0x9e2c3b03
sw x3, 0(x2) # store 0x9e2c3b03 in memory
flw f30, 0(x2) # load 0x9e2c3b03 from memory into f30
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f1, 0(x2) # load 0x00000001 from memory into f1
fminm.s f18, f30, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000001)
li x19, 0x85ddd9b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd3c2ffdd # load x3 with value 0xd3c2ffdd
sw x3, 0(x2) # store 0xd3c2ffdd in memory
flw f1, 0(x2) # load 0xd3c2ffdd from memory into f1
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f23, 0(x2) # load 0x80000001 from memory into f23
fminm.s f19, f1, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800000)
li x23, 0x827c83d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaad09098 # load x3 with value 0xaad09098
sw x3, 0(x2) # store 0xaad09098 in memory
flw f18, 0(x2) # load 0xaad09098 from memory into f18
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f21, 0(x2) # load 0x7f800000 from memory into f21
fminm.s f23, f18, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff800000)
li x27, 0x027bfcee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x959ff196 # load x3 with value 0x959ff196
sw x3, 0(x2) # store 0x959ff196 in memory
flw f1, 0(x2) # load 0x959ff196 from memory into f1
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f6, 0(x2) # load 0xff800000 from memory into f6
fminm.s f27, f1, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fc00000)
li x21, 0x9fbf140e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0c98ade2 # load x3 with value 0x0c98ade2
sw x3, 0(x2) # store 0x0c98ade2 in memory
flw f7, 0(x2) # load 0x0c98ade2 from memory into f7
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f22, 0(x2) # load 0x7fc00000 from memory into f22
fminm.s f21, f7, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff)
li x27, 0x70def0fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x95616b29 # load x3 with value 0x95616b29
sw x3, 0(x2) # store 0x95616b29 in memory
flw f28, 0(x2) # load 0x95616b29 from memory into f28
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
fminm.s f27, f28, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800001)
li x28, 0x883b5130 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x18d7d852 # load x3 with value 0x18d7d852
sw x3, 0(x2) # store 0x18d7d852 in memory
flw f7, 0(x2) # load 0x18d7d852 from memory into f7
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f22, 0(x2) # load 0x7f800001 from memory into f22
fminm.s f28, f7, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fbfffff)
li x20, 0x7c771f2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb7fbeee6 # load x3 with value 0xb7fbeee6
sw x3, 0(x2) # store 0xb7fbeee6 in memory
flw f23, 0(x2) # load 0xb7fbeee6 from memory into f23
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f29, 0(x2) # load 0x7fbfffff from memory into f29
fminm.s f20, f23, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ef8654f)
li x28, 0x16b691b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf2907db7 # load x3 with value 0xf2907db7
sw x3, 0(x2) # store 0xf2907db7 in memory
flw f4, 0(x2) # load 0xf2907db7 from memory into f4
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f9, 0(x2) # load 0x7ef8654f from memory into f9
fminm.s f28, f4, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x813d9ab0)
li x27, 0x71314578 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x620a478f # load x3 with value 0x620a478f
sw x3, 0(x2) # store 0x620a478f in memory
flw f11, 0(x2) # load 0x620a478f from memory into f11
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f15, 0(x2) # load 0x813d9ab0 from memory into f15
fminm.s f27, f11, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
li x18, 0x796f8fb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f11, 0(x2) # load 0x00000000 from memory into f11
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f4, 0(x2) # load 0x00000000 from memory into f4
fminm.s f18, f11, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80000000)
li x19, 0xa701a243 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f24, 0(x2) # load 0x00000000 from memory into f24
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f6, 0(x2) # load 0x80000000 from memory into f6
fminm.s f19, f24, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3f800000)
li x1, 0x888a361a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f4, 0(x2) # load 0x00000000 from memory into f4
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f12, 0(x2) # load 0x3f800000 from memory into f12
fminm.s f1, f4, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbf800000)
li x26, 0xb479b183 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f22, 0(x2) # load 0x00000000 from memory into f22
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
fminm.s f26, f22, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3fc00000)
li x28, 0xc4377cf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f19, 0(x2) # load 0x3fc00000 from memory into f19
fminm.s f28, f31, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbfc00000)
li x26, 0xa5bdc8c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f17, 0(x2) # load 0x00000000 from memory into f17
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f21, 0(x2) # load 0xbfc00000 from memory into f21
fminm.s f26, f17, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x40000000)
li x14, 0x44db9fe6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f4, 0(x2) # load 0x40000000 from memory into f4
fminm.s f14, f16, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc0000000)
li x19, 0x92988253 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f28, 0(x2) # load 0xc0000000 from memory into f28
fminm.s f19, f13, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x800000)
li x17, 0x4a4430ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f4, 0(x2) # load 0x00000000 from memory into f4
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f20, 0(x2) # load 0x00800000 from memory into f20
fminm.s f17, f4, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80800000)
li x8, 0x8df524fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f15, 0(x2) # load 0x80800000 from memory into f15
fminm.s f8, f9, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f7fffff)
li x13, 0xa1fb9751 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f28, 0(x2) # load 0x00000000 from memory into f28
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
fminm.s f13, f28, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xff7fffff)
li x23, 0x5352e525 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f24, 0(x2) # load 0x00000000 from memory into f24
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f9, 0(x2) # load 0xff7fffff from memory into f9
fminm.s f23, f24, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffff)
li x8, 0xca127fa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f2, 0(x2) # load 0x00000000 from memory into f2
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f26, 0(x2) # load 0x007fffff from memory into f26
fminm.s f8, f2, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x807fffff)
li x7, 0x2b024678 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f25, 0(x2) # load 0x00000000 from memory into f25
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
fminm.s f7, f25, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x400000)
li x10, 0x707af41c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f25, 0(x2) # load 0x00000000 from memory into f25
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f17, 0(x2) # load 0x00400000 from memory into f17
fminm.s f10, f25, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80400000)
li x4, 0xe3a4e889 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f23, 0(x2) # load 0x80400000 from memory into f23
fminm.s f4, f15, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
li x18, 0xb4622ef5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f1, 0(x2) # load 0x00000000 from memory into f1
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
fminm.s f18, f1, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80000001)
li x27, 0xbafa09db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f6, 0(x2) # load 0x00000000 from memory into f6
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f13, 0(x2) # load 0x80000001 from memory into f13
fminm.s f27, f6, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f800000)
li x1, 0xedf7f407 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f25, 0(x2) # load 0x00000000 from memory into f25
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f22, 0(x2) # load 0x7f800000 from memory into f22
fminm.s f1, f25, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xff800000)
li x13, 0xe0a2563d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f25, 0(x2) # load 0x00000000 from memory into f25
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f8, 0(x2) # load 0xff800000 from memory into f8
fminm.s f13, f25, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fc00000)
li x9, 0x87a81c59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f5, 0(x2) # load 0x00000000 from memory into f5
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f13, 0(x2) # load 0x7fc00000 from memory into f13
fminm.s f9, f5, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffffff)
li x6, 0xbcea2c08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f11, 0(x2) # load 0x00000000 from memory into f11
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f27, 0(x2) # load 0x7fffffff from memory into f27
fminm.s f6, f11, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f800001)
li x23, 0xa7eed6f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f28, 0(x2) # load 0x00000000 from memory into f28
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f26, 0(x2) # load 0x7f800001 from memory into f26
fminm.s f23, f28, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fbfffff)
li x15, 0x957e9ff3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f17, 0(x2) # load 0x00000000 from memory into f17
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f8, 0(x2) # load 0x7fbfffff from memory into f8
fminm.s f15, f17, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ef8654f)
li x19, 0x2f39c233 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f23, 0(x2) # load 0x00000000 from memory into f23
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
fminm.s f19, f23, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x813d9ab0)
li x1, 0xe0711a4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f2, 0(x2) # load 0x813d9ab0 from memory into f2
fminm.s f1, f9, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x0)
li x25, 0x8831d36f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f3, 0(x2) # load 0x80000000 from memory into f3
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f2, 0(x2) # load 0x00000000 from memory into f2
fminm.s f25, f3, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80000000)
li x24, 0x8f98ae5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f20, 0(x2) # load 0x80000000 from memory into f20
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f10, 0(x2) # load 0x80000000 from memory into f10
fminm.s f24, f20, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x3f800000)
li x20, 0x995e4ccd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f31, 0(x2) # load 0x80000000 from memory into f31
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f13, 0(x2) # load 0x3f800000 from memory into f13
fminm.s f20, f31, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xbf800000)
li x3, 0x80f66d12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f24, 0(x2) # load 0x80000000 from memory into f24
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f16, 0(x2) # load 0xbf800000 from memory into f16
fminm.s f3, f24, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x3fc00000)
li x25, 0x5287304f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f21, 0(x2) # load 0x80000000 from memory into f21
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
fminm.s f25, f21, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xbfc00000)
li x16, 0x52fa1d86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f7, 0(x2) # load 0x80000000 from memory into f7
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f10, 0(x2) # load 0xbfc00000 from memory into f10
fminm.s f16, f7, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x40000000)
li x3, 0x05e66263 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f22, 0(x2) # load 0x80000000 from memory into f22
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f30, 0(x2) # load 0x40000000 from memory into f30
fminm.s f3, f22, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xc0000000)
li x13, 0x8c6d690f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f17, 0(x2) # load 0x80000000 from memory into f17
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f12, 0(x2) # load 0xc0000000 from memory into f12
fminm.s f13, f17, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x800000)
li x9, 0x3d90c58a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f20, 0(x2) # load 0x80000000 from memory into f20
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f26, 0(x2) # load 0x00800000 from memory into f26
fminm.s f9, f20, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80800000)
li x15, 0x35c01cbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f3, 0(x2) # load 0x80000000 from memory into f3
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f16, 0(x2) # load 0x80800000 from memory into f16
fminm.s f15, f3, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f7fffff)
li x20, 0x7001a7fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f11, 0(x2) # load 0x80000000 from memory into f11
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
fminm.s f20, f11, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xff7fffff)
li x13, 0x87dc67a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f23, 0(x2) # load 0x80000000 from memory into f23
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f5, 0(x2) # load 0xff7fffff from memory into f5
fminm.s f13, f23, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fffff)
li x12, 0x9d0f3325 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f20, 0(x2) # load 0x80000000 from memory into f20
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f11, 0(x2) # load 0x007fffff from memory into f11
fminm.s f12, f20, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x807fffff)
li x31, 0x2fbeda29 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f20, 0(x2) # load 0x80000000 from memory into f20
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f5, 0(x2) # load 0x807fffff from memory into f5
fminm.s f31, f20, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x400000)
li x27, 0x5f35b8fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f3, 0(x2) # load 0x80000000 from memory into f3
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f24, 0(x2) # load 0x00400000 from memory into f24
fminm.s f27, f3, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80400000)
li x6, 0xeab734a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f11, 0(x2) # load 0x80000000 from memory into f11
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f18, 0(x2) # load 0x80400000 from memory into f18
fminm.s f6, f11, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x1)
li x13, 0xa5368d56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f22, 0(x2) # load 0x80000000 from memory into f22
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
fminm.s f13, f22, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80000001)
li x31, 0xdc4b03eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f11, 0(x2) # load 0x80000000 from memory into f11
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
fminm.s f31, f11, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f800000)
li x6, 0xea82b856 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f16, 0(x2) # load 0x80000000 from memory into f16
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f30, 0(x2) # load 0x7f800000 from memory into f30
fminm.s f6, f16, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xff800000)
li x31, 0x171967ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f13, 0(x2) # load 0x80000000 from memory into f13
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f20, 0(x2) # load 0xff800000 from memory into f20
fminm.s f31, f13, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fc00000)
li x11, 0x484c7047 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f21, 0(x2) # load 0x80000000 from memory into f21
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f25, 0(x2) # load 0x7fc00000 from memory into f25
fminm.s f11, f21, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fffffff)
li x14, 0x05d69b73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f5, 0(x2) # load 0x80000000 from memory into f5
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f15, 0(x2) # load 0x7fffffff from memory into f15
fminm.s f14, f5, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f800001)
li x1, 0x782af380 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f10, 0(x2) # load 0x80000000 from memory into f10
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f6, 0(x2) # load 0x7f800001 from memory into f6
fminm.s f1, f10, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fbfffff)
li x8, 0x06f23e5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f20, 0(x2) # load 0x80000000 from memory into f20
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f11, 0(x2) # load 0x7fbfffff from memory into f11
fminm.s f8, f20, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7ef8654f)
li x24, 0x46b4b81a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f17, 0(x2) # load 0x80000000 from memory into f17
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f11, 0(x2) # load 0x7ef8654f from memory into f11
fminm.s f24, f17, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x813d9ab0)
li x13, 0x84ba2533 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f19, 0(x2) # load 0x80000000 from memory into f19
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f14, 0(x2) # load 0x813d9ab0 from memory into f14
fminm.s f13, f19, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x0)
li x19, 0xda611954 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f31, 0(x2) # load 0x3f800000 from memory into f31
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f22, 0(x2) # load 0x00000000 from memory into f22
fminm.s f19, f31, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80000000)
li x7, 0x9b9208a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f12, 0(x2) # load 0x3f800000 from memory into f12
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f30, 0(x2) # load 0x80000000 from memory into f30
fminm.s f7, f12, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x3f800000)
li x17, 0x0b34b5b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f25, 0(x2) # load 0x3f800000 from memory into f25
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f23, 0(x2) # load 0x3f800000 from memory into f23
fminm.s f17, f25, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xbf800000)
li x16, 0xedacabbd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f1, 0(x2) # load 0xbf800000 from memory into f1
fminm.s f16, f24, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x3fc00000)
li x5, 0xa2aaf4ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f29, 0(x2) # load 0x3f800000 from memory into f29
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f15, 0(x2) # load 0x3fc00000 from memory into f15
fminm.s f5, f29, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xbfc00000)
li x18, 0x2f5a5119 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f22, 0(x2) # load 0x3f800000 from memory into f22
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f21, 0(x2) # load 0xbfc00000 from memory into f21
fminm.s f18, f22, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x40000000)
li x25, 0x66cc2818 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f29, 0(x2) # load 0x3f800000 from memory into f29
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f11, 0(x2) # load 0x40000000 from memory into f11
fminm.s f25, f29, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xc0000000)
li x22, 0xf5c19549 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f17, 0(x2) # load 0x3f800000 from memory into f17
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f24, 0(x2) # load 0xc0000000 from memory into f24
fminm.s f22, f17, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x800000)
li x7, 0x03fb7274 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f31, 0(x2) # load 0x00800000 from memory into f31
fminm.s f7, f11, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80800000)
li x17, 0xcd5941f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f4, 0(x2) # load 0x80800000 from memory into f4
fminm.s f17, f6, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f7fffff)
li x25, 0xb289f81c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f1, 0(x2) # load 0x3f800000 from memory into f1
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f5, 0(x2) # load 0x7f7fffff from memory into f5
fminm.s f25, f1, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xff7fffff)
li x19, 0xd614aba0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f22, 0(x2) # load 0x3f800000 from memory into f22
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
fminm.s f19, f22, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fffff)
li x12, 0xcac680d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f30, 0(x2) # load 0x3f800000 from memory into f30
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f8, 0(x2) # load 0x007fffff from memory into f8
fminm.s f12, f30, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x807fffff)
li x19, 0x557cc087 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f9, 0(x2) # load 0x3f800000 from memory into f9
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f24, 0(x2) # load 0x807fffff from memory into f24
fminm.s f19, f9, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x400000)
li x12, 0xe0b93284 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f7, 0(x2) # load 0x3f800000 from memory into f7
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
fminm.s f12, f7, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80400000)
li x15, 0xe4d77041 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f8, 0(x2) # load 0x3f800000 from memory into f8
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f27, 0(x2) # load 0x80400000 from memory into f27
fminm.s f15, f8, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x1)
li x27, 0x1ccc520b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f9, 0(x2) # load 0x3f800000 from memory into f9
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
fminm.s f27, f9, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80000001)
li x29, 0x6fc68653 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f5, 0(x2) # load 0x3f800000 from memory into f5
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
fminm.s f29, f5, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f800000)
li x17, 0xf88409b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f25, 0(x2) # load 0x3f800000 from memory into f25
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f22, 0(x2) # load 0x7f800000 from memory into f22
fminm.s f17, f25, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xff800000)
li x2, 0x3b25318f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f22, 0(x2) # load 0x3f800000 from memory into f22
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f28, 0(x2) # load 0xff800000 from memory into f28
fminm.s f2, f22, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fc00000)
li x30, 0xc3f3e550 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f14, 0(x2) # load 0x3f800000 from memory into f14
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f5, 0(x2) # load 0x7fc00000 from memory into f5
fminm.s f30, f14, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fffffff)
li x31, 0xf4a5ae86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f23, 0(x2) # load 0x3f800000 from memory into f23
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f16, 0(x2) # load 0x7fffffff from memory into f16
fminm.s f31, f23, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f800001)
li x7, 0x2ef6387d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f3, 0(x2) # load 0x3f800000 from memory into f3
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f22, 0(x2) # load 0x7f800001 from memory into f22
fminm.s f7, f3, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fbfffff)
li x7, 0xab06afd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f8, 0(x2) # load 0x3f800000 from memory into f8
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f4, 0(x2) # load 0x7fbfffff from memory into f4
fminm.s f7, f8, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7ef8654f)
li x29, 0xb907f70d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f22, 0(x2) # load 0x3f800000 from memory into f22
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f5, 0(x2) # load 0x7ef8654f from memory into f5
fminm.s f29, f22, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x813d9ab0)
li x17, 0x01ea6c9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f11, 0(x2) # load 0x813d9ab0 from memory into f11
fminm.s f17, f6, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x0)
li x2, 0x2548e8e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f23, 0(x2) # load 0xbf800000 from memory into f23
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f26, 0(x2) # load 0x00000000 from memory into f26
fminm.s f2, f23, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80000000)
li x3, 0x7d05a45d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f5, 0(x2) # load 0x80000000 from memory into f5
fminm.s f3, f9, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x3f800000)
li x27, 0x41cc9073 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f28, 0(x2) # load 0xbf800000 from memory into f28
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f8, 0(x2) # load 0x3f800000 from memory into f8
fminm.s f27, f28, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xbf800000)
li x18, 0x0ea219c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f30, 0(x2) # load 0xbf800000 from memory into f30
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f5, 0(x2) # load 0xbf800000 from memory into f5
fminm.s f18, f30, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x3fc00000)
li x14, 0x8f681823 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f30, 0(x2) # load 0xbf800000 from memory into f30
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f16, 0(x2) # load 0x3fc00000 from memory into f16
fminm.s f14, f30, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xbfc00000)
li x24, 0xd1489214 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f5, 0(x2) # load 0xbf800000 from memory into f5
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f19, 0(x2) # load 0xbfc00000 from memory into f19
fminm.s f24, f5, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x40000000)
li x12, 0x409634e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f6, 0(x2) # load 0xbf800000 from memory into f6
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f25, 0(x2) # load 0x40000000 from memory into f25
fminm.s f12, f6, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xc0000000)
li x2, 0x1c29fcfc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f25, 0(x2) # load 0xbf800000 from memory into f25
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f30, 0(x2) # load 0xc0000000 from memory into f30
fminm.s f2, f25, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x800000)
li x31, 0x324aef71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f23, 0(x2) # load 0xbf800000 from memory into f23
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
fminm.s f31, f23, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80800000)
li x15, 0xee8e3501 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f19, 0(x2) # load 0xbf800000 from memory into f19
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f16, 0(x2) # load 0x80800000 from memory into f16
fminm.s f15, f19, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f7fffff)
li x22, 0xf7ce3e07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f13, 0(x2) # load 0xbf800000 from memory into f13
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f1, 0(x2) # load 0x7f7fffff from memory into f1
fminm.s f22, f13, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xff7fffff)
li x19, 0x8ad2d36c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f8, 0(x2) # load 0xbf800000 from memory into f8
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f25, 0(x2) # load 0xff7fffff from memory into f25
fminm.s f19, f8, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fffff)
li x17, 0x9e31851a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f3, 0(x2) # load 0xbf800000 from memory into f3
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f8, 0(x2) # load 0x007fffff from memory into f8
fminm.s f17, f3, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x807fffff)
li x15, 0xbaabeefd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f31, 0(x2) # load 0xbf800000 from memory into f31
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f19, 0(x2) # load 0x807fffff from memory into f19
fminm.s f15, f31, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x400000)
li x22, 0x81adf2d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f20, 0(x2) # load 0xbf800000 from memory into f20
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f17, 0(x2) # load 0x00400000 from memory into f17
fminm.s f22, f20, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80400000)
li x24, 0xf5162a3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f15, 0(x2) # load 0xbf800000 from memory into f15
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f22, 0(x2) # load 0x80400000 from memory into f22
fminm.s f24, f15, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x1)
li x2, 0x0bd747b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f18, 0(x2) # load 0xbf800000 from memory into f18
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f16, 0(x2) # load 0x00000001 from memory into f16
fminm.s f2, f18, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80000001)
li x29, 0x909e5626 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f30, 0(x2) # load 0xbf800000 from memory into f30
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f5, 0(x2) # load 0x80000001 from memory into f5
fminm.s f29, f30, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f800000)
li x10, 0x5ba3f5b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f4, 0(x2) # load 0xbf800000 from memory into f4
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f19, 0(x2) # load 0x7f800000 from memory into f19
fminm.s f10, f4, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xff800000)
li x27, 0xa5db23b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f24, 0(x2) # load 0xbf800000 from memory into f24
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f22, 0(x2) # load 0xff800000 from memory into f22
fminm.s f27, f24, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fc00000)
li x2, 0x6cd229e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f12, 0(x2) # load 0xbf800000 from memory into f12
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f23, 0(x2) # load 0x7fc00000 from memory into f23
fminm.s f2, f12, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fffffff)
li x20, 0xd1102b8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f2, 0(x2) # load 0xbf800000 from memory into f2
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f13, 0(x2) # load 0x7fffffff from memory into f13
fminm.s f20, f2, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f800001)
li x11, 0x1ea2bbbb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f29, 0(x2) # load 0xbf800000 from memory into f29
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
fminm.s f11, f29, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fbfffff)
li x24, 0xd2a2e539 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f15, 0(x2) # load 0xbf800000 from memory into f15
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f3, 0(x2) # load 0x7fbfffff from memory into f3
fminm.s f24, f15, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7ef8654f)
li x2, 0xaa9642df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
fminm.s f2, f9, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x813d9ab0)
li x23, 0x3ad9042a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f11, 0(x2) # load 0xbf800000 from memory into f11
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f3, 0(x2) # load 0x813d9ab0 from memory into f3
fminm.s f23, f11, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x0)
li x6, 0x32514a3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f5, 0(x2) # load 0x3fc00000 from memory into f5
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f17, 0(x2) # load 0x00000000 from memory into f17
fminm.s f6, f5, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80000000)
li x16, 0xcef43e2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f8, 0(x2) # load 0x3fc00000 from memory into f8
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f26, 0(x2) # load 0x80000000 from memory into f26
fminm.s f16, f8, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x3f800000)
li x17, 0xfdc5cef6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f3, 0(x2) # load 0x3fc00000 from memory into f3
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f21, 0(x2) # load 0x3f800000 from memory into f21
fminm.s f17, f3, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xbf800000)
li x21, 0x4402156f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f25, 0(x2) # load 0x3fc00000 from memory into f25
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f11, 0(x2) # load 0xbf800000 from memory into f11
fminm.s f21, f25, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x3fc00000)
li x1, 0xcbe59a16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f14, 0(x2) # load 0x3fc00000 from memory into f14
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
fminm.s f1, f14, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xbfc00000)
li x3, 0x9a08e03e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f4, 0(x2) # load 0xbfc00000 from memory into f4
fminm.s f3, f12, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x40000000)
li x22, 0xda9c8b5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f16, 0(x2) # load 0x3fc00000 from memory into f16
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f12, 0(x2) # load 0x40000000 from memory into f12
fminm.s f22, f16, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xc0000000)
li x22, 0xa99108d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f6, 0(x2) # load 0xc0000000 from memory into f6
fminm.s f22, f13, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x800000)
li x10, 0xd416d470 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f1, 0(x2) # load 0x3fc00000 from memory into f1
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f19, 0(x2) # load 0x00800000 from memory into f19
fminm.s f10, f1, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80800000)
li x26, 0x78788d48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f28, 0(x2) # load 0x3fc00000 from memory into f28
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
fminm.s f26, f28, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f7fffff)
li x4, 0x3d161757 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f27, 0(x2) # load 0x3fc00000 from memory into f27
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f7, 0(x2) # load 0x7f7fffff from memory into f7
fminm.s f4, f27, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xff7fffff)
li x18, 0xadb966de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f10, 0(x2) # load 0xff7fffff from memory into f10
fminm.s f18, f13, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fffff)
li x16, 0x58a5e51d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f26, 0(x2) # load 0x3fc00000 from memory into f26
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f9, 0(x2) # load 0x007fffff from memory into f9
fminm.s f16, f26, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x807fffff)
li x26, 0xaa05e9ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f27, 0(x2) # load 0x3fc00000 from memory into f27
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f22, 0(x2) # load 0x807fffff from memory into f22
fminm.s f26, f27, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x400000)
li x19, 0xe87a3d39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f30, 0(x2) # load 0x3fc00000 from memory into f30
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f4, 0(x2) # load 0x00400000 from memory into f4
fminm.s f19, f30, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80400000)
li x23, 0xe8c83e8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f8, 0(x2) # load 0x3fc00000 from memory into f8
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f25, 0(x2) # load 0x80400000 from memory into f25
fminm.s f23, f8, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x1)
li x27, 0xf5a956e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f4, 0(x2) # load 0x3fc00000 from memory into f4
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
fminm.s f27, f4, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80000001)
li x9, 0x935b5a31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f7, 0(x2) # load 0x3fc00000 from memory into f7
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f5, 0(x2) # load 0x80000001 from memory into f5
fminm.s f9, f7, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f800000)
li x18, 0x506ce100 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f17, 0(x2) # load 0x3fc00000 from memory into f17
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f1, 0(x2) # load 0x7f800000 from memory into f1
fminm.s f18, f17, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xff800000)
li x9, 0xa7b1cf8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f5, 0(x2) # load 0x3fc00000 from memory into f5
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
fminm.s f9, f5, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fc00000)
li x14, 0x9b50e525 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f22, 0(x2) # load 0x3fc00000 from memory into f22
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f21, 0(x2) # load 0x7fc00000 from memory into f21
fminm.s f14, f22, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fffffff)
li x21, 0xfba81d4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f2, 0(x2) # load 0x3fc00000 from memory into f2
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f6, 0(x2) # load 0x7fffffff from memory into f6
fminm.s f21, f2, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f800001)
li x16, 0x1db5e929 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
fminm.s f16, f6, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fbfffff)
li x7, 0xd5bd7fc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f21, 0(x2) # load 0x3fc00000 from memory into f21
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f19, 0(x2) # load 0x7fbfffff from memory into f19
fminm.s f7, f21, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7ef8654f)
li x2, 0x9699714c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f7, 0(x2) # load 0x3fc00000 from memory into f7
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f8, 0(x2) # load 0x7ef8654f from memory into f8
fminm.s f2, f7, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x813d9ab0)
li x30, 0xa6f6daa5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f10, 0(x2) # load 0x3fc00000 from memory into f10
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f6, 0(x2) # load 0x813d9ab0 from memory into f6
fminm.s f30, f10, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x0)
li x5, 0xba1ceb83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f4, 0(x2) # load 0xbfc00000 from memory into f4
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
fminm.s f5, f4, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80000000)
li x23, 0xdaadc42e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f17, 0(x2) # load 0xbfc00000 from memory into f17
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f28, 0(x2) # load 0x80000000 from memory into f28
fminm.s f23, f17, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x3f800000)
li x9, 0x4c9cf6eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f21, 0(x2) # load 0xbfc00000 from memory into f21
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
fminm.s f9, f21, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xbf800000)
li x20, 0x16a0b084 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f8, 0(x2) # load 0xbfc00000 from memory into f8
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f18, 0(x2) # load 0xbf800000 from memory into f18
fminm.s f20, f8, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x3fc00000)
li x7, 0x66cac724 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f9, 0(x2) # load 0xbfc00000 from memory into f9
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f21, 0(x2) # load 0x3fc00000 from memory into f21
fminm.s f7, f9, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xbfc00000)
li x31, 0xcd0b00b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f18, 0(x2) # load 0xbfc00000 from memory into f18
fminm.s f31, f25, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x40000000)
li x13, 0x3f3b4bcb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f26, 0(x2) # load 0xbfc00000 from memory into f26
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f21, 0(x2) # load 0x40000000 from memory into f21
fminm.s f13, f26, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xc0000000)
li x14, 0x4821cfa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f15, 0(x2) # load 0xbfc00000 from memory into f15
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f22, 0(x2) # load 0xc0000000 from memory into f22
fminm.s f14, f15, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x800000)
li x16, 0xf1c1c32a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f22, 0(x2) # load 0xbfc00000 from memory into f22
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f18, 0(x2) # load 0x00800000 from memory into f18
fminm.s f16, f22, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80800000)
li x28, 0x870741ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f3, 0(x2) # load 0xbfc00000 from memory into f3
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f21, 0(x2) # load 0x80800000 from memory into f21
fminm.s f28, f3, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f7fffff)
li x18, 0xf38e944c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f30, 0(x2) # load 0x7f7fffff from memory into f30
fminm.s f18, f27, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xff7fffff)
li x22, 0xebf8500c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f13, 0(x2) # load 0xbfc00000 from memory into f13
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f21, 0(x2) # load 0xff7fffff from memory into f21
fminm.s f22, f13, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fffff)
li x15, 0xe5a1cf06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f5, 0(x2) # load 0xbfc00000 from memory into f5
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f4, 0(x2) # load 0x007fffff from memory into f4
fminm.s f15, f5, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x807fffff)
li x4, 0x9b0e8542 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
fminm.s f4, f20, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x400000)
li x20, 0x4b91ea44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f7, 0(x2) # load 0x00400000 from memory into f7
fminm.s f20, f29, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80400000)
li x21, 0xd9502cde # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f8, 0(x2) # load 0x80400000 from memory into f8
fminm.s f21, f16, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x1)
li x21, 0x2bf96c5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f24, 0(x2) # load 0xbfc00000 from memory into f24
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
fminm.s f21, f24, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80000001)
li x11, 0x0124e6f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f31, 0(x2) # load 0xbfc00000 from memory into f31
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f20, 0(x2) # load 0x80000001 from memory into f20
fminm.s f11, f31, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f800000)
li x15, 0xb59c31a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f19, 0(x2) # load 0x7f800000 from memory into f19
fminm.s f15, f25, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xff800000)
li x14, 0xee6e26a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f11, 0(x2) # load 0xbfc00000 from memory into f11
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f23, 0(x2) # load 0xff800000 from memory into f23
fminm.s f14, f11, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fc00000)
li x24, 0x5a7c3b0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f1, 0(x2) # load 0xbfc00000 from memory into f1
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f12, 0(x2) # load 0x7fc00000 from memory into f12
fminm.s f24, f1, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fffffff)
li x7, 0xa7a859fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f17, 0(x2) # load 0xbfc00000 from memory into f17
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f26, 0(x2) # load 0x7fffffff from memory into f26
fminm.s f7, f17, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f800001)
li x16, 0xe772f098 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f18, 0(x2) # load 0x7f800001 from memory into f18
fminm.s f16, f28, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fbfffff)
li x15, 0xb89617b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f24, 0(x2) # load 0x7fbfffff from memory into f24
fminm.s f15, f27, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7ef8654f)
li x6, 0xc2561d80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f30, 0(x2) # load 0xbfc00000 from memory into f30
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f3, 0(x2) # load 0x7ef8654f from memory into f3
fminm.s f6, f30, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x813d9ab0)
li x11, 0x9accaf43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
fminm.s f11, f27, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x0)
li x17, 0xac151c75 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f20, 0(x2) # load 0x40000000 from memory into f20
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
fminm.s f17, f20, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80000000)
li x6, 0x8497f69a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f30, 0(x2) # load 0x80000000 from memory into f30
fminm.s f6, f24, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x3f800000)
li x22, 0x9a01cbdf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f12, 0(x2) # load 0x40000000 from memory into f12
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f18, 0(x2) # load 0x3f800000 from memory into f18
fminm.s f22, f12, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xbf800000)
li x1, 0x414bde78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f26, 0(x2) # load 0x40000000 from memory into f26
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f6, 0(x2) # load 0xbf800000 from memory into f6
fminm.s f1, f26, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x3fc00000)
li x24, 0x52ed3b5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f6, 0(x2) # load 0x40000000 from memory into f6
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f27, 0(x2) # load 0x3fc00000 from memory into f27
fminm.s f24, f6, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xbfc00000)
li x3, 0x8efd4ae7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f24, 0(x2) # load 0xbfc00000 from memory into f24
fminm.s f3, f8, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x40000000)
li x17, 0x213109b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f28, 0(x2) # load 0x40000000 from memory into f28
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f12, 0(x2) # load 0x40000000 from memory into f12
fminm.s f17, f28, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xc0000000)
li x26, 0x7210b394 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f22, 0(x2) # load 0x40000000 from memory into f22
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f17, 0(x2) # load 0xc0000000 from memory into f17
fminm.s f26, f22, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x800000)
li x12, 0xc3167b5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f17, 0(x2) # load 0x40000000 from memory into f17
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
fminm.s f12, f17, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80800000)
li x4, 0x50a465a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f28, 0(x2) # load 0x40000000 from memory into f28
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f24, 0(x2) # load 0x80800000 from memory into f24
fminm.s f4, f28, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f7fffff)
li x2, 0xca792857 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
fminm.s f2, f8, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xff7fffff)
li x28, 0x8031aa70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f25, 0(x2) # load 0x40000000 from memory into f25
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
fminm.s f28, f25, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fffff)
li x2, 0x0e6deb89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f7, 0(x2) # load 0x40000000 from memory into f7
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f3, 0(x2) # load 0x007fffff from memory into f3
fminm.s f2, f7, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x807fffff)
li x23, 0x774cd9ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f29, 0(x2) # load 0x40000000 from memory into f29
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f18, 0(x2) # load 0x807fffff from memory into f18
fminm.s f23, f29, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x400000)
li x14, 0x84a0f294 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f26, 0(x2) # load 0x40000000 from memory into f26
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f11, 0(x2) # load 0x00400000 from memory into f11
fminm.s f14, f26, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80400000)
li x21, 0x39709b66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f30, 0(x2) # load 0x80400000 from memory into f30
fminm.s f21, f8, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x1)
li x23, 0x674d04e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f9, 0(x2) # load 0x40000000 from memory into f9
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f29, 0(x2) # load 0x00000001 from memory into f29
fminm.s f23, f9, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80000001)
li x4, 0x54168f98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f26, 0(x2) # load 0x40000000 from memory into f26
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
fminm.s f4, f26, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f800000)
li x2, 0x5f532f6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f1, 0(x2) # load 0x7f800000 from memory into f1
fminm.s f2, f16, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xff800000)
li x22, 0xa9d5d27a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f12, 0(x2) # load 0x40000000 from memory into f12
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f8, 0(x2) # load 0xff800000 from memory into f8
fminm.s f22, f12, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fc00000)
li x7, 0x1922f697 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f19, 0(x2) # load 0x7fc00000 from memory into f19
fminm.s f7, f23, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fffffff)
li x27, 0x3c8691a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f25, 0(x2) # load 0x40000000 from memory into f25
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f26, 0(x2) # load 0x7fffffff from memory into f26
fminm.s f27, f25, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f800001)
li x26, 0x38015ee5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f31, 0(x2) # load 0x40000000 from memory into f31
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f9, 0(x2) # load 0x7f800001 from memory into f9
fminm.s f26, f31, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fbfffff)
li x2, 0x5a0f9c16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f31, 0(x2) # load 0x40000000 from memory into f31
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
fminm.s f2, f31, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7ef8654f)
li x17, 0xf798fc7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f7, 0(x2) # load 0x40000000 from memory into f7
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f1, 0(x2) # load 0x7ef8654f from memory into f1
fminm.s f17, f7, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x813d9ab0)
li x26, 0x3fe2ba89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f4, 0(x2) # load 0x40000000 from memory into f4
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
fminm.s f26, f4, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x0)
li x16, 0x557da72c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f22, 0(x2) # load 0x00000000 from memory into f22
fminm.s f16, f29, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80000000)
li x8, 0xf15c6359 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f18, 0(x2) # load 0xc0000000 from memory into f18
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f21, 0(x2) # load 0x80000000 from memory into f21
fminm.s f8, f18, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x3f800000)
li x20, 0x60995629 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f12, 0(x2) # load 0xc0000000 from memory into f12
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f7, 0(x2) # load 0x3f800000 from memory into f7
fminm.s f20, f12, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xbf800000)
li x26, 0xe3938a57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f24, 0(x2) # load 0xc0000000 from memory into f24
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
fminm.s f26, f24, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x3fc00000)
li x16, 0x42819187 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f26, 0(x2) # load 0xc0000000 from memory into f26
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f4, 0(x2) # load 0x3fc00000 from memory into f4
fminm.s f16, f26, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xbfc00000)
li x8, 0x45129a23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f5, 0(x2) # load 0xc0000000 from memory into f5
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
fminm.s f8, f5, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x40000000)
li x9, 0x73551221 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f19, 0(x2) # load 0xc0000000 from memory into f19
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f1, 0(x2) # load 0x40000000 from memory into f1
fminm.s f9, f19, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xc0000000)
li x11, 0x6219e311 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f25, 0(x2) # load 0xc0000000 from memory into f25
fminm.s f11, f29, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x800000)
li x1, 0x3425caf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f26, 0(x2) # load 0xc0000000 from memory into f26
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f30, 0(x2) # load 0x00800000 from memory into f30
fminm.s f1, f26, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80800000)
li x7, 0x406b96f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f30, 0(x2) # load 0xc0000000 from memory into f30
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f6, 0(x2) # load 0x80800000 from memory into f6
fminm.s f7, f30, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f7fffff)
li x28, 0x08b39bb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f18, 0(x2) # load 0x7f7fffff from memory into f18
fminm.s f28, f14, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xff7fffff)
li x14, 0xed44c0ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f12, 0(x2) # load 0xc0000000 from memory into f12
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f15, 0(x2) # load 0xff7fffff from memory into f15
fminm.s f14, f12, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fffff)
li x24, 0xcf8e0c73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f7, 0(x2) # load 0xc0000000 from memory into f7
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
fminm.s f24, f7, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x807fffff)
li x26, 0x3dde7ad2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f13, 0(x2) # load 0xc0000000 from memory into f13
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f9, 0(x2) # load 0x807fffff from memory into f9
fminm.s f26, f13, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x400000)
li x20, 0x0d76cbff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f18, 0(x2) # load 0xc0000000 from memory into f18
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f24, 0(x2) # load 0x00400000 from memory into f24
fminm.s f20, f18, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80400000)
li x29, 0xb343decb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f5, 0(x2) # load 0xc0000000 from memory into f5
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f11, 0(x2) # load 0x80400000 from memory into f11
fminm.s f29, f5, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x1)
li x14, 0x2d5972d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f26, 0(x2) # load 0xc0000000 from memory into f26
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f25, 0(x2) # load 0x00000001 from memory into f25
fminm.s f14, f26, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80000001)
li x26, 0xed75ac9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
fminm.s f26, f21, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f800000)
li x16, 0x88e69da7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f12, 0(x2) # load 0x7f800000 from memory into f12
fminm.s f16, f31, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xff800000)
li x15, 0x2ac92eee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f5, 0(x2) # load 0xff800000 from memory into f5
fminm.s f15, f21, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fc00000)
li x31, 0x0d1897d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f9, 0(x2) # load 0xc0000000 from memory into f9
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f27, 0(x2) # load 0x7fc00000 from memory into f27
fminm.s f31, f9, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fffffff)
li x19, 0x2b476e35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f21, 0(x2) # load 0x7fffffff from memory into f21
fminm.s f19, f31, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f800001)
li x21, 0xfef0792d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f23, 0(x2) # load 0xc0000000 from memory into f23
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f3, 0(x2) # load 0x7f800001 from memory into f3
fminm.s f21, f23, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fbfffff)
li x19, 0xa27981a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f22, 0(x2) # load 0xc0000000 from memory into f22
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f26, 0(x2) # load 0x7fbfffff from memory into f26
fminm.s f19, f22, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7ef8654f)
li x24, 0x3d58b747 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f16, 0(x2) # load 0xc0000000 from memory into f16
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f6, 0(x2) # load 0x7ef8654f from memory into f6
fminm.s f24, f16, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x813d9ab0)
li x22, 0x71963984 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f6, 0(x2) # load 0xc0000000 from memory into f6
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f8, 0(x2) # load 0x813d9ab0 from memory into f8
fminm.s f22, f6, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x0)
li x19, 0xd3d8c20f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f15, 0(x2) # load 0x00800000 from memory into f15
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f24, 0(x2) # load 0x00000000 from memory into f24
fminm.s f19, f15, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80000000)
li x23, 0xeb256a39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f9, 0(x2) # load 0x00800000 from memory into f9
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f24, 0(x2) # load 0x80000000 from memory into f24
fminm.s f23, f9, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x3f800000)
li x26, 0x892352c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f4, 0(x2) # load 0x00800000 from memory into f4
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f25, 0(x2) # load 0x3f800000 from memory into f25
fminm.s f26, f4, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xbf800000)
li x5, 0x7eabb9f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f3, 0(x2) # load 0x00800000 from memory into f3
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f2, 0(x2) # load 0xbf800000 from memory into f2
fminm.s f5, f3, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x3fc00000)
li x23, 0x4c23e1a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f2, 0(x2) # load 0x00800000 from memory into f2
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f20, 0(x2) # load 0x3fc00000 from memory into f20
fminm.s f23, f2, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xbfc00000)
li x6, 0x8a663d2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f13, 0(x2) # load 0x00800000 from memory into f13
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f21, 0(x2) # load 0xbfc00000 from memory into f21
fminm.s f6, f13, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x40000000)
li x14, 0x9d0f558b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f4, 0(x2) # load 0x00800000 from memory into f4
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f17, 0(x2) # load 0x40000000 from memory into f17
fminm.s f14, f4, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xc0000000)
li x7, 0x11511b10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f10, 0(x2) # load 0xc0000000 from memory into f10
fminm.s f7, f27, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x800000)
li x11, 0xf614daac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f20, 0(x2) # load 0x00800000 from memory into f20
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f28, 0(x2) # load 0x00800000 from memory into f28
fminm.s f11, f20, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80800000)
li x5, 0x995cc610 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f25, 0(x2) # load 0x00800000 from memory into f25
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
fminm.s f5, f25, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f7fffff)
li x8, 0xf6c8638b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f16, 0(x2) # load 0x00800000 from memory into f16
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
fminm.s f8, f16, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xff7fffff)
li x20, 0x34ff8fb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f1, 0(x2) # load 0x00800000 from memory into f1
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f5, 0(x2) # load 0xff7fffff from memory into f5
fminm.s f20, f1, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fffff)
li x9, 0x057a743e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f4, 0(x2) # load 0x007fffff from memory into f4
fminm.s f9, f22, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x807fffff)
li x29, 0x6866c1b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f20, 0(x2) # load 0x807fffff from memory into f20
fminm.s f29, f11, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x400000)
li x31, 0x68c82482 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f13, 0(x2) # load 0x00400000 from memory into f13
fminm.s f31, f7, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80400000)
li x11, 0x73cc98f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f30, 0(x2) # load 0x00800000 from memory into f30
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
fminm.s f11, f30, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x1)
li x16, 0x8f50d159 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f4, 0(x2) # load 0x00000001 from memory into f4
fminm.s f16, f23, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80000001)
li x4, 0x561de198 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f6, 0(x2) # load 0x00800000 from memory into f6
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
fminm.s f4, f6, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f800000)
li x23, 0x854dd426 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f21, 0(x2) # load 0x7f800000 from memory into f21
fminm.s f23, f11, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xff800000)
li x19, 0xa4fb9b33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f26, 0(x2) # load 0xff800000 from memory into f26
fminm.s f19, f22, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fc00000)
li x23, 0xf1ef4e95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f31, 0(x2) # load 0x00800000 from memory into f31
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
fminm.s f23, f31, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fffffff)
li x5, 0xe098f978 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f17, 0(x2) # load 0x00800000 from memory into f17
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f4, 0(x2) # load 0x7fffffff from memory into f4
fminm.s f5, f17, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f800001)
li x8, 0x51ad637f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f28, 0(x2) # load 0x7f800001 from memory into f28
fminm.s f8, f14, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fbfffff)
li x24, 0xf3febffc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f26, 0(x2) # load 0x7fbfffff from memory into f26
fminm.s f24, f27, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7ef8654f)
li x23, 0xf1dc4b0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f26, 0(x2) # load 0x00800000 from memory into f26
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f10, 0(x2) # load 0x7ef8654f from memory into f10
fminm.s f23, f26, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x813d9ab0)
li x4, 0xd96a3631 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f30, 0(x2) # load 0x00800000 from memory into f30
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f31, 0(x2) # load 0x813d9ab0 from memory into f31
fminm.s f4, f30, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x0)
li x17, 0x4eeba21d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f6, 0(x2) # load 0x00000000 from memory into f6
fminm.s f17, f28, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80000000)
li x26, 0x34e59a20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f1, 0(x2) # load 0x80800000 from memory into f1
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f8, 0(x2) # load 0x80000000 from memory into f8
fminm.s f26, f1, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x3f800000)
li x8, 0x6abf69a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f31, 0(x2) # load 0x80800000 from memory into f31
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f13, 0(x2) # load 0x3f800000 from memory into f13
fminm.s f8, f31, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xbf800000)
li x1, 0xbe5b9261 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f28, 0(x2) # load 0xbf800000 from memory into f28
fminm.s f1, f10, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x3fc00000)
li x19, 0xec995e5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f17, 0(x2) # load 0x80800000 from memory into f17
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f27, 0(x2) # load 0x3fc00000 from memory into f27
fminm.s f19, f17, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xbfc00000)
li x26, 0xfba97768 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
fminm.s f26, f10, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x40000000)
li x7, 0x8124f02f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f1, 0(x2) # load 0x80800000 from memory into f1
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
fminm.s f7, f1, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xc0000000)
li x28, 0x7dfbf75a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
fminm.s f28, f20, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x800000)
li x1, 0xda753eac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f2, 0(x2) # load 0x80800000 from memory into f2
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f9, 0(x2) # load 0x00800000 from memory into f9
fminm.s f1, f2, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80800000)
li x20, 0xdbcda764 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f26, 0(x2) # load 0x80800000 from memory into f26
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f13, 0(x2) # load 0x80800000 from memory into f13
fminm.s f20, f26, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f7fffff)
li x8, 0xea3a3351 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f21, 0(x2) # load 0x80800000 from memory into f21
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f17, 0(x2) # load 0x7f7fffff from memory into f17
fminm.s f8, f21, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xff7fffff)
li x15, 0xf8d817a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f7, 0(x2) # load 0x80800000 from memory into f7
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f9, 0(x2) # load 0xff7fffff from memory into f9
fminm.s f15, f7, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fffff)
li x3, 0xb0384d44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f1, 0(x2) # load 0x007fffff from memory into f1
fminm.s f3, f28, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x807fffff)
li x25, 0x94c0e7f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f30, 0(x2) # load 0x80800000 from memory into f30
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f21, 0(x2) # load 0x807fffff from memory into f21
fminm.s f25, f30, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x400000)
li x15, 0xb81969cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f1, 0(x2) # load 0x80800000 from memory into f1
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
fminm.s f15, f1, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80400000)
li x16, 0xf6b64fa9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f27, 0(x2) # load 0x80400000 from memory into f27
fminm.s f16, f10, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x1)
li x7, 0xe1d50ec7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f13, 0(x2) # load 0x80800000 from memory into f13
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f17, 0(x2) # load 0x00000001 from memory into f17
fminm.s f7, f13, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80000001)
li x18, 0x114eda15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f3, 0(x2) # load 0x80800000 from memory into f3
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
fminm.s f18, f3, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f800000)
li x1, 0x459a27f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f9, 0(x2) # load 0x80800000 from memory into f9
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f4, 0(x2) # load 0x7f800000 from memory into f4
fminm.s f1, f9, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xff800000)
li x8, 0xcd1c7618 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f3, 0(x2) # load 0x80800000 from memory into f3
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f27, 0(x2) # load 0xff800000 from memory into f27
fminm.s f8, f3, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fc00000)
li x23, 0x76491d73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f16, 0(x2) # load 0x80800000 from memory into f16
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f3, 0(x2) # load 0x7fc00000 from memory into f3
fminm.s f23, f16, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fffffff)
li x15, 0x4a022417 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f1, 0(x2) # load 0x80800000 from memory into f1
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f31, 0(x2) # load 0x7fffffff from memory into f31
fminm.s f15, f1, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f800001)
li x17, 0xe22593d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f22, 0(x2) # load 0x7f800001 from memory into f22
fminm.s f17, f18, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fbfffff)
li x22, 0x885b9661 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
fminm.s f22, f10, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7ef8654f)
li x21, 0xc3b4a019 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f9, 0(x2) # load 0x80800000 from memory into f9
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f24, 0(x2) # load 0x7ef8654f from memory into f24
fminm.s f21, f9, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x813d9ab0)
li x19, 0xa29bab60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f31, 0(x2) # load 0x80800000 from memory into f31
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f10, 0(x2) # load 0x813d9ab0 from memory into f10
fminm.s f19, f31, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x0)
li x29, 0x103491c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f6, 0(x2) # load 0x00000000 from memory into f6
fminm.s f29, f15, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80000000)
li x1, 0x37c804c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f14, 0(x2) # load 0x7f7fffff from memory into f14
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f20, 0(x2) # load 0x80000000 from memory into f20
fminm.s f1, f14, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x3f800000)
li x29, 0xe58d0a45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f12, 0(x2) # load 0x7f7fffff from memory into f12
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f4, 0(x2) # load 0x3f800000 from memory into f4
fminm.s f29, f12, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xbf800000)
li x3, 0x782b8fab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f10, 0(x2) # load 0x7f7fffff from memory into f10
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f8, 0(x2) # load 0xbf800000 from memory into f8
fminm.s f3, f10, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x3fc00000)
li x11, 0x92a120f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f21, 0(x2) # load 0x7f7fffff from memory into f21
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f26, 0(x2) # load 0x3fc00000 from memory into f26
fminm.s f11, f21, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xbfc00000)
li x24, 0x5547f9cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f22, 0(x2) # load 0x7f7fffff from memory into f22
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f8, 0(x2) # load 0xbfc00000 from memory into f8
fminm.s f24, f22, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x40000000)
li x28, 0x56ed9cf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f26, 0(x2) # load 0x7f7fffff from memory into f26
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
fminm.s f28, f26, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xc0000000)
li x11, 0xd31b720c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f17, 0(x2) # load 0x7f7fffff from memory into f17
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f19, 0(x2) # load 0xc0000000 from memory into f19
fminm.s f11, f17, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x800000)
li x23, 0x5d309b1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f12, 0(x2) # load 0x7f7fffff from memory into f12
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f29, 0(x2) # load 0x00800000 from memory into f29
fminm.s f23, f12, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80800000)
li x28, 0x4f35e415 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f19, 0(x2) # load 0x7f7fffff from memory into f19
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f21, 0(x2) # load 0x80800000 from memory into f21
fminm.s f28, f19, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f7fffff)
li x31, 0xb8e8dc81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f9, 0(x2) # load 0x7f7fffff from memory into f9
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f14, 0(x2) # load 0x7f7fffff from memory into f14
fminm.s f31, f9, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xff7fffff)
li x20, 0x00d32fab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f4, 0(x2) # load 0x7f7fffff from memory into f4
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
fminm.s f20, f4, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fffff)
li x27, 0x6beea7da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f18, 0(x2) # load 0x007fffff from memory into f18
fminm.s f27, f3, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x807fffff)
li x6, 0x0c40eb69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f5, 0(x2) # load 0x7f7fffff from memory into f5
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f18, 0(x2) # load 0x807fffff from memory into f18
fminm.s f6, f5, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x400000)
li x14, 0x44dc7dc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f13, 0(x2) # load 0x7f7fffff from memory into f13
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f18, 0(x2) # load 0x00400000 from memory into f18
fminm.s f14, f13, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80400000)
li x23, 0xeb873130 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f25, 0(x2) # load 0x7f7fffff from memory into f25
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f22, 0(x2) # load 0x80400000 from memory into f22
fminm.s f23, f25, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x1)
li x9, 0xbe92cf90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f17, 0(x2) # load 0x7f7fffff from memory into f17
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f10, 0(x2) # load 0x00000001 from memory into f10
fminm.s f9, f17, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80000001)
li x14, 0x7b0780cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f21, 0(x2) # load 0x7f7fffff from memory into f21
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f11, 0(x2) # load 0x80000001 from memory into f11
fminm.s f14, f21, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f800000)
li x21, 0x414f18a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f8, 0(x2) # load 0x7f7fffff from memory into f8
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f30, 0(x2) # load 0x7f800000 from memory into f30
fminm.s f21, f8, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xff800000)
li x12, 0xe16a6fcf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f13, 0(x2) # load 0x7f7fffff from memory into f13
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f24, 0(x2) # load 0xff800000 from memory into f24
fminm.s f12, f13, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fc00000)
li x11, 0x6aa26baa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f20, 0(x2) # load 0x7f7fffff from memory into f20
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f23, 0(x2) # load 0x7fc00000 from memory into f23
fminm.s f11, f20, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fffffff)
li x14, 0xf6fb09b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f2, 0(x2) # load 0x7f7fffff from memory into f2
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
fminm.s f14, f2, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f800001)
li x26, 0x9fe679e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
fminm.s f26, f3, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fbfffff)
li x7, 0xe8b7b697 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f4, 0(x2) # load 0x7f7fffff from memory into f4
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f5, 0(x2) # load 0x7fbfffff from memory into f5
fminm.s f7, f4, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7ef8654f)
li x16, 0x95d33986 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f7, 0(x2) # load 0x7f7fffff from memory into f7
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f31, 0(x2) # load 0x7ef8654f from memory into f31
fminm.s f16, f7, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x813d9ab0)
li x13, 0xef203184 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f22, 0(x2) # load 0x7f7fffff from memory into f22
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f7, 0(x2) # load 0x813d9ab0 from memory into f7
fminm.s f13, f22, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x0)
li x5, 0xa85a4e09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f22, 0(x2) # load 0x00000000 from memory into f22
fminm.s f5, f11, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80000000)
li x13, 0x9d3ec6a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f9, 0(x2) # load 0x80000000 from memory into f9
fminm.s f13, f31, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x3f800000)
li x12, 0x3646e670 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f17, 0(x2) # load 0xff7fffff from memory into f17
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f28, 0(x2) # load 0x3f800000 from memory into f28
fminm.s f12, f17, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xbf800000)
li x19, 0x9e45d241 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f18, 0(x2) # load 0xff7fffff from memory into f18
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f23, 0(x2) # load 0xbf800000 from memory into f23
fminm.s f19, f18, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x3fc00000)
li x5, 0xff35b144 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f25, 0(x2) # load 0xff7fffff from memory into f25
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f28, 0(x2) # load 0x3fc00000 from memory into f28
fminm.s f5, f25, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xbfc00000)
li x21, 0x50eb10e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f10, 0(x2) # load 0xbfc00000 from memory into f10
fminm.s f21, f12, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x40000000)
li x13, 0x106fb540 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f16, 0(x2) # load 0xff7fffff from memory into f16
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f26, 0(x2) # load 0x40000000 from memory into f26
fminm.s f13, f16, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xc0000000)
li x4, 0x24ffbc29 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f28, 0(x2) # load 0xff7fffff from memory into f28
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f2, 0(x2) # load 0xc0000000 from memory into f2
fminm.s f4, f28, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x800000)
li x23, 0x8aedec79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f14, 0(x2) # load 0xff7fffff from memory into f14
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f1, 0(x2) # load 0x00800000 from memory into f1
fminm.s f23, f14, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80800000)
li x3, 0x9c1fee6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f14, 0(x2) # load 0xff7fffff from memory into f14
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f7, 0(x2) # load 0x80800000 from memory into f7
fminm.s f3, f14, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f7fffff)
li x8, 0xa6b062fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f1, 0(x2) # load 0xff7fffff from memory into f1
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f10, 0(x2) # load 0x7f7fffff from memory into f10
fminm.s f8, f1, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xff7fffff)
li x21, 0x32b90c9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f1, 0(x2) # load 0xff7fffff from memory into f1
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f14, 0(x2) # load 0xff7fffff from memory into f14
fminm.s f21, f1, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fffff)
li x17, 0x0e02818e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f14, 0(x2) # load 0x007fffff from memory into f14
fminm.s f17, f12, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x807fffff)
li x12, 0xbfc15611 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f8, 0(x2) # load 0xff7fffff from memory into f8
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
fminm.s f12, f8, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x400000)
li x5, 0xb9ce0d04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f22, 0(x2) # load 0xff7fffff from memory into f22
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f27, 0(x2) # load 0x00400000 from memory into f27
fminm.s f5, f22, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80400000)
li x2, 0x3b933b3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f23, 0(x2) # load 0xff7fffff from memory into f23
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f26, 0(x2) # load 0x80400000 from memory into f26
fminm.s f2, f23, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x1)
li x18, 0x3455a4b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f28, 0(x2) # load 0xff7fffff from memory into f28
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
fminm.s f18, f28, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80000001)
li x27, 0x4841a62e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f6, 0(x2) # load 0xff7fffff from memory into f6
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
fminm.s f27, f6, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f800000)
li x17, 0x1a094b5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f15, 0(x2) # load 0xff7fffff from memory into f15
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f21, 0(x2) # load 0x7f800000 from memory into f21
fminm.s f17, f15, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xff800000)
li x31, 0xb2bd3efe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f29, 0(x2) # load 0xff7fffff from memory into f29
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f4, 0(x2) # load 0xff800000 from memory into f4
fminm.s f31, f29, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fc00000)
li x5, 0x6129a6c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f15, 0(x2) # load 0xff7fffff from memory into f15
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f3, 0(x2) # load 0x7fc00000 from memory into f3
fminm.s f5, f15, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fffffff)
li x17, 0x72bcf072 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f14, 0(x2) # load 0x7fffffff from memory into f14
fminm.s f17, f12, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f800001)
li x29, 0x647af8f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f19, 0(x2) # load 0xff7fffff from memory into f19
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
fminm.s f29, f19, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fbfffff)
li x25, 0x65fc3ee5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f22, 0(x2) # load 0xff7fffff from memory into f22
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f27, 0(x2) # load 0x7fbfffff from memory into f27
fminm.s f25, f22, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7ef8654f)
li x3, 0xf224bc84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f6, 0(x2) # load 0xff7fffff from memory into f6
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f24, 0(x2) # load 0x7ef8654f from memory into f24
fminm.s f3, f6, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x813d9ab0)
li x13, 0x5bb86888 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f23, 0(x2) # load 0x813d9ab0 from memory into f23
fminm.s f13, f31, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x0)
li x30, 0x5a0d8d98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f25, 0(x2) # load 0x007fffff from memory into f25
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f20, 0(x2) # load 0x00000000 from memory into f20
fminm.s f30, f25, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80000000)
li x15, 0xb3db9a0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f26, 0(x2) # load 0x007fffff from memory into f26
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f8, 0(x2) # load 0x80000000 from memory into f8
fminm.s f15, f26, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x3f800000)
li x27, 0x119d9d2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f15, 0(x2) # load 0x007fffff from memory into f15
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f29, 0(x2) # load 0x3f800000 from memory into f29
fminm.s f27, f15, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xbf800000)
li x4, 0xf89a656e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f5, 0(x2) # load 0x007fffff from memory into f5
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f24, 0(x2) # load 0xbf800000 from memory into f24
fminm.s f4, f5, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x3fc00000)
li x13, 0xf2bbb2cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f9, 0(x2) # load 0x007fffff from memory into f9
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
fminm.s f13, f9, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xbfc00000)
li x9, 0x013cc41d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f16, 0(x2) # load 0x007fffff from memory into f16
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
fminm.s f9, f16, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x40000000)
li x25, 0x4eac9c19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f15, 0(x2) # load 0x007fffff from memory into f15
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f14, 0(x2) # load 0x40000000 from memory into f14
fminm.s f25, f15, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xc0000000)
li x26, 0xb6c03265 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f11, 0(x2) # load 0x007fffff from memory into f11
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f30, 0(x2) # load 0xc0000000 from memory into f30
fminm.s f26, f11, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x800000)
li x24, 0x8415a6ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f30, 0(x2) # load 0x007fffff from memory into f30
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f15, 0(x2) # load 0x00800000 from memory into f15
fminm.s f24, f30, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80800000)
li x25, 0xef75478c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f29, 0(x2) # load 0x007fffff from memory into f29
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
fminm.s f25, f29, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f7fffff)
li x25, 0x86e48c28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f11, 0(x2) # load 0x007fffff from memory into f11
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f18, 0(x2) # load 0x7f7fffff from memory into f18
fminm.s f25, f11, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xff7fffff)
li x17, 0x88281f7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f4, 0(x2) # load 0xff7fffff from memory into f4
fminm.s f17, f10, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fffff)
li x2, 0x355b83c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f24, 0(x2) # load 0x007fffff from memory into f24
fminm.s f2, f10, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x807fffff)
li x31, 0x171a5f6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f4, 0(x2) # load 0x007fffff from memory into f4
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f27, 0(x2) # load 0x807fffff from memory into f27
fminm.s f31, f4, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x400000)
li x5, 0x00c85279 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f28, 0(x2) # load 0x007fffff from memory into f28
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f24, 0(x2) # load 0x00400000 from memory into f24
fminm.s f5, f28, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80400000)
li x3, 0x1ccf675e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f14, 0(x2) # load 0x007fffff from memory into f14
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f5, 0(x2) # load 0x80400000 from memory into f5
fminm.s f3, f14, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x1)
li x6, 0xe04f4093 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f20, 0(x2) # load 0x007fffff from memory into f20
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f18, 0(x2) # load 0x00000001 from memory into f18
fminm.s f6, f20, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80000001)
li x14, 0x6ee1861c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f25, 0(x2) # load 0x007fffff from memory into f25
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f9, 0(x2) # load 0x80000001 from memory into f9
fminm.s f14, f25, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f800000)
li x7, 0xb0b9bcb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f4, 0(x2) # load 0x007fffff from memory into f4
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f19, 0(x2) # load 0x7f800000 from memory into f19
fminm.s f7, f4, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xff800000)
li x27, 0xf0f22e44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f5, 0(x2) # load 0xff800000 from memory into f5
fminm.s f27, f10, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fc00000)
li x16, 0xf013a71a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f15, 0(x2) # load 0x007fffff from memory into f15
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f26, 0(x2) # load 0x7fc00000 from memory into f26
fminm.s f16, f15, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fffffff)
li x4, 0x999a05be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f23, 0(x2) # load 0x007fffff from memory into f23
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
fminm.s f4, f23, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f800001)
li x31, 0x529277da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f4, 0(x2) # load 0x007fffff from memory into f4
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
fminm.s f31, f4, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fbfffff)
li x15, 0xaba3bb08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f31, 0(x2) # load 0x007fffff from memory into f31
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f18, 0(x2) # load 0x7fbfffff from memory into f18
fminm.s f15, f31, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7ef8654f)
li x20, 0xa835ad9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f27, 0(x2) # load 0x007fffff from memory into f27
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f10, 0(x2) # load 0x7ef8654f from memory into f10
fminm.s f20, f27, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x813d9ab0)
li x16, 0xf96c4366 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f25, 0(x2) # load 0x813d9ab0 from memory into f25
fminm.s f16, f12, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x0)
li x20, 0x6940d8c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f11, 0(x2) # load 0x807fffff from memory into f11
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
fminm.s f20, f11, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80000000)
li x15, 0x12a8150d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f27, 0(x2) # load 0x80000000 from memory into f27
fminm.s f15, f3, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x3f800000)
li x3, 0x6ee1ca1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f31, 0(x2) # load 0x807fffff from memory into f31
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f2, 0(x2) # load 0x3f800000 from memory into f2
fminm.s f3, f31, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xbf800000)
li x30, 0x798b5099 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f7, 0(x2) # load 0x807fffff from memory into f7
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f19, 0(x2) # load 0xbf800000 from memory into f19
fminm.s f30, f7, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x3fc00000)
li x22, 0xb44ee788 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f18, 0(x2) # load 0x807fffff from memory into f18
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f7, 0(x2) # load 0x3fc00000 from memory into f7
fminm.s f22, f18, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xbfc00000)
li x30, 0xf4c89722 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f12, 0(x2) # load 0x807fffff from memory into f12
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f19, 0(x2) # load 0xbfc00000 from memory into f19
fminm.s f30, f12, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x40000000)
li x12, 0x67e3c4fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f9, 0(x2) # load 0x807fffff from memory into f9
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f19, 0(x2) # load 0x40000000 from memory into f19
fminm.s f12, f9, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xc0000000)
li x26, 0x3e0d76b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f7, 0(x2) # load 0x807fffff from memory into f7
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f24, 0(x2) # load 0xc0000000 from memory into f24
fminm.s f26, f7, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x800000)
li x16, 0x282ec6a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f25, 0(x2) # load 0x807fffff from memory into f25
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f8, 0(x2) # load 0x00800000 from memory into f8
fminm.s f16, f25, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80800000)
li x28, 0x9eb1ade0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f25, 0(x2) # load 0x807fffff from memory into f25
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f6, 0(x2) # load 0x80800000 from memory into f6
fminm.s f28, f25, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f7fffff)
li x11, 0xb85bfa88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f7, 0(x2) # load 0x807fffff from memory into f7
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f17, 0(x2) # load 0x7f7fffff from memory into f17
fminm.s f11, f7, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xff7fffff)
li x1, 0xaf7a85ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f22, 0(x2) # load 0x807fffff from memory into f22
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f25, 0(x2) # load 0xff7fffff from memory into f25
fminm.s f1, f22, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fffff)
li x17, 0xd6625385 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f14, 0(x2) # load 0x807fffff from memory into f14
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f3, 0(x2) # load 0x007fffff from memory into f3
fminm.s f17, f14, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x807fffff)
li x31, 0x46ad147f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f19, 0(x2) # load 0x807fffff from memory into f19
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f5, 0(x2) # load 0x807fffff from memory into f5
fminm.s f31, f19, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x400000)
li x18, 0x09c81d72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f4, 0(x2) # load 0x807fffff from memory into f4
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f22, 0(x2) # load 0x00400000 from memory into f22
fminm.s f18, f4, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80400000)
li x27, 0xc299c0e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f9, 0(x2) # load 0x807fffff from memory into f9
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f19, 0(x2) # load 0x80400000 from memory into f19
fminm.s f27, f9, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x1)
li x17, 0xa207765d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f20, 0(x2) # load 0x00000001 from memory into f20
fminm.s f17, f23, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80000001)
li x23, 0xd3887e99 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f13, 0(x2) # load 0x807fffff from memory into f13
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f26, 0(x2) # load 0x80000001 from memory into f26
fminm.s f23, f13, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f800000)
li x30, 0x1296ec13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f14, 0(x2) # load 0x807fffff from memory into f14
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
fminm.s f30, f14, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xff800000)
li x23, 0xf26c67d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f11, 0(x2) # load 0xff800000 from memory into f11
fminm.s f23, f3, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fc00000)
li x18, 0x36728091 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f30, 0(x2) # load 0x807fffff from memory into f30
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f20, 0(x2) # load 0x7fc00000 from memory into f20
fminm.s f18, f30, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fffffff)
li x16, 0x2df929a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f4, 0(x2) # load 0x7fffffff from memory into f4
fminm.s f16, f2, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f800001)
li x16, 0x4f616c03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
fminm.s f16, f3, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fbfffff)
li x20, 0x6e594aaf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f11, 0(x2) # load 0x807fffff from memory into f11
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
fminm.s f20, f11, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7ef8654f)
li x11, 0x9f21f73a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f31, 0(x2) # load 0x807fffff from memory into f31
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f28, 0(x2) # load 0x7ef8654f from memory into f28
fminm.s f11, f31, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x813d9ab0)
li x4, 0xef6d5b10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f6, 0(x2) # load 0x807fffff from memory into f6
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f20, 0(x2) # load 0x813d9ab0 from memory into f20
fminm.s f4, f6, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x0)
li x5, 0x0191b27d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f22, 0(x2) # load 0x00400000 from memory into f22
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
fminm.s f5, f22, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80000000)
li x21, 0xcf34d4d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f22, 0(x2) # load 0x80000000 from memory into f22
fminm.s f21, f15, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x3f800000)
li x28, 0xfb1c425f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f25, 0(x2) # load 0x3f800000 from memory into f25
fminm.s f28, f15, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xbf800000)
li x13, 0x6e48b2ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
fminm.s f13, f12, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x3fc00000)
li x24, 0x51ddd614 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f16, 0(x2) # load 0x00400000 from memory into f16
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f18, 0(x2) # load 0x3fc00000 from memory into f18
fminm.s f24, f16, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xbfc00000)
li x21, 0xd38a2475 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f19, 0(x2) # load 0x00400000 from memory into f19
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
fminm.s f21, f19, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x40000000)
li x22, 0x755342d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f28, 0(x2) # load 0x00400000 from memory into f28
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
fminm.s f22, f28, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xc0000000)
li x9, 0x971bfe7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f2, 0(x2) # load 0x00400000 from memory into f2
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
fminm.s f9, f2, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x800000)
li x6, 0xbf31b59b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f11, 0(x2) # load 0x00400000 from memory into f11
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f18, 0(x2) # load 0x00800000 from memory into f18
fminm.s f6, f11, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80800000)
li x6, 0x5c6e3967 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f30, 0(x2) # load 0x00400000 from memory into f30
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f7, 0(x2) # load 0x80800000 from memory into f7
fminm.s f6, f30, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f7fffff)
li x21, 0x39ebc5d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f3, 0(x2) # load 0x00400000 from memory into f3
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f5, 0(x2) # load 0x7f7fffff from memory into f5
fminm.s f21, f3, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xff7fffff)
li x5, 0x97a0dcbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f20, 0(x2) # load 0x00400000 from memory into f20
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f26, 0(x2) # load 0xff7fffff from memory into f26
fminm.s f5, f20, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fffff)
li x4, 0x3fb4f526 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f25, 0(x2) # load 0x007fffff from memory into f25
fminm.s f4, f14, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x807fffff)
li x25, 0xb14c94f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f17, 0(x2) # load 0x807fffff from memory into f17
fminm.s f25, f15, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x400000)
li x2, 0x3e4ef8f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f13, 0(x2) # load 0x00400000 from memory into f13
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f22, 0(x2) # load 0x00400000 from memory into f22
fminm.s f2, f13, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80400000)
li x3, 0x333ef77d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f18, 0(x2) # load 0x80400000 from memory into f18
fminm.s f3, f21, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x1)
li x14, 0x9a8e5edc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f13, 0(x2) # load 0x00400000 from memory into f13
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f12, 0(x2) # load 0x00000001 from memory into f12
fminm.s f14, f13, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80000001)
li x14, 0x1a7a73ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f27, 0(x2) # load 0x00400000 from memory into f27
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f15, 0(x2) # load 0x80000001 from memory into f15
fminm.s f14, f27, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f800000)
li x4, 0xd5be3de4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f11, 0(x2) # load 0x00400000 from memory into f11
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
fminm.s f4, f11, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xff800000)
li x9, 0x820aa262 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f10, 0(x2) # load 0x00400000 from memory into f10
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f2, 0(x2) # load 0xff800000 from memory into f2
fminm.s f9, f10, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fc00000)
li x5, 0xd0b1ec61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f27, 0(x2) # load 0x00400000 from memory into f27
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f16, 0(x2) # load 0x7fc00000 from memory into f16
fminm.s f5, f27, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fffffff)
li x19, 0xf52b1d2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f13, 0(x2) # load 0x7fffffff from memory into f13
fminm.s f19, f26, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f800001)
li x8, 0x78663e58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f23, 0(x2) # load 0x00400000 from memory into f23
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f17, 0(x2) # load 0x7f800001 from memory into f17
fminm.s f8, f23, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fbfffff)
li x19, 0x3419a6dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f6, 0(x2) # load 0x7fbfffff from memory into f6
fminm.s f19, f21, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7ef8654f)
li x4, 0x5c7dd1d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f16, 0(x2) # load 0x00400000 from memory into f16
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f12, 0(x2) # load 0x7ef8654f from memory into f12
fminm.s f4, f16, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x813d9ab0)
li x6, 0xe20cdac2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f5, 0(x2) # load 0x00400000 from memory into f5
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f9, 0(x2) # load 0x813d9ab0 from memory into f9
fminm.s f6, f5, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x0)
li x21, 0xe8d5aa79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f1, 0(x2) # load 0x80400000 from memory into f1
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f8, 0(x2) # load 0x00000000 from memory into f8
fminm.s f21, f1, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80000000)
li x2, 0xfb04cf7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f28, 0(x2) # load 0x80400000 from memory into f28
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f23, 0(x2) # load 0x80000000 from memory into f23
fminm.s f2, f28, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x3f800000)
li x18, 0xbf5f3e4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f9, 0(x2) # load 0x80400000 from memory into f9
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f19, 0(x2) # load 0x3f800000 from memory into f19
fminm.s f18, f9, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xbf800000)
li x8, 0x5bfaccb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f20, 0(x2) # load 0x80400000 from memory into f20
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f7, 0(x2) # load 0xbf800000 from memory into f7
fminm.s f8, f20, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x3fc00000)
li x21, 0x474b9f9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f11, 0(x2) # load 0x80400000 from memory into f11
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f3, 0(x2) # load 0x3fc00000 from memory into f3
fminm.s f21, f11, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xbfc00000)
li x23, 0x0877bcdb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f3, 0(x2) # load 0x80400000 from memory into f3
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f10, 0(x2) # load 0xbfc00000 from memory into f10
fminm.s f23, f3, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x40000000)
li x14, 0xa36383f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f20, 0(x2) # load 0x80400000 from memory into f20
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f3, 0(x2) # load 0x40000000 from memory into f3
fminm.s f14, f20, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xc0000000)
li x8, 0x0fe25f70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f31, 0(x2) # load 0x80400000 from memory into f31
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f2, 0(x2) # load 0xc0000000 from memory into f2
fminm.s f8, f31, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x800000)
li x12, 0x00c67b76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f22, 0(x2) # load 0x80400000 from memory into f22
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f18, 0(x2) # load 0x00800000 from memory into f18
fminm.s f12, f22, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80800000)
li x20, 0x9599a9f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f11, 0(x2) # load 0x80400000 from memory into f11
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f15, 0(x2) # load 0x80800000 from memory into f15
fminm.s f20, f11, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f7fffff)
li x1, 0x65cb6fff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f21, 0(x2) # load 0x80400000 from memory into f21
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f2, 0(x2) # load 0x7f7fffff from memory into f2
fminm.s f1, f21, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xff7fffff)
li x12, 0x184d1ca3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f24, 0(x2) # load 0x80400000 from memory into f24
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f26, 0(x2) # load 0xff7fffff from memory into f26
fminm.s f12, f24, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fffff)
li x25, 0x2e8b222e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f31, 0(x2) # load 0x80400000 from memory into f31
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f19, 0(x2) # load 0x007fffff from memory into f19
fminm.s f25, f31, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x807fffff)
li x23, 0x6b0dd13b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f31, 0(x2) # load 0x80400000 from memory into f31
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f10, 0(x2) # load 0x807fffff from memory into f10
fminm.s f23, f31, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x400000)
li x7, 0x2fac6d00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f30, 0(x2) # load 0x80400000 from memory into f30
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
fminm.s f7, f30, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80400000)
li x28, 0x46b2e0f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f26, 0(x2) # load 0x80400000 from memory into f26
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f23, 0(x2) # load 0x80400000 from memory into f23
fminm.s f28, f26, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x1)
li x1, 0xd2699191 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f9, 0(x2) # load 0x80400000 from memory into f9
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
fminm.s f1, f9, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80000001)
li x5, 0x1784f77a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f1, 0(x2) # load 0x80400000 from memory into f1
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
fminm.s f5, f1, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f800000)
li x25, 0x4d0f4630 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f10, 0(x2) # load 0x80400000 from memory into f10
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f24, 0(x2) # load 0x7f800000 from memory into f24
fminm.s f25, f10, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xff800000)
li x19, 0x4f19b20e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f10, 0(x2) # load 0x80400000 from memory into f10
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f23, 0(x2) # load 0xff800000 from memory into f23
fminm.s f19, f10, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fc00000)
li x20, 0xbfb49400 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f14, 0(x2) # load 0x80400000 from memory into f14
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f2, 0(x2) # load 0x7fc00000 from memory into f2
fminm.s f20, f14, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fffffff)
li x27, 0x7d0a9466 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f4, 0(x2) # load 0x80400000 from memory into f4
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f7, 0(x2) # load 0x7fffffff from memory into f7
fminm.s f27, f4, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f800001)
li x8, 0x0eeda1d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f17, 0(x2) # load 0x80400000 from memory into f17
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f31, 0(x2) # load 0x7f800001 from memory into f31
fminm.s f8, f17, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fbfffff)
li x26, 0xceb727a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f27, 0(x2) # load 0x80400000 from memory into f27
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f22, 0(x2) # load 0x7fbfffff from memory into f22
fminm.s f26, f27, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7ef8654f)
li x26, 0xa5065c9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f23, 0(x2) # load 0x80400000 from memory into f23
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
fminm.s f26, f23, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x813d9ab0)
li x6, 0x795a0b02 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f8, 0(x2) # load 0x80400000 from memory into f8
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f26, 0(x2) # load 0x813d9ab0 from memory into f26
fminm.s f6, f8, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
li x29, 0xe0ffa08e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f8, 0(x2) # load 0x00000001 from memory into f8
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
fminm.s f29, f8, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80000000)
li x19, 0x7c07c194 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f10, 0(x2) # load 0x00000001 from memory into f10
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f12, 0(x2) # load 0x80000000 from memory into f12
fminm.s f19, f10, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3f800000)
li x12, 0xfc59e7e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f8, 0(x2) # load 0x00000001 from memory into f8
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f22, 0(x2) # load 0x3f800000 from memory into f22
fminm.s f12, f8, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbf800000)
li x18, 0x1e6b7273 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f8, 0(x2) # load 0x00000001 from memory into f8
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f23, 0(x2) # load 0xbf800000 from memory into f23
fminm.s f18, f8, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3fc00000)
li x20, 0x50a473e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f27, 0(x2) # load 0x3fc00000 from memory into f27
fminm.s f20, f5, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbfc00000)
li x22, 0x5d70439c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f24, 0(x2) # load 0xbfc00000 from memory into f24
fminm.s f22, f2, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x40000000)
li x18, 0x86c5ec8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f7, 0(x2) # load 0x00000001 from memory into f7
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f12, 0(x2) # load 0x40000000 from memory into f12
fminm.s f18, f7, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc0000000)
li x7, 0x8b7fe393 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f22, 0(x2) # load 0xc0000000 from memory into f22
fminm.s f7, f19, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x800000)
li x18, 0xd3561bc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f28, 0(x2) # load 0x00800000 from memory into f28
fminm.s f18, f3, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80800000)
li x16, 0x5e28b795 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f1, 0(x2) # load 0x00000001 from memory into f1
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f27, 0(x2) # load 0x80800000 from memory into f27
fminm.s f16, f1, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f7fffff)
li x13, 0x0d6e134f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f1, 0(x2) # load 0x7f7fffff from memory into f1
fminm.s f13, f3, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xff7fffff)
li x20, 0xf3f61ff3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f28, 0(x2) # load 0x00000001 from memory into f28
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f2, 0(x2) # load 0xff7fffff from memory into f2
fminm.s f20, f28, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffff)
li x24, 0xb42366e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f20, 0(x2) # load 0x007fffff from memory into f20
fminm.s f24, f6, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x807fffff)
li x6, 0x46b1400a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f25, 0(x2) # load 0x807fffff from memory into f25
fminm.s f6, f5, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x400000)
li x17, 0xbd107ec7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f13, 0(x2) # load 0x00000001 from memory into f13
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f22, 0(x2) # load 0x00400000 from memory into f22
fminm.s f17, f13, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80400000)
li x4, 0x55ed16e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f13, 0(x2) # load 0x80400000 from memory into f13
fminm.s f4, f19, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
li x13, 0xe1a385d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f15, 0(x2) # load 0x00000001 from memory into f15
fminm.s f13, f19, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80000001)
li x28, 0x90d14fe5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f20, 0(x2) # load 0x00000001 from memory into f20
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f13, 0(x2) # load 0x80000001 from memory into f13
fminm.s f28, f20, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f800000)
li x31, 0xd82c8319 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f26, 0(x2) # load 0x00000001 from memory into f26
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f30, 0(x2) # load 0x7f800000 from memory into f30
fminm.s f31, f26, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xff800000)
li x9, 0x8f0b3b83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f21, 0(x2) # load 0xff800000 from memory into f21
fminm.s f9, f5, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fc00000)
li x12, 0xc1b91750 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f7, 0(x2) # load 0x00000001 from memory into f7
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f29, 0(x2) # load 0x7fc00000 from memory into f29
fminm.s f12, f7, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffffff)
li x1, 0xa9887b92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f28, 0(x2) # load 0x7fffffff from memory into f28
fminm.s f1, f2, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f800001)
li x25, 0x073e7b35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f30, 0(x2) # load 0x00000001 from memory into f30
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f31, 0(x2) # load 0x7f800001 from memory into f31
fminm.s f25, f30, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fbfffff)
li x6, 0x76046da6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f19, 0(x2) # load 0x7fbfffff from memory into f19
fminm.s f6, f5, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ef8654f)
li x16, 0xa008fca8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f23, 0(x2) # load 0x00000001 from memory into f23
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f3, 0(x2) # load 0x7ef8654f from memory into f3
fminm.s f16, f23, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x813d9ab0)
li x11, 0x11041c7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f30, 0(x2) # load 0x00000001 from memory into f30
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
fminm.s f11, f30, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x0)
li x13, 0xcd3addc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f26, 0(x2) # load 0x80000001 from memory into f26
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f18, 0(x2) # load 0x00000000 from memory into f18
fminm.s f13, f26, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80000000)
li x18, 0xf5054dd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f25, 0(x2) # load 0x80000001 from memory into f25
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f22, 0(x2) # load 0x80000000 from memory into f22
fminm.s f18, f25, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x3f800000)
li x1, 0xfbc134e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f21, 0(x2) # load 0x3f800000 from memory into f21
fminm.s f1, f10, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xbf800000)
li x13, 0x608dd55e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f19, 0(x2) # load 0xbf800000 from memory into f19
fminm.s f13, f27, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x3fc00000)
li x31, 0xd324a791 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f10, 0(x2) # load 0x3fc00000 from memory into f10
fminm.s f31, f7, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xbfc00000)
li x15, 0xc93aebea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f16, 0(x2) # load 0x80000001 from memory into f16
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f12, 0(x2) # load 0xbfc00000 from memory into f12
fminm.s f15, f16, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x40000000)
li x1, 0x99ca0aea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f16, 0(x2) # load 0x80000001 from memory into f16
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f25, 0(x2) # load 0x40000000 from memory into f25
fminm.s f1, f16, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xc0000000)
li x17, 0x0e0fc40b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f2, 0(x2) # load 0xc0000000 from memory into f2
fminm.s f17, f18, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x800000)
li x10, 0x7399644b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f12, 0(x2) # load 0x80000001 from memory into f12
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
fminm.s f10, f12, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80800000)
li x19, 0x23484c96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f6, 0(x2) # load 0x80000001 from memory into f6
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f3, 0(x2) # load 0x80800000 from memory into f3
fminm.s f19, f6, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f7fffff)
li x28, 0xfcece279 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f29, 0(x2) # load 0x80000001 from memory into f29
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f13, 0(x2) # load 0x7f7fffff from memory into f13
fminm.s f28, f29, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xff7fffff)
li x6, 0x996b61bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f8, 0(x2) # load 0x80000001 from memory into f8
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f14, 0(x2) # load 0xff7fffff from memory into f14
fminm.s f6, f8, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fffff)
li x22, 0xeddba7c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f30, 0(x2) # load 0x80000001 from memory into f30
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f15, 0(x2) # load 0x007fffff from memory into f15
fminm.s f22, f30, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x807fffff)
li x30, 0x312eadd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f8, 0(x2) # load 0x80000001 from memory into f8
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f29, 0(x2) # load 0x807fffff from memory into f29
fminm.s f30, f8, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x400000)
li x27, 0xe6d609a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f24, 0(x2) # load 0x80000001 from memory into f24
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f22, 0(x2) # load 0x00400000 from memory into f22
fminm.s f27, f24, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80400000)
li x4, 0x4e3347db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f23, 0(x2) # load 0x80000001 from memory into f23
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f15, 0(x2) # load 0x80400000 from memory into f15
fminm.s f4, f23, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x1)
li x20, 0x1fb8d78d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f25, 0(x2) # load 0x80000001 from memory into f25
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f21, 0(x2) # load 0x00000001 from memory into f21
fminm.s f20, f25, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80000001)
li x16, 0x65398d5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f23, 0(x2) # load 0x80000001 from memory into f23
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
fminm.s f16, f23, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f800000)
li x20, 0x47480535 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f11, 0(x2) # load 0x80000001 from memory into f11
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f10, 0(x2) # load 0x7f800000 from memory into f10
fminm.s f20, f11, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xff800000)
li x20, 0x8d66cc4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f22, 0(x2) # load 0x80000001 from memory into f22
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f7, 0(x2) # load 0xff800000 from memory into f7
fminm.s f20, f22, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fc00000)
li x8, 0x54b38f48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f4, 0(x2) # load 0x80000001 from memory into f4
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f9, 0(x2) # load 0x7fc00000 from memory into f9
fminm.s f8, f4, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fffffff)
li x10, 0xce33d683 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f20, 0(x2) # load 0x80000001 from memory into f20
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f7, 0(x2) # load 0x7fffffff from memory into f7
fminm.s f10, f20, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f800001)
li x15, 0x6d6190f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f16, 0(x2) # load 0x80000001 from memory into f16
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f20, 0(x2) # load 0x7f800001 from memory into f20
fminm.s f15, f16, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fbfffff)
li x31, 0x236f05bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f1, 0(x2) # load 0x7fbfffff from memory into f1
fminm.s f31, f18, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7ef8654f)
li x5, 0x2cd68544 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f9, 0(x2) # load 0x80000001 from memory into f9
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
fminm.s f5, f9, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x813d9ab0)
li x22, 0x5828e248 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f19, 0(x2) # load 0x80000001 from memory into f19
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f9, 0(x2) # load 0x813d9ab0 from memory into f9
fminm.s f22, f19, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x0)
li x17, 0x6b1a2b88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f21, 0(x2) # load 0x7f800000 from memory into f21
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f18, 0(x2) # load 0x00000000 from memory into f18
fminm.s f17, f21, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80000000)
li x31, 0xba73cbb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f26, 0(x2) # load 0x80000000 from memory into f26
fminm.s f31, f7, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x3f800000)
li x4, 0x1985445c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f2, 0(x2) # load 0x7f800000 from memory into f2
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f5, 0(x2) # load 0x3f800000 from memory into f5
fminm.s f4, f2, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xbf800000)
li x7, 0xa4b96267 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f23, 0(x2) # load 0xbf800000 from memory into f23
fminm.s f7, f27, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x3fc00000)
li x10, 0x54dd9095 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f25, 0(x2) # load 0x7f800000 from memory into f25
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f17, 0(x2) # load 0x3fc00000 from memory into f17
fminm.s f10, f25, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xbfc00000)
li x10, 0x65d1c386 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f25, 0(x2) # load 0x7f800000 from memory into f25
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f14, 0(x2) # load 0xbfc00000 from memory into f14
fminm.s f10, f25, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x40000000)
li x9, 0x43f82d47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f22, 0(x2) # load 0x7f800000 from memory into f22
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f5, 0(x2) # load 0x40000000 from memory into f5
fminm.s f9, f22, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xc0000000)
li x5, 0xc9815b21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f14, 0(x2) # load 0x7f800000 from memory into f14
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f30, 0(x2) # load 0xc0000000 from memory into f30
fminm.s f5, f14, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x800000)
li x18, 0x2648a1a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f4, 0(x2) # load 0x7f800000 from memory into f4
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f31, 0(x2) # load 0x00800000 from memory into f31
fminm.s f18, f4, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80800000)
li x26, 0xa47d41d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f18, 0(x2) # load 0x7f800000 from memory into f18
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f7, 0(x2) # load 0x80800000 from memory into f7
fminm.s f26, f18, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f7fffff)
li x26, 0xb836e2b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f23, 0(x2) # load 0x7f800000 from memory into f23
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f17, 0(x2) # load 0x7f7fffff from memory into f17
fminm.s f26, f23, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xff7fffff)
li x14, 0x4cdf504b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f8, 0(x2) # load 0x7f800000 from memory into f8
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f4, 0(x2) # load 0xff7fffff from memory into f4
fminm.s f14, f8, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fffff)
li x15, 0x0cc846e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f19, 0(x2) # load 0x7f800000 from memory into f19
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
fminm.s f15, f19, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x807fffff)
li x2, 0xfdada079 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f30, 0(x2) # load 0x7f800000 from memory into f30
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f16, 0(x2) # load 0x807fffff from memory into f16
fminm.s f2, f30, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x400000)
li x28, 0x362e7b47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f10, 0(x2) # load 0x7f800000 from memory into f10
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
fminm.s f28, f10, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80400000)
li x27, 0x10cd09e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f13, 0(x2) # load 0x80400000 from memory into f13
fminm.s f27, f7, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x1)
li x25, 0xa2a2c451 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
fminm.s f25, f11, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80000001)
li x13, 0x52894767 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f26, 0(x2) # load 0x7f800000 from memory into f26
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f14, 0(x2) # load 0x80000001 from memory into f14
fminm.s f13, f26, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f800000)
li x1, 0x50860fd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f24, 0(x2) # load 0x7f800000 from memory into f24
fminm.s f1, f27, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xff800000)
li x10, 0xd1e221b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f5, 0(x2) # load 0x7f800000 from memory into f5
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f8, 0(x2) # load 0xff800000 from memory into f8
fminm.s f10, f5, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fc00000)
li x30, 0x8e7c508a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f29, 0(x2) # load 0x7fc00000 from memory into f29
fminm.s f30, f27, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fffffff)
li x17, 0x0317cf3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f26, 0(x2) # load 0x7f800000 from memory into f26
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f20, 0(x2) # load 0x7fffffff from memory into f20
fminm.s f17, f26, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f800001)
li x4, 0xab4430e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f16, 0(x2) # load 0x7f800000 from memory into f16
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f3, 0(x2) # load 0x7f800001 from memory into f3
fminm.s f4, f16, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fbfffff)
li x21, 0xee151273 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f9, 0(x2) # load 0x7f800000 from memory into f9
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f10, 0(x2) # load 0x7fbfffff from memory into f10
fminm.s f21, f9, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7ef8654f)
li x16, 0x04d1beb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f20, 0(x2) # load 0x7ef8654f from memory into f20
fminm.s f16, f11, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x813d9ab0)
li x1, 0x43636e6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f22, 0(x2) # load 0x7f800000 from memory into f22
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f14, 0(x2) # load 0x813d9ab0 from memory into f14
fminm.s f1, f22, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x0)
li x31, 0xa2617cb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f20, 0(x2) # load 0xff800000 from memory into f20
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f2, 0(x2) # load 0x00000000 from memory into f2
fminm.s f31, f20, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80000000)
li x8, 0x5bc35e7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f28, 0(x2) # load 0xff800000 from memory into f28
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f11, 0(x2) # load 0x80000000 from memory into f11
fminm.s f8, f28, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x3f800000)
li x11, 0x6edc8e21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f7, 0(x2) # load 0xff800000 from memory into f7
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f19, 0(x2) # load 0x3f800000 from memory into f19
fminm.s f11, f7, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xbf800000)
li x16, 0xb79f4648 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f5, 0(x2) # load 0xff800000 from memory into f5
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f13, 0(x2) # load 0xbf800000 from memory into f13
fminm.s f16, f5, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x3fc00000)
li x21, 0x627a57f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f3, 0(x2) # load 0xff800000 from memory into f3
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f24, 0(x2) # load 0x3fc00000 from memory into f24
fminm.s f21, f3, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xbfc00000)
li x25, 0xd402a4e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f17, 0(x2) # load 0xff800000 from memory into f17
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f13, 0(x2) # load 0xbfc00000 from memory into f13
fminm.s f25, f17, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x40000000)
li x20, 0x9a744608 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f24, 0(x2) # load 0xff800000 from memory into f24
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f22, 0(x2) # load 0x40000000 from memory into f22
fminm.s f20, f24, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xc0000000)
li x2, 0xd86ecf37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f26, 0(x2) # load 0xff800000 from memory into f26
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f28, 0(x2) # load 0xc0000000 from memory into f28
fminm.s f2, f26, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x800000)
li x27, 0xc8a78bb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f6, 0(x2) # load 0xff800000 from memory into f6
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f20, 0(x2) # load 0x00800000 from memory into f20
fminm.s f27, f6, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80800000)
li x23, 0x17c54a8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f8, 0(x2) # load 0xff800000 from memory into f8
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f19, 0(x2) # load 0x80800000 from memory into f19
fminm.s f23, f8, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f7fffff)
li x22, 0xaaef77e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f13, 0(x2) # load 0xff800000 from memory into f13
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f17, 0(x2) # load 0x7f7fffff from memory into f17
fminm.s f22, f13, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xff7fffff)
li x10, 0xe17625ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f15, 0(x2) # load 0xff800000 from memory into f15
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f18, 0(x2) # load 0xff7fffff from memory into f18
fminm.s f10, f15, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fffff)
li x9, 0x6bd1ff46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f22, 0(x2) # load 0xff800000 from memory into f22
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f28, 0(x2) # load 0x007fffff from memory into f28
fminm.s f9, f22, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x807fffff)
li x17, 0x639d40e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f27, 0(x2) # load 0xff800000 from memory into f27
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
fminm.s f17, f27, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x400000)
li x20, 0x71b25bde # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f6, 0(x2) # load 0xff800000 from memory into f6
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f24, 0(x2) # load 0x00400000 from memory into f24
fminm.s f20, f6, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80400000)
li x10, 0x35e255cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f12, 0(x2) # load 0xff800000 from memory into f12
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f4, 0(x2) # load 0x80400000 from memory into f4
fminm.s f10, f12, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x1)
li x31, 0x9e680419 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f12, 0(x2) # load 0x00000001 from memory into f12
fminm.s f31, f9, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80000001)
li x10, 0xe85c8732 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f17, 0(x2) # load 0x80000001 from memory into f17
fminm.s f10, f14, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f800000)
li x7, 0xe6ad18bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f29, 0(x2) # load 0xff800000 from memory into f29
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
fminm.s f7, f29, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xff800000)
li x12, 0xa7c0caae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f24, 0(x2) # load 0xff800000 from memory into f24
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f18, 0(x2) # load 0xff800000 from memory into f18
fminm.s f12, f24, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fc00000)
li x29, 0xc008abca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f12, 0(x2) # load 0x7fc00000 from memory into f12
fminm.s f29, f1, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fffffff)
li x1, 0x80541cd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f27, 0(x2) # load 0xff800000 from memory into f27
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f28, 0(x2) # load 0x7fffffff from memory into f28
fminm.s f1, f27, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f800001)
li x7, 0xee0b07ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f13, 0(x2) # load 0xff800000 from memory into f13
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f23, 0(x2) # load 0x7f800001 from memory into f23
fminm.s f7, f13, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fbfffff)
li x25, 0xe56e0373 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f10, 0(x2) # load 0x7fbfffff from memory into f10
fminm.s f25, f14, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7ef8654f)
li x29, 0x397fa15a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f19, 0(x2) # load 0xff800000 from memory into f19
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f9, 0(x2) # load 0x7ef8654f from memory into f9
fminm.s f29, f19, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x813d9ab0)
li x29, 0x42adb743 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f15, 0(x2) # load 0xff800000 from memory into f15
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f9, 0(x2) # load 0x813d9ab0 from memory into f9
fminm.s f29, f15, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x0)
li x8, 0x8b11ee57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f6, 0(x2) # load 0x7fc00000 from memory into f6
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
fminm.s f8, f6, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80000000)
li x24, 0x2b716050 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f1, 0(x2) # load 0x80000000 from memory into f1
fminm.s f24, f10, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x3f800000)
li x3, 0xe93b244b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f21, 0(x2) # load 0x7fc00000 from memory into f21
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f17, 0(x2) # load 0x3f800000 from memory into f17
fminm.s f3, f21, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xbf800000)
li x1, 0x9ceb75d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f27, 0(x2) # load 0x7fc00000 from memory into f27
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f14, 0(x2) # load 0xbf800000 from memory into f14
fminm.s f1, f27, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x3fc00000)
li x22, 0x6ba40499 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f31, 0(x2) # load 0x7fc00000 from memory into f31
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f7, 0(x2) # load 0x3fc00000 from memory into f7
fminm.s f22, f31, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xbfc00000)
li x29, 0x9114d9a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f2, 0(x2) # load 0x7fc00000 from memory into f2
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f15, 0(x2) # load 0xbfc00000 from memory into f15
fminm.s f29, f2, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x40000000)
li x1, 0x6836cf80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f30, 0(x2) # load 0x7fc00000 from memory into f30
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f7, 0(x2) # load 0x40000000 from memory into f7
fminm.s f1, f30, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xc0000000)
li x3, 0xce132311 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f26, 0(x2) # load 0x7fc00000 from memory into f26
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f13, 0(x2) # load 0xc0000000 from memory into f13
fminm.s f3, f26, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x800000)
li x2, 0xaa01fd5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f11, 0(x2) # load 0x7fc00000 from memory into f11
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f9, 0(x2) # load 0x00800000 from memory into f9
fminm.s f2, f11, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80800000)
li x9, 0x0a4426cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f27, 0(x2) # load 0x7fc00000 from memory into f27
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
fminm.s f9, f27, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f7fffff)
li x10, 0x7a9ce350 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f28, 0(x2) # load 0x7fc00000 from memory into f28
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f5, 0(x2) # load 0x7f7fffff from memory into f5
fminm.s f10, f28, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xff7fffff)
li x8, 0x92eaca25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f3, 0(x2) # load 0x7fc00000 from memory into f3
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
fminm.s f8, f3, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fffff)
li x27, 0xea6eb638 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f22, 0(x2) # load 0x7fc00000 from memory into f22
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
fminm.s f27, f22, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x807fffff)
li x10, 0x1a6031c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f15, 0(x2) # load 0x7fc00000 from memory into f15
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f28, 0(x2) # load 0x807fffff from memory into f28
fminm.s f10, f15, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x400000)
li x24, 0xa81c328c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f4, 0(x2) # load 0x7fc00000 from memory into f4
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
fminm.s f24, f4, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80400000)
li x14, 0xbe895c28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f3, 0(x2) # load 0x7fc00000 from memory into f3
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f19, 0(x2) # load 0x80400000 from memory into f19
fminm.s f14, f3, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x1)
li x29, 0x30c6f7ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f19, 0(x2) # load 0x7fc00000 from memory into f19
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f4, 0(x2) # load 0x00000001 from memory into f4
fminm.s f29, f19, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80000001)
li x19, 0x16339b32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f12, 0(x2) # load 0x7fc00000 from memory into f12
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f29, 0(x2) # load 0x80000001 from memory into f29
fminm.s f19, f12, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f800000)
li x10, 0x05479931 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f13, 0(x2) # load 0x7f800000 from memory into f13
fminm.s f10, f7, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xff800000)
li x2, 0xe781f23b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f14, 0(x2) # load 0x7fc00000 from memory into f14
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f4, 0(x2) # load 0xff800000 from memory into f4
fminm.s f2, f14, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fc00000)
li x13, 0x26f0bfbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f15, 0(x2) # load 0x7fc00000 from memory into f15
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f12, 0(x2) # load 0x7fc00000 from memory into f12
fminm.s f13, f15, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fffffff)
li x19, 0xc0460684 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f17, 0(x2) # load 0x7fc00000 from memory into f17
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f13, 0(x2) # load 0x7fffffff from memory into f13
fminm.s f19, f17, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f800001)
li x23, 0xd443f7d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f26, 0(x2) # load 0x7fc00000 from memory into f26
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f8, 0(x2) # load 0x7f800001 from memory into f8
fminm.s f23, f26, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fbfffff)
li x15, 0x84d33824 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f16, 0(x2) # load 0x7fc00000 from memory into f16
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f11, 0(x2) # load 0x7fbfffff from memory into f11
fminm.s f15, f16, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7ef8654f)
li x25, 0x675858c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f9, 0(x2) # load 0x7fc00000 from memory into f9
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
fminm.s f25, f9, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x813d9ab0)
li x30, 0xa82088be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f6, 0(x2) # load 0x7fc00000 from memory into f6
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
fminm.s f30, f6, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x0)
li x8, 0xb5d72d50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f14, 0(x2) # load 0x7fffffff from memory into f14
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f20, 0(x2) # load 0x00000000 from memory into f20
fminm.s f8, f14, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80000000)
li x16, 0x2171f396 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f20, 0(x2) # load 0x7fffffff from memory into f20
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f21, 0(x2) # load 0x80000000 from memory into f21
fminm.s f16, f20, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x3f800000)
li x3, 0xaf29a384 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f17, 0(x2) # load 0x7fffffff from memory into f17
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f22, 0(x2) # load 0x3f800000 from memory into f22
fminm.s f3, f17, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xbf800000)
li x8, 0xfc4f2079 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f1, 0(x2) # load 0x7fffffff from memory into f1
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f3, 0(x2) # load 0xbf800000 from memory into f3
fminm.s f8, f1, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x3fc00000)
li x4, 0x81843743 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f27, 0(x2) # load 0x7fffffff from memory into f27
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f24, 0(x2) # load 0x3fc00000 from memory into f24
fminm.s f4, f27, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xbfc00000)
li x20, 0x2a5083e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f8, 0(x2) # load 0x7fffffff from memory into f8
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f3, 0(x2) # load 0xbfc00000 from memory into f3
fminm.s f20, f8, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x40000000)
li x2, 0x62c1fc2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f11, 0(x2) # load 0x7fffffff from memory into f11
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
fminm.s f2, f11, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xc0000000)
li x30, 0x13ac1a5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f14, 0(x2) # load 0x7fffffff from memory into f14
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f27, 0(x2) # load 0xc0000000 from memory into f27
fminm.s f30, f14, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x800000)
li x20, 0x8e7795a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f15, 0(x2) # load 0x7fffffff from memory into f15
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f17, 0(x2) # load 0x00800000 from memory into f17
fminm.s f20, f15, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80800000)
li x25, 0x8f014a5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f11, 0(x2) # load 0x7fffffff from memory into f11
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f3, 0(x2) # load 0x80800000 from memory into f3
fminm.s f25, f11, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f7fffff)
li x12, 0x2d19ba64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f3, 0(x2) # load 0x7fffffff from memory into f3
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f11, 0(x2) # load 0x7f7fffff from memory into f11
fminm.s f12, f3, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xff7fffff)
li x3, 0xf73d83b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f25, 0(x2) # load 0x7fffffff from memory into f25
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f24, 0(x2) # load 0xff7fffff from memory into f24
fminm.s f3, f25, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fffff)
li x26, 0x28991a7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f18, 0(x2) # load 0x7fffffff from memory into f18
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f13, 0(x2) # load 0x007fffff from memory into f13
fminm.s f26, f18, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x807fffff)
li x18, 0xf804763b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f30, 0(x2) # load 0x7fffffff from memory into f30
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
fminm.s f18, f30, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x400000)
li x2, 0xecdebaad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f18, 0(x2) # load 0x7fffffff from memory into f18
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
fminm.s f2, f18, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80400000)
li x25, 0xa1ac3a3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f1, 0(x2) # load 0x7fffffff from memory into f1
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f5, 0(x2) # load 0x80400000 from memory into f5
fminm.s f25, f1, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x1)
li x6, 0xad12611d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f29, 0(x2) # load 0x7fffffff from memory into f29
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
fminm.s f6, f29, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80000001)
li x21, 0x074080ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f1, 0(x2) # load 0x7fffffff from memory into f1
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
fminm.s f21, f1, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f800000)
li x23, 0x45876db0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f11, 0(x2) # load 0x7fffffff from memory into f11
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
fminm.s f23, f11, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xff800000)
li x16, 0x9eb4369d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f27, 0(x2) # load 0x7fffffff from memory into f27
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f4, 0(x2) # load 0xff800000 from memory into f4
fminm.s f16, f27, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fc00000)
li x28, 0x73da6347 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f30, 0(x2) # load 0x7fffffff from memory into f30
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f2, 0(x2) # load 0x7fc00000 from memory into f2
fminm.s f28, f30, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fffffff)
li x25, 0x719eab98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f9, 0(x2) # load 0x7fffffff from memory into f9
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f27, 0(x2) # load 0x7fffffff from memory into f27
fminm.s f25, f9, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f800001)
li x31, 0x65d22e10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f1, 0(x2) # load 0x7fffffff from memory into f1
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
fminm.s f31, f1, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fbfffff)
li x6, 0x30cebc71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f14, 0(x2) # load 0x7fffffff from memory into f14
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f4, 0(x2) # load 0x7fbfffff from memory into f4
fminm.s f6, f14, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7ef8654f)
li x20, 0x2e8a77e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f29, 0(x2) # load 0x7fffffff from memory into f29
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f4, 0(x2) # load 0x7ef8654f from memory into f4
fminm.s f20, f29, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x813d9ab0)
li x1, 0x43747343 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f31, 0(x2) # load 0x7fffffff from memory into f31
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f7, 0(x2) # load 0x813d9ab0 from memory into f7
fminm.s f1, f31, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x0)
li x27, 0x7745824f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f28, 0(x2) # load 0x7f800001 from memory into f28
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f30, 0(x2) # load 0x00000000 from memory into f30
fminm.s f27, f28, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80000000)
li x7, 0xa29caca6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f14, 0(x2) # load 0x7f800001 from memory into f14
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f19, 0(x2) # load 0x80000000 from memory into f19
fminm.s f7, f14, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x3f800000)
li x5, 0xa2713d80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f29, 0(x2) # load 0x7f800001 from memory into f29
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f16, 0(x2) # load 0x3f800000 from memory into f16
fminm.s f5, f29, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xbf800000)
li x26, 0x8fd8e057 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f3, 0(x2) # load 0xbf800000 from memory into f3
fminm.s f26, f30, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x3fc00000)
li x12, 0x100fe214 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f16, 0(x2) # load 0x7f800001 from memory into f16
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f10, 0(x2) # load 0x3fc00000 from memory into f10
fminm.s f12, f16, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xbfc00000)
li x12, 0x19f5608d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f2, 0(x2) # load 0x7f800001 from memory into f2
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
fminm.s f12, f2, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x40000000)
li x28, 0xe9c8b6d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f13, 0(x2) # load 0x7f800001 from memory into f13
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f10, 0(x2) # load 0x40000000 from memory into f10
fminm.s f28, f13, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xc0000000)
li x29, 0x4e3da948 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f26, 0(x2) # load 0x7f800001 from memory into f26
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f3, 0(x2) # load 0xc0000000 from memory into f3
fminm.s f29, f26, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x800000)
li x13, 0x99763ba8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f1, 0(x2) # load 0x00800000 from memory into f1
fminm.s f13, f7, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80800000)
li x1, 0xf772422c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f11, 0(x2) # load 0x7f800001 from memory into f11
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
fminm.s f1, f11, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f7fffff)
li x11, 0x65415a59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f22, 0(x2) # load 0x7f800001 from memory into f22
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f4, 0(x2) # load 0x7f7fffff from memory into f4
fminm.s f11, f22, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xff7fffff)
li x23, 0xb83abf2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f18, 0(x2) # load 0x7f800001 from memory into f18
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f24, 0(x2) # load 0xff7fffff from memory into f24
fminm.s f23, f18, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fffff)
li x31, 0xf24f132f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f13, 0(x2) # load 0x7f800001 from memory into f13
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f6, 0(x2) # load 0x007fffff from memory into f6
fminm.s f31, f13, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x807fffff)
li x17, 0x4a16d9e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f15, 0(x2) # load 0x7f800001 from memory into f15
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f12, 0(x2) # load 0x807fffff from memory into f12
fminm.s f17, f15, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x400000)
li x31, 0x6d53fd5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f23, 0(x2) # load 0x00400000 from memory into f23
fminm.s f31, f5, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80400000)
li x14, 0xeb0d9f5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f12, 0(x2) # load 0x7f800001 from memory into f12
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f28, 0(x2) # load 0x80400000 from memory into f28
fminm.s f14, f12, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x1)
li x1, 0x0179c2f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f17, 0(x2) # load 0x7f800001 from memory into f17
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
fminm.s f1, f17, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80000001)
li x12, 0xe83d15d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f4, 0(x2) # load 0x7f800001 from memory into f4
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f2, 0(x2) # load 0x80000001 from memory into f2
fminm.s f12, f4, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f800000)
li x7, 0x990ed2a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f26, 0(x2) # load 0x7f800001 from memory into f26
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f9, 0(x2) # load 0x7f800000 from memory into f9
fminm.s f7, f26, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xff800000)
li x25, 0xa6ea5ea5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f13, 0(x2) # load 0x7f800001 from memory into f13
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
fminm.s f25, f13, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fc00000)
li x8, 0xf0451e30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f14, 0(x2) # load 0x7f800001 from memory into f14
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f26, 0(x2) # load 0x7fc00000 from memory into f26
fminm.s f8, f14, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fffffff)
li x3, 0xc96654a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
fminm.s f3, f7, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f800001)
li x29, 0x27c4d8c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f1, 0(x2) # load 0x7f800001 from memory into f1
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f8, 0(x2) # load 0x7f800001 from memory into f8
fminm.s f29, f1, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fbfffff)
li x17, 0xa14df711 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f6, 0(x2) # load 0x7f800001 from memory into f6
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
fminm.s f17, f6, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7ef8654f)
li x13, 0x9d12edec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f8, 0(x2) # load 0x7f800001 from memory into f8
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f10, 0(x2) # load 0x7ef8654f from memory into f10
fminm.s f13, f8, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x813d9ab0)
li x31, 0x3f094b71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f8, 0(x2) # load 0x7f800001 from memory into f8
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f11, 0(x2) # load 0x813d9ab0 from memory into f11
fminm.s f31, f8, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x0)
li x11, 0x1c6e5afd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f14, 0(x2) # load 0x7fbfffff from memory into f14
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f25, 0(x2) # load 0x00000000 from memory into f25
fminm.s f11, f14, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80000000)
li x17, 0xa744af38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f23, 0(x2) # load 0x80000000 from memory into f23
fminm.s f17, f15, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x3f800000)
li x7, 0xcd579409 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f17, 0(x2) # load 0x3f800000 from memory into f17
fminm.s f7, f15, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xbf800000)
li x30, 0xba7869e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f25, 0(x2) # load 0x7fbfffff from memory into f25
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f31, 0(x2) # load 0xbf800000 from memory into f31
fminm.s f30, f25, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x3fc00000)
li x28, 0x6c7bd2aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f18, 0(x2) # load 0x3fc00000 from memory into f18
fminm.s f28, f15, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xbfc00000)
li x31, 0x625c9cc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f9, 0(x2) # load 0x7fbfffff from memory into f9
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
fminm.s f31, f9, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x40000000)
li x10, 0x258b6c57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f20, 0(x2) # load 0x7fbfffff from memory into f20
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f12, 0(x2) # load 0x40000000 from memory into f12
fminm.s f10, f20, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xc0000000)
li x4, 0x2e2f0115 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f28, 0(x2) # load 0xc0000000 from memory into f28
fminm.s f4, f15, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x800000)
li x30, 0x994e9106 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f22, 0(x2) # load 0x7fbfffff from memory into f22
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f24, 0(x2) # load 0x00800000 from memory into f24
fminm.s f30, f22, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80800000)
li x3, 0xf6824213 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f17, 0(x2) # load 0x7fbfffff from memory into f17
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f6, 0(x2) # load 0x80800000 from memory into f6
fminm.s f3, f17, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f7fffff)
li x8, 0x45b348c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f25, 0(x2) # load 0x7fbfffff from memory into f25
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f17, 0(x2) # load 0x7f7fffff from memory into f17
fminm.s f8, f25, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xff7fffff)
li x15, 0x8a67c2ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f27, 0(x2) # load 0x7fbfffff from memory into f27
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
fminm.s f15, f27, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fffff)
li x3, 0xb2434ea1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f20, 0(x2) # load 0x7fbfffff from memory into f20
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f31, 0(x2) # load 0x007fffff from memory into f31
fminm.s f3, f20, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x807fffff)
li x10, 0x871f34ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f7, 0(x2) # load 0x7fbfffff from memory into f7
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f4, 0(x2) # load 0x807fffff from memory into f4
fminm.s f10, f7, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x400000)
li x31, 0x285cea5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f1, 0(x2) # load 0x00400000 from memory into f1
fminm.s f31, f16, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80400000)
li x23, 0x2bfd5068 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f30, 0(x2) # load 0x80400000 from memory into f30
fminm.s f23, f15, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x1)
li x8, 0xe6e85839 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f13, 0(x2) # load 0x7fbfffff from memory into f13
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f4, 0(x2) # load 0x00000001 from memory into f4
fminm.s f8, f13, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80000001)
li x6, 0xda1c5efa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f13, 0(x2) # load 0x7fbfffff from memory into f13
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f11, 0(x2) # load 0x80000001 from memory into f11
fminm.s f6, f13, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f800000)
li x14, 0xeed01315 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f2, 0(x2) # load 0x7fbfffff from memory into f2
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
fminm.s f14, f2, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xff800000)
li x3, 0xcc7a1668 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f9, 0(x2) # load 0x7fbfffff from memory into f9
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f13, 0(x2) # load 0xff800000 from memory into f13
fminm.s f3, f9, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fc00000)
li x14, 0x2c74e7f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f24, 0(x2) # load 0x7fbfffff from memory into f24
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f29, 0(x2) # load 0x7fc00000 from memory into f29
fminm.s f14, f24, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fffffff)
li x17, 0xb86129db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f1, 0(x2) # load 0x7fffffff from memory into f1
fminm.s f17, f15, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f800001)
li x25, 0xa3e730ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f12, 0(x2) # load 0x7f800001 from memory into f12
fminm.s f25, f28, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fbfffff)
li x17, 0xa66c2bc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f11, 0(x2) # load 0x7fbfffff from memory into f11
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f26, 0(x2) # load 0x7fbfffff from memory into f26
fminm.s f17, f11, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7ef8654f)
li x7, 0x96bb79c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f26, 0(x2) # load 0x7fbfffff from memory into f26
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f15, 0(x2) # load 0x7ef8654f from memory into f15
fminm.s f7, f26, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x813d9ab0)
li x13, 0x6ec626b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f1, 0(x2) # load 0x7fbfffff from memory into f1
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f14, 0(x2) # load 0x813d9ab0 from memory into f14
fminm.s f13, f1, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x0)
li x30, 0x844a397e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f10, 0(x2) # load 0x7ef8654f from memory into f10
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f4, 0(x2) # load 0x00000000 from memory into f4
fminm.s f30, f10, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80000000)
li x31, 0xa17986d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f11, 0(x2) # load 0x7ef8654f from memory into f11
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f6, 0(x2) # load 0x80000000 from memory into f6
fminm.s f31, f11, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x3f800000)
li x5, 0x95359f98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f4, 0(x2) # load 0x7ef8654f from memory into f4
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f22, 0(x2) # load 0x3f800000 from memory into f22
fminm.s f5, f4, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xbf800000)
li x1, 0xbb4e480b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f26, 0(x2) # load 0x7ef8654f from memory into f26
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f19, 0(x2) # load 0xbf800000 from memory into f19
fminm.s f1, f26, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x3fc00000)
li x25, 0xdae5e85d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f6, 0(x2) # load 0x7ef8654f from memory into f6
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f18, 0(x2) # load 0x3fc00000 from memory into f18
fminm.s f25, f6, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xbfc00000)
li x18, 0x7e75ff18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f12, 0(x2) # load 0x7ef8654f from memory into f12
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f22, 0(x2) # load 0xbfc00000 from memory into f22
fminm.s f18, f12, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x40000000)
li x1, 0x8f31a495 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f27, 0(x2) # load 0x7ef8654f from memory into f27
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f12, 0(x2) # load 0x40000000 from memory into f12
fminm.s f1, f27, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xc0000000)
li x31, 0xdc34ac7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f15, 0(x2) # load 0x7ef8654f from memory into f15
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f2, 0(x2) # load 0xc0000000 from memory into f2
fminm.s f31, f15, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x800000)
li x29, 0x919df557 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f28, 0(x2) # load 0x7ef8654f from memory into f28
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f8, 0(x2) # load 0x00800000 from memory into f8
fminm.s f29, f28, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80800000)
li x28, 0x870ed7ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f30, 0(x2) # load 0x7ef8654f from memory into f30
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
fminm.s f28, f30, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f7fffff)
li x20, 0x05cea2e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f26, 0(x2) # load 0x7ef8654f from memory into f26
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f8, 0(x2) # load 0x7f7fffff from memory into f8
fminm.s f20, f26, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xff7fffff)
li x1, 0x28e3d30f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f31, 0(x2) # load 0x7ef8654f from memory into f31
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f27, 0(x2) # load 0xff7fffff from memory into f27
fminm.s f1, f31, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fffff)
li x3, 0x60fe0018 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
fminm.s f3, f21, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x807fffff)
li x11, 0x5e400669 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f15, 0(x2) # load 0x7ef8654f from memory into f15
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
fminm.s f11, f15, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x400000)
li x22, 0xc81f2fc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f6, 0(x2) # load 0x7ef8654f from memory into f6
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f5, 0(x2) # load 0x00400000 from memory into f5
fminm.s f22, f6, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80400000)
li x5, 0xf4f53504 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f6, 0(x2) # load 0x7ef8654f from memory into f6
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f9, 0(x2) # load 0x80400000 from memory into f9
fminm.s f5, f6, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x1)
li x22, 0xcc22171c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f28, 0(x2) # load 0x00000001 from memory into f28
fminm.s f22, f16, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80000001)
li x26, 0x15617baa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f11, 0(x2) # load 0x7ef8654f from memory into f11
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
fminm.s f26, f11, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f800000)
li x3, 0x992adc6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f8, 0(x2) # load 0x7ef8654f from memory into f8
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f17, 0(x2) # load 0x7f800000 from memory into f17
fminm.s f3, f8, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xff800000)
li x7, 0x5741770c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f10, 0(x2) # load 0x7ef8654f from memory into f10
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f3, 0(x2) # load 0xff800000 from memory into f3
fminm.s f7, f10, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fc00000)
li x20, 0xa1ee5c64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f6, 0(x2) # load 0x7fc00000 from memory into f6
fminm.s f20, f21, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fffffff)
li x4, 0x544037c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f12, 0(x2) # load 0x7ef8654f from memory into f12
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f8, 0(x2) # load 0x7fffffff from memory into f8
fminm.s f4, f12, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f800001)
li x7, 0xbcb84633 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f8, 0(x2) # load 0x7ef8654f from memory into f8
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f20, 0(x2) # load 0x7f800001 from memory into f20
fminm.s f7, f8, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fbfffff)
li x20, 0xd28db52a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f1, 0(x2) # load 0x7fbfffff from memory into f1
fminm.s f20, f13, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7ef8654f)
li x26, 0xbdabdeb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f14, 0(x2) # load 0x7ef8654f from memory into f14
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f11, 0(x2) # load 0x7ef8654f from memory into f11
fminm.s f26, f14, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x813d9ab0)
li x26, 0xd1906161 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f5, 0(x2) # load 0x7ef8654f from memory into f5
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f15, 0(x2) # load 0x813d9ab0 from memory into f15
fminm.s f26, f5, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x0)
li x1, 0xf0105f7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f5, 0(x2) # load 0x813d9ab0 from memory into f5
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f4, 0(x2) # load 0x00000000 from memory into f4
fminm.s f1, f5, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80000000)
li x18, 0xb910e319 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f31, 0(x2) # load 0x813d9ab0 from memory into f31
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f24, 0(x2) # load 0x80000000 from memory into f24
fminm.s f18, f31, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x3f800000)
li x3, 0xbca35377 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f5, 0(x2) # load 0x813d9ab0 from memory into f5
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
fminm.s f3, f5, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xbf800000)
li x9, 0x93badd23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f26, 0(x2) # load 0x813d9ab0 from memory into f26
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f13, 0(x2) # load 0xbf800000 from memory into f13
fminm.s f9, f26, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x3fc00000)
li x10, 0xf233c5f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f27, 0(x2) # load 0x813d9ab0 from memory into f27
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f23, 0(x2) # load 0x3fc00000 from memory into f23
fminm.s f10, f27, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xbfc00000)
li x25, 0xb7e6b4ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f5, 0(x2) # load 0x813d9ab0 from memory into f5
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f19, 0(x2) # load 0xbfc00000 from memory into f19
fminm.s f25, f5, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x40000000)
li x6, 0xc3038833 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f5, 0(x2) # load 0x40000000 from memory into f5
fminm.s f6, f21, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xc0000000)
li x25, 0x0a72e059 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f8, 0(x2) # load 0x813d9ab0 from memory into f8
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f28, 0(x2) # load 0xc0000000 from memory into f28
fminm.s f25, f8, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x800000)
li x1, 0x6856ee24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f24, 0(x2) # load 0x813d9ab0 from memory into f24
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f6, 0(x2) # load 0x00800000 from memory into f6
fminm.s f1, f24, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80800000)
li x19, 0xccaf5f86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f25, 0(x2) # load 0x813d9ab0 from memory into f25
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
fminm.s f19, f25, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f7fffff)
li x15, 0xf93be7b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f5, 0(x2) # load 0x7f7fffff from memory into f5
fminm.s f15, f22, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xff7fffff)
li x8, 0x0f6eebf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f1, 0(x2) # load 0xff7fffff from memory into f1
fminm.s f8, f17, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fffff)
li x28, 0xf84a53fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f7, 0(x2) # load 0x007fffff from memory into f7
fminm.s f28, f13, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x807fffff)
li x15, 0xd8d6bc28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f5, 0(x2) # load 0x813d9ab0 from memory into f5
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f25, 0(x2) # load 0x807fffff from memory into f25
fminm.s f15, f5, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x400000)
li x8, 0x8c07a1d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f4, 0(x2) # load 0x813d9ab0 from memory into f4
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f22, 0(x2) # load 0x00400000 from memory into f22
fminm.s f8, f4, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80400000)
li x14, 0x7544e339 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f25, 0(x2) # load 0x813d9ab0 from memory into f25
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f5, 0(x2) # load 0x80400000 from memory into f5
fminm.s f14, f25, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x1)
li x8, 0xcfc7ceb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f27, 0(x2) # load 0x00000001 from memory into f27
fminm.s f8, f17, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80000001)
li x1, 0xd80a75ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f19, 0(x2) # load 0x813d9ab0 from memory into f19
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
fminm.s f1, f19, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f800000)
li x7, 0x1d542b62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f23, 0(x2) # load 0x813d9ab0 from memory into f23
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f20, 0(x2) # load 0x7f800000 from memory into f20
fminm.s f7, f23, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xff800000)
li x25, 0xcdf43636 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f6, 0(x2) # load 0x813d9ab0 from memory into f6
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f8, 0(x2) # load 0xff800000 from memory into f8
fminm.s f25, f6, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fc00000)
li x12, 0xbd8d4daf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f10, 0(x2) # load 0x813d9ab0 from memory into f10
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
fminm.s f12, f10, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fffffff)
li x9, 0x791fb52a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f27, 0(x2) # load 0x813d9ab0 from memory into f27
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f1, 0(x2) # load 0x7fffffff from memory into f1
fminm.s f9, f27, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f800001)
li x21, 0xdc69df87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f24, 0(x2) # load 0x813d9ab0 from memory into f24
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f4, 0(x2) # load 0x7f800001 from memory into f4
fminm.s f21, f24, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fbfffff)
li x28, 0xb3edf775 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
fminm.s f28, f21, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7ef8654f)
li x30, 0x2d8c572c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f5, 0(x2) # load 0x813d9ab0 from memory into f5
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f23, 0(x2) # load 0x7ef8654f from memory into f23
fminm.s f30, f5, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x813d9ab0)
li x7, 0xda57b059 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f1, 0(x2) # load 0x813d9ab0 from memory into f1
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f31, 0(x2) # load 0x813d9ab0 from memory into f31
fminm.s f7, f1, f31 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x0be49171 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8bfdb47c # load x3 with value 0x8bfdb47c
sw x3, 0(x2) # store 0x8bfdb47c in memory
flw f20, 0(x2) # load 0x8bfdb47c from memory into f20
li x3, 0x556f2492 # load x3 with value 0x556f2492
sw x3, 0(x2) # store 0x556f2492 in memory
flw f6, 0(x2) # load 0x556f2492 from memory into f6
fminm.s f0, f20, f6 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x9f017611 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc3db3e98 # load x3 with value 0xc3db3e98
sw x3, 0(x2) # store 0xc3db3e98 in memory
flw f8, 0(x2) # load 0xc3db3e98 from memory into f8
li x3, 0x7237761f # load x3 with value 0x7237761f
sw x3, 0(x2) # store 0x7237761f in memory
flw f15, 0(x2) # load 0x7237761f from memory into f15
fminm.s f1, f8, f15 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x01e8820d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2affd2af # load x3 with value 0x2affd2af
sw x3, 0(x2) # store 0x2affd2af in memory
flw f3, 0(x2) # load 0x2affd2af from memory into f3
li x3, 0xa66897d5 # load x3 with value 0xa66897d5
sw x3, 0(x2) # store 0xa66897d5 in memory
flw f1, 0(x2) # load 0xa66897d5 from memory into f1
fminm.s f2, f3, f1 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0xda042edc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x39dd4ea7 # load x3 with value 0x39dd4ea7
sw x3, 0(x2) # store 0x39dd4ea7 in memory
flw f8, 0(x2) # load 0x39dd4ea7 from memory into f8
li x3, 0xb43ef977 # load x3 with value 0xb43ef977
sw x3, 0(x2) # store 0xb43ef977 in memory
flw f29, 0(x2) # load 0xb43ef977 from memory into f29
fminm.s f3, f8, f29 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x98b3f3d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x55eb586a # load x3 with value 0x55eb586a
sw x3, 0(x2) # store 0x55eb586a in memory
flw f23, 0(x2) # load 0x55eb586a from memory into f23
li x3, 0x0bab5761 # load x3 with value 0x0bab5761
sw x3, 0(x2) # store 0x0bab5761 in memory
flw f9, 0(x2) # load 0x0bab5761 from memory into f9
fminm.s f4, f23, f9 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x90c2003d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x01eacb3f # load x3 with value 0x01eacb3f
sw x3, 0(x2) # store 0x01eacb3f in memory
flw f2, 0(x2) # load 0x01eacb3f from memory into f2
li x3, 0x8b4d534a # load x3 with value 0x8b4d534a
sw x3, 0(x2) # store 0x8b4d534a in memory
flw f23, 0(x2) # load 0x8b4d534a from memory into f23
fminm.s f5, f2, f23 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x9f59f331 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf88a8f88 # load x3 with value 0xf88a8f88
sw x3, 0(x2) # store 0xf88a8f88 in memory
flw f9, 0(x2) # load 0xf88a8f88 from memory into f9
li x3, 0x275d9226 # load x3 with value 0x275d9226
sw x3, 0(x2) # store 0x275d9226 in memory
flw f5, 0(x2) # load 0x275d9226 from memory into f5
fminm.s f6, f9, f5 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0xc8c299cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x08b52486 # load x3 with value 0x08b52486
sw x3, 0(x2) # store 0x08b52486 in memory
flw f9, 0(x2) # load 0x08b52486 from memory into f9
li x3, 0x5ba9f7c5 # load x3 with value 0x5ba9f7c5
sw x3, 0(x2) # store 0x5ba9f7c5 in memory
flw f27, 0(x2) # load 0x5ba9f7c5 from memory into f27
fminm.s f7, f9, f27 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x2bfaac8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2e8878ec # load x3 with value 0x2e8878ec
sw x3, 0(x2) # store 0x2e8878ec in memory
flw f30, 0(x2) # load 0x2e8878ec from memory into f30
li x3, 0x96a76816 # load x3 with value 0x96a76816
sw x3, 0(x2) # store 0x96a76816 in memory
flw f17, 0(x2) # load 0x96a76816 from memory into f17
fminm.s f8, f30, f17 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x8b60e718 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x608544a0 # load x3 with value 0x608544a0
sw x3, 0(x2) # store 0x608544a0 in memory
flw f12, 0(x2) # load 0x608544a0 from memory into f12
li x3, 0x89e539bc # load x3 with value 0x89e539bc
sw x3, 0(x2) # store 0x89e539bc in memory
flw f7, 0(x2) # load 0x89e539bc from memory into f7
fminm.s f9, f12, f7 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0xd0c01c00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb27ce3e9 # load x3 with value 0xb27ce3e9
sw x3, 0(x2) # store 0xb27ce3e9 in memory
flw f30, 0(x2) # load 0xb27ce3e9 from memory into f30
li x3, 0x2dcd9a7f # load x3 with value 0x2dcd9a7f
sw x3, 0(x2) # store 0x2dcd9a7f in memory
flw f31, 0(x2) # load 0x2dcd9a7f from memory into f31
fminm.s f10, f30, f31 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x7cab2a91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1a587c16 # load x3 with value 0x1a587c16
sw x3, 0(x2) # store 0x1a587c16 in memory
flw f31, 0(x2) # load 0x1a587c16 from memory into f31
li x3, 0x1f9ae308 # load x3 with value 0x1f9ae308
sw x3, 0(x2) # store 0x1f9ae308 in memory
flw f5, 0(x2) # load 0x1f9ae308 from memory into f5
fminm.s f11, f31, f5 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x217bb052 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa60aceb2 # load x3 with value 0xa60aceb2
sw x3, 0(x2) # store 0xa60aceb2 in memory
flw f26, 0(x2) # load 0xa60aceb2 from memory into f26
li x3, 0x023d4811 # load x3 with value 0x023d4811
sw x3, 0(x2) # store 0x023d4811 in memory
flw f14, 0(x2) # load 0x023d4811 from memory into f14
fminm.s f12, f26, f14 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x8f0306f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8e3854a9 # load x3 with value 0x8e3854a9
sw x3, 0(x2) # store 0x8e3854a9 in memory
flw f24, 0(x2) # load 0x8e3854a9 from memory into f24
li x3, 0xe416e635 # load x3 with value 0xe416e635
sw x3, 0(x2) # store 0xe416e635 in memory
flw f28, 0(x2) # load 0xe416e635 from memory into f28
fminm.s f13, f24, f28 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x85828f82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdd16ccf5 # load x3 with value 0xdd16ccf5
sw x3, 0(x2) # store 0xdd16ccf5 in memory
flw f19, 0(x2) # load 0xdd16ccf5 from memory into f19
li x3, 0xcce1b20c # load x3 with value 0xcce1b20c
sw x3, 0(x2) # store 0xcce1b20c in memory
flw f10, 0(x2) # load 0xcce1b20c from memory into f10
fminm.s f14, f19, f10 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x4c11fc0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcd609000 # load x3 with value 0xcd609000
sw x3, 0(x2) # store 0xcd609000 in memory
flw f16, 0(x2) # load 0xcd609000 from memory into f16
li x3, 0x852c94e3 # load x3 with value 0x852c94e3
sw x3, 0(x2) # store 0x852c94e3 in memory
flw f4, 0(x2) # load 0x852c94e3 from memory into f4
fminm.s f15, f16, f4 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0xbcc95e72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd548fd1d # load x3 with value 0xd548fd1d
sw x3, 0(x2) # store 0xd548fd1d in memory
flw f19, 0(x2) # load 0xd548fd1d from memory into f19
li x3, 0x0ce26349 # load x3 with value 0x0ce26349
sw x3, 0(x2) # store 0x0ce26349 in memory
flw f3, 0(x2) # load 0x0ce26349 from memory into f3
fminm.s f16, f19, f3 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x80e01e8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9ee308c3 # load x3 with value 0x9ee308c3
sw x3, 0(x2) # store 0x9ee308c3 in memory
flw f6, 0(x2) # load 0x9ee308c3 from memory into f6
li x3, 0xb9973335 # load x3 with value 0xb9973335
sw x3, 0(x2) # store 0xb9973335 in memory
flw f15, 0(x2) # load 0xb9973335 from memory into f15
fminm.s f17, f6, f15 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0xf1396716 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xca08c24c # load x3 with value 0xca08c24c
sw x3, 0(x2) # store 0xca08c24c in memory
flw f7, 0(x2) # load 0xca08c24c from memory into f7
li x3, 0xff19c01c # load x3 with value 0xff19c01c
sw x3, 0(x2) # store 0xff19c01c in memory
flw f23, 0(x2) # load 0xff19c01c from memory into f23
fminm.s f18, f7, f23 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0xa31aab37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x689184ab # load x3 with value 0x689184ab
sw x3, 0(x2) # store 0x689184ab in memory
flw f30, 0(x2) # load 0x689184ab from memory into f30
li x3, 0x80edd790 # load x3 with value 0x80edd790
sw x3, 0(x2) # store 0x80edd790 in memory
flw f19, 0(x2) # load 0x80edd790 from memory into f19
fminm.s f19, f30, f19 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x40735f1d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe0c7b82d # load x3 with value 0xe0c7b82d
sw x3, 0(x2) # store 0xe0c7b82d in memory
flw f15, 0(x2) # load 0xe0c7b82d from memory into f15
li x3, 0x30f003b6 # load x3 with value 0x30f003b6
sw x3, 0(x2) # store 0x30f003b6 in memory
flw f20, 0(x2) # load 0x30f003b6 from memory into f20
fminm.s f20, f15, f20 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x90e2b6e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x293e535a # load x3 with value 0x293e535a
sw x3, 0(x2) # store 0x293e535a in memory
flw f19, 0(x2) # load 0x293e535a from memory into f19
li x3, 0xd4040114 # load x3 with value 0xd4040114
sw x3, 0(x2) # store 0xd4040114 in memory
flw f5, 0(x2) # load 0xd4040114 from memory into f5
fminm.s f21, f19, f5 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x611cdff5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x710afa70 # load x3 with value 0x710afa70
sw x3, 0(x2) # store 0x710afa70 in memory
flw f3, 0(x2) # load 0x710afa70 from memory into f3
li x3, 0x152e989d # load x3 with value 0x152e989d
sw x3, 0(x2) # store 0x152e989d in memory
flw f11, 0(x2) # load 0x152e989d from memory into f11
fminm.s f22, f3, f11 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x1f2c8098 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeb5b1f06 # load x3 with value 0xeb5b1f06
sw x3, 0(x2) # store 0xeb5b1f06 in memory
flw f5, 0(x2) # load 0xeb5b1f06 from memory into f5
li x3, 0x7665449a # load x3 with value 0x7665449a
sw x3, 0(x2) # store 0x7665449a in memory
flw f2, 0(x2) # load 0x7665449a from memory into f2
fminm.s f23, f5, f2 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x16437a1c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc92aca0a # load x3 with value 0xc92aca0a
sw x3, 0(x2) # store 0xc92aca0a in memory
flw f7, 0(x2) # load 0xc92aca0a from memory into f7
li x3, 0x30f18a1e # load x3 with value 0x30f18a1e
sw x3, 0(x2) # store 0x30f18a1e in memory
flw f14, 0(x2) # load 0x30f18a1e from memory into f14
fminm.s f24, f7, f14 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x6a27c267 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaae93a15 # load x3 with value 0xaae93a15
sw x3, 0(x2) # store 0xaae93a15 in memory
flw f3, 0(x2) # load 0xaae93a15 from memory into f3
li x3, 0x39022dc6 # load x3 with value 0x39022dc6
sw x3, 0(x2) # store 0x39022dc6 in memory
flw f28, 0(x2) # load 0x39022dc6 from memory into f28
fminm.s f25, f3, f28 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xbcbf7040 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x75fcf92c # load x3 with value 0x75fcf92c
sw x3, 0(x2) # store 0x75fcf92c in memory
flw f20, 0(x2) # load 0x75fcf92c from memory into f20
li x3, 0xa9b4117f # load x3 with value 0xa9b4117f
sw x3, 0(x2) # store 0xa9b4117f in memory
flw f26, 0(x2) # load 0xa9b4117f from memory into f26
fminm.s f26, f20, f26 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0xd7b81472 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa15f039c # load x3 with value 0xa15f039c
sw x3, 0(x2) # store 0xa15f039c in memory
flw f20, 0(x2) # load 0xa15f039c from memory into f20
li x3, 0x2cfe1b16 # load x3 with value 0x2cfe1b16
sw x3, 0(x2) # store 0x2cfe1b16 in memory
flw f26, 0(x2) # load 0x2cfe1b16 from memory into f26
fminm.s f27, f20, f26 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x6de9f190 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x36335445 # load x3 with value 0x36335445
sw x3, 0(x2) # store 0x36335445 in memory
flw f22, 0(x2) # load 0x36335445 from memory into f22
li x3, 0x2599ccf1 # load x3 with value 0x2599ccf1
sw x3, 0(x2) # store 0x2599ccf1 in memory
flw f8, 0(x2) # load 0x2599ccf1 from memory into f8
fminm.s f28, f22, f8 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0xae54e099 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5ee16e78 # load x3 with value 0x5ee16e78
sw x3, 0(x2) # store 0x5ee16e78 in memory
flw f6, 0(x2) # load 0x5ee16e78 from memory into f6
li x3, 0xafac497f # load x3 with value 0xafac497f
sw x3, 0(x2) # store 0xafac497f in memory
flw f7, 0(x2) # load 0xafac497f from memory into f7
fminm.s f29, f6, f7 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x3a5ae7b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ef46657 # load x3 with value 0x3ef46657
sw x3, 0(x2) # store 0x3ef46657 in memory
flw f2, 0(x2) # load 0x3ef46657 from memory into f2
li x3, 0x2c3b7bde # load x3 with value 0x2c3b7bde
sw x3, 0(x2) # store 0x2c3b7bde in memory
flw f28, 0(x2) # load 0x2c3b7bde from memory into f28
fminm.s f30, f2, f28 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x478ca668 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x611a47cb # load x3 with value 0x611a47cb
sw x3, 0(x2) # store 0x611a47cb in memory
flw f18, 0(x2) # load 0x611a47cb from memory into f18
li x3, 0x5fa8b7dc # load x3 with value 0x5fa8b7dc
sw x3, 0(x2) # store 0x5fa8b7dc in memory
flw f17, 0(x2) # load 0x5fa8b7dc from memory into f17
fminm.s f31, f18, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x22, 0xba9064d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd55ef89b # load x3 with value 0xd55ef89b
sw x3, 0(x2) # store 0xd55ef89b in memory
flw f0, 0(x2) # load 0xd55ef89b from memory into f0
li x3, 0x42180284 # load x3 with value 0x42180284
sw x3, 0(x2) # store 0x42180284 in memory
flw f27, 0(x2) # load 0x42180284 from memory into f27
fminm.s f22, f0, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x4, 0x0c9962ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4d3b3792 # load x3 with value 0x4d3b3792
sw x3, 0(x2) # store 0x4d3b3792 in memory
flw f1, 0(x2) # load 0x4d3b3792 from memory into f1
li x3, 0xb8d58b51 # load x3 with value 0xb8d58b51
sw x3, 0(x2) # store 0xb8d58b51 in memory
flw f21, 0(x2) # load 0xb8d58b51 from memory into f21
fminm.s f4, f1, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x24, 0xb2f08904 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x92281c74 # load x3 with value 0x92281c74
sw x3, 0(x2) # store 0x92281c74 in memory
flw f2, 0(x2) # load 0x92281c74 from memory into f2
li x3, 0x83c5a209 # load x3 with value 0x83c5a209
sw x3, 0(x2) # store 0x83c5a209 in memory
flw f31, 0(x2) # load 0x83c5a209 from memory into f31
fminm.s f24, f2, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x6, 0xb656b807 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc7d484a6 # load x3 with value 0xc7d484a6
sw x3, 0(x2) # store 0xc7d484a6 in memory
flw f3, 0(x2) # load 0xc7d484a6 from memory into f3
li x3, 0x3058069d # load x3 with value 0x3058069d
sw x3, 0(x2) # store 0x3058069d in memory
flw f12, 0(x2) # load 0x3058069d from memory into f12
fminm.s f6, f3, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x6, 0x18c874cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdf54a3db # load x3 with value 0xdf54a3db
sw x3, 0(x2) # store 0xdf54a3db in memory
flw f4, 0(x2) # load 0xdf54a3db from memory into f4
li x3, 0x4f42760b # load x3 with value 0x4f42760b
sw x3, 0(x2) # store 0x4f42760b in memory
flw f30, 0(x2) # load 0x4f42760b from memory into f30
fminm.s f6, f4, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x3, 0x99409470 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xae2762dd # load x3 with value 0xae2762dd
sw x3, 0(x2) # store 0xae2762dd in memory
flw f5, 0(x2) # load 0xae2762dd from memory into f5
li x3, 0xa6eed46d # load x3 with value 0xa6eed46d
sw x3, 0(x2) # store 0xa6eed46d in memory
flw f6, 0(x2) # load 0xa6eed46d from memory into f6
fminm.s f3, f5, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x17, 0x28faae0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8b15de6e # load x3 with value 0x8b15de6e
sw x3, 0(x2) # store 0x8b15de6e in memory
flw f6, 0(x2) # load 0x8b15de6e from memory into f6
li x3, 0xd93f81a5 # load x3 with value 0xd93f81a5
sw x3, 0(x2) # store 0xd93f81a5 in memory
flw f19, 0(x2) # load 0xd93f81a5 from memory into f19
fminm.s f17, f6, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x30, 0xfd34abdb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaac76ef5 # load x3 with value 0xaac76ef5
sw x3, 0(x2) # store 0xaac76ef5 in memory
flw f7, 0(x2) # load 0xaac76ef5 from memory into f7
li x3, 0x4710bb90 # load x3 with value 0x4710bb90
sw x3, 0(x2) # store 0x4710bb90 in memory
flw f25, 0(x2) # load 0x4710bb90 from memory into f25
fminm.s f30, f7, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x17, 0x178577af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x44c66692 # load x3 with value 0x44c66692
sw x3, 0(x2) # store 0x44c66692 in memory
flw f8, 0(x2) # load 0x44c66692 from memory into f8
li x3, 0x643a7f64 # load x3 with value 0x643a7f64
sw x3, 0(x2) # store 0x643a7f64 in memory
flw f6, 0(x2) # load 0x643a7f64 from memory into f6
fminm.s f17, f8, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x19, 0xd45413ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8a5bed36 # load x3 with value 0x8a5bed36
sw x3, 0(x2) # store 0x8a5bed36 in memory
flw f9, 0(x2) # load 0x8a5bed36 from memory into f9
li x3, 0x9033a7f5 # load x3 with value 0x9033a7f5
sw x3, 0(x2) # store 0x9033a7f5 in memory
flw f6, 0(x2) # load 0x9033a7f5 from memory into f6
fminm.s f19, f9, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x29, 0x4ab3dd6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9e88643e # load x3 with value 0x9e88643e
sw x3, 0(x2) # store 0x9e88643e in memory
flw f10, 0(x2) # load 0x9e88643e from memory into f10
li x3, 0xc1b8ed5e # load x3 with value 0xc1b8ed5e
sw x3, 0(x2) # store 0xc1b8ed5e in memory
flw f25, 0(x2) # load 0xc1b8ed5e from memory into f25
fminm.s f29, f10, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x22, 0x755a80fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd2439e07 # load x3 with value 0xd2439e07
sw x3, 0(x2) # store 0xd2439e07 in memory
flw f11, 0(x2) # load 0xd2439e07 from memory into f11
li x3, 0x0d6e6f61 # load x3 with value 0x0d6e6f61
sw x3, 0(x2) # store 0x0d6e6f61 in memory
flw f2, 0(x2) # load 0x0d6e6f61 from memory into f2
fminm.s f22, f11, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x20, 0x7505ee3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf30590d9 # load x3 with value 0xf30590d9
sw x3, 0(x2) # store 0xf30590d9 in memory
flw f12, 0(x2) # load 0xf30590d9 from memory into f12
li x3, 0x58b2b2ab # load x3 with value 0x58b2b2ab
sw x3, 0(x2) # store 0x58b2b2ab in memory
flw f4, 0(x2) # load 0x58b2b2ab from memory into f4
fminm.s f20, f12, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x21, 0x5b2d46e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8fd8982d # load x3 with value 0x8fd8982d
sw x3, 0(x2) # store 0x8fd8982d in memory
flw f13, 0(x2) # load 0x8fd8982d from memory into f13
li x3, 0xd808061e # load x3 with value 0xd808061e
sw x3, 0(x2) # store 0xd808061e in memory
flw f3, 0(x2) # load 0xd808061e from memory into f3
fminm.s f21, f13, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x11, 0x0f4e6d54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x36e5cb18 # load x3 with value 0x36e5cb18
sw x3, 0(x2) # store 0x36e5cb18 in memory
flw f14, 0(x2) # load 0x36e5cb18 from memory into f14
li x3, 0x73c0e622 # load x3 with value 0x73c0e622
sw x3, 0(x2) # store 0x73c0e622 in memory
flw f8, 0(x2) # load 0x73c0e622 from memory into f8
fminm.s f11, f14, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x4, 0x4680a818 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xea21fc1f # load x3 with value 0xea21fc1f
sw x3, 0(x2) # store 0xea21fc1f in memory
flw f15, 0(x2) # load 0xea21fc1f from memory into f15
li x3, 0x68bed89f # load x3 with value 0x68bed89f
sw x3, 0(x2) # store 0x68bed89f in memory
flw f19, 0(x2) # load 0x68bed89f from memory into f19
fminm.s f4, f15, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x11, 0x76d7af79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9b791c8e # load x3 with value 0x9b791c8e
sw x3, 0(x2) # store 0x9b791c8e in memory
flw f16, 0(x2) # load 0x9b791c8e from memory into f16
li x3, 0xc6bccd62 # load x3 with value 0xc6bccd62
sw x3, 0(x2) # store 0xc6bccd62 in memory
flw f28, 0(x2) # load 0xc6bccd62 from memory into f28
fminm.s f11, f16, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x22, 0xb5518c37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbde837d7 # load x3 with value 0xbde837d7
sw x3, 0(x2) # store 0xbde837d7 in memory
flw f17, 0(x2) # load 0xbde837d7 from memory into f17
li x3, 0x2ddd5962 # load x3 with value 0x2ddd5962
sw x3, 0(x2) # store 0x2ddd5962 in memory
flw f4, 0(x2) # load 0x2ddd5962 from memory into f4
fminm.s f22, f17, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x11, 0x4f657776 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa4a4117a # load x3 with value 0xa4a4117a
sw x3, 0(x2) # store 0xa4a4117a in memory
flw f18, 0(x2) # load 0xa4a4117a from memory into f18
li x3, 0xac33d263 # load x3 with value 0xac33d263
sw x3, 0(x2) # store 0xac33d263 in memory
flw f31, 0(x2) # load 0xac33d263 from memory into f31
fminm.s f11, f18, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x2, 0xf53d9d31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbbfc9031 # load x3 with value 0xbbfc9031
sw x3, 0(x2) # store 0xbbfc9031 in memory
flw f19, 0(x2) # load 0xbbfc9031 from memory into f19
li x3, 0x64dd6100 # load x3 with value 0x64dd6100
sw x3, 0(x2) # store 0x64dd6100 in memory
flw f23, 0(x2) # load 0x64dd6100 from memory into f23
fminm.s f2, f19, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x11, 0xdaf08fa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x594c9ccd # load x3 with value 0x594c9ccd
sw x3, 0(x2) # store 0x594c9ccd in memory
flw f20, 0(x2) # load 0x594c9ccd from memory into f20
li x3, 0x6ff7d8ba # load x3 with value 0x6ff7d8ba
sw x3, 0(x2) # store 0x6ff7d8ba in memory
flw f14, 0(x2) # load 0x6ff7d8ba from memory into f14
fminm.s f11, f20, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x21, 0xa3c10437 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe462ddc7 # load x3 with value 0xe462ddc7
sw x3, 0(x2) # store 0xe462ddc7 in memory
flw f21, 0(x2) # load 0xe462ddc7 from memory into f21
li x3, 0x03237023 # load x3 with value 0x03237023
sw x3, 0(x2) # store 0x03237023 in memory
flw f5, 0(x2) # load 0x03237023 from memory into f5
fminm.s f21, f21, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x11, 0x50587d69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa990c666 # load x3 with value 0xa990c666
sw x3, 0(x2) # store 0xa990c666 in memory
flw f22, 0(x2) # load 0xa990c666 from memory into f22
li x3, 0x62207342 # load x3 with value 0x62207342
sw x3, 0(x2) # store 0x62207342 in memory
flw f31, 0(x2) # load 0x62207342 from memory into f31
fminm.s f11, f22, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x17, 0x8a532445 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xddce4b31 # load x3 with value 0xddce4b31
sw x3, 0(x2) # store 0xddce4b31 in memory
flw f23, 0(x2) # load 0xddce4b31 from memory into f23
li x3, 0x324d3b2f # load x3 with value 0x324d3b2f
sw x3, 0(x2) # store 0x324d3b2f in memory
flw f2, 0(x2) # load 0x324d3b2f from memory into f2
fminm.s f17, f23, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x8, 0xcbc75352 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbcd06b92 # load x3 with value 0xbcd06b92
sw x3, 0(x2) # store 0xbcd06b92 in memory
flw f24, 0(x2) # load 0xbcd06b92 from memory into f24
li x3, 0x7a10bb7f # load x3 with value 0x7a10bb7f
sw x3, 0(x2) # store 0x7a10bb7f in memory
flw f31, 0(x2) # load 0x7a10bb7f from memory into f31
fminm.s f8, f24, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x2, 0x66906c01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc89a11aa # load x3 with value 0xc89a11aa
sw x3, 0(x2) # store 0xc89a11aa in memory
flw f25, 0(x2) # load 0xc89a11aa from memory into f25
li x3, 0x1c61a274 # load x3 with value 0x1c61a274
sw x3, 0(x2) # store 0x1c61a274 in memory
flw f4, 0(x2) # load 0x1c61a274 from memory into f4
fminm.s f2, f25, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x3, 0xaf6b99d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x54665975 # load x3 with value 0x54665975
sw x3, 0(x2) # store 0x54665975 in memory
flw f26, 0(x2) # load 0x54665975 from memory into f26
li x3, 0x7738ee46 # load x3 with value 0x7738ee46
sw x3, 0(x2) # store 0x7738ee46 in memory
flw f4, 0(x2) # load 0x7738ee46 from memory into f4
fminm.s f3, f26, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x10, 0xd96f1993 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8456884e # load x3 with value 0x8456884e
sw x3, 0(x2) # store 0x8456884e in memory
flw f27, 0(x2) # load 0x8456884e from memory into f27
li x3, 0x6fa19e13 # load x3 with value 0x6fa19e13
sw x3, 0(x2) # store 0x6fa19e13 in memory
flw f30, 0(x2) # load 0x6fa19e13 from memory into f30
fminm.s f10, f27, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x6, 0xb08929ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4cc1145b # load x3 with value 0x4cc1145b
sw x3, 0(x2) # store 0x4cc1145b in memory
flw f28, 0(x2) # load 0x4cc1145b from memory into f28
li x3, 0x1ec1eed3 # load x3 with value 0x1ec1eed3
sw x3, 0(x2) # store 0x1ec1eed3 in memory
flw f16, 0(x2) # load 0x1ec1eed3 from memory into f16
fminm.s f6, f28, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x14, 0x5fa90088 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdb860e0f # load x3 with value 0xdb860e0f
sw x3, 0(x2) # store 0xdb860e0f in memory
flw f29, 0(x2) # load 0xdb860e0f from memory into f29
li x3, 0x38aa3e7f # load x3 with value 0x38aa3e7f
sw x3, 0(x2) # store 0x38aa3e7f in memory
flw f20, 0(x2) # load 0x38aa3e7f from memory into f20
fminm.s f14, f29, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x16, 0x0bb77a69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x75f69e87 # load x3 with value 0x75f69e87
sw x3, 0(x2) # store 0x75f69e87 in memory
flw f30, 0(x2) # load 0x75f69e87 from memory into f30
li x3, 0x61b8aee7 # load x3 with value 0x61b8aee7
sw x3, 0(x2) # store 0x61b8aee7 in memory
flw f24, 0(x2) # load 0x61b8aee7 from memory into f24
fminm.s f16, f30, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x3, 0x1239c5fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe10bebcf # load x3 with value 0xe10bebcf
sw x3, 0(x2) # store 0xe10bebcf in memory
flw f31, 0(x2) # load 0xe10bebcf from memory into f31
li x3, 0x485ea504 # load x3 with value 0x485ea504
sw x3, 0(x2) # store 0x485ea504 in memory
flw f29, 0(x2) # load 0x485ea504 from memory into f29
fminm.s f3, f31, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x5, 0xd40f14a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x64592ef2 # load x3 with value 0x64592ef2
sw x3, 0(x2) # store 0x64592ef2 in memory
flw f31, 0(x2) # load 0x64592ef2 from memory into f31
li x3, 0x9abf6750 # load x3 with value 0x9abf6750
sw x3, 0(x2) # store 0x9abf6750 in memory
flw f0, 0(x2) # load 0x9abf6750 from memory into f0
fminm.s f5, f31, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x24, 0x63f506d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x74ed7318 # load x3 with value 0x74ed7318
sw x3, 0(x2) # store 0x74ed7318 in memory
flw f21, 0(x2) # load 0x74ed7318 from memory into f21
li x3, 0x8993043f # load x3 with value 0x8993043f
sw x3, 0(x2) # store 0x8993043f in memory
flw f1, 0(x2) # load 0x8993043f from memory into f1
fminm.s f24, f21, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x17, 0xb5e9dec1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x25742f6e # load x3 with value 0x25742f6e
sw x3, 0(x2) # store 0x25742f6e in memory
flw f21, 0(x2) # load 0x25742f6e from memory into f21
li x3, 0x33ed08f0 # load x3 with value 0x33ed08f0
sw x3, 0(x2) # store 0x33ed08f0 in memory
flw f2, 0(x2) # load 0x33ed08f0 from memory into f2
fminm.s f17, f21, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x1, 0xc7d1d2c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x37e48100 # load x3 with value 0x37e48100
sw x3, 0(x2) # store 0x37e48100 in memory
flw f13, 0(x2) # load 0x37e48100 from memory into f13
li x3, 0xc0b9aee7 # load x3 with value 0xc0b9aee7
sw x3, 0(x2) # store 0xc0b9aee7 in memory
flw f3, 0(x2) # load 0xc0b9aee7 from memory into f3
fminm.s f1, f13, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x24, 0xeb89109e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa83e2a17 # load x3 with value 0xa83e2a17
sw x3, 0(x2) # store 0xa83e2a17 in memory
flw f21, 0(x2) # load 0xa83e2a17 from memory into f21
li x3, 0x15c6ced1 # load x3 with value 0x15c6ced1
sw x3, 0(x2) # store 0x15c6ced1 in memory
flw f4, 0(x2) # load 0x15c6ced1 from memory into f4
fminm.s f24, f21, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x20, 0xa4a40bde # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x05a90744 # load x3 with value 0x05a90744
sw x3, 0(x2) # store 0x05a90744 in memory
flw f4, 0(x2) # load 0x05a90744 from memory into f4
li x3, 0x13d91a71 # load x3 with value 0x13d91a71
sw x3, 0(x2) # store 0x13d91a71 in memory
flw f5, 0(x2) # load 0x13d91a71 from memory into f5
fminm.s f20, f4, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x8, 0x72b05ecf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb79e64a2 # load x3 with value 0xb79e64a2
sw x3, 0(x2) # store 0xb79e64a2 in memory
flw f1, 0(x2) # load 0xb79e64a2 from memory into f1
li x3, 0xd48d5d4d # load x3 with value 0xd48d5d4d
sw x3, 0(x2) # store 0xd48d5d4d in memory
flw f6, 0(x2) # load 0xd48d5d4d from memory into f6
fminm.s f8, f1, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x5, 0xbd70248b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc1f61dc0 # load x3 with value 0xc1f61dc0
sw x3, 0(x2) # store 0xc1f61dc0 in memory
flw f4, 0(x2) # load 0xc1f61dc0 from memory into f4
li x3, 0xb5a798e8 # load x3 with value 0xb5a798e8
sw x3, 0(x2) # store 0xb5a798e8 in memory
flw f7, 0(x2) # load 0xb5a798e8 from memory into f7
fminm.s f5, f4, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x24, 0x21989921 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd09ecbfa # load x3 with value 0xd09ecbfa
sw x3, 0(x2) # store 0xd09ecbfa in memory
flw f13, 0(x2) # load 0xd09ecbfa from memory into f13
li x3, 0x52f29129 # load x3 with value 0x52f29129
sw x3, 0(x2) # store 0x52f29129 in memory
flw f8, 0(x2) # load 0x52f29129 from memory into f8
fminm.s f24, f13, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x21, 0xc6f5962a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa30c3887 # load x3 with value 0xa30c3887
sw x3, 0(x2) # store 0xa30c3887 in memory
flw f22, 0(x2) # load 0xa30c3887 from memory into f22
li x3, 0xee01a336 # load x3 with value 0xee01a336
sw x3, 0(x2) # store 0xee01a336 in memory
flw f9, 0(x2) # load 0xee01a336 from memory into f9
fminm.s f21, f22, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x19, 0xbe8f6ae6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x43c9c80f # load x3 with value 0x43c9c80f
sw x3, 0(x2) # store 0x43c9c80f in memory
flw f2, 0(x2) # load 0x43c9c80f from memory into f2
li x3, 0x52eeef74 # load x3 with value 0x52eeef74
sw x3, 0(x2) # store 0x52eeef74 in memory
flw f10, 0(x2) # load 0x52eeef74 from memory into f10
fminm.s f19, f2, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x11, 0xb9fd8010 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4a6c09ae # load x3 with value 0x4a6c09ae
sw x3, 0(x2) # store 0x4a6c09ae in memory
flw f17, 0(x2) # load 0x4a6c09ae from memory into f17
li x3, 0x0710a894 # load x3 with value 0x0710a894
sw x3, 0(x2) # store 0x0710a894 in memory
flw f11, 0(x2) # load 0x0710a894 from memory into f11
fminm.s f11, f17, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x18, 0x5a1160ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xef288021 # load x3 with value 0xef288021
sw x3, 0(x2) # store 0xef288021 in memory
flw f6, 0(x2) # load 0xef288021 from memory into f6
li x3, 0xfb800f34 # load x3 with value 0xfb800f34
sw x3, 0(x2) # store 0xfb800f34 in memory
flw f12, 0(x2) # load 0xfb800f34 from memory into f12
fminm.s f18, f6, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x12, 0x7df55b3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb1909d20 # load x3 with value 0xb1909d20
sw x3, 0(x2) # store 0xb1909d20 in memory
flw f20, 0(x2) # load 0xb1909d20 from memory into f20
li x3, 0xbdf4201e # load x3 with value 0xbdf4201e
sw x3, 0(x2) # store 0xbdf4201e in memory
flw f13, 0(x2) # load 0xbdf4201e from memory into f13
fminm.s f12, f20, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x14, 0xa140f909 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x94fbcfca # load x3 with value 0x94fbcfca
sw x3, 0(x2) # store 0x94fbcfca in memory
flw f21, 0(x2) # load 0x94fbcfca from memory into f21
li x3, 0x9f804f80 # load x3 with value 0x9f804f80
sw x3, 0(x2) # store 0x9f804f80 in memory
flw f14, 0(x2) # load 0x9f804f80 from memory into f14
fminm.s f14, f21, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x11, 0x0fc74244 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x19f250d3 # load x3 with value 0x19f250d3
sw x3, 0(x2) # store 0x19f250d3 in memory
flw f3, 0(x2) # load 0x19f250d3 from memory into f3
li x3, 0x3efd2bb2 # load x3 with value 0x3efd2bb2
sw x3, 0(x2) # store 0x3efd2bb2 in memory
flw f15, 0(x2) # load 0x3efd2bb2 from memory into f15
fminm.s f11, f3, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x23, 0x2828b666 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbb5befd2 # load x3 with value 0xbb5befd2
sw x3, 0(x2) # store 0xbb5befd2 in memory
flw f17, 0(x2) # load 0xbb5befd2 from memory into f17
li x3, 0xe9bc6ff0 # load x3 with value 0xe9bc6ff0
sw x3, 0(x2) # store 0xe9bc6ff0 in memory
flw f16, 0(x2) # load 0xe9bc6ff0 from memory into f16
fminm.s f23, f17, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x12, 0x1c09e6dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9f456c33 # load x3 with value 0x9f456c33
sw x3, 0(x2) # store 0x9f456c33 in memory
flw f4, 0(x2) # load 0x9f456c33 from memory into f4
li x3, 0x2eeb7fd4 # load x3 with value 0x2eeb7fd4
sw x3, 0(x2) # store 0x2eeb7fd4 in memory
flw f17, 0(x2) # load 0x2eeb7fd4 from memory into f17
fminm.s f12, f4, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x20, 0x70721277 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x06d262a8 # load x3 with value 0x06d262a8
sw x3, 0(x2) # store 0x06d262a8 in memory
flw f23, 0(x2) # load 0x06d262a8 from memory into f23
li x3, 0x08720b20 # load x3 with value 0x08720b20
sw x3, 0(x2) # store 0x08720b20 in memory
flw f18, 0(x2) # load 0x08720b20 from memory into f18
fminm.s f20, f23, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x4, 0x5bbf4781 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xba132749 # load x3 with value 0xba132749
sw x3, 0(x2) # store 0xba132749 in memory
flw f27, 0(x2) # load 0xba132749 from memory into f27
li x3, 0x6fc57778 # load x3 with value 0x6fc57778
sw x3, 0(x2) # store 0x6fc57778 in memory
flw f19, 0(x2) # load 0x6fc57778 from memory into f19
fminm.s f4, f27, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x18, 0x3452208c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x11efd0d2 # load x3 with value 0x11efd0d2
sw x3, 0(x2) # store 0x11efd0d2 in memory
flw f19, 0(x2) # load 0x11efd0d2 from memory into f19
li x3, 0x920db5c7 # load x3 with value 0x920db5c7
sw x3, 0(x2) # store 0x920db5c7 in memory
flw f20, 0(x2) # load 0x920db5c7 from memory into f20
fminm.s f18, f19, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x2, 0x4a287ed2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4b597389 # load x3 with value 0x4b597389
sw x3, 0(x2) # store 0x4b597389 in memory
flw f31, 0(x2) # load 0x4b597389 from memory into f31
li x3, 0x5c0564ca # load x3 with value 0x5c0564ca
sw x3, 0(x2) # store 0x5c0564ca in memory
flw f21, 0(x2) # load 0x5c0564ca from memory into f21
fminm.s f2, f31, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x13, 0x879a689f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4ec610e9 # load x3 with value 0x4ec610e9
sw x3, 0(x2) # store 0x4ec610e9 in memory
flw f30, 0(x2) # load 0x4ec610e9 from memory into f30
li x3, 0x70f8d55f # load x3 with value 0x70f8d55f
sw x3, 0(x2) # store 0x70f8d55f in memory
flw f22, 0(x2) # load 0x70f8d55f from memory into f22
fminm.s f13, f30, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x1, 0x659ba3ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x71af7319 # load x3 with value 0x71af7319
sw x3, 0(x2) # store 0x71af7319 in memory
flw f15, 0(x2) # load 0x71af7319 from memory into f15
li x3, 0x5cdef321 # load x3 with value 0x5cdef321
sw x3, 0(x2) # store 0x5cdef321 in memory
flw f23, 0(x2) # load 0x5cdef321 from memory into f23
fminm.s f1, f15, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x16, 0x333ab52a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2a152b8d # load x3 with value 0x2a152b8d
sw x3, 0(x2) # store 0x2a152b8d in memory
flw f9, 0(x2) # load 0x2a152b8d from memory into f9
li x3, 0x0ea3b12b # load x3 with value 0x0ea3b12b
sw x3, 0(x2) # store 0x0ea3b12b in memory
flw f24, 0(x2) # load 0x0ea3b12b from memory into f24
fminm.s f16, f9, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x8, 0x1872f549 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5e069dfd # load x3 with value 0x5e069dfd
sw x3, 0(x2) # store 0x5e069dfd in memory
flw f18, 0(x2) # load 0x5e069dfd from memory into f18
li x3, 0xd992d0f7 # load x3 with value 0xd992d0f7
sw x3, 0(x2) # store 0xd992d0f7 in memory
flw f25, 0(x2) # load 0xd992d0f7 from memory into f25
fminm.s f8, f18, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x22, 0x29e2b1e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2d039876 # load x3 with value 0x2d039876
sw x3, 0(x2) # store 0x2d039876 in memory
flw f20, 0(x2) # load 0x2d039876 from memory into f20
li x3, 0x501a8d23 # load x3 with value 0x501a8d23
sw x3, 0(x2) # store 0x501a8d23 in memory
flw f26, 0(x2) # load 0x501a8d23 from memory into f26
fminm.s f22, f20, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x5, 0x124443d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa0084059 # load x3 with value 0xa0084059
sw x3, 0(x2) # store 0xa0084059 in memory
flw f31, 0(x2) # load 0xa0084059 from memory into f31
li x3, 0xf7ec6801 # load x3 with value 0xf7ec6801
sw x3, 0(x2) # store 0xf7ec6801 in memory
flw f27, 0(x2) # load 0xf7ec6801 from memory into f27
fminm.s f5, f31, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x9, 0x78b1844b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb21a03a2 # load x3 with value 0xb21a03a2
sw x3, 0(x2) # store 0xb21a03a2 in memory
flw f5, 0(x2) # load 0xb21a03a2 from memory into f5
li x3, 0x341bdeb1 # load x3 with value 0x341bdeb1
sw x3, 0(x2) # store 0x341bdeb1 in memory
flw f28, 0(x2) # load 0x341bdeb1 from memory into f28
fminm.s f9, f5, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x1, 0xba4e3bd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xefd6e814 # load x3 with value 0xefd6e814
sw x3, 0(x2) # store 0xefd6e814 in memory
flw f2, 0(x2) # load 0xefd6e814 from memory into f2
li x3, 0x244c00e6 # load x3 with value 0x244c00e6
sw x3, 0(x2) # store 0x244c00e6 in memory
flw f29, 0(x2) # load 0x244c00e6 from memory into f29
fminm.s f1, f2, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x31, 0xfeca7f07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xea3e7897 # load x3 with value 0xea3e7897
sw x3, 0(x2) # store 0xea3e7897 in memory
flw f27, 0(x2) # load 0xea3e7897 from memory into f27
li x3, 0xaed861c7 # load x3 with value 0xaed861c7
sw x3, 0(x2) # store 0xaed861c7 in memory
flw f30, 0(x2) # load 0xaed861c7 from memory into f30
fminm.s f31, f27, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x17, 0xb5196430 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb6aed6bc # load x3 with value 0xb6aed6bc
sw x3, 0(x2) # store 0xb6aed6bc in memory
flw f7, 0(x2) # load 0xb6aed6bc from memory into f7
li x3, 0xa895c6f7 # load x3 with value 0xa895c6f7
sw x3, 0(x2) # store 0xa895c6f7 in memory
flw f31, 0(x2) # load 0xa895c6f7 from memory into f31
fminm.s f17, f7, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
