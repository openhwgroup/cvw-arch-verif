///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zfh//WALLY-COV-fadd.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.024741
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
fadd.h f20, f26, f29 # perform first operation
fadd.h f15, f20, f8 # perform second operation

# Testcase cmp_gpr_hazard raw test
fadd.h f23, f4, f17 # perform first operation
fadd.h f22, f31, f23 # perform second operation

# Testcase cmp_gpr_hazard waw test
fadd.h f3, f6, f1 # perform first operation
fadd.h f3, f13, f22 # perform second operation

# Testcase cmp_gpr_hazard waw test
fadd.h f21, f9, f2 # perform first operation
fadd.h f21, f26, f31 # perform second operation

# Testcase cmp_gpr_hazard war test
fadd.h f1, f18, f26 # perform first operation
fadd.h f18, f10, f2 # perform second operation

# Testcase cmp_gpr_hazard war test
fadd.h f15, f6, f27 # perform first operation
fadd.h f27, f18, f1 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0xfb22369ff2c98978 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdc1cd6595bd7f4c0 # load x3 with value 0xdc1cd6595bd7f4c0
sw x3, 0(x2) # store 0xdc1cd6595bd7f4c0 in memory
flh f0, 0(x2) # load 0xdc1cd6595bd7f4c0 from memory into f0
li x3, 0xbfb8e0dd5173be4c # load x3 with value 0xbfb8e0dd5173be4c
sw x3, 0(x2) # store 0xbfb8e0dd5173be4c in memory
flh f6, 0(x2) # load 0xbfb8e0dd5173be4c from memory into f6
fadd.h f0, f0, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0xb1e64e2cb4c99706 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x407388c240ce4a0e # load x3 with value 0x407388c240ce4a0e
sw x3, 0(x2) # store 0x407388c240ce4a0e in memory
flh f1, 0(x2) # load 0x407388c240ce4a0e from memory into f1
li x3, 0x1a3933087684c55a # load x3 with value 0x1a3933087684c55a
sw x3, 0(x2) # store 0x1a3933087684c55a in memory
flh f30, 0(x2) # load 0x1a3933087684c55a from memory into f30
fadd.h f1, f1, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0xb41d8b1e06e72d61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe4ea82264c589a34 # load x3 with value 0xe4ea82264c589a34
sw x3, 0(x2) # store 0xe4ea82264c589a34 in memory
flh f2, 0(x2) # load 0xe4ea82264c589a34 from memory into f2
li x3, 0x47dd4a9f3ab3e53e # load x3 with value 0x47dd4a9f3ab3e53e
sw x3, 0(x2) # store 0x47dd4a9f3ab3e53e in memory
flh f10, 0(x2) # load 0x47dd4a9f3ab3e53e from memory into f10
fadd.h f2, f2, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0xdd0864550c0a1d5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x54a0a1c701e6e37f # load x3 with value 0x54a0a1c701e6e37f
sw x3, 0(x2) # store 0x54a0a1c701e6e37f in memory
flh f3, 0(x2) # load 0x54a0a1c701e6e37f from memory into f3
li x3, 0xdb26857593e2f461 # load x3 with value 0xdb26857593e2f461
sw x3, 0(x2) # store 0xdb26857593e2f461 in memory
flh f22, 0(x2) # load 0xdb26857593e2f461 from memory into f22
fadd.h f3, f3, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0x14b197afb25b0397 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x91814efe73622642 # load x3 with value 0x91814efe73622642
sw x3, 0(x2) # store 0x91814efe73622642 in memory
flh f4, 0(x2) # load 0x91814efe73622642 from memory into f4
li x3, 0x26207fb7f887fc36 # load x3 with value 0x26207fb7f887fc36
sw x3, 0(x2) # store 0x26207fb7f887fc36 in memory
flh f2, 0(x2) # load 0x26207fb7f887fc36 from memory into f2
fadd.h f4, f4, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0x01804cdac243536d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcd3b9a67a730d195 # load x3 with value 0xcd3b9a67a730d195
sw x3, 0(x2) # store 0xcd3b9a67a730d195 in memory
flh f5, 0(x2) # load 0xcd3b9a67a730d195 from memory into f5
li x3, 0x935dbeebf0b0ea53 # load x3 with value 0x935dbeebf0b0ea53
sw x3, 0(x2) # store 0x935dbeebf0b0ea53 in memory
flh f26, 0(x2) # load 0x935dbeebf0b0ea53 from memory into f26
fadd.h f5, f5, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0x591da2311b2f2330 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4cb780e35685d972 # load x3 with value 0x4cb780e35685d972
sw x3, 0(x2) # store 0x4cb780e35685d972 in memory
flh f6, 0(x2) # load 0x4cb780e35685d972 from memory into f6
li x3, 0x2598dbe6562a3b34 # load x3 with value 0x2598dbe6562a3b34
sw x3, 0(x2) # store 0x2598dbe6562a3b34 in memory
flh f16, 0(x2) # load 0x2598dbe6562a3b34 from memory into f16
fadd.h f6, f6, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0x2c54d64a9d9d8252 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3c9550f0e2b79e57 # load x3 with value 0x3c9550f0e2b79e57
sw x3, 0(x2) # store 0x3c9550f0e2b79e57 in memory
flh f7, 0(x2) # load 0x3c9550f0e2b79e57 from memory into f7
li x3, 0x5abbfb6b441b083a # load x3 with value 0x5abbfb6b441b083a
sw x3, 0(x2) # store 0x5abbfb6b441b083a in memory
flh f30, 0(x2) # load 0x5abbfb6b441b083a from memory into f30
fadd.h f7, f7, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0xa831adeb2a8a0edd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3510f77927ff0d2c # load x3 with value 0x3510f77927ff0d2c
sw x3, 0(x2) # store 0x3510f77927ff0d2c in memory
flh f8, 0(x2) # load 0x3510f77927ff0d2c from memory into f8
li x3, 0xdd1788744cf6439c # load x3 with value 0xdd1788744cf6439c
sw x3, 0(x2) # store 0xdd1788744cf6439c in memory
flh f19, 0(x2) # load 0xdd1788744cf6439c from memory into f19
fadd.h f8, f8, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0x2ba97d706e3effae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x12b890ffbbf581e7 # load x3 with value 0x12b890ffbbf581e7
sw x3, 0(x2) # store 0x12b890ffbbf581e7 in memory
flh f9, 0(x2) # load 0x12b890ffbbf581e7 from memory into f9
li x3, 0x13220f932266ce11 # load x3 with value 0x13220f932266ce11
sw x3, 0(x2) # store 0x13220f932266ce11 in memory
flh f27, 0(x2) # load 0x13220f932266ce11 from memory into f27
fadd.h f9, f9, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0x32295ceb7d3897f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdf13d6189c87058d # load x3 with value 0xdf13d6189c87058d
sw x3, 0(x2) # store 0xdf13d6189c87058d in memory
flh f10, 0(x2) # load 0xdf13d6189c87058d from memory into f10
li x3, 0x31d22c6fc35e0b56 # load x3 with value 0x31d22c6fc35e0b56
sw x3, 0(x2) # store 0x31d22c6fc35e0b56 in memory
flh f8, 0(x2) # load 0x31d22c6fc35e0b56 from memory into f8
fadd.h f10, f10, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0xed7d8fa67327f554 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x984cca47eb9befe0 # load x3 with value 0x984cca47eb9befe0
sw x3, 0(x2) # store 0x984cca47eb9befe0 in memory
flh f11, 0(x2) # load 0x984cca47eb9befe0 from memory into f11
li x3, 0x8ede4b5559877e76 # load x3 with value 0x8ede4b5559877e76
sw x3, 0(x2) # store 0x8ede4b5559877e76 in memory
flh f23, 0(x2) # load 0x8ede4b5559877e76 from memory into f23
fadd.h f11, f11, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0x893591ed2325f7d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7034fcd3ff16cb0f # load x3 with value 0x7034fcd3ff16cb0f
sw x3, 0(x2) # store 0x7034fcd3ff16cb0f in memory
flh f12, 0(x2) # load 0x7034fcd3ff16cb0f from memory into f12
li x3, 0xcf1f9b75eb8a8aa4 # load x3 with value 0xcf1f9b75eb8a8aa4
sw x3, 0(x2) # store 0xcf1f9b75eb8a8aa4 in memory
flh f25, 0(x2) # load 0xcf1f9b75eb8a8aa4 from memory into f25
fadd.h f12, f12, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0xb6a2179e205d54f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd60e54f615959e77 # load x3 with value 0xd60e54f615959e77
sw x3, 0(x2) # store 0xd60e54f615959e77 in memory
flh f13, 0(x2) # load 0xd60e54f615959e77 from memory into f13
li x3, 0x653e76a27f3dcde9 # load x3 with value 0x653e76a27f3dcde9
sw x3, 0(x2) # store 0x653e76a27f3dcde9 in memory
flh f31, 0(x2) # load 0x653e76a27f3dcde9 from memory into f31
fadd.h f13, f13, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0xda517b4b12afc652 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x13b584c91ec8473e # load x3 with value 0x13b584c91ec8473e
sw x3, 0(x2) # store 0x13b584c91ec8473e in memory
flh f14, 0(x2) # load 0x13b584c91ec8473e from memory into f14
li x3, 0xe5b1ce7ece4a44b5 # load x3 with value 0xe5b1ce7ece4a44b5
sw x3, 0(x2) # store 0xe5b1ce7ece4a44b5 in memory
flh f6, 0(x2) # load 0xe5b1ce7ece4a44b5 from memory into f6
fadd.h f14, f14, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0xba02ef68e3b5439c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2a0c8ec055563577 # load x3 with value 0x2a0c8ec055563577
sw x3, 0(x2) # store 0x2a0c8ec055563577 in memory
flh f15, 0(x2) # load 0x2a0c8ec055563577 from memory into f15
li x3, 0x825e49ba6874defd # load x3 with value 0x825e49ba6874defd
sw x3, 0(x2) # store 0x825e49ba6874defd in memory
flh f9, 0(x2) # load 0x825e49ba6874defd from memory into f9
fadd.h f15, f15, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0xddbdc1f3e64d1b90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x87dc6fcc664e9a95 # load x3 with value 0x87dc6fcc664e9a95
sw x3, 0(x2) # store 0x87dc6fcc664e9a95 in memory
flh f16, 0(x2) # load 0x87dc6fcc664e9a95 from memory into f16
li x3, 0x58a9826cb88d385e # load x3 with value 0x58a9826cb88d385e
sw x3, 0(x2) # store 0x58a9826cb88d385e in memory
flh f4, 0(x2) # load 0x58a9826cb88d385e from memory into f4
fadd.h f16, f16, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0x2730738a65fb5992 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x756f1e479cfac34b # load x3 with value 0x756f1e479cfac34b
sw x3, 0(x2) # store 0x756f1e479cfac34b in memory
flh f17, 0(x2) # load 0x756f1e479cfac34b from memory into f17
li x3, 0x562720c4cb001e91 # load x3 with value 0x562720c4cb001e91
sw x3, 0(x2) # store 0x562720c4cb001e91 in memory
flh f20, 0(x2) # load 0x562720c4cb001e91 from memory into f20
fadd.h f17, f17, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0xdab64593a7129759 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa7e0ac675ba2eac6 # load x3 with value 0xa7e0ac675ba2eac6
sw x3, 0(x2) # store 0xa7e0ac675ba2eac6 in memory
flh f18, 0(x2) # load 0xa7e0ac675ba2eac6 from memory into f18
li x3, 0xce8635a7d9b93148 # load x3 with value 0xce8635a7d9b93148
sw x3, 0(x2) # store 0xce8635a7d9b93148 in memory
flh f2, 0(x2) # load 0xce8635a7d9b93148 from memory into f2
fadd.h f18, f18, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0xd1daaf3c6ecc5a54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdce23d02d618941c # load x3 with value 0xdce23d02d618941c
sw x3, 0(x2) # store 0xdce23d02d618941c in memory
flh f19, 0(x2) # load 0xdce23d02d618941c from memory into f19
li x3, 0xe18c5f40118f3c6e # load x3 with value 0xe18c5f40118f3c6e
sw x3, 0(x2) # store 0xe18c5f40118f3c6e in memory
flh f11, 0(x2) # load 0xe18c5f40118f3c6e from memory into f11
fadd.h f19, f19, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0x87428e4b86c6c778 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdddda00c692a0df0 # load x3 with value 0xdddda00c692a0df0
sw x3, 0(x2) # store 0xdddda00c692a0df0 in memory
flh f20, 0(x2) # load 0xdddda00c692a0df0 from memory into f20
li x3, 0x6818f40b524bab9f # load x3 with value 0x6818f40b524bab9f
sw x3, 0(x2) # store 0x6818f40b524bab9f in memory
flh f14, 0(x2) # load 0x6818f40b524bab9f from memory into f14
fadd.h f20, f20, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0xe16c801f89bab89b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6683744ff56d3890 # load x3 with value 0x6683744ff56d3890
sw x3, 0(x2) # store 0x6683744ff56d3890 in memory
flh f21, 0(x2) # load 0x6683744ff56d3890 from memory into f21
li x3, 0xf29e3195dc86c80b # load x3 with value 0xf29e3195dc86c80b
sw x3, 0(x2) # store 0xf29e3195dc86c80b in memory
flh f12, 0(x2) # load 0xf29e3195dc86c80b from memory into f12
fadd.h f21, f21, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0x70c17a36b56eb48d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc211a57b0220d869 # load x3 with value 0xc211a57b0220d869
sw x3, 0(x2) # store 0xc211a57b0220d869 in memory
flh f22, 0(x2) # load 0xc211a57b0220d869 from memory into f22
li x3, 0x65635fb58fe63984 # load x3 with value 0x65635fb58fe63984
sw x3, 0(x2) # store 0x65635fb58fe63984 in memory
flh f15, 0(x2) # load 0x65635fb58fe63984 from memory into f15
fadd.h f22, f22, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0x5bb0d52cdbbac3ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe6b574f2c0ff7dfe # load x3 with value 0xe6b574f2c0ff7dfe
sw x3, 0(x2) # store 0xe6b574f2c0ff7dfe in memory
flh f23, 0(x2) # load 0xe6b574f2c0ff7dfe from memory into f23
li x3, 0x16693d0d6ba7cbed # load x3 with value 0x16693d0d6ba7cbed
sw x3, 0(x2) # store 0x16693d0d6ba7cbed in memory
flh f8, 0(x2) # load 0x16693d0d6ba7cbed from memory into f8
fadd.h f23, f23, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0x53f3adbd84e7c18d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8456e696a7cc28c9 # load x3 with value 0x8456e696a7cc28c9
sw x3, 0(x2) # store 0x8456e696a7cc28c9 in memory
flh f24, 0(x2) # load 0x8456e696a7cc28c9 from memory into f24
li x3, 0xc1252721fe705890 # load x3 with value 0xc1252721fe705890
sw x3, 0(x2) # store 0xc1252721fe705890 in memory
flh f15, 0(x2) # load 0xc1252721fe705890 from memory into f15
fadd.h f24, f24, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0x8f968418b5d3d9ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8329aaea1afa49b0 # load x3 with value 0x8329aaea1afa49b0
sw x3, 0(x2) # store 0x8329aaea1afa49b0 in memory
flh f25, 0(x2) # load 0x8329aaea1afa49b0 from memory into f25
li x3, 0xe86c0d9d495635b2 # load x3 with value 0xe86c0d9d495635b2
sw x3, 0(x2) # store 0xe86c0d9d495635b2 in memory
flh f4, 0(x2) # load 0xe86c0d9d495635b2 from memory into f4
fadd.h f25, f25, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0xc334cd33098113bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd1cb769349b470da # load x3 with value 0xd1cb769349b470da
sw x3, 0(x2) # store 0xd1cb769349b470da in memory
flh f26, 0(x2) # load 0xd1cb769349b470da from memory into f26
li x3, 0xee1cbc6784bf4230 # load x3 with value 0xee1cbc6784bf4230
sw x3, 0(x2) # store 0xee1cbc6784bf4230 in memory
flh f11, 0(x2) # load 0xee1cbc6784bf4230 from memory into f11
fadd.h f26, f26, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0x955c5a5d30845902 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x951fc33a777d7c6f # load x3 with value 0x951fc33a777d7c6f
sw x3, 0(x2) # store 0x951fc33a777d7c6f in memory
flh f27, 0(x2) # load 0x951fc33a777d7c6f from memory into f27
li x3, 0xa8d4ef58b6610bbf # load x3 with value 0xa8d4ef58b6610bbf
sw x3, 0(x2) # store 0xa8d4ef58b6610bbf in memory
flh f28, 0(x2) # load 0xa8d4ef58b6610bbf from memory into f28
fadd.h f27, f27, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0x079f97ecf4067a6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe0b02214155628a6 # load x3 with value 0xe0b02214155628a6
sw x3, 0(x2) # store 0xe0b02214155628a6 in memory
flh f28, 0(x2) # load 0xe0b02214155628a6 from memory into f28
li x3, 0x62973c4a0f3d6c5f # load x3 with value 0x62973c4a0f3d6c5f
sw x3, 0(x2) # store 0x62973c4a0f3d6c5f in memory
flh f1, 0(x2) # load 0x62973c4a0f3d6c5f from memory into f1
fadd.h f28, f28, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0x41c7099bb7a2b795 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3845f12d02cdf959 # load x3 with value 0x3845f12d02cdf959
sw x3, 0(x2) # store 0x3845f12d02cdf959 in memory
flh f29, 0(x2) # load 0x3845f12d02cdf959 from memory into f29
li x3, 0x929c81fb0d57bcb4 # load x3 with value 0x929c81fb0d57bcb4
sw x3, 0(x2) # store 0x929c81fb0d57bcb4 in memory
flh f18, 0(x2) # load 0x929c81fb0d57bcb4 from memory into f18
fadd.h f29, f29, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0xd419e61513f867f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x32f5ca3ed44e3b0c # load x3 with value 0x32f5ca3ed44e3b0c
sw x3, 0(x2) # store 0x32f5ca3ed44e3b0c in memory
flh f30, 0(x2) # load 0x32f5ca3ed44e3b0c from memory into f30
li x3, 0xfe20f0504f687150 # load x3 with value 0xfe20f0504f687150
sw x3, 0(x2) # store 0xfe20f0504f687150 in memory
flh f18, 0(x2) # load 0xfe20f0504f687150 from memory into f18
fadd.h f30, f30, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0xc895add715eb9edc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdd333a5a2d322ef4 # load x3 with value 0xdd333a5a2d322ef4
sw x3, 0(x2) # store 0xdd333a5a2d322ef4 in memory
flh f31, 0(x2) # load 0xdd333a5a2d322ef4 from memory into f31
li x3, 0x27039b20bd3fa126 # load x3 with value 0x27039b20bd3fa126
sw x3, 0(x2) # store 0x27039b20bd3fa126 in memory
flh f25, 0(x2) # load 0x27039b20bd3fa126 from memory into f25
fadd.h f31, f31, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
li x0, 0x7439c3d0a52bdaa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3549a11c600c426b # load x3 with value 0x3549a11c600c426b
sw x3, 0(x2) # store 0x3549a11c600c426b in memory
flh f3, 0(x2) # load 0x3549a11c600c426b from memory into f3
li x3, 0x6a34980f88206fd3 # load x3 with value 0x6a34980f88206fd3
sw x3, 0(x2) # store 0x6a34980f88206fd3 in memory
flh f0, 0(x2) # load 0x6a34980f88206fd3 from memory into f0
fadd.h f0, f3, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
li x1, 0x31e0eb590874feef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf87cc17d6fcaa15c # load x3 with value 0xf87cc17d6fcaa15c
sw x3, 0(x2) # store 0xf87cc17d6fcaa15c in memory
flh f19, 0(x2) # load 0xf87cc17d6fcaa15c from memory into f19
li x3, 0xb575749580d86da1 # load x3 with value 0xb575749580d86da1
sw x3, 0(x2) # store 0xb575749580d86da1 in memory
flh f1, 0(x2) # load 0xb575749580d86da1 from memory into f1
fadd.h f1, f19, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
li x2, 0xa4631f09cf121530 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe6b26713110a6a87 # load x3 with value 0xe6b26713110a6a87
sw x3, 0(x2) # store 0xe6b26713110a6a87 in memory
flh f31, 0(x2) # load 0xe6b26713110a6a87 from memory into f31
li x3, 0xe18ca521429717d # load x3 with value 0xe18ca521429717d
sw x3, 0(x2) # store 0xe18ca521429717d in memory
flh f2, 0(x2) # load 0xe18ca521429717d from memory into f2
fadd.h f2, f31, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
li x3, 0x7de4d6b006cf660c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf534f107a827ce43 # load x3 with value 0xf534f107a827ce43
sw x3, 0(x2) # store 0xf534f107a827ce43 in memory
flh f23, 0(x2) # load 0xf534f107a827ce43 from memory into f23
li x3, 0xdafc049b48a8586 # load x3 with value 0xdafc049b48a8586
sw x3, 0(x2) # store 0xdafc049b48a8586 in memory
flh f3, 0(x2) # load 0xdafc049b48a8586 from memory into f3
fadd.h f3, f23, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
li x4, 0xb0d17ce8786da408 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x23a7f9c1497a169e # load x3 with value 0x23a7f9c1497a169e
sw x3, 0(x2) # store 0x23a7f9c1497a169e in memory
flh f31, 0(x2) # load 0x23a7f9c1497a169e from memory into f31
li x3, 0xccf7ead9c4541f22 # load x3 with value 0xccf7ead9c4541f22
sw x3, 0(x2) # store 0xccf7ead9c4541f22 in memory
flh f4, 0(x2) # load 0xccf7ead9c4541f22 from memory into f4
fadd.h f4, f31, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
li x5, 0xd5631fa95ef3ee2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe1d42a0d38e6cd3 # load x3 with value 0xe1d42a0d38e6cd3
sw x3, 0(x2) # store 0xe1d42a0d38e6cd3 in memory
flh f2, 0(x2) # load 0xe1d42a0d38e6cd3 from memory into f2
li x3, 0x37ea8fbe8acc0d5b # load x3 with value 0x37ea8fbe8acc0d5b
sw x3, 0(x2) # store 0x37ea8fbe8acc0d5b in memory
flh f5, 0(x2) # load 0x37ea8fbe8acc0d5b from memory into f5
fadd.h f5, f2, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
li x6, 0xe3aabc7cf0494359 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x93ee81ae76396f54 # load x3 with value 0x93ee81ae76396f54
sw x3, 0(x2) # store 0x93ee81ae76396f54 in memory
flh f20, 0(x2) # load 0x93ee81ae76396f54 from memory into f20
li x3, 0x3613e4952faeca35 # load x3 with value 0x3613e4952faeca35
sw x3, 0(x2) # store 0x3613e4952faeca35 in memory
flh f6, 0(x2) # load 0x3613e4952faeca35 from memory into f6
fadd.h f6, f20, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
li x7, 0xe48a2d82ce0c364e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeadaa00fb92cc8b4 # load x3 with value 0xeadaa00fb92cc8b4
sw x3, 0(x2) # store 0xeadaa00fb92cc8b4 in memory
flh f13, 0(x2) # load 0xeadaa00fb92cc8b4 from memory into f13
li x3, 0x8d0e2e20d5e6a083 # load x3 with value 0x8d0e2e20d5e6a083
sw x3, 0(x2) # store 0x8d0e2e20d5e6a083 in memory
flh f7, 0(x2) # load 0x8d0e2e20d5e6a083 from memory into f7
fadd.h f7, f13, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
li x8, 0x0519bea2d0ac7d8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2ee3bc8a0b975846 # load x3 with value 0x2ee3bc8a0b975846
sw x3, 0(x2) # store 0x2ee3bc8a0b975846 in memory
flh f13, 0(x2) # load 0x2ee3bc8a0b975846 from memory into f13
li x3, 0x153627547e90b36a # load x3 with value 0x153627547e90b36a
sw x3, 0(x2) # store 0x153627547e90b36a in memory
flh f8, 0(x2) # load 0x153627547e90b36a from memory into f8
fadd.h f8, f13, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
li x9, 0xb40eb778a5112821 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1a20b8a975ca255f # load x3 with value 0x1a20b8a975ca255f
sw x3, 0(x2) # store 0x1a20b8a975ca255f in memory
flh f18, 0(x2) # load 0x1a20b8a975ca255f from memory into f18
li x3, 0x73f9f211586a9239 # load x3 with value 0x73f9f211586a9239
sw x3, 0(x2) # store 0x73f9f211586a9239 in memory
flh f9, 0(x2) # load 0x73f9f211586a9239 from memory into f9
fadd.h f9, f18, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
li x10, 0xced3556fd799edc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe63eb8dfba7d18f1 # load x3 with value 0xe63eb8dfba7d18f1
sw x3, 0(x2) # store 0xe63eb8dfba7d18f1 in memory
flh f6, 0(x2) # load 0xe63eb8dfba7d18f1 from memory into f6
li x3, 0x4c8c9c6a5043315e # load x3 with value 0x4c8c9c6a5043315e
sw x3, 0(x2) # store 0x4c8c9c6a5043315e in memory
flh f10, 0(x2) # load 0x4c8c9c6a5043315e from memory into f10
fadd.h f10, f6, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
li x11, 0xc0248b3c2eb41c9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9d0e84f39e62c8fb # load x3 with value 0x9d0e84f39e62c8fb
sw x3, 0(x2) # store 0x9d0e84f39e62c8fb in memory
flh f24, 0(x2) # load 0x9d0e84f39e62c8fb from memory into f24
li x3, 0x9ab939828f9b0eef # load x3 with value 0x9ab939828f9b0eef
sw x3, 0(x2) # store 0x9ab939828f9b0eef in memory
flh f11, 0(x2) # load 0x9ab939828f9b0eef from memory into f11
fadd.h f11, f24, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
li x12, 0xbd9c51231c93157d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd024b7d69bc1815f # load x3 with value 0xd024b7d69bc1815f
sw x3, 0(x2) # store 0xd024b7d69bc1815f in memory
flh f7, 0(x2) # load 0xd024b7d69bc1815f from memory into f7
li x3, 0x6aeb6dc706474287 # load x3 with value 0x6aeb6dc706474287
sw x3, 0(x2) # store 0x6aeb6dc706474287 in memory
flh f12, 0(x2) # load 0x6aeb6dc706474287 from memory into f12
fadd.h f12, f7, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
li x13, 0xcc413d04b03f3f81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfb63410c20aace7c # load x3 with value 0xfb63410c20aace7c
sw x3, 0(x2) # store 0xfb63410c20aace7c in memory
flh f29, 0(x2) # load 0xfb63410c20aace7c from memory into f29
li x3, 0xbc7571cbeb72cccc # load x3 with value 0xbc7571cbeb72cccc
sw x3, 0(x2) # store 0xbc7571cbeb72cccc in memory
flh f13, 0(x2) # load 0xbc7571cbeb72cccc from memory into f13
fadd.h f13, f29, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
li x14, 0xc8208ebc1ad2b2cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x70aad886fcb30ced # load x3 with value 0x70aad886fcb30ced
sw x3, 0(x2) # store 0x70aad886fcb30ced in memory
flh f18, 0(x2) # load 0x70aad886fcb30ced from memory into f18
li x3, 0x3213fa0cb1f72ccd # load x3 with value 0x3213fa0cb1f72ccd
sw x3, 0(x2) # store 0x3213fa0cb1f72ccd in memory
flh f14, 0(x2) # load 0x3213fa0cb1f72ccd from memory into f14
fadd.h f14, f18, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
li x15, 0x8aaa0f7943137cff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x95368e62ec2d4162 # load x3 with value 0x95368e62ec2d4162
sw x3, 0(x2) # store 0x95368e62ec2d4162 in memory
flh f30, 0(x2) # load 0x95368e62ec2d4162 from memory into f30
li x3, 0x84569ef6a7b4709f # load x3 with value 0x84569ef6a7b4709f
sw x3, 0(x2) # store 0x84569ef6a7b4709f in memory
flh f15, 0(x2) # load 0x84569ef6a7b4709f from memory into f15
fadd.h f15, f30, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
li x16, 0x5e115464fe0f9f16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8aa0b6849ab2b814 # load x3 with value 0x8aa0b6849ab2b814
sw x3, 0(x2) # store 0x8aa0b6849ab2b814 in memory
flh f20, 0(x2) # load 0x8aa0b6849ab2b814 from memory into f20
li x3, 0x92bfe159fdc5b962 # load x3 with value 0x92bfe159fdc5b962
sw x3, 0(x2) # store 0x92bfe159fdc5b962 in memory
flh f16, 0(x2) # load 0x92bfe159fdc5b962 from memory into f16
fadd.h f16, f20, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
li x17, 0x14ea6d98cf08f4f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7c222d2169cc5d07 # load x3 with value 0x7c222d2169cc5d07
sw x3, 0(x2) # store 0x7c222d2169cc5d07 in memory
flh f2, 0(x2) # load 0x7c222d2169cc5d07 from memory into f2
li x3, 0x8e65fbf2f240aaa7 # load x3 with value 0x8e65fbf2f240aaa7
sw x3, 0(x2) # store 0x8e65fbf2f240aaa7 in memory
flh f17, 0(x2) # load 0x8e65fbf2f240aaa7 from memory into f17
fadd.h f17, f2, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
li x18, 0x71ee78928c5bc8c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa9e6976d6806de7 # load x3 with value 0xa9e6976d6806de7
sw x3, 0(x2) # store 0xa9e6976d6806de7 in memory
flh f14, 0(x2) # load 0xa9e6976d6806de7 from memory into f14
li x3, 0x65631782dd45ff6f # load x3 with value 0x65631782dd45ff6f
sw x3, 0(x2) # store 0x65631782dd45ff6f in memory
flh f18, 0(x2) # load 0x65631782dd45ff6f from memory into f18
fadd.h f18, f14, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
li x19, 0x3a9cfef6d7bcba94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4101df3732bbd2d5 # load x3 with value 0x4101df3732bbd2d5
sw x3, 0(x2) # store 0x4101df3732bbd2d5 in memory
flh f28, 0(x2) # load 0x4101df3732bbd2d5 from memory into f28
li x3, 0x1b1dac1dd026eec7 # load x3 with value 0x1b1dac1dd026eec7
sw x3, 0(x2) # store 0x1b1dac1dd026eec7 in memory
flh f19, 0(x2) # load 0x1b1dac1dd026eec7 from memory into f19
fadd.h f19, f28, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
li x20, 0x1e9535c76505e5eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd7aac3229ef67736 # load x3 with value 0xd7aac3229ef67736
sw x3, 0(x2) # store 0xd7aac3229ef67736 in memory
flh f12, 0(x2) # load 0xd7aac3229ef67736 from memory into f12
li x3, 0x33722ff370814c0c # load x3 with value 0x33722ff370814c0c
sw x3, 0(x2) # store 0x33722ff370814c0c in memory
flh f20, 0(x2) # load 0x33722ff370814c0c from memory into f20
fadd.h f20, f12, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
li x21, 0x0c6d3d4b61aa7d28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x227e833a09cea671 # load x3 with value 0x227e833a09cea671
sw x3, 0(x2) # store 0x227e833a09cea671 in memory
flh f9, 0(x2) # load 0x227e833a09cea671 from memory into f9
li x3, 0x55a111baf245cbe8 # load x3 with value 0x55a111baf245cbe8
sw x3, 0(x2) # store 0x55a111baf245cbe8 in memory
flh f21, 0(x2) # load 0x55a111baf245cbe8 from memory into f21
fadd.h f21, f9, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
li x22, 0x388f3142af318468 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x536e0fdd84966532 # load x3 with value 0x536e0fdd84966532
sw x3, 0(x2) # store 0x536e0fdd84966532 in memory
flh f5, 0(x2) # load 0x536e0fdd84966532 from memory into f5
li x3, 0x100067ca829476c1 # load x3 with value 0x100067ca829476c1
sw x3, 0(x2) # store 0x100067ca829476c1 in memory
flh f22, 0(x2) # load 0x100067ca829476c1 from memory into f22
fadd.h f22, f5, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
li x23, 0x925f706758cbf6a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4197c96044950228 # load x3 with value 0x4197c96044950228
sw x3, 0(x2) # store 0x4197c96044950228 in memory
flh f5, 0(x2) # load 0x4197c96044950228 from memory into f5
li x3, 0x959e77de3e50351c # load x3 with value 0x959e77de3e50351c
sw x3, 0(x2) # store 0x959e77de3e50351c in memory
flh f23, 0(x2) # load 0x959e77de3e50351c from memory into f23
fadd.h f23, f5, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
li x24, 0x0d54d9002c92b7cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbd79554617a37c59 # load x3 with value 0xbd79554617a37c59
sw x3, 0(x2) # store 0xbd79554617a37c59 in memory
flh f27, 0(x2) # load 0xbd79554617a37c59 from memory into f27
li x3, 0x7664e01301acd25d # load x3 with value 0x7664e01301acd25d
sw x3, 0(x2) # store 0x7664e01301acd25d in memory
flh f24, 0(x2) # load 0x7664e01301acd25d from memory into f24
fadd.h f24, f27, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
li x25, 0x637cc299e1910d47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd92914bcceb989e0 # load x3 with value 0xd92914bcceb989e0
sw x3, 0(x2) # store 0xd92914bcceb989e0 in memory
flh f22, 0(x2) # load 0xd92914bcceb989e0 from memory into f22
li x3, 0xc9270388414a0e7 # load x3 with value 0xc9270388414a0e7
sw x3, 0(x2) # store 0xc9270388414a0e7 in memory
flh f25, 0(x2) # load 0xc9270388414a0e7 from memory into f25
fadd.h f25, f22, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
li x26, 0xa8d2e1dee3197c3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6c195b7e98a14b7d # load x3 with value 0x6c195b7e98a14b7d
sw x3, 0(x2) # store 0x6c195b7e98a14b7d in memory
flh f13, 0(x2) # load 0x6c195b7e98a14b7d from memory into f13
li x3, 0x15b844079d60dc5d # load x3 with value 0x15b844079d60dc5d
sw x3, 0(x2) # store 0x15b844079d60dc5d in memory
flh f26, 0(x2) # load 0x15b844079d60dc5d from memory into f26
fadd.h f26, f13, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
li x27, 0x1b7f9769e9ad2550 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc350919fafb550ab # load x3 with value 0xc350919fafb550ab
sw x3, 0(x2) # store 0xc350919fafb550ab in memory
flh f11, 0(x2) # load 0xc350919fafb550ab from memory into f11
li x3, 0x9edf41b759233544 # load x3 with value 0x9edf41b759233544
sw x3, 0(x2) # store 0x9edf41b759233544 in memory
flh f27, 0(x2) # load 0x9edf41b759233544 from memory into f27
fadd.h f27, f11, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
li x28, 0x1c5940b0787efc3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x45b7d8b88a07d0fc # load x3 with value 0x45b7d8b88a07d0fc
sw x3, 0(x2) # store 0x45b7d8b88a07d0fc in memory
flh f10, 0(x2) # load 0x45b7d8b88a07d0fc from memory into f10
li x3, 0xcef7e5d46b028e50 # load x3 with value 0xcef7e5d46b028e50
sw x3, 0(x2) # store 0xcef7e5d46b028e50 in memory
flh f28, 0(x2) # load 0xcef7e5d46b028e50 from memory into f28
fadd.h f28, f10, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
li x29, 0x698bcb147d7c6754 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x193ceaf76a8eb46d # load x3 with value 0x193ceaf76a8eb46d
sw x3, 0(x2) # store 0x193ceaf76a8eb46d in memory
flh f25, 0(x2) # load 0x193ceaf76a8eb46d from memory into f25
li x3, 0x8275303bcf16a95c # load x3 with value 0x8275303bcf16a95c
sw x3, 0(x2) # store 0x8275303bcf16a95c in memory
flh f29, 0(x2) # load 0x8275303bcf16a95c from memory into f29
fadd.h f29, f25, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
li x30, 0x22147758b71b533a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xee4d01295a2c7efe # load x3 with value 0xee4d01295a2c7efe
sw x3, 0(x2) # store 0xee4d01295a2c7efe in memory
flh f27, 0(x2) # load 0xee4d01295a2c7efe from memory into f27
li x3, 0x143dda3ab2dc8365 # load x3 with value 0x143dda3ab2dc8365
sw x3, 0(x2) # store 0x143dda3ab2dc8365 in memory
flh f30, 0(x2) # load 0x143dda3ab2dc8365 from memory into f30
fadd.h f30, f27, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
li x31, 0xed296bfcfa351ada # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x57c832a2e4c73bfe # load x3 with value 0x57c832a2e4c73bfe
sw x3, 0(x2) # store 0x57c832a2e4c73bfe in memory
flh f16, 0(x2) # load 0x57c832a2e4c73bfe from memory into f16
li x3, 0x1812345bc0d906d5 # load x3 with value 0x1812345bc0d906d5
sw x3, 0(x2) # store 0x1812345bc0d906d5 in memory
flh f31, 0(x2) # load 0x1812345bc0d906d5 from memory into f31
fadd.h f31, f16, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x30, 0xa0e89ffe707de862 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
li x3, 0xba157ea880d75eba # load x3 with value 0xba157ea880d75eba
sw x3, 0(x2) # store 0xba157ea880d75eba in memory
flh f16, 0(x2) # load 0xba157ea880d75eba from memory into f16
fadd.h f30, f18, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
li x8, 0xff4bd9dfbcff6d64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f14, 0(x2) # load 0x00008000 from memory into f14
li x3, 0xf09dd10708784c76 # load x3 with value 0xf09dd10708784c76
sw x3, 0(x2) # store 0xf09dd10708784c76 in memory
flh f1, 0(x2) # load 0xf09dd10708784c76 from memory into f1
fadd.h f8, f14, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
li x15, 0x5ee96f90be7d8eba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f23, 0(x2) # load 0x00003c00 from memory into f23
li x3, 0x4eae4c999e9d0c0d # load x3 with value 0x4eae4c999e9d0c0d
sw x3, 0(x2) # store 0x4eae4c999e9d0c0d in memory
flh f5, 0(x2) # load 0x4eae4c999e9d0c0d from memory into f5
fadd.h f15, f23, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
li x31, 0x7fae33df8b34bbb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f13, 0(x2) # load 0x0000bc00 from memory into f13
li x3, 0x8cd9145d88b31fb # load x3 with value 0x8cd9145d88b31fb
sw x3, 0(x2) # store 0x8cd9145d88b31fb in memory
flh f17, 0(x2) # load 0x8cd9145d88b31fb from memory into f17
fadd.h f31, f13, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
li x20, 0x243c6f9c253f253d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f5, 0(x2) # load 0x00003e00 from memory into f5
li x3, 0xe7f73d23d94b24ef # load x3 with value 0xe7f73d23d94b24ef
sw x3, 0(x2) # store 0xe7f73d23d94b24ef in memory
flh f25, 0(x2) # load 0xe7f73d23d94b24ef from memory into f25
fadd.h f20, f5, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
li x20, 0x7703ec91aa677456 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
li x3, 0x75ff6e7535680645 # load x3 with value 0x75ff6e7535680645
sw x3, 0(x2) # store 0x75ff6e7535680645 in memory
flh f22, 0(x2) # load 0x75ff6e7535680645 from memory into f22
fadd.h f20, f23, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
li x29, 0xca662bd7b2fe362a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f1, 0(x2) # load 0x00004000 from memory into f1
li x3, 0x9fb643b5c761d55c # load x3 with value 0x9fb643b5c761d55c
sw x3, 0(x2) # store 0x9fb643b5c761d55c in memory
flh f31, 0(x2) # load 0x9fb643b5c761d55c from memory into f31
fadd.h f29, f1, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
li x12, 0x70e90657451861f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
li x3, 0x4c2e62928b803747 # load x3 with value 0x4c2e62928b803747
sw x3, 0(x2) # store 0x4c2e62928b803747 in memory
flh f8, 0(x2) # load 0x4c2e62928b803747 from memory into f8
fadd.h f12, f18, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
li x12, 0x7b75f50fdb7c8285 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
li x3, 0xe8f8d5d21b484fb3 # load x3 with value 0xe8f8d5d21b484fb3
sw x3, 0(x2) # store 0xe8f8d5d21b484fb3 in memory
flh f1, 0(x2) # load 0xe8f8d5d21b484fb3 from memory into f1
fadd.h f12, f20, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
li x28, 0xbe530f193ee3f5b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f23, 0(x2) # load 0x00008400 from memory into f23
li x3, 0x84a544b3d0975899 # load x3 with value 0x84a544b3d0975899
sw x3, 0(x2) # store 0x84a544b3d0975899 in memory
flh f9, 0(x2) # load 0x84a544b3d0975899 from memory into f9
fadd.h f28, f23, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
li x18, 0x585c954df35545f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
li x3, 0x41f43636007a50a4 # load x3 with value 0x41f43636007a50a4
sw x3, 0(x2) # store 0x41f43636007a50a4 in memory
flh f26, 0(x2) # load 0x41f43636007a50a4 from memory into f26
fadd.h f18, f2, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
li x20, 0x98261fecc2c33ae8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
li x3, 0x993d9a313de556ad # load x3 with value 0x993d9a313de556ad
sw x3, 0(x2) # store 0x993d9a313de556ad in memory
flh f25, 0(x2) # load 0x993d9a313de556ad from memory into f25
fadd.h f20, f21, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
li x19, 0x37edae99bad46dfc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f13, 0(x2) # load 0x000003ff from memory into f13
li x3, 0x60e0e4d5d2ceb5b6 # load x3 with value 0x60e0e4d5d2ceb5b6
sw x3, 0(x2) # store 0x60e0e4d5d2ceb5b6 in memory
flh f1, 0(x2) # load 0x60e0e4d5d2ceb5b6 from memory into f1
fadd.h f19, f13, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
li x15, 0x41f1bafbf3cec76a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f3, 0(x2) # load 0x000083ff from memory into f3
li x3, 0x363c38d6abc90d5f # load x3 with value 0x363c38d6abc90d5f
sw x3, 0(x2) # store 0x363c38d6abc90d5f in memory
flh f17, 0(x2) # load 0x363c38d6abc90d5f from memory into f17
fadd.h f15, f3, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
li x26, 0xb4f0fb1105fb33c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f28, 0(x2) # load 0x00000200 from memory into f28
li x3, 0x9fb3f72251418e14 # load x3 with value 0x9fb3f72251418e14
sw x3, 0(x2) # store 0x9fb3f72251418e14 in memory
flh f5, 0(x2) # load 0x9fb3f72251418e14 from memory into f5
fadd.h f26, f28, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
li x20, 0x7c359871ceff7983 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f30, 0(x2) # load 0x00008200 from memory into f30
li x3, 0xa1a5155eda4b4462 # load x3 with value 0xa1a5155eda4b4462
sw x3, 0(x2) # store 0xa1a5155eda4b4462 in memory
flh f31, 0(x2) # load 0xa1a5155eda4b4462 from memory into f31
fadd.h f20, f30, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x1, 0x5405ca5e85f0879e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f6, 0(x2) # load 0x00000001 from memory into f6
li x3, 0x2d9acaf0d045c939 # load x3 with value 0x2d9acaf0d045c939
sw x3, 0(x2) # store 0x2d9acaf0d045c939 in memory
flh f21, 0(x2) # load 0x2d9acaf0d045c939 from memory into f21
fadd.h f1, f6, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
li x8, 0xcccdff1c3502f12b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f16, 0(x2) # load 0x00008001 from memory into f16
li x3, 0x8688d03da234db78 # load x3 with value 0x8688d03da234db78
sw x3, 0(x2) # store 0x8688d03da234db78 in memory
flh f13, 0(x2) # load 0x8688d03da234db78 from memory into f13
fadd.h f8, f16, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
li x24, 0x675199b08f6e9858 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
li x3, 0x836118afa8fcdd8d # load x3 with value 0x836118afa8fcdd8d
sw x3, 0(x2) # store 0x836118afa8fcdd8d in memory
flh f30, 0(x2) # load 0x836118afa8fcdd8d from memory into f30
fadd.h f24, f8, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
li x17, 0xc284c6c12e2208c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f4, 0(x2) # load 0x0000fc00 from memory into f4
li x3, 0x7b8ab9f02b509cbe # load x3 with value 0x7b8ab9f02b509cbe
sw x3, 0(x2) # store 0x7b8ab9f02b509cbe in memory
flh f2, 0(x2) # load 0x7b8ab9f02b509cbe from memory into f2
fadd.h f17, f4, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
li x12, 0xd6609cf443afb42a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f1, 0(x2) # load 0x00007e00 from memory into f1
li x3, 0x287e2b789c2dd447 # load x3 with value 0x287e2b789c2dd447
sw x3, 0(x2) # store 0x287e2b789c2dd447 in memory
flh f11, 0(x2) # load 0x287e2b789c2dd447 from memory into f11
fadd.h f12, f1, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
li x25, 0x62f8937a09d11a5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
li x3, 0xb201afc2e87b68b1 # load x3 with value 0xb201afc2e87b68b1
sw x3, 0(x2) # store 0xb201afc2e87b68b1 in memory
flh f28, 0(x2) # load 0xb201afc2e87b68b1 from memory into f28
fadd.h f25, f30, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
li x26, 0x003def7498c0870b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f22, 0(x2) # load 0x00007c01 from memory into f22
li x3, 0xd146244e2d8f3fb8 # load x3 with value 0xd146244e2d8f3fb8
sw x3, 0(x2) # store 0xd146244e2d8f3fb8 in memory
flh f20, 0(x2) # load 0xd146244e2d8f3fb8 from memory into f20
fadd.h f26, f22, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
li x25, 0x7e21265b3bff0a07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f26, 0(x2) # load 0x00007dff from memory into f26
li x3, 0xe5e93a54db4ab1f8 # load x3 with value 0xe5e93a54db4ab1f8
sw x3, 0(x2) # store 0xe5e93a54db4ab1f8 in memory
flh f8, 0(x2) # load 0xe5e93a54db4ab1f8 from memory into f8
fadd.h f25, f26, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
li x29, 0x22177ebe4b25cbe4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f26, 0(x2) # load 0x000058b4 from memory into f26
li x3, 0x57a5a853923f3b5e # load x3 with value 0x57a5a853923f3b5e
sw x3, 0(x2) # store 0x57a5a853923f3b5e in memory
flh f30, 0(x2) # load 0x57a5a853923f3b5e from memory into f30
fadd.h f29, f26, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
li x21, 0xea15370b3491ffc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f8, 0(x2) # load 0x0000c93a from memory into f8
li x3, 0x434c4090c40166b7 # load x3 with value 0x434c4090c40166b7
sw x3, 0(x2) # store 0x434c4090c40166b7 in memory
flh f24, 0(x2) # load 0x434c4090c40166b7 from memory into f24
fadd.h f21, f8, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x14, 0x14371903269280c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd99bdd0bd18b221c # load x3 with value 0xd99bdd0bd18b221c
sw x3, 0(x2) # store 0xd99bdd0bd18b221c in memory
flh f22, 0(x2) # load 0xd99bdd0bd18b221c from memory into f22
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
fadd.h f14, f22, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000)
li x19, 0x3da2591a3c8e06d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcf04680fba53ac35 # load x3 with value 0xcf04680fba53ac35
sw x3, 0(x2) # store 0xcf04680fba53ac35 in memory
flh f28, 0(x2) # load 0xcf04680fba53ac35 from memory into f28
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f5, 0(x2) # load 0x00008000 from memory into f5
fadd.h f19, f28, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3c00)
li x6, 0x65ea1afd5a7b1fc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a7fabdaa5fe9f68 # load x3 with value 0x5a7fabdaa5fe9f68
sw x3, 0(x2) # store 0x5a7fabdaa5fe9f68 in memory
flh f24, 0(x2) # load 0x5a7fabdaa5fe9f68 from memory into f24
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
fadd.h f6, f24, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbc00)
li x30, 0xb29ed09a3fa7c128 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8b682ccdf2fddbb2 # load x3 with value 0x8b682ccdf2fddbb2
sw x3, 0(x2) # store 0x8b682ccdf2fddbb2 in memory
flh f18, 0(x2) # load 0x8b682ccdf2fddbb2 from memory into f18
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f4, 0(x2) # load 0x0000bc00 from memory into f4
fadd.h f30, f18, f4 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3e00)
li x5, 0x76559d9c185635ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x252a7ac22aa50536 # load x3 with value 0x252a7ac22aa50536
sw x3, 0(x2) # store 0x252a7ac22aa50536 in memory
flh f8, 0(x2) # load 0x252a7ac22aa50536 from memory into f8
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f11, 0(x2) # load 0x00003e00 from memory into f11
fadd.h f5, f8, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbe00)
li x30, 0x35f1f1da7dd93f91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x18c51e32675222c1 # load x3 with value 0x18c51e32675222c1
sw x3, 0(x2) # store 0x18c51e32675222c1 in memory
flh f14, 0(x2) # load 0x18c51e32675222c1 from memory into f14
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f6, 0(x2) # load 0x0000be00 from memory into f6
fadd.h f30, f14, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000)
li x31, 0xdf11b6b0b0f66e09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x17c589cb52f2e731 # load x3 with value 0x17c589cb52f2e731
sw x3, 0(x2) # store 0x17c589cb52f2e731 in memory
flh f28, 0(x2) # load 0x17c589cb52f2e731 from memory into f28
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f1, 0(x2) # load 0x00004000 from memory into f1
fadd.h f31, f28, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000)
li x29, 0x1067d0b16c2512b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x59fa48d25ff35e21 # load x3 with value 0x59fa48d25ff35e21
sw x3, 0(x2) # store 0x59fa48d25ff35e21 in memory
flh f18, 0(x2) # load 0x59fa48d25ff35e21 from memory into f18
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
fadd.h f29, f18, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400)
li x21, 0x3e6a16c1ad3d9783 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xab1d13856c8e528e # load x3 with value 0xab1d13856c8e528e
sw x3, 0(x2) # store 0xab1d13856c8e528e in memory
flh f24, 0(x2) # load 0xab1d13856c8e528e from memory into f24
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f12, 0(x2) # load 0x00000400 from memory into f12
fadd.h f21, f24, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8400)
li x11, 0x8d52246e83973823 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x94e3f033ed47e5d8 # load x3 with value 0x94e3f033ed47e5d8
sw x3, 0(x2) # store 0x94e3f033ed47e5d8 in memory
flh f13, 0(x2) # load 0x94e3f033ed47e5d8 from memory into f13
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f28, 0(x2) # load 0x00008400 from memory into f28
fadd.h f11, f13, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7bff)
li x7, 0x5f0a727de31c6bea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xded9ac4431c290d0 # load x3 with value 0xded9ac4431c290d0
sw x3, 0(x2) # store 0xded9ac4431c290d0 in memory
flh f8, 0(x2) # load 0xded9ac4431c290d0 from memory into f8
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f22, 0(x2) # load 0x00007bff from memory into f22
fadd.h f7, f8, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfbff)
li x22, 0xbcac3fb0b30d0756 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf849926b2b3211de # load x3 with value 0xf849926b2b3211de
sw x3, 0(x2) # store 0xf849926b2b3211de in memory
flh f7, 0(x2) # load 0xf849926b2b3211de from memory into f7
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
fadd.h f22, f7, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff)
li x6, 0x06faf84ca5346b90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7c8175e0f7a6ab78 # load x3 with value 0x7c8175e0f7a6ab78
sw x3, 0(x2) # store 0x7c8175e0f7a6ab78 in memory
flh f18, 0(x2) # load 0x7c8175e0f7a6ab78 from memory into f18
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f14, 0(x2) # load 0x000003ff from memory into f14
fadd.h f6, f18, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x83ff)
li x25, 0xc3be5fb572acd500 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb1121171eb9aabed # load x3 with value 0xb1121171eb9aabed
sw x3, 0(x2) # store 0xb1121171eb9aabed in memory
flh f19, 0(x2) # load 0xb1121171eb9aabed from memory into f19
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
fadd.h f25, f19, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x200)
li x5, 0x4aaeff0e98c4b7a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe0e0e2f8053af6ba # load x3 with value 0xe0e0e2f8053af6ba
sw x3, 0(x2) # store 0xe0e0e2f8053af6ba in memory
flh f1, 0(x2) # load 0xe0e0e2f8053af6ba from memory into f1
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f21, 0(x2) # load 0x00000200 from memory into f21
fadd.h f5, f1, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8200)
li x4, 0xa38028bd097fd1cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf0a87fe77ebcc875 # load x3 with value 0xf0a87fe77ebcc875
sw x3, 0(x2) # store 0xf0a87fe77ebcc875 in memory
flh f17, 0(x2) # load 0xf0a87fe77ebcc875 from memory into f17
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f22, 0(x2) # load 0x00008200 from memory into f22
fadd.h f4, f17, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x19, 0x12f8876d6f33d55c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xab261917f421c0aa # load x3 with value 0xab261917f421c0aa
sw x3, 0(x2) # store 0xab261917f421c0aa in memory
flh f31, 0(x2) # load 0xab261917f421c0aa from memory into f31
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f10, 0(x2) # load 0x00000001 from memory into f10
fadd.h f19, f31, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8001)
li x14, 0x2d5de6578ac3f3c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xac36870270931c34 # load x3 with value 0xac36870270931c34
sw x3, 0(x2) # store 0xac36870270931c34 in memory
flh f4, 0(x2) # load 0xac36870270931c34 from memory into f4
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
fadd.h f14, f4, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c00)
li x8, 0xbbab6bc1f096950a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf991e06916b7e49c # load x3 with value 0xf991e06916b7e49c
sw x3, 0(x2) # store 0xf991e06916b7e49c in memory
flh f13, 0(x2) # load 0xf991e06916b7e49c from memory into f13
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f6, 0(x2) # load 0x00007c00 from memory into f6
fadd.h f8, f13, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc00)
li x9, 0x731e6dadf767b4f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe291c82cb33d6716 # load x3 with value 0xe291c82cb33d6716
sw x3, 0(x2) # store 0xe291c82cb33d6716 in memory
flh f7, 0(x2) # load 0xe291c82cb33d6716 from memory into f7
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f21, 0(x2) # load 0x0000fc00 from memory into f21
fadd.h f9, f7, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e00)
li x1, 0x58819a36af497610 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x29cfb624a1d31058 # load x3 with value 0x29cfb624a1d31058
sw x3, 0(x2) # store 0x29cfb624a1d31058 in memory
flh f3, 0(x2) # load 0x29cfb624a1d31058 from memory into f3
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
fadd.h f1, f3, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff)
li x27, 0x1465a09b1a57fee9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2af0bcccb2c010cc # load x3 with value 0x2af0bcccb2c010cc
sw x3, 0(x2) # store 0x2af0bcccb2c010cc in memory
flh f2, 0(x2) # load 0x2af0bcccb2c010cc from memory into f2
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
fadd.h f27, f2, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c01)
li x12, 0x5e0d66af5b026038 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb9dcca73375fe7d8 # load x3 with value 0xb9dcca73375fe7d8
sw x3, 0(x2) # store 0xb9dcca73375fe7d8 in memory
flh f14, 0(x2) # load 0xb9dcca73375fe7d8 from memory into f14
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f29, 0(x2) # load 0x00007c01 from memory into f29
fadd.h f12, f14, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7dff)
li x18, 0x373dafd6b62ef54d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x76ae75f6b11df9be # load x3 with value 0x76ae75f6b11df9be
sw x3, 0(x2) # store 0x76ae75f6b11df9be in memory
flh f29, 0(x2) # load 0x76ae75f6b11df9be from memory into f29
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f15, 0(x2) # load 0x00007dff from memory into f15
fadd.h f18, f29, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x58b4)
li x26, 0xafa4d7134d62344c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcfc135842bdd4716 # load x3 with value 0xcfc135842bdd4716
sw x3, 0(x2) # store 0xcfc135842bdd4716 in memory
flh f27, 0(x2) # load 0xcfc135842bdd4716 from memory into f27
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
fadd.h f26, f27, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc93a)
li x11, 0xc47e9377dffe47cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f9082a50609e0e8 # load x3 with value 0x7f9082a50609e0e8
sw x3, 0(x2) # store 0x7f9082a50609e0e8 in memory
flh f23, 0(x2) # load 0x7f9082a50609e0e8 from memory into f23
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f29, 0(x2) # load 0x0000c93a from memory into f29
fadd.h f11, f23, f29 # perform operation

# Testcase cp_frm
li x1, 0x562bd29c7cd93665 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9b37479170d403f5 # load x3 with value 0x9b37479170d403f5
sw x3, 0(x2) # store 0x9b37479170d403f5 in memory
flh f11, 0(x2) # load 0x9b37479170d403f5 from memory into f11
li x3, 0xcf62754bbcb2db9 # load x3 with value 0xcf62754bbcb2db9
sw x3, 0(x2) # store 0xcf62754bbcb2db9 in memory
flh f16, 0(x2) # load 0xcf62754bbcb2db9 from memory into f16
fadd.h f1, f11, f16, dyn # perform operation
fadd.h f1, f11, f16, rdn # perform operation
fadd.h f1, f11, f16, rmm # perform operation
fadd.h f1, f11, f16, rne # perform operation
fadd.h f1, f11, f16, rtz # perform operation
fadd.h f1, f11, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f11, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f11, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f11, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f11, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f11, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
li x14, 0x9ea40a8f93326b05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f7, 0(x2) # load 0x00000000 from memory into f7
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f21, 0(x2) # load 0x00000000 from memory into f21
fadd.h f14, f7, f21, dyn # perform operation
fadd.h f14, f7, f21, rdn # perform operation
fadd.h f14, f7, f21, rmm # perform operation
fadd.h f14, f7, f21, rne # perform operation
fadd.h f14, f7, f21, rtz # perform operation
fadd.h f14, f7, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f7, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f7, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f7, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f7, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f7, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000)
li x29, 0x3478182b92e5f650 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f23, 0(x2) # load 0x00000000 from memory into f23
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f30, 0(x2) # load 0x00008000 from memory into f30
fadd.h f29, f23, f30, dyn # perform operation
fadd.h f29, f23, f30, rdn # perform operation
fadd.h f29, f23, f30, rmm # perform operation
fadd.h f29, f23, f30, rne # perform operation
fadd.h f29, f23, f30, rtz # perform operation
fadd.h f29, f23, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f23, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f23, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f23, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f23, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f23, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3c00)
li x15, 0x3251526e63d0ecea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f18, 0(x2) # load 0x00003c00 from memory into f18
fadd.h f15, f30, f18, dyn # perform operation
fadd.h f15, f30, f18, rdn # perform operation
fadd.h f15, f30, f18, rmm # perform operation
fadd.h f15, f30, f18, rne # perform operation
fadd.h f15, f30, f18, rtz # perform operation
fadd.h f15, f30, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f30, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f30, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f30, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f30, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f30, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbc00)
li x4, 0x5d494c7aedfd86b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f21, 0(x2) # load 0x00000000 from memory into f21
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f3, 0(x2) # load 0x0000bc00 from memory into f3
fadd.h f4, f21, f3, dyn # perform operation
fadd.h f4, f21, f3, rdn # perform operation
fadd.h f4, f21, f3, rmm # perform operation
fadd.h f4, f21, f3, rne # perform operation
fadd.h f4, f21, f3, rtz # perform operation
fadd.h f4, f21, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f21, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f21, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f21, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f21, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f21, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3e00)
li x9, 0x476c55394aa4923e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f21, 0(x2) # load 0x00000000 from memory into f21
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f8, 0(x2) # load 0x00003e00 from memory into f8
fadd.h f9, f21, f8, dyn # perform operation
fadd.h f9, f21, f8, rdn # perform operation
fadd.h f9, f21, f8, rmm # perform operation
fadd.h f9, f21, f8, rne # perform operation
fadd.h f9, f21, f8, rtz # perform operation
fadd.h f9, f21, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f21, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f21, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f21, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f21, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f21, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbe00)
li x3, 0x6c3459616e0c7279 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f15, 0(x2) # load 0x00000000 from memory into f15
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
fadd.h f3, f15, f23, dyn # perform operation
fadd.h f3, f15, f23, rdn # perform operation
fadd.h f3, f15, f23, rmm # perform operation
fadd.h f3, f15, f23, rne # perform operation
fadd.h f3, f15, f23, rtz # perform operation
fadd.h f3, f15, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f15, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f15, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f15, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f15, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f15, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x4000)
li x2, 0xc225528ae1249adc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f21, 0(x2) # load 0x00000000 from memory into f21
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f31, 0(x2) # load 0x00004000 from memory into f31
fadd.h f2, f21, f31, dyn # perform operation
fadd.h f2, f21, f31, rdn # perform operation
fadd.h f2, f21, f31, rmm # perform operation
fadd.h f2, f21, f31, rne # perform operation
fadd.h f2, f21, f31, rtz # perform operation
fadd.h f2, f21, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f21, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f21, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f21, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f21, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f21, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc000)
li x17, 0xb75b34e9e8fc2ecb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
fadd.h f17, f12, f1, dyn # perform operation
fadd.h f17, f12, f1, rdn # perform operation
fadd.h f17, f12, f1, rmm # perform operation
fadd.h f17, f12, f1, rne # perform operation
fadd.h f17, f12, f1, rtz # perform operation
fadd.h f17, f12, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f12, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f12, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f12, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f12, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f12, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x400)
li x28, 0xdf59b181eea8e237 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f9, 0(x2) # load 0x00000400 from memory into f9
fadd.h f28, f27, f9, dyn # perform operation
fadd.h f28, f27, f9, rdn # perform operation
fadd.h f28, f27, f9, rmm # perform operation
fadd.h f28, f27, f9, rne # perform operation
fadd.h f28, f27, f9, rtz # perform operation
fadd.h f28, f27, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f27, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f27, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f27, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f27, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f27, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8400)
li x2, 0x59b1019035264ef3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f26, 0(x2) # load 0x00000000 from memory into f26
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f28, 0(x2) # load 0x00008400 from memory into f28
fadd.h f2, f26, f28, dyn # perform operation
fadd.h f2, f26, f28, rdn # perform operation
fadd.h f2, f26, f28, rmm # perform operation
fadd.h f2, f26, f28, rne # perform operation
fadd.h f2, f26, f28, rtz # perform operation
fadd.h f2, f26, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f26, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f26, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f26, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f26, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f26, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7bff)
li x13, 0x26108493f0233178 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
fadd.h f13, f31, f17, dyn # perform operation
fadd.h f13, f31, f17, rdn # perform operation
fadd.h f13, f31, f17, rmm # perform operation
fadd.h f13, f31, f17, rne # perform operation
fadd.h f13, f31, f17, rtz # perform operation
fadd.h f13, f31, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f31, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f31, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f31, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f31, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f31, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfbff)
li x10, 0x80ae99c0c2f5edc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f15, 0(x2) # load 0x00000000 from memory into f15
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f18, 0(x2) # load 0x0000fbff from memory into f18
fadd.h f10, f15, f18, dyn # perform operation
fadd.h f10, f15, f18, rdn # perform operation
fadd.h f10, f15, f18, rmm # perform operation
fadd.h f10, f15, f18, rne # perform operation
fadd.h f10, f15, f18, rtz # perform operation
fadd.h f10, f15, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f15, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f15, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f15, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f15, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f15, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3ff)
li x22, 0x82935ded402eb69d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
fadd.h f22, f27, f23, dyn # perform operation
fadd.h f22, f27, f23, rdn # perform operation
fadd.h f22, f27, f23, rmm # perform operation
fadd.h f22, f27, f23, rne # perform operation
fadd.h f22, f27, f23, rtz # perform operation
fadd.h f22, f27, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f27, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f27, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f27, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f27, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f27, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x83ff)
li x10, 0x6ea2c94cededd23f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f21, 0(x2) # load 0x00000000 from memory into f21
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f9, 0(x2) # load 0x000083ff from memory into f9
fadd.h f10, f21, f9, dyn # perform operation
fadd.h f10, f21, f9, rdn # perform operation
fadd.h f10, f21, f9, rmm # perform operation
fadd.h f10, f21, f9, rne # perform operation
fadd.h f10, f21, f9, rtz # perform operation
fadd.h f10, f21, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f21, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f21, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f21, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f21, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f21, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x200)
li x1, 0x387e2b4a91e9f436 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f30, 0(x2) # load 0x00000200 from memory into f30
fadd.h f1, f25, f30, dyn # perform operation
fadd.h f1, f25, f30, rdn # perform operation
fadd.h f1, f25, f30, rmm # perform operation
fadd.h f1, f25, f30, rne # perform operation
fadd.h f1, f25, f30, rtz # perform operation
fadd.h f1, f25, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f25, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f25, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f25, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f25, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f25, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8200)
li x10, 0x1f943edbef08900d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f9, 0(x2) # load 0x00000000 from memory into f9
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f18, 0(x2) # load 0x00008200 from memory into f18
fadd.h f10, f9, f18, dyn # perform operation
fadd.h f10, f9, f18, rdn # perform operation
fadd.h f10, f9, f18, rmm # perform operation
fadd.h f10, f9, f18, rne # perform operation
fadd.h f10, f9, f18, rtz # perform operation
fadd.h f10, f9, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f9, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f9, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f9, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f9, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f9, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
li x15, 0x360237e1c84c737b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f4, 0(x2) # load 0x00000000 from memory into f4
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
fadd.h f15, f4, f16, dyn # perform operation
fadd.h f15, f4, f16, rdn # perform operation
fadd.h f15, f4, f16, rmm # perform operation
fadd.h f15, f4, f16, rne # perform operation
fadd.h f15, f4, f16, rtz # perform operation
fadd.h f15, f4, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f4, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f4, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f4, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f4, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f4, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8001)
li x25, 0x83c3e631e858d93d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f22, 0(x2) # load 0x00008001 from memory into f22
fadd.h f25, f2, f22, dyn # perform operation
fadd.h f25, f2, f22, rdn # perform operation
fadd.h f25, f2, f22, rmm # perform operation
fadd.h f25, f2, f22, rne # perform operation
fadd.h f25, f2, f22, rtz # perform operation
fadd.h f25, f2, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f2, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f2, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f2, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f2, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f2, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7c00)
li x5, 0x044b18d644c7b244 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f4, 0(x2) # load 0x00000000 from memory into f4
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f17, 0(x2) # load 0x00007c00 from memory into f17
fadd.h f5, f4, f17, dyn # perform operation
fadd.h f5, f4, f17, rdn # perform operation
fadd.h f5, f4, f17, rmm # perform operation
fadd.h f5, f4, f17, rne # perform operation
fadd.h f5, f4, f17, rtz # perform operation
fadd.h f5, f4, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f4, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f4, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f4, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f4, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f4, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfc00)
li x26, 0x54ab91e6486d562d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f7, 0(x2) # load 0x00000000 from memory into f7
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
fadd.h f26, f7, f11, dyn # perform operation
fadd.h f26, f7, f11, rdn # perform operation
fadd.h f26, f7, f11, rmm # perform operation
fadd.h f26, f7, f11, rne # perform operation
fadd.h f26, f7, f11, rtz # perform operation
fadd.h f26, f7, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f7, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f7, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f7, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f7, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f7, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7e00)
li x5, 0xd019955092ad82fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f15, 0(x2) # load 0x00000000 from memory into f15
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
fadd.h f5, f15, f8, dyn # perform operation
fadd.h f5, f15, f8, rdn # perform operation
fadd.h f5, f15, f8, rmm # perform operation
fadd.h f5, f15, f8, rne # perform operation
fadd.h f5, f15, f8, rtz # perform operation
fadd.h f5, f15, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f15, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f15, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f15, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f15, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f15, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fff)
li x1, 0x7dae295a2f1ab6aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f13, 0(x2) # load 0x00007fff from memory into f13
fadd.h f1, f29, f13, dyn # perform operation
fadd.h f1, f29, f13, rdn # perform operation
fadd.h f1, f29, f13, rmm # perform operation
fadd.h f1, f29, f13, rne # perform operation
fadd.h f1, f29, f13, rtz # perform operation
fadd.h f1, f29, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f29, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f29, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f29, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f29, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f29, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7c01)
li x7, 0xa7c7ab135d4734f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f23, 0(x2) # load 0x00000000 from memory into f23
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f1, 0(x2) # load 0x00007c01 from memory into f1
fadd.h f7, f23, f1, dyn # perform operation
fadd.h f7, f23, f1, rdn # perform operation
fadd.h f7, f23, f1, rmm # perform operation
fadd.h f7, f23, f1, rne # perform operation
fadd.h f7, f23, f1, rtz # perform operation
fadd.h f7, f23, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f23, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f23, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f23, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f23, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f23, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7dff)
li x18, 0x0b69b5b1d4a75d9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f16, 0(x2) # load 0x00000000 from memory into f16
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f13, 0(x2) # load 0x00007dff from memory into f13
fadd.h f18, f16, f13, dyn # perform operation
fadd.h f18, f16, f13, rdn # perform operation
fadd.h f18, f16, f13, rmm # perform operation
fadd.h f18, f16, f13, rne # perform operation
fadd.h f18, f16, f13, rtz # perform operation
fadd.h f18, f16, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f16, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f16, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f16, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f16, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f16, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x58b4)
li x16, 0xdf5c1e075c42aa15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f20, 0(x2) # load 0x000058b4 from memory into f20
fadd.h f16, f29, f20, dyn # perform operation
fadd.h f16, f29, f20, rdn # perform operation
fadd.h f16, f29, f20, rmm # perform operation
fadd.h f16, f29, f20, rne # perform operation
fadd.h f16, f29, f20, rtz # perform operation
fadd.h f16, f29, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f29, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f29, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f29, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f29, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f29, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc93a)
li x28, 0x98291339e106a9f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f22, 0(x2) # load 0x00000000 from memory into f22
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f13, 0(x2) # load 0x0000c93a from memory into f13
fadd.h f28, f22, f13, dyn # perform operation
fadd.h f28, f22, f13, rdn # perform operation
fadd.h f28, f22, f13, rmm # perform operation
fadd.h f28, f22, f13, rne # perform operation
fadd.h f28, f22, f13, rtz # perform operation
fadd.h f28, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f22, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x0)
li x9, 0xc1781efcac6667cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
fadd.h f9, f2, f18, dyn # perform operation
fadd.h f9, f2, f18, rdn # perform operation
fadd.h f9, f2, f18, rmm # perform operation
fadd.h f9, f2, f18, rne # perform operation
fadd.h f9, f2, f18, rtz # perform operation
fadd.h f9, f2, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f2, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f2, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f2, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f2, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f2, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8000)
li x2, 0x45bed55033782148 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f29, 0(x2) # load 0x00008000 from memory into f29
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f25, 0(x2) # load 0x00008000 from memory into f25
fadd.h f2, f29, f25, dyn # perform operation
fadd.h f2, f29, f25, rdn # perform operation
fadd.h f2, f29, f25, rmm # perform operation
fadd.h f2, f29, f25, rne # perform operation
fadd.h f2, f29, f25, rtz # perform operation
fadd.h f2, f29, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f29, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f29, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f29, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f29, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f29, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3c00)
li x11, 0x65659858ab244768 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
fadd.h f11, f2, f22, dyn # perform operation
fadd.h f11, f2, f22, rdn # perform operation
fadd.h f11, f2, f22, rmm # perform operation
fadd.h f11, f2, f22, rne # perform operation
fadd.h f11, f2, f22, rtz # perform operation
fadd.h f11, f2, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f2, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f2, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f2, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f2, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f2, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xbc00)
li x14, 0x2a3fcc0cd04c35c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f31, 0(x2) # load 0x0000bc00 from memory into f31
fadd.h f14, f13, f31, dyn # perform operation
fadd.h f14, f13, f31, rdn # perform operation
fadd.h f14, f13, f31, rmm # perform operation
fadd.h f14, f13, f31, rne # perform operation
fadd.h f14, f13, f31, rtz # perform operation
fadd.h f14, f13, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f13, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f13, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f13, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f13, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f13, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3e00)
li x6, 0x8a77ba862999e5ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f9, 0(x2) # load 0x00008000 from memory into f9
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
fadd.h f6, f9, f1, dyn # perform operation
fadd.h f6, f9, f1, rdn # perform operation
fadd.h f6, f9, f1, rmm # perform operation
fadd.h f6, f9, f1, rne # perform operation
fadd.h f6, f9, f1, rtz # perform operation
fadd.h f6, f9, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f9, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f9, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f9, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f9, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f9, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xbe00)
li x30, 0xf793a951904206cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f29, 0(x2) # load 0x00008000 from memory into f29
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
fadd.h f30, f29, f31, dyn # perform operation
fadd.h f30, f29, f31, rdn # perform operation
fadd.h f30, f29, f31, rmm # perform operation
fadd.h f30, f29, f31, rne # perform operation
fadd.h f30, f29, f31, rtz # perform operation
fadd.h f30, f29, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f29, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f29, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f29, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f29, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f29, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x4000)
li x11, 0x08513e88a261e538 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f28, 0(x2) # load 0x00008000 from memory into f28
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f20, 0(x2) # load 0x00004000 from memory into f20
fadd.h f11, f28, f20, dyn # perform operation
fadd.h f11, f28, f20, rdn # perform operation
fadd.h f11, f28, f20, rmm # perform operation
fadd.h f11, f28, f20, rne # perform operation
fadd.h f11, f28, f20, rtz # perform operation
fadd.h f11, f28, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f28, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f28, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f28, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f28, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f28, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xc000)
li x12, 0xca4e633cd7e5d4cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f29, 0(x2) # load 0x0000c000 from memory into f29
fadd.h f12, f26, f29, dyn # perform operation
fadd.h f12, f26, f29, rdn # perform operation
fadd.h f12, f26, f29, rmm # perform operation
fadd.h f12, f26, f29, rne # perform operation
fadd.h f12, f26, f29, rtz # perform operation
fadd.h f12, f26, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f26, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f26, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f26, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f26, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f26, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x400)
li x2, 0xb89668348fce360c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f21, 0(x2) # load 0x00008000 from memory into f21
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
fadd.h f2, f21, f7, dyn # perform operation
fadd.h f2, f21, f7, rdn # perform operation
fadd.h f2, f21, f7, rmm # perform operation
fadd.h f2, f21, f7, rne # perform operation
fadd.h f2, f21, f7, rtz # perform operation
fadd.h f2, f21, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f21, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f21, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f21, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f21, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f21, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8400)
li x11, 0x54bc9a501d69ef2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f18, 0(x2) # load 0x00008000 from memory into f18
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f31, 0(x2) # load 0x00008400 from memory into f31
fadd.h f11, f18, f31, dyn # perform operation
fadd.h f11, f18, f31, rdn # perform operation
fadd.h f11, f18, f31, rmm # perform operation
fadd.h f11, f18, f31, rne # perform operation
fadd.h f11, f18, f31, rtz # perform operation
fadd.h f11, f18, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f18, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f18, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f18, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f18, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f18, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7bff)
li x30, 0xc7dba950eb3ede3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
fadd.h f30, f11, f2, dyn # perform operation
fadd.h f30, f11, f2, rdn # perform operation
fadd.h f30, f11, f2, rmm # perform operation
fadd.h f30, f11, f2, rne # perform operation
fadd.h f30, f11, f2, rtz # perform operation
fadd.h f30, f11, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f11, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f11, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f11, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f11, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f11, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfbff)
li x2, 0x60b581acab3311ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f14, 0(x2) # load 0x00008000 from memory into f14
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f1, 0(x2) # load 0x0000fbff from memory into f1
fadd.h f2, f14, f1, dyn # perform operation
fadd.h f2, f14, f1, rdn # perform operation
fadd.h f2, f14, f1, rmm # perform operation
fadd.h f2, f14, f1, rne # perform operation
fadd.h f2, f14, f1, rtz # perform operation
fadd.h f2, f14, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f14, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f14, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f14, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f14, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f14, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3ff)
li x6, 0xb110b32428f39ae0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f9, 0(x2) # load 0x00008000 from memory into f9
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f4, 0(x2) # load 0x000003ff from memory into f4
fadd.h f6, f9, f4, dyn # perform operation
fadd.h f6, f9, f4, rdn # perform operation
fadd.h f6, f9, f4, rmm # perform operation
fadd.h f6, f9, f4, rne # perform operation
fadd.h f6, f9, f4, rtz # perform operation
fadd.h f6, f9, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f9, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f9, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f9, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f9, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f9, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x83ff)
li x27, 0x1a98ff8400329013 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f8, 0(x2) # load 0x00008000 from memory into f8
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f17, 0(x2) # load 0x000083ff from memory into f17
fadd.h f27, f8, f17, dyn # perform operation
fadd.h f27, f8, f17, rdn # perform operation
fadd.h f27, f8, f17, rmm # perform operation
fadd.h f27, f8, f17, rne # perform operation
fadd.h f27, f8, f17, rtz # perform operation
fadd.h f27, f8, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f8, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f8, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f8, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f8, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f8, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x200)
li x27, 0xcb0be8af5290bb5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f23, 0(x2) # load 0x00008000 from memory into f23
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
fadd.h f27, f23, f5, dyn # perform operation
fadd.h f27, f23, f5, rdn # perform operation
fadd.h f27, f23, f5, rmm # perform operation
fadd.h f27, f23, f5, rne # perform operation
fadd.h f27, f23, f5, rtz # perform operation
fadd.h f27, f23, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f23, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f23, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f23, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f23, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f23, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8200)
li x27, 0xa218d0cd6ffbd196 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f22, 0(x2) # load 0x00008200 from memory into f22
fadd.h f27, f13, f22, dyn # perform operation
fadd.h f27, f13, f22, rdn # perform operation
fadd.h f27, f13, f22, rmm # perform operation
fadd.h f27, f13, f22, rne # perform operation
fadd.h f27, f13, f22, rtz # perform operation
fadd.h f27, f13, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f13, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f13, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f13, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f13, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f13, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x1)
li x7, 0xb71846910c02136f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f1, 0(x2) # load 0x00008000 from memory into f1
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f8, 0(x2) # load 0x00000001 from memory into f8
fadd.h f7, f1, f8, dyn # perform operation
fadd.h f7, f1, f8, rdn # perform operation
fadd.h f7, f1, f8, rmm # perform operation
fadd.h f7, f1, f8, rne # perform operation
fadd.h f7, f1, f8, rtz # perform operation
fadd.h f7, f1, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f1, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f1, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f1, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f1, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f1, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8001)
li x9, 0x36ba08e625d206f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f27, 0(x2) # load 0x00008000 from memory into f27
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f26, 0(x2) # load 0x00008001 from memory into f26
fadd.h f9, f27, f26, dyn # perform operation
fadd.h f9, f27, f26, rdn # perform operation
fadd.h f9, f27, f26, rmm # perform operation
fadd.h f9, f27, f26, rne # perform operation
fadd.h f9, f27, f26, rtz # perform operation
fadd.h f9, f27, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f27, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f27, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f27, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f27, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f27, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7c00)
li x12, 0x9a16fad3d0a6b187 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f20, 0(x2) # load 0x00008000 from memory into f20
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f10, 0(x2) # load 0x00007c00 from memory into f10
fadd.h f12, f20, f10, dyn # perform operation
fadd.h f12, f20, f10, rdn # perform operation
fadd.h f12, f20, f10, rmm # perform operation
fadd.h f12, f20, f10, rne # perform operation
fadd.h f12, f20, f10, rtz # perform operation
fadd.h f12, f20, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f20, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f20, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f20, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f20, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f20, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfc00)
li x31, 0x00d9e1e2c86b14e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f20, 0(x2) # load 0x00008000 from memory into f20
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f4, 0(x2) # load 0x0000fc00 from memory into f4
fadd.h f31, f20, f4, dyn # perform operation
fadd.h f31, f20, f4, rdn # perform operation
fadd.h f31, f20, f4, rmm # perform operation
fadd.h f31, f20, f4, rne # perform operation
fadd.h f31, f20, f4, rtz # perform operation
fadd.h f31, f20, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f20, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f20, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f20, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f20, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f20, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7e00)
li x2, 0x0f3360d2cd766aed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
fadd.h f2, f10, f15, dyn # perform operation
fadd.h f2, f10, f15, rdn # perform operation
fadd.h f2, f10, f15, rmm # perform operation
fadd.h f2, f10, f15, rne # perform operation
fadd.h f2, f10, f15, rtz # perform operation
fadd.h f2, f10, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f10, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f10, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f10, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f10, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f10, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7fff)
li x17, 0x31c50ecce31d1316 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
fadd.h f17, f12, f2, dyn # perform operation
fadd.h f17, f12, f2, rdn # perform operation
fadd.h f17, f12, f2, rmm # perform operation
fadd.h f17, f12, f2, rne # perform operation
fadd.h f17, f12, f2, rtz # perform operation
fadd.h f17, f12, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f12, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f12, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f12, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f12, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f12, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7c01)
li x27, 0xc06c57b6e0a90024 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f25, 0(x2) # load 0x00008000 from memory into f25
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
fadd.h f27, f25, f31, dyn # perform operation
fadd.h f27, f25, f31, rdn # perform operation
fadd.h f27, f25, f31, rmm # perform operation
fadd.h f27, f25, f31, rne # perform operation
fadd.h f27, f25, f31, rtz # perform operation
fadd.h f27, f25, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f25, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f25, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f25, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f25, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f25, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7dff)
li x8, 0x3f2737fa35a06ce9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f4, 0(x2) # load 0x00008000 from memory into f4
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f19, 0(x2) # load 0x00007dff from memory into f19
fadd.h f8, f4, f19, dyn # perform operation
fadd.h f8, f4, f19, rdn # perform operation
fadd.h f8, f4, f19, rmm # perform operation
fadd.h f8, f4, f19, rne # perform operation
fadd.h f8, f4, f19, rtz # perform operation
fadd.h f8, f4, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f4, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f4, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f4, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f4, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f4, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x58b4)
li x24, 0xfcbe6031971b55fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f30, 0(x2) # load 0x00008000 from memory into f30
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f29, 0(x2) # load 0x000058b4 from memory into f29
fadd.h f24, f30, f29, dyn # perform operation
fadd.h f24, f30, f29, rdn # perform operation
fadd.h f24, f30, f29, rmm # perform operation
fadd.h f24, f30, f29, rne # perform operation
fadd.h f24, f30, f29, rtz # perform operation
fadd.h f24, f30, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f30, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f30, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f30, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f30, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f30, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xc93a)
li x10, 0x9f2755f1d8af5d5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f3, 0(x2) # load 0x0000c93a from memory into f3
fadd.h f10, f2, f3, dyn # perform operation
fadd.h f10, f2, f3, rdn # perform operation
fadd.h f10, f2, f3, rmm # perform operation
fadd.h f10, f2, f3, rne # perform operation
fadd.h f10, f2, f3, rtz # perform operation
fadd.h f10, f2, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f2, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f2, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f2, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f2, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f2, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x0)
li x7, 0x1ba7376ae2f4498e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f13, 0(x2) # load 0x00000000 from memory into f13
fadd.h f7, f30, f13, dyn # perform operation
fadd.h f7, f30, f13, rdn # perform operation
fadd.h f7, f30, f13, rmm # perform operation
fadd.h f7, f30, f13, rne # perform operation
fadd.h f7, f30, f13, rtz # perform operation
fadd.h f7, f30, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f30, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f30, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f30, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f30, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f30, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8000)
li x8, 0x79ab14c910738c52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f4, 0(x2) # load 0x00008000 from memory into f4
fadd.h f8, f17, f4, dyn # perform operation
fadd.h f8, f17, f4, rdn # perform operation
fadd.h f8, f17, f4, rmm # perform operation
fadd.h f8, f17, f4, rne # perform operation
fadd.h f8, f17, f4, rtz # perform operation
fadd.h f8, f17, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f17, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f17, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f17, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f17, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f17, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3c00)
li x4, 0x43b0c3195c86164e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
fadd.h f4, f30, f22, dyn # perform operation
fadd.h f4, f30, f22, rdn # perform operation
fadd.h f4, f30, f22, rmm # perform operation
fadd.h f4, f30, f22, rne # perform operation
fadd.h f4, f30, f22, rtz # perform operation
fadd.h f4, f30, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f30, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f30, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f30, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f30, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f30, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xbc00)
li x8, 0x8dc7aba2f3697c00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f12, 0(x2) # load 0x00003c00 from memory into f12
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f11, 0(x2) # load 0x0000bc00 from memory into f11
fadd.h f8, f12, f11, dyn # perform operation
fadd.h f8, f12, f11, rdn # perform operation
fadd.h f8, f12, f11, rmm # perform operation
fadd.h f8, f12, f11, rne # perform operation
fadd.h f8, f12, f11, rtz # perform operation
fadd.h f8, f12, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f12, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f12, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f12, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f12, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f12, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3e00)
li x21, 0x724b3c6e519fa5fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f15, 0(x2) # load 0x00003e00 from memory into f15
fadd.h f21, f22, f15, dyn # perform operation
fadd.h f21, f22, f15, rdn # perform operation
fadd.h f21, f22, f15, rmm # perform operation
fadd.h f21, f22, f15, rne # perform operation
fadd.h f21, f22, f15, rtz # perform operation
fadd.h f21, f22, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f22, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f22, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f22, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f22, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f22, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xbe00)
li x10, 0xb0e6871a4c940d6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
fadd.h f10, f28, f15, dyn # perform operation
fadd.h f10, f28, f15, rdn # perform operation
fadd.h f10, f28, f15, rmm # perform operation
fadd.h f10, f28, f15, rne # perform operation
fadd.h f10, f28, f15, rtz # perform operation
fadd.h f10, f28, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f28, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f28, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f28, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f28, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f28, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x4000)
li x18, 0x05d82dbc474efe90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f17, 0(x2) # load 0x00004000 from memory into f17
fadd.h f18, f7, f17, dyn # perform operation
fadd.h f18, f7, f17, rdn # perform operation
fadd.h f18, f7, f17, rmm # perform operation
fadd.h f18, f7, f17, rne # perform operation
fadd.h f18, f7, f17, rtz # perform operation
fadd.h f18, f7, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f7, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f7, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f7, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f7, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f7, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xc000)
li x28, 0x486e2ed3c9c561a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f14, 0(x2) # load 0x00003c00 from memory into f14
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f22, 0(x2) # load 0x0000c000 from memory into f22
fadd.h f28, f14, f22, dyn # perform operation
fadd.h f28, f14, f22, rdn # perform operation
fadd.h f28, f14, f22, rmm # perform operation
fadd.h f28, f14, f22, rne # perform operation
fadd.h f28, f14, f22, rtz # perform operation
fadd.h f28, f14, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f14, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f14, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f14, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f14, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f14, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x400)
li x12, 0x14a39a4dbfb96290 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f14, 0(x2) # load 0x00003c00 from memory into f14
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f17, 0(x2) # load 0x00000400 from memory into f17
fadd.h f12, f14, f17, dyn # perform operation
fadd.h f12, f14, f17, rdn # perform operation
fadd.h f12, f14, f17, rmm # perform operation
fadd.h f12, f14, f17, rne # perform operation
fadd.h f12, f14, f17, rtz # perform operation
fadd.h f12, f14, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f14, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f14, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f14, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f14, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f14, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8400)
li x5, 0x65bbce59d99c014f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f29, 0(x2) # load 0x00003c00 from memory into f29
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
fadd.h f5, f29, f9, dyn # perform operation
fadd.h f5, f29, f9, rdn # perform operation
fadd.h f5, f29, f9, rmm # perform operation
fadd.h f5, f29, f9, rne # perform operation
fadd.h f5, f29, f9, rtz # perform operation
fadd.h f5, f29, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f29, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f29, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f29, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f29, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f29, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7bff)
li x5, 0x4f83556498b53395 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f20, 0(x2) # load 0x00007bff from memory into f20
fadd.h f5, f30, f20, dyn # perform operation
fadd.h f5, f30, f20, rdn # perform operation
fadd.h f5, f30, f20, rmm # perform operation
fadd.h f5, f30, f20, rne # perform operation
fadd.h f5, f30, f20, rtz # perform operation
fadd.h f5, f30, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f30, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f30, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f30, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f30, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f30, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfbff)
li x17, 0xe5bb04e59eef2379 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f13, 0(x2) # load 0x0000fbff from memory into f13
fadd.h f17, f21, f13, dyn # perform operation
fadd.h f17, f21, f13, rdn # perform operation
fadd.h f17, f21, f13, rmm # perform operation
fadd.h f17, f21, f13, rne # perform operation
fadd.h f17, f21, f13, rtz # perform operation
fadd.h f17, f21, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f21, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f21, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f21, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f21, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f21, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3ff)
li x28, 0x857945571a36b4d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f31, 0(x2) # load 0x000003ff from memory into f31
fadd.h f28, f5, f31, dyn # perform operation
fadd.h f28, f5, f31, rdn # perform operation
fadd.h f28, f5, f31, rmm # perform operation
fadd.h f28, f5, f31, rne # perform operation
fadd.h f28, f5, f31, rtz # perform operation
fadd.h f28, f5, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f5, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f5, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f5, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f5, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f5, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x83ff)
li x6, 0x6a69cc038b6abc87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f1, 0(x2) # load 0x00003c00 from memory into f1
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f27, 0(x2) # load 0x000083ff from memory into f27
fadd.h f6, f1, f27, dyn # perform operation
fadd.h f6, f1, f27, rdn # perform operation
fadd.h f6, f1, f27, rmm # perform operation
fadd.h f6, f1, f27, rne # perform operation
fadd.h f6, f1, f27, rtz # perform operation
fadd.h f6, f1, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f1, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f1, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f1, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f1, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f1, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x200)
li x23, 0xb74096731729755e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f31, 0(x2) # load 0x00003c00 from memory into f31
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
fadd.h f23, f31, f24, dyn # perform operation
fadd.h f23, f31, f24, rdn # perform operation
fadd.h f23, f31, f24, rmm # perform operation
fadd.h f23, f31, f24, rne # perform operation
fadd.h f23, f31, f24, rtz # perform operation
fadd.h f23, f31, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f31, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f31, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f31, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f31, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f31, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8200)
li x3, 0x298d9198a4153910 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f23, 0(x2) # load 0x00003c00 from memory into f23
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f11, 0(x2) # load 0x00008200 from memory into f11
fadd.h f3, f23, f11, dyn # perform operation
fadd.h f3, f23, f11, rdn # perform operation
fadd.h f3, f23, f11, rmm # perform operation
fadd.h f3, f23, f11, rne # perform operation
fadd.h f3, f23, f11, rtz # perform operation
fadd.h f3, f23, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f23, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f23, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f23, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f23, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f23, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x1)
li x11, 0x3ccfc0bc7ae54499 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f2, 0(x2) # load 0x00000001 from memory into f2
fadd.h f11, f21, f2, dyn # perform operation
fadd.h f11, f21, f2, rdn # perform operation
fadd.h f11, f21, f2, rmm # perform operation
fadd.h f11, f21, f2, rne # perform operation
fadd.h f11, f21, f2, rtz # perform operation
fadd.h f11, f21, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f21, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f21, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f21, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f21, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f21, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8001)
li x29, 0x14ea417440216b40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f13, 0(x2) # load 0x00008001 from memory into f13
fadd.h f29, f24, f13, dyn # perform operation
fadd.h f29, f24, f13, rdn # perform operation
fadd.h f29, f24, f13, rmm # perform operation
fadd.h f29, f24, f13, rne # perform operation
fadd.h f29, f24, f13, rtz # perform operation
fadd.h f29, f24, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f24, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f24, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f24, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f24, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f24, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7c00)
li x4, 0x6329d0798f005e26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f1, 0(x2) # load 0x00003c00 from memory into f1
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f23, 0(x2) # load 0x00007c00 from memory into f23
fadd.h f4, f1, f23, dyn # perform operation
fadd.h f4, f1, f23, rdn # perform operation
fadd.h f4, f1, f23, rmm # perform operation
fadd.h f4, f1, f23, rne # perform operation
fadd.h f4, f1, f23, rtz # perform operation
fadd.h f4, f1, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f1, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f1, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f1, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f1, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f1, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfc00)
li x24, 0x744d2e18404e3d36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f23, 0(x2) # load 0x00003c00 from memory into f23
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
fadd.h f24, f23, f3, dyn # perform operation
fadd.h f24, f23, f3, rdn # perform operation
fadd.h f24, f23, f3, rmm # perform operation
fadd.h f24, f23, f3, rne # perform operation
fadd.h f24, f23, f3, rtz # perform operation
fadd.h f24, f23, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f23, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f23, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f23, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f23, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f23, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7e00)
li x19, 0x5c43654f2ce9b6a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f26, 0(x2) # load 0x00003c00 from memory into f26
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f22, 0(x2) # load 0x00007e00 from memory into f22
fadd.h f19, f26, f22, dyn # perform operation
fadd.h f19, f26, f22, rdn # perform operation
fadd.h f19, f26, f22, rmm # perform operation
fadd.h f19, f26, f22, rne # perform operation
fadd.h f19, f26, f22, rtz # perform operation
fadd.h f19, f26, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f26, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f26, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f26, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f26, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f26, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7fff)
li x13, 0x5cf227803658e370 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f18, 0(x2) # load 0x00003c00 from memory into f18
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f19, 0(x2) # load 0x00007fff from memory into f19
fadd.h f13, f18, f19, dyn # perform operation
fadd.h f13, f18, f19, rdn # perform operation
fadd.h f13, f18, f19, rmm # perform operation
fadd.h f13, f18, f19, rne # perform operation
fadd.h f13, f18, f19, rtz # perform operation
fadd.h f13, f18, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f18, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f18, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f18, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f18, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f18, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7c01)
li x22, 0xf1dfacaddf93bc03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
fadd.h f22, f16, f9, dyn # perform operation
fadd.h f22, f16, f9, rdn # perform operation
fadd.h f22, f16, f9, rmm # perform operation
fadd.h f22, f16, f9, rne # perform operation
fadd.h f22, f16, f9, rtz # perform operation
fadd.h f22, f16, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f16, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f16, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f16, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f16, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f16, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7dff)
li x2, 0x4cde08596ec972e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f29, 0(x2) # load 0x00007dff from memory into f29
fadd.h f2, f21, f29, dyn # perform operation
fadd.h f2, f21, f29, rdn # perform operation
fadd.h f2, f21, f29, rmm # perform operation
fadd.h f2, f21, f29, rne # perform operation
fadd.h f2, f21, f29, rtz # perform operation
fadd.h f2, f21, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f21, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f21, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f21, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f21, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f21, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x58b4)
li x12, 0xa0cb3213a52ba76a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f31, 0(x2) # load 0x00003c00 from memory into f31
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
fadd.h f12, f31, f17, dyn # perform operation
fadd.h f12, f31, f17, rdn # perform operation
fadd.h f12, f31, f17, rmm # perform operation
fadd.h f12, f31, f17, rne # perform operation
fadd.h f12, f31, f17, rtz # perform operation
fadd.h f12, f31, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f31, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f31, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f31, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f31, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f31, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xc93a)
li x13, 0x81bc9fad8a83b460 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f19, 0(x2) # load 0x00003c00 from memory into f19
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f5, 0(x2) # load 0x0000c93a from memory into f5
fadd.h f13, f19, f5, dyn # perform operation
fadd.h f13, f19, f5, rdn # perform operation
fadd.h f13, f19, f5, rmm # perform operation
fadd.h f13, f19, f5, rne # perform operation
fadd.h f13, f19, f5, rtz # perform operation
fadd.h f13, f19, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f19, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f19, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f19, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f19, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f19, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x0)
li x28, 0xdbabc816f16fc5b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f13, 0(x2) # load 0x0000bc00 from memory into f13
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
fadd.h f28, f13, f12, dyn # perform operation
fadd.h f28, f13, f12, rdn # perform operation
fadd.h f28, f13, f12, rmm # perform operation
fadd.h f28, f13, f12, rne # perform operation
fadd.h f28, f13, f12, rtz # perform operation
fadd.h f28, f13, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f13, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f13, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f13, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f13, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f13, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8000)
li x6, 0x3ae0a80b3d30debd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f2, 0(x2) # load 0x0000bc00 from memory into f2
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f4, 0(x2) # load 0x00008000 from memory into f4
fadd.h f6, f2, f4, dyn # perform operation
fadd.h f6, f2, f4, rdn # perform operation
fadd.h f6, f2, f4, rmm # perform operation
fadd.h f6, f2, f4, rne # perform operation
fadd.h f6, f2, f4, rtz # perform operation
fadd.h f6, f2, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f2, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f2, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f2, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f2, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f2, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3c00)
li x10, 0x09f449f02707093c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
fadd.h f10, f26, f7, dyn # perform operation
fadd.h f10, f26, f7, rdn # perform operation
fadd.h f10, f26, f7, rmm # perform operation
fadd.h f10, f26, f7, rne # perform operation
fadd.h f10, f26, f7, rtz # perform operation
fadd.h f10, f26, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f26, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f26, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f26, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f26, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f26, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xbc00)
li x5, 0x8b6612ccaa83ff3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f20, 0(x2) # load 0x0000bc00 from memory into f20
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f9, 0(x2) # load 0x0000bc00 from memory into f9
fadd.h f5, f20, f9, dyn # perform operation
fadd.h f5, f20, f9, rdn # perform operation
fadd.h f5, f20, f9, rmm # perform operation
fadd.h f5, f20, f9, rne # perform operation
fadd.h f5, f20, f9, rtz # perform operation
fadd.h f5, f20, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f20, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f20, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f20, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f20, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f20, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3e00)
li x14, 0x5cef9a444af813ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f10, 0(x2) # load 0x0000bc00 from memory into f10
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f19, 0(x2) # load 0x00003e00 from memory into f19
fadd.h f14, f10, f19, dyn # perform operation
fadd.h f14, f10, f19, rdn # perform operation
fadd.h f14, f10, f19, rmm # perform operation
fadd.h f14, f10, f19, rne # perform operation
fadd.h f14, f10, f19, rtz # perform operation
fadd.h f14, f10, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f10, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f10, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f10, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f10, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f10, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xbe00)
li x27, 0x86ac26482221676f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f12, 0(x2) # load 0x0000bc00 from memory into f12
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f2, 0(x2) # load 0x0000be00 from memory into f2
fadd.h f27, f12, f2, dyn # perform operation
fadd.h f27, f12, f2, rdn # perform operation
fadd.h f27, f12, f2, rmm # perform operation
fadd.h f27, f12, f2, rne # perform operation
fadd.h f27, f12, f2, rtz # perform operation
fadd.h f27, f12, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f12, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f12, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f12, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f12, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f12, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x4000)
li x22, 0xdfb40286873d5608 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f19, 0(x2) # load 0x0000bc00 from memory into f19
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f18, 0(x2) # load 0x00004000 from memory into f18
fadd.h f22, f19, f18, dyn # perform operation
fadd.h f22, f19, f18, rdn # perform operation
fadd.h f22, f19, f18, rmm # perform operation
fadd.h f22, f19, f18, rne # perform operation
fadd.h f22, f19, f18, rtz # perform operation
fadd.h f22, f19, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f19, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f19, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f19, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f19, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f19, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xc000)
li x28, 0x138174aaefa5785d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
fadd.h f28, f5, f3, dyn # perform operation
fadd.h f28, f5, f3, rdn # perform operation
fadd.h f28, f5, f3, rmm # perform operation
fadd.h f28, f5, f3, rne # perform operation
fadd.h f28, f5, f3, rtz # perform operation
fadd.h f28, f5, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f5, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f5, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f5, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f5, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f5, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x400)
li x12, 0x05e0865f0ddf4e45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f11, 0(x2) # load 0x0000bc00 from memory into f11
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f4, 0(x2) # load 0x00000400 from memory into f4
fadd.h f12, f11, f4, dyn # perform operation
fadd.h f12, f11, f4, rdn # perform operation
fadd.h f12, f11, f4, rmm # perform operation
fadd.h f12, f11, f4, rne # perform operation
fadd.h f12, f11, f4, rtz # perform operation
fadd.h f12, f11, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f11, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f11, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f11, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f11, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f11, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8400)
li x2, 0x847698f25af0a402 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f19, 0(x2) # load 0x0000bc00 from memory into f19
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f16, 0(x2) # load 0x00008400 from memory into f16
fadd.h f2, f19, f16, dyn # perform operation
fadd.h f2, f19, f16, rdn # perform operation
fadd.h f2, f19, f16, rmm # perform operation
fadd.h f2, f19, f16, rne # perform operation
fadd.h f2, f19, f16, rtz # perform operation
fadd.h f2, f19, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f19, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f19, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f19, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f19, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f19, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7bff)
li x11, 0x42794f0f3ecc6c02 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f3, 0(x2) # load 0x0000bc00 from memory into f3
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f4, 0(x2) # load 0x00007bff from memory into f4
fadd.h f11, f3, f4, dyn # perform operation
fadd.h f11, f3, f4, rdn # perform operation
fadd.h f11, f3, f4, rmm # perform operation
fadd.h f11, f3, f4, rne # perform operation
fadd.h f11, f3, f4, rtz # perform operation
fadd.h f11, f3, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f3, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f3, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f3, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f3, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f3, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfbff)
li x3, 0x7f8b21114eda49a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f23, 0(x2) # load 0x0000bc00 from memory into f23
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f22, 0(x2) # load 0x0000fbff from memory into f22
fadd.h f3, f23, f22, dyn # perform operation
fadd.h f3, f23, f22, rdn # perform operation
fadd.h f3, f23, f22, rmm # perform operation
fadd.h f3, f23, f22, rne # perform operation
fadd.h f3, f23, f22, rtz # perform operation
fadd.h f3, f23, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f23, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f23, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f23, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f23, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f23, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3ff)
li x21, 0xbae4947d2db1d9a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f4, 0(x2) # load 0x0000bc00 from memory into f4
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
fadd.h f21, f4, f27, dyn # perform operation
fadd.h f21, f4, f27, rdn # perform operation
fadd.h f21, f4, f27, rmm # perform operation
fadd.h f21, f4, f27, rne # perform operation
fadd.h f21, f4, f27, rtz # perform operation
fadd.h f21, f4, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f4, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f4, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f4, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f4, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f4, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x83ff)
li x25, 0x66ac4d282f803721 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f20, 0(x2) # load 0x0000bc00 from memory into f20
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
fadd.h f25, f20, f22, dyn # perform operation
fadd.h f25, f20, f22, rdn # perform operation
fadd.h f25, f20, f22, rmm # perform operation
fadd.h f25, f20, f22, rne # perform operation
fadd.h f25, f20, f22, rtz # perform operation
fadd.h f25, f20, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f20, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f20, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f20, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f20, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f20, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x200)
li x22, 0x4e6f91308a01ed05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f11, 0(x2) # load 0x00000200 from memory into f11
fadd.h f22, f28, f11, dyn # perform operation
fadd.h f22, f28, f11, rdn # perform operation
fadd.h f22, f28, f11, rmm # perform operation
fadd.h f22, f28, f11, rne # perform operation
fadd.h f22, f28, f11, rtz # perform operation
fadd.h f22, f28, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f28, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f28, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f28, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f28, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f28, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8200)
li x13, 0xa5b6b44d0add6f69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f6, 0(x2) # load 0x0000bc00 from memory into f6
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
fadd.h f13, f6, f23, dyn # perform operation
fadd.h f13, f6, f23, rdn # perform operation
fadd.h f13, f6, f23, rmm # perform operation
fadd.h f13, f6, f23, rne # perform operation
fadd.h f13, f6, f23, rtz # perform operation
fadd.h f13, f6, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f6, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f6, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f6, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f6, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f6, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x1)
li x21, 0x74655ea87644206d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
fadd.h f21, f16, f26, dyn # perform operation
fadd.h f21, f16, f26, rdn # perform operation
fadd.h f21, f16, f26, rmm # perform operation
fadd.h f21, f16, f26, rne # perform operation
fadd.h f21, f16, f26, rtz # perform operation
fadd.h f21, f16, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f16, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f16, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f16, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f16, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f16, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8001)
li x23, 0x374ba73ba806479b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
fadd.h f23, f14, f11, dyn # perform operation
fadd.h f23, f14, f11, rdn # perform operation
fadd.h f23, f14, f11, rmm # perform operation
fadd.h f23, f14, f11, rne # perform operation
fadd.h f23, f14, f11, rtz # perform operation
fadd.h f23, f14, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f14, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f14, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f14, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f14, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f14, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7c00)
li x30, 0x8ec4803ad003555d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f20, 0(x2) # load 0x0000bc00 from memory into f20
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
fadd.h f30, f20, f8, dyn # perform operation
fadd.h f30, f20, f8, rdn # perform operation
fadd.h f30, f20, f8, rmm # perform operation
fadd.h f30, f20, f8, rne # perform operation
fadd.h f30, f20, f8, rtz # perform operation
fadd.h f30, f20, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f20, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f20, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f20, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f20, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f20, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfc00)
li x24, 0x06696920e6272c70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f9, 0(x2) # load 0x0000fc00 from memory into f9
fadd.h f24, f16, f9, dyn # perform operation
fadd.h f24, f16, f9, rdn # perform operation
fadd.h f24, f16, f9, rmm # perform operation
fadd.h f24, f16, f9, rne # perform operation
fadd.h f24, f16, f9, rtz # perform operation
fadd.h f24, f16, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f16, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f16, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f16, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f16, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f16, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7e00)
li x2, 0xd970e666246011a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f10, 0(x2) # load 0x0000bc00 from memory into f10
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
fadd.h f2, f10, f3, dyn # perform operation
fadd.h f2, f10, f3, rdn # perform operation
fadd.h f2, f10, f3, rmm # perform operation
fadd.h f2, f10, f3, rne # perform operation
fadd.h f2, f10, f3, rtz # perform operation
fadd.h f2, f10, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f10, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f10, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f10, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f10, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f10, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7fff)
li x7, 0x720cc5972e3c4154 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f25, 0(x2) # load 0x0000bc00 from memory into f25
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f1, 0(x2) # load 0x00007fff from memory into f1
fadd.h f7, f25, f1, dyn # perform operation
fadd.h f7, f25, f1, rdn # perform operation
fadd.h f7, f25, f1, rmm # perform operation
fadd.h f7, f25, f1, rne # perform operation
fadd.h f7, f25, f1, rtz # perform operation
fadd.h f7, f25, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f25, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f25, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f25, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f25, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f25, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7c01)
li x23, 0xe09394dea207957d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
fadd.h f23, f5, f28, dyn # perform operation
fadd.h f23, f5, f28, rdn # perform operation
fadd.h f23, f5, f28, rmm # perform operation
fadd.h f23, f5, f28, rne # perform operation
fadd.h f23, f5, f28, rtz # perform operation
fadd.h f23, f5, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f5, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f5, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f5, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f5, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f5, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7dff)
li x25, 0xc5325ba5f651948c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f30, 0(x2) # load 0x0000bc00 from memory into f30
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f29, 0(x2) # load 0x00007dff from memory into f29
fadd.h f25, f30, f29, dyn # perform operation
fadd.h f25, f30, f29, rdn # perform operation
fadd.h f25, f30, f29, rmm # perform operation
fadd.h f25, f30, f29, rne # perform operation
fadd.h f25, f30, f29, rtz # perform operation
fadd.h f25, f30, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f30, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f30, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f30, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f30, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f30, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x58b4)
li x19, 0x57d61b1499934028 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f31, 0(x2) # load 0x0000bc00 from memory into f31
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
fadd.h f19, f31, f18, dyn # perform operation
fadd.h f19, f31, f18, rdn # perform operation
fadd.h f19, f31, f18, rmm # perform operation
fadd.h f19, f31, f18, rne # perform operation
fadd.h f19, f31, f18, rtz # perform operation
fadd.h f19, f31, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f31, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f31, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f31, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f31, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f31, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xc93a)
li x30, 0x2dc002952a837d39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f8, 0(x2) # load 0x0000bc00 from memory into f8
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f11, 0(x2) # load 0x0000c93a from memory into f11
fadd.h f30, f8, f11, dyn # perform operation
fadd.h f30, f8, f11, rdn # perform operation
fadd.h f30, f8, f11, rmm # perform operation
fadd.h f30, f8, f11, rne # perform operation
fadd.h f30, f8, f11, rtz # perform operation
fadd.h f30, f8, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f8, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f8, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f8, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f8, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f8, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x0)
li x26, 0x97a8bdf36950a116 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f8, 0(x2) # load 0x00003e00 from memory into f8
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
fadd.h f26, f8, f29, dyn # perform operation
fadd.h f26, f8, f29, rdn # perform operation
fadd.h f26, f8, f29, rmm # perform operation
fadd.h f26, f8, f29, rne # perform operation
fadd.h f26, f8, f29, rtz # perform operation
fadd.h f26, f8, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f8, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f8, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f8, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f8, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f8, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8000)
li x6, 0x3a069b0fbfd66967 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f23, 0(x2) # load 0x00003e00 from memory into f23
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f19, 0(x2) # load 0x00008000 from memory into f19
fadd.h f6, f23, f19, dyn # perform operation
fadd.h f6, f23, f19, rdn # perform operation
fadd.h f6, f23, f19, rmm # perform operation
fadd.h f6, f23, f19, rne # perform operation
fadd.h f6, f23, f19, rtz # perform operation
fadd.h f6, f23, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f23, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f23, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f23, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f23, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f23, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3c00)
li x10, 0xfcdcb10df5c87937 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f9, 0(x2) # load 0x00003e00 from memory into f9
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f12, 0(x2) # load 0x00003c00 from memory into f12
fadd.h f10, f9, f12, dyn # perform operation
fadd.h f10, f9, f12, rdn # perform operation
fadd.h f10, f9, f12, rmm # perform operation
fadd.h f10, f9, f12, rne # perform operation
fadd.h f10, f9, f12, rtz # perform operation
fadd.h f10, f9, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f9, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f9, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f9, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f9, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f9, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xbc00)
li x28, 0xfd3f8411be9edb08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f25, 0(x2) # load 0x00003e00 from memory into f25
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f29, 0(x2) # load 0x0000bc00 from memory into f29
fadd.h f28, f25, f29, dyn # perform operation
fadd.h f28, f25, f29, rdn # perform operation
fadd.h f28, f25, f29, rmm # perform operation
fadd.h f28, f25, f29, rne # perform operation
fadd.h f28, f25, f29, rtz # perform operation
fadd.h f28, f25, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f25, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f25, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f25, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f25, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f25, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3e00)
li x2, 0x0b7885eb91d3acbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f19, 0(x2) # load 0x00003e00 from memory into f19
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f16, 0(x2) # load 0x00003e00 from memory into f16
fadd.h f2, f19, f16, dyn # perform operation
fadd.h f2, f19, f16, rdn # perform operation
fadd.h f2, f19, f16, rmm # perform operation
fadd.h f2, f19, f16, rne # perform operation
fadd.h f2, f19, f16, rtz # perform operation
fadd.h f2, f19, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f19, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f19, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f19, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f19, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f19, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xbe00)
li x10, 0xfb2e5b6cfb10ae8a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f13, 0(x2) # load 0x0000be00 from memory into f13
fadd.h f10, f1, f13, dyn # perform operation
fadd.h f10, f1, f13, rdn # perform operation
fadd.h f10, f1, f13, rmm # perform operation
fadd.h f10, f1, f13, rne # perform operation
fadd.h f10, f1, f13, rtz # perform operation
fadd.h f10, f1, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f1, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f1, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f1, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f1, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f1, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x4000)
li x21, 0x1f415794d5993443 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f9, 0(x2) # load 0x00003e00 from memory into f9
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
fadd.h f21, f9, f6, dyn # perform operation
fadd.h f21, f9, f6, rdn # perform operation
fadd.h f21, f9, f6, rmm # perform operation
fadd.h f21, f9, f6, rne # perform operation
fadd.h f21, f9, f6, rtz # perform operation
fadd.h f21, f9, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f9, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f9, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f9, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f9, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f9, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xc000)
li x12, 0x501edd4d603575aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f16, 0(x2) # load 0x00003e00 from memory into f16
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
fadd.h f12, f16, f5, dyn # perform operation
fadd.h f12, f16, f5, rdn # perform operation
fadd.h f12, f16, f5, rmm # perform operation
fadd.h f12, f16, f5, rne # perform operation
fadd.h f12, f16, f5, rtz # perform operation
fadd.h f12, f16, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f16, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f16, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f16, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f16, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f16, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x400)
li x12, 0x53a71da391da615f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f5, 0(x2) # load 0x00003e00 from memory into f5
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f31, 0(x2) # load 0x00000400 from memory into f31
fadd.h f12, f5, f31, dyn # perform operation
fadd.h f12, f5, f31, rdn # perform operation
fadd.h f12, f5, f31, rmm # perform operation
fadd.h f12, f5, f31, rne # perform operation
fadd.h f12, f5, f31, rtz # perform operation
fadd.h f12, f5, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f5, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f5, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f5, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f5, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f5, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8400)
li x24, 0x04f8f714e931c35b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f16, 0(x2) # load 0x00003e00 from memory into f16
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f19, 0(x2) # load 0x00008400 from memory into f19
fadd.h f24, f16, f19, dyn # perform operation
fadd.h f24, f16, f19, rdn # perform operation
fadd.h f24, f16, f19, rmm # perform operation
fadd.h f24, f16, f19, rne # perform operation
fadd.h f24, f16, f19, rtz # perform operation
fadd.h f24, f16, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f16, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f16, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f16, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f16, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f16, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7bff)
li x6, 0xade8397683125763 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f23, 0(x2) # load 0x00003e00 from memory into f23
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f19, 0(x2) # load 0x00007bff from memory into f19
fadd.h f6, f23, f19, dyn # perform operation
fadd.h f6, f23, f19, rdn # perform operation
fadd.h f6, f23, f19, rmm # perform operation
fadd.h f6, f23, f19, rne # perform operation
fadd.h f6, f23, f19, rtz # perform operation
fadd.h f6, f23, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f23, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f23, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f23, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f23, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f23, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfbff)
li x12, 0x6311f65bb305c5df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f23, 0(x2) # load 0x00003e00 from memory into f23
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f7, 0(x2) # load 0x0000fbff from memory into f7
fadd.h f12, f23, f7, dyn # perform operation
fadd.h f12, f23, f7, rdn # perform operation
fadd.h f12, f23, f7, rmm # perform operation
fadd.h f12, f23, f7, rne # perform operation
fadd.h f12, f23, f7, rtz # perform operation
fadd.h f12, f23, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f23, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f23, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f23, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f23, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f23, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3ff)
li x7, 0x693b7f570342d564 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f9, 0(x2) # load 0x00003e00 from memory into f9
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f22, 0(x2) # load 0x000003ff from memory into f22
fadd.h f7, f9, f22, dyn # perform operation
fadd.h f7, f9, f22, rdn # perform operation
fadd.h f7, f9, f22, rmm # perform operation
fadd.h f7, f9, f22, rne # perform operation
fadd.h f7, f9, f22, rtz # perform operation
fadd.h f7, f9, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f9, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f9, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f9, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f9, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f9, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x83ff)
li x30, 0x268e0cf62779ba67 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f23, 0(x2) # load 0x00003e00 from memory into f23
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f7, 0(x2) # load 0x000083ff from memory into f7
fadd.h f30, f23, f7, dyn # perform operation
fadd.h f30, f23, f7, rdn # perform operation
fadd.h f30, f23, f7, rmm # perform operation
fadd.h f30, f23, f7, rne # perform operation
fadd.h f30, f23, f7, rtz # perform operation
fadd.h f30, f23, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f23, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f23, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f23, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f23, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f23, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x200)
li x26, 0xd984914ade9dda7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
fadd.h f26, f7, f25, dyn # perform operation
fadd.h f26, f7, f25, rdn # perform operation
fadd.h f26, f7, f25, rmm # perform operation
fadd.h f26, f7, f25, rne # perform operation
fadd.h f26, f7, f25, rtz # perform operation
fadd.h f26, f7, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f7, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f7, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f7, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f7, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f7, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8200)
li x23, 0xe2e9dd934f362ea2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f11, 0(x2) # load 0x00003e00 from memory into f11
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f22, 0(x2) # load 0x00008200 from memory into f22
fadd.h f23, f11, f22, dyn # perform operation
fadd.h f23, f11, f22, rdn # perform operation
fadd.h f23, f11, f22, rmm # perform operation
fadd.h f23, f11, f22, rne # perform operation
fadd.h f23, f11, f22, rtz # perform operation
fadd.h f23, f11, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f11, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f11, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f11, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f11, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f11, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x1)
li x28, 0x9a84a6b3f7a750aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f4, 0(x2) # load 0x00003e00 from memory into f4
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f23, 0(x2) # load 0x00000001 from memory into f23
fadd.h f28, f4, f23, dyn # perform operation
fadd.h f28, f4, f23, rdn # perform operation
fadd.h f28, f4, f23, rmm # perform operation
fadd.h f28, f4, f23, rne # perform operation
fadd.h f28, f4, f23, rtz # perform operation
fadd.h f28, f4, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f4, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f4, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f4, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f4, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f4, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8001)
li x30, 0x80da0050a7125d07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f19, 0(x2) # load 0x00008001 from memory into f19
fadd.h f30, f6, f19, dyn # perform operation
fadd.h f30, f6, f19, rdn # perform operation
fadd.h f30, f6, f19, rmm # perform operation
fadd.h f30, f6, f19, rne # perform operation
fadd.h f30, f6, f19, rtz # perform operation
fadd.h f30, f6, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f6, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f6, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f6, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f6, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f6, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7c00)
li x31, 0x2a2a760a2da73a52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f25, 0(x2) # load 0x00003e00 from memory into f25
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f29, 0(x2) # load 0x00007c00 from memory into f29
fadd.h f31, f25, f29, dyn # perform operation
fadd.h f31, f25, f29, rdn # perform operation
fadd.h f31, f25, f29, rmm # perform operation
fadd.h f31, f25, f29, rne # perform operation
fadd.h f31, f25, f29, rtz # perform operation
fadd.h f31, f25, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f25, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f25, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f25, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f25, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f25, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfc00)
li x21, 0x5ed5a442fbe5d1c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f28, 0(x2) # load 0x00003e00 from memory into f28
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
fadd.h f21, f28, f11, dyn # perform operation
fadd.h f21, f28, f11, rdn # perform operation
fadd.h f21, f28, f11, rmm # perform operation
fadd.h f21, f28, f11, rne # perform operation
fadd.h f21, f28, f11, rtz # perform operation
fadd.h f21, f28, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f28, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f28, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f28, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f28, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f28, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7e00)
li x27, 0xb7b9fc7b6bb8f9aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f2, 0(x2) # load 0x00003e00 from memory into f2
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
fadd.h f27, f2, f14, dyn # perform operation
fadd.h f27, f2, f14, rdn # perform operation
fadd.h f27, f2, f14, rmm # perform operation
fadd.h f27, f2, f14, rne # perform operation
fadd.h f27, f2, f14, rtz # perform operation
fadd.h f27, f2, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f2, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f2, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f2, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f2, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f2, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7fff)
li x3, 0xf1ebd18bd294b07b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f23, 0(x2) # load 0x00003e00 from memory into f23
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
fadd.h f3, f23, f18, dyn # perform operation
fadd.h f3, f23, f18, rdn # perform operation
fadd.h f3, f23, f18, rmm # perform operation
fadd.h f3, f23, f18, rne # perform operation
fadd.h f3, f23, f18, rtz # perform operation
fadd.h f3, f23, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f23, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f23, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f23, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f23, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f23, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7c01)
li x9, 0xfe9a7b2559607102 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f19, 0(x2) # load 0x00003e00 from memory into f19
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
fadd.h f9, f19, f25, dyn # perform operation
fadd.h f9, f19, f25, rdn # perform operation
fadd.h f9, f19, f25, rmm # perform operation
fadd.h f9, f19, f25, rne # perform operation
fadd.h f9, f19, f25, rtz # perform operation
fadd.h f9, f19, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f19, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f19, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f19, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f19, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f19, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7dff)
li x12, 0xc5508159a3881c2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f15, 0(x2) # load 0x00003e00 from memory into f15
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
fadd.h f12, f15, f5, dyn # perform operation
fadd.h f12, f15, f5, rdn # perform operation
fadd.h f12, f15, f5, rmm # perform operation
fadd.h f12, f15, f5, rne # perform operation
fadd.h f12, f15, f5, rtz # perform operation
fadd.h f12, f15, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f15, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f15, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f15, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f15, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f15, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x58b4)
li x18, 0x1a5f2623c39bbde1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f9, 0(x2) # load 0x00003e00 from memory into f9
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
fadd.h f18, f9, f30, dyn # perform operation
fadd.h f18, f9, f30, rdn # perform operation
fadd.h f18, f9, f30, rmm # perform operation
fadd.h f18, f9, f30, rne # perform operation
fadd.h f18, f9, f30, rtz # perform operation
fadd.h f18, f9, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f9, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f9, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f9, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f9, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f9, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xc93a)
li x22, 0x0bab7b0b27db068d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f15, 0(x2) # load 0x00003e00 from memory into f15
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f25, 0(x2) # load 0x0000c93a from memory into f25
fadd.h f22, f15, f25, dyn # perform operation
fadd.h f22, f15, f25, rdn # perform operation
fadd.h f22, f15, f25, rmm # perform operation
fadd.h f22, f15, f25, rne # perform operation
fadd.h f22, f15, f25, rtz # perform operation
fadd.h f22, f15, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f15, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f15, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f15, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f15, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f15, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x0)
li x15, 0x2f3bb168235fa43d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
fadd.h f15, f18, f2, dyn # perform operation
fadd.h f15, f18, f2, rdn # perform operation
fadd.h f15, f18, f2, rmm # perform operation
fadd.h f15, f18, f2, rne # perform operation
fadd.h f15, f18, f2, rtz # perform operation
fadd.h f15, f18, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f18, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f18, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f18, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f18, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f18, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8000)
li x9, 0x70bbd02806fc54f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f22, 0(x2) # load 0x0000be00 from memory into f22
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f14, 0(x2) # load 0x00008000 from memory into f14
fadd.h f9, f22, f14, dyn # perform operation
fadd.h f9, f22, f14, rdn # perform operation
fadd.h f9, f22, f14, rmm # perform operation
fadd.h f9, f22, f14, rne # perform operation
fadd.h f9, f22, f14, rtz # perform operation
fadd.h f9, f22, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f22, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f22, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f22, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f22, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f22, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3c00)
li x17, 0xc13ef2e8f08a474b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f10, 0(x2) # load 0x0000be00 from memory into f10
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
fadd.h f17, f10, f15, dyn # perform operation
fadd.h f17, f10, f15, rdn # perform operation
fadd.h f17, f10, f15, rmm # perform operation
fadd.h f17, f10, f15, rne # perform operation
fadd.h f17, f10, f15, rtz # perform operation
fadd.h f17, f10, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f10, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f10, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f10, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f10, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f10, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xbc00)
li x28, 0x17025d1616b2db87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f16, 0(x2) # load 0x0000be00 from memory into f16
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f2, 0(x2) # load 0x0000bc00 from memory into f2
fadd.h f28, f16, f2, dyn # perform operation
fadd.h f28, f16, f2, rdn # perform operation
fadd.h f28, f16, f2, rmm # perform operation
fadd.h f28, f16, f2, rne # perform operation
fadd.h f28, f16, f2, rtz # perform operation
fadd.h f28, f16, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f16, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f16, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f16, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f16, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f16, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3e00)
li x16, 0x0d5cf7b31d5152e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f25, 0(x2) # load 0x0000be00 from memory into f25
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f31, 0(x2) # load 0x00003e00 from memory into f31
fadd.h f16, f25, f31, dyn # perform operation
fadd.h f16, f25, f31, rdn # perform operation
fadd.h f16, f25, f31, rmm # perform operation
fadd.h f16, f25, f31, rne # perform operation
fadd.h f16, f25, f31, rtz # perform operation
fadd.h f16, f25, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f25, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f25, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f25, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f25, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f25, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xbe00)
li x12, 0x836ff71f1684fc83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f4, 0(x2) # load 0x0000be00 from memory into f4
fadd.h f12, f18, f4, dyn # perform operation
fadd.h f12, f18, f4, rdn # perform operation
fadd.h f12, f18, f4, rmm # perform operation
fadd.h f12, f18, f4, rne # perform operation
fadd.h f12, f18, f4, rtz # perform operation
fadd.h f12, f18, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f18, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f18, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f18, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f18, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f18, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x4000)
li x17, 0x7cb853873dd36666 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f13, 0(x2) # load 0x00004000 from memory into f13
fadd.h f17, f8, f13, dyn # perform operation
fadd.h f17, f8, f13, rdn # perform operation
fadd.h f17, f8, f13, rmm # perform operation
fadd.h f17, f8, f13, rne # perform operation
fadd.h f17, f8, f13, rtz # perform operation
fadd.h f17, f8, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f8, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f8, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f8, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f8, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f8, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xc000)
li x22, 0xce5fa6c538a98d2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f16, 0(x2) # load 0x0000be00 from memory into f16
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f6, 0(x2) # load 0x0000c000 from memory into f6
fadd.h f22, f16, f6, dyn # perform operation
fadd.h f22, f16, f6, rdn # perform operation
fadd.h f22, f16, f6, rmm # perform operation
fadd.h f22, f16, f6, rne # perform operation
fadd.h f22, f16, f6, rtz # perform operation
fadd.h f22, f16, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f16, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f16, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f16, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f16, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f16, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x400)
li x27, 0xf50f54626aaaf103 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f19, 0(x2) # load 0x0000be00 from memory into f19
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f15, 0(x2) # load 0x00000400 from memory into f15
fadd.h f27, f19, f15, dyn # perform operation
fadd.h f27, f19, f15, rdn # perform operation
fadd.h f27, f19, f15, rmm # perform operation
fadd.h f27, f19, f15, rne # perform operation
fadd.h f27, f19, f15, rtz # perform operation
fadd.h f27, f19, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f19, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f19, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f19, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f19, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f19, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8400)
li x1, 0x90d04b5811eead62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
fadd.h f1, f23, f18, dyn # perform operation
fadd.h f1, f23, f18, rdn # perform operation
fadd.h f1, f23, f18, rmm # perform operation
fadd.h f1, f23, f18, rne # perform operation
fadd.h f1, f23, f18, rtz # perform operation
fadd.h f1, f23, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f23, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f23, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f23, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f23, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f23, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7bff)
li x3, 0xe18a84f84f1ab381 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
fadd.h f3, f1, f6, dyn # perform operation
fadd.h f3, f1, f6, rdn # perform operation
fadd.h f3, f1, f6, rmm # perform operation
fadd.h f3, f1, f6, rne # perform operation
fadd.h f3, f1, f6, rtz # perform operation
fadd.h f3, f1, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f1, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f1, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f1, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f1, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f1, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfbff)
li x9, 0x3385156086971b87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
fadd.h f9, f20, f21, dyn # perform operation
fadd.h f9, f20, f21, rdn # perform operation
fadd.h f9, f20, f21, rmm # perform operation
fadd.h f9, f20, f21, rne # perform operation
fadd.h f9, f20, f21, rtz # perform operation
fadd.h f9, f20, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f20, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f20, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f20, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f20, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f20, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3ff)
li x6, 0xc70dff0d735920c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f22, 0(x2) # load 0x000003ff from memory into f22
fadd.h f6, f5, f22, dyn # perform operation
fadd.h f6, f5, f22, rdn # perform operation
fadd.h f6, f5, f22, rmm # perform operation
fadd.h f6, f5, f22, rne # perform operation
fadd.h f6, f5, f22, rtz # perform operation
fadd.h f6, f5, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f5, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f5, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f5, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f5, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f5, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x83ff)
li x12, 0xff37ca9a6cc7ed8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f6, 0(x2) # load 0x000083ff from memory into f6
fadd.h f12, f17, f6, dyn # perform operation
fadd.h f12, f17, f6, rdn # perform operation
fadd.h f12, f17, f6, rmm # perform operation
fadd.h f12, f17, f6, rne # perform operation
fadd.h f12, f17, f6, rtz # perform operation
fadd.h f12, f17, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f17, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f17, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f17, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f17, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f17, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x200)
li x26, 0x2fdcee8d0c27b75a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f16, 0(x2) # load 0x0000be00 from memory into f16
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f1, 0(x2) # load 0x00000200 from memory into f1
fadd.h f26, f16, f1, dyn # perform operation
fadd.h f26, f16, f1, rdn # perform operation
fadd.h f26, f16, f1, rmm # perform operation
fadd.h f26, f16, f1, rne # perform operation
fadd.h f26, f16, f1, rtz # perform operation
fadd.h f26, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f16, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8200)
li x27, 0x60b96b3e4b0051c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
fadd.h f27, f18, f15, dyn # perform operation
fadd.h f27, f18, f15, rdn # perform operation
fadd.h f27, f18, f15, rmm # perform operation
fadd.h f27, f18, f15, rne # perform operation
fadd.h f27, f18, f15, rtz # perform operation
fadd.h f27, f18, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f18, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f18, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f18, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f18, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f18, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x1)
li x1, 0x7dc85256019e0c38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f4, 0(x2) # load 0x00000001 from memory into f4
fadd.h f1, f8, f4, dyn # perform operation
fadd.h f1, f8, f4, rdn # perform operation
fadd.h f1, f8, f4, rmm # perform operation
fadd.h f1, f8, f4, rne # perform operation
fadd.h f1, f8, f4, rtz # perform operation
fadd.h f1, f8, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f8, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f8, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f8, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f8, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f8, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8001)
li x6, 0xdb6802627a53ec31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f8, 0(x2) # load 0x00008001 from memory into f8
fadd.h f6, f17, f8, dyn # perform operation
fadd.h f6, f17, f8, rdn # perform operation
fadd.h f6, f17, f8, rmm # perform operation
fadd.h f6, f17, f8, rne # perform operation
fadd.h f6, f17, f8, rtz # perform operation
fadd.h f6, f17, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f17, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f17, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f17, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f17, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f17, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7c00)
li x17, 0x37507112d1401d7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f6, 0(x2) # load 0x0000be00 from memory into f6
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f26, 0(x2) # load 0x00007c00 from memory into f26
fadd.h f17, f6, f26, dyn # perform operation
fadd.h f17, f6, f26, rdn # perform operation
fadd.h f17, f6, f26, rmm # perform operation
fadd.h f17, f6, f26, rne # perform operation
fadd.h f17, f6, f26, rtz # perform operation
fadd.h f17, f6, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f6, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f6, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f6, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f6, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f6, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfc00)
li x16, 0xc94dbf974d1e1e15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f2, 0(x2) # load 0x0000be00 from memory into f2
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f7, 0(x2) # load 0x0000fc00 from memory into f7
fadd.h f16, f2, f7, dyn # perform operation
fadd.h f16, f2, f7, rdn # perform operation
fadd.h f16, f2, f7, rmm # perform operation
fadd.h f16, f2, f7, rne # perform operation
fadd.h f16, f2, f7, rtz # perform operation
fadd.h f16, f2, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f2, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f2, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f2, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f2, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f2, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7e00)
li x4, 0x5d9a26e578fa1794 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f2, 0(x2) # load 0x0000be00 from memory into f2
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f6, 0(x2) # load 0x00007e00 from memory into f6
fadd.h f4, f2, f6, dyn # perform operation
fadd.h f4, f2, f6, rdn # perform operation
fadd.h f4, f2, f6, rmm # perform operation
fadd.h f4, f2, f6, rne # perform operation
fadd.h f4, f2, f6, rtz # perform operation
fadd.h f4, f2, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f2, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f2, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f2, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f2, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f2, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7fff)
li x31, 0xd8287399d3ad0838 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f13, 0(x2) # load 0x00007fff from memory into f13
fadd.h f31, f18, f13, dyn # perform operation
fadd.h f31, f18, f13, rdn # perform operation
fadd.h f31, f18, f13, rmm # perform operation
fadd.h f31, f18, f13, rne # perform operation
fadd.h f31, f18, f13, rtz # perform operation
fadd.h f31, f18, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f18, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f18, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f18, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f18, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f18, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7c01)
li x2, 0xc6a7ca6450429cbc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f20, 0(x2) # load 0x00007c01 from memory into f20
fadd.h f2, f31, f20, dyn # perform operation
fadd.h f2, f31, f20, rdn # perform operation
fadd.h f2, f31, f20, rmm # perform operation
fadd.h f2, f31, f20, rne # perform operation
fadd.h f2, f31, f20, rtz # perform operation
fadd.h f2, f31, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f31, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f31, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f31, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f31, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f31, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7dff)
li x7, 0xd3f03195fae5d667 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f10, 0(x2) # load 0x0000be00 from memory into f10
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
fadd.h f7, f10, f5, dyn # perform operation
fadd.h f7, f10, f5, rdn # perform operation
fadd.h f7, f10, f5, rmm # perform operation
fadd.h f7, f10, f5, rne # perform operation
fadd.h f7, f10, f5, rtz # perform operation
fadd.h f7, f10, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f10, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f10, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f10, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f10, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f10, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x58b4)
li x28, 0x520ede2e2becd909 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
fadd.h f28, f8, f30, dyn # perform operation
fadd.h f28, f8, f30, rdn # perform operation
fadd.h f28, f8, f30, rmm # perform operation
fadd.h f28, f8, f30, rne # perform operation
fadd.h f28, f8, f30, rtz # perform operation
fadd.h f28, f8, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f8, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f8, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f8, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f8, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f8, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xc93a)
li x4, 0x6bf9ddb081c109a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
fadd.h f4, f5, f2, dyn # perform operation
fadd.h f4, f5, f2, rdn # perform operation
fadd.h f4, f5, f2, rmm # perform operation
fadd.h f4, f5, f2, rne # perform operation
fadd.h f4, f5, f2, rtz # perform operation
fadd.h f4, f5, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f5, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f5, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f5, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f5, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f5, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x0)
li x7, 0x613c3e873eb34036 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
fadd.h f7, f9, f2, dyn # perform operation
fadd.h f7, f9, f2, rdn # perform operation
fadd.h f7, f9, f2, rmm # perform operation
fadd.h f7, f9, f2, rne # perform operation
fadd.h f7, f9, f2, rtz # perform operation
fadd.h f7, f9, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f9, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f9, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f9, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f9, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f9, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8000)
li x25, 0xdaad77f58f02d557 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f4, 0(x2) # load 0x00004000 from memory into f4
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
fadd.h f25, f4, f7, dyn # perform operation
fadd.h f25, f4, f7, rdn # perform operation
fadd.h f25, f4, f7, rmm # perform operation
fadd.h f25, f4, f7, rne # perform operation
fadd.h f25, f4, f7, rtz # perform operation
fadd.h f25, f4, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f4, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f4, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f4, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f4, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f4, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3c00)
li x18, 0x18c3f756ba401465 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f19, 0(x2) # load 0x00003c00 from memory into f19
fadd.h f18, f25, f19, dyn # perform operation
fadd.h f18, f25, f19, rdn # perform operation
fadd.h f18, f25, f19, rmm # perform operation
fadd.h f18, f25, f19, rne # perform operation
fadd.h f18, f25, f19, rtz # perform operation
fadd.h f18, f25, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f25, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f25, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f25, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f25, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f25, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xbc00)
li x2, 0xc78b05d266d1ce33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f17, 0(x2) # load 0x0000bc00 from memory into f17
fadd.h f2, f29, f17, dyn # perform operation
fadd.h f2, f29, f17, rdn # perform operation
fadd.h f2, f29, f17, rmm # perform operation
fadd.h f2, f29, f17, rne # perform operation
fadd.h f2, f29, f17, rtz # perform operation
fadd.h f2, f29, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f29, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f29, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f29, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f29, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f29, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3e00)
li x29, 0xfd0d3ff517c0d95c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
fadd.h f29, f2, f7, dyn # perform operation
fadd.h f29, f2, f7, rdn # perform operation
fadd.h f29, f2, f7, rmm # perform operation
fadd.h f29, f2, f7, rne # perform operation
fadd.h f29, f2, f7, rtz # perform operation
fadd.h f29, f2, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f2, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f2, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f2, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f2, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f2, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xbe00)
li x1, 0x8a4bdf50932e9b3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f19, 0(x2) # load 0x00004000 from memory into f19
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
fadd.h f1, f19, f26, dyn # perform operation
fadd.h f1, f19, f26, rdn # perform operation
fadd.h f1, f19, f26, rmm # perform operation
fadd.h f1, f19, f26, rne # perform operation
fadd.h f1, f19, f26, rtz # perform operation
fadd.h f1, f19, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f19, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f19, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f19, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f19, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f19, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x4000)
li x17, 0x6a48f311c15d478b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f26, 0(x2) # load 0x00004000 from memory into f26
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
fadd.h f17, f26, f29, dyn # perform operation
fadd.h f17, f26, f29, rdn # perform operation
fadd.h f17, f26, f29, rmm # perform operation
fadd.h f17, f26, f29, rne # perform operation
fadd.h f17, f26, f29, rtz # perform operation
fadd.h f17, f26, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f26, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f26, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f26, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f26, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f26, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xc000)
li x31, 0xe9f3e1b6bbf53184 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
fadd.h f31, f2, f21, dyn # perform operation
fadd.h f31, f2, f21, rdn # perform operation
fadd.h f31, f2, f21, rmm # perform operation
fadd.h f31, f2, f21, rne # perform operation
fadd.h f31, f2, f21, rtz # perform operation
fadd.h f31, f2, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f2, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f2, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f2, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f2, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f2, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x400)
li x31, 0x05f3413dbef2dba3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f20, 0(x2) # load 0x00004000 from memory into f20
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
fadd.h f31, f20, f23, dyn # perform operation
fadd.h f31, f20, f23, rdn # perform operation
fadd.h f31, f20, f23, rmm # perform operation
fadd.h f31, f20, f23, rne # perform operation
fadd.h f31, f20, f23, rtz # perform operation
fadd.h f31, f20, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f20, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f20, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f20, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f20, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f20, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8400)
li x9, 0x7156bf17bac9e53c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f30, 0(x2) # load 0x00004000 from memory into f30
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f4, 0(x2) # load 0x00008400 from memory into f4
fadd.h f9, f30, f4, dyn # perform operation
fadd.h f9, f30, f4, rdn # perform operation
fadd.h f9, f30, f4, rmm # perform operation
fadd.h f9, f30, f4, rne # perform operation
fadd.h f9, f30, f4, rtz # perform operation
fadd.h f9, f30, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f30, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f30, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f30, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f30, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f30, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7bff)
li x24, 0xee98c2a2c6c254df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f20, 0(x2) # load 0x00007bff from memory into f20
fadd.h f24, f29, f20, dyn # perform operation
fadd.h f24, f29, f20, rdn # perform operation
fadd.h f24, f29, f20, rmm # perform operation
fadd.h f24, f29, f20, rne # perform operation
fadd.h f24, f29, f20, rtz # perform operation
fadd.h f24, f29, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f29, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f29, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f29, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f29, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f29, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfbff)
li x9, 0x96e56158ae3912be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f1, 0(x2) # load 0x0000fbff from memory into f1
fadd.h f9, f21, f1, dyn # perform operation
fadd.h f9, f21, f1, rdn # perform operation
fadd.h f9, f21, f1, rmm # perform operation
fadd.h f9, f21, f1, rne # perform operation
fadd.h f9, f21, f1, rtz # perform operation
fadd.h f9, f21, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f21, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f21, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f21, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f21, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f21, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3ff)
li x22, 0x7bfc3998498c2446 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f24, 0(x2) # load 0x000003ff from memory into f24
fadd.h f22, f28, f24, dyn # perform operation
fadd.h f22, f28, f24, rdn # perform operation
fadd.h f22, f28, f24, rmm # perform operation
fadd.h f22, f28, f24, rne # perform operation
fadd.h f22, f28, f24, rtz # perform operation
fadd.h f22, f28, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f28, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f28, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f28, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f28, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f28, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x83ff)
li x9, 0x357aa90fa29c53c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f31, 0(x2) # load 0x000083ff from memory into f31
fadd.h f9, f25, f31, dyn # perform operation
fadd.h f9, f25, f31, rdn # perform operation
fadd.h f9, f25, f31, rmm # perform operation
fadd.h f9, f25, f31, rne # perform operation
fadd.h f9, f25, f31, rtz # perform operation
fadd.h f9, f25, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f25, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f25, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f25, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f25, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f25, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x200)
li x6, 0xf0ad91f69200a6bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f26, 0(x2) # load 0x00000200 from memory into f26
fadd.h f6, f29, f26, dyn # perform operation
fadd.h f6, f29, f26, rdn # perform operation
fadd.h f6, f29, f26, rmm # perform operation
fadd.h f6, f29, f26, rne # perform operation
fadd.h f6, f29, f26, rtz # perform operation
fadd.h f6, f29, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f29, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f29, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f29, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f29, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f29, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8200)
li x25, 0xf74a9e3f00d3f88f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
fadd.h f25, f2, f20, dyn # perform operation
fadd.h f25, f2, f20, rdn # perform operation
fadd.h f25, f2, f20, rmm # perform operation
fadd.h f25, f2, f20, rne # perform operation
fadd.h f25, f2, f20, rtz # perform operation
fadd.h f25, f2, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f2, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f2, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f2, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f2, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f2, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x1)
li x3, 0x182e3ed34aa7bb9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f5, 0(x2) # load 0x00000001 from memory into f5
fadd.h f3, f2, f5, dyn # perform operation
fadd.h f3, f2, f5, rdn # perform operation
fadd.h f3, f2, f5, rmm # perform operation
fadd.h f3, f2, f5, rne # perform operation
fadd.h f3, f2, f5, rtz # perform operation
fadd.h f3, f2, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f2, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f2, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f2, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f2, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f2, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8001)
li x7, 0xa6033f319ad52e8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f12, 0(x2) # load 0x00004000 from memory into f12
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
fadd.h f7, f12, f31, dyn # perform operation
fadd.h f7, f12, f31, rdn # perform operation
fadd.h f7, f12, f31, rmm # perform operation
fadd.h f7, f12, f31, rne # perform operation
fadd.h f7, f12, f31, rtz # perform operation
fadd.h f7, f12, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f12, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f12, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f12, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f12, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f12, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7c00)
li x9, 0x2f86eec802365e95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f31, 0(x2) # load 0x00007c00 from memory into f31
fadd.h f9, f27, f31, dyn # perform operation
fadd.h f9, f27, f31, rdn # perform operation
fadd.h f9, f27, f31, rmm # perform operation
fadd.h f9, f27, f31, rne # perform operation
fadd.h f9, f27, f31, rtz # perform operation
fadd.h f9, f27, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f27, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f27, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f27, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f27, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f27, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfc00)
li x23, 0x697893d99f8283a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f15, 0(x2) # load 0x00004000 from memory into f15
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f29, 0(x2) # load 0x0000fc00 from memory into f29
fadd.h f23, f15, f29, dyn # perform operation
fadd.h f23, f15, f29, rdn # perform operation
fadd.h f23, f15, f29, rmm # perform operation
fadd.h f23, f15, f29, rne # perform operation
fadd.h f23, f15, f29, rtz # perform operation
fadd.h f23, f15, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f15, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f15, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f15, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f15, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f15, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7e00)
li x29, 0x0e63357c855d1fda # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f24, 0(x2) # load 0x00007e00 from memory into f24
fadd.h f29, f23, f24, dyn # perform operation
fadd.h f29, f23, f24, rdn # perform operation
fadd.h f29, f23, f24, rmm # perform operation
fadd.h f29, f23, f24, rne # perform operation
fadd.h f29, f23, f24, rtz # perform operation
fadd.h f29, f23, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f23, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f23, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f23, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f23, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f23, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7fff)
li x3, 0x1d837dbcfc115129 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f13, 0(x2) # load 0x00004000 from memory into f13
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f28, 0(x2) # load 0x00007fff from memory into f28
fadd.h f3, f13, f28, dyn # perform operation
fadd.h f3, f13, f28, rdn # perform operation
fadd.h f3, f13, f28, rmm # perform operation
fadd.h f3, f13, f28, rne # perform operation
fadd.h f3, f13, f28, rtz # perform operation
fadd.h f3, f13, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f13, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f13, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f13, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f13, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f13, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7c01)
li x28, 0x6ba88075e9a1b0b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f15, 0(x2) # load 0x00007c01 from memory into f15
fadd.h f28, f25, f15, dyn # perform operation
fadd.h f28, f25, f15, rdn # perform operation
fadd.h f28, f25, f15, rmm # perform operation
fadd.h f28, f25, f15, rne # perform operation
fadd.h f28, f25, f15, rtz # perform operation
fadd.h f28, f25, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f25, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f25, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f25, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f25, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f25, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7dff)
li x11, 0xc3fa553c2748102e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
fadd.h f11, f23, f5, dyn # perform operation
fadd.h f11, f23, f5, rdn # perform operation
fadd.h f11, f23, f5, rmm # perform operation
fadd.h f11, f23, f5, rne # perform operation
fadd.h f11, f23, f5, rtz # perform operation
fadd.h f11, f23, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f23, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f23, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f23, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f23, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f23, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x58b4)
li x27, 0xb21d2fcba56ea162 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
fadd.h f27, f23, f18, dyn # perform operation
fadd.h f27, f23, f18, rdn # perform operation
fadd.h f27, f23, f18, rmm # perform operation
fadd.h f27, f23, f18, rne # perform operation
fadd.h f27, f23, f18, rtz # perform operation
fadd.h f27, f23, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f23, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f23, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f23, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f23, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f23, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xc93a)
li x29, 0x8765a287cbfba367 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f4, 0(x2) # load 0x00004000 from memory into f4
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
fadd.h f29, f4, f7, dyn # perform operation
fadd.h f29, f4, f7, rdn # perform operation
fadd.h f29, f4, f7, rmm # perform operation
fadd.h f29, f4, f7, rne # perform operation
fadd.h f29, f4, f7, rtz # perform operation
fadd.h f29, f4, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f4, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f4, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f4, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f4, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f4, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x0)
li x23, 0x4f05540f2fe2017f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f8, 0(x2) # load 0x0000c000 from memory into f8
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f20, 0(x2) # load 0x00000000 from memory into f20
fadd.h f23, f8, f20, dyn # perform operation
fadd.h f23, f8, f20, rdn # perform operation
fadd.h f23, f8, f20, rmm # perform operation
fadd.h f23, f8, f20, rne # perform operation
fadd.h f23, f8, f20, rtz # perform operation
fadd.h f23, f8, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f8, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f8, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f8, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f8, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f8, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8000)
li x16, 0x99ba8c5834fad743 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f8, 0(x2) # load 0x00008000 from memory into f8
fadd.h f16, f18, f8, dyn # perform operation
fadd.h f16, f18, f8, rdn # perform operation
fadd.h f16, f18, f8, rmm # perform operation
fadd.h f16, f18, f8, rne # perform operation
fadd.h f16, f18, f8, rtz # perform operation
fadd.h f16, f18, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f18, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f18, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f18, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f18, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f18, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3c00)
li x22, 0x3ac08c73cc7f86a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f8, 0(x2) # load 0x00003c00 from memory into f8
fadd.h f22, f16, f8, dyn # perform operation
fadd.h f22, f16, f8, rdn # perform operation
fadd.h f22, f16, f8, rmm # perform operation
fadd.h f22, f16, f8, rne # perform operation
fadd.h f22, f16, f8, rtz # perform operation
fadd.h f22, f16, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f16, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f16, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f16, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f16, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f16, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xbc00)
li x17, 0x4d482721911ea618 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f8, 0(x2) # load 0x0000bc00 from memory into f8
fadd.h f17, f3, f8, dyn # perform operation
fadd.h f17, f3, f8, rdn # perform operation
fadd.h f17, f3, f8, rmm # perform operation
fadd.h f17, f3, f8, rne # perform operation
fadd.h f17, f3, f8, rtz # perform operation
fadd.h f17, f3, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f3, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f3, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f3, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f3, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f3, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3e00)
li x29, 0x761584ce85fe3eb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f6, 0(x2) # load 0x0000c000 from memory into f6
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f15, 0(x2) # load 0x00003e00 from memory into f15
fadd.h f29, f6, f15, dyn # perform operation
fadd.h f29, f6, f15, rdn # perform operation
fadd.h f29, f6, f15, rmm # perform operation
fadd.h f29, f6, f15, rne # perform operation
fadd.h f29, f6, f15, rtz # perform operation
fadd.h f29, f6, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f6, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f6, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f6, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f6, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f6, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xbe00)
li x22, 0xf8d1ca7fd67a7496 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f10, 0(x2) # load 0x0000be00 from memory into f10
fadd.h f22, f18, f10, dyn # perform operation
fadd.h f22, f18, f10, rdn # perform operation
fadd.h f22, f18, f10, rmm # perform operation
fadd.h f22, f18, f10, rne # perform operation
fadd.h f22, f18, f10, rtz # perform operation
fadd.h f22, f18, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f18, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f18, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f18, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f18, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f18, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x4000)
li x10, 0xb7b7043a428c8ce1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f4, 0(x2) # load 0x0000c000 from memory into f4
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
fadd.h f10, f4, f21, dyn # perform operation
fadd.h f10, f4, f21, rdn # perform operation
fadd.h f10, f4, f21, rmm # perform operation
fadd.h f10, f4, f21, rne # perform operation
fadd.h f10, f4, f21, rtz # perform operation
fadd.h f10, f4, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f4, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f4, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f4, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f4, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f4, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xc000)
li x23, 0x5f424948718b276d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f7, 0(x2) # load 0x0000c000 from memory into f7
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
fadd.h f23, f7, f5, dyn # perform operation
fadd.h f23, f7, f5, rdn # perform operation
fadd.h f23, f7, f5, rmm # perform operation
fadd.h f23, f7, f5, rne # perform operation
fadd.h f23, f7, f5, rtz # perform operation
fadd.h f23, f7, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f7, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f7, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f7, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f7, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f7, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x400)
li x3, 0xf9dc571d6ff961c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f22, 0(x2) # load 0x0000c000 from memory into f22
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
fadd.h f3, f22, f16, dyn # perform operation
fadd.h f3, f22, f16, rdn # perform operation
fadd.h f3, f22, f16, rmm # perform operation
fadd.h f3, f22, f16, rne # perform operation
fadd.h f3, f22, f16, rtz # perform operation
fadd.h f3, f22, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f22, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f22, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f22, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f22, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f22, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8400)
li x25, 0xf8ddf16ef646906f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f10, 0(x2) # load 0x0000c000 from memory into f10
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f30, 0(x2) # load 0x00008400 from memory into f30
fadd.h f25, f10, f30, dyn # perform operation
fadd.h f25, f10, f30, rdn # perform operation
fadd.h f25, f10, f30, rmm # perform operation
fadd.h f25, f10, f30, rne # perform operation
fadd.h f25, f10, f30, rtz # perform operation
fadd.h f25, f10, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f10, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f10, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f10, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f10, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f10, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7bff)
li x20, 0x0c864da296a5d690 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
fadd.h f20, f21, f2, dyn # perform operation
fadd.h f20, f21, f2, rdn # perform operation
fadd.h f20, f21, f2, rmm # perform operation
fadd.h f20, f21, f2, rne # perform operation
fadd.h f20, f21, f2, rtz # perform operation
fadd.h f20, f21, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f21, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f21, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f21, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f21, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f21, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfbff)
li x14, 0x70e6201245610b92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f31, 0(x2) # load 0x0000c000 from memory into f31
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f13, 0(x2) # load 0x0000fbff from memory into f13
fadd.h f14, f31, f13, dyn # perform operation
fadd.h f14, f31, f13, rdn # perform operation
fadd.h f14, f31, f13, rmm # perform operation
fadd.h f14, f31, f13, rne # perform operation
fadd.h f14, f31, f13, rtz # perform operation
fadd.h f14, f31, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f31, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f31, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f31, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f31, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f31, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3ff)
li x22, 0xec77686862bdfee6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f8, 0(x2) # load 0x0000c000 from memory into f8
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f25, 0(x2) # load 0x000003ff from memory into f25
fadd.h f22, f8, f25, dyn # perform operation
fadd.h f22, f8, f25, rdn # perform operation
fadd.h f22, f8, f25, rmm # perform operation
fadd.h f22, f8, f25, rne # perform operation
fadd.h f22, f8, f25, rtz # perform operation
fadd.h f22, f8, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f8, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f8, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f8, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f8, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f8, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x83ff)
li x30, 0xce8c00b8f2828bf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f2, 0(x2) # load 0x0000c000 from memory into f2
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f7, 0(x2) # load 0x000083ff from memory into f7
fadd.h f30, f2, f7, dyn # perform operation
fadd.h f30, f2, f7, rdn # perform operation
fadd.h f30, f2, f7, rmm # perform operation
fadd.h f30, f2, f7, rne # perform operation
fadd.h f30, f2, f7, rtz # perform operation
fadd.h f30, f2, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f2, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f2, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f2, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f2, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f2, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x200)
li x2, 0xb8b02849116514e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f8, 0(x2) # load 0x0000c000 from memory into f8
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f23, 0(x2) # load 0x00000200 from memory into f23
fadd.h f2, f8, f23, dyn # perform operation
fadd.h f2, f8, f23, rdn # perform operation
fadd.h f2, f8, f23, rmm # perform operation
fadd.h f2, f8, f23, rne # perform operation
fadd.h f2, f8, f23, rtz # perform operation
fadd.h f2, f8, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f8, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f8, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f8, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f8, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f8, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8200)
li x4, 0x89ff916ad77fd9fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
fadd.h f4, f9, f10, dyn # perform operation
fadd.h f4, f9, f10, rdn # perform operation
fadd.h f4, f9, f10, rmm # perform operation
fadd.h f4, f9, f10, rne # perform operation
fadd.h f4, f9, f10, rtz # perform operation
fadd.h f4, f9, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f9, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f9, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f9, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f9, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f9, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x1)
li x8, 0x7e550e0cd8fd34f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f6, 0(x2) # load 0x0000c000 from memory into f6
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f25, 0(x2) # load 0x00000001 from memory into f25
fadd.h f8, f6, f25, dyn # perform operation
fadd.h f8, f6, f25, rdn # perform operation
fadd.h f8, f6, f25, rmm # perform operation
fadd.h f8, f6, f25, rne # perform operation
fadd.h f8, f6, f25, rtz # perform operation
fadd.h f8, f6, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f6, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f6, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f6, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f6, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f6, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8001)
li x27, 0x2e80fa8f436a4d56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f12, 0(x2) # load 0x0000c000 from memory into f12
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f28, 0(x2) # load 0x00008001 from memory into f28
fadd.h f27, f12, f28, dyn # perform operation
fadd.h f27, f12, f28, rdn # perform operation
fadd.h f27, f12, f28, rmm # perform operation
fadd.h f27, f12, f28, rne # perform operation
fadd.h f27, f12, f28, rtz # perform operation
fadd.h f27, f12, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f12, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f12, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f12, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f12, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f12, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7c00)
li x19, 0x2daf5ed137dc2dd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f28, 0(x2) # load 0x0000c000 from memory into f28
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f4, 0(x2) # load 0x00007c00 from memory into f4
fadd.h f19, f28, f4, dyn # perform operation
fadd.h f19, f28, f4, rdn # perform operation
fadd.h f19, f28, f4, rmm # perform operation
fadd.h f19, f28, f4, rne # perform operation
fadd.h f19, f28, f4, rtz # perform operation
fadd.h f19, f28, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f28, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f28, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f28, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f28, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f28, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfc00)
li x21, 0x62f975bfc1dea4a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f13, 0(x2) # load 0x0000c000 from memory into f13
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f29, 0(x2) # load 0x0000fc00 from memory into f29
fadd.h f21, f13, f29, dyn # perform operation
fadd.h f21, f13, f29, rdn # perform operation
fadd.h f21, f13, f29, rmm # perform operation
fadd.h f21, f13, f29, rne # perform operation
fadd.h f21, f13, f29, rtz # perform operation
fadd.h f21, f13, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f13, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f13, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f13, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f13, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f13, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7e00)
li x24, 0x7bc400b460bccb16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f22, 0(x2) # load 0x0000c000 from memory into f22
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
fadd.h f24, f22, f14, dyn # perform operation
fadd.h f24, f22, f14, rdn # perform operation
fadd.h f24, f22, f14, rmm # perform operation
fadd.h f24, f22, f14, rne # perform operation
fadd.h f24, f22, f14, rtz # perform operation
fadd.h f24, f22, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f22, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f22, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f22, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f22, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f22, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7fff)
li x13, 0x63399c081bb6245e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f14, 0(x2) # load 0x0000c000 from memory into f14
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f7, 0(x2) # load 0x00007fff from memory into f7
fadd.h f13, f14, f7, dyn # perform operation
fadd.h f13, f14, f7, rdn # perform operation
fadd.h f13, f14, f7, rmm # perform operation
fadd.h f13, f14, f7, rne # perform operation
fadd.h f13, f14, f7, rtz # perform operation
fadd.h f13, f14, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f14, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f14, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f14, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f14, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f14, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7c01)
li x8, 0x14e31b44168f0131 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f27, 0(x2) # load 0x0000c000 from memory into f27
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f10, 0(x2) # load 0x00007c01 from memory into f10
fadd.h f8, f27, f10, dyn # perform operation
fadd.h f8, f27, f10, rdn # perform operation
fadd.h f8, f27, f10, rmm # perform operation
fadd.h f8, f27, f10, rne # perform operation
fadd.h f8, f27, f10, rtz # perform operation
fadd.h f8, f27, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f27, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f27, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f27, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f27, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f27, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7dff)
li x5, 0x5e13a8a0aaa978ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f30, 0(x2) # load 0x0000c000 from memory into f30
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
fadd.h f5, f30, f7, dyn # perform operation
fadd.h f5, f30, f7, rdn # perform operation
fadd.h f5, f30, f7, rmm # perform operation
fadd.h f5, f30, f7, rne # perform operation
fadd.h f5, f30, f7, rtz # perform operation
fadd.h f5, f30, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f30, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f30, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f30, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f30, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f30, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x58b4)
li x16, 0x8bc84191c3e07de4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f10, 0(x2) # load 0x0000c000 from memory into f10
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
fadd.h f16, f10, f18, dyn # perform operation
fadd.h f16, f10, f18, rdn # perform operation
fadd.h f16, f10, f18, rmm # perform operation
fadd.h f16, f10, f18, rne # perform operation
fadd.h f16, f10, f18, rtz # perform operation
fadd.h f16, f10, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f10, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f10, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f10, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f10, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f10, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xc93a)
li x28, 0x8409faa6a3dd5904 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f7, 0(x2) # load 0x0000c000 from memory into f7
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f3, 0(x2) # load 0x0000c93a from memory into f3
fadd.h f28, f7, f3, dyn # perform operation
fadd.h f28, f7, f3, rdn # perform operation
fadd.h f28, f7, f3, rmm # perform operation
fadd.h f28, f7, f3, rne # perform operation
fadd.h f28, f7, f3, rtz # perform operation
fadd.h f28, f7, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f7, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f7, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f7, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f7, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f7, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x0)
li x14, 0x30b4e34beaedaf1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f1, 0(x2) # load 0x00000400 from memory into f1
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f23, 0(x2) # load 0x00000000 from memory into f23
fadd.h f14, f1, f23, dyn # perform operation
fadd.h f14, f1, f23, rdn # perform operation
fadd.h f14, f1, f23, rmm # perform operation
fadd.h f14, f1, f23, rne # perform operation
fadd.h f14, f1, f23, rtz # perform operation
fadd.h f14, f1, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f1, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f1, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f1, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f1, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f1, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8000)
li x29, 0xa90de487f93d79f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f3, 0(x2) # load 0x00000400 from memory into f3
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f27, 0(x2) # load 0x00008000 from memory into f27
fadd.h f29, f3, f27, dyn # perform operation
fadd.h f29, f3, f27, rdn # perform operation
fadd.h f29, f3, f27, rmm # perform operation
fadd.h f29, f3, f27, rne # perform operation
fadd.h f29, f3, f27, rtz # perform operation
fadd.h f29, f3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f3, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f3, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f3, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f3, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f3, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3c00)
li x27, 0xde08d995db3fb6fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f11, 0(x2) # load 0x00000400 from memory into f11
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
fadd.h f27, f11, f30, dyn # perform operation
fadd.h f27, f11, f30, rdn # perform operation
fadd.h f27, f11, f30, rmm # perform operation
fadd.h f27, f11, f30, rne # perform operation
fadd.h f27, f11, f30, rtz # perform operation
fadd.h f27, f11, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f11, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f11, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f11, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f11, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f11, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xbc00)
li x24, 0x6c8a7032f1f3b9be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f17, 0(x2) # load 0x00000400 from memory into f17
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f1, 0(x2) # load 0x0000bc00 from memory into f1
fadd.h f24, f17, f1, dyn # perform operation
fadd.h f24, f17, f1, rdn # perform operation
fadd.h f24, f17, f1, rmm # perform operation
fadd.h f24, f17, f1, rne # perform operation
fadd.h f24, f17, f1, rtz # perform operation
fadd.h f24, f17, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f17, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f17, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f17, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f17, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f17, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3e00)
li x31, 0x7411df8960e113a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f15, 0(x2) # load 0x00003e00 from memory into f15
fadd.h f31, f16, f15, dyn # perform operation
fadd.h f31, f16, f15, rdn # perform operation
fadd.h f31, f16, f15, rmm # perform operation
fadd.h f31, f16, f15, rne # perform operation
fadd.h f31, f16, f15, rtz # perform operation
fadd.h f31, f16, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f16, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f16, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f16, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f16, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f16, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xbe00)
li x29, 0xb5d0146ab55e9bce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
fadd.h f29, f30, f31, dyn # perform operation
fadd.h f29, f30, f31, rdn # perform operation
fadd.h f29, f30, f31, rmm # perform operation
fadd.h f29, f30, f31, rne # perform operation
fadd.h f29, f30, f31, rtz # perform operation
fadd.h f29, f30, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f30, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f30, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f30, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f30, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f30, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x4000)
li x1, 0x4f5b0263181c2093 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f6, 0(x2) # load 0x00000400 from memory into f6
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
fadd.h f1, f6, f2, dyn # perform operation
fadd.h f1, f6, f2, rdn # perform operation
fadd.h f1, f6, f2, rmm # perform operation
fadd.h f1, f6, f2, rne # perform operation
fadd.h f1, f6, f2, rtz # perform operation
fadd.h f1, f6, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f6, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f6, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f6, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f6, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f6, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xc000)
li x9, 0x250e49ecf3e10d8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f28, 0(x2) # load 0x0000c000 from memory into f28
fadd.h f9, f8, f28, dyn # perform operation
fadd.h f9, f8, f28, rdn # perform operation
fadd.h f9, f8, f28, rmm # perform operation
fadd.h f9, f8, f28, rne # perform operation
fadd.h f9, f8, f28, rtz # perform operation
fadd.h f9, f8, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f8, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f8, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f8, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f8, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f8, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x400)
li x29, 0x4796c9a1d5753371 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
fadd.h f29, f8, f2, dyn # perform operation
fadd.h f29, f8, f2, rdn # perform operation
fadd.h f29, f8, f2, rmm # perform operation
fadd.h f29, f8, f2, rne # perform operation
fadd.h f29, f8, f2, rtz # perform operation
fadd.h f29, f8, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f8, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f8, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f8, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f8, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f8, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8400)
li x21, 0x7447632673d5fab8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
fadd.h f21, f30, f29, dyn # perform operation
fadd.h f21, f30, f29, rdn # perform operation
fadd.h f21, f30, f29, rmm # perform operation
fadd.h f21, f30, f29, rne # perform operation
fadd.h f21, f30, f29, rtz # perform operation
fadd.h f21, f30, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f30, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f30, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f30, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f30, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f30, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7bff)
li x30, 0x39831f4fa704aba2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f10, 0(x2) # load 0x00000400 from memory into f10
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f13, 0(x2) # load 0x00007bff from memory into f13
fadd.h f30, f10, f13, dyn # perform operation
fadd.h f30, f10, f13, rdn # perform operation
fadd.h f30, f10, f13, rmm # perform operation
fadd.h f30, f10, f13, rne # perform operation
fadd.h f30, f10, f13, rtz # perform operation
fadd.h f30, f10, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f10, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f10, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f10, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f10, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f10, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfbff)
li x22, 0x106a7cdeb09bbec0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f3, 0(x2) # load 0x00000400 from memory into f3
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
fadd.h f22, f3, f21, dyn # perform operation
fadd.h f22, f3, f21, rdn # perform operation
fadd.h f22, f3, f21, rmm # perform operation
fadd.h f22, f3, f21, rne # perform operation
fadd.h f22, f3, f21, rtz # perform operation
fadd.h f22, f3, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f3, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f3, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f3, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f3, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f3, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3ff)
li x16, 0xd1b3d4f48c8cd4e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f3, 0(x2) # load 0x000003ff from memory into f3
fadd.h f16, f2, f3, dyn # perform operation
fadd.h f16, f2, f3, rdn # perform operation
fadd.h f16, f2, f3, rmm # perform operation
fadd.h f16, f2, f3, rne # perform operation
fadd.h f16, f2, f3, rtz # perform operation
fadd.h f16, f2, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f2, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f2, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f2, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f2, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f2, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x83ff)
li x12, 0x8db18170a0c33eda # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f21, 0(x2) # load 0x000083ff from memory into f21
fadd.h f12, f13, f21, dyn # perform operation
fadd.h f12, f13, f21, rdn # perform operation
fadd.h f12, f13, f21, rmm # perform operation
fadd.h f12, f13, f21, rne # perform operation
fadd.h f12, f13, f21, rtz # perform operation
fadd.h f12, f13, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f13, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f13, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f13, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f13, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f13, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x200)
li x27, 0x7bf9f4b408b13b88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f11, 0(x2) # load 0x00000400 from memory into f11
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
fadd.h f27, f11, f24, dyn # perform operation
fadd.h f27, f11, f24, rdn # perform operation
fadd.h f27, f11, f24, rmm # perform operation
fadd.h f27, f11, f24, rne # perform operation
fadd.h f27, f11, f24, rtz # perform operation
fadd.h f27, f11, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f11, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f11, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f11, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f11, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f11, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8200)
li x11, 0xe9b00f49427e9dea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f12, 0(x2) # load 0x00008200 from memory into f12
fadd.h f11, f16, f12, dyn # perform operation
fadd.h f11, f16, f12, rdn # perform operation
fadd.h f11, f16, f12, rmm # perform operation
fadd.h f11, f16, f12, rne # perform operation
fadd.h f11, f16, f12, rtz # perform operation
fadd.h f11, f16, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f16, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f16, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f16, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f16, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f16, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x1)
li x5, 0x1f470459f23f52ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f3, 0(x2) # load 0x00000400 from memory into f3
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
fadd.h f5, f3, f27, dyn # perform operation
fadd.h f5, f3, f27, rdn # perform operation
fadd.h f5, f3, f27, rmm # perform operation
fadd.h f5, f3, f27, rne # perform operation
fadd.h f5, f3, f27, rtz # perform operation
fadd.h f5, f3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f3, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f3, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f3, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f3, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f3, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8001)
li x2, 0x17361e7cba75b847 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f12, 0(x2) # load 0x00000400 from memory into f12
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f29, 0(x2) # load 0x00008001 from memory into f29
fadd.h f2, f12, f29, dyn # perform operation
fadd.h f2, f12, f29, rdn # perform operation
fadd.h f2, f12, f29, rmm # perform operation
fadd.h f2, f12, f29, rne # perform operation
fadd.h f2, f12, f29, rtz # perform operation
fadd.h f2, f12, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f12, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f12, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f12, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f12, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f12, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7c00)
li x19, 0x366339444e6e0f73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f4, 0(x2) # load 0x00000400 from memory into f4
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f22, 0(x2) # load 0x00007c00 from memory into f22
fadd.h f19, f4, f22, dyn # perform operation
fadd.h f19, f4, f22, rdn # perform operation
fadd.h f19, f4, f22, rmm # perform operation
fadd.h f19, f4, f22, rne # perform operation
fadd.h f19, f4, f22, rtz # perform operation
fadd.h f19, f4, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f4, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f4, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f4, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f4, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f4, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfc00)
li x4, 0x2dbe88a75d9692d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f11, 0(x2) # load 0x00000400 from memory into f11
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f19, 0(x2) # load 0x0000fc00 from memory into f19
fadd.h f4, f11, f19, dyn # perform operation
fadd.h f4, f11, f19, rdn # perform operation
fadd.h f4, f11, f19, rmm # perform operation
fadd.h f4, f11, f19, rne # perform operation
fadd.h f4, f11, f19, rtz # perform operation
fadd.h f4, f11, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f11, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f11, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f11, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f11, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f11, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7e00)
li x2, 0xa113f110929b7fed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f15, 0(x2) # load 0x00000400 from memory into f15
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
fadd.h f2, f15, f30, dyn # perform operation
fadd.h f2, f15, f30, rdn # perform operation
fadd.h f2, f15, f30, rmm # perform operation
fadd.h f2, f15, f30, rne # perform operation
fadd.h f2, f15, f30, rtz # perform operation
fadd.h f2, f15, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f15, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f15, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f15, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f15, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f15, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7fff)
li x3, 0x1e2c9ec810d90289 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f4, 0(x2) # load 0x00007fff from memory into f4
fadd.h f3, f23, f4, dyn # perform operation
fadd.h f3, f23, f4, rdn # perform operation
fadd.h f3, f23, f4, rmm # perform operation
fadd.h f3, f23, f4, rne # perform operation
fadd.h f3, f23, f4, rtz # perform operation
fadd.h f3, f23, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f23, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f23, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f23, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f23, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f23, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7c01)
li x13, 0x53bd56e7d9b8ce27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f28, 0(x2) # load 0x00000400 from memory into f28
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f11, 0(x2) # load 0x00007c01 from memory into f11
fadd.h f13, f28, f11, dyn # perform operation
fadd.h f13, f28, f11, rdn # perform operation
fadd.h f13, f28, f11, rmm # perform operation
fadd.h f13, f28, f11, rne # perform operation
fadd.h f13, f28, f11, rtz # perform operation
fadd.h f13, f28, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f28, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f28, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f28, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f28, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f28, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7dff)
li x29, 0xf70eabaf0b03de34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f26, 0(x2) # load 0x00000400 from memory into f26
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f14, 0(x2) # load 0x00007dff from memory into f14
fadd.h f29, f26, f14, dyn # perform operation
fadd.h f29, f26, f14, rdn # perform operation
fadd.h f29, f26, f14, rmm # perform operation
fadd.h f29, f26, f14, rne # perform operation
fadd.h f29, f26, f14, rtz # perform operation
fadd.h f29, f26, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f26, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f26, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f26, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f26, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f26, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x58b4)
li x18, 0xe56a77ba981a3760 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f2, 0(x2) # load 0x000058b4 from memory into f2
fadd.h f18, f29, f2, dyn # perform operation
fadd.h f18, f29, f2, rdn # perform operation
fadd.h f18, f29, f2, rmm # perform operation
fadd.h f18, f29, f2, rne # perform operation
fadd.h f18, f29, f2, rtz # perform operation
fadd.h f18, f29, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f29, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f29, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f29, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f29, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f29, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xc93a)
li x13, 0x5d3ff54961cc9484 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
fadd.h f13, f8, f26, dyn # perform operation
fadd.h f13, f8, f26, rdn # perform operation
fadd.h f13, f8, f26, rmm # perform operation
fadd.h f13, f8, f26, rne # perform operation
fadd.h f13, f8, f26, rtz # perform operation
fadd.h f13, f8, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f8, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f8, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f8, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f8, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f8, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x0)
li x4, 0xeb8fb02e053c183a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
fadd.h f4, f3, f6, dyn # perform operation
fadd.h f4, f3, f6, rdn # perform operation
fadd.h f4, f3, f6, rmm # perform operation
fadd.h f4, f3, f6, rne # perform operation
fadd.h f4, f3, f6, rtz # perform operation
fadd.h f4, f3, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f3, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f3, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f3, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f3, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f3, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8000)
li x14, 0x1c86ffb9c6f99564 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f17, 0(x2) # load 0x00008000 from memory into f17
fadd.h f14, f9, f17, dyn # perform operation
fadd.h f14, f9, f17, rdn # perform operation
fadd.h f14, f9, f17, rmm # perform operation
fadd.h f14, f9, f17, rne # perform operation
fadd.h f14, f9, f17, rtz # perform operation
fadd.h f14, f9, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f9, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f9, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f9, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f9, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f9, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3c00)
li x1, 0xfa5a54bda9f2f1c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f31, 0(x2) # load 0x00008400 from memory into f31
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
fadd.h f1, f31, f27, dyn # perform operation
fadd.h f1, f31, f27, rdn # perform operation
fadd.h f1, f31, f27, rmm # perform operation
fadd.h f1, f31, f27, rne # perform operation
fadd.h f1, f31, f27, rtz # perform operation
fadd.h f1, f31, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f31, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f31, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f31, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f31, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f31, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xbc00)
li x2, 0x779d745ee83e3aa5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f4, 0(x2) # load 0x00008400 from memory into f4
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
fadd.h f2, f4, f15, dyn # perform operation
fadd.h f2, f4, f15, rdn # perform operation
fadd.h f2, f4, f15, rmm # perform operation
fadd.h f2, f4, f15, rne # perform operation
fadd.h f2, f4, f15, rtz # perform operation
fadd.h f2, f4, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f4, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f4, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f4, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f4, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f4, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3e00)
li x24, 0xaada79d88d9d95bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f15, 0(x2) # load 0x00008400 from memory into f15
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f14, 0(x2) # load 0x00003e00 from memory into f14
fadd.h f24, f15, f14, dyn # perform operation
fadd.h f24, f15, f14, rdn # perform operation
fadd.h f24, f15, f14, rmm # perform operation
fadd.h f24, f15, f14, rne # perform operation
fadd.h f24, f15, f14, rtz # perform operation
fadd.h f24, f15, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f15, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f15, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f15, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f15, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f15, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xbe00)
li x30, 0x96346745cfd07098 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f5, 0(x2) # load 0x00008400 from memory into f5
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
fadd.h f30, f5, f1, dyn # perform operation
fadd.h f30, f5, f1, rdn # perform operation
fadd.h f30, f5, f1, rmm # perform operation
fadd.h f30, f5, f1, rne # perform operation
fadd.h f30, f5, f1, rtz # perform operation
fadd.h f30, f5, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f5, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f5, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f5, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f5, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f5, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x4000)
li x28, 0x7b7ddab2342d981f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f1, 0(x2) # load 0x00004000 from memory into f1
fadd.h f28, f8, f1, dyn # perform operation
fadd.h f28, f8, f1, rdn # perform operation
fadd.h f28, f8, f1, rmm # perform operation
fadd.h f28, f8, f1, rne # perform operation
fadd.h f28, f8, f1, rtz # perform operation
fadd.h f28, f8, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f8, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f8, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f8, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f8, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f8, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xc000)
li x8, 0x47b159c3cd06e6e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f15, 0(x2) # load 0x00008400 from memory into f15
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
fadd.h f8, f15, f18, dyn # perform operation
fadd.h f8, f15, f18, rdn # perform operation
fadd.h f8, f15, f18, rmm # perform operation
fadd.h f8, f15, f18, rne # perform operation
fadd.h f8, f15, f18, rtz # perform operation
fadd.h f8, f15, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f15, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f15, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f15, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f15, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f15, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x400)
li x6, 0x3631efcdfd147879 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f10, 0(x2) # load 0x00000400 from memory into f10
fadd.h f6, f26, f10, dyn # perform operation
fadd.h f6, f26, f10, rdn # perform operation
fadd.h f6, f26, f10, rmm # perform operation
fadd.h f6, f26, f10, rne # perform operation
fadd.h f6, f26, f10, rtz # perform operation
fadd.h f6, f26, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f26, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f26, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f26, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f26, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f26, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8400)
li x10, 0x7209d553d20bacc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f12, 0(x2) # load 0x00008400 from memory into f12
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
fadd.h f10, f12, f3, dyn # perform operation
fadd.h f10, f12, f3, rdn # perform operation
fadd.h f10, f12, f3, rmm # perform operation
fadd.h f10, f12, f3, rne # perform operation
fadd.h f10, f12, f3, rtz # perform operation
fadd.h f10, f12, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f12, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f12, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f12, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f12, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f12, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7bff)
li x23, 0x09f17518eb609fd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f5, 0(x2) # load 0x00008400 from memory into f5
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f3, 0(x2) # load 0x00007bff from memory into f3
fadd.h f23, f5, f3, dyn # perform operation
fadd.h f23, f5, f3, rdn # perform operation
fadd.h f23, f5, f3, rmm # perform operation
fadd.h f23, f5, f3, rne # perform operation
fadd.h f23, f5, f3, rtz # perform operation
fadd.h f23, f5, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f5, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f5, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f5, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f5, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f5, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfbff)
li x8, 0x7d152247d2c7db17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f17, 0(x2) # load 0x00008400 from memory into f17
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f15, 0(x2) # load 0x0000fbff from memory into f15
fadd.h f8, f17, f15, dyn # perform operation
fadd.h f8, f17, f15, rdn # perform operation
fadd.h f8, f17, f15, rmm # perform operation
fadd.h f8, f17, f15, rne # perform operation
fadd.h f8, f17, f15, rtz # perform operation
fadd.h f8, f17, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f17, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f17, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f17, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f17, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f17, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3ff)
li x17, 0xecf427ad009e5521 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f4, 0(x2) # load 0x00008400 from memory into f4
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f10, 0(x2) # load 0x000003ff from memory into f10
fadd.h f17, f4, f10, dyn # perform operation
fadd.h f17, f4, f10, rdn # perform operation
fadd.h f17, f4, f10, rmm # perform operation
fadd.h f17, f4, f10, rne # perform operation
fadd.h f17, f4, f10, rtz # perform operation
fadd.h f17, f4, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f4, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f4, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f4, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f4, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f4, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x83ff)
li x18, 0x610289fa89e7bbb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f12, 0(x2) # load 0x00008400 from memory into f12
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
fadd.h f18, f12, f16, dyn # perform operation
fadd.h f18, f12, f16, rdn # perform operation
fadd.h f18, f12, f16, rmm # perform operation
fadd.h f18, f12, f16, rne # perform operation
fadd.h f18, f12, f16, rtz # perform operation
fadd.h f18, f12, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f12, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f12, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f12, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f12, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f12, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x200)
li x9, 0x6165dce0f56512d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f30, 0(x2) # load 0x00008400 from memory into f30
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f12, 0(x2) # load 0x00000200 from memory into f12
fadd.h f9, f30, f12, dyn # perform operation
fadd.h f9, f30, f12, rdn # perform operation
fadd.h f9, f30, f12, rmm # perform operation
fadd.h f9, f30, f12, rne # perform operation
fadd.h f9, f30, f12, rtz # perform operation
fadd.h f9, f30, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f30, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f30, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f30, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f30, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f30, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8200)
li x4, 0xb1ea26201d435d9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f20, 0(x2) # load 0x00008400 from memory into f20
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f13, 0(x2) # load 0x00008200 from memory into f13
fadd.h f4, f20, f13, dyn # perform operation
fadd.h f4, f20, f13, rdn # perform operation
fadd.h f4, f20, f13, rmm # perform operation
fadd.h f4, f20, f13, rne # perform operation
fadd.h f4, f20, f13, rtz # perform operation
fadd.h f4, f20, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f20, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f20, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f20, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f20, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f20, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x1)
li x1, 0x95bea3134920ae40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f17, 0(x2) # load 0x00008400 from memory into f17
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f25, 0(x2) # load 0x00000001 from memory into f25
fadd.h f1, f17, f25, dyn # perform operation
fadd.h f1, f17, f25, rdn # perform operation
fadd.h f1, f17, f25, rmm # perform operation
fadd.h f1, f17, f25, rne # perform operation
fadd.h f1, f17, f25, rtz # perform operation
fadd.h f1, f17, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f17, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f17, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f17, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f17, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f17, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8001)
li x6, 0x2348ad27b86fa0b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f11, 0(x2) # load 0x00008400 from memory into f11
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f9, 0(x2) # load 0x00008001 from memory into f9
fadd.h f6, f11, f9, dyn # perform operation
fadd.h f6, f11, f9, rdn # perform operation
fadd.h f6, f11, f9, rmm # perform operation
fadd.h f6, f11, f9, rne # perform operation
fadd.h f6, f11, f9, rtz # perform operation
fadd.h f6, f11, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f11, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f11, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f11, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f11, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f11, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7c00)
li x18, 0x3b95fd75d467aad3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f20, 0(x2) # load 0x00007c00 from memory into f20
fadd.h f18, f9, f20, dyn # perform operation
fadd.h f18, f9, f20, rdn # perform operation
fadd.h f18, f9, f20, rmm # perform operation
fadd.h f18, f9, f20, rne # perform operation
fadd.h f18, f9, f20, rtz # perform operation
fadd.h f18, f9, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f9, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f9, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f9, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f9, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f9, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfc00)
li x30, 0xb2f5878305151e97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f10, 0(x2) # load 0x00008400 from memory into f10
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f21, 0(x2) # load 0x0000fc00 from memory into f21
fadd.h f30, f10, f21, dyn # perform operation
fadd.h f30, f10, f21, rdn # perform operation
fadd.h f30, f10, f21, rmm # perform operation
fadd.h f30, f10, f21, rne # perform operation
fadd.h f30, f10, f21, rtz # perform operation
fadd.h f30, f10, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f10, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f10, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f10, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f10, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f10, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7e00)
li x5, 0x905faf79229b2676 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f1, 0(x2) # load 0x00007e00 from memory into f1
fadd.h f5, f3, f1, dyn # perform operation
fadd.h f5, f3, f1, rdn # perform operation
fadd.h f5, f3, f1, rmm # perform operation
fadd.h f5, f3, f1, rne # perform operation
fadd.h f5, f3, f1, rtz # perform operation
fadd.h f5, f3, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f3, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f3, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f3, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f3, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f3, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7fff)
li x19, 0x8a889718a9819cbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f31, 0(x2) # load 0x00007fff from memory into f31
fadd.h f19, f26, f31, dyn # perform operation
fadd.h f19, f26, f31, rdn # perform operation
fadd.h f19, f26, f31, rmm # perform operation
fadd.h f19, f26, f31, rne # perform operation
fadd.h f19, f26, f31, rtz # perform operation
fadd.h f19, f26, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f26, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f26, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f26, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f26, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f26, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7c01)
li x27, 0x2e73cbb7b48623bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f4, 0(x2) # load 0x00008400 from memory into f4
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
fadd.h f27, f4, f13, dyn # perform operation
fadd.h f27, f4, f13, rdn # perform operation
fadd.h f27, f4, f13, rmm # perform operation
fadd.h f27, f4, f13, rne # perform operation
fadd.h f27, f4, f13, rtz # perform operation
fadd.h f27, f4, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f4, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f4, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f4, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f4, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f4, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7dff)
li x27, 0x4454bd424d56cf28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f14, 0(x2) # load 0x00008400 from memory into f14
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f19, 0(x2) # load 0x00007dff from memory into f19
fadd.h f27, f14, f19, dyn # perform operation
fadd.h f27, f14, f19, rdn # perform operation
fadd.h f27, f14, f19, rmm # perform operation
fadd.h f27, f14, f19, rne # perform operation
fadd.h f27, f14, f19, rtz # perform operation
fadd.h f27, f14, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f14, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f14, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f14, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f14, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f14, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x58b4)
li x13, 0x04f357312aa7f626 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f27, 0(x2) # load 0x000058b4 from memory into f27
fadd.h f13, f18, f27, dyn # perform operation
fadd.h f13, f18, f27, rdn # perform operation
fadd.h f13, f18, f27, rmm # perform operation
fadd.h f13, f18, f27, rne # perform operation
fadd.h f13, f18, f27, rtz # perform operation
fadd.h f13, f18, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f18, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f18, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f18, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f18, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f18, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xc93a)
li x14, 0x8534da5711f742f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f15, 0(x2) # load 0x00008400 from memory into f15
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f27, 0(x2) # load 0x0000c93a from memory into f27
fadd.h f14, f15, f27, dyn # perform operation
fadd.h f14, f15, f27, rdn # perform operation
fadd.h f14, f15, f27, rmm # perform operation
fadd.h f14, f15, f27, rne # perform operation
fadd.h f14, f15, f27, rtz # perform operation
fadd.h f14, f15, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f15, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f15, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f15, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f15, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f15, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x0)
li x24, 0xa5fe170b105e0d1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f1, 0(x2) # load 0x00000000 from memory into f1
fadd.h f24, f16, f1, dyn # perform operation
fadd.h f24, f16, f1, rdn # perform operation
fadd.h f24, f16, f1, rmm # perform operation
fadd.h f24, f16, f1, rne # perform operation
fadd.h f24, f16, f1, rtz # perform operation
fadd.h f24, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f16, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8000)
li x29, 0xe4b37b1a5b475cad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f22, 0(x2) # load 0x00008000 from memory into f22
fadd.h f29, f1, f22, dyn # perform operation
fadd.h f29, f1, f22, rdn # perform operation
fadd.h f29, f1, f22, rmm # perform operation
fadd.h f29, f1, f22, rne # perform operation
fadd.h f29, f1, f22, rtz # perform operation
fadd.h f29, f1, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f1, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f1, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f1, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f1, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f1, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3c00)
li x27, 0x758e7c1101c7e545 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f14, 0(x2) # load 0x00003c00 from memory into f14
fadd.h f27, f10, f14, dyn # perform operation
fadd.h f27, f10, f14, rdn # perform operation
fadd.h f27, f10, f14, rmm # perform operation
fadd.h f27, f10, f14, rne # perform operation
fadd.h f27, f10, f14, rtz # perform operation
fadd.h f27, f10, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f10, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f10, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f10, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f10, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f10, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xbc00)
li x11, 0x0112a19467ab5940 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
fadd.h f11, f24, f18, dyn # perform operation
fadd.h f11, f24, f18, rdn # perform operation
fadd.h f11, f24, f18, rmm # perform operation
fadd.h f11, f24, f18, rne # perform operation
fadd.h f11, f24, f18, rtz # perform operation
fadd.h f11, f24, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f24, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f24, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f24, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f24, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f24, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3e00)
li x2, 0x666d086a1c2ab14f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f21, 0(x2) # load 0x00003e00 from memory into f21
fadd.h f2, f30, f21, dyn # perform operation
fadd.h f2, f30, f21, rdn # perform operation
fadd.h f2, f30, f21, rmm # perform operation
fadd.h f2, f30, f21, rne # perform operation
fadd.h f2, f30, f21, rtz # perform operation
fadd.h f2, f30, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f30, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f30, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f30, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f30, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f30, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xbe00)
li x7, 0xe0ba586632db58ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f10, 0(x2) # load 0x0000be00 from memory into f10
fadd.h f7, f21, f10, dyn # perform operation
fadd.h f7, f21, f10, rdn # perform operation
fadd.h f7, f21, f10, rmm # perform operation
fadd.h f7, f21, f10, rne # perform operation
fadd.h f7, f21, f10, rtz # perform operation
fadd.h f7, f21, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f21, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f21, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f21, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f21, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f21, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x4000)
li x10, 0x904ee07ac0a58d10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f31, 0(x2) # load 0x00007bff from memory into f31
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f17, 0(x2) # load 0x00004000 from memory into f17
fadd.h f10, f31, f17, dyn # perform operation
fadd.h f10, f31, f17, rdn # perform operation
fadd.h f10, f31, f17, rmm # perform operation
fadd.h f10, f31, f17, rne # perform operation
fadd.h f10, f31, f17, rtz # perform operation
fadd.h f10, f31, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f31, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f31, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f31, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f31, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f31, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xc000)
li x18, 0x50d6cd7eb4e550a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f26, 0(x2) # load 0x00007bff from memory into f26
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f12, 0(x2) # load 0x0000c000 from memory into f12
fadd.h f18, f26, f12, dyn # perform operation
fadd.h f18, f26, f12, rdn # perform operation
fadd.h f18, f26, f12, rmm # perform operation
fadd.h f18, f26, f12, rne # perform operation
fadd.h f18, f26, f12, rtz # perform operation
fadd.h f18, f26, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f26, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f26, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f26, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f26, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f26, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x400)
li x9, 0x35012975d4952b10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f15, 0(x2) # load 0x00007bff from memory into f15
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
fadd.h f9, f15, f29, dyn # perform operation
fadd.h f9, f15, f29, rdn # perform operation
fadd.h f9, f15, f29, rmm # perform operation
fadd.h f9, f15, f29, rne # perform operation
fadd.h f9, f15, f29, rtz # perform operation
fadd.h f9, f15, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f15, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f15, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f15, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f15, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f15, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8400)
li x14, 0x520b14542f788a9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
fadd.h f14, f30, f8, dyn # perform operation
fadd.h f14, f30, f8, rdn # perform operation
fadd.h f14, f30, f8, rmm # perform operation
fadd.h f14, f30, f8, rne # perform operation
fadd.h f14, f30, f8, rtz # perform operation
fadd.h f14, f30, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f30, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f30, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f30, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f30, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f30, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7bff)
li x2, 0x3e827f3f790f878c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f7, 0(x2) # load 0x00007bff from memory into f7
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f19, 0(x2) # load 0x00007bff from memory into f19
fadd.h f2, f7, f19, dyn # perform operation
fadd.h f2, f7, f19, rdn # perform operation
fadd.h f2, f7, f19, rmm # perform operation
fadd.h f2, f7, f19, rne # perform operation
fadd.h f2, f7, f19, rtz # perform operation
fadd.h f2, f7, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f7, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f7, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f7, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f7, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f7, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfbff)
li x14, 0x1d60ff892cb05cef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f15, 0(x2) # load 0x00007bff from memory into f15
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f13, 0(x2) # load 0x0000fbff from memory into f13
fadd.h f14, f15, f13, dyn # perform operation
fadd.h f14, f15, f13, rdn # perform operation
fadd.h f14, f15, f13, rmm # perform operation
fadd.h f14, f15, f13, rne # perform operation
fadd.h f14, f15, f13, rtz # perform operation
fadd.h f14, f15, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f15, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f15, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f15, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f15, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f15, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3ff)
li x5, 0xcaee48b9440ff425 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f31, 0(x2) # load 0x00007bff from memory into f31
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f9, 0(x2) # load 0x000003ff from memory into f9
fadd.h f5, f31, f9, dyn # perform operation
fadd.h f5, f31, f9, rdn # perform operation
fadd.h f5, f31, f9, rmm # perform operation
fadd.h f5, f31, f9, rne # perform operation
fadd.h f5, f31, f9, rtz # perform operation
fadd.h f5, f31, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f31, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f31, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f31, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f31, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f31, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x83ff)
li x1, 0xb95b161a2d86baad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f22, 0(x2) # load 0x00007bff from memory into f22
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f24, 0(x2) # load 0x000083ff from memory into f24
fadd.h f1, f22, f24, dyn # perform operation
fadd.h f1, f22, f24, rdn # perform operation
fadd.h f1, f22, f24, rmm # perform operation
fadd.h f1, f22, f24, rne # perform operation
fadd.h f1, f22, f24, rtz # perform operation
fadd.h f1, f22, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f22, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f22, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f22, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f22, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f22, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x200)
li x5, 0x25f5735667919aeb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f28, 0(x2) # load 0x00007bff from memory into f28
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f4, 0(x2) # load 0x00000200 from memory into f4
fadd.h f5, f28, f4, dyn # perform operation
fadd.h f5, f28, f4, rdn # perform operation
fadd.h f5, f28, f4, rmm # perform operation
fadd.h f5, f28, f4, rne # perform operation
fadd.h f5, f28, f4, rtz # perform operation
fadd.h f5, f28, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f28, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f28, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f28, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f28, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f28, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8200)
li x26, 0xa64ff15a068526e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
fadd.h f26, f16, f20, dyn # perform operation
fadd.h f26, f16, f20, rdn # perform operation
fadd.h f26, f16, f20, rmm # perform operation
fadd.h f26, f16, f20, rne # perform operation
fadd.h f26, f16, f20, rtz # perform operation
fadd.h f26, f16, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f16, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f16, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f16, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f16, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f16, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x1)
li x13, 0xa28393bbf01b845e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f5, 0(x2) # load 0x00000001 from memory into f5
fadd.h f13, f2, f5, dyn # perform operation
fadd.h f13, f2, f5, rdn # perform operation
fadd.h f13, f2, f5, rmm # perform operation
fadd.h f13, f2, f5, rne # perform operation
fadd.h f13, f2, f5, rtz # perform operation
fadd.h f13, f2, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f2, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f2, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f2, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f2, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f2, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8001)
li x23, 0x225198a5ece233ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f29, 0(x2) # load 0x00007bff from memory into f29
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
fadd.h f23, f29, f5, dyn # perform operation
fadd.h f23, f29, f5, rdn # perform operation
fadd.h f23, f29, f5, rmm # perform operation
fadd.h f23, f29, f5, rne # perform operation
fadd.h f23, f29, f5, rtz # perform operation
fadd.h f23, f29, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f29, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f29, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f29, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f29, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f29, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7c00)
li x2, 0xa5ca409457b4adb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f17, 0(x2) # load 0x00007c00 from memory into f17
fadd.h f2, f10, f17, dyn # perform operation
fadd.h f2, f10, f17, rdn # perform operation
fadd.h f2, f10, f17, rmm # perform operation
fadd.h f2, f10, f17, rne # perform operation
fadd.h f2, f10, f17, rtz # perform operation
fadd.h f2, f10, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f10, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f10, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f10, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f10, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f10, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfc00)
li x13, 0xce981790400dc97b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f21, 0(x2) # load 0x0000fc00 from memory into f21
fadd.h f13, f10, f21, dyn # perform operation
fadd.h f13, f10, f21, rdn # perform operation
fadd.h f13, f10, f21, rmm # perform operation
fadd.h f13, f10, f21, rne # perform operation
fadd.h f13, f10, f21, rtz # perform operation
fadd.h f13, f10, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f10, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f10, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f10, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f10, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f10, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7e00)
li x27, 0xc4527ef28d0603ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f24, 0(x2) # load 0x00007e00 from memory into f24
fadd.h f27, f10, f24, dyn # perform operation
fadd.h f27, f10, f24, rdn # perform operation
fadd.h f27, f10, f24, rmm # perform operation
fadd.h f27, f10, f24, rne # perform operation
fadd.h f27, f10, f24, rtz # perform operation
fadd.h f27, f10, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f10, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f10, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f10, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f10, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f10, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7fff)
li x25, 0x20e0888cc5d04edc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f23, 0(x2) # load 0x00007bff from memory into f23
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f3, 0(x2) # load 0x00007fff from memory into f3
fadd.h f25, f23, f3, dyn # perform operation
fadd.h f25, f23, f3, rdn # perform operation
fadd.h f25, f23, f3, rmm # perform operation
fadd.h f25, f23, f3, rne # perform operation
fadd.h f25, f23, f3, rtz # perform operation
fadd.h f25, f23, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f23, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f23, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f23, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f23, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f23, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7c01)
li x13, 0xf4ef8bc53638422d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f19, 0(x2) # load 0x00007bff from memory into f19
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
fadd.h f13, f19, f9, dyn # perform operation
fadd.h f13, f19, f9, rdn # perform operation
fadd.h f13, f19, f9, rmm # perform operation
fadd.h f13, f19, f9, rne # perform operation
fadd.h f13, f19, f9, rtz # perform operation
fadd.h f13, f19, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f19, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f19, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f19, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f19, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f19, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7dff)
li x22, 0xec158a4dbf39d29e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f28, 0(x2) # load 0x00007bff from memory into f28
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f2, 0(x2) # load 0x00007dff from memory into f2
fadd.h f22, f28, f2, dyn # perform operation
fadd.h f22, f28, f2, rdn # perform operation
fadd.h f22, f28, f2, rmm # perform operation
fadd.h f22, f28, f2, rne # perform operation
fadd.h f22, f28, f2, rtz # perform operation
fadd.h f22, f28, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f28, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f28, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f28, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f28, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f28, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x58b4)
li x1, 0x9a1d05da3dedfa32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f22, 0(x2) # load 0x00007bff from memory into f22
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
fadd.h f1, f22, f17, dyn # perform operation
fadd.h f1, f22, f17, rdn # perform operation
fadd.h f1, f22, f17, rmm # perform operation
fadd.h f1, f22, f17, rne # perform operation
fadd.h f1, f22, f17, rtz # perform operation
fadd.h f1, f22, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f22, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f22, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f22, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f22, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f22, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xc93a)
li x1, 0xb22982f1a93fad9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
fadd.h f1, f18, f21, dyn # perform operation
fadd.h f1, f18, f21, rdn # perform operation
fadd.h f1, f18, f21, rmm # perform operation
fadd.h f1, f18, f21, rne # perform operation
fadd.h f1, f18, f21, rtz # perform operation
fadd.h f1, f18, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f18, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f18, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f18, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f18, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f18, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x0)
li x8, 0xe72987751e33c140 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f24, 0(x2) # load 0x0000fbff from memory into f24
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
fadd.h f8, f24, f29, dyn # perform operation
fadd.h f8, f24, f29, rdn # perform operation
fadd.h f8, f24, f29, rmm # perform operation
fadd.h f8, f24, f29, rne # perform operation
fadd.h f8, f24, f29, rtz # perform operation
fadd.h f8, f24, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f24, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f24, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f24, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f24, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f24, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8000)
li x25, 0x6fd5ed19c32ab671 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f24, 0(x2) # load 0x00008000 from memory into f24
fadd.h f25, f28, f24, dyn # perform operation
fadd.h f25, f28, f24, rdn # perform operation
fadd.h f25, f28, f24, rmm # perform operation
fadd.h f25, f28, f24, rne # perform operation
fadd.h f25, f28, f24, rtz # perform operation
fadd.h f25, f28, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f28, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f28, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f28, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f28, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f28, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3c00)
li x3, 0x34cb38d14e93f7ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f5, 0(x2) # load 0x0000fbff from memory into f5
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
fadd.h f3, f5, f24, dyn # perform operation
fadd.h f3, f5, f24, rdn # perform operation
fadd.h f3, f5, f24, rmm # perform operation
fadd.h f3, f5, f24, rne # perform operation
fadd.h f3, f5, f24, rtz # perform operation
fadd.h f3, f5, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f5, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f5, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f5, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f5, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f5, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xbc00)
li x13, 0xe01f8766261a60a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f9, 0(x2) # load 0x0000fbff from memory into f9
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
fadd.h f13, f9, f28, dyn # perform operation
fadd.h f13, f9, f28, rdn # perform operation
fadd.h f13, f9, f28, rmm # perform operation
fadd.h f13, f9, f28, rne # perform operation
fadd.h f13, f9, f28, rtz # perform operation
fadd.h f13, f9, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f9, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f9, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f9, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f9, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f9, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3e00)
li x13, 0xbd89de5c66b83984 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f7, 0(x2) # load 0x0000fbff from memory into f7
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f5, 0(x2) # load 0x00003e00 from memory into f5
fadd.h f13, f7, f5, dyn # perform operation
fadd.h f13, f7, f5, rdn # perform operation
fadd.h f13, f7, f5, rmm # perform operation
fadd.h f13, f7, f5, rne # perform operation
fadd.h f13, f7, f5, rtz # perform operation
fadd.h f13, f7, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f7, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f7, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f7, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f7, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f7, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xbe00)
li x7, 0x9db2714c140944b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f22, 0(x2) # load 0x0000fbff from memory into f22
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
fadd.h f7, f22, f23, dyn # perform operation
fadd.h f7, f22, f23, rdn # perform operation
fadd.h f7, f22, f23, rmm # perform operation
fadd.h f7, f22, f23, rne # perform operation
fadd.h f7, f22, f23, rtz # perform operation
fadd.h f7, f22, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f22, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f22, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f22, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f22, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f22, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x4000)
li x18, 0xf62db937e1a6766b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f24, 0(x2) # load 0x00004000 from memory into f24
fadd.h f18, f2, f24, dyn # perform operation
fadd.h f18, f2, f24, rdn # perform operation
fadd.h f18, f2, f24, rmm # perform operation
fadd.h f18, f2, f24, rne # perform operation
fadd.h f18, f2, f24, rtz # perform operation
fadd.h f18, f2, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f2, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f2, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f2, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f2, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f2, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xc000)
li x4, 0x76d2130d15926e80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
fadd.h f4, f11, f21, dyn # perform operation
fadd.h f4, f11, f21, rdn # perform operation
fadd.h f4, f11, f21, rmm # perform operation
fadd.h f4, f11, f21, rne # perform operation
fadd.h f4, f11, f21, rtz # perform operation
fadd.h f4, f11, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f11, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f11, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f11, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f11, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f11, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x400)
li x28, 0x9c4c7a576bf409a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
fadd.h f28, f12, f2, dyn # perform operation
fadd.h f28, f12, f2, rdn # perform operation
fadd.h f28, f12, f2, rmm # perform operation
fadd.h f28, f12, f2, rne # perform operation
fadd.h f28, f12, f2, rtz # perform operation
fadd.h f28, f12, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f12, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f12, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f12, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f12, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f12, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8400)
li x14, 0x0f060f33a7cffff3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f22, 0(x2) # load 0x0000fbff from memory into f22
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f30, 0(x2) # load 0x00008400 from memory into f30
fadd.h f14, f22, f30, dyn # perform operation
fadd.h f14, f22, f30, rdn # perform operation
fadd.h f14, f22, f30, rmm # perform operation
fadd.h f14, f22, f30, rne # perform operation
fadd.h f14, f22, f30, rtz # perform operation
fadd.h f14, f22, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f22, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f22, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f22, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f22, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f22, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7bff)
li x23, 0x31152d273c403557 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
fadd.h f23, f17, f8, dyn # perform operation
fadd.h f23, f17, f8, rdn # perform operation
fadd.h f23, f17, f8, rmm # perform operation
fadd.h f23, f17, f8, rne # perform operation
fadd.h f23, f17, f8, rtz # perform operation
fadd.h f23, f17, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f17, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f17, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f17, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f17, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f17, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfbff)
li x18, 0x42e65baedc23b5e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f6, 0(x2) # load 0x0000fbff from memory into f6
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
fadd.h f18, f6, f21, dyn # perform operation
fadd.h f18, f6, f21, rdn # perform operation
fadd.h f18, f6, f21, rmm # perform operation
fadd.h f18, f6, f21, rne # perform operation
fadd.h f18, f6, f21, rtz # perform operation
fadd.h f18, f6, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f6, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f6, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f6, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f6, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f6, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3ff)
li x28, 0x443a9d2c4ba6687d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f20, 0(x2) # load 0x0000fbff from memory into f20
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f14, 0(x2) # load 0x000003ff from memory into f14
fadd.h f28, f20, f14, dyn # perform operation
fadd.h f28, f20, f14, rdn # perform operation
fadd.h f28, f20, f14, rmm # perform operation
fadd.h f28, f20, f14, rne # perform operation
fadd.h f28, f20, f14, rtz # perform operation
fadd.h f28, f20, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f20, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f20, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f20, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f20, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f20, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x83ff)
li x14, 0x7caccdce21e6676c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f18, 0(x2) # load 0x0000fbff from memory into f18
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f3, 0(x2) # load 0x000083ff from memory into f3
fadd.h f14, f18, f3, dyn # perform operation
fadd.h f14, f18, f3, rdn # perform operation
fadd.h f14, f18, f3, rmm # perform operation
fadd.h f14, f18, f3, rne # perform operation
fadd.h f14, f18, f3, rtz # perform operation
fadd.h f14, f18, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f18, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f18, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f18, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f18, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f18, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x200)
li x11, 0x785443dec66dbd89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f18, 0(x2) # load 0x00000200 from memory into f18
fadd.h f11, f28, f18, dyn # perform operation
fadd.h f11, f28, f18, rdn # perform operation
fadd.h f11, f28, f18, rmm # perform operation
fadd.h f11, f28, f18, rne # perform operation
fadd.h f11, f28, f18, rtz # perform operation
fadd.h f11, f28, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f28, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f28, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f28, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f28, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f28, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8200)
li x5, 0xd4bf485e163b467c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f26, 0(x2) # load 0x0000fbff from memory into f26
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f31, 0(x2) # load 0x00008200 from memory into f31
fadd.h f5, f26, f31, dyn # perform operation
fadd.h f5, f26, f31, rdn # perform operation
fadd.h f5, f26, f31, rmm # perform operation
fadd.h f5, f26, f31, rne # perform operation
fadd.h f5, f26, f31, rtz # perform operation
fadd.h f5, f26, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f26, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f26, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f26, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f26, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f26, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x1)
li x3, 0x4032397b4f08d2ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f15, 0(x2) # load 0x0000fbff from memory into f15
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
fadd.h f3, f15, f11, dyn # perform operation
fadd.h f3, f15, f11, rdn # perform operation
fadd.h f3, f15, f11, rmm # perform operation
fadd.h f3, f15, f11, rne # perform operation
fadd.h f3, f15, f11, rtz # perform operation
fadd.h f3, f15, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f15, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f15, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f15, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f15, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f15, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8001)
li x3, 0x4b7975cfdc8e9fb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f6, 0(x2) # load 0x0000fbff from memory into f6
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
fadd.h f3, f6, f7, dyn # perform operation
fadd.h f3, f6, f7, rdn # perform operation
fadd.h f3, f6, f7, rmm # perform operation
fadd.h f3, f6, f7, rne # perform operation
fadd.h f3, f6, f7, rtz # perform operation
fadd.h f3, f6, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f6, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f6, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f6, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f6, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f6, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7c00)
li x26, 0x862b34c69ad8b1a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f8, 0(x2) # load 0x0000fbff from memory into f8
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
fadd.h f26, f8, f2, dyn # perform operation
fadd.h f26, f8, f2, rdn # perform operation
fadd.h f26, f8, f2, rmm # perform operation
fadd.h f26, f8, f2, rne # perform operation
fadd.h f26, f8, f2, rtz # perform operation
fadd.h f26, f8, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f8, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f8, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f8, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f8, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f8, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfc00)
li x1, 0xe850c0261d149854 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
fadd.h f1, f28, f3, dyn # perform operation
fadd.h f1, f28, f3, rdn # perform operation
fadd.h f1, f28, f3, rmm # perform operation
fadd.h f1, f28, f3, rne # perform operation
fadd.h f1, f28, f3, rtz # perform operation
fadd.h f1, f28, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f28, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f28, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f28, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f28, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f28, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7e00)
li x28, 0x60da06a8faebf5f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f26, 0(x2) # load 0x0000fbff from memory into f26
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
fadd.h f28, f26, f8, dyn # perform operation
fadd.h f28, f26, f8, rdn # perform operation
fadd.h f28, f26, f8, rmm # perform operation
fadd.h f28, f26, f8, rne # perform operation
fadd.h f28, f26, f8, rtz # perform operation
fadd.h f28, f26, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f26, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f26, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f26, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f26, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f26, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7fff)
li x28, 0xb6961b7a19e7132d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f6, 0(x2) # load 0x0000fbff from memory into f6
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
fadd.h f28, f6, f2, dyn # perform operation
fadd.h f28, f6, f2, rdn # perform operation
fadd.h f28, f6, f2, rmm # perform operation
fadd.h f28, f6, f2, rne # perform operation
fadd.h f28, f6, f2, rtz # perform operation
fadd.h f28, f6, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f6, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f6, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f6, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f6, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f6, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7c01)
li x16, 0xff395392e45cf08f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f9, 0(x2) # load 0x0000fbff from memory into f9
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
fadd.h f16, f9, f3, dyn # perform operation
fadd.h f16, f9, f3, rdn # perform operation
fadd.h f16, f9, f3, rmm # perform operation
fadd.h f16, f9, f3, rne # perform operation
fadd.h f16, f9, f3, rtz # perform operation
fadd.h f16, f9, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f9, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f9, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f9, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f9, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f9, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7dff)
li x8, 0x4049f83ce05aae1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f23, 0(x2) # load 0x0000fbff from memory into f23
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
fadd.h f8, f23, f5, dyn # perform operation
fadd.h f8, f23, f5, rdn # perform operation
fadd.h f8, f23, f5, rmm # perform operation
fadd.h f8, f23, f5, rne # perform operation
fadd.h f8, f23, f5, rtz # perform operation
fadd.h f8, f23, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f23, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f23, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f23, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f23, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f23, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x58b4)
li x4, 0x441ca1273d62564c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f19, 0(x2) # load 0x000058b4 from memory into f19
fadd.h f4, f16, f19, dyn # perform operation
fadd.h f4, f16, f19, rdn # perform operation
fadd.h f4, f16, f19, rmm # perform operation
fadd.h f4, f16, f19, rne # perform operation
fadd.h f4, f16, f19, rtz # perform operation
fadd.h f4, f16, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f16, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f16, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f16, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f16, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f16, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xc93a)
li x2, 0x517c29f3ac2611a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f19, 0(x2) # load 0x0000fbff from memory into f19
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
fadd.h f2, f19, f20, dyn # perform operation
fadd.h f2, f19, f20, rdn # perform operation
fadd.h f2, f19, f20, rmm # perform operation
fadd.h f2, f19, f20, rne # perform operation
fadd.h f2, f19, f20, rtz # perform operation
fadd.h f2, f19, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f19, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f19, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f19, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f19, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f19, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x0)
li x15, 0x1a5c3b6c408005d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f14, 0(x2) # load 0x000003ff from memory into f14
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f3, 0(x2) # load 0x00000000 from memory into f3
fadd.h f15, f14, f3, dyn # perform operation
fadd.h f15, f14, f3, rdn # perform operation
fadd.h f15, f14, f3, rmm # perform operation
fadd.h f15, f14, f3, rne # perform operation
fadd.h f15, f14, f3, rtz # perform operation
fadd.h f15, f14, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f14, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f14, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f14, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f14, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f14, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8000)
li x8, 0x38b30819aa0915e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
fadd.h f8, f23, f12, dyn # perform operation
fadd.h f8, f23, f12, rdn # perform operation
fadd.h f8, f23, f12, rmm # perform operation
fadd.h f8, f23, f12, rne # perform operation
fadd.h f8, f23, f12, rtz # perform operation
fadd.h f8, f23, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f23, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f23, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f23, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f23, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f23, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3c00)
li x24, 0x32124668b0c35409 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f31, 0(x2) # load 0x000003ff from memory into f31
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
fadd.h f24, f31, f27, dyn # perform operation
fadd.h f24, f31, f27, rdn # perform operation
fadd.h f24, f31, f27, rmm # perform operation
fadd.h f24, f31, f27, rne # perform operation
fadd.h f24, f31, f27, rtz # perform operation
fadd.h f24, f31, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f31, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f31, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f31, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f31, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f31, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xbc00)
li x1, 0x483348b448414f19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f16, 0(x2) # load 0x000003ff from memory into f16
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f23, 0(x2) # load 0x0000bc00 from memory into f23
fadd.h f1, f16, f23, dyn # perform operation
fadd.h f1, f16, f23, rdn # perform operation
fadd.h f1, f16, f23, rmm # perform operation
fadd.h f1, f16, f23, rne # perform operation
fadd.h f1, f16, f23, rtz # perform operation
fadd.h f1, f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f16, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3e00)
li x5, 0x60084444702a4da8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f25, 0(x2) # load 0x00003e00 from memory into f25
fadd.h f5, f12, f25, dyn # perform operation
fadd.h f5, f12, f25, rdn # perform operation
fadd.h f5, f12, f25, rmm # perform operation
fadd.h f5, f12, f25, rne # perform operation
fadd.h f5, f12, f25, rtz # perform operation
fadd.h f5, f12, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f12, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f12, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f12, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f12, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f12, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xbe00)
li x20, 0xc1c49bcafcb598a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f25, 0(x2) # load 0x000003ff from memory into f25
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
fadd.h f20, f25, f8, dyn # perform operation
fadd.h f20, f25, f8, rdn # perform operation
fadd.h f20, f25, f8, rmm # perform operation
fadd.h f20, f25, f8, rne # perform operation
fadd.h f20, f25, f8, rtz # perform operation
fadd.h f20, f25, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f25, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f25, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f25, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f25, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f25, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x4000)
li x6, 0xe7860818f922753f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f11, 0(x2) # load 0x00004000 from memory into f11
fadd.h f6, f12, f11, dyn # perform operation
fadd.h f6, f12, f11, rdn # perform operation
fadd.h f6, f12, f11, rmm # perform operation
fadd.h f6, f12, f11, rne # perform operation
fadd.h f6, f12, f11, rtz # perform operation
fadd.h f6, f12, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f12, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f12, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f12, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f12, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f12, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xc000)
li x9, 0x7df568a614def379 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f11, 0(x2) # load 0x000003ff from memory into f11
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f14, 0(x2) # load 0x0000c000 from memory into f14
fadd.h f9, f11, f14, dyn # perform operation
fadd.h f9, f11, f14, rdn # perform operation
fadd.h f9, f11, f14, rmm # perform operation
fadd.h f9, f11, f14, rne # perform operation
fadd.h f9, f11, f14, rtz # perform operation
fadd.h f9, f11, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f11, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f11, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f11, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f11, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f11, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x400)
li x30, 0x312e64c39f9388d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f22, 0(x2) # load 0x000003ff from memory into f22
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
fadd.h f30, f22, f13, dyn # perform operation
fadd.h f30, f22, f13, rdn # perform operation
fadd.h f30, f22, f13, rmm # perform operation
fadd.h f30, f22, f13, rne # perform operation
fadd.h f30, f22, f13, rtz # perform operation
fadd.h f30, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f22, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8400)
li x13, 0xa2a372d860f9aeb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f3, 0(x2) # load 0x000003ff from memory into f3
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f5, 0(x2) # load 0x00008400 from memory into f5
fadd.h f13, f3, f5, dyn # perform operation
fadd.h f13, f3, f5, rdn # perform operation
fadd.h f13, f3, f5, rmm # perform operation
fadd.h f13, f3, f5, rne # perform operation
fadd.h f13, f3, f5, rtz # perform operation
fadd.h f13, f3, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f3, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f3, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f3, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f3, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f3, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7bff)
li x22, 0x5a6b2705f58c8f53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f4, 0(x2) # load 0x000003ff from memory into f4
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
fadd.h f22, f4, f21, dyn # perform operation
fadd.h f22, f4, f21, rdn # perform operation
fadd.h f22, f4, f21, rmm # perform operation
fadd.h f22, f4, f21, rne # perform operation
fadd.h f22, f4, f21, rtz # perform operation
fadd.h f22, f4, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f4, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f4, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f4, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f4, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f4, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfbff)
li x19, 0xf629925255dcd9df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f10, 0(x2) # load 0x0000fbff from memory into f10
fadd.h f19, f17, f10, dyn # perform operation
fadd.h f19, f17, f10, rdn # perform operation
fadd.h f19, f17, f10, rmm # perform operation
fadd.h f19, f17, f10, rne # perform operation
fadd.h f19, f17, f10, rtz # perform operation
fadd.h f19, f17, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f17, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f17, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f17, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f17, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f17, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3ff)
li x21, 0xfc41e4f2227f95b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f9, 0(x2) # load 0x000003ff from memory into f9
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f18, 0(x2) # load 0x000003ff from memory into f18
fadd.h f21, f9, f18, dyn # perform operation
fadd.h f21, f9, f18, rdn # perform operation
fadd.h f21, f9, f18, rmm # perform operation
fadd.h f21, f9, f18, rne # perform operation
fadd.h f21, f9, f18, rtz # perform operation
fadd.h f21, f9, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f9, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f9, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f9, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f9, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f9, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x83ff)
li x27, 0x535e9af9f67cea90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f4, 0(x2) # load 0x000083ff from memory into f4
fadd.h f27, f2, f4, dyn # perform operation
fadd.h f27, f2, f4, rdn # perform operation
fadd.h f27, f2, f4, rmm # perform operation
fadd.h f27, f2, f4, rne # perform operation
fadd.h f27, f2, f4, rtz # perform operation
fadd.h f27, f2, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f2, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f2, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f2, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f2, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f2, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x200)
li x6, 0xd85f0ff5afc74e68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f16, 0(x2) # load 0x000003ff from memory into f16
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
fadd.h f6, f16, f24, dyn # perform operation
fadd.h f6, f16, f24, rdn # perform operation
fadd.h f6, f16, f24, rmm # perform operation
fadd.h f6, f16, f24, rne # perform operation
fadd.h f6, f16, f24, rtz # perform operation
fadd.h f6, f16, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f16, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f16, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f16, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f16, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f16, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8200)
li x23, 0xc6a13856296b7049 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f18, 0(x2) # load 0x000003ff from memory into f18
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f16, 0(x2) # load 0x00008200 from memory into f16
fadd.h f23, f18, f16, dyn # perform operation
fadd.h f23, f18, f16, rdn # perform operation
fadd.h f23, f18, f16, rmm # perform operation
fadd.h f23, f18, f16, rne # perform operation
fadd.h f23, f18, f16, rtz # perform operation
fadd.h f23, f18, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f18, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f18, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f18, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f18, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f18, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x1)
li x28, 0x2722d9f1d096ec59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f31, 0(x2) # load 0x000003ff from memory into f31
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f25, 0(x2) # load 0x00000001 from memory into f25
fadd.h f28, f31, f25, dyn # perform operation
fadd.h f28, f31, f25, rdn # perform operation
fadd.h f28, f31, f25, rmm # perform operation
fadd.h f28, f31, f25, rne # perform operation
fadd.h f28, f31, f25, rtz # perform operation
fadd.h f28, f31, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f31, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f31, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f31, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f31, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f31, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8001)
li x6, 0xb00d5d3ad464f83c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
fadd.h f6, f21, f5, dyn # perform operation
fadd.h f6, f21, f5, rdn # perform operation
fadd.h f6, f21, f5, rmm # perform operation
fadd.h f6, f21, f5, rne # perform operation
fadd.h f6, f21, f5, rtz # perform operation
fadd.h f6, f21, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f21, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f21, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f21, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f21, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f21, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7c00)
li x1, 0xaa51aef237787c1d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f26, 0(x2) # load 0x000003ff from memory into f26
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f24, 0(x2) # load 0x00007c00 from memory into f24
fadd.h f1, f26, f24, dyn # perform operation
fadd.h f1, f26, f24, rdn # perform operation
fadd.h f1, f26, f24, rmm # perform operation
fadd.h f1, f26, f24, rne # perform operation
fadd.h f1, f26, f24, rtz # perform operation
fadd.h f1, f26, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f26, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f26, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f26, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f26, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f26, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfc00)
li x26, 0x407093e5616332a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f29, 0(x2) # load 0x0000fc00 from memory into f29
fadd.h f26, f21, f29, dyn # perform operation
fadd.h f26, f21, f29, rdn # perform operation
fadd.h f26, f21, f29, rmm # perform operation
fadd.h f26, f21, f29, rne # perform operation
fadd.h f26, f21, f29, rtz # perform operation
fadd.h f26, f21, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f21, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f21, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f21, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f21, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f21, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7e00)
li x28, 0x9501c6566c0dcce2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f1, 0(x2) # load 0x00007e00 from memory into f1
fadd.h f28, f17, f1, dyn # perform operation
fadd.h f28, f17, f1, rdn # perform operation
fadd.h f28, f17, f1, rmm # perform operation
fadd.h f28, f17, f1, rne # perform operation
fadd.h f28, f17, f1, rtz # perform operation
fadd.h f28, f17, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f17, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f17, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f17, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f17, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f17, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7fff)
li x18, 0xb64f142ac8b93c03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f13, 0(x2) # load 0x000003ff from memory into f13
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
fadd.h f18, f13, f8, dyn # perform operation
fadd.h f18, f13, f8, rdn # perform operation
fadd.h f18, f13, f8, rmm # perform operation
fadd.h f18, f13, f8, rne # perform operation
fadd.h f18, f13, f8, rtz # perform operation
fadd.h f18, f13, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f13, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f13, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f13, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f13, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f13, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7c01)
li x13, 0x51f36f882c03eb12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f22, 0(x2) # load 0x000003ff from memory into f22
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f23, 0(x2) # load 0x00007c01 from memory into f23
fadd.h f13, f22, f23, dyn # perform operation
fadd.h f13, f22, f23, rdn # perform operation
fadd.h f13, f22, f23, rmm # perform operation
fadd.h f13, f22, f23, rne # perform operation
fadd.h f13, f22, f23, rtz # perform operation
fadd.h f13, f22, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f22, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f22, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f22, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f22, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f22, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7dff)
li x11, 0x246f168878dc6d26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f13, 0(x2) # load 0x000003ff from memory into f13
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
fadd.h f11, f13, f21, dyn # perform operation
fadd.h f11, f13, f21, rdn # perform operation
fadd.h f11, f13, f21, rmm # perform operation
fadd.h f11, f13, f21, rne # perform operation
fadd.h f11, f13, f21, rtz # perform operation
fadd.h f11, f13, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f13, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f13, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f13, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f13, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f13, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x58b4)
li x24, 0xbbf6e9806d2106fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f16, 0(x2) # load 0x000003ff from memory into f16
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
fadd.h f24, f16, f30, dyn # perform operation
fadd.h f24, f16, f30, rdn # perform operation
fadd.h f24, f16, f30, rmm # perform operation
fadd.h f24, f16, f30, rne # perform operation
fadd.h f24, f16, f30, rtz # perform operation
fadd.h f24, f16, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f16, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f16, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f16, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f16, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f16, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xc93a)
li x8, 0x03f7c9700b665c0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f26, 0(x2) # load 0x000003ff from memory into f26
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f23, 0(x2) # load 0x0000c93a from memory into f23
fadd.h f8, f26, f23, dyn # perform operation
fadd.h f8, f26, f23, rdn # perform operation
fadd.h f8, f26, f23, rmm # perform operation
fadd.h f8, f26, f23, rne # perform operation
fadd.h f8, f26, f23, rtz # perform operation
fadd.h f8, f26, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f26, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f26, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f26, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f26, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f26, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x0)
li x21, 0x75225c46e646a125 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
fadd.h f21, f12, f31, dyn # perform operation
fadd.h f21, f12, f31, rdn # perform operation
fadd.h f21, f12, f31, rmm # perform operation
fadd.h f21, f12, f31, rne # perform operation
fadd.h f21, f12, f31, rtz # perform operation
fadd.h f21, f12, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f12, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f12, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f12, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f12, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f12, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8000)
li x22, 0x84593f13bf169d60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f21, 0(x2) # load 0x000083ff from memory into f21
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
fadd.h f22, f21, f31, dyn # perform operation
fadd.h f22, f21, f31, rdn # perform operation
fadd.h f22, f21, f31, rmm # perform operation
fadd.h f22, f21, f31, rne # perform operation
fadd.h f22, f21, f31, rtz # perform operation
fadd.h f22, f21, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f21, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f21, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f21, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f21, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f21, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3c00)
li x12, 0xbf639ae8e141b7ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f30, 0(x2) # load 0x000083ff from memory into f30
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f23, 0(x2) # load 0x00003c00 from memory into f23
fadd.h f12, f30, f23, dyn # perform operation
fadd.h f12, f30, f23, rdn # perform operation
fadd.h f12, f30, f23, rmm # perform operation
fadd.h f12, f30, f23, rne # perform operation
fadd.h f12, f30, f23, rtz # perform operation
fadd.h f12, f30, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f30, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f30, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f30, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f30, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f30, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xbc00)
li x26, 0xfa894ee80ac106fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f11, 0(x2) # load 0x0000bc00 from memory into f11
fadd.h f26, f29, f11, dyn # perform operation
fadd.h f26, f29, f11, rdn # perform operation
fadd.h f26, f29, f11, rmm # perform operation
fadd.h f26, f29, f11, rne # perform operation
fadd.h f26, f29, f11, rtz # perform operation
fadd.h f26, f29, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f29, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f29, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f29, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f29, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f29, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3e00)
li x2, 0xbf56b3a7c5d9816b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f3, 0(x2) # load 0x00003e00 from memory into f3
fadd.h f2, f8, f3, dyn # perform operation
fadd.h f2, f8, f3, rdn # perform operation
fadd.h f2, f8, f3, rmm # perform operation
fadd.h f2, f8, f3, rne # perform operation
fadd.h f2, f8, f3, rtz # perform operation
fadd.h f2, f8, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f8, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f8, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f8, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f8, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f8, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xbe00)
li x21, 0x14b81548fd9958aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f1, 0(x2) # load 0x000083ff from memory into f1
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f30, 0(x2) # load 0x0000be00 from memory into f30
fadd.h f21, f1, f30, dyn # perform operation
fadd.h f21, f1, f30, rdn # perform operation
fadd.h f21, f1, f30, rmm # perform operation
fadd.h f21, f1, f30, rne # perform operation
fadd.h f21, f1, f30, rtz # perform operation
fadd.h f21, f1, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f1, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f1, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f1, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f1, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f1, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x4000)
li x12, 0xcf9fc5bae4e2c09d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f5, 0(x2) # load 0x000083ff from memory into f5
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f30, 0(x2) # load 0x00004000 from memory into f30
fadd.h f12, f5, f30, dyn # perform operation
fadd.h f12, f5, f30, rdn # perform operation
fadd.h f12, f5, f30, rmm # perform operation
fadd.h f12, f5, f30, rne # perform operation
fadd.h f12, f5, f30, rtz # perform operation
fadd.h f12, f5, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f5, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f5, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f5, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f5, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f5, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xc000)
li x25, 0xb83326b9843e6398 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f4, 0(x2) # load 0x0000c000 from memory into f4
fadd.h f25, f22, f4, dyn # perform operation
fadd.h f25, f22, f4, rdn # perform operation
fadd.h f25, f22, f4, rmm # perform operation
fadd.h f25, f22, f4, rne # perform operation
fadd.h f25, f22, f4, rtz # perform operation
fadd.h f25, f22, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f22, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f22, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f22, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f22, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f22, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x400)
li x21, 0xdc0a90f85418bdb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f6, 0(x2) # load 0x000083ff from memory into f6
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f28, 0(x2) # load 0x00000400 from memory into f28
fadd.h f21, f6, f28, dyn # perform operation
fadd.h f21, f6, f28, rdn # perform operation
fadd.h f21, f6, f28, rmm # perform operation
fadd.h f21, f6, f28, rne # perform operation
fadd.h f21, f6, f28, rtz # perform operation
fadd.h f21, f6, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f6, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f6, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f6, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f6, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f6, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8400)
li x28, 0x441e837bab7597da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f30, 0(x2) # load 0x000083ff from memory into f30
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f11, 0(x2) # load 0x00008400 from memory into f11
fadd.h f28, f30, f11, dyn # perform operation
fadd.h f28, f30, f11, rdn # perform operation
fadd.h f28, f30, f11, rmm # perform operation
fadd.h f28, f30, f11, rne # perform operation
fadd.h f28, f30, f11, rtz # perform operation
fadd.h f28, f30, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f30, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f30, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f30, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f30, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f30, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7bff)
li x5, 0x64ea27c01889127b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f24, 0(x2) # load 0x000083ff from memory into f24
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
fadd.h f5, f24, f6, dyn # perform operation
fadd.h f5, f24, f6, rdn # perform operation
fadd.h f5, f24, f6, rmm # perform operation
fadd.h f5, f24, f6, rne # perform operation
fadd.h f5, f24, f6, rtz # perform operation
fadd.h f5, f24, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f24, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f24, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f24, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f24, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f24, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfbff)
li x13, 0x52ae873c1432bb87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f9, 0(x2) # load 0x000083ff from memory into f9
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f5, 0(x2) # load 0x0000fbff from memory into f5
fadd.h f13, f9, f5, dyn # perform operation
fadd.h f13, f9, f5, rdn # perform operation
fadd.h f13, f9, f5, rmm # perform operation
fadd.h f13, f9, f5, rne # perform operation
fadd.h f13, f9, f5, rtz # perform operation
fadd.h f13, f9, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f9, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f9, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f9, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f9, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f9, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3ff)
li x1, 0xb50e734ce62550d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f29, 0(x2) # load 0x000003ff from memory into f29
fadd.h f1, f22, f29, dyn # perform operation
fadd.h f1, f22, f29, rdn # perform operation
fadd.h f1, f22, f29, rmm # perform operation
fadd.h f1, f22, f29, rne # perform operation
fadd.h f1, f22, f29, rtz # perform operation
fadd.h f1, f22, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f22, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f22, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f22, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f22, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f22, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x83ff)
li x10, 0x8c1a1fd829f3ce33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f4, 0(x2) # load 0x000083ff from memory into f4
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
fadd.h f10, f4, f18, dyn # perform operation
fadd.h f10, f4, f18, rdn # perform operation
fadd.h f10, f4, f18, rmm # perform operation
fadd.h f10, f4, f18, rne # perform operation
fadd.h f10, f4, f18, rtz # perform operation
fadd.h f10, f4, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f4, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f4, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f4, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f4, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f4, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x200)
li x31, 0xb8d8f7fc2b2e4197 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
fadd.h f31, f29, f16, dyn # perform operation
fadd.h f31, f29, f16, rdn # perform operation
fadd.h f31, f29, f16, rmm # perform operation
fadd.h f31, f29, f16, rne # perform operation
fadd.h f31, f29, f16, rtz # perform operation
fadd.h f31, f29, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f29, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f29, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f29, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f29, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f29, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8200)
li x8, 0x16797cc1eddd302c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f27, 0(x2) # load 0x000083ff from memory into f27
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
fadd.h f8, f27, f1, dyn # perform operation
fadd.h f8, f27, f1, rdn # perform operation
fadd.h f8, f27, f1, rmm # perform operation
fadd.h f8, f27, f1, rne # perform operation
fadd.h f8, f27, f1, rtz # perform operation
fadd.h f8, f27, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f27, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f27, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f27, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f27, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f27, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x1)
li x24, 0x94f2411bd186038b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f28, 0(x2) # load 0x00000001 from memory into f28
fadd.h f24, f10, f28, dyn # perform operation
fadd.h f24, f10, f28, rdn # perform operation
fadd.h f24, f10, f28, rmm # perform operation
fadd.h f24, f10, f28, rne # perform operation
fadd.h f24, f10, f28, rtz # perform operation
fadd.h f24, f10, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f10, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f10, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f10, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f10, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f10, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8001)
li x28, 0x588d60e114fc0cdd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f19, 0(x2) # load 0x000083ff from memory into f19
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f27, 0(x2) # load 0x00008001 from memory into f27
fadd.h f28, f19, f27, dyn # perform operation
fadd.h f28, f19, f27, rdn # perform operation
fadd.h f28, f19, f27, rmm # perform operation
fadd.h f28, f19, f27, rne # perform operation
fadd.h f28, f19, f27, rtz # perform operation
fadd.h f28, f19, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f19, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f19, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f19, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f19, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f19, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7c00)
li x26, 0x06146a65684c2700 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f21, 0(x2) # load 0x000083ff from memory into f21
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f10, 0(x2) # load 0x00007c00 from memory into f10
fadd.h f26, f21, f10, dyn # perform operation
fadd.h f26, f21, f10, rdn # perform operation
fadd.h f26, f21, f10, rmm # perform operation
fadd.h f26, f21, f10, rne # perform operation
fadd.h f26, f21, f10, rtz # perform operation
fadd.h f26, f21, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f21, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f21, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f21, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f21, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f21, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfc00)
li x4, 0x4d77fef479e3f8c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f25, 0(x2) # load 0x0000fc00 from memory into f25
fadd.h f4, f18, f25, dyn # perform operation
fadd.h f4, f18, f25, rdn # perform operation
fadd.h f4, f18, f25, rmm # perform operation
fadd.h f4, f18, f25, rne # perform operation
fadd.h f4, f18, f25, rtz # perform operation
fadd.h f4, f18, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f18, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f18, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f18, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f18, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f18, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7e00)
li x6, 0xce1df42d6f70b003 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f4, 0(x2) # load 0x000083ff from memory into f4
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
fadd.h f6, f4, f2, dyn # perform operation
fadd.h f6, f4, f2, rdn # perform operation
fadd.h f6, f4, f2, rmm # perform operation
fadd.h f6, f4, f2, rne # perform operation
fadd.h f6, f4, f2, rtz # perform operation
fadd.h f6, f4, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f4, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f4, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f4, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f4, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f4, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7fff)
li x20, 0xc9932d943a6277db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
fadd.h f20, f23, f30, dyn # perform operation
fadd.h f20, f23, f30, rdn # perform operation
fadd.h f20, f23, f30, rmm # perform operation
fadd.h f20, f23, f30, rne # perform operation
fadd.h f20, f23, f30, rtz # perform operation
fadd.h f20, f23, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f23, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f23, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f23, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f23, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f23, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7c01)
li x14, 0x138eee6c18466bc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f10, 0(x2) # load 0x00007c01 from memory into f10
fadd.h f14, f8, f10, dyn # perform operation
fadd.h f14, f8, f10, rdn # perform operation
fadd.h f14, f8, f10, rmm # perform operation
fadd.h f14, f8, f10, rne # perform operation
fadd.h f14, f8, f10, rtz # perform operation
fadd.h f14, f8, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f8, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f8, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f8, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f8, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f8, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7dff)
li x13, 0x213f169b11f87ff6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f25, 0(x2) # load 0x00007dff from memory into f25
fadd.h f13, f18, f25, dyn # perform operation
fadd.h f13, f18, f25, rdn # perform operation
fadd.h f13, f18, f25, rmm # perform operation
fadd.h f13, f18, f25, rne # perform operation
fadd.h f13, f18, f25, rtz # perform operation
fadd.h f13, f18, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f18, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f18, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f18, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f18, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f18, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x58b4)
li x10, 0xee32616cb8e7f43e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f7, 0(x2) # load 0x000083ff from memory into f7
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
fadd.h f10, f7, f8, dyn # perform operation
fadd.h f10, f7, f8, rdn # perform operation
fadd.h f10, f7, f8, rmm # perform operation
fadd.h f10, f7, f8, rne # perform operation
fadd.h f10, f7, f8, rtz # perform operation
fadd.h f10, f7, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f7, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f7, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f7, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f7, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f7, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xc93a)
li x10, 0xe63dcdb899b3abf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f9, 0(x2) # load 0x0000c93a from memory into f9
fadd.h f10, f29, f9, dyn # perform operation
fadd.h f10, f29, f9, rdn # perform operation
fadd.h f10, f29, f9, rmm # perform operation
fadd.h f10, f29, f9, rne # perform operation
fadd.h f10, f29, f9, rtz # perform operation
fadd.h f10, f29, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f29, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f29, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f29, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f29, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f29, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x0)
li x19, 0x87d1c527791ca80e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
fadd.h f19, f15, f18, dyn # perform operation
fadd.h f19, f15, f18, rdn # perform operation
fadd.h f19, f15, f18, rmm # perform operation
fadd.h f19, f15, f18, rne # perform operation
fadd.h f19, f15, f18, rtz # perform operation
fadd.h f19, f15, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f15, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f15, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f15, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f15, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f15, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8000)
li x10, 0x8f6de7869bbf0d5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f8, 0(x2) # load 0x00000200 from memory into f8
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f20, 0(x2) # load 0x00008000 from memory into f20
fadd.h f10, f8, f20, dyn # perform operation
fadd.h f10, f8, f20, rdn # perform operation
fadd.h f10, f8, f20, rmm # perform operation
fadd.h f10, f8, f20, rne # perform operation
fadd.h f10, f8, f20, rtz # perform operation
fadd.h f10, f8, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f8, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f8, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f8, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f8, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f8, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3c00)
li x24, 0x8f98080115559977 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f11, 0(x2) # load 0x00000200 from memory into f11
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f31, 0(x2) # load 0x00003c00 from memory into f31
fadd.h f24, f11, f31, dyn # perform operation
fadd.h f24, f11, f31, rdn # perform operation
fadd.h f24, f11, f31, rmm # perform operation
fadd.h f24, f11, f31, rne # perform operation
fadd.h f24, f11, f31, rtz # perform operation
fadd.h f24, f11, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f11, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f11, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f11, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f11, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f11, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xbc00)
li x9, 0x828893b08ba8ea2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f21, 0(x2) # load 0x00000200 from memory into f21
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f31, 0(x2) # load 0x0000bc00 from memory into f31
fadd.h f9, f21, f31, dyn # perform operation
fadd.h f9, f21, f31, rdn # perform operation
fadd.h f9, f21, f31, rmm # perform operation
fadd.h f9, f21, f31, rne # perform operation
fadd.h f9, f21, f31, rtz # perform operation
fadd.h f9, f21, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f21, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f21, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f21, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f21, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f21, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3e00)
li x8, 0x4697026aa8754835 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f6, 0(x2) # load 0x00000200 from memory into f6
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
fadd.h f8, f6, f10, dyn # perform operation
fadd.h f8, f6, f10, rdn # perform operation
fadd.h f8, f6, f10, rmm # perform operation
fadd.h f8, f6, f10, rne # perform operation
fadd.h f8, f6, f10, rtz # perform operation
fadd.h f8, f6, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f6, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f6, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f6, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f6, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f6, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xbe00)
li x13, 0x5a9efae176902940 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f27, 0(x2) # load 0x00000200 from memory into f27
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
fadd.h f13, f27, f15, dyn # perform operation
fadd.h f13, f27, f15, rdn # perform operation
fadd.h f13, f27, f15, rmm # perform operation
fadd.h f13, f27, f15, rne # perform operation
fadd.h f13, f27, f15, rtz # perform operation
fadd.h f13, f27, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f27, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f27, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f27, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f27, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f27, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x4000)
li x18, 0x8408d576fa5510ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f21, 0(x2) # load 0x00000200 from memory into f21
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f15, 0(x2) # load 0x00004000 from memory into f15
fadd.h f18, f21, f15, dyn # perform operation
fadd.h f18, f21, f15, rdn # perform operation
fadd.h f18, f21, f15, rmm # perform operation
fadd.h f18, f21, f15, rne # perform operation
fadd.h f18, f21, f15, rtz # perform operation
fadd.h f18, f21, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f21, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f21, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f21, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f21, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f21, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xc000)
li x7, 0xbaf84a5c4c252de1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f29, 0(x2) # load 0x00000200 from memory into f29
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f31, 0(x2) # load 0x0000c000 from memory into f31
fadd.h f7, f29, f31, dyn # perform operation
fadd.h f7, f29, f31, rdn # perform operation
fadd.h f7, f29, f31, rmm # perform operation
fadd.h f7, f29, f31, rne # perform operation
fadd.h f7, f29, f31, rtz # perform operation
fadd.h f7, f29, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f29, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f29, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f29, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f29, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f29, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x400)
li x9, 0x01cdf5925fe86ac7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f31, 0(x2) # load 0x00000200 from memory into f31
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f6, 0(x2) # load 0x00000400 from memory into f6
fadd.h f9, f31, f6, dyn # perform operation
fadd.h f9, f31, f6, rdn # perform operation
fadd.h f9, f31, f6, rmm # perform operation
fadd.h f9, f31, f6, rne # perform operation
fadd.h f9, f31, f6, rtz # perform operation
fadd.h f9, f31, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f31, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f31, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f31, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f31, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f31, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8400)
li x19, 0x58d2e2301ded3439 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f1, 0(x2) # load 0x00000200 from memory into f1
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
fadd.h f19, f1, f26, dyn # perform operation
fadd.h f19, f1, f26, rdn # perform operation
fadd.h f19, f1, f26, rmm # perform operation
fadd.h f19, f1, f26, rne # perform operation
fadd.h f19, f1, f26, rtz # perform operation
fadd.h f19, f1, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f1, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f1, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f1, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f1, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f1, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7bff)
li x21, 0x1e78f9d638b6f2d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f23, 0(x2) # load 0x00007bff from memory into f23
fadd.h f21, f13, f23, dyn # perform operation
fadd.h f21, f13, f23, rdn # perform operation
fadd.h f21, f13, f23, rmm # perform operation
fadd.h f21, f13, f23, rne # perform operation
fadd.h f21, f13, f23, rtz # perform operation
fadd.h f21, f13, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f13, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f13, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f13, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f13, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f13, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfbff)
li x10, 0xcc9374a6c3d6ad0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f20, 0(x2) # load 0x00000200 from memory into f20
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
fadd.h f10, f20, f31, dyn # perform operation
fadd.h f10, f20, f31, rdn # perform operation
fadd.h f10, f20, f31, rmm # perform operation
fadd.h f10, f20, f31, rne # perform operation
fadd.h f10, f20, f31, rtz # perform operation
fadd.h f10, f20, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f20, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f20, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f20, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f20, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f20, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3ff)
li x1, 0xb5ae2ef2462b93bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f12, 0(x2) # load 0x00000200 from memory into f12
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f28, 0(x2) # load 0x000003ff from memory into f28
fadd.h f1, f12, f28, dyn # perform operation
fadd.h f1, f12, f28, rdn # perform operation
fadd.h f1, f12, f28, rmm # perform operation
fadd.h f1, f12, f28, rne # perform operation
fadd.h f1, f12, f28, rtz # perform operation
fadd.h f1, f12, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f12, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f12, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f12, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f12, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f12, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x83ff)
li x30, 0xcf9aa0ec91a070bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f4, 0(x2) # load 0x000083ff from memory into f4
fadd.h f30, f3, f4, dyn # perform operation
fadd.h f30, f3, f4, rdn # perform operation
fadd.h f30, f3, f4, rmm # perform operation
fadd.h f30, f3, f4, rne # perform operation
fadd.h f30, f3, f4, rtz # perform operation
fadd.h f30, f3, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f3, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f3, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f3, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f3, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f3, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x200)
li x4, 0xf84291a123ad6f8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f7, 0(x2) # load 0x00000200 from memory into f7
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
fadd.h f4, f7, f9, dyn # perform operation
fadd.h f4, f7, f9, rdn # perform operation
fadd.h f4, f7, f9, rmm # perform operation
fadd.h f4, f7, f9, rne # perform operation
fadd.h f4, f7, f9, rtz # perform operation
fadd.h f4, f7, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f7, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f7, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f7, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f7, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f7, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8200)
li x30, 0x9346cc2496a7cc34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f29, 0(x2) # load 0x00000200 from memory into f29
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f27, 0(x2) # load 0x00008200 from memory into f27
fadd.h f30, f29, f27, dyn # perform operation
fadd.h f30, f29, f27, rdn # perform operation
fadd.h f30, f29, f27, rmm # perform operation
fadd.h f30, f29, f27, rne # perform operation
fadd.h f30, f29, f27, rtz # perform operation
fadd.h f30, f29, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f29, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f29, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f29, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f29, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f29, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x1)
li x16, 0x54723c51dd232690 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f7, 0(x2) # load 0x00000200 from memory into f7
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
fadd.h f16, f7, f31, dyn # perform operation
fadd.h f16, f7, f31, rdn # perform operation
fadd.h f16, f7, f31, rmm # perform operation
fadd.h f16, f7, f31, rne # perform operation
fadd.h f16, f7, f31, rtz # perform operation
fadd.h f16, f7, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f7, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f7, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f7, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f7, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f7, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8001)
li x10, 0x7d60e925f3dc7692 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f16, 0(x2) # load 0x00008001 from memory into f16
fadd.h f10, f13, f16, dyn # perform operation
fadd.h f10, f13, f16, rdn # perform operation
fadd.h f10, f13, f16, rmm # perform operation
fadd.h f10, f13, f16, rne # perform operation
fadd.h f10, f13, f16, rtz # perform operation
fadd.h f10, f13, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f13, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f13, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f13, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f13, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f13, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7c00)
li x16, 0xd59deede60bc3f62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f28, 0(x2) # load 0x00000200 from memory into f28
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f10, 0(x2) # load 0x00007c00 from memory into f10
fadd.h f16, f28, f10, dyn # perform operation
fadd.h f16, f28, f10, rdn # perform operation
fadd.h f16, f28, f10, rmm # perform operation
fadd.h f16, f28, f10, rne # perform operation
fadd.h f16, f28, f10, rtz # perform operation
fadd.h f16, f28, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f28, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f28, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f28, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f28, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f28, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfc00)
li x19, 0x4e1b898e705e55c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f29, 0(x2) # load 0x00000200 from memory into f29
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f20, 0(x2) # load 0x0000fc00 from memory into f20
fadd.h f19, f29, f20, dyn # perform operation
fadd.h f19, f29, f20, rdn # perform operation
fadd.h f19, f29, f20, rmm # perform operation
fadd.h f19, f29, f20, rne # perform operation
fadd.h f19, f29, f20, rtz # perform operation
fadd.h f19, f29, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f29, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f29, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f29, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f29, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f29, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7e00)
li x22, 0xf444a1f3c009b7e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f4, 0(x2) # load 0x00007e00 from memory into f4
fadd.h f22, f15, f4, dyn # perform operation
fadd.h f22, f15, f4, rdn # perform operation
fadd.h f22, f15, f4, rmm # perform operation
fadd.h f22, f15, f4, rne # perform operation
fadd.h f22, f15, f4, rtz # perform operation
fadd.h f22, f15, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f15, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f15, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f15, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f15, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f15, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7fff)
li x11, 0x0ec9dc7991db3690 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f12, 0(x2) # load 0x00000200 from memory into f12
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
fadd.h f11, f12, f6, dyn # perform operation
fadd.h f11, f12, f6, rdn # perform operation
fadd.h f11, f12, f6, rmm # perform operation
fadd.h f11, f12, f6, rne # perform operation
fadd.h f11, f12, f6, rtz # perform operation
fadd.h f11, f12, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f12, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f12, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f12, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f12, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f12, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7c01)
li x24, 0x58cd57db90807293 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f7, 0(x2) # load 0x00000200 from memory into f7
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f21, 0(x2) # load 0x00007c01 from memory into f21
fadd.h f24, f7, f21, dyn # perform operation
fadd.h f24, f7, f21, rdn # perform operation
fadd.h f24, f7, f21, rmm # perform operation
fadd.h f24, f7, f21, rne # perform operation
fadd.h f24, f7, f21, rtz # perform operation
fadd.h f24, f7, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f7, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f7, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f7, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f7, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f7, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7dff)
li x1, 0x49f332c22aa00055 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f10, 0(x2) # load 0x00000200 from memory into f10
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f13, 0(x2) # load 0x00007dff from memory into f13
fadd.h f1, f10, f13, dyn # perform operation
fadd.h f1, f10, f13, rdn # perform operation
fadd.h f1, f10, f13, rmm # perform operation
fadd.h f1, f10, f13, rne # perform operation
fadd.h f1, f10, f13, rtz # perform operation
fadd.h f1, f10, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f10, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f10, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f10, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f10, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f10, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x58b4)
li x17, 0xef6dc4565b3fc559 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f27, 0(x2) # load 0x00000200 from memory into f27
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f7, 0(x2) # load 0x000058b4 from memory into f7
fadd.h f17, f27, f7, dyn # perform operation
fadd.h f17, f27, f7, rdn # perform operation
fadd.h f17, f27, f7, rmm # perform operation
fadd.h f17, f27, f7, rne # perform operation
fadd.h f17, f27, f7, rtz # perform operation
fadd.h f17, f27, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f27, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f27, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f27, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f27, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f27, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xc93a)
li x30, 0x22bc978b9ac4b9a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f26, 0(x2) # load 0x00000200 from memory into f26
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f16, 0(x2) # load 0x0000c93a from memory into f16
fadd.h f30, f26, f16, dyn # perform operation
fadd.h f30, f26, f16, rdn # perform operation
fadd.h f30, f26, f16, rmm # perform operation
fadd.h f30, f26, f16, rne # perform operation
fadd.h f30, f26, f16, rtz # perform operation
fadd.h f30, f26, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f26, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f26, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f26, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f26, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f26, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x0)
li x6, 0x5fab7f72cd12b19c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f5, 0(x2) # load 0x00008200 from memory into f5
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
fadd.h f6, f5, f31, dyn # perform operation
fadd.h f6, f5, f31, rdn # perform operation
fadd.h f6, f5, f31, rmm # perform operation
fadd.h f6, f5, f31, rne # perform operation
fadd.h f6, f5, f31, rtz # perform operation
fadd.h f6, f5, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f5, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f5, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f5, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f5, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f5, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8000)
li x11, 0xd0965832755c0bbc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
fadd.h f11, f17, f31, dyn # perform operation
fadd.h f11, f17, f31, rdn # perform operation
fadd.h f11, f17, f31, rmm # perform operation
fadd.h f11, f17, f31, rne # perform operation
fadd.h f11, f17, f31, rtz # perform operation
fadd.h f11, f17, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f17, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f17, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f17, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f17, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f17, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3c00)
li x24, 0x26e9a0f99b88d4b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f31, 0(x2) # load 0x00008200 from memory into f31
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
fadd.h f24, f31, f27, dyn # perform operation
fadd.h f24, f31, f27, rdn # perform operation
fadd.h f24, f31, f27, rmm # perform operation
fadd.h f24, f31, f27, rne # perform operation
fadd.h f24, f31, f27, rtz # perform operation
fadd.h f24, f31, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f31, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f31, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f31, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f31, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f31, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xbc00)
li x26, 0xd4d432f85ff631c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f4, 0(x2) # load 0x00008200 from memory into f4
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
fadd.h f26, f4, f28, dyn # perform operation
fadd.h f26, f4, f28, rdn # perform operation
fadd.h f26, f4, f28, rmm # perform operation
fadd.h f26, f4, f28, rne # perform operation
fadd.h f26, f4, f28, rtz # perform operation
fadd.h f26, f4, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f4, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f4, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f4, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f4, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f4, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3e00)
li x21, 0x2849c9962b5bb4cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f29, 0(x2) # load 0x00008200 from memory into f29
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f2, 0(x2) # load 0x00003e00 from memory into f2
fadd.h f21, f29, f2, dyn # perform operation
fadd.h f21, f29, f2, rdn # perform operation
fadd.h f21, f29, f2, rmm # perform operation
fadd.h f21, f29, f2, rne # perform operation
fadd.h f21, f29, f2, rtz # perform operation
fadd.h f21, f29, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f29, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f29, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f29, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f29, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f29, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xbe00)
li x6, 0x49f9852eec9938b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f11, 0(x2) # load 0x00008200 from memory into f11
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f3, 0(x2) # load 0x0000be00 from memory into f3
fadd.h f6, f11, f3, dyn # perform operation
fadd.h f6, f11, f3, rdn # perform operation
fadd.h f6, f11, f3, rmm # perform operation
fadd.h f6, f11, f3, rne # perform operation
fadd.h f6, f11, f3, rtz # perform operation
fadd.h f6, f11, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f11, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f11, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f11, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f11, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f11, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x4000)
li x8, 0xb7e1590e5f74ae92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f4, 0(x2) # load 0x00004000 from memory into f4
fadd.h f8, f14, f4, dyn # perform operation
fadd.h f8, f14, f4, rdn # perform operation
fadd.h f8, f14, f4, rmm # perform operation
fadd.h f8, f14, f4, rne # perform operation
fadd.h f8, f14, f4, rtz # perform operation
fadd.h f8, f14, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f14, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f14, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f14, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f14, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f14, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xc000)
li x30, 0xa2e27b3d6c4f4d07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f28, 0(x2) # load 0x00008200 from memory into f28
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f15, 0(x2) # load 0x0000c000 from memory into f15
fadd.h f30, f28, f15, dyn # perform operation
fadd.h f30, f28, f15, rdn # perform operation
fadd.h f30, f28, f15, rmm # perform operation
fadd.h f30, f28, f15, rne # perform operation
fadd.h f30, f28, f15, rtz # perform operation
fadd.h f30, f28, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f28, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f28, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f28, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f28, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f28, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x400)
li x15, 0x893b06352c41a275 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f17, 0(x2) # load 0x00000400 from memory into f17
fadd.h f15, f23, f17, dyn # perform operation
fadd.h f15, f23, f17, rdn # perform operation
fadd.h f15, f23, f17, rmm # perform operation
fadd.h f15, f23, f17, rne # perform operation
fadd.h f15, f23, f17, rtz # perform operation
fadd.h f15, f23, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f23, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f23, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f23, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f23, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f23, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8400)
li x10, 0x2b5b73a17c89a5c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f22, 0(x2) # load 0x00008200 from memory into f22
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f30, 0(x2) # load 0x00008400 from memory into f30
fadd.h f10, f22, f30, dyn # perform operation
fadd.h f10, f22, f30, rdn # perform operation
fadd.h f10, f22, f30, rmm # perform operation
fadd.h f10, f22, f30, rne # perform operation
fadd.h f10, f22, f30, rtz # perform operation
fadd.h f10, f22, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f22, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f22, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f22, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f22, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f22, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7bff)
li x3, 0xf8276070df707bc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f28, 0(x2) # load 0x00008200 from memory into f28
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
fadd.h f3, f28, f30, dyn # perform operation
fadd.h f3, f28, f30, rdn # perform operation
fadd.h f3, f28, f30, rmm # perform operation
fadd.h f3, f28, f30, rne # perform operation
fadd.h f3, f28, f30, rtz # perform operation
fadd.h f3, f28, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f28, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f28, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f28, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f28, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f28, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfbff)
li x14, 0xba2579d231d168dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f31, 0(x2) # load 0x00008200 from memory into f31
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f4, 0(x2) # load 0x0000fbff from memory into f4
fadd.h f14, f31, f4, dyn # perform operation
fadd.h f14, f31, f4, rdn # perform operation
fadd.h f14, f31, f4, rmm # perform operation
fadd.h f14, f31, f4, rne # perform operation
fadd.h f14, f31, f4, rtz # perform operation
fadd.h f14, f31, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f31, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f31, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f31, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f31, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f31, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3ff)
li x15, 0x1628553e74f2885a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f12, 0(x2) # load 0x00008200 from memory into f12
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f10, 0(x2) # load 0x000003ff from memory into f10
fadd.h f15, f12, f10, dyn # perform operation
fadd.h f15, f12, f10, rdn # perform operation
fadd.h f15, f12, f10, rmm # perform operation
fadd.h f15, f12, f10, rne # perform operation
fadd.h f15, f12, f10, rtz # perform operation
fadd.h f15, f12, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f12, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f12, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f12, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f12, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f12, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x83ff)
li x8, 0xb615eaee28e59e58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f21, 0(x2) # load 0x00008200 from memory into f21
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f4, 0(x2) # load 0x000083ff from memory into f4
fadd.h f8, f21, f4, dyn # perform operation
fadd.h f8, f21, f4, rdn # perform operation
fadd.h f8, f21, f4, rmm # perform operation
fadd.h f8, f21, f4, rne # perform operation
fadd.h f8, f21, f4, rtz # perform operation
fadd.h f8, f21, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f21, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f21, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f21, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f21, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f21, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x200)
li x21, 0xc1f138ecae645b66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f28, 0(x2) # load 0x00008200 from memory into f28
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f23, 0(x2) # load 0x00000200 from memory into f23
fadd.h f21, f28, f23, dyn # perform operation
fadd.h f21, f28, f23, rdn # perform operation
fadd.h f21, f28, f23, rmm # perform operation
fadd.h f21, f28, f23, rne # perform operation
fadd.h f21, f28, f23, rtz # perform operation
fadd.h f21, f28, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f28, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f28, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f28, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f28, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f28, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8200)
li x21, 0xa0b64c8c6f4d2107 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f30, 0(x2) # load 0x00008200 from memory into f30
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
fadd.h f21, f30, f25, dyn # perform operation
fadd.h f21, f30, f25, rdn # perform operation
fadd.h f21, f30, f25, rmm # perform operation
fadd.h f21, f30, f25, rne # perform operation
fadd.h f21, f30, f25, rtz # perform operation
fadd.h f21, f30, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f30, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f30, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f30, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f30, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f30, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x1)
li x31, 0x7d9b3820af8da60e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f6, 0(x2) # load 0x00000001 from memory into f6
fadd.h f31, f15, f6, dyn # perform operation
fadd.h f31, f15, f6, rdn # perform operation
fadd.h f31, f15, f6, rmm # perform operation
fadd.h f31, f15, f6, rne # perform operation
fadd.h f31, f15, f6, rtz # perform operation
fadd.h f31, f15, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f15, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f15, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f15, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f15, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f15, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8001)
li x19, 0xea9ca5f0e3dd44dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f13, 0(x2) # load 0x00008001 from memory into f13
fadd.h f19, f10, f13, dyn # perform operation
fadd.h f19, f10, f13, rdn # perform operation
fadd.h f19, f10, f13, rmm # perform operation
fadd.h f19, f10, f13, rne # perform operation
fadd.h f19, f10, f13, rtz # perform operation
fadd.h f19, f10, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f10, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f10, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f10, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f10, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f10, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7c00)
li x22, 0x6c6d24de9ef4fcab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
fadd.h f22, f20, f7, dyn # perform operation
fadd.h f22, f20, f7, rdn # perform operation
fadd.h f22, f20, f7, rmm # perform operation
fadd.h f22, f20, f7, rne # perform operation
fadd.h f22, f20, f7, rtz # perform operation
fadd.h f22, f20, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f20, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f20, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f20, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f20, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f20, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfc00)
li x13, 0x8eba8a789d343a40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f18, 0(x2) # load 0x00008200 from memory into f18
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f29, 0(x2) # load 0x0000fc00 from memory into f29
fadd.h f13, f18, f29, dyn # perform operation
fadd.h f13, f18, f29, rdn # perform operation
fadd.h f13, f18, f29, rmm # perform operation
fadd.h f13, f18, f29, rne # perform operation
fadd.h f13, f18, f29, rtz # perform operation
fadd.h f13, f18, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f18, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f18, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f18, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f18, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f18, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7e00)
li x4, 0x6b37576057d94daf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f30, 0(x2) # load 0x00008200 from memory into f30
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
fadd.h f4, f30, f8, dyn # perform operation
fadd.h f4, f30, f8, rdn # perform operation
fadd.h f4, f30, f8, rmm # perform operation
fadd.h f4, f30, f8, rne # perform operation
fadd.h f4, f30, f8, rtz # perform operation
fadd.h f4, f30, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f30, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f30, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f30, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f30, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f30, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7fff)
li x10, 0xd768b50e7c29d513 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f24, 0(x2) # load 0x00008200 from memory into f24
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f11, 0(x2) # load 0x00007fff from memory into f11
fadd.h f10, f24, f11, dyn # perform operation
fadd.h f10, f24, f11, rdn # perform operation
fadd.h f10, f24, f11, rmm # perform operation
fadd.h f10, f24, f11, rne # perform operation
fadd.h f10, f24, f11, rtz # perform operation
fadd.h f10, f24, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f24, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f24, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f24, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f24, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f24, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7c01)
li x28, 0x1dd095a9ae01f588 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f6, 0(x2) # load 0x00008200 from memory into f6
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f22, 0(x2) # load 0x00007c01 from memory into f22
fadd.h f28, f6, f22, dyn # perform operation
fadd.h f28, f6, f22, rdn # perform operation
fadd.h f28, f6, f22, rmm # perform operation
fadd.h f28, f6, f22, rne # perform operation
fadd.h f28, f6, f22, rtz # perform operation
fadd.h f28, f6, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f6, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f6, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f6, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f6, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f6, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7dff)
li x6, 0xe122d6a97e16050f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
fadd.h f6, f10, f21, dyn # perform operation
fadd.h f6, f10, f21, rdn # perform operation
fadd.h f6, f10, f21, rmm # perform operation
fadd.h f6, f10, f21, rne # perform operation
fadd.h f6, f10, f21, rtz # perform operation
fadd.h f6, f10, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f10, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f10, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f10, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f10, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f10, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x58b4)
li x18, 0xb61cd9878b17c8f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
fadd.h f18, f2, f11, dyn # perform operation
fadd.h f18, f2, f11, rdn # perform operation
fadd.h f18, f2, f11, rmm # perform operation
fadd.h f18, f2, f11, rne # perform operation
fadd.h f18, f2, f11, rtz # perform operation
fadd.h f18, f2, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f2, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f2, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f2, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f2, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f2, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xc93a)
li x9, 0x4f7342b153ad4429 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f16, 0(x2) # load 0x0000c93a from memory into f16
fadd.h f9, f20, f16, dyn # perform operation
fadd.h f9, f20, f16, rdn # perform operation
fadd.h f9, f20, f16, rmm # perform operation
fadd.h f9, f20, f16, rne # perform operation
fadd.h f9, f20, f16, rtz # perform operation
fadd.h f9, f20, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f20, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f20, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f20, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f20, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f20, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
li x24, 0x7d40d91cce1c58f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f17, 0(x2) # load 0x00000001 from memory into f17
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
fadd.h f24, f17, f25, dyn # perform operation
fadd.h f24, f17, f25, rdn # perform operation
fadd.h f24, f17, f25, rmm # perform operation
fadd.h f24, f17, f25, rne # perform operation
fadd.h f24, f17, f25, rtz # perform operation
fadd.h f24, f17, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f17, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f17, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f17, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f17, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f17, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000)
li x28, 0xed90c24d32b7b47e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f8, 0(x2) # load 0x00000001 from memory into f8
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f22, 0(x2) # load 0x00008000 from memory into f22
fadd.h f28, f8, f22, dyn # perform operation
fadd.h f28, f8, f22, rdn # perform operation
fadd.h f28, f8, f22, rmm # perform operation
fadd.h f28, f8, f22, rne # perform operation
fadd.h f28, f8, f22, rtz # perform operation
fadd.h f28, f8, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f8, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f8, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f8, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f8, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f8, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3c00)
li x4, 0xb49875932f4a2d57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f22, 0(x2) # load 0x00000001 from memory into f22
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f12, 0(x2) # load 0x00003c00 from memory into f12
fadd.h f4, f22, f12, dyn # perform operation
fadd.h f4, f22, f12, rdn # perform operation
fadd.h f4, f22, f12, rmm # perform operation
fadd.h f4, f22, f12, rne # perform operation
fadd.h f4, f22, f12, rtz # perform operation
fadd.h f4, f22, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f22, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f22, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f22, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f22, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f22, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbc00)
li x11, 0xc2abd5e62cc8624a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f19, 0(x2) # load 0x0000bc00 from memory into f19
fadd.h f11, f27, f19, dyn # perform operation
fadd.h f11, f27, f19, rdn # perform operation
fadd.h f11, f27, f19, rmm # perform operation
fadd.h f11, f27, f19, rne # perform operation
fadd.h f11, f27, f19, rtz # perform operation
fadd.h f11, f27, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f27, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f27, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f27, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f27, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f27, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3e00)
li x19, 0x8f3f474f4b32f8d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f23, 0(x2) # load 0x00003e00 from memory into f23
fadd.h f19, f14, f23, dyn # perform operation
fadd.h f19, f14, f23, rdn # perform operation
fadd.h f19, f14, f23, rmm # perform operation
fadd.h f19, f14, f23, rne # perform operation
fadd.h f19, f14, f23, rtz # perform operation
fadd.h f19, f14, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f14, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f14, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f14, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f14, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f14, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbe00)
li x18, 0xd8c69881a09f4930 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f17, 0(x2) # load 0x00000001 from memory into f17
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f16, 0(x2) # load 0x0000be00 from memory into f16
fadd.h f18, f17, f16, dyn # perform operation
fadd.h f18, f17, f16, rdn # perform operation
fadd.h f18, f17, f16, rmm # perform operation
fadd.h f18, f17, f16, rne # perform operation
fadd.h f18, f17, f16, rtz # perform operation
fadd.h f18, f17, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f17, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f17, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f17, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f17, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f17, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x4000)
li x6, 0x86f300f049d67eff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f26, 0(x2) # load 0x00004000 from memory into f26
fadd.h f6, f16, f26, dyn # perform operation
fadd.h f6, f16, f26, rdn # perform operation
fadd.h f6, f16, f26, rmm # perform operation
fadd.h f6, f16, f26, rne # perform operation
fadd.h f6, f16, f26, rtz # perform operation
fadd.h f6, f16, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f16, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f16, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f16, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f16, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f16, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc000)
li x2, 0x2f7df12b880fa423 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f1, 0(x2) # load 0x00000001 from memory into f1
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f20, 0(x2) # load 0x0000c000 from memory into f20
fadd.h f2, f1, f20, dyn # perform operation
fadd.h f2, f1, f20, rdn # perform operation
fadd.h f2, f1, f20, rmm # perform operation
fadd.h f2, f1, f20, rne # perform operation
fadd.h f2, f1, f20, rtz # perform operation
fadd.h f2, f1, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f1, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f1, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f1, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f1, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f1, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x400)
li x21, 0x9eb943b086e4ca69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f3, 0(x2) # load 0x00000001 from memory into f3
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f22, 0(x2) # load 0x00000400 from memory into f22
fadd.h f21, f3, f22, dyn # perform operation
fadd.h f21, f3, f22, rdn # perform operation
fadd.h f21, f3, f22, rmm # perform operation
fadd.h f21, f3, f22, rne # perform operation
fadd.h f21, f3, f22, rtz # perform operation
fadd.h f21, f3, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f3, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f3, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f3, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f3, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f3, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8400)
li x19, 0xd015ff09aef4d977 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f13, 0(x2) # load 0x00000001 from memory into f13
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f23, 0(x2) # load 0x00008400 from memory into f23
fadd.h f19, f13, f23, dyn # perform operation
fadd.h f19, f13, f23, rdn # perform operation
fadd.h f19, f13, f23, rmm # perform operation
fadd.h f19, f13, f23, rne # perform operation
fadd.h f19, f13, f23, rtz # perform operation
fadd.h f19, f13, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f13, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f13, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f13, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f13, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f13, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7bff)
li x4, 0x5fcd4b232c15222b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f13, 0(x2) # load 0x00000001 from memory into f13
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f7, 0(x2) # load 0x00007bff from memory into f7
fadd.h f4, f13, f7, dyn # perform operation
fadd.h f4, f13, f7, rdn # perform operation
fadd.h f4, f13, f7, rmm # perform operation
fadd.h f4, f13, f7, rne # perform operation
fadd.h f4, f13, f7, rtz # perform operation
fadd.h f4, f13, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f13, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f13, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f13, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f13, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f13, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfbff)
li x20, 0x5954dc1f4bfcc4c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f1, 0(x2) # load 0x00000001 from memory into f1
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
fadd.h f20, f1, f11, dyn # perform operation
fadd.h f20, f1, f11, rdn # perform operation
fadd.h f20, f1, f11, rmm # perform operation
fadd.h f20, f1, f11, rne # perform operation
fadd.h f20, f1, f11, rtz # perform operation
fadd.h f20, f1, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f1, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f1, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f1, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f1, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f1, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3ff)
li x30, 0x978774f493cf115b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f25, 0(x2) # load 0x000003ff from memory into f25
fadd.h f30, f21, f25, dyn # perform operation
fadd.h f30, f21, f25, rdn # perform operation
fadd.h f30, f21, f25, rmm # perform operation
fadd.h f30, f21, f25, rne # perform operation
fadd.h f30, f21, f25, rtz # perform operation
fadd.h f30, f21, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f21, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f21, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f21, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f21, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f21, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x83ff)
li x23, 0x67b4fb5ce16e1259 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f4, 0(x2) # load 0x00000001 from memory into f4
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f7, 0(x2) # load 0x000083ff from memory into f7
fadd.h f23, f4, f7, dyn # perform operation
fadd.h f23, f4, f7, rdn # perform operation
fadd.h f23, f4, f7, rmm # perform operation
fadd.h f23, f4, f7, rne # perform operation
fadd.h f23, f4, f7, rtz # perform operation
fadd.h f23, f4, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f4, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f4, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f4, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f4, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f4, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x200)
li x9, 0xf4040589bf7ce066 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f15, 0(x2) # load 0x00000001 from memory into f15
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f12, 0(x2) # load 0x00000200 from memory into f12
fadd.h f9, f15, f12, dyn # perform operation
fadd.h f9, f15, f12, rdn # perform operation
fadd.h f9, f15, f12, rmm # perform operation
fadd.h f9, f15, f12, rne # perform operation
fadd.h f9, f15, f12, rtz # perform operation
fadd.h f9, f15, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f15, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f15, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f15, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f15, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f15, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8200)
li x10, 0x3562ae40067fc60d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f12, 0(x2) # load 0x00000001 from memory into f12
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
fadd.h f10, f12, f1, dyn # perform operation
fadd.h f10, f12, f1, rdn # perform operation
fadd.h f10, f12, f1, rmm # perform operation
fadd.h f10, f12, f1, rne # perform operation
fadd.h f10, f12, f1, rtz # perform operation
fadd.h f10, f12, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f12, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f12, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f12, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f12, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f12, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
li x2, 0x68099d0e775d1d5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
fadd.h f2, f20, f26, dyn # perform operation
fadd.h f2, f20, f26, rdn # perform operation
fadd.h f2, f20, f26, rmm # perform operation
fadd.h f2, f20, f26, rne # perform operation
fadd.h f2, f20, f26, rtz # perform operation
fadd.h f2, f20, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f20, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f20, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f20, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f20, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f20, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8001)
li x22, 0xc02dd6e14276ea30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
fadd.h f22, f26, f6, dyn # perform operation
fadd.h f22, f26, f6, rdn # perform operation
fadd.h f22, f26, f6, rmm # perform operation
fadd.h f22, f26, f6, rne # perform operation
fadd.h f22, f26, f6, rtz # perform operation
fadd.h f22, f26, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f26, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f26, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f26, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f26, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f26, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7c00)
li x4, 0xee6411e659b47bf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f23, 0(x2) # load 0x00000001 from memory into f23
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f6, 0(x2) # load 0x00007c00 from memory into f6
fadd.h f4, f23, f6, dyn # perform operation
fadd.h f4, f23, f6, rdn # perform operation
fadd.h f4, f23, f6, rmm # perform operation
fadd.h f4, f23, f6, rne # perform operation
fadd.h f4, f23, f6, rtz # perform operation
fadd.h f4, f23, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f23, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f23, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f23, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f23, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f23, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfc00)
li x10, 0x3a8e4751618949d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f17, 0(x2) # load 0x00000001 from memory into f17
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f2, 0(x2) # load 0x0000fc00 from memory into f2
fadd.h f10, f17, f2, dyn # perform operation
fadd.h f10, f17, f2, rdn # perform operation
fadd.h f10, f17, f2, rmm # perform operation
fadd.h f10, f17, f2, rne # perform operation
fadd.h f10, f17, f2, rtz # perform operation
fadd.h f10, f17, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f17, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f17, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f17, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f17, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f17, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7e00)
li x20, 0x475f3e173e22dbfe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
fadd.h f20, f31, f21, dyn # perform operation
fadd.h f20, f31, f21, rdn # perform operation
fadd.h f20, f31, f21, rmm # perform operation
fadd.h f20, f31, f21, rne # perform operation
fadd.h f20, f31, f21, rtz # perform operation
fadd.h f20, f31, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f31, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f31, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f31, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f31, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f31, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fff)
li x24, 0xa91ea5ab0262a276 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f5, 0(x2) # load 0x00007fff from memory into f5
fadd.h f24, f26, f5, dyn # perform operation
fadd.h f24, f26, f5, rdn # perform operation
fadd.h f24, f26, f5, rmm # perform operation
fadd.h f24, f26, f5, rne # perform operation
fadd.h f24, f26, f5, rtz # perform operation
fadd.h f24, f26, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f26, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f26, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f26, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f26, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f26, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7c01)
li x7, 0x7cbc01e984929a95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f12, 0(x2) # load 0x00000001 from memory into f12
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
fadd.h f7, f12, f9, dyn # perform operation
fadd.h f7, f12, f9, rdn # perform operation
fadd.h f7, f12, f9, rmm # perform operation
fadd.h f7, f12, f9, rne # perform operation
fadd.h f7, f12, f9, rtz # perform operation
fadd.h f7, f12, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f12, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f12, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f12, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f12, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f12, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7dff)
li x21, 0x8501fbe80673269b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f12, 0(x2) # load 0x00007dff from memory into f12
fadd.h f21, f24, f12, dyn # perform operation
fadd.h f21, f24, f12, rdn # perform operation
fadd.h f21, f24, f12, rmm # perform operation
fadd.h f21, f24, f12, rne # perform operation
fadd.h f21, f24, f12, rtz # perform operation
fadd.h f21, f24, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f24, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f24, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f24, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f24, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f24, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x58b4)
li x25, 0x121df617197c11d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f12, 0(x2) # load 0x000058b4 from memory into f12
fadd.h f25, f21, f12, dyn # perform operation
fadd.h f25, f21, f12, rdn # perform operation
fadd.h f25, f21, f12, rmm # perform operation
fadd.h f25, f21, f12, rne # perform operation
fadd.h f25, f21, f12, rtz # perform operation
fadd.h f25, f21, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f21, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f21, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f21, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f21, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f21, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc93a)
li x15, 0x087657b373c8e8a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f18, 0(x2) # load 0x00000001 from memory into f18
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
fadd.h f15, f18, f20, dyn # perform operation
fadd.h f15, f18, f20, rdn # perform operation
fadd.h f15, f18, f20, rmm # perform operation
fadd.h f15, f18, f20, rne # perform operation
fadd.h f15, f18, f20, rtz # perform operation
fadd.h f15, f18, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f18, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f18, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f18, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f18, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f18, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x0)
li x9, 0xa79687b342d05c4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f17, 0(x2) # load 0x00008001 from memory into f17
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
fadd.h f9, f17, f19, dyn # perform operation
fadd.h f9, f17, f19, rdn # perform operation
fadd.h f9, f17, f19, rmm # perform operation
fadd.h f9, f17, f19, rne # perform operation
fadd.h f9, f17, f19, rtz # perform operation
fadd.h f9, f17, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f17, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f17, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f17, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f17, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f17, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8000)
li x26, 0x28d951ab77320356 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f1, 0(x2) # load 0x00008000 from memory into f1
fadd.h f26, f14, f1, dyn # perform operation
fadd.h f26, f14, f1, rdn # perform operation
fadd.h f26, f14, f1, rmm # perform operation
fadd.h f26, f14, f1, rne # perform operation
fadd.h f26, f14, f1, rtz # perform operation
fadd.h f26, f14, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f14, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f14, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f14, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f14, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f14, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3c00)
li x29, 0x23fdc96b159354b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
fadd.h f29, f5, f15, dyn # perform operation
fadd.h f29, f5, f15, rdn # perform operation
fadd.h f29, f5, f15, rmm # perform operation
fadd.h f29, f5, f15, rne # perform operation
fadd.h f29, f5, f15, rtz # perform operation
fadd.h f29, f5, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f5, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f5, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f5, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f5, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f5, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xbc00)
li x29, 0x8684f822a000e914 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f28, 0(x2) # load 0x00008001 from memory into f28
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
fadd.h f29, f28, f26, dyn # perform operation
fadd.h f29, f28, f26, rdn # perform operation
fadd.h f29, f28, f26, rmm # perform operation
fadd.h f29, f28, f26, rne # perform operation
fadd.h f29, f28, f26, rtz # perform operation
fadd.h f29, f28, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f28, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f28, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f28, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f28, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f28, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3e00)
li x29, 0x63a646c606a5dda3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
fadd.h f29, f31, f1, dyn # perform operation
fadd.h f29, f31, f1, rdn # perform operation
fadd.h f29, f31, f1, rmm # perform operation
fadd.h f29, f31, f1, rne # perform operation
fadd.h f29, f31, f1, rtz # perform operation
fadd.h f29, f31, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f31, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f31, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f31, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f31, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f31, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xbe00)
li x17, 0x8ba909f616bb2d11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f19, 0(x2) # load 0x0000be00 from memory into f19
fadd.h f17, f6, f19, dyn # perform operation
fadd.h f17, f6, f19, rdn # perform operation
fadd.h f17, f6, f19, rmm # perform operation
fadd.h f17, f6, f19, rne # perform operation
fadd.h f17, f6, f19, rtz # perform operation
fadd.h f17, f6, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f6, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f6, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f6, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f6, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f6, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x4000)
li x30, 0xa7fbc5152ea36349 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
fadd.h f30, f24, f25, dyn # perform operation
fadd.h f30, f24, f25, rdn # perform operation
fadd.h f30, f24, f25, rmm # perform operation
fadd.h f30, f24, f25, rne # perform operation
fadd.h f30, f24, f25, rtz # perform operation
fadd.h f30, f24, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f24, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f24, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f24, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f24, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f24, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xc000)
li x23, 0x354150aa00b39543 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f28, 0(x2) # load 0x00008001 from memory into f28
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
fadd.h f23, f28, f26, dyn # perform operation
fadd.h f23, f28, f26, rdn # perform operation
fadd.h f23, f28, f26, rmm # perform operation
fadd.h f23, f28, f26, rne # perform operation
fadd.h f23, f28, f26, rtz # perform operation
fadd.h f23, f28, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f28, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f28, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f28, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f28, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f28, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x400)
li x2, 0xadd46f0fdd0dc635 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f15, 0(x2) # load 0x00000400 from memory into f15
fadd.h f2, f24, f15, dyn # perform operation
fadd.h f2, f24, f15, rdn # perform operation
fadd.h f2, f24, f15, rmm # perform operation
fadd.h f2, f24, f15, rne # perform operation
fadd.h f2, f24, f15, rtz # perform operation
fadd.h f2, f24, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f24, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f24, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f24, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f24, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f24, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8400)
li x8, 0xad294c53d665d48a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
fadd.h f8, f7, f3, dyn # perform operation
fadd.h f8, f7, f3, rdn # perform operation
fadd.h f8, f7, f3, rmm # perform operation
fadd.h f8, f7, f3, rne # perform operation
fadd.h f8, f7, f3, rtz # perform operation
fadd.h f8, f7, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f7, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f7, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f7, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f7, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f7, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7bff)
li x29, 0xe13712c95459c991 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f21, 0(x2) # load 0x00008001 from memory into f21
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
fadd.h f29, f21, f24, dyn # perform operation
fadd.h f29, f21, f24, rdn # perform operation
fadd.h f29, f21, f24, rmm # perform operation
fadd.h f29, f21, f24, rne # perform operation
fadd.h f29, f21, f24, rtz # perform operation
fadd.h f29, f21, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f21, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f21, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f21, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f21, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f21, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfbff)
li x6, 0x82d4ce30975f1ca6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f26, 0(x2) # load 0x00008001 from memory into f26
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f1, 0(x2) # load 0x0000fbff from memory into f1
fadd.h f6, f26, f1, dyn # perform operation
fadd.h f6, f26, f1, rdn # perform operation
fadd.h f6, f26, f1, rmm # perform operation
fadd.h f6, f26, f1, rne # perform operation
fadd.h f6, f26, f1, rtz # perform operation
fadd.h f6, f26, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f26, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f26, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f26, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f26, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f26, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3ff)
li x17, 0x5623d34bc743e971 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f2, 0(x2) # load 0x00008001 from memory into f2
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f10, 0(x2) # load 0x000003ff from memory into f10
fadd.h f17, f2, f10, dyn # perform operation
fadd.h f17, f2, f10, rdn # perform operation
fadd.h f17, f2, f10, rmm # perform operation
fadd.h f17, f2, f10, rne # perform operation
fadd.h f17, f2, f10, rtz # perform operation
fadd.h f17, f2, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f2, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f2, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f2, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f2, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f2, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x83ff)
li x30, 0xbbb70f9ae0ed4a27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f1, 0(x2) # load 0x000083ff from memory into f1
fadd.h f30, f14, f1, dyn # perform operation
fadd.h f30, f14, f1, rdn # perform operation
fadd.h f30, f14, f1, rmm # perform operation
fadd.h f30, f14, f1, rne # perform operation
fadd.h f30, f14, f1, rtz # perform operation
fadd.h f30, f14, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f14, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f14, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f14, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f14, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f14, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x200)
li x31, 0xe7a88e79f9a30772 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f23, 0(x2) # load 0x00000200 from memory into f23
fadd.h f31, f7, f23, dyn # perform operation
fadd.h f31, f7, f23, rdn # perform operation
fadd.h f31, f7, f23, rmm # perform operation
fadd.h f31, f7, f23, rne # perform operation
fadd.h f31, f7, f23, rtz # perform operation
fadd.h f31, f7, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f7, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f7, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f7, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f7, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f7, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8200)
li x17, 0xad15a846419a6906 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f10, 0(x2) # load 0x00008001 from memory into f10
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f27, 0(x2) # load 0x00008200 from memory into f27
fadd.h f17, f10, f27, dyn # perform operation
fadd.h f17, f10, f27, rdn # perform operation
fadd.h f17, f10, f27, rmm # perform operation
fadd.h f17, f10, f27, rne # perform operation
fadd.h f17, f10, f27, rtz # perform operation
fadd.h f17, f10, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f10, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f10, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f10, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f10, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f10, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x1)
li x25, 0xc195821bb9deb223 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f10, 0(x2) # load 0x00008001 from memory into f10
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f19, 0(x2) # load 0x00000001 from memory into f19
fadd.h f25, f10, f19, dyn # perform operation
fadd.h f25, f10, f19, rdn # perform operation
fadd.h f25, f10, f19, rmm # perform operation
fadd.h f25, f10, f19, rne # perform operation
fadd.h f25, f10, f19, rtz # perform operation
fadd.h f25, f10, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f10, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f10, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f10, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f10, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f10, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8001)
li x17, 0x85265f741f0f5daa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f3, 0(x2) # load 0x00008001 from memory into f3
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f21, 0(x2) # load 0x00008001 from memory into f21
fadd.h f17, f3, f21, dyn # perform operation
fadd.h f17, f3, f21, rdn # perform operation
fadd.h f17, f3, f21, rmm # perform operation
fadd.h f17, f3, f21, rne # perform operation
fadd.h f17, f3, f21, rtz # perform operation
fadd.h f17, f3, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f3, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f3, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f3, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f3, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f3, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7c00)
li x28, 0xb4932cfd23681e43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f18, 0(x2) # load 0x00007c00 from memory into f18
fadd.h f28, f24, f18, dyn # perform operation
fadd.h f28, f24, f18, rdn # perform operation
fadd.h f28, f24, f18, rmm # perform operation
fadd.h f28, f24, f18, rne # perform operation
fadd.h f28, f24, f18, rtz # perform operation
fadd.h f28, f24, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f24, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f24, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f24, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f24, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f24, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfc00)
li x14, 0x2969d94d2f231812 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f9, 0(x2) # load 0x00008001 from memory into f9
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f15, 0(x2) # load 0x0000fc00 from memory into f15
fadd.h f14, f9, f15, dyn # perform operation
fadd.h f14, f9, f15, rdn # perform operation
fadd.h f14, f9, f15, rmm # perform operation
fadd.h f14, f9, f15, rne # perform operation
fadd.h f14, f9, f15, rtz # perform operation
fadd.h f14, f9, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f9, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f9, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f9, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f9, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f9, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7e00)
li x23, 0x93c7ca4b77088cc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f13, 0(x2) # load 0x00008001 from memory into f13
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f5, 0(x2) # load 0x00007e00 from memory into f5
fadd.h f23, f13, f5, dyn # perform operation
fadd.h f23, f13, f5, rdn # perform operation
fadd.h f23, f13, f5, rmm # perform operation
fadd.h f23, f13, f5, rne # perform operation
fadd.h f23, f13, f5, rtz # perform operation
fadd.h f23, f13, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f13, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f13, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f13, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f13, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f13, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7fff)
li x23, 0x22985cf9850314d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f13, 0(x2) # load 0x00008001 from memory into f13
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f31, 0(x2) # load 0x00007fff from memory into f31
fadd.h f23, f13, f31, dyn # perform operation
fadd.h f23, f13, f31, rdn # perform operation
fadd.h f23, f13, f31, rmm # perform operation
fadd.h f23, f13, f31, rne # perform operation
fadd.h f23, f13, f31, rtz # perform operation
fadd.h f23, f13, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f13, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f13, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f13, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f13, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f13, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7c01)
li x31, 0x04a06895d4949522 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f3, 0(x2) # load 0x00008001 from memory into f3
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
fadd.h f31, f3, f17, dyn # perform operation
fadd.h f31, f3, f17, rdn # perform operation
fadd.h f31, f3, f17, rmm # perform operation
fadd.h f31, f3, f17, rne # perform operation
fadd.h f31, f3, f17, rtz # perform operation
fadd.h f31, f3, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f3, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f3, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f3, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f3, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f3, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7dff)
li x21, 0x48157ec8b2590d7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f9, 0(x2) # load 0x00008001 from memory into f9
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f6, 0(x2) # load 0x00007dff from memory into f6
fadd.h f21, f9, f6, dyn # perform operation
fadd.h f21, f9, f6, rdn # perform operation
fadd.h f21, f9, f6, rmm # perform operation
fadd.h f21, f9, f6, rne # perform operation
fadd.h f21, f9, f6, rtz # perform operation
fadd.h f21, f9, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f9, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f9, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f9, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f9, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f9, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x58b4)
li x23, 0x5092ca156c150673 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f18, 0(x2) # load 0x00008001 from memory into f18
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f26, 0(x2) # load 0x000058b4 from memory into f26
fadd.h f23, f18, f26, dyn # perform operation
fadd.h f23, f18, f26, rdn # perform operation
fadd.h f23, f18, f26, rmm # perform operation
fadd.h f23, f18, f26, rne # perform operation
fadd.h f23, f18, f26, rtz # perform operation
fadd.h f23, f18, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f18, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f18, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f18, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f18, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f18, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xc93a)
li x21, 0x80ace1e54587d4ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f18, 0(x2) # load 0x00008001 from memory into f18
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f23, 0(x2) # load 0x0000c93a from memory into f23
fadd.h f21, f18, f23, dyn # perform operation
fadd.h f21, f18, f23, rdn # perform operation
fadd.h f21, f18, f23, rmm # perform operation
fadd.h f21, f18, f23, rne # perform operation
fadd.h f21, f18, f23, rtz # perform operation
fadd.h f21, f18, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f18, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f18, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f18, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f18, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f18, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x0)
li x24, 0xb769df2b26f89c96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f30, 0(x2) # load 0x00007c00 from memory into f30
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
fadd.h f24, f30, f10, dyn # perform operation
fadd.h f24, f30, f10, rdn # perform operation
fadd.h f24, f30, f10, rmm # perform operation
fadd.h f24, f30, f10, rne # perform operation
fadd.h f24, f30, f10, rtz # perform operation
fadd.h f24, f30, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f30, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f30, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f30, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f30, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f30, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8000)
li x31, 0x6b4fdfe609b479f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f29, 0(x2) # load 0x00007c00 from memory into f29
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f21, 0(x2) # load 0x00008000 from memory into f21
fadd.h f31, f29, f21, dyn # perform operation
fadd.h f31, f29, f21, rdn # perform operation
fadd.h f31, f29, f21, rmm # perform operation
fadd.h f31, f29, f21, rne # perform operation
fadd.h f31, f29, f21, rtz # perform operation
fadd.h f31, f29, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f29, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f29, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f29, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f29, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f29, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3c00)
li x29, 0x54d2909009284009 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
fadd.h f29, f16, f24, dyn # perform operation
fadd.h f29, f16, f24, rdn # perform operation
fadd.h f29, f16, f24, rmm # perform operation
fadd.h f29, f16, f24, rne # perform operation
fadd.h f29, f16, f24, rtz # perform operation
fadd.h f29, f16, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f16, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f16, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f16, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f16, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f16, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xbc00)
li x28, 0x492afdd31c331082 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f5, 0(x2) # load 0x00007c00 from memory into f5
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f30, 0(x2) # load 0x0000bc00 from memory into f30
fadd.h f28, f5, f30, dyn # perform operation
fadd.h f28, f5, f30, rdn # perform operation
fadd.h f28, f5, f30, rmm # perform operation
fadd.h f28, f5, f30, rne # perform operation
fadd.h f28, f5, f30, rtz # perform operation
fadd.h f28, f5, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f5, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f5, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f5, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f5, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f5, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3e00)
li x9, 0x632c64a5a95d545b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f24, 0(x2) # load 0x00007c00 from memory into f24
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
fadd.h f9, f24, f10, dyn # perform operation
fadd.h f9, f24, f10, rdn # perform operation
fadd.h f9, f24, f10, rmm # perform operation
fadd.h f9, f24, f10, rne # perform operation
fadd.h f9, f24, f10, rtz # perform operation
fadd.h f9, f24, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f24, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f24, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f24, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f24, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f24, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xbe00)
li x5, 0x8d27652780840ee4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f7, 0(x2) # load 0x0000be00 from memory into f7
fadd.h f5, f8, f7, dyn # perform operation
fadd.h f5, f8, f7, rdn # perform operation
fadd.h f5, f8, f7, rmm # perform operation
fadd.h f5, f8, f7, rne # perform operation
fadd.h f5, f8, f7, rtz # perform operation
fadd.h f5, f8, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f8, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f8, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f8, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f8, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f8, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x4000)
li x3, 0x06f24c06b240713f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f7, 0(x2) # load 0x00004000 from memory into f7
fadd.h f3, f28, f7, dyn # perform operation
fadd.h f3, f28, f7, rdn # perform operation
fadd.h f3, f28, f7, rmm # perform operation
fadd.h f3, f28, f7, rne # perform operation
fadd.h f3, f28, f7, rtz # perform operation
fadd.h f3, f28, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f28, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f28, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f28, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f28, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f28, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xc000)
li x29, 0x6d4785bf6ea2ecad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f18, 0(x2) # load 0x00007c00 from memory into f18
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
fadd.h f29, f18, f3, dyn # perform operation
fadd.h f29, f18, f3, rdn # perform operation
fadd.h f29, f18, f3, rmm # perform operation
fadd.h f29, f18, f3, rne # perform operation
fadd.h f29, f18, f3, rtz # perform operation
fadd.h f29, f18, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f18, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f18, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f18, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f18, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f18, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x400)
li x23, 0x5d45b25f792f2b28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f3, 0(x2) # load 0x00007c00 from memory into f3
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f21, 0(x2) # load 0x00000400 from memory into f21
fadd.h f23, f3, f21, dyn # perform operation
fadd.h f23, f3, f21, rdn # perform operation
fadd.h f23, f3, f21, rmm # perform operation
fadd.h f23, f3, f21, rne # perform operation
fadd.h f23, f3, f21, rtz # perform operation
fadd.h f23, f3, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f3, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f3, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f3, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f3, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f3, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8400)
li x21, 0x6a0eca1ac0d1a640 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f23, 0(x2) # load 0x00007c00 from memory into f23
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f16, 0(x2) # load 0x00008400 from memory into f16
fadd.h f21, f23, f16, dyn # perform operation
fadd.h f21, f23, f16, rdn # perform operation
fadd.h f21, f23, f16, rmm # perform operation
fadd.h f21, f23, f16, rne # perform operation
fadd.h f21, f23, f16, rtz # perform operation
fadd.h f21, f23, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f23, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f23, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f23, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f23, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f23, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7bff)
li x13, 0xd328ed0377d71943 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
fadd.h f13, f14, f10, dyn # perform operation
fadd.h f13, f14, f10, rdn # perform operation
fadd.h f13, f14, f10, rmm # perform operation
fadd.h f13, f14, f10, rne # perform operation
fadd.h f13, f14, f10, rtz # perform operation
fadd.h f13, f14, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f14, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f14, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f14, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f14, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f14, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfbff)
li x15, 0x44213eb625f65140 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f3, 0(x2) # load 0x00007c00 from memory into f3
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
fadd.h f15, f3, f17, dyn # perform operation
fadd.h f15, f3, f17, rdn # perform operation
fadd.h f15, f3, f17, rmm # perform operation
fadd.h f15, f3, f17, rne # perform operation
fadd.h f15, f3, f17, rtz # perform operation
fadd.h f15, f3, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f3, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f3, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f3, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f3, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f3, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3ff)
li x11, 0x18eb4018cde92d66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f10, 0(x2) # load 0x00007c00 from memory into f10
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
fadd.h f11, f10, f12, dyn # perform operation
fadd.h f11, f10, f12, rdn # perform operation
fadd.h f11, f10, f12, rmm # perform operation
fadd.h f11, f10, f12, rne # perform operation
fadd.h f11, f10, f12, rtz # perform operation
fadd.h f11, f10, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f10, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f10, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f10, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f10, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f10, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x83ff)
li x26, 0x265b7bdd2df5b3df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f25, 0(x2) # load 0x00007c00 from memory into f25
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f5, 0(x2) # load 0x000083ff from memory into f5
fadd.h f26, f25, f5, dyn # perform operation
fadd.h f26, f25, f5, rdn # perform operation
fadd.h f26, f25, f5, rmm # perform operation
fadd.h f26, f25, f5, rne # perform operation
fadd.h f26, f25, f5, rtz # perform operation
fadd.h f26, f25, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f25, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f25, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f25, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f25, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f25, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x200)
li x4, 0xc14f6f0afa91c5e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f26, 0(x2) # load 0x00000200 from memory into f26
fadd.h f4, f14, f26, dyn # perform operation
fadd.h f4, f14, f26, rdn # perform operation
fadd.h f4, f14, f26, rmm # perform operation
fadd.h f4, f14, f26, rne # perform operation
fadd.h f4, f14, f26, rtz # perform operation
fadd.h f4, f14, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f14, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f14, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f14, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f14, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f14, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8200)
li x27, 0x65ea5a6adeab668e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f6, 0(x2) # load 0x00008200 from memory into f6
fadd.h f27, f1, f6, dyn # perform operation
fadd.h f27, f1, f6, rdn # perform operation
fadd.h f27, f1, f6, rmm # perform operation
fadd.h f27, f1, f6, rne # perform operation
fadd.h f27, f1, f6, rtz # perform operation
fadd.h f27, f1, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f1, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f1, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f1, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f1, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f1, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x1)
li x17, 0xa3af079038b051e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f30, 0(x2) # load 0x00000001 from memory into f30
fadd.h f17, f7, f30, dyn # perform operation
fadd.h f17, f7, f30, rdn # perform operation
fadd.h f17, f7, f30, rmm # perform operation
fadd.h f17, f7, f30, rne # perform operation
fadd.h f17, f7, f30, rtz # perform operation
fadd.h f17, f7, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f7, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f7, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f7, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f7, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f7, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8001)
li x12, 0xc7b024cacfe03267 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f29, 0(x2) # load 0x00007c00 from memory into f29
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f3, 0(x2) # load 0x00008001 from memory into f3
fadd.h f12, f29, f3, dyn # perform operation
fadd.h f12, f29, f3, rdn # perform operation
fadd.h f12, f29, f3, rmm # perform operation
fadd.h f12, f29, f3, rne # perform operation
fadd.h f12, f29, f3, rtz # perform operation
fadd.h f12, f29, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f29, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f29, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f29, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f29, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f29, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7c00)
li x21, 0x06b504a6fa9fb976 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f15, 0(x2) # load 0x00007c00 from memory into f15
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f18, 0(x2) # load 0x00007c00 from memory into f18
fadd.h f21, f15, f18, dyn # perform operation
fadd.h f21, f15, f18, rdn # perform operation
fadd.h f21, f15, f18, rmm # perform operation
fadd.h f21, f15, f18, rne # perform operation
fadd.h f21, f15, f18, rtz # perform operation
fadd.h f21, f15, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f15, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f15, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f15, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f15, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f15, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfc00)
li x11, 0x786dd3d918ce75a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f31, 0(x2) # load 0x00007c00 from memory into f31
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
fadd.h f11, f31, f5, dyn # perform operation
fadd.h f11, f31, f5, rdn # perform operation
fadd.h f11, f31, f5, rmm # perform operation
fadd.h f11, f31, f5, rne # perform operation
fadd.h f11, f31, f5, rtz # perform operation
fadd.h f11, f31, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f31, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f31, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f31, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f31, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f31, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7e00)
li x14, 0x289cdb447b338f7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f17, 0(x2) # load 0x00007c00 from memory into f17
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f7, 0(x2) # load 0x00007e00 from memory into f7
fadd.h f14, f17, f7, dyn # perform operation
fadd.h f14, f17, f7, rdn # perform operation
fadd.h f14, f17, f7, rmm # perform operation
fadd.h f14, f17, f7, rne # perform operation
fadd.h f14, f17, f7, rtz # perform operation
fadd.h f14, f17, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f17, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f17, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f17, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f17, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f17, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7fff)
li x15, 0xef72714c8d5edc1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
fadd.h f15, f16, f23, dyn # perform operation
fadd.h f15, f16, f23, rdn # perform operation
fadd.h f15, f16, f23, rmm # perform operation
fadd.h f15, f16, f23, rne # perform operation
fadd.h f15, f16, f23, rtz # perform operation
fadd.h f15, f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f16, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7c01)
li x27, 0x236c3c183a19affb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f30, 0(x2) # load 0x00007c00 from memory into f30
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
fadd.h f27, f30, f16, dyn # perform operation
fadd.h f27, f30, f16, rdn # perform operation
fadd.h f27, f30, f16, rmm # perform operation
fadd.h f27, f30, f16, rne # perform operation
fadd.h f27, f30, f16, rtz # perform operation
fadd.h f27, f30, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f30, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f30, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f30, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f30, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f30, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7dff)
li x29, 0x73425098a367e481 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f24, 0(x2) # load 0x00007c00 from memory into f24
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f2, 0(x2) # load 0x00007dff from memory into f2
fadd.h f29, f24, f2, dyn # perform operation
fadd.h f29, f24, f2, rdn # perform operation
fadd.h f29, f24, f2, rmm # perform operation
fadd.h f29, f24, f2, rne # perform operation
fadd.h f29, f24, f2, rtz # perform operation
fadd.h f29, f24, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f24, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f24, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f24, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f24, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f24, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x58b4)
li x31, 0x728ddef1c388b4d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f27, 0(x2) # load 0x00007c00 from memory into f27
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
fadd.h f31, f27, f10, dyn # perform operation
fadd.h f31, f27, f10, rdn # perform operation
fadd.h f31, f27, f10, rmm # perform operation
fadd.h f31, f27, f10, rne # perform operation
fadd.h f31, f27, f10, rtz # perform operation
fadd.h f31, f27, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f27, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f27, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f27, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f27, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f27, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xc93a)
li x10, 0xaf37ec5a574ae987 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f21, 0(x2) # load 0x00007c00 from memory into f21
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f16, 0(x2) # load 0x0000c93a from memory into f16
fadd.h f10, f21, f16, dyn # perform operation
fadd.h f10, f21, f16, rdn # perform operation
fadd.h f10, f21, f16, rmm # perform operation
fadd.h f10, f21, f16, rne # perform operation
fadd.h f10, f21, f16, rtz # perform operation
fadd.h f10, f21, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f21, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f21, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f21, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f21, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f21, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x0)
li x23, 0xd240fa96dbdba169 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f6, 0(x2) # load 0x0000fc00 from memory into f6
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
fadd.h f23, f6, f19, dyn # perform operation
fadd.h f23, f6, f19, rdn # perform operation
fadd.h f23, f6, f19, rmm # perform operation
fadd.h f23, f6, f19, rne # perform operation
fadd.h f23, f6, f19, rtz # perform operation
fadd.h f23, f6, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f6, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f6, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f6, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f6, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f6, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8000)
li x10, 0x1e082b3d319094a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f24, 0(x2) # load 0x0000fc00 from memory into f24
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f27, 0(x2) # load 0x00008000 from memory into f27
fadd.h f10, f24, f27, dyn # perform operation
fadd.h f10, f24, f27, rdn # perform operation
fadd.h f10, f24, f27, rmm # perform operation
fadd.h f10, f24, f27, rne # perform operation
fadd.h f10, f24, f27, rtz # perform operation
fadd.h f10, f24, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f24, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f24, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f24, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f24, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f24, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3c00)
li x1, 0x7f57e5f9bdeccc13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f10, 0(x2) # load 0x0000fc00 from memory into f10
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
fadd.h f1, f10, f16, dyn # perform operation
fadd.h f1, f10, f16, rdn # perform operation
fadd.h f1, f10, f16, rmm # perform operation
fadd.h f1, f10, f16, rne # perform operation
fadd.h f1, f10, f16, rtz # perform operation
fadd.h f1, f10, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f10, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f10, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f10, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f10, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f10, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xbc00)
li x24, 0x0c9cb3943e802135 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f12, 0(x2) # load 0x0000bc00 from memory into f12
fadd.h f24, f28, f12, dyn # perform operation
fadd.h f24, f28, f12, rdn # perform operation
fadd.h f24, f28, f12, rmm # perform operation
fadd.h f24, f28, f12, rne # perform operation
fadd.h f24, f28, f12, rtz # perform operation
fadd.h f24, f28, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f28, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f28, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f28, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f28, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f28, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3e00)
li x28, 0xeaa73f3308ba9f62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f20, 0(x2) # load 0x0000fc00 from memory into f20
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f15, 0(x2) # load 0x00003e00 from memory into f15
fadd.h f28, f20, f15, dyn # perform operation
fadd.h f28, f20, f15, rdn # perform operation
fadd.h f28, f20, f15, rmm # perform operation
fadd.h f28, f20, f15, rne # perform operation
fadd.h f28, f20, f15, rtz # perform operation
fadd.h f28, f20, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f20, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f20, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f20, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f20, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f20, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xbe00)
li x1, 0xb158bb9e6452e0f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f24, 0(x2) # load 0x0000fc00 from memory into f24
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
fadd.h f1, f24, f18, dyn # perform operation
fadd.h f1, f24, f18, rdn # perform operation
fadd.h f1, f24, f18, rmm # perform operation
fadd.h f1, f24, f18, rne # perform operation
fadd.h f1, f24, f18, rtz # perform operation
fadd.h f1, f24, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f24, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f24, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f24, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f24, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f24, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x4000)
li x7, 0xe2d0e9c101bc9fa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
fadd.h f7, f28, f25, dyn # perform operation
fadd.h f7, f28, f25, rdn # perform operation
fadd.h f7, f28, f25, rmm # perform operation
fadd.h f7, f28, f25, rne # perform operation
fadd.h f7, f28, f25, rtz # perform operation
fadd.h f7, f28, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f28, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f28, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f28, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f28, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f28, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xc000)
li x5, 0x200e1b50f48b23a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
fadd.h f5, f26, f3, dyn # perform operation
fadd.h f5, f26, f3, rdn # perform operation
fadd.h f5, f26, f3, rmm # perform operation
fadd.h f5, f26, f3, rne # perform operation
fadd.h f5, f26, f3, rtz # perform operation
fadd.h f5, f26, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f26, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f26, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f26, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f26, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f26, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x400)
li x4, 0xb04e1d1124f4df59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f6, 0(x2) # load 0x00000400 from memory into f6
fadd.h f4, f26, f6, dyn # perform operation
fadd.h f4, f26, f6, rdn # perform operation
fadd.h f4, f26, f6, rmm # perform operation
fadd.h f4, f26, f6, rne # perform operation
fadd.h f4, f26, f6, rtz # perform operation
fadd.h f4, f26, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f26, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f26, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f26, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f26, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f26, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8400)
li x19, 0xed06f39c19fa1fe8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f2, 0(x2) # load 0x0000fc00 from memory into f2
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f31, 0(x2) # load 0x00008400 from memory into f31
fadd.h f19, f2, f31, dyn # perform operation
fadd.h f19, f2, f31, rdn # perform operation
fadd.h f19, f2, f31, rmm # perform operation
fadd.h f19, f2, f31, rne # perform operation
fadd.h f19, f2, f31, rtz # perform operation
fadd.h f19, f2, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f2, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f2, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f2, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f2, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f2, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7bff)
li x14, 0x9f835c953726e71f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f25, 0(x2) # load 0x00007bff from memory into f25
fadd.h f14, f3, f25, dyn # perform operation
fadd.h f14, f3, f25, rdn # perform operation
fadd.h f14, f3, f25, rmm # perform operation
fadd.h f14, f3, f25, rne # perform operation
fadd.h f14, f3, f25, rtz # perform operation
fadd.h f14, f3, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f3, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f3, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f3, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f3, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f3, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfbff)
li x22, 0x2b61568360ff27c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f18, 0(x2) # load 0x0000fc00 from memory into f18
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f25, 0(x2) # load 0x0000fbff from memory into f25
fadd.h f22, f18, f25, dyn # perform operation
fadd.h f22, f18, f25, rdn # perform operation
fadd.h f22, f18, f25, rmm # perform operation
fadd.h f22, f18, f25, rne # perform operation
fadd.h f22, f18, f25, rtz # perform operation
fadd.h f22, f18, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f18, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f18, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f18, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f18, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f18, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3ff)
li x14, 0xf3eed41238ee6944 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f18, 0(x2) # load 0x0000fc00 from memory into f18
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f15, 0(x2) # load 0x000003ff from memory into f15
fadd.h f14, f18, f15, dyn # perform operation
fadd.h f14, f18, f15, rdn # perform operation
fadd.h f14, f18, f15, rmm # perform operation
fadd.h f14, f18, f15, rne # perform operation
fadd.h f14, f18, f15, rtz # perform operation
fadd.h f14, f18, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f18, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f18, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f18, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f18, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f18, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x83ff)
li x12, 0x35e6f30c34819d38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f7, 0(x2) # load 0x000083ff from memory into f7
fadd.h f12, f28, f7, dyn # perform operation
fadd.h f12, f28, f7, rdn # perform operation
fadd.h f12, f28, f7, rmm # perform operation
fadd.h f12, f28, f7, rne # perform operation
fadd.h f12, f28, f7, rtz # perform operation
fadd.h f12, f28, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f28, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f28, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f28, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f28, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f28, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x200)
li x22, 0x75f2562c277a5ff1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f4, 0(x2) # load 0x0000fc00 from memory into f4
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
fadd.h f22, f4, f15, dyn # perform operation
fadd.h f22, f4, f15, rdn # perform operation
fadd.h f22, f4, f15, rmm # perform operation
fadd.h f22, f4, f15, rne # perform operation
fadd.h f22, f4, f15, rtz # perform operation
fadd.h f22, f4, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f4, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f4, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f4, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f4, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f4, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8200)
li x15, 0xc2141fd62a85294e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f4, 0(x2) # load 0x0000fc00 from memory into f4
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
fadd.h f15, f4, f23, dyn # perform operation
fadd.h f15, f4, f23, rdn # perform operation
fadd.h f15, f4, f23, rmm # perform operation
fadd.h f15, f4, f23, rne # perform operation
fadd.h f15, f4, f23, rtz # perform operation
fadd.h f15, f4, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f4, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f4, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f4, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f4, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f4, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x1)
li x2, 0xb54d5d6c1dfdf882 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f5, 0(x2) # load 0x00000001 from memory into f5
fadd.h f2, f28, f5, dyn # perform operation
fadd.h f2, f28, f5, rdn # perform operation
fadd.h f2, f28, f5, rmm # perform operation
fadd.h f2, f28, f5, rne # perform operation
fadd.h f2, f28, f5, rtz # perform operation
fadd.h f2, f28, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f28, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f28, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f28, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f28, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f28, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8001)
li x27, 0xf3919a0bb526d650 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f4, 0(x2) # load 0x00008001 from memory into f4
fadd.h f27, f11, f4, dyn # perform operation
fadd.h f27, f11, f4, rdn # perform operation
fadd.h f27, f11, f4, rmm # perform operation
fadd.h f27, f11, f4, rne # perform operation
fadd.h f27, f11, f4, rtz # perform operation
fadd.h f27, f11, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f11, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f11, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f11, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f11, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f11, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7c00)
li x1, 0x1545738ee0109a66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f16, 0(x2) # load 0x0000fc00 from memory into f16
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f12, 0(x2) # load 0x00007c00 from memory into f12
fadd.h f1, f16, f12, dyn # perform operation
fadd.h f1, f16, f12, rdn # perform operation
fadd.h f1, f16, f12, rmm # perform operation
fadd.h f1, f16, f12, rne # perform operation
fadd.h f1, f16, f12, rtz # perform operation
fadd.h f1, f16, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f16, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f16, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f16, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f16, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f16, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfc00)
li x15, 0x22abcc0c69bda662 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f4, 0(x2) # load 0x0000fc00 from memory into f4
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
fadd.h f15, f4, f22, dyn # perform operation
fadd.h f15, f4, f22, rdn # perform operation
fadd.h f15, f4, f22, rmm # perform operation
fadd.h f15, f4, f22, rne # perform operation
fadd.h f15, f4, f22, rtz # perform operation
fadd.h f15, f4, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f15, f4, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f15, f4, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f15, f4, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f15, f4, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f15, f4, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7e00)
li x19, 0x3342c9c530ab5083 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f18, 0(x2) # load 0x0000fc00 from memory into f18
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f7, 0(x2) # load 0x00007e00 from memory into f7
fadd.h f19, f18, f7, dyn # perform operation
fadd.h f19, f18, f7, rdn # perform operation
fadd.h f19, f18, f7, rmm # perform operation
fadd.h f19, f18, f7, rne # perform operation
fadd.h f19, f18, f7, rtz # perform operation
fadd.h f19, f18, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f18, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f18, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f18, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f18, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f18, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7fff)
li x17, 0x09bb07f8d5a1f80b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f21, 0(x2) # load 0x0000fc00 from memory into f21
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
fadd.h f17, f21, f2, dyn # perform operation
fadd.h f17, f21, f2, rdn # perform operation
fadd.h f17, f21, f2, rmm # perform operation
fadd.h f17, f21, f2, rne # perform operation
fadd.h f17, f21, f2, rtz # perform operation
fadd.h f17, f21, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f21, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f21, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f21, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f21, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f21, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7c01)
li x9, 0xdb09aa5b0f309f35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
fadd.h f9, f31, f13, dyn # perform operation
fadd.h f9, f31, f13, rdn # perform operation
fadd.h f9, f31, f13, rmm # perform operation
fadd.h f9, f31, f13, rne # perform operation
fadd.h f9, f31, f13, rtz # perform operation
fadd.h f9, f31, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f31, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f31, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f31, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f31, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f31, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7dff)
li x7, 0x3c3e8284537bc72a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f16, 0(x2) # load 0x00007dff from memory into f16
fadd.h f7, f14, f16, dyn # perform operation
fadd.h f7, f14, f16, rdn # perform operation
fadd.h f7, f14, f16, rmm # perform operation
fadd.h f7, f14, f16, rne # perform operation
fadd.h f7, f14, f16, rtz # perform operation
fadd.h f7, f14, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f14, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f14, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f14, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f14, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f14, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x58b4)
li x18, 0xa4909628257be557 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f19, 0(x2) # load 0x0000fc00 from memory into f19
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f14, 0(x2) # load 0x000058b4 from memory into f14
fadd.h f18, f19, f14, dyn # perform operation
fadd.h f18, f19, f14, rdn # perform operation
fadd.h f18, f19, f14, rmm # perform operation
fadd.h f18, f19, f14, rne # perform operation
fadd.h f18, f19, f14, rtz # perform operation
fadd.h f18, f19, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f19, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f19, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f19, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f19, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f19, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xc93a)
li x21, 0x5ba56a35f28cc686 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f10, 0(x2) # load 0x0000fc00 from memory into f10
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
fadd.h f21, f10, f6, dyn # perform operation
fadd.h f21, f10, f6, rdn # perform operation
fadd.h f21, f10, f6, rmm # perform operation
fadd.h f21, f10, f6, rne # perform operation
fadd.h f21, f10, f6, rtz # perform operation
fadd.h f21, f10, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f10, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f10, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f10, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f10, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f10, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x0)
li x10, 0x4d74bfba181ab5c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
fadd.h f10, f15, f31, dyn # perform operation
fadd.h f10, f15, f31, rdn # perform operation
fadd.h f10, f15, f31, rmm # perform operation
fadd.h f10, f15, f31, rne # perform operation
fadd.h f10, f15, f31, rtz # perform operation
fadd.h f10, f15, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f15, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f15, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f15, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f15, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f15, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8000)
li x30, 0xad432fd49984c956 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f12, 0(x2) # load 0x00007e00 from memory into f12
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f27, 0(x2) # load 0x00008000 from memory into f27
fadd.h f30, f12, f27, dyn # perform operation
fadd.h f30, f12, f27, rdn # perform operation
fadd.h f30, f12, f27, rmm # perform operation
fadd.h f30, f12, f27, rne # perform operation
fadd.h f30, f12, f27, rtz # perform operation
fadd.h f30, f12, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f12, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f12, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f12, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f12, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f12, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3c00)
li x20, 0xe4085a69f6adedfa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f7, 0(x2) # load 0x00007e00 from memory into f7
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f1, 0(x2) # load 0x00003c00 from memory into f1
fadd.h f20, f7, f1, dyn # perform operation
fadd.h f20, f7, f1, rdn # perform operation
fadd.h f20, f7, f1, rmm # perform operation
fadd.h f20, f7, f1, rne # perform operation
fadd.h f20, f7, f1, rtz # perform operation
fadd.h f20, f7, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f7, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f7, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f7, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f7, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f7, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xbc00)
li x9, 0x21466ede47f617e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f12, 0(x2) # load 0x0000bc00 from memory into f12
fadd.h f9, f10, f12, dyn # perform operation
fadd.h f9, f10, f12, rdn # perform operation
fadd.h f9, f10, f12, rmm # perform operation
fadd.h f9, f10, f12, rne # perform operation
fadd.h f9, f10, f12, rtz # perform operation
fadd.h f9, f10, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f10, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f10, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f10, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f10, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f10, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3e00)
li x25, 0xd354fd3d4501e67a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f17, 0(x2) # load 0x00007e00 from memory into f17
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f14, 0(x2) # load 0x00003e00 from memory into f14
fadd.h f25, f17, f14, dyn # perform operation
fadd.h f25, f17, f14, rdn # perform operation
fadd.h f25, f17, f14, rmm # perform operation
fadd.h f25, f17, f14, rne # perform operation
fadd.h f25, f17, f14, rtz # perform operation
fadd.h f25, f17, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f17, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f17, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f17, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f17, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f17, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xbe00)
li x6, 0xadeeae31dde2cb4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
fadd.h f6, f21, f26, dyn # perform operation
fadd.h f6, f21, f26, rdn # perform operation
fadd.h f6, f21, f26, rmm # perform operation
fadd.h f6, f21, f26, rne # perform operation
fadd.h f6, f21, f26, rtz # perform operation
fadd.h f6, f21, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f21, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f21, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f21, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f21, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f21, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x4000)
li x19, 0x53fc3ec8fe3d059a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f17, 0(x2) # load 0x00007e00 from memory into f17
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f30, 0(x2) # load 0x00004000 from memory into f30
fadd.h f19, f17, f30, dyn # perform operation
fadd.h f19, f17, f30, rdn # perform operation
fadd.h f19, f17, f30, rmm # perform operation
fadd.h f19, f17, f30, rne # perform operation
fadd.h f19, f17, f30, rtz # perform operation
fadd.h f19, f17, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f17, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f17, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f17, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f17, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f17, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xc000)
li x29, 0x71b144a1e57077c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f12, 0(x2) # load 0x00007e00 from memory into f12
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
fadd.h f29, f12, f16, dyn # perform operation
fadd.h f29, f12, f16, rdn # perform operation
fadd.h f29, f12, f16, rmm # perform operation
fadd.h f29, f12, f16, rne # perform operation
fadd.h f29, f12, f16, rtz # perform operation
fadd.h f29, f12, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f12, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f12, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f12, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f12, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f12, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x400)
li x2, 0x76385274d26deae7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f12, 0(x2) # load 0x00007e00 from memory into f12
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
fadd.h f2, f12, f16, dyn # perform operation
fadd.h f2, f12, f16, rdn # perform operation
fadd.h f2, f12, f16, rmm # perform operation
fadd.h f2, f12, f16, rne # perform operation
fadd.h f2, f12, f16, rtz # perform operation
fadd.h f2, f12, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f12, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f12, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f12, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f12, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f12, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8400)
li x9, 0x5c3361ce1b80aff3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
fadd.h f9, f8, f1, dyn # perform operation
fadd.h f9, f8, f1, rdn # perform operation
fadd.h f9, f8, f1, rmm # perform operation
fadd.h f9, f8, f1, rne # perform operation
fadd.h f9, f8, f1, rtz # perform operation
fadd.h f9, f8, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f8, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f8, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f8, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f8, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f8, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7bff)
li x31, 0x74bfebac539e3a3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f24, 0(x2) # load 0x00007e00 from memory into f24
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
fadd.h f31, f24, f2, dyn # perform operation
fadd.h f31, f24, f2, rdn # perform operation
fadd.h f31, f24, f2, rmm # perform operation
fadd.h f31, f24, f2, rne # perform operation
fadd.h f31, f24, f2, rtz # perform operation
fadd.h f31, f24, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f24, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f24, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f24, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f24, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f24, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfbff)
li x17, 0x2fbb893f0bfa45ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f1, 0(x2) # load 0x00007e00 from memory into f1
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
fadd.h f17, f1, f27, dyn # perform operation
fadd.h f17, f1, f27, rdn # perform operation
fadd.h f17, f1, f27, rmm # perform operation
fadd.h f17, f1, f27, rne # perform operation
fadd.h f17, f1, f27, rtz # perform operation
fadd.h f17, f1, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f1, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f1, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f1, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f1, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f1, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3ff)
li x2, 0x1844499fdaed167a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f16, 0(x2) # load 0x000003ff from memory into f16
fadd.h f2, f31, f16, dyn # perform operation
fadd.h f2, f31, f16, rdn # perform operation
fadd.h f2, f31, f16, rmm # perform operation
fadd.h f2, f31, f16, rne # perform operation
fadd.h f2, f31, f16, rtz # perform operation
fadd.h f2, f31, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f31, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f31, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f31, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f31, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f31, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x83ff)
li x31, 0x10879248845c3105 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f25, 0(x2) # load 0x00007e00 from memory into f25
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f30, 0(x2) # load 0x000083ff from memory into f30
fadd.h f31, f25, f30, dyn # perform operation
fadd.h f31, f25, f30, rdn # perform operation
fadd.h f31, f25, f30, rmm # perform operation
fadd.h f31, f25, f30, rne # perform operation
fadd.h f31, f25, f30, rtz # perform operation
fadd.h f31, f25, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f25, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f25, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f25, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f25, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f25, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x200)
li x17, 0xef918889bedcbc6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f28, 0(x2) # load 0x00007e00 from memory into f28
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f23, 0(x2) # load 0x00000200 from memory into f23
fadd.h f17, f28, f23, dyn # perform operation
fadd.h f17, f28, f23, rdn # perform operation
fadd.h f17, f28, f23, rmm # perform operation
fadd.h f17, f28, f23, rne # perform operation
fadd.h f17, f28, f23, rtz # perform operation
fadd.h f17, f28, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f28, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f28, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f28, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f28, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f28, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8200)
li x8, 0x30dd3934764c7815 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f16, 0(x2) # load 0x00007e00 from memory into f16
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f6, 0(x2) # load 0x00008200 from memory into f6
fadd.h f8, f16, f6, dyn # perform operation
fadd.h f8, f16, f6, rdn # perform operation
fadd.h f8, f16, f6, rmm # perform operation
fadd.h f8, f16, f6, rne # perform operation
fadd.h f8, f16, f6, rtz # perform operation
fadd.h f8, f16, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f16, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f16, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f16, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f16, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f16, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x1)
li x17, 0xfa2419991517b0e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f22, 0(x2) # load 0x00000001 from memory into f22
fadd.h f17, f10, f22, dyn # perform operation
fadd.h f17, f10, f22, rdn # perform operation
fadd.h f17, f10, f22, rmm # perform operation
fadd.h f17, f10, f22, rne # perform operation
fadd.h f17, f10, f22, rtz # perform operation
fadd.h f17, f10, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f10, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f10, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f10, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f10, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f10, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8001)
li x8, 0x1b75102adc73bd74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f26, 0(x2) # load 0x00007e00 from memory into f26
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f17, 0(x2) # load 0x00008001 from memory into f17
fadd.h f8, f26, f17, dyn # perform operation
fadd.h f8, f26, f17, rdn # perform operation
fadd.h f8, f26, f17, rmm # perform operation
fadd.h f8, f26, f17, rne # perform operation
fadd.h f8, f26, f17, rtz # perform operation
fadd.h f8, f26, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f26, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f26, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f26, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f26, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f26, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7c00)
li x19, 0x919efdc25ba64b12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f1, 0(x2) # load 0x00007e00 from memory into f1
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f22, 0(x2) # load 0x00007c00 from memory into f22
fadd.h f19, f1, f22, dyn # perform operation
fadd.h f19, f1, f22, rdn # perform operation
fadd.h f19, f1, f22, rmm # perform operation
fadd.h f19, f1, f22, rne # perform operation
fadd.h f19, f1, f22, rtz # perform operation
fadd.h f19, f1, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f1, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f1, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f1, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f1, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f1, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfc00)
li x9, 0x49a5d5065ba50c71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f7, 0(x2) # load 0x0000fc00 from memory into f7
fadd.h f9, f14, f7, dyn # perform operation
fadd.h f9, f14, f7, rdn # perform operation
fadd.h f9, f14, f7, rmm # perform operation
fadd.h f9, f14, f7, rne # perform operation
fadd.h f9, f14, f7, rtz # perform operation
fadd.h f9, f14, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f14, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f14, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f14, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f14, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f14, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7e00)
li x26, 0xd07fa4ab0aa2c6d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f1, 0(x2) # load 0x00007e00 from memory into f1
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f22, 0(x2) # load 0x00007e00 from memory into f22
fadd.h f26, f1, f22, dyn # perform operation
fadd.h f26, f1, f22, rdn # perform operation
fadd.h f26, f1, f22, rmm # perform operation
fadd.h f26, f1, f22, rne # perform operation
fadd.h f26, f1, f22, rtz # perform operation
fadd.h f26, f1, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f1, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f1, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f1, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f1, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f1, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7fff)
li x20, 0x731739bada3aa553 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f23, 0(x2) # load 0x00007e00 from memory into f23
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f13, 0(x2) # load 0x00007fff from memory into f13
fadd.h f20, f23, f13, dyn # perform operation
fadd.h f20, f23, f13, rdn # perform operation
fadd.h f20, f23, f13, rmm # perform operation
fadd.h f20, f23, f13, rne # perform operation
fadd.h f20, f23, f13, rtz # perform operation
fadd.h f20, f23, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f23, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f23, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f23, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f23, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f23, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7c01)
li x9, 0xc8427ba54d415bcc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f20, 0(x2) # load 0x00007e00 from memory into f20
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
fadd.h f9, f20, f28, dyn # perform operation
fadd.h f9, f20, f28, rdn # perform operation
fadd.h f9, f20, f28, rmm # perform operation
fadd.h f9, f20, f28, rne # perform operation
fadd.h f9, f20, f28, rtz # perform operation
fadd.h f9, f20, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f20, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f20, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f20, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f20, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f20, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7dff)
li x17, 0x0b5053bee5a86d96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
fadd.h f17, f3, f7, dyn # perform operation
fadd.h f17, f3, f7, rdn # perform operation
fadd.h f17, f3, f7, rmm # perform operation
fadd.h f17, f3, f7, rne # perform operation
fadd.h f17, f3, f7, rtz # perform operation
fadd.h f17, f3, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f3, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f3, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f3, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f3, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f3, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x58b4)
li x16, 0xdbfea89cbcc040a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f28, 0(x2) # load 0x00007e00 from memory into f28
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
fadd.h f16, f28, f11, dyn # perform operation
fadd.h f16, f28, f11, rdn # perform operation
fadd.h f16, f28, f11, rmm # perform operation
fadd.h f16, f28, f11, rne # perform operation
fadd.h f16, f28, f11, rtz # perform operation
fadd.h f16, f28, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f28, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f28, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f28, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f28, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f28, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xc93a)
li x26, 0xf3b03f581c1904b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f29, 0(x2) # load 0x0000c93a from memory into f29
fadd.h f26, f15, f29, dyn # perform operation
fadd.h f26, f15, f29, rdn # perform operation
fadd.h f26, f15, f29, rmm # perform operation
fadd.h f26, f15, f29, rne # perform operation
fadd.h f26, f15, f29, rtz # perform operation
fadd.h f26, f15, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f15, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f15, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f15, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f15, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f15, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x0)
li x31, 0xb87dd415ae12400a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f9, 0(x2) # load 0x00007fff from memory into f9
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f15, 0(x2) # load 0x00000000 from memory into f15
fadd.h f31, f9, f15, dyn # perform operation
fadd.h f31, f9, f15, rdn # perform operation
fadd.h f31, f9, f15, rmm # perform operation
fadd.h f31, f9, f15, rne # perform operation
fadd.h f31, f9, f15, rtz # perform operation
fadd.h f31, f9, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f9, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f9, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f9, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f9, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f9, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8000)
li x7, 0xd0e1e5d6bdccb0ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f31, 0(x2) # load 0x00007fff from memory into f31
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f17, 0(x2) # load 0x00008000 from memory into f17
fadd.h f7, f31, f17, dyn # perform operation
fadd.h f7, f31, f17, rdn # perform operation
fadd.h f7, f31, f17, rmm # perform operation
fadd.h f7, f31, f17, rne # perform operation
fadd.h f7, f31, f17, rtz # perform operation
fadd.h f7, f31, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f31, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f31, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f31, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f31, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f31, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3c00)
li x30, 0xafa97ec5e909aea7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f21, 0(x2) # load 0x00007fff from memory into f21
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f4, 0(x2) # load 0x00003c00 from memory into f4
fadd.h f30, f21, f4, dyn # perform operation
fadd.h f30, f21, f4, rdn # perform operation
fadd.h f30, f21, f4, rmm # perform operation
fadd.h f30, f21, f4, rne # perform operation
fadd.h f30, f21, f4, rtz # perform operation
fadd.h f30, f21, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f21, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f21, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f21, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f21, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f21, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xbc00)
li x9, 0xc4fc67d0be901631 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
fadd.h f9, f18, f28, dyn # perform operation
fadd.h f9, f18, f28, rdn # perform operation
fadd.h f9, f18, f28, rmm # perform operation
fadd.h f9, f18, f28, rne # perform operation
fadd.h f9, f18, f28, rtz # perform operation
fadd.h f9, f18, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f18, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f18, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f18, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f18, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f18, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3e00)
li x3, 0xb77c7a1da52d040e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
fadd.h f3, f8, f29, dyn # perform operation
fadd.h f3, f8, f29, rdn # perform operation
fadd.h f3, f8, f29, rmm # perform operation
fadd.h f3, f8, f29, rne # perform operation
fadd.h f3, f8, f29, rtz # perform operation
fadd.h f3, f8, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f8, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f8, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f8, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f8, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f8, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xbe00)
li x19, 0xa9be984f3e4514f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f9, 0(x2) # load 0x00007fff from memory into f9
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f6, 0(x2) # load 0x0000be00 from memory into f6
fadd.h f19, f9, f6, dyn # perform operation
fadd.h f19, f9, f6, rdn # perform operation
fadd.h f19, f9, f6, rmm # perform operation
fadd.h f19, f9, f6, rne # perform operation
fadd.h f19, f9, f6, rtz # perform operation
fadd.h f19, f9, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f9, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f9, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f9, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f9, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f9, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x4000)
li x17, 0x8f4d143b42bf398d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
fadd.h f17, f6, f23, dyn # perform operation
fadd.h f17, f6, f23, rdn # perform operation
fadd.h f17, f6, f23, rmm # perform operation
fadd.h f17, f6, f23, rne # perform operation
fadd.h f17, f6, f23, rtz # perform operation
fadd.h f17, f6, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f6, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f6, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f6, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f6, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f6, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xc000)
li x13, 0xbec8cb99faa6289b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f1, 0(x2) # load 0x00007fff from memory into f1
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
fadd.h f13, f1, f25, dyn # perform operation
fadd.h f13, f1, f25, rdn # perform operation
fadd.h f13, f1, f25, rmm # perform operation
fadd.h f13, f1, f25, rne # perform operation
fadd.h f13, f1, f25, rtz # perform operation
fadd.h f13, f1, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f1, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f1, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f1, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f1, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f1, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x400)
li x3, 0x0f93149b96157035 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f1, 0(x2) # load 0x00000400 from memory into f1
fadd.h f3, f23, f1, dyn # perform operation
fadd.h f3, f23, f1, rdn # perform operation
fadd.h f3, f23, f1, rmm # perform operation
fadd.h f3, f23, f1, rne # perform operation
fadd.h f3, f23, f1, rtz # perform operation
fadd.h f3, f23, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f23, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f23, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f23, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f23, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f23, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8400)
li x6, 0x31ffc91fc98d7a0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f16, 0(x2) # load 0x00007fff from memory into f16
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f23, 0(x2) # load 0x00008400 from memory into f23
fadd.h f6, f16, f23, dyn # perform operation
fadd.h f6, f16, f23, rdn # perform operation
fadd.h f6, f16, f23, rmm # perform operation
fadd.h f6, f16, f23, rne # perform operation
fadd.h f6, f16, f23, rtz # perform operation
fadd.h f6, f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f16, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7bff)
li x16, 0xc83e64ae944a42be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f15, 0(x2) # load 0x00007fff from memory into f15
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f20, 0(x2) # load 0x00007bff from memory into f20
fadd.h f16, f15, f20, dyn # perform operation
fadd.h f16, f15, f20, rdn # perform operation
fadd.h f16, f15, f20, rmm # perform operation
fadd.h f16, f15, f20, rne # perform operation
fadd.h f16, f15, f20, rtz # perform operation
fadd.h f16, f15, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f15, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f15, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f15, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f15, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f15, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfbff)
li x10, 0xeefe2649c6b73da5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f19, 0(x2) # load 0x00007fff from memory into f19
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f5, 0(x2) # load 0x0000fbff from memory into f5
fadd.h f10, f19, f5, dyn # perform operation
fadd.h f10, f19, f5, rdn # perform operation
fadd.h f10, f19, f5, rmm # perform operation
fadd.h f10, f19, f5, rne # perform operation
fadd.h f10, f19, f5, rtz # perform operation
fadd.h f10, f19, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f19, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f19, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f19, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f19, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f19, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3ff)
li x24, 0x00730c1356f61f41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f14, 0(x2) # load 0x00007fff from memory into f14
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f4, 0(x2) # load 0x000003ff from memory into f4
fadd.h f24, f14, f4, dyn # perform operation
fadd.h f24, f14, f4, rdn # perform operation
fadd.h f24, f14, f4, rmm # perform operation
fadd.h f24, f14, f4, rne # perform operation
fadd.h f24, f14, f4, rtz # perform operation
fadd.h f24, f14, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f14, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f14, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f14, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f14, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f14, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x83ff)
li x30, 0x5e086196214ca642 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f21, 0(x2) # load 0x00007fff from memory into f21
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
fadd.h f30, f21, f18, dyn # perform operation
fadd.h f30, f21, f18, rdn # perform operation
fadd.h f30, f21, f18, rmm # perform operation
fadd.h f30, f21, f18, rne # perform operation
fadd.h f30, f21, f18, rtz # perform operation
fadd.h f30, f21, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f21, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f21, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f21, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f21, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f21, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x200)
li x4, 0x931eb66a3d18eaec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f21, 0(x2) # load 0x00000200 from memory into f21
fadd.h f4, f27, f21, dyn # perform operation
fadd.h f4, f27, f21, rdn # perform operation
fadd.h f4, f27, f21, rmm # perform operation
fadd.h f4, f27, f21, rne # perform operation
fadd.h f4, f27, f21, rtz # perform operation
fadd.h f4, f27, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f27, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f27, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f27, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f27, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f27, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8200)
li x13, 0x24361ad29b9f6014 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f18, 0(x2) # load 0x00008200 from memory into f18
fadd.h f13, f6, f18, dyn # perform operation
fadd.h f13, f6, f18, rdn # perform operation
fadd.h f13, f6, f18, rmm # perform operation
fadd.h f13, f6, f18, rne # perform operation
fadd.h f13, f6, f18, rtz # perform operation
fadd.h f13, f6, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f6, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f6, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f6, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f6, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f6, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x1)
li x21, 0xc773e665909a2f52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f3, 0(x2) # load 0x00000001 from memory into f3
fadd.h f21, f18, f3, dyn # perform operation
fadd.h f21, f18, f3, rdn # perform operation
fadd.h f21, f18, f3, rmm # perform operation
fadd.h f21, f18, f3, rne # perform operation
fadd.h f21, f18, f3, rtz # perform operation
fadd.h f21, f18, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f18, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f18, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f18, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f18, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f18, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8001)
li x26, 0x2017b6382a925cd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f18, 0(x2) # load 0x00008001 from memory into f18
fadd.h f26, f25, f18, dyn # perform operation
fadd.h f26, f25, f18, rdn # perform operation
fadd.h f26, f25, f18, rmm # perform operation
fadd.h f26, f25, f18, rne # perform operation
fadd.h f26, f25, f18, rtz # perform operation
fadd.h f26, f25, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f25, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f25, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f25, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f25, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f25, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7c00)
li x7, 0xb9605250a2ec38b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f26, 0(x2) # load 0x00007fff from memory into f26
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f20, 0(x2) # load 0x00007c00 from memory into f20
fadd.h f7, f26, f20, dyn # perform operation
fadd.h f7, f26, f20, rdn # perform operation
fadd.h f7, f26, f20, rmm # perform operation
fadd.h f7, f26, f20, rne # perform operation
fadd.h f7, f26, f20, rtz # perform operation
fadd.h f7, f26, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f26, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f26, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f26, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f26, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f26, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfc00)
li x3, 0x35d43b29c4750b37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f26, 0(x2) # load 0x00007fff from memory into f26
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f6, 0(x2) # load 0x0000fc00 from memory into f6
fadd.h f3, f26, f6, dyn # perform operation
fadd.h f3, f26, f6, rdn # perform operation
fadd.h f3, f26, f6, rmm # perform operation
fadd.h f3, f26, f6, rne # perform operation
fadd.h f3, f26, f6, rtz # perform operation
fadd.h f3, f26, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f26, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f26, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f26, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f26, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f26, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7e00)
li x27, 0x2daef1c9c0d58b2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f18, 0(x2) # load 0x00007e00 from memory into f18
fadd.h f27, f6, f18, dyn # perform operation
fadd.h f27, f6, f18, rdn # perform operation
fadd.h f27, f6, f18, rmm # perform operation
fadd.h f27, f6, f18, rne # perform operation
fadd.h f27, f6, f18, rtz # perform operation
fadd.h f27, f6, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f6, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f6, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f6, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f6, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f6, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7fff)
li x28, 0x65bdcefefea317df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f3, 0(x2) # load 0x00007fff from memory into f3
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f13, 0(x2) # load 0x00007fff from memory into f13
fadd.h f28, f3, f13, dyn # perform operation
fadd.h f28, f3, f13, rdn # perform operation
fadd.h f28, f3, f13, rmm # perform operation
fadd.h f28, f3, f13, rne # perform operation
fadd.h f28, f3, f13, rtz # perform operation
fadd.h f28, f3, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f3, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f3, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f3, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f3, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f3, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7c01)
li x3, 0x275b045507ea585a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f23, 0(x2) # load 0x00007c01 from memory into f23
fadd.h f3, f2, f23, dyn # perform operation
fadd.h f3, f2, f23, rdn # perform operation
fadd.h f3, f2, f23, rmm # perform operation
fadd.h f3, f2, f23, rne # perform operation
fadd.h f3, f2, f23, rtz # perform operation
fadd.h f3, f2, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f2, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f2, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f2, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f2, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f2, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7dff)
li x18, 0x2a05622209c9feef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f9, 0(x2) # load 0x00007fff from memory into f9
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f12, 0(x2) # load 0x00007dff from memory into f12
fadd.h f18, f9, f12, dyn # perform operation
fadd.h f18, f9, f12, rdn # perform operation
fadd.h f18, f9, f12, rmm # perform operation
fadd.h f18, f9, f12, rne # perform operation
fadd.h f18, f9, f12, rtz # perform operation
fadd.h f18, f9, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f9, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f9, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f9, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f9, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f9, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x58b4)
li x19, 0x6a1a145fdbd6681e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
fadd.h f19, f6, f11, dyn # perform operation
fadd.h f19, f6, f11, rdn # perform operation
fadd.h f19, f6, f11, rmm # perform operation
fadd.h f19, f6, f11, rne # perform operation
fadd.h f19, f6, f11, rtz # perform operation
fadd.h f19, f6, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f6, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f6, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f6, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f6, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f6, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xc93a)
li x11, 0x9276fd53c006ff7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f7, 0(x2) # load 0x00007fff from memory into f7
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
fadd.h f11, f7, f22, dyn # perform operation
fadd.h f11, f7, f22, rdn # perform operation
fadd.h f11, f7, f22, rmm # perform operation
fadd.h f11, f7, f22, rne # perform operation
fadd.h f11, f7, f22, rtz # perform operation
fadd.h f11, f7, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f7, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f7, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f7, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f7, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f7, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x0)
li x16, 0x60b54ab11fea9aab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f7, 0(x2) # load 0x00007c01 from memory into f7
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f23, 0(x2) # load 0x00000000 from memory into f23
fadd.h f16, f7, f23, dyn # perform operation
fadd.h f16, f7, f23, rdn # perform operation
fadd.h f16, f7, f23, rmm # perform operation
fadd.h f16, f7, f23, rne # perform operation
fadd.h f16, f7, f23, rtz # perform operation
fadd.h f16, f7, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f7, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f7, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f7, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f7, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f7, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8000)
li x19, 0x1358fe3ae98b71f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f4, 0(x2) # load 0x00008000 from memory into f4
fadd.h f19, f25, f4, dyn # perform operation
fadd.h f19, f25, f4, rdn # perform operation
fadd.h f19, f25, f4, rmm # perform operation
fadd.h f19, f25, f4, rne # perform operation
fadd.h f19, f25, f4, rtz # perform operation
fadd.h f19, f25, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f25, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f25, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f25, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f25, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f25, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3c00)
li x2, 0x5e617c78bd26d066 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f5, 0(x2) # load 0x00007c01 from memory into f5
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
fadd.h f2, f5, f21, dyn # perform operation
fadd.h f2, f5, f21, rdn # perform operation
fadd.h f2, f5, f21, rmm # perform operation
fadd.h f2, f5, f21, rne # perform operation
fadd.h f2, f5, f21, rtz # perform operation
fadd.h f2, f5, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f5, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f5, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f5, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f5, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f5, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xbc00)
li x19, 0xcf5eb41c7d379f5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f18, 0(x2) # load 0x00007c01 from memory into f18
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
fadd.h f19, f18, f21, dyn # perform operation
fadd.h f19, f18, f21, rdn # perform operation
fadd.h f19, f18, f21, rmm # perform operation
fadd.h f19, f18, f21, rne # perform operation
fadd.h f19, f18, f21, rtz # perform operation
fadd.h f19, f18, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f18, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f18, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f18, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f18, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f18, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3e00)
li x31, 0xdfe72b0d67f9927e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f4, 0(x2) # load 0x00003e00 from memory into f4
fadd.h f31, f16, f4, dyn # perform operation
fadd.h f31, f16, f4, rdn # perform operation
fadd.h f31, f16, f4, rmm # perform operation
fadd.h f31, f16, f4, rne # perform operation
fadd.h f31, f16, f4, rtz # perform operation
fadd.h f31, f16, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f16, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f16, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f16, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f16, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f16, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xbe00)
li x18, 0x476635c4e78793ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f22, 0(x2) # load 0x0000be00 from memory into f22
fadd.h f18, f9, f22, dyn # perform operation
fadd.h f18, f9, f22, rdn # perform operation
fadd.h f18, f9, f22, rmm # perform operation
fadd.h f18, f9, f22, rne # perform operation
fadd.h f18, f9, f22, rtz # perform operation
fadd.h f18, f9, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f9, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f9, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f9, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f9, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f9, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x4000)
li x18, 0x6b45a11d6533842e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
fadd.h f18, f6, f2, dyn # perform operation
fadd.h f18, f6, f2, rdn # perform operation
fadd.h f18, f6, f2, rmm # perform operation
fadd.h f18, f6, f2, rne # perform operation
fadd.h f18, f6, f2, rtz # perform operation
fadd.h f18, f6, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f6, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f6, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f6, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f6, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f6, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xc000)
li x7, 0xf3339f3cc1b942da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f22, 0(x2) # load 0x00007c01 from memory into f22
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
fadd.h f7, f22, f17, dyn # perform operation
fadd.h f7, f22, f17, rdn # perform operation
fadd.h f7, f22, f17, rmm # perform operation
fadd.h f7, f22, f17, rne # perform operation
fadd.h f7, f22, f17, rtz # perform operation
fadd.h f7, f22, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f22, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f22, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f22, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f22, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f22, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x400)
li x17, 0x726b7162e928b9b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f10, 0(x2) # load 0x00000400 from memory into f10
fadd.h f17, f13, f10, dyn # perform operation
fadd.h f17, f13, f10, rdn # perform operation
fadd.h f17, f13, f10, rmm # perform operation
fadd.h f17, f13, f10, rne # perform operation
fadd.h f17, f13, f10, rtz # perform operation
fadd.h f17, f13, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f13, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f13, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f13, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f13, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f13, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8400)
li x6, 0xea1715eecd94bf72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f24, 0(x2) # load 0x00007c01 from memory into f24
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f19, 0(x2) # load 0x00008400 from memory into f19
fadd.h f6, f24, f19, dyn # perform operation
fadd.h f6, f24, f19, rdn # perform operation
fadd.h f6, f24, f19, rmm # perform operation
fadd.h f6, f24, f19, rne # perform operation
fadd.h f6, f24, f19, rtz # perform operation
fadd.h f6, f24, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f24, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f24, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f24, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f24, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f24, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7bff)
li x7, 0xebbd63b777998f5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f19, 0(x2) # load 0x00007c01 from memory into f19
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
fadd.h f7, f19, f30, dyn # perform operation
fadd.h f7, f19, f30, rdn # perform operation
fadd.h f7, f19, f30, rmm # perform operation
fadd.h f7, f19, f30, rne # perform operation
fadd.h f7, f19, f30, rtz # perform operation
fadd.h f7, f19, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f19, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f19, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f19, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f19, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f19, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfbff)
li x10, 0xd7c10c4fcb3b2d61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f22, 0(x2) # load 0x00007c01 from memory into f22
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f1, 0(x2) # load 0x0000fbff from memory into f1
fadd.h f10, f22, f1, dyn # perform operation
fadd.h f10, f22, f1, rdn # perform operation
fadd.h f10, f22, f1, rmm # perform operation
fadd.h f10, f22, f1, rne # perform operation
fadd.h f10, f22, f1, rtz # perform operation
fadd.h f10, f22, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f22, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f22, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f22, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f22, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f22, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3ff)
li x30, 0x55f8f94a1634c0a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f27, 0(x2) # load 0x00007c01 from memory into f27
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f9, 0(x2) # load 0x000003ff from memory into f9
fadd.h f30, f27, f9, dyn # perform operation
fadd.h f30, f27, f9, rdn # perform operation
fadd.h f30, f27, f9, rmm # perform operation
fadd.h f30, f27, f9, rne # perform operation
fadd.h f30, f27, f9, rtz # perform operation
fadd.h f30, f27, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f27, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f27, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f27, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f27, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f27, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x83ff)
li x17, 0xedef028e597a6df7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
fadd.h f17, f16, f22, dyn # perform operation
fadd.h f17, f16, f22, rdn # perform operation
fadd.h f17, f16, f22, rmm # perform operation
fadd.h f17, f16, f22, rne # perform operation
fadd.h f17, f16, f22, rtz # perform operation
fadd.h f17, f16, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f16, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f16, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f16, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f16, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f16, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x200)
li x13, 0x61d4d3d3a07096f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f2, 0(x2) # load 0x00007c01 from memory into f2
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
fadd.h f13, f2, f9, dyn # perform operation
fadd.h f13, f2, f9, rdn # perform operation
fadd.h f13, f2, f9, rmm # perform operation
fadd.h f13, f2, f9, rne # perform operation
fadd.h f13, f2, f9, rtz # perform operation
fadd.h f13, f2, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f2, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f2, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f2, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f2, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f2, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8200)
li x28, 0x9fdc492e59ed4944 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f8, 0(x2) # load 0x00007c01 from memory into f8
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
fadd.h f28, f8, f15, dyn # perform operation
fadd.h f28, f8, f15, rdn # perform operation
fadd.h f28, f8, f15, rmm # perform operation
fadd.h f28, f8, f15, rne # perform operation
fadd.h f28, f8, f15, rtz # perform operation
fadd.h f28, f8, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f8, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f8, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f8, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f8, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f8, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x1)
li x24, 0x23bc45baab065d77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f11, 0(x2) # load 0x00007c01 from memory into f11
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f8, 0(x2) # load 0x00000001 from memory into f8
fadd.h f24, f11, f8, dyn # perform operation
fadd.h f24, f11, f8, rdn # perform operation
fadd.h f24, f11, f8, rmm # perform operation
fadd.h f24, f11, f8, rne # perform operation
fadd.h f24, f11, f8, rtz # perform operation
fadd.h f24, f11, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f11, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f11, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f11, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f11, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f11, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8001)
li x3, 0xa70a4ccc28157f27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f1, 0(x2) # load 0x00008001 from memory into f1
fadd.h f3, f16, f1, dyn # perform operation
fadd.h f3, f16, f1, rdn # perform operation
fadd.h f3, f16, f1, rmm # perform operation
fadd.h f3, f16, f1, rne # perform operation
fadd.h f3, f16, f1, rtz # perform operation
fadd.h f3, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f16, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7c00)
li x4, 0x29bb9f10d31bfe1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f11, 0(x2) # load 0x00007c01 from memory into f11
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f23, 0(x2) # load 0x00007c00 from memory into f23
fadd.h f4, f11, f23, dyn # perform operation
fadd.h f4, f11, f23, rdn # perform operation
fadd.h f4, f11, f23, rmm # perform operation
fadd.h f4, f11, f23, rne # perform operation
fadd.h f4, f11, f23, rtz # perform operation
fadd.h f4, f11, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f11, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f11, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f11, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f11, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f11, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfc00)
li x20, 0xfe336925c1b74a3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f4, 0(x2) # load 0x00007c01 from memory into f4
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f15, 0(x2) # load 0x0000fc00 from memory into f15
fadd.h f20, f4, f15, dyn # perform operation
fadd.h f20, f4, f15, rdn # perform operation
fadd.h f20, f4, f15, rmm # perform operation
fadd.h f20, f4, f15, rne # perform operation
fadd.h f20, f4, f15, rtz # perform operation
fadd.h f20, f4, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f4, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f4, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f4, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f4, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f4, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7e00)
li x4, 0x80372173388bbaa9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f28, 0(x2) # load 0x00007e00 from memory into f28
fadd.h f4, f25, f28, dyn # perform operation
fadd.h f4, f25, f28, rdn # perform operation
fadd.h f4, f25, f28, rmm # perform operation
fadd.h f4, f25, f28, rne # perform operation
fadd.h f4, f25, f28, rtz # perform operation
fadd.h f4, f25, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f25, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f25, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f25, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f25, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f25, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7fff)
li x3, 0xdfec3754651d29c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f4, 0(x2) # load 0x00007c01 from memory into f4
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f1, 0(x2) # load 0x00007fff from memory into f1
fadd.h f3, f4, f1, dyn # perform operation
fadd.h f3, f4, f1, rdn # perform operation
fadd.h f3, f4, f1, rmm # perform operation
fadd.h f3, f4, f1, rne # perform operation
fadd.h f3, f4, f1, rtz # perform operation
fadd.h f3, f4, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f4, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f4, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f4, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f4, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f4, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7c01)
li x29, 0x180a64ed26c641e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f11, 0(x2) # load 0x00007c01 from memory into f11
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
fadd.h f29, f11, f25, dyn # perform operation
fadd.h f29, f11, f25, rdn # perform operation
fadd.h f29, f11, f25, rmm # perform operation
fadd.h f29, f11, f25, rne # perform operation
fadd.h f29, f11, f25, rtz # perform operation
fadd.h f29, f11, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f11, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f11, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f11, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f11, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f11, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7dff)
li x31, 0x7932327013824cc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f13, 0(x2) # load 0x00007dff from memory into f13
fadd.h f31, f9, f13, dyn # perform operation
fadd.h f31, f9, f13, rdn # perform operation
fadd.h f31, f9, f13, rmm # perform operation
fadd.h f31, f9, f13, rne # perform operation
fadd.h f31, f9, f13, rtz # perform operation
fadd.h f31, f9, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f9, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f9, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f9, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f9, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f9, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x58b4)
li x19, 0xcdc9d52e7a1023d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f22, 0(x2) # load 0x00007c01 from memory into f22
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
fadd.h f19, f22, f10, dyn # perform operation
fadd.h f19, f22, f10, rdn # perform operation
fadd.h f19, f22, f10, rmm # perform operation
fadd.h f19, f22, f10, rne # perform operation
fadd.h f19, f22, f10, rtz # perform operation
fadd.h f19, f22, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f22, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f22, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f22, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f22, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f22, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xc93a)
li x18, 0x5467d479ce1a1ef1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f15, 0(x2) # load 0x00007c01 from memory into f15
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
fadd.h f18, f15, f7, dyn # perform operation
fadd.h f18, f15, f7, rdn # perform operation
fadd.h f18, f15, f7, rmm # perform operation
fadd.h f18, f15, f7, rne # perform operation
fadd.h f18, f15, f7, rtz # perform operation
fadd.h f18, f15, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f15, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f15, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f15, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f15, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f15, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x0)
li x16, 0xdcff76ba6e0d602f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f1, 0(x2) # load 0x00007dff from memory into f1
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
fadd.h f16, f1, f29, dyn # perform operation
fadd.h f16, f1, f29, rdn # perform operation
fadd.h f16, f1, f29, rmm # perform operation
fadd.h f16, f1, f29, rne # perform operation
fadd.h f16, f1, f29, rtz # perform operation
fadd.h f16, f1, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f1, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f1, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f1, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f1, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f1, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8000)
li x20, 0x0c1ac26eb8cb278a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
fadd.h f20, f30, f10, dyn # perform operation
fadd.h f20, f30, f10, rdn # perform operation
fadd.h f20, f30, f10, rmm # perform operation
fadd.h f20, f30, f10, rne # perform operation
fadd.h f20, f30, f10, rtz # perform operation
fadd.h f20, f30, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f20, f30, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f20, f30, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f20, f30, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f20, f30, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f20, f30, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3c00)
li x3, 0x0684ccca5626f349 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f10, 0(x2) # load 0x00007dff from memory into f10
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f8, 0(x2) # load 0x00003c00 from memory into f8
fadd.h f3, f10, f8, dyn # perform operation
fadd.h f3, f10, f8, rdn # perform operation
fadd.h f3, f10, f8, rmm # perform operation
fadd.h f3, f10, f8, rne # perform operation
fadd.h f3, f10, f8, rtz # perform operation
fadd.h f3, f10, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f10, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f10, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f10, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f10, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f10, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xbc00)
li x22, 0xcefdb0e52765e4a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f13, 0(x2) # load 0x00007dff from memory into f13
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f30, 0(x2) # load 0x0000bc00 from memory into f30
fadd.h f22, f13, f30, dyn # perform operation
fadd.h f22, f13, f30, rdn # perform operation
fadd.h f22, f13, f30, rmm # perform operation
fadd.h f22, f13, f30, rne # perform operation
fadd.h f22, f13, f30, rtz # perform operation
fadd.h f22, f13, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f13, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f13, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f13, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f13, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f13, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3e00)
li x28, 0x24ef6471f42c047d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f4, 0(x2) # load 0x00007dff from memory into f4
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f3, 0(x2) # load 0x00003e00 from memory into f3
fadd.h f28, f4, f3, dyn # perform operation
fadd.h f28, f4, f3, rdn # perform operation
fadd.h f28, f4, f3, rmm # perform operation
fadd.h f28, f4, f3, rne # perform operation
fadd.h f28, f4, f3, rtz # perform operation
fadd.h f28, f4, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f4, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f4, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f4, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f4, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f4, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xbe00)
li x4, 0x6738667b7222aecb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f1, 0(x2) # load 0x00007dff from memory into f1
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
fadd.h f4, f1, f5, dyn # perform operation
fadd.h f4, f1, f5, rdn # perform operation
fadd.h f4, f1, f5, rmm # perform operation
fadd.h f4, f1, f5, rne # perform operation
fadd.h f4, f1, f5, rtz # perform operation
fadd.h f4, f1, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f4, f1, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f4, f1, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f4, f1, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f4, f1, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f4, f1, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x4000)
li x22, 0x5d3b83bf163b6335 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f24, 0(x2) # load 0x00004000 from memory into f24
fadd.h f22, f21, f24, dyn # perform operation
fadd.h f22, f21, f24, rdn # perform operation
fadd.h f22, f21, f24, rmm # perform operation
fadd.h f22, f21, f24, rne # perform operation
fadd.h f22, f21, f24, rtz # perform operation
fadd.h f22, f21, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f21, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f21, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f21, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f21, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f21, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xc000)
li x27, 0xcb101f655f4a3b92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f25, 0(x2) # load 0x00007dff from memory into f25
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f2, 0(x2) # load 0x0000c000 from memory into f2
fadd.h f27, f25, f2, dyn # perform operation
fadd.h f27, f25, f2, rdn # perform operation
fadd.h f27, f25, f2, rmm # perform operation
fadd.h f27, f25, f2, rne # perform operation
fadd.h f27, f25, f2, rtz # perform operation
fadd.h f27, f25, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f25, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f25, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f25, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f25, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f25, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x400)
li x26, 0xde0c5757f9e28f0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f6, 0(x2) # load 0x00007dff from memory into f6
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
fadd.h f26, f6, f7, dyn # perform operation
fadd.h f26, f6, f7, rdn # perform operation
fadd.h f26, f6, f7, rmm # perform operation
fadd.h f26, f6, f7, rne # perform operation
fadd.h f26, f6, f7, rtz # perform operation
fadd.h f26, f6, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f6, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f6, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f6, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f6, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f6, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8400)
li x3, 0x274e2e0d773dbd92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f8, 0(x2) # load 0x00007dff from memory into f8
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f12, 0(x2) # load 0x00008400 from memory into f12
fadd.h f3, f8, f12, dyn # perform operation
fadd.h f3, f8, f12, rdn # perform operation
fadd.h f3, f8, f12, rmm # perform operation
fadd.h f3, f8, f12, rne # perform operation
fadd.h f3, f8, f12, rtz # perform operation
fadd.h f3, f8, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f8, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f8, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f8, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f8, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f8, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7bff)
li x6, 0xab6bd5c4508a490e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
fadd.h f6, f23, f12, dyn # perform operation
fadd.h f6, f23, f12, rdn # perform operation
fadd.h f6, f23, f12, rmm # perform operation
fadd.h f6, f23, f12, rne # perform operation
fadd.h f6, f23, f12, rtz # perform operation
fadd.h f6, f23, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f23, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f23, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f23, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f23, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f23, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfbff)
li x19, 0xf3f5c5d6337eba00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
fadd.h f19, f7, f14, dyn # perform operation
fadd.h f19, f7, f14, rdn # perform operation
fadd.h f19, f7, f14, rmm # perform operation
fadd.h f19, f7, f14, rne # perform operation
fadd.h f19, f7, f14, rtz # perform operation
fadd.h f19, f7, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f7, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f7, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f7, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f7, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f7, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3ff)
li x11, 0x4c5963eae2437e47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f26, 0(x2) # load 0x00007dff from memory into f26
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
fadd.h f11, f26, f17, dyn # perform operation
fadd.h f11, f26, f17, rdn # perform operation
fadd.h f11, f26, f17, rmm # perform operation
fadd.h f11, f26, f17, rne # perform operation
fadd.h f11, f26, f17, rtz # perform operation
fadd.h f11, f26, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f26, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f26, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f26, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f26, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f26, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x83ff)
li x18, 0x4d0f507e80d25890 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f26, 0(x2) # load 0x000083ff from memory into f26
fadd.h f18, f5, f26, dyn # perform operation
fadd.h f18, f5, f26, rdn # perform operation
fadd.h f18, f5, f26, rmm # perform operation
fadd.h f18, f5, f26, rne # perform operation
fadd.h f18, f5, f26, rtz # perform operation
fadd.h f18, f5, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f5, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f5, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f5, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f5, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f5, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x200)
li x21, 0x8adc7041d11d7e81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
fadd.h f21, f20, f3, dyn # perform operation
fadd.h f21, f20, f3, rdn # perform operation
fadd.h f21, f20, f3, rmm # perform operation
fadd.h f21, f20, f3, rne # perform operation
fadd.h f21, f20, f3, rtz # perform operation
fadd.h f21, f20, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f20, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f20, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f20, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f20, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f20, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8200)
li x29, 0x747acb97d029c912 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
fadd.h f29, f5, f23, dyn # perform operation
fadd.h f29, f5, f23, rdn # perform operation
fadd.h f29, f5, f23, rmm # perform operation
fadd.h f29, f5, f23, rne # perform operation
fadd.h f29, f5, f23, rtz # perform operation
fadd.h f29, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f5, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x1)
li x19, 0xce88d8f023813011 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f28, 0(x2) # load 0x00007dff from memory into f28
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
fadd.h f19, f28, f20, dyn # perform operation
fadd.h f19, f28, f20, rdn # perform operation
fadd.h f19, f28, f20, rmm # perform operation
fadd.h f19, f28, f20, rne # perform operation
fadd.h f19, f28, f20, rtz # perform operation
fadd.h f19, f28, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f19, f28, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f19, f28, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f19, f28, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f19, f28, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f19, f28, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8001)
li x23, 0x5821ed9ca965d764 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f10, 0(x2) # load 0x00007dff from memory into f10
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f22, 0(x2) # load 0x00008001 from memory into f22
fadd.h f23, f10, f22, dyn # perform operation
fadd.h f23, f10, f22, rdn # perform operation
fadd.h f23, f10, f22, rmm # perform operation
fadd.h f23, f10, f22, rne # perform operation
fadd.h f23, f10, f22, rtz # perform operation
fadd.h f23, f10, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f10, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f10, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f10, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f10, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f10, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7c00)
li x23, 0xb0bb7b7e3a6b2ca9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f28, 0(x2) # load 0x00007dff from memory into f28
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f3, 0(x2) # load 0x00007c00 from memory into f3
fadd.h f23, f28, f3, dyn # perform operation
fadd.h f23, f28, f3, rdn # perform operation
fadd.h f23, f28, f3, rmm # perform operation
fadd.h f23, f28, f3, rne # perform operation
fadd.h f23, f28, f3, rtz # perform operation
fadd.h f23, f28, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f23, f28, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f23, f28, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f23, f28, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f23, f28, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f23, f28, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfc00)
li x10, 0x32609c4e57589021 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f26, 0(x2) # load 0x00007dff from memory into f26
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f4, 0(x2) # load 0x0000fc00 from memory into f4
fadd.h f10, f26, f4, dyn # perform operation
fadd.h f10, f26, f4, rdn # perform operation
fadd.h f10, f26, f4, rmm # perform operation
fadd.h f10, f26, f4, rne # perform operation
fadd.h f10, f26, f4, rtz # perform operation
fadd.h f10, f26, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f26, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f26, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f26, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f26, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f26, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7e00)
li x24, 0xdcbc7822279b80fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f8, 0(x2) # load 0x00007dff from memory into f8
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f6, 0(x2) # load 0x00007e00 from memory into f6
fadd.h f24, f8, f6, dyn # perform operation
fadd.h f24, f8, f6, rdn # perform operation
fadd.h f24, f8, f6, rmm # perform operation
fadd.h f24, f8, f6, rne # perform operation
fadd.h f24, f8, f6, rtz # perform operation
fadd.h f24, f8, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f8, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f8, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f8, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f8, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f8, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7fff)
li x31, 0x1bb63e6c829474c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f22, 0(x2) # load 0x00007dff from memory into f22
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f17, 0(x2) # load 0x00007fff from memory into f17
fadd.h f31, f22, f17, dyn # perform operation
fadd.h f31, f22, f17, rdn # perform operation
fadd.h f31, f22, f17, rmm # perform operation
fadd.h f31, f22, f17, rne # perform operation
fadd.h f31, f22, f17, rtz # perform operation
fadd.h f31, f22, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f22, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f22, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f22, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f22, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f22, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7c01)
li x18, 0x7f358a4d87a0064f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f29, 0(x2) # load 0x00007c01 from memory into f29
fadd.h f18, f30, f29, dyn # perform operation
fadd.h f18, f30, f29, rdn # perform operation
fadd.h f18, f30, f29, rmm # perform operation
fadd.h f18, f30, f29, rne # perform operation
fadd.h f18, f30, f29, rtz # perform operation
fadd.h f18, f30, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f30, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f30, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f30, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f30, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f30, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7dff)
li x6, 0xb8363f6adb990973 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f3, 0(x2) # load 0x00007dff from memory into f3
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f10, 0(x2) # load 0x00007dff from memory into f10
fadd.h f6, f3, f10, dyn # perform operation
fadd.h f6, f3, f10, rdn # perform operation
fadd.h f6, f3, f10, rmm # perform operation
fadd.h f6, f3, f10, rne # perform operation
fadd.h f6, f3, f10, rtz # perform operation
fadd.h f6, f3, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f3, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f3, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f3, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f3, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f3, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x58b4)
li x24, 0xacef0f20d948f8c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f1, 0(x2) # load 0x000058b4 from memory into f1
fadd.h f24, f21, f1, dyn # perform operation
fadd.h f24, f21, f1, rdn # perform operation
fadd.h f24, f21, f1, rmm # perform operation
fadd.h f24, f21, f1, rne # perform operation
fadd.h f24, f21, f1, rtz # perform operation
fadd.h f24, f21, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f24, f21, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f24, f21, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f24, f21, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f24, f21, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f24, f21, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xc93a)
li x28, 0x75ea3729acc02861 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
fadd.h f28, f7, f20, dyn # perform operation
fadd.h f28, f7, f20, rdn # perform operation
fadd.h f28, f7, f20, rmm # perform operation
fadd.h f28, f7, f20, rne # perform operation
fadd.h f28, f7, f20, rtz # perform operation
fadd.h f28, f7, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f7, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f7, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f7, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f7, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f7, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x0)
li x21, 0xdfcb11dd5b81398b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f22, 0(x2) # load 0x00000000 from memory into f22
fadd.h f21, f30, f22, dyn # perform operation
fadd.h f21, f30, f22, rdn # perform operation
fadd.h f21, f30, f22, rmm # perform operation
fadd.h f21, f30, f22, rne # perform operation
fadd.h f21, f30, f22, rtz # perform operation
fadd.h f21, f30, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f21, f30, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f21, f30, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f21, f30, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f21, f30, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f21, f30, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8000)
li x6, 0x749492860bfd39cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f27, 0(x2) # load 0x000058b4 from memory into f27
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f5, 0(x2) # load 0x00008000 from memory into f5
fadd.h f6, f27, f5, dyn # perform operation
fadd.h f6, f27, f5, rdn # perform operation
fadd.h f6, f27, f5, rmm # perform operation
fadd.h f6, f27, f5, rne # perform operation
fadd.h f6, f27, f5, rtz # perform operation
fadd.h f6, f27, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f6, f27, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f6, f27, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f6, f27, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f6, f27, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f6, f27, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3c00)
li x17, 0x7f02b2906f60bab9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f6, 0(x2) # load 0x00003c00 from memory into f6
fadd.h f17, f10, f6, dyn # perform operation
fadd.h f17, f10, f6, rdn # perform operation
fadd.h f17, f10, f6, rmm # perform operation
fadd.h f17, f10, f6, rne # perform operation
fadd.h f17, f10, f6, rtz # perform operation
fadd.h f17, f10, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f17, f10, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f17, f10, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f17, f10, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f17, f10, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f17, f10, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xbc00)
li x18, 0x8925b3d8a4c3d463 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f22, 0(x2) # load 0x000058b4 from memory into f22
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f13, 0(x2) # load 0x0000bc00 from memory into f13
fadd.h f18, f22, f13, dyn # perform operation
fadd.h f18, f22, f13, rdn # perform operation
fadd.h f18, f22, f13, rmm # perform operation
fadd.h f18, f22, f13, rne # perform operation
fadd.h f18, f22, f13, rtz # perform operation
fadd.h f18, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f22, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3e00)
li x28, 0x0981c322276428c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f4, 0(x2) # load 0x000058b4 from memory into f4
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
fadd.h f28, f4, f12, dyn # perform operation
fadd.h f28, f4, f12, rdn # perform operation
fadd.h f28, f4, f12, rmm # perform operation
fadd.h f28, f4, f12, rne # perform operation
fadd.h f28, f4, f12, rtz # perform operation
fadd.h f28, f4, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f4, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f4, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f4, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f4, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f4, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xbe00)
li x9, 0xf49023e9b9465caf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f31, 0(x2) # load 0x000058b4 from memory into f31
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
fadd.h f9, f31, f1, dyn # perform operation
fadd.h f9, f31, f1, rdn # perform operation
fadd.h f9, f31, f1, rmm # perform operation
fadd.h f9, f31, f1, rne # perform operation
fadd.h f9, f31, f1, rtz # perform operation
fadd.h f9, f31, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f31, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f31, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f31, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f31, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f31, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x4000)
li x18, 0xa1c0aec02c2ee43c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f12, 0(x2) # load 0x000058b4 from memory into f12
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
fadd.h f18, f12, f6, dyn # perform operation
fadd.h f18, f12, f6, rdn # perform operation
fadd.h f18, f12, f6, rmm # perform operation
fadd.h f18, f12, f6, rne # perform operation
fadd.h f18, f12, f6, rtz # perform operation
fadd.h f18, f12, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f12, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f12, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f12, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f12, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f12, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xc000)
li x8, 0x61bafe4b3de4f062 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f31, 0(x2) # load 0x000058b4 from memory into f31
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
fadd.h f8, f31, f21, dyn # perform operation
fadd.h f8, f31, f21, rdn # perform operation
fadd.h f8, f31, f21, rmm # perform operation
fadd.h f8, f31, f21, rne # perform operation
fadd.h f8, f31, f21, rtz # perform operation
fadd.h f8, f31, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f31, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f31, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f31, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f31, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f31, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x400)
li x18, 0x6d507fe772e7cd6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f21, 0(x2) # load 0x000058b4 from memory into f21
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f25, 0(x2) # load 0x00000400 from memory into f25
fadd.h f18, f21, f25, dyn # perform operation
fadd.h f18, f21, f25, rdn # perform operation
fadd.h f18, f21, f25, rmm # perform operation
fadd.h f18, f21, f25, rne # perform operation
fadd.h f18, f21, f25, rtz # perform operation
fadd.h f18, f21, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f21, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f21, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f21, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f21, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f21, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8400)
li x25, 0x02be29a0d0277b1d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f16, 0(x2) # load 0x00008400 from memory into f16
fadd.h f25, f8, f16, dyn # perform operation
fadd.h f25, f8, f16, rdn # perform operation
fadd.h f25, f8, f16, rmm # perform operation
fadd.h f25, f8, f16, rne # perform operation
fadd.h f25, f8, f16, rtz # perform operation
fadd.h f25, f8, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f25, f8, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f25, f8, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f25, f8, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f25, f8, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f25, f8, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7bff)
li x27, 0x5dc1939d2832369d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
fadd.h f27, f17, f21, dyn # perform operation
fadd.h f27, f17, f21, rdn # perform operation
fadd.h f27, f17, f21, rmm # perform operation
fadd.h f27, f17, f21, rne # perform operation
fadd.h f27, f17, f21, rtz # perform operation
fadd.h f27, f17, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f17, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f17, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f17, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f17, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f17, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfbff)
li x22, 0xe94f318c837fd620 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f7, 0(x2) # load 0x000058b4 from memory into f7
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f3, 0(x2) # load 0x0000fbff from memory into f3
fadd.h f22, f7, f3, dyn # perform operation
fadd.h f22, f7, f3, rdn # perform operation
fadd.h f22, f7, f3, rmm # perform operation
fadd.h f22, f7, f3, rne # perform operation
fadd.h f22, f7, f3, rtz # perform operation
fadd.h f22, f7, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f7, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f7, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f7, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f7, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f7, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3ff)
li x11, 0xd22c9015cdf8ac21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f1, 0(x2) # load 0x000058b4 from memory into f1
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
fadd.h f11, f1, f2, dyn # perform operation
fadd.h f11, f1, f2, rdn # perform operation
fadd.h f11, f1, f2, rmm # perform operation
fadd.h f11, f1, f2, rne # perform operation
fadd.h f11, f1, f2, rtz # perform operation
fadd.h f11, f1, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f1, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f1, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f1, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f1, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f1, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x83ff)
li x16, 0x0f5a33f3a808c957 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
fadd.h f16, f3, f10, dyn # perform operation
fadd.h f16, f3, f10, rdn # perform operation
fadd.h f16, f3, f10, rmm # perform operation
fadd.h f16, f3, f10, rne # perform operation
fadd.h f16, f3, f10, rtz # perform operation
fadd.h f16, f3, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f16, f3, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f16, f3, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f16, f3, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f16, f3, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f16, f3, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x200)
li x10, 0x989b9874cf94a291 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f9, 0(x2) # load 0x000058b4 from memory into f9
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f4, 0(x2) # load 0x00000200 from memory into f4
fadd.h f10, f9, f4, dyn # perform operation
fadd.h f10, f9, f4, rdn # perform operation
fadd.h f10, f9, f4, rmm # perform operation
fadd.h f10, f9, f4, rne # perform operation
fadd.h f10, f9, f4, rtz # perform operation
fadd.h f10, f9, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f9, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f9, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f9, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f9, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f9, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8200)
li x13, 0x989871a4f8e86193 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f20, 0(x2) # load 0x000058b4 from memory into f20
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
fadd.h f13, f20, f17, dyn # perform operation
fadd.h f13, f20, f17, rdn # perform operation
fadd.h f13, f20, f17, rmm # perform operation
fadd.h f13, f20, f17, rne # perform operation
fadd.h f13, f20, f17, rtz # perform operation
fadd.h f13, f20, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f20, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f20, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f20, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f20, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f20, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x1)
li x3, 0x2b8c15a9a8b010d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f26, 0(x2) # load 0x000058b4 from memory into f26
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
fadd.h f3, f26, f11, dyn # perform operation
fadd.h f3, f26, f11, rdn # perform operation
fadd.h f3, f26, f11, rmm # perform operation
fadd.h f3, f26, f11, rne # perform operation
fadd.h f3, f26, f11, rtz # perform operation
fadd.h f3, f26, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f3, f26, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f3, f26, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f3, f26, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f3, f26, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f3, f26, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8001)
li x31, 0xba136b968660ba45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
fadd.h f31, f23, f6, dyn # perform operation
fadd.h f31, f23, f6, rdn # perform operation
fadd.h f31, f23, f6, rmm # perform operation
fadd.h f31, f23, f6, rne # perform operation
fadd.h f31, f23, f6, rtz # perform operation
fadd.h f31, f23, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f23, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f23, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f23, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f23, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f23, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7c00)
li x27, 0xfcdf1a747f7b60cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f2, 0(x2) # load 0x000058b4 from memory into f2
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f3, 0(x2) # load 0x00007c00 from memory into f3
fadd.h f27, f2, f3, dyn # perform operation
fadd.h f27, f2, f3, rdn # perform operation
fadd.h f27, f2, f3, rmm # perform operation
fadd.h f27, f2, f3, rne # perform operation
fadd.h f27, f2, f3, rtz # perform operation
fadd.h f27, f2, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f2, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f2, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f2, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f2, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f2, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfc00)
li x22, 0xcc4e4dbfba9a3a9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f2, 0(x2) # load 0x000058b4 from memory into f2
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f19, 0(x2) # load 0x0000fc00 from memory into f19
fadd.h f22, f2, f19, dyn # perform operation
fadd.h f22, f2, f19, rdn # perform operation
fadd.h f22, f2, f19, rmm # perform operation
fadd.h f22, f2, f19, rne # perform operation
fadd.h f22, f2, f19, rtz # perform operation
fadd.h f22, f2, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f22, f2, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f22, f2, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f22, f2, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f22, f2, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f22, f2, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7e00)
li x7, 0x26b976d0b3872454 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f27, 0(x2) # load 0x000058b4 from memory into f27
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f13, 0(x2) # load 0x00007e00 from memory into f13
fadd.h f7, f27, f13, dyn # perform operation
fadd.h f7, f27, f13, rdn # perform operation
fadd.h f7, f27, f13, rmm # perform operation
fadd.h f7, f27, f13, rne # perform operation
fadd.h f7, f27, f13, rtz # perform operation
fadd.h f7, f27, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f27, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f27, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f27, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f27, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f27, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7fff)
li x13, 0xdee5dd6aab66727d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f9, 0(x2) # load 0x00007fff from memory into f9
fadd.h f13, f11, f9, dyn # perform operation
fadd.h f13, f11, f9, rdn # perform operation
fadd.h f13, f11, f9, rmm # perform operation
fadd.h f13, f11, f9, rne # perform operation
fadd.h f13, f11, f9, rtz # perform operation
fadd.h f13, f11, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f13, f11, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f13, f11, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f13, f11, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f13, f11, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f13, f11, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7c01)
li x18, 0xa14d25493ad0a0cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f19, 0(x2) # load 0x000058b4 from memory into f19
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
fadd.h f18, f19, f28, dyn # perform operation
fadd.h f18, f19, f28, rdn # perform operation
fadd.h f18, f19, f28, rmm # perform operation
fadd.h f18, f19, f28, rne # perform operation
fadd.h f18, f19, f28, rtz # perform operation
fadd.h f18, f19, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f19, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f19, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f19, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f19, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f19, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7dff)
li x1, 0xbd56dae43155eeff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f6, 0(x2) # load 0x000058b4 from memory into f6
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f13, 0(x2) # load 0x00007dff from memory into f13
fadd.h f1, f6, f13, dyn # perform operation
fadd.h f1, f6, f13, rdn # perform operation
fadd.h f1, f6, f13, rmm # perform operation
fadd.h f1, f6, f13, rne # perform operation
fadd.h f1, f6, f13, rtz # perform operation
fadd.h f1, f6, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f6, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f6, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f6, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f6, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f6, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x58b4)
li x7, 0xee5d13e645a1a414 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f22, 0(x2) # load 0x000058b4 from memory into f22
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
fadd.h f7, f22, f8, dyn # perform operation
fadd.h f7, f22, f8, rdn # perform operation
fadd.h f7, f22, f8, rmm # perform operation
fadd.h f7, f22, f8, rne # perform operation
fadd.h f7, f22, f8, rtz # perform operation
fadd.h f7, f22, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f22, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f22, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f22, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f22, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f22, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xc93a)
li x28, 0xd8cff8bbf4f65ea3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
fadd.h f28, f10, f2, dyn # perform operation
fadd.h f28, f10, f2, rdn # perform operation
fadd.h f28, f10, f2, rmm # perform operation
fadd.h f28, f10, f2, rne # perform operation
fadd.h f28, f10, f2, rtz # perform operation
fadd.h f28, f10, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f10, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f10, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f10, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f10, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f10, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x0)
li x8, 0x05e3678ac57be1a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f11, 0(x2) # load 0x0000c93a from memory into f11
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f26, 0(x2) # load 0x00000000 from memory into f26
fadd.h f8, f11, f26, dyn # perform operation
fadd.h f8, f11, f26, rdn # perform operation
fadd.h f8, f11, f26, rmm # perform operation
fadd.h f8, f11, f26, rne # perform operation
fadd.h f8, f11, f26, rtz # perform operation
fadd.h f8, f11, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f11, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f11, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f11, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f11, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f11, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8000)
li x9, 0xa86f7ad676340d3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
fadd.h f9, f6, f31, dyn # perform operation
fadd.h f9, f6, f31, rdn # perform operation
fadd.h f9, f6, f31, rmm # perform operation
fadd.h f9, f6, f31, rne # perform operation
fadd.h f9, f6, f31, rtz # perform operation
fadd.h f9, f6, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f6, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f6, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f6, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f6, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f6, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3c00)
li x10, 0xd6e5dfe1facc767c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f27, 0(x2) # load 0x0000c93a from memory into f27
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f26, 0(x2) # load 0x00003c00 from memory into f26
fadd.h f10, f27, f26, dyn # perform operation
fadd.h f10, f27, f26, rdn # perform operation
fadd.h f10, f27, f26, rmm # perform operation
fadd.h f10, f27, f26, rne # perform operation
fadd.h f10, f27, f26, rtz # perform operation
fadd.h f10, f27, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f27, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f27, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f27, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f27, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f27, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xbc00)
li x5, 0x7f3cf8bd2194a674 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
fadd.h f5, f17, f18, dyn # perform operation
fadd.h f5, f17, f18, rdn # perform operation
fadd.h f5, f17, f18, rmm # perform operation
fadd.h f5, f17, f18, rne # perform operation
fadd.h f5, f17, f18, rtz # perform operation
fadd.h f5, f17, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f17, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f17, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f17, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f17, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f17, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3e00)
li x1, 0xef283349ef55ec68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f28, 0(x2) # load 0x0000c93a from memory into f28
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
fadd.h f1, f28, f13, dyn # perform operation
fadd.h f1, f28, f13, rdn # perform operation
fadd.h f1, f28, f13, rmm # perform operation
fadd.h f1, f28, f13, rne # perform operation
fadd.h f1, f28, f13, rtz # perform operation
fadd.h f1, f28, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f28, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f28, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f28, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f28, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f28, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xbe00)
li x12, 0xc1786e202f12183b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
fadd.h f12, f22, f1, dyn # perform operation
fadd.h f12, f22, f1, rdn # perform operation
fadd.h f12, f22, f1, rmm # perform operation
fadd.h f12, f22, f1, rne # perform operation
fadd.h f12, f22, f1, rtz # perform operation
fadd.h f12, f22, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f12, f22, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f12, f22, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f12, f22, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f12, f22, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f12, f22, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x4000)
li x9, 0x150b3061ef32e85b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f31, 0(x2) # load 0x00004000 from memory into f31
fadd.h f9, f22, f31, dyn # perform operation
fadd.h f9, f22, f31, rdn # perform operation
fadd.h f9, f22, f31, rmm # perform operation
fadd.h f9, f22, f31, rne # perform operation
fadd.h f9, f22, f31, rtz # perform operation
fadd.h f9, f22, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f9, f22, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f9, f22, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f9, f22, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f9, f22, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f9, f22, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xc000)
li x1, 0xe51a5ca1ce63586a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f11, 0(x2) # load 0x0000c93a from memory into f11
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f8, 0(x2) # load 0x0000c000 from memory into f8
fadd.h f1, f11, f8, dyn # perform operation
fadd.h f1, f11, f8, rdn # perform operation
fadd.h f1, f11, f8, rmm # perform operation
fadd.h f1, f11, f8, rne # perform operation
fadd.h f1, f11, f8, rtz # perform operation
fadd.h f1, f11, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f1, f11, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f1, f11, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f1, f11, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f1, f11, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f1, f11, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x400)
li x5, 0xdfb9dc955d258bf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
fadd.h f5, f12, f2, dyn # perform operation
fadd.h f5, f12, f2, rdn # perform operation
fadd.h f5, f12, f2, rmm # perform operation
fadd.h f5, f12, f2, rne # perform operation
fadd.h f5, f12, f2, rtz # perform operation
fadd.h f5, f12, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f5, f12, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f5, f12, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f5, f12, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f5, f12, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f5, f12, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8400)
li x28, 0x03a33eb740d5a9cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f15, 0(x2) # load 0x0000c93a from memory into f15
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
fadd.h f28, f15, f9, dyn # perform operation
fadd.h f28, f15, f9, rdn # perform operation
fadd.h f28, f15, f9, rmm # perform operation
fadd.h f28, f15, f9, rne # perform operation
fadd.h f28, f15, f9, rtz # perform operation
fadd.h f28, f15, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f15, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f15, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f15, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f15, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f15, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7bff)
li x10, 0x1800eee576872ae2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f29, 0(x2) # load 0x0000c93a from memory into f29
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
fadd.h f10, f29, f17, dyn # perform operation
fadd.h f10, f29, f17, rdn # perform operation
fadd.h f10, f29, f17, rmm # perform operation
fadd.h f10, f29, f17, rne # perform operation
fadd.h f10, f29, f17, rtz # perform operation
fadd.h f10, f29, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f10, f29, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f10, f29, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f10, f29, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f10, f29, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f10, f29, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfbff)
li x29, 0xaf313439ba7e8ad6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f3, 0(x2) # load 0x0000fbff from memory into f3
fadd.h f29, f12, f3, dyn # perform operation
fadd.h f29, f12, f3, rdn # perform operation
fadd.h f29, f12, f3, rmm # perform operation
fadd.h f29, f12, f3, rne # perform operation
fadd.h f29, f12, f3, rtz # perform operation
fadd.h f29, f12, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f12, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f12, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f12, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f12, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f12, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3ff)
li x29, 0xb56ca2364028a156 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f10, 0(x2) # load 0x000003ff from memory into f10
fadd.h f29, f30, f10, dyn # perform operation
fadd.h f29, f30, f10, rdn # perform operation
fadd.h f29, f30, f10, rmm # perform operation
fadd.h f29, f30, f10, rne # perform operation
fadd.h f29, f30, f10, rtz # perform operation
fadd.h f29, f30, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f29, f30, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f29, f30, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f29, f30, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f29, f30, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f29, f30, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x83ff)
li x31, 0xc5d20cdb05048343 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f1, 0(x2) # load 0x0000c93a from memory into f1
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
fadd.h f31, f1, f16, dyn # perform operation
fadd.h f31, f1, f16, rdn # perform operation
fadd.h f31, f1, f16, rmm # perform operation
fadd.h f31, f1, f16, rne # perform operation
fadd.h f31, f1, f16, rtz # perform operation
fadd.h f31, f1, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f31, f1, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f31, f1, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f31, f1, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f31, f1, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f31, f1, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x200)
li x30, 0x3c9ff7e9306d0cc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f9, 0(x2) # load 0x0000c93a from memory into f9
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
fadd.h f30, f9, f25, dyn # perform operation
fadd.h f30, f9, f25, rdn # perform operation
fadd.h f30, f9, f25, rmm # perform operation
fadd.h f30, f9, f25, rne # perform operation
fadd.h f30, f9, f25, rtz # perform operation
fadd.h f30, f9, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f9, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f9, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f9, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f9, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f9, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8200)
li x26, 0x2d32b92386ece396 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
fadd.h f26, f6, f2, dyn # perform operation
fadd.h f26, f6, f2, rdn # perform operation
fadd.h f26, f6, f2, rmm # perform operation
fadd.h f26, f6, f2, rne # perform operation
fadd.h f26, f6, f2, rtz # perform operation
fadd.h f26, f6, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f26, f6, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f26, f6, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f26, f6, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f26, f6, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f26, f6, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x1)
li x2, 0x069e8f8f594e033e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f19, 0(x2) # load 0x00000001 from memory into f19
fadd.h f2, f22, f19, dyn # perform operation
fadd.h f2, f22, f19, rdn # perform operation
fadd.h f2, f22, f19, rmm # perform operation
fadd.h f2, f22, f19, rne # perform operation
fadd.h f2, f22, f19, rtz # perform operation
fadd.h f2, f22, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f22, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f22, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f22, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f22, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f22, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8001)
li x7, 0xfb5f1623b96392c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f24, 0(x2) # load 0x0000c93a from memory into f24
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f12, 0(x2) # load 0x00008001 from memory into f12
fadd.h f7, f24, f12, dyn # perform operation
fadd.h f7, f24, f12, rdn # perform operation
fadd.h f7, f24, f12, rmm # perform operation
fadd.h f7, f24, f12, rne # perform operation
fadd.h f7, f24, f12, rtz # perform operation
fadd.h f7, f24, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f7, f24, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f7, f24, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f7, f24, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f7, f24, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f7, f24, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7c00)
li x14, 0x321f552865adb65a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
fadd.h f14, f30, f16, dyn # perform operation
fadd.h f14, f30, f16, rdn # perform operation
fadd.h f14, f30, f16, rmm # perform operation
fadd.h f14, f30, f16, rne # perform operation
fadd.h f14, f30, f16, rtz # perform operation
fadd.h f14, f30, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f14, f30, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f14, f30, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f14, f30, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f14, f30, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f14, f30, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfc00)
li x18, 0x6c88ae12ac2c6923 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f8, 0(x2) # load 0x0000c93a from memory into f8
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f29, 0(x2) # load 0x0000fc00 from memory into f29
fadd.h f18, f8, f29, dyn # perform operation
fadd.h f18, f8, f29, rdn # perform operation
fadd.h f18, f8, f29, rmm # perform operation
fadd.h f18, f8, f29, rne # perform operation
fadd.h f18, f8, f29, rtz # perform operation
fadd.h f18, f8, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f18, f8, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f18, f8, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f18, f8, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f18, f8, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f18, f8, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7e00)
li x2, 0x887c340eb98eefc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f25, 0(x2) # load 0x0000c93a from memory into f25
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f23, 0(x2) # load 0x00007e00 from memory into f23
fadd.h f2, f25, f23, dyn # perform operation
fadd.h f2, f25, f23, rdn # perform operation
fadd.h f2, f25, f23, rmm # perform operation
fadd.h f2, f25, f23, rne # perform operation
fadd.h f2, f25, f23, rtz # perform operation
fadd.h f2, f25, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f2, f25, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f2, f25, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f2, f25, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f2, f25, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f2, f25, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7fff)
li x28, 0x0dc6a1c9d837df38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f9, 0(x2) # load 0x0000c93a from memory into f9
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
fadd.h f28, f9, f2, dyn # perform operation
fadd.h f28, f9, f2, rdn # perform operation
fadd.h f28, f9, f2, rmm # perform operation
fadd.h f28, f9, f2, rne # perform operation
fadd.h f28, f9, f2, rtz # perform operation
fadd.h f28, f9, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f28, f9, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f28, f9, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f28, f9, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f28, f9, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f28, f9, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7c01)
li x11, 0xe67ee2f5f9879382 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f30, 0(x2) # load 0x00007c01 from memory into f30
fadd.h f11, f7, f30, dyn # perform operation
fadd.h f11, f7, f30, rdn # perform operation
fadd.h f11, f7, f30, rmm # perform operation
fadd.h f11, f7, f30, rne # perform operation
fadd.h f11, f7, f30, rtz # perform operation
fadd.h f11, f7, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f11, f7, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f11, f7, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f11, f7, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f11, f7, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f11, f7, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7dff)
li x30, 0x65987bb966636321 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f24, 0(x2) # load 0x0000c93a from memory into f24
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
fadd.h f30, f24, f20, dyn # perform operation
fadd.h f30, f24, f20, rdn # perform operation
fadd.h f30, f24, f20, rmm # perform operation
fadd.h f30, f24, f20, rne # perform operation
fadd.h f30, f24, f20, rtz # perform operation
fadd.h f30, f24, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f30, f24, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f30, f24, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f30, f24, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f30, f24, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f30, f24, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x58b4)
li x27, 0xe47187f4ce89e7b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f14, 0(x2) # load 0x0000c93a from memory into f14
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
fadd.h f27, f14, f24, dyn # perform operation
fadd.h f27, f14, f24, rdn # perform operation
fadd.h f27, f14, f24, rmm # perform operation
fadd.h f27, f14, f24, rne # perform operation
fadd.h f27, f14, f24, rtz # perform operation
fadd.h f27, f14, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f27, f14, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f27, f14, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f27, f14, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f27, f14, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f27, f14, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xc93a)
li x8, 0xeebb0a4642ed65c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f28, 0(x2) # load 0x0000c93a from memory into f28
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
fadd.h f8, f28, f30, dyn # perform operation
fadd.h f8, f28, f30, rdn # perform operation
fadd.h f8, f28, f30, rmm # perform operation
fadd.h f8, f28, f30, rne # perform operation
fadd.h f8, f28, f30, rtz # perform operation
fadd.h f8, f28, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.h f8, f28, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.h f8, f28, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.h f8, f28, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.h f8, f28, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.h f8, f28, f30 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0xecde82433efb1ccf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdd7dbb813c427c52 # load x3 with value 0xdd7dbb813c427c52
sw x3, 0(x2) # store 0xdd7dbb813c427c52 in memory
flh f25, 0(x2) # load 0xdd7dbb813c427c52 from memory into f25
li x3, 0xf89b7b49c91c6e6c # load x3 with value 0xf89b7b49c91c6e6c
sw x3, 0(x2) # store 0xf89b7b49c91c6e6c in memory
flh f10, 0(x2) # load 0xf89b7b49c91c6e6c from memory into f10
fadd.h f0, f25, f10 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0xdbf1e3a4a8980717 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfb75cb6caff859f1 # load x3 with value 0xfb75cb6caff859f1
sw x3, 0(x2) # store 0xfb75cb6caff859f1 in memory
flh f19, 0(x2) # load 0xfb75cb6caff859f1 from memory into f19
li x3, 0x1894690544a495dd # load x3 with value 0x1894690544a495dd
sw x3, 0(x2) # store 0x1894690544a495dd in memory
flh f1, 0(x2) # load 0x1894690544a495dd from memory into f1
fadd.h f1, f19, f1 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x2b293d4557830b2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcca6aad7c6effaed # load x3 with value 0xcca6aad7c6effaed
sw x3, 0(x2) # store 0xcca6aad7c6effaed in memory
flh f4, 0(x2) # load 0xcca6aad7c6effaed from memory into f4
li x3, 0xe7fa13cc91123fe1 # load x3 with value 0xe7fa13cc91123fe1
sw x3, 0(x2) # store 0xe7fa13cc91123fe1 in memory
flh f6, 0(x2) # load 0xe7fa13cc91123fe1 from memory into f6
fadd.h f2, f4, f6 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0xacd03e8c7dae7dee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf673dd99c661ccac # load x3 with value 0xf673dd99c661ccac
sw x3, 0(x2) # store 0xf673dd99c661ccac in memory
flh f30, 0(x2) # load 0xf673dd99c661ccac from memory into f30
li x3, 0x520a4efea597f503 # load x3 with value 0x520a4efea597f503
sw x3, 0(x2) # store 0x520a4efea597f503 in memory
flh f16, 0(x2) # load 0x520a4efea597f503 from memory into f16
fadd.h f3, f30, f16 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x1c48c5ebde97c62f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2feeb0987e1f29d5 # load x3 with value 0x2feeb0987e1f29d5
sw x3, 0(x2) # store 0x2feeb0987e1f29d5 in memory
flh f29, 0(x2) # load 0x2feeb0987e1f29d5 from memory into f29
li x3, 0x859eeae0ee38f019 # load x3 with value 0x859eeae0ee38f019
sw x3, 0(x2) # store 0x859eeae0ee38f019 in memory
flh f12, 0(x2) # load 0x859eeae0ee38f019 from memory into f12
fadd.h f4, f29, f12 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x9ab77d099795f72b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x257f3120cce9cd52 # load x3 with value 0x257f3120cce9cd52
sw x3, 0(x2) # store 0x257f3120cce9cd52 in memory
flh f21, 0(x2) # load 0x257f3120cce9cd52 from memory into f21
li x3, 0xcd0d0f02ba312a7a # load x3 with value 0xcd0d0f02ba312a7a
sw x3, 0(x2) # store 0xcd0d0f02ba312a7a in memory
flh f4, 0(x2) # load 0xcd0d0f02ba312a7a from memory into f4
fadd.h f5, f21, f4 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0xabb033dda8e00fac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f8ae66d183c14e # load x3 with value 0x3f8ae66d183c14e
sw x3, 0(x2) # store 0x3f8ae66d183c14e in memory
flh f20, 0(x2) # load 0x3f8ae66d183c14e from memory into f20
li x3, 0x7613ce19ab5f912a # load x3 with value 0x7613ce19ab5f912a
sw x3, 0(x2) # store 0x7613ce19ab5f912a in memory
flh f30, 0(x2) # load 0x7613ce19ab5f912a from memory into f30
fadd.h f6, f20, f30 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0xa7315d30866271c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x10c4a2e751b285ef # load x3 with value 0x10c4a2e751b285ef
sw x3, 0(x2) # store 0x10c4a2e751b285ef in memory
flh f14, 0(x2) # load 0x10c4a2e751b285ef from memory into f14
li x3, 0x634f502dde9f6670 # load x3 with value 0x634f502dde9f6670
sw x3, 0(x2) # store 0x634f502dde9f6670 in memory
flh f2, 0(x2) # load 0x634f502dde9f6670 from memory into f2
fadd.h f7, f14, f2 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0xbf06d654c47529a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9a009dd82ffb5f82 # load x3 with value 0x9a009dd82ffb5f82
sw x3, 0(x2) # store 0x9a009dd82ffb5f82 in memory
flh f25, 0(x2) # load 0x9a009dd82ffb5f82 from memory into f25
li x3, 0x33e12dd0b9ea574b # load x3 with value 0x33e12dd0b9ea574b
sw x3, 0(x2) # store 0x33e12dd0b9ea574b in memory
flh f24, 0(x2) # load 0x33e12dd0b9ea574b from memory into f24
fadd.h f8, f25, f24 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0xdd3dcdd26df822bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3bcedefbfcd64ab2 # load x3 with value 0x3bcedefbfcd64ab2
sw x3, 0(x2) # store 0x3bcedefbfcd64ab2 in memory
flh f4, 0(x2) # load 0x3bcedefbfcd64ab2 from memory into f4
li x3, 0x99c36a2ff84adc16 # load x3 with value 0x99c36a2ff84adc16
sw x3, 0(x2) # store 0x99c36a2ff84adc16 in memory
flh f3, 0(x2) # load 0x99c36a2ff84adc16 from memory into f3
fadd.h f9, f4, f3 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x890bf94065fdd951 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x467511954bf9fe7c # load x3 with value 0x467511954bf9fe7c
sw x3, 0(x2) # store 0x467511954bf9fe7c in memory
flh f10, 0(x2) # load 0x467511954bf9fe7c from memory into f10
li x3, 0x13f53c42d3edf87e # load x3 with value 0x13f53c42d3edf87e
sw x3, 0(x2) # store 0x13f53c42d3edf87e in memory
flh f20, 0(x2) # load 0x13f53c42d3edf87e from memory into f20
fadd.h f10, f10, f20 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0xfb4836cd80fcbcf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7eea56d7bbc01a0b # load x3 with value 0x7eea56d7bbc01a0b
sw x3, 0(x2) # store 0x7eea56d7bbc01a0b in memory
flh f20, 0(x2) # load 0x7eea56d7bbc01a0b from memory into f20
li x3, 0x872f7a59972693b9 # load x3 with value 0x872f7a59972693b9
sw x3, 0(x2) # store 0x872f7a59972693b9 in memory
flh f21, 0(x2) # load 0x872f7a59972693b9 from memory into f21
fadd.h f11, f20, f21 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0xaefcc1a41be8eaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5f1fe9502265f6cc # load x3 with value 0x5f1fe9502265f6cc
sw x3, 0(x2) # store 0x5f1fe9502265f6cc in memory
flh f4, 0(x2) # load 0x5f1fe9502265f6cc from memory into f4
li x3, 0xbb0caf9a47f9509b # load x3 with value 0xbb0caf9a47f9509b
sw x3, 0(x2) # store 0xbb0caf9a47f9509b in memory
flh f31, 0(x2) # load 0xbb0caf9a47f9509b from memory into f31
fadd.h f12, f4, f31 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x1caa4c85b884103b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3a2834b1b54303da # load x3 with value 0x3a2834b1b54303da
sw x3, 0(x2) # store 0x3a2834b1b54303da in memory
flh f12, 0(x2) # load 0x3a2834b1b54303da from memory into f12
li x3, 0xab2fc31092111299 # load x3 with value 0xab2fc31092111299
sw x3, 0(x2) # store 0xab2fc31092111299 in memory
flh f31, 0(x2) # load 0xab2fc31092111299 from memory into f31
fadd.h f13, f12, f31 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0xcbf27506e357b39e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1db179e737d3526e # load x3 with value 0x1db179e737d3526e
sw x3, 0(x2) # store 0x1db179e737d3526e in memory
flh f19, 0(x2) # load 0x1db179e737d3526e from memory into f19
li x3, 0x309410331dff886f # load x3 with value 0x309410331dff886f
sw x3, 0(x2) # store 0x309410331dff886f in memory
flh f14, 0(x2) # load 0x309410331dff886f from memory into f14
fadd.h f14, f19, f14 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0xc57f55ef3d145ba3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x189a3a6ade000bd1 # load x3 with value 0x189a3a6ade000bd1
sw x3, 0(x2) # store 0x189a3a6ade000bd1 in memory
flh f9, 0(x2) # load 0x189a3a6ade000bd1 from memory into f9
li x3, 0x2aa15c1503a11e63 # load x3 with value 0x2aa15c1503a11e63
sw x3, 0(x2) # store 0x2aa15c1503a11e63 in memory
flh f7, 0(x2) # load 0x2aa15c1503a11e63 from memory into f7
fadd.h f15, f9, f7 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x49ad893148158581 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3c8b38b9c774f70c # load x3 with value 0x3c8b38b9c774f70c
sw x3, 0(x2) # store 0x3c8b38b9c774f70c in memory
flh f16, 0(x2) # load 0x3c8b38b9c774f70c from memory into f16
li x3, 0x821c7a42ba58c17b # load x3 with value 0x821c7a42ba58c17b
sw x3, 0(x2) # store 0x821c7a42ba58c17b in memory
flh f8, 0(x2) # load 0x821c7a42ba58c17b from memory into f8
fadd.h f16, f16, f8 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x751cb22e52701259 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1dba162eb6182e67 # load x3 with value 0x1dba162eb6182e67
sw x3, 0(x2) # store 0x1dba162eb6182e67 in memory
flh f8, 0(x2) # load 0x1dba162eb6182e67 from memory into f8
li x3, 0xcd7b2876d73564eb # load x3 with value 0xcd7b2876d73564eb
sw x3, 0(x2) # store 0xcd7b2876d73564eb in memory
flh f16, 0(x2) # load 0xcd7b2876d73564eb from memory into f16
fadd.h f17, f8, f16 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0xa4c458c445b2102a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa1eb66f94937a83e # load x3 with value 0xa1eb66f94937a83e
sw x3, 0(x2) # store 0xa1eb66f94937a83e in memory
flh f13, 0(x2) # load 0xa1eb66f94937a83e from memory into f13
li x3, 0xa5b6017186eb556f # load x3 with value 0xa5b6017186eb556f
sw x3, 0(x2) # store 0xa5b6017186eb556f in memory
flh f7, 0(x2) # load 0xa5b6017186eb556f from memory into f7
fadd.h f18, f13, f7 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x50f75eb3937926ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8d76a62722a1c73e # load x3 with value 0x8d76a62722a1c73e
sw x3, 0(x2) # store 0x8d76a62722a1c73e in memory
flh f23, 0(x2) # load 0x8d76a62722a1c73e from memory into f23
li x3, 0xee21d26ea78e8b88 # load x3 with value 0xee21d26ea78e8b88
sw x3, 0(x2) # store 0xee21d26ea78e8b88 in memory
flh f25, 0(x2) # load 0xee21d26ea78e8b88 from memory into f25
fadd.h f19, f23, f25 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x95005b51b50b84c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd3f90408724fe330 # load x3 with value 0xd3f90408724fe330
sw x3, 0(x2) # store 0xd3f90408724fe330 in memory
flh f3, 0(x2) # load 0xd3f90408724fe330 from memory into f3
li x3, 0x4fe8e2b3b242d71e # load x3 with value 0x4fe8e2b3b242d71e
sw x3, 0(x2) # store 0x4fe8e2b3b242d71e in memory
flh f15, 0(x2) # load 0x4fe8e2b3b242d71e from memory into f15
fadd.h f20, f3, f15 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x5df81f0d22860dab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6b2efebc58bd340c # load x3 with value 0x6b2efebc58bd340c
sw x3, 0(x2) # store 0x6b2efebc58bd340c in memory
flh f7, 0(x2) # load 0x6b2efebc58bd340c from memory into f7
li x3, 0xb1cef1a839f4af98 # load x3 with value 0xb1cef1a839f4af98
sw x3, 0(x2) # store 0xb1cef1a839f4af98 in memory
flh f6, 0(x2) # load 0xb1cef1a839f4af98 from memory into f6
fadd.h f21, f7, f6 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x463e0d2dcf672144 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfaf1dea19d39a0b1 # load x3 with value 0xfaf1dea19d39a0b1
sw x3, 0(x2) # store 0xfaf1dea19d39a0b1 in memory
flh f9, 0(x2) # load 0xfaf1dea19d39a0b1 from memory into f9
li x3, 0x3b66e988a792c046 # load x3 with value 0x3b66e988a792c046
sw x3, 0(x2) # store 0x3b66e988a792c046 in memory
flh f4, 0(x2) # load 0x3b66e988a792c046 from memory into f4
fadd.h f22, f9, f4 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x6442bbd4f3788bfa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8cf8399d94a268e7 # load x3 with value 0x8cf8399d94a268e7
sw x3, 0(x2) # store 0x8cf8399d94a268e7 in memory
flh f9, 0(x2) # load 0x8cf8399d94a268e7 from memory into f9
li x3, 0x1dd8fdba7542304f # load x3 with value 0x1dd8fdba7542304f
sw x3, 0(x2) # store 0x1dd8fdba7542304f in memory
flh f3, 0(x2) # load 0x1dd8fdba7542304f from memory into f3
fadd.h f23, f9, f3 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x23d736cd9337d71a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf32ac19ef6894c38 # load x3 with value 0xf32ac19ef6894c38
sw x3, 0(x2) # store 0xf32ac19ef6894c38 in memory
flh f15, 0(x2) # load 0xf32ac19ef6894c38 from memory into f15
li x3, 0x8515d41d41d2ad3a # load x3 with value 0x8515d41d41d2ad3a
sw x3, 0(x2) # store 0x8515d41d41d2ad3a in memory
flh f4, 0(x2) # load 0x8515d41d41d2ad3a from memory into f4
fadd.h f24, f15, f4 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x7360bb78290116b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x25d39c83fe4847c9 # load x3 with value 0x25d39c83fe4847c9
sw x3, 0(x2) # store 0x25d39c83fe4847c9 in memory
flh f12, 0(x2) # load 0x25d39c83fe4847c9 from memory into f12
li x3, 0x4e3691cd9b0ddf48 # load x3 with value 0x4e3691cd9b0ddf48
sw x3, 0(x2) # store 0x4e3691cd9b0ddf48 in memory
flh f29, 0(x2) # load 0x4e3691cd9b0ddf48 from memory into f29
fadd.h f25, f12, f29 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xa38afc82b0636eca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x11afe158ab5e6d20 # load x3 with value 0x11afe158ab5e6d20
sw x3, 0(x2) # store 0x11afe158ab5e6d20 in memory
flh f23, 0(x2) # load 0x11afe158ab5e6d20 from memory into f23
li x3, 0xcb31b136059fe54d # load x3 with value 0xcb31b136059fe54d
sw x3, 0(x2) # store 0xcb31b136059fe54d in memory
flh f15, 0(x2) # load 0xcb31b136059fe54d from memory into f15
fadd.h f26, f23, f15 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x2f5d764c3e84dc32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x838c3e6134ecca20 # load x3 with value 0x838c3e6134ecca20
sw x3, 0(x2) # store 0x838c3e6134ecca20 in memory
flh f3, 0(x2) # load 0x838c3e6134ecca20 from memory into f3
li x3, 0x9cf6cc039d3c32e6 # load x3 with value 0x9cf6cc039d3c32e6
sw x3, 0(x2) # store 0x9cf6cc039d3c32e6 in memory
flh f21, 0(x2) # load 0x9cf6cc039d3c32e6 from memory into f21
fadd.h f27, f3, f21 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0xb9ed0bc22d3a5bfb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa0b2b25d6d2e9cd6 # load x3 with value 0xa0b2b25d6d2e9cd6
sw x3, 0(x2) # store 0xa0b2b25d6d2e9cd6 in memory
flh f23, 0(x2) # load 0xa0b2b25d6d2e9cd6 from memory into f23
li x3, 0x2b14bcc54689514 # load x3 with value 0x2b14bcc54689514
sw x3, 0(x2) # store 0x2b14bcc54689514 in memory
flh f19, 0(x2) # load 0x2b14bcc54689514 from memory into f19
fadd.h f28, f23, f19 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x3f7f54d84728a1fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfc97abffa12b1851 # load x3 with value 0xfc97abffa12b1851
sw x3, 0(x2) # store 0xfc97abffa12b1851 in memory
flh f20, 0(x2) # load 0xfc97abffa12b1851 from memory into f20
li x3, 0xe8318a08ea4f62ad # load x3 with value 0xe8318a08ea4f62ad
sw x3, 0(x2) # store 0xe8318a08ea4f62ad in memory
flh f14, 0(x2) # load 0xe8318a08ea4f62ad from memory into f14
fadd.h f29, f20, f14 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x1c60584a51da1b9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3c8c363d529b35a0 # load x3 with value 0x3c8c363d529b35a0
sw x3, 0(x2) # store 0x3c8c363d529b35a0 in memory
flh f25, 0(x2) # load 0x3c8c363d529b35a0 from memory into f25
li x3, 0x499b3c821980b2df # load x3 with value 0x499b3c821980b2df
sw x3, 0(x2) # store 0x499b3c821980b2df in memory
flh f5, 0(x2) # load 0x499b3c821980b2df from memory into f5
fadd.h f30, f25, f5 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x3403670887a0f83e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf7c2b02712a48d08 # load x3 with value 0xf7c2b02712a48d08
sw x3, 0(x2) # store 0xf7c2b02712a48d08 in memory
flh f25, 0(x2) # load 0xf7c2b02712a48d08 from memory into f25
li x3, 0x860520ed36e337ba # load x3 with value 0x860520ed36e337ba
sw x3, 0(x2) # store 0x860520ed36e337ba in memory
flh f16, 0(x2) # load 0x860520ed36e337ba from memory into f16
fadd.h f31, f25, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x11, 0xd2c5dc4886a131b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7eda7347257bdf92 # load x3 with value 0x7eda7347257bdf92
sw x3, 0(x2) # store 0x7eda7347257bdf92 in memory
flh f0, 0(x2) # load 0x7eda7347257bdf92 from memory into f0
li x3, 0x44c5b1b7c70984f5 # load x3 with value 0x44c5b1b7c70984f5
sw x3, 0(x2) # store 0x44c5b1b7c70984f5 in memory
flh f30, 0(x2) # load 0x44c5b1b7c70984f5 from memory into f30
fadd.h f11, f0, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x11, 0x2141fe166e603e7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3445fd55e34f5c9b # load x3 with value 0x3445fd55e34f5c9b
sw x3, 0(x2) # store 0x3445fd55e34f5c9b in memory
flh f1, 0(x2) # load 0x3445fd55e34f5c9b from memory into f1
li x3, 0xc2d3e0511b6f2e55 # load x3 with value 0xc2d3e0511b6f2e55
sw x3, 0(x2) # store 0xc2d3e0511b6f2e55 in memory
flh f9, 0(x2) # load 0xc2d3e0511b6f2e55 from memory into f9
fadd.h f11, f1, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x6, 0x83579dccc43d880b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc6cfdc1e21929d99 # load x3 with value 0xc6cfdc1e21929d99
sw x3, 0(x2) # store 0xc6cfdc1e21929d99 in memory
flh f2, 0(x2) # load 0xc6cfdc1e21929d99 from memory into f2
li x3, 0x103d1a4f4ad90fd0 # load x3 with value 0x103d1a4f4ad90fd0
sw x3, 0(x2) # store 0x103d1a4f4ad90fd0 in memory
flh f17, 0(x2) # load 0x103d1a4f4ad90fd0 from memory into f17
fadd.h f6, f2, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x11, 0x4709d385d3c9a3d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2391e6e620595e7 # load x3 with value 0x2391e6e620595e7
sw x3, 0(x2) # store 0x2391e6e620595e7 in memory
flh f3, 0(x2) # load 0x2391e6e620595e7 from memory into f3
li x3, 0xd06dcbed3cee9c11 # load x3 with value 0xd06dcbed3cee9c11
sw x3, 0(x2) # store 0xd06dcbed3cee9c11 in memory
flh f24, 0(x2) # load 0xd06dcbed3cee9c11 from memory into f24
fadd.h f11, f3, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x15, 0x433caba58c22d55e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x41ec0b464ab3db24 # load x3 with value 0x41ec0b464ab3db24
sw x3, 0(x2) # store 0x41ec0b464ab3db24 in memory
flh f4, 0(x2) # load 0x41ec0b464ab3db24 from memory into f4
li x3, 0x58e816fd0d60ff62 # load x3 with value 0x58e816fd0d60ff62
sw x3, 0(x2) # store 0x58e816fd0d60ff62 in memory
flh f31, 0(x2) # load 0x58e816fd0d60ff62 from memory into f31
fadd.h f15, f4, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x13, 0x81a31198f4fd05c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf60492e10da17f4c # load x3 with value 0xf60492e10da17f4c
sw x3, 0(x2) # store 0xf60492e10da17f4c in memory
flh f5, 0(x2) # load 0xf60492e10da17f4c from memory into f5
li x3, 0xaad85807de4b1fbe # load x3 with value 0xaad85807de4b1fbe
sw x3, 0(x2) # store 0xaad85807de4b1fbe in memory
flh f4, 0(x2) # load 0xaad85807de4b1fbe from memory into f4
fadd.h f13, f5, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x11, 0x50b02277070fc775 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbc89cae06cd23824 # load x3 with value 0xbc89cae06cd23824
sw x3, 0(x2) # store 0xbc89cae06cd23824 in memory
flh f6, 0(x2) # load 0xbc89cae06cd23824 from memory into f6
li x3, 0x3183b4c27df00a79 # load x3 with value 0x3183b4c27df00a79
sw x3, 0(x2) # store 0x3183b4c27df00a79 in memory
flh f1, 0(x2) # load 0x3183b4c27df00a79 from memory into f1
fadd.h f11, f6, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x15, 0x683bb20f34a9cab0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5079727fcd089c1c # load x3 with value 0x5079727fcd089c1c
sw x3, 0(x2) # store 0x5079727fcd089c1c in memory
flh f7, 0(x2) # load 0x5079727fcd089c1c from memory into f7
li x3, 0xe3f1b9f34cc2181e # load x3 with value 0xe3f1b9f34cc2181e
sw x3, 0(x2) # store 0xe3f1b9f34cc2181e in memory
flh f23, 0(x2) # load 0xe3f1b9f34cc2181e from memory into f23
fadd.h f15, f7, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x9, 0xe7dd76ae17deea9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x549fb4e5bd2969e1 # load x3 with value 0x549fb4e5bd2969e1
sw x3, 0(x2) # store 0x549fb4e5bd2969e1 in memory
flh f8, 0(x2) # load 0x549fb4e5bd2969e1 from memory into f8
li x3, 0x5125d5f7fc3b2220 # load x3 with value 0x5125d5f7fc3b2220
sw x3, 0(x2) # store 0x5125d5f7fc3b2220 in memory
flh f13, 0(x2) # load 0x5125d5f7fc3b2220 from memory into f13
fadd.h f9, f8, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x17, 0x8e06dcedbc050d60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7edba62c219dda0d # load x3 with value 0x7edba62c219dda0d
sw x3, 0(x2) # store 0x7edba62c219dda0d in memory
flh f9, 0(x2) # load 0x7edba62c219dda0d from memory into f9
li x3, 0x4cbb6a756f04ab3 # load x3 with value 0x4cbb6a756f04ab3
sw x3, 0(x2) # store 0x4cbb6a756f04ab3 in memory
flh f22, 0(x2) # load 0x4cbb6a756f04ab3 from memory into f22
fadd.h f17, f9, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x17, 0x87756baaa2a5cef4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x937e329e596a5479 # load x3 with value 0x937e329e596a5479
sw x3, 0(x2) # store 0x937e329e596a5479 in memory
flh f10, 0(x2) # load 0x937e329e596a5479 from memory into f10
li x3, 0x97f5c378b9292a03 # load x3 with value 0x97f5c378b9292a03
sw x3, 0(x2) # store 0x97f5c378b9292a03 in memory
flh f29, 0(x2) # load 0x97f5c378b9292a03 from memory into f29
fadd.h f17, f10, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x5, 0xa35ad0a406573320 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3d1abf630e849b8e # load x3 with value 0x3d1abf630e849b8e
sw x3, 0(x2) # store 0x3d1abf630e849b8e in memory
flh f11, 0(x2) # load 0x3d1abf630e849b8e from memory into f11
li x3, 0x7ebf3591e82bed5e # load x3 with value 0x7ebf3591e82bed5e
sw x3, 0(x2) # store 0x7ebf3591e82bed5e in memory
flh f17, 0(x2) # load 0x7ebf3591e82bed5e from memory into f17
fadd.h f5, f11, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x25, 0xd3506489946132d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x61ff771fae40b216 # load x3 with value 0x61ff771fae40b216
sw x3, 0(x2) # store 0x61ff771fae40b216 in memory
flh f12, 0(x2) # load 0x61ff771fae40b216 from memory into f12
li x3, 0x7e5cd18add6f1d95 # load x3 with value 0x7e5cd18add6f1d95
sw x3, 0(x2) # store 0x7e5cd18add6f1d95 in memory
flh f27, 0(x2) # load 0x7e5cd18add6f1d95 from memory into f27
fadd.h f25, f12, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x20, 0x90df03bef396f5a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbc4c22d32eff409f # load x3 with value 0xbc4c22d32eff409f
sw x3, 0(x2) # store 0xbc4c22d32eff409f in memory
flh f13, 0(x2) # load 0xbc4c22d32eff409f from memory into f13
li x3, 0xc7ee09f7a6bcf4dd # load x3 with value 0xc7ee09f7a6bcf4dd
sw x3, 0(x2) # store 0xc7ee09f7a6bcf4dd in memory
flh f30, 0(x2) # load 0xc7ee09f7a6bcf4dd from memory into f30
fadd.h f20, f13, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x20, 0xae7fbabecc1a3b73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8ed82e1699d501c4 # load x3 with value 0x8ed82e1699d501c4
sw x3, 0(x2) # store 0x8ed82e1699d501c4 in memory
flh f14, 0(x2) # load 0x8ed82e1699d501c4 from memory into f14
li x3, 0x77634e8c10e741c9 # load x3 with value 0x77634e8c10e741c9
sw x3, 0(x2) # store 0x77634e8c10e741c9 in memory
flh f8, 0(x2) # load 0x77634e8c10e741c9 from memory into f8
fadd.h f20, f14, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x5, 0x68494e84b380c1ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff8fa032a7c5daea # load x3 with value 0xff8fa032a7c5daea
sw x3, 0(x2) # store 0xff8fa032a7c5daea in memory
flh f15, 0(x2) # load 0xff8fa032a7c5daea from memory into f15
li x3, 0x32008a6f23d46d5a # load x3 with value 0x32008a6f23d46d5a
sw x3, 0(x2) # store 0x32008a6f23d46d5a in memory
flh f13, 0(x2) # load 0x32008a6f23d46d5a from memory into f13
fadd.h f5, f15, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x30, 0x7c9acdc559ab4267 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x12d619baad6e8bd1 # load x3 with value 0x12d619baad6e8bd1
sw x3, 0(x2) # store 0x12d619baad6e8bd1 in memory
flh f16, 0(x2) # load 0x12d619baad6e8bd1 from memory into f16
li x3, 0x23e4b24e78edee24 # load x3 with value 0x23e4b24e78edee24
sw x3, 0(x2) # store 0x23e4b24e78edee24 in memory
flh f27, 0(x2) # load 0x23e4b24e78edee24 from memory into f27
fadd.h f30, f16, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x29, 0xb7c576fb2dfda017 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf5a95b7a2c902f84 # load x3 with value 0xf5a95b7a2c902f84
sw x3, 0(x2) # store 0xf5a95b7a2c902f84 in memory
flh f17, 0(x2) # load 0xf5a95b7a2c902f84 from memory into f17
li x3, 0x61ee6ff9f6a60da3 # load x3 with value 0x61ee6ff9f6a60da3
sw x3, 0(x2) # store 0x61ee6ff9f6a60da3 in memory
flh f13, 0(x2) # load 0x61ee6ff9f6a60da3 from memory into f13
fadd.h f29, f17, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x27, 0xffb61fbee3109b59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x63665faa0e765ac9 # load x3 with value 0x63665faa0e765ac9
sw x3, 0(x2) # store 0x63665faa0e765ac9 in memory
flh f18, 0(x2) # load 0x63665faa0e765ac9 from memory into f18
li x3, 0xf4b067798c980b41 # load x3 with value 0xf4b067798c980b41
sw x3, 0(x2) # store 0xf4b067798c980b41 in memory
flh f20, 0(x2) # load 0xf4b067798c980b41 from memory into f20
fadd.h f27, f18, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x14, 0xe5f77b007798b5f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f52ae3a8debc3b5 # load x3 with value 0x3f52ae3a8debc3b5
sw x3, 0(x2) # store 0x3f52ae3a8debc3b5 in memory
flh f19, 0(x2) # load 0x3f52ae3a8debc3b5 from memory into f19
li x3, 0xc08e1861426274f4 # load x3 with value 0xc08e1861426274f4
sw x3, 0(x2) # store 0xc08e1861426274f4 in memory
flh f21, 0(x2) # load 0xc08e1861426274f4 from memory into f21
fadd.h f14, f19, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x7, 0xaec880f6f18fef71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x751912ccc8af1ff9 # load x3 with value 0x751912ccc8af1ff9
sw x3, 0(x2) # store 0x751912ccc8af1ff9 in memory
flh f20, 0(x2) # load 0x751912ccc8af1ff9 from memory into f20
li x3, 0x65a309729a78723c # load x3 with value 0x65a309729a78723c
sw x3, 0(x2) # store 0x65a309729a78723c in memory
flh f30, 0(x2) # load 0x65a309729a78723c from memory into f30
fadd.h f7, f20, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x18, 0xd5536a66ee4f002b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd9ddbf6983e6ed37 # load x3 with value 0xd9ddbf6983e6ed37
sw x3, 0(x2) # store 0xd9ddbf6983e6ed37 in memory
flh f21, 0(x2) # load 0xd9ddbf6983e6ed37 from memory into f21
li x3, 0xa213e4310b035774 # load x3 with value 0xa213e4310b035774
sw x3, 0(x2) # store 0xa213e4310b035774 in memory
flh f25, 0(x2) # load 0xa213e4310b035774 from memory into f25
fadd.h f18, f21, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x20, 0xe44f6124e18a4e33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcec0718891c95db3 # load x3 with value 0xcec0718891c95db3
sw x3, 0(x2) # store 0xcec0718891c95db3 in memory
flh f22, 0(x2) # load 0xcec0718891c95db3 from memory into f22
li x3, 0x2e6c44a6f78cb35b # load x3 with value 0x2e6c44a6f78cb35b
sw x3, 0(x2) # store 0x2e6c44a6f78cb35b in memory
flh f29, 0(x2) # load 0x2e6c44a6f78cb35b from memory into f29
fadd.h f20, f22, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x8, 0x97c00d44cbc7900c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe0dad9b82531a4d9 # load x3 with value 0xe0dad9b82531a4d9
sw x3, 0(x2) # store 0xe0dad9b82531a4d9 in memory
flh f23, 0(x2) # load 0xe0dad9b82531a4d9 from memory into f23
li x3, 0x14916a8b9e72caab # load x3 with value 0x14916a8b9e72caab
sw x3, 0(x2) # store 0x14916a8b9e72caab in memory
flh f15, 0(x2) # load 0x14916a8b9e72caab from memory into f15
fadd.h f8, f23, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x11, 0xed83eb11aabb449a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x526fe25dff30f1cb # load x3 with value 0x526fe25dff30f1cb
sw x3, 0(x2) # store 0x526fe25dff30f1cb in memory
flh f24, 0(x2) # load 0x526fe25dff30f1cb from memory into f24
li x3, 0x98c5d5e6906c336d # load x3 with value 0x98c5d5e6906c336d
sw x3, 0(x2) # store 0x98c5d5e6906c336d in memory
flh f17, 0(x2) # load 0x98c5d5e6906c336d from memory into f17
fadd.h f11, f24, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x4, 0xdb2a5ad765d88db7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x61cf3b64f71581be # load x3 with value 0x61cf3b64f71581be
sw x3, 0(x2) # store 0x61cf3b64f71581be in memory
flh f25, 0(x2) # load 0x61cf3b64f71581be from memory into f25
li x3, 0x11936977a71294e3 # load x3 with value 0x11936977a71294e3
sw x3, 0(x2) # store 0x11936977a71294e3 in memory
flh f27, 0(x2) # load 0x11936977a71294e3 from memory into f27
fadd.h f4, f25, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x28, 0x78cede31229dc509 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe3a7e1b6182487d5 # load x3 with value 0xe3a7e1b6182487d5
sw x3, 0(x2) # store 0xe3a7e1b6182487d5 in memory
flh f26, 0(x2) # load 0xe3a7e1b6182487d5 from memory into f26
li x3, 0x95b7ec118dffd3e5 # load x3 with value 0x95b7ec118dffd3e5
sw x3, 0(x2) # store 0x95b7ec118dffd3e5 in memory
flh f9, 0(x2) # load 0x95b7ec118dffd3e5 from memory into f9
fadd.h f28, f26, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x20, 0x8124504f0532d0a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6e70d04f30ad23df # load x3 with value 0x6e70d04f30ad23df
sw x3, 0(x2) # store 0x6e70d04f30ad23df in memory
flh f27, 0(x2) # load 0x6e70d04f30ad23df from memory into f27
li x3, 0xaea30655f3b5e9b6 # load x3 with value 0xaea30655f3b5e9b6
sw x3, 0(x2) # store 0xaea30655f3b5e9b6 in memory
flh f1, 0(x2) # load 0xaea30655f3b5e9b6 from memory into f1
fadd.h f20, f27, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x7, 0x77c5a8bf99d4172e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdaee893ff1bb4b16 # load x3 with value 0xdaee893ff1bb4b16
sw x3, 0(x2) # store 0xdaee893ff1bb4b16 in memory
flh f28, 0(x2) # load 0xdaee893ff1bb4b16 from memory into f28
li x3, 0x526983eca13ed334 # load x3 with value 0x526983eca13ed334
sw x3, 0(x2) # store 0x526983eca13ed334 in memory
flh f27, 0(x2) # load 0x526983eca13ed334 from memory into f27
fadd.h f7, f28, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x11, 0xbf68e77dfd7bf4ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4f62498202569e96 # load x3 with value 0x4f62498202569e96
sw x3, 0(x2) # store 0x4f62498202569e96 in memory
flh f29, 0(x2) # load 0x4f62498202569e96 from memory into f29
li x3, 0x38b08c64bea192c7 # load x3 with value 0x38b08c64bea192c7
sw x3, 0(x2) # store 0x38b08c64bea192c7 in memory
flh f5, 0(x2) # load 0x38b08c64bea192c7 from memory into f5
fadd.h f11, f29, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x10, 0xf7d4e3ad127dd7df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2013c05676439be1 # load x3 with value 0x2013c05676439be1
sw x3, 0(x2) # store 0x2013c05676439be1 in memory
flh f30, 0(x2) # load 0x2013c05676439be1 from memory into f30
li x3, 0xd422544d81a8becd # load x3 with value 0xd422544d81a8becd
sw x3, 0(x2) # store 0xd422544d81a8becd in memory
flh f2, 0(x2) # load 0xd422544d81a8becd from memory into f2
fadd.h f10, f30, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x10, 0x7b50435b697d91f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x36c3109819b02787 # load x3 with value 0x36c3109819b02787
sw x3, 0(x2) # store 0x36c3109819b02787 in memory
flh f31, 0(x2) # load 0x36c3109819b02787 from memory into f31
li x3, 0xf1c5bd7671abdb4a # load x3 with value 0xf1c5bd7671abdb4a
sw x3, 0(x2) # store 0xf1c5bd7671abdb4a in memory
flh f8, 0(x2) # load 0xf1c5bd7671abdb4a from memory into f8
fadd.h f10, f31, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x15, 0x753507c930fa44ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x625a0fdbd642e7e8 # load x3 with value 0x625a0fdbd642e7e8
sw x3, 0(x2) # store 0x625a0fdbd642e7e8 in memory
flh f22, 0(x2) # load 0x625a0fdbd642e7e8 from memory into f22
li x3, 0x5a0facb93c94eef2 # load x3 with value 0x5a0facb93c94eef2
sw x3, 0(x2) # store 0x5a0facb93c94eef2 in memory
flh f0, 0(x2) # load 0x5a0facb93c94eef2 from memory into f0
fadd.h f15, f22, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x6, 0xe79f4b2d18557126 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xca8097f8d54e8660 # load x3 with value 0xca8097f8d54e8660
sw x3, 0(x2) # store 0xca8097f8d54e8660 in memory
flh f20, 0(x2) # load 0xca8097f8d54e8660 from memory into f20
li x3, 0x1dc7053d2268a4ed # load x3 with value 0x1dc7053d2268a4ed
sw x3, 0(x2) # store 0x1dc7053d2268a4ed in memory
flh f1, 0(x2) # load 0x1dc7053d2268a4ed from memory into f1
fadd.h f6, f20, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x22, 0x9b636988af53f457 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa4f9c50d6a6d8dce # load x3 with value 0xa4f9c50d6a6d8dce
sw x3, 0(x2) # store 0xa4f9c50d6a6d8dce in memory
flh f10, 0(x2) # load 0xa4f9c50d6a6d8dce from memory into f10
li x3, 0xd090c774e7339a37 # load x3 with value 0xd090c774e7339a37
sw x3, 0(x2) # store 0xd090c774e7339a37 in memory
flh f2, 0(x2) # load 0xd090c774e7339a37 from memory into f2
fadd.h f22, f10, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x19, 0xb3c3bbc8282a316b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8b9f750315739387 # load x3 with value 0x8b9f750315739387
sw x3, 0(x2) # store 0x8b9f750315739387 in memory
flh f27, 0(x2) # load 0x8b9f750315739387 from memory into f27
li x3, 0xe788fd135827f602 # load x3 with value 0xe788fd135827f602
sw x3, 0(x2) # store 0xe788fd135827f602 in memory
flh f3, 0(x2) # load 0xe788fd135827f602 from memory into f3
fadd.h f19, f27, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x22, 0x3a4bad68d9136012 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x628492bc7f2cbf18 # load x3 with value 0x628492bc7f2cbf18
sw x3, 0(x2) # store 0x628492bc7f2cbf18 in memory
flh f29, 0(x2) # load 0x628492bc7f2cbf18 from memory into f29
li x3, 0x8f85a6f3c9809a10 # load x3 with value 0x8f85a6f3c9809a10
sw x3, 0(x2) # store 0x8f85a6f3c9809a10 in memory
flh f4, 0(x2) # load 0x8f85a6f3c9809a10 from memory into f4
fadd.h f22, f29, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x30, 0xb941c6fcc42ef732 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1575c6449cbf0425 # load x3 with value 0x1575c6449cbf0425
sw x3, 0(x2) # store 0x1575c6449cbf0425 in memory
flh f8, 0(x2) # load 0x1575c6449cbf0425 from memory into f8
li x3, 0xc670e930ed0bccfc # load x3 with value 0xc670e930ed0bccfc
sw x3, 0(x2) # store 0xc670e930ed0bccfc in memory
flh f5, 0(x2) # load 0xc670e930ed0bccfc from memory into f5
fadd.h f30, f8, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x7, 0x027d93df2fd19ced # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8ea11c634f6df46c # load x3 with value 0x8ea11c634f6df46c
sw x3, 0(x2) # store 0x8ea11c634f6df46c in memory
flh f28, 0(x2) # load 0x8ea11c634f6df46c from memory into f28
li x3, 0x9a1dd6da1792459c # load x3 with value 0x9a1dd6da1792459c
sw x3, 0(x2) # store 0x9a1dd6da1792459c in memory
flh f6, 0(x2) # load 0x9a1dd6da1792459c from memory into f6
fadd.h f7, f28, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x17, 0x8dfc906f9551e8f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x41f3235988f5f9 # load x3 with value 0x41f3235988f5f9
sw x3, 0(x2) # store 0x41f3235988f5f9 in memory
flh f5, 0(x2) # load 0x41f3235988f5f9 from memory into f5
li x3, 0x63359ff5d279899d # load x3 with value 0x63359ff5d279899d
sw x3, 0(x2) # store 0x63359ff5d279899d in memory
flh f7, 0(x2) # load 0x63359ff5d279899d from memory into f7
fadd.h f17, f5, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x25, 0x76c348d574abcdec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcfb67377e1728395 # load x3 with value 0xcfb67377e1728395
sw x3, 0(x2) # store 0xcfb67377e1728395 in memory
flh f29, 0(x2) # load 0xcfb67377e1728395 from memory into f29
li x3, 0x4f4a5878bf47d5f # load x3 with value 0x4f4a5878bf47d5f
sw x3, 0(x2) # store 0x4f4a5878bf47d5f in memory
flh f8, 0(x2) # load 0x4f4a5878bf47d5f from memory into f8
fadd.h f25, f29, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x10, 0x31a18b4700646d80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe16b3566814e5c7a # load x3 with value 0xe16b3566814e5c7a
sw x3, 0(x2) # store 0xe16b3566814e5c7a in memory
flh f17, 0(x2) # load 0xe16b3566814e5c7a from memory into f17
li x3, 0x78935b823ff77056 # load x3 with value 0x78935b823ff77056
sw x3, 0(x2) # store 0x78935b823ff77056 in memory
flh f9, 0(x2) # load 0x78935b823ff77056 from memory into f9
fadd.h f10, f17, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x8, 0xf1a2709f46eb1570 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa5015206bc431dfc # load x3 with value 0xa5015206bc431dfc
sw x3, 0(x2) # store 0xa5015206bc431dfc in memory
flh f16, 0(x2) # load 0xa5015206bc431dfc from memory into f16
li x3, 0xbea7f2f2ac162185 # load x3 with value 0xbea7f2f2ac162185
sw x3, 0(x2) # store 0xbea7f2f2ac162185 in memory
flh f10, 0(x2) # load 0xbea7f2f2ac162185 from memory into f10
fadd.h f8, f16, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x12, 0x600fc61aef8257f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe0e404e9cd49ccc9 # load x3 with value 0xe0e404e9cd49ccc9
sw x3, 0(x2) # store 0xe0e404e9cd49ccc9 in memory
flh f25, 0(x2) # load 0xe0e404e9cd49ccc9 from memory into f25
li x3, 0x23a8f5d7aa633e2e # load x3 with value 0x23a8f5d7aa633e2e
sw x3, 0(x2) # store 0x23a8f5d7aa633e2e in memory
flh f11, 0(x2) # load 0x23a8f5d7aa633e2e from memory into f11
fadd.h f12, f25, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x5, 0x540e699fd36a560c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fb7bb611d9c39b3 # load x3 with value 0x3fb7bb611d9c39b3
sw x3, 0(x2) # store 0x3fb7bb611d9c39b3 in memory
flh f15, 0(x2) # load 0x3fb7bb611d9c39b3 from memory into f15
li x3, 0x289dd202748b0d0d # load x3 with value 0x289dd202748b0d0d
sw x3, 0(x2) # store 0x289dd202748b0d0d in memory
flh f12, 0(x2) # load 0x289dd202748b0d0d from memory into f12
fadd.h f5, f15, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x13, 0x4cdbf5c6718a4e0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6b79ff2e6c3d6a59 # load x3 with value 0x6b79ff2e6c3d6a59
sw x3, 0(x2) # store 0x6b79ff2e6c3d6a59 in memory
flh f19, 0(x2) # load 0x6b79ff2e6c3d6a59 from memory into f19
li x3, 0x646927ac17556c4a # load x3 with value 0x646927ac17556c4a
sw x3, 0(x2) # store 0x646927ac17556c4a in memory
flh f13, 0(x2) # load 0x646927ac17556c4a from memory into f13
fadd.h f13, f19, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x21, 0x57b503252c2bb4e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb91c43613bc8e29e # load x3 with value 0xb91c43613bc8e29e
sw x3, 0(x2) # store 0xb91c43613bc8e29e in memory
flh f11, 0(x2) # load 0xb91c43613bc8e29e from memory into f11
li x3, 0xf302289b6817661b # load x3 with value 0xf302289b6817661b
sw x3, 0(x2) # store 0xf302289b6817661b in memory
flh f14, 0(x2) # load 0xf302289b6817661b from memory into f14
fadd.h f21, f11, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x10, 0x65199f687a4ce419 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xac6bf58e7d3ccdd3 # load x3 with value 0xac6bf58e7d3ccdd3
sw x3, 0(x2) # store 0xac6bf58e7d3ccdd3 in memory
flh f12, 0(x2) # load 0xac6bf58e7d3ccdd3 from memory into f12
li x3, 0xa1526f335c6c3955 # load x3 with value 0xa1526f335c6c3955
sw x3, 0(x2) # store 0xa1526f335c6c3955 in memory
flh f15, 0(x2) # load 0xa1526f335c6c3955 from memory into f15
fadd.h f10, f12, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x10, 0x6d81645d8fa5c0f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5ea735d7ad8c65f6 # load x3 with value 0x5ea735d7ad8c65f6
sw x3, 0(x2) # store 0x5ea735d7ad8c65f6 in memory
flh f14, 0(x2) # load 0x5ea735d7ad8c65f6 from memory into f14
li x3, 0x5a3251029772f8ef # load x3 with value 0x5a3251029772f8ef
sw x3, 0(x2) # store 0x5a3251029772f8ef in memory
flh f16, 0(x2) # load 0x5a3251029772f8ef from memory into f16
fadd.h f10, f14, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x14, 0x5a0255c90dc90e13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcb1f5e6cb780e541 # load x3 with value 0xcb1f5e6cb780e541
sw x3, 0(x2) # store 0xcb1f5e6cb780e541 in memory
flh f2, 0(x2) # load 0xcb1f5e6cb780e541 from memory into f2
li x3, 0x6a3828f1939df5b2 # load x3 with value 0x6a3828f1939df5b2
sw x3, 0(x2) # store 0x6a3828f1939df5b2 in memory
flh f17, 0(x2) # load 0x6a3828f1939df5b2 from memory into f17
fadd.h f14, f2, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x24, 0x3d2f8004da217803 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2502c97dfbe2ed0d # load x3 with value 0x2502c97dfbe2ed0d
sw x3, 0(x2) # store 0x2502c97dfbe2ed0d in memory
flh f29, 0(x2) # load 0x2502c97dfbe2ed0d from memory into f29
li x3, 0xa8632aa4617a8e02 # load x3 with value 0xa8632aa4617a8e02
sw x3, 0(x2) # store 0xa8632aa4617a8e02 in memory
flh f18, 0(x2) # load 0xa8632aa4617a8e02 from memory into f18
fadd.h f24, f29, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x25, 0x87e5de3c8bcc8fb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5c6ce96b387dd20e # load x3 with value 0x5c6ce96b387dd20e
sw x3, 0(x2) # store 0x5c6ce96b387dd20e in memory
flh f1, 0(x2) # load 0x5c6ce96b387dd20e from memory into f1
li x3, 0x6cca20321dda870f # load x3 with value 0x6cca20321dda870f
sw x3, 0(x2) # store 0x6cca20321dda870f in memory
flh f19, 0(x2) # load 0x6cca20321dda870f from memory into f19
fadd.h f25, f1, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x13, 0xde39f1d2f63c0733 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xda616cd6592a3769 # load x3 with value 0xda616cd6592a3769
sw x3, 0(x2) # store 0xda616cd6592a3769 in memory
flh f15, 0(x2) # load 0xda616cd6592a3769 from memory into f15
li x3, 0x9cbb362e0181285f # load x3 with value 0x9cbb362e0181285f
sw x3, 0(x2) # store 0x9cbb362e0181285f in memory
flh f20, 0(x2) # load 0x9cbb362e0181285f from memory into f20
fadd.h f13, f15, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x12, 0x2a47d92023dfc320 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2c18b090e7205ed3 # load x3 with value 0x2c18b090e7205ed3
sw x3, 0(x2) # store 0x2c18b090e7205ed3 in memory
flh f1, 0(x2) # load 0x2c18b090e7205ed3 from memory into f1
li x3, 0x592a6e54de998d45 # load x3 with value 0x592a6e54de998d45
sw x3, 0(x2) # store 0x592a6e54de998d45 in memory
flh f21, 0(x2) # load 0x592a6e54de998d45 from memory into f21
fadd.h f12, f1, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x2, 0xe11213cfd6e0bec1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x49b7f80b26df6013 # load x3 with value 0x49b7f80b26df6013
sw x3, 0(x2) # store 0x49b7f80b26df6013 in memory
flh f17, 0(x2) # load 0x49b7f80b26df6013 from memory into f17
li x3, 0xe5581177691850e6 # load x3 with value 0xe5581177691850e6
sw x3, 0(x2) # store 0xe5581177691850e6 in memory
flh f22, 0(x2) # load 0xe5581177691850e6 from memory into f22
fadd.h f2, f17, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x20, 0xcb697438ce0e9341 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2ea2c935f9baa16e # load x3 with value 0x2ea2c935f9baa16e
sw x3, 0(x2) # store 0x2ea2c935f9baa16e in memory
flh f17, 0(x2) # load 0x2ea2c935f9baa16e from memory into f17
li x3, 0xb88e1fc87b435fae # load x3 with value 0xb88e1fc87b435fae
sw x3, 0(x2) # store 0xb88e1fc87b435fae in memory
flh f23, 0(x2) # load 0xb88e1fc87b435fae from memory into f23
fadd.h f20, f17, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x14, 0xdad5c62b0e7dcb63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x75453526f7a04e18 # load x3 with value 0x75453526f7a04e18
sw x3, 0(x2) # store 0x75453526f7a04e18 in memory
flh f9, 0(x2) # load 0x75453526f7a04e18 from memory into f9
li x3, 0x3be476fd59b00590 # load x3 with value 0x3be476fd59b00590
sw x3, 0(x2) # store 0x3be476fd59b00590 in memory
flh f24, 0(x2) # load 0x3be476fd59b00590 from memory into f24
fadd.h f14, f9, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x26, 0x81155fa66439b1b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6bf049296f31eb59 # load x3 with value 0x6bf049296f31eb59
sw x3, 0(x2) # store 0x6bf049296f31eb59 in memory
flh f4, 0(x2) # load 0x6bf049296f31eb59 from memory into f4
li x3, 0xec932ce9839029ce # load x3 with value 0xec932ce9839029ce
sw x3, 0(x2) # store 0xec932ce9839029ce in memory
flh f25, 0(x2) # load 0xec932ce9839029ce from memory into f25
fadd.h f26, f4, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x11, 0x9996f818c3a62713 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x61bf62b8626c471e # load x3 with value 0x61bf62b8626c471e
sw x3, 0(x2) # store 0x61bf62b8626c471e in memory
flh f8, 0(x2) # load 0x61bf62b8626c471e from memory into f8
li x3, 0xa9b75e17e27884ef # load x3 with value 0xa9b75e17e27884ef
sw x3, 0(x2) # store 0xa9b75e17e27884ef in memory
flh f26, 0(x2) # load 0xa9b75e17e27884ef from memory into f26
fadd.h f11, f8, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x23, 0xe5c47855608848a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x70ef6985016ff282 # load x3 with value 0x70ef6985016ff282
sw x3, 0(x2) # store 0x70ef6985016ff282 in memory
flh f31, 0(x2) # load 0x70ef6985016ff282 from memory into f31
li x3, 0xcbbe8ae8a2bf592b # load x3 with value 0xcbbe8ae8a2bf592b
sw x3, 0(x2) # store 0xcbbe8ae8a2bf592b in memory
flh f27, 0(x2) # load 0xcbbe8ae8a2bf592b from memory into f27
fadd.h f23, f31, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x12, 0x8f773ee4344d5186 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x23b8cb92092c7195 # load x3 with value 0x23b8cb92092c7195
sw x3, 0(x2) # store 0x23b8cb92092c7195 in memory
flh f3, 0(x2) # load 0x23b8cb92092c7195 from memory into f3
li x3, 0x3ee037d49d4c149b # load x3 with value 0x3ee037d49d4c149b
sw x3, 0(x2) # store 0x3ee037d49d4c149b in memory
flh f28, 0(x2) # load 0x3ee037d49d4c149b from memory into f28
fadd.h f12, f3, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x21, 0xcf49079b06dddde2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4a5a6bede3e59e4 # load x3 with value 0x4a5a6bede3e59e4
sw x3, 0(x2) # store 0x4a5a6bede3e59e4 in memory
flh f17, 0(x2) # load 0x4a5a6bede3e59e4 from memory into f17
li x3, 0xe351fa53933c2d8d # load x3 with value 0xe351fa53933c2d8d
sw x3, 0(x2) # store 0xe351fa53933c2d8d in memory
flh f29, 0(x2) # load 0xe351fa53933c2d8d from memory into f29
fadd.h f21, f17, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x15, 0x551e37b9833f462e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6023b3a19a16d9fa # load x3 with value 0x6023b3a19a16d9fa
sw x3, 0(x2) # store 0x6023b3a19a16d9fa in memory
flh f9, 0(x2) # load 0x6023b3a19a16d9fa from memory into f9
li x3, 0x8ce1f16945c6c907 # load x3 with value 0x8ce1f16945c6c907
sw x3, 0(x2) # store 0x8ce1f16945c6c907 in memory
flh f30, 0(x2) # load 0x8ce1f16945c6c907 from memory into f30
fadd.h f15, f9, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x11, 0xbe0bf9d7f935fcac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3b5b966a0f450e09 # load x3 with value 0x3b5b966a0f450e09
sw x3, 0(x2) # store 0x3b5b966a0f450e09 in memory
flh f12, 0(x2) # load 0x3b5b966a0f450e09 from memory into f12
li x3, 0x910f419392ea8d8e # load x3 with value 0x910f419392ea8d8e
sw x3, 0(x2) # store 0x910f419392ea8d8e in memory
flh f31, 0(x2) # load 0x910f419392ea8d8e from memory into f31
fadd.h f11, f12, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
