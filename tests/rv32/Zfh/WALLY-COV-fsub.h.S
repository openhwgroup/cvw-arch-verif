///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zfh//WALLY-COV-fsub.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.767564
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
fsub.h f24, f23, f17 # perform first operation
fsub.h f3, f24, f13 # perform second operation

# Testcase cmp_gpr_hazard raw test
fsub.h f30, f28, f25 # perform first operation
fsub.h f23, f30, f30 # perform second operation

# Testcase cmp_gpr_hazard waw test
fsub.h f8, f11, f10 # perform first operation
fsub.h f8, f17, f20 # perform second operation

# Testcase cmp_gpr_hazard waw test
fsub.h f11, f29, f27 # perform first operation
fsub.h f11, f6, f23 # perform second operation

# Testcase cmp_gpr_hazard war test
fsub.h f4, f18, f12 # perform first operation
fsub.h f18, f12, f18 # perform second operation

# Testcase cmp_gpr_hazard war test
fsub.h f24, f28, f25 # perform first operation
fsub.h f25, f28, f14 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0x70cd9dd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa69c47e4 # load x3 with value 0xa69c47e4
sw x3, 0(x2) # store 0xa69c47e4 in memory
flh f0, 0(x2) # load 0xa69c47e4 from memory into f0
li x3, 0xd9cbca5e # load x3 with value 0xd9cbca5e
sw x3, 0(x2) # store 0xd9cbca5e in memory
flh f22, 0(x2) # load 0xd9cbca5e from memory into f22
fsub.h f0, f0, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0x469c0a63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x14b7fa87 # load x3 with value 0x14b7fa87
sw x3, 0(x2) # store 0x14b7fa87 in memory
flh f1, 0(x2) # load 0x14b7fa87 from memory into f1
li x3, 0x3dae234a # load x3 with value 0x3dae234a
sw x3, 0(x2) # store 0x3dae234a in memory
flh f24, 0(x2) # load 0x3dae234a from memory into f24
fsub.h f1, f1, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0xd5e9e479 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x30559217 # load x3 with value 0x30559217
sw x3, 0(x2) # store 0x30559217 in memory
flh f2, 0(x2) # load 0x30559217 from memory into f2
li x3, 0xc5c0323d # load x3 with value 0xc5c0323d
sw x3, 0(x2) # store 0xc5c0323d in memory
flh f22, 0(x2) # load 0xc5c0323d from memory into f22
fsub.h f2, f2, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0x387e3344 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7cf89586 # load x3 with value 0x7cf89586
sw x3, 0(x2) # store 0x7cf89586 in memory
flh f3, 0(x2) # load 0x7cf89586 from memory into f3
li x3, 0xaf7462cc # load x3 with value 0xaf7462cc
sw x3, 0(x2) # store 0xaf7462cc in memory
flh f10, 0(x2) # load 0xaf7462cc from memory into f10
fsub.h f3, f3, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0xd741e22e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfcebf21 # load x3 with value 0xbfcebf21
sw x3, 0(x2) # store 0xbfcebf21 in memory
flh f4, 0(x2) # load 0xbfcebf21 from memory into f4
li x3, 0x53c67124 # load x3 with value 0x53c67124
sw x3, 0(x2) # store 0x53c67124 in memory
flh f26, 0(x2) # load 0x53c67124 from memory into f26
fsub.h f4, f4, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0x4f3b52db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1200c05f # load x3 with value 0x1200c05f
sw x3, 0(x2) # store 0x1200c05f in memory
flh f5, 0(x2) # load 0x1200c05f from memory into f5
li x3, 0x420fdf8f # load x3 with value 0x420fdf8f
sw x3, 0(x2) # store 0x420fdf8f in memory
flh f27, 0(x2) # load 0x420fdf8f from memory into f27
fsub.h f5, f5, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0x9990609f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xafc33515 # load x3 with value 0xafc33515
sw x3, 0(x2) # store 0xafc33515 in memory
flh f6, 0(x2) # load 0xafc33515 from memory into f6
li x3, 0x6d8d3a32 # load x3 with value 0x6d8d3a32
sw x3, 0(x2) # store 0x6d8d3a32 in memory
flh f27, 0(x2) # load 0x6d8d3a32 from memory into f27
fsub.h f6, f6, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0xfbe0bc37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd0856ca6 # load x3 with value 0xd0856ca6
sw x3, 0(x2) # store 0xd0856ca6 in memory
flh f7, 0(x2) # load 0xd0856ca6 from memory into f7
li x3, 0x4eaae913 # load x3 with value 0x4eaae913
sw x3, 0(x2) # store 0x4eaae913 in memory
flh f5, 0(x2) # load 0x4eaae913 from memory into f5
fsub.h f7, f7, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0x3922ae88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x897054f9 # load x3 with value 0x897054f9
sw x3, 0(x2) # store 0x897054f9 in memory
flh f8, 0(x2) # load 0x897054f9 from memory into f8
li x3, 0xc81dccff # load x3 with value 0xc81dccff
sw x3, 0(x2) # store 0xc81dccff in memory
flh f11, 0(x2) # load 0xc81dccff from memory into f11
fsub.h f8, f8, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0x03d504e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x584173d6 # load x3 with value 0x584173d6
sw x3, 0(x2) # store 0x584173d6 in memory
flh f9, 0(x2) # load 0x584173d6 from memory into f9
li x3, 0xf37c1b56 # load x3 with value 0xf37c1b56
sw x3, 0(x2) # store 0xf37c1b56 in memory
flh f24, 0(x2) # load 0xf37c1b56 from memory into f24
fsub.h f9, f9, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0x6043142e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdab7389b # load x3 with value 0xdab7389b
sw x3, 0(x2) # store 0xdab7389b in memory
flh f10, 0(x2) # load 0xdab7389b from memory into f10
li x3, 0xadf1d240 # load x3 with value 0xadf1d240
sw x3, 0(x2) # store 0xadf1d240 in memory
flh f16, 0(x2) # load 0xadf1d240 from memory into f16
fsub.h f10, f10, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0x11a10daa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9898e7bc # load x3 with value 0x9898e7bc
sw x3, 0(x2) # store 0x9898e7bc in memory
flh f11, 0(x2) # load 0x9898e7bc from memory into f11
li x3, 0xaa59d8d9 # load x3 with value 0xaa59d8d9
sw x3, 0(x2) # store 0xaa59d8d9 in memory
flh f19, 0(x2) # load 0xaa59d8d9 from memory into f19
fsub.h f11, f11, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0xa99d4b1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0b2a5d52 # load x3 with value 0x0b2a5d52
sw x3, 0(x2) # store 0x0b2a5d52 in memory
flh f12, 0(x2) # load 0x0b2a5d52 from memory into f12
li x3, 0x71b7a2e4 # load x3 with value 0x71b7a2e4
sw x3, 0(x2) # store 0x71b7a2e4 in memory
flh f16, 0(x2) # load 0x71b7a2e4 from memory into f16
fsub.h f12, f12, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0xe081ddc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdda03a65 # load x3 with value 0xdda03a65
sw x3, 0(x2) # store 0xdda03a65 in memory
flh f13, 0(x2) # load 0xdda03a65 from memory into f13
li x3, 0xffaa8dc1 # load x3 with value 0xffaa8dc1
sw x3, 0(x2) # store 0xffaa8dc1 in memory
flh f28, 0(x2) # load 0xffaa8dc1 from memory into f28
fsub.h f13, f13, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0xa1df1fcf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4d12539c # load x3 with value 0x4d12539c
sw x3, 0(x2) # store 0x4d12539c in memory
flh f14, 0(x2) # load 0x4d12539c from memory into f14
li x3, 0x3a503056 # load x3 with value 0x3a503056
sw x3, 0(x2) # store 0x3a503056 in memory
flh f30, 0(x2) # load 0x3a503056 from memory into f30
fsub.h f14, f14, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0xa8296e6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x59201431 # load x3 with value 0x59201431
sw x3, 0(x2) # store 0x59201431 in memory
flh f15, 0(x2) # load 0x59201431 from memory into f15
li x3, 0x7902193e # load x3 with value 0x7902193e
sw x3, 0(x2) # store 0x7902193e in memory
flh f21, 0(x2) # load 0x7902193e from memory into f21
fsub.h f15, f15, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0x3cafb504 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaf6550cf # load x3 with value 0xaf6550cf
sw x3, 0(x2) # store 0xaf6550cf in memory
flh f16, 0(x2) # load 0xaf6550cf from memory into f16
li x3, 0xdaa742ae # load x3 with value 0xdaa742ae
sw x3, 0(x2) # store 0xdaa742ae in memory
flh f22, 0(x2) # load 0xdaa742ae from memory into f22
fsub.h f16, f16, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0x16936ce2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4fd3d6c3 # load x3 with value 0x4fd3d6c3
sw x3, 0(x2) # store 0x4fd3d6c3 in memory
flh f17, 0(x2) # load 0x4fd3d6c3 from memory into f17
li x3, 0x29cf4b39 # load x3 with value 0x29cf4b39
sw x3, 0(x2) # store 0x29cf4b39 in memory
flh f27, 0(x2) # load 0x29cf4b39 from memory into f27
fsub.h f17, f17, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0x8fa8a63d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x56d3ef63 # load x3 with value 0x56d3ef63
sw x3, 0(x2) # store 0x56d3ef63 in memory
flh f18, 0(x2) # load 0x56d3ef63 from memory into f18
li x3, 0xdbf2239a # load x3 with value 0xdbf2239a
sw x3, 0(x2) # store 0xdbf2239a in memory
flh f3, 0(x2) # load 0xdbf2239a from memory into f3
fsub.h f18, f18, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0xd9a57709 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2a0c65a3 # load x3 with value 0x2a0c65a3
sw x3, 0(x2) # store 0x2a0c65a3 in memory
flh f19, 0(x2) # load 0x2a0c65a3 from memory into f19
li x3, 0xb94ff127 # load x3 with value 0xb94ff127
sw x3, 0(x2) # store 0xb94ff127 in memory
flh f30, 0(x2) # load 0xb94ff127 from memory into f30
fsub.h f19, f19, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0x040dfd95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8262333c # load x3 with value 0x8262333c
sw x3, 0(x2) # store 0x8262333c in memory
flh f20, 0(x2) # load 0x8262333c from memory into f20
li x3, 0x16063567 # load x3 with value 0x16063567
sw x3, 0(x2) # store 0x16063567 in memory
flh f30, 0(x2) # load 0x16063567 from memory into f30
fsub.h f20, f20, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0xa53925d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc1a0dd1a # load x3 with value 0xc1a0dd1a
sw x3, 0(x2) # store 0xc1a0dd1a in memory
flh f21, 0(x2) # load 0xc1a0dd1a from memory into f21
li x3, 0x22bcb475 # load x3 with value 0x22bcb475
sw x3, 0(x2) # store 0x22bcb475 in memory
flh f15, 0(x2) # load 0x22bcb475 from memory into f15
fsub.h f21, f21, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0x4827d561 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x084cb70e # load x3 with value 0x084cb70e
sw x3, 0(x2) # store 0x084cb70e in memory
flh f22, 0(x2) # load 0x084cb70e from memory into f22
li x3, 0xfcd4501b # load x3 with value 0xfcd4501b
sw x3, 0(x2) # store 0xfcd4501b in memory
flh f8, 0(x2) # load 0xfcd4501b from memory into f8
fsub.h f22, f22, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0xf369bbe3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ca72613 # load x3 with value 0x7ca72613
sw x3, 0(x2) # store 0x7ca72613 in memory
flh f23, 0(x2) # load 0x7ca72613 from memory into f23
li x3, 0x8c496114 # load x3 with value 0x8c496114
sw x3, 0(x2) # store 0x8c496114 in memory
flh f15, 0(x2) # load 0x8c496114 from memory into f15
fsub.h f23, f23, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0x0db4a677 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa07caaae # load x3 with value 0xa07caaae
sw x3, 0(x2) # store 0xa07caaae in memory
flh f24, 0(x2) # load 0xa07caaae from memory into f24
li x3, 0xf4f06908 # load x3 with value 0xf4f06908
sw x3, 0(x2) # store 0xf4f06908 in memory
flh f14, 0(x2) # load 0xf4f06908 from memory into f14
fsub.h f24, f24, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0x91c30e9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x571fdeb2 # load x3 with value 0x571fdeb2
sw x3, 0(x2) # store 0x571fdeb2 in memory
flh f25, 0(x2) # load 0x571fdeb2 from memory into f25
li x3, 0x479acd4c # load x3 with value 0x479acd4c
sw x3, 0(x2) # store 0x479acd4c in memory
flh f21, 0(x2) # load 0x479acd4c from memory into f21
fsub.h f25, f25, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0x32dc16d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x52d4ab6b # load x3 with value 0x52d4ab6b
sw x3, 0(x2) # store 0x52d4ab6b in memory
flh f26, 0(x2) # load 0x52d4ab6b from memory into f26
li x3, 0x044682b6 # load x3 with value 0x044682b6
sw x3, 0(x2) # store 0x044682b6 in memory
flh f22, 0(x2) # load 0x044682b6 from memory into f22
fsub.h f26, f26, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0x903ae914 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x90e3aa66 # load x3 with value 0x90e3aa66
sw x3, 0(x2) # store 0x90e3aa66 in memory
flh f27, 0(x2) # load 0x90e3aa66 from memory into f27
li x3, 0xc0a6cab6 # load x3 with value 0xc0a6cab6
sw x3, 0(x2) # store 0xc0a6cab6 in memory
flh f20, 0(x2) # load 0xc0a6cab6 from memory into f20
fsub.h f27, f27, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0x40229104 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x50e99f77 # load x3 with value 0x50e99f77
sw x3, 0(x2) # store 0x50e99f77 in memory
flh f28, 0(x2) # load 0x50e99f77 from memory into f28
li x3, 0xc8815a61 # load x3 with value 0xc8815a61
sw x3, 0(x2) # store 0xc8815a61 in memory
flh f23, 0(x2) # load 0xc8815a61 from memory into f23
fsub.h f28, f28, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0x007b309c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6aa90d87 # load x3 with value 0x6aa90d87
sw x3, 0(x2) # store 0x6aa90d87 in memory
flh f29, 0(x2) # load 0x6aa90d87 from memory into f29
li x3, 0xd76ddde0 # load x3 with value 0xd76ddde0
sw x3, 0(x2) # store 0xd76ddde0 in memory
flh f14, 0(x2) # load 0xd76ddde0 from memory into f14
fsub.h f29, f29, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0x7bb51d9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdaf07195 # load x3 with value 0xdaf07195
sw x3, 0(x2) # store 0xdaf07195 in memory
flh f30, 0(x2) # load 0xdaf07195 from memory into f30
li x3, 0x49900289 # load x3 with value 0x49900289
sw x3, 0(x2) # store 0x49900289 in memory
flh f21, 0(x2) # load 0x49900289 from memory into f21
fsub.h f30, f30, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0xd32bb3a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd9ee8abc # load x3 with value 0xd9ee8abc
sw x3, 0(x2) # store 0xd9ee8abc in memory
flh f31, 0(x2) # load 0xd9ee8abc from memory into f31
li x3, 0x0106d4eb # load x3 with value 0x0106d4eb
sw x3, 0(x2) # store 0x0106d4eb in memory
flh f7, 0(x2) # load 0x0106d4eb from memory into f7
fsub.h f31, f31, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
li x0, 0xcf42b6ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x805d4270 # load x3 with value 0x805d4270
sw x3, 0(x2) # store 0x805d4270 in memory
flh f11, 0(x2) # load 0x805d4270 from memory into f11
li x3, 0x2d82cc3e # load x3 with value 0x2d82cc3e
sw x3, 0(x2) # store 0x2d82cc3e in memory
flh f0, 0(x2) # load 0x2d82cc3e from memory into f0
fsub.h f0, f11, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
li x1, 0xb728b894 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd3f8cd0a # load x3 with value 0xd3f8cd0a
sw x3, 0(x2) # store 0xd3f8cd0a in memory
flh f15, 0(x2) # load 0xd3f8cd0a from memory into f15
li x3, 0x7f06e3aa # load x3 with value 0x7f06e3aa
sw x3, 0(x2) # store 0x7f06e3aa in memory
flh f1, 0(x2) # load 0x7f06e3aa from memory into f1
fsub.h f1, f15, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
li x2, 0x89ee1856 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00e2e60a # load x3 with value 0x00e2e60a
sw x3, 0(x2) # store 0x00e2e60a in memory
flh f23, 0(x2) # load 0x00e2e60a from memory into f23
li x3, 0xeac9b296 # load x3 with value 0xeac9b296
sw x3, 0(x2) # store 0xeac9b296 in memory
flh f2, 0(x2) # load 0xeac9b296 from memory into f2
fsub.h f2, f23, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
li x3, 0xe0f520ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1c18b07b # load x3 with value 0x1c18b07b
sw x3, 0(x2) # store 0x1c18b07b in memory
flh f2, 0(x2) # load 0x1c18b07b from memory into f2
li x3, 0x0bfa17b5 # load x3 with value 0x0bfa17b5
sw x3, 0(x2) # store 0x0bfa17b5 in memory
flh f3, 0(x2) # load 0x0bfa17b5 from memory into f3
fsub.h f3, f2, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
li x4, 0x9944b9cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd6a03866 # load x3 with value 0xd6a03866
sw x3, 0(x2) # store 0xd6a03866 in memory
flh f26, 0(x2) # load 0xd6a03866 from memory into f26
li x3, 0xd44c096e # load x3 with value 0xd44c096e
sw x3, 0(x2) # store 0xd44c096e in memory
flh f4, 0(x2) # load 0xd44c096e from memory into f4
fsub.h f4, f26, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
li x5, 0x82964c21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x062e5e65 # load x3 with value 0x062e5e65
sw x3, 0(x2) # store 0x062e5e65 in memory
flh f23, 0(x2) # load 0x062e5e65 from memory into f23
li x3, 0xc8e289d5 # load x3 with value 0xc8e289d5
sw x3, 0(x2) # store 0xc8e289d5 in memory
flh f5, 0(x2) # load 0xc8e289d5 from memory into f5
fsub.h f5, f23, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
li x6, 0xbb76dbac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x44cd55a4 # load x3 with value 0x44cd55a4
sw x3, 0(x2) # store 0x44cd55a4 in memory
flh f2, 0(x2) # load 0x44cd55a4 from memory into f2
li x3, 0x5f8a1008 # load x3 with value 0x5f8a1008
sw x3, 0(x2) # store 0x5f8a1008 in memory
flh f6, 0(x2) # load 0x5f8a1008 from memory into f6
fsub.h f6, f2, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
li x7, 0xbc40cac1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8611986a # load x3 with value 0x8611986a
sw x3, 0(x2) # store 0x8611986a in memory
flh f17, 0(x2) # load 0x8611986a from memory into f17
li x3, 0xf2473cb0 # load x3 with value 0xf2473cb0
sw x3, 0(x2) # store 0xf2473cb0 in memory
flh f7, 0(x2) # load 0xf2473cb0 from memory into f7
fsub.h f7, f17, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
li x8, 0x3b975a11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x97989929 # load x3 with value 0x97989929
sw x3, 0(x2) # store 0x97989929 in memory
flh f28, 0(x2) # load 0x97989929 from memory into f28
li x3, 0xcd2da494 # load x3 with value 0xcd2da494
sw x3, 0(x2) # store 0xcd2da494 in memory
flh f8, 0(x2) # load 0xcd2da494 from memory into f8
fsub.h f8, f28, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
li x9, 0xd90dc9a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf83c901c # load x3 with value 0xf83c901c
sw x3, 0(x2) # store 0xf83c901c in memory
flh f26, 0(x2) # load 0xf83c901c from memory into f26
li x3, 0x939589a4 # load x3 with value 0x939589a4
sw x3, 0(x2) # store 0x939589a4 in memory
flh f9, 0(x2) # load 0x939589a4 from memory into f9
fsub.h f9, f26, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
li x10, 0x5f1deecb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd871a25d # load x3 with value 0xd871a25d
sw x3, 0(x2) # store 0xd871a25d in memory
flh f25, 0(x2) # load 0xd871a25d from memory into f25
li x3, 0x120a0749 # load x3 with value 0x120a0749
sw x3, 0(x2) # store 0x120a0749 in memory
flh f10, 0(x2) # load 0x120a0749 from memory into f10
fsub.h f10, f25, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
li x11, 0x4cab38f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfb6d4649 # load x3 with value 0xfb6d4649
sw x3, 0(x2) # store 0xfb6d4649 in memory
flh f24, 0(x2) # load 0xfb6d4649 from memory into f24
li x3, 0xef4f8e09 # load x3 with value 0xef4f8e09
sw x3, 0(x2) # store 0xef4f8e09 in memory
flh f11, 0(x2) # load 0xef4f8e09 from memory into f11
fsub.h f11, f24, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
li x12, 0x28dc004e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc5d51214 # load x3 with value 0xc5d51214
sw x3, 0(x2) # store 0xc5d51214 in memory
flh f29, 0(x2) # load 0xc5d51214 from memory into f29
li x3, 0xdc4e683a # load x3 with value 0xdc4e683a
sw x3, 0(x2) # store 0xdc4e683a in memory
flh f12, 0(x2) # load 0xdc4e683a from memory into f12
fsub.h f12, f29, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
li x13, 0x9f286497 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4eaca1ab # load x3 with value 0x4eaca1ab
sw x3, 0(x2) # store 0x4eaca1ab in memory
flh f2, 0(x2) # load 0x4eaca1ab from memory into f2
li x3, 0x89f9038d # load x3 with value 0x89f9038d
sw x3, 0(x2) # store 0x89f9038d in memory
flh f13, 0(x2) # load 0x89f9038d from memory into f13
fsub.h f13, f2, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
li x14, 0x0ddf414d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x25b8768d # load x3 with value 0x25b8768d
sw x3, 0(x2) # store 0x25b8768d in memory
flh f15, 0(x2) # load 0x25b8768d from memory into f15
li x3, 0x6305ed61 # load x3 with value 0x6305ed61
sw x3, 0(x2) # store 0x6305ed61 in memory
flh f14, 0(x2) # load 0x6305ed61 from memory into f14
fsub.h f14, f15, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
li x15, 0x1fa539ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8729ba68 # load x3 with value 0x8729ba68
sw x3, 0(x2) # store 0x8729ba68 in memory
flh f13, 0(x2) # load 0x8729ba68 from memory into f13
li x3, 0xbfaf83a8 # load x3 with value 0xbfaf83a8
sw x3, 0(x2) # store 0xbfaf83a8 in memory
flh f15, 0(x2) # load 0xbfaf83a8 from memory into f15
fsub.h f15, f13, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
li x16, 0x9c482c7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb845d8e3 # load x3 with value 0xb845d8e3
sw x3, 0(x2) # store 0xb845d8e3 in memory
flh f11, 0(x2) # load 0xb845d8e3 from memory into f11
li x3, 0x9ac0e2dc # load x3 with value 0x9ac0e2dc
sw x3, 0(x2) # store 0x9ac0e2dc in memory
flh f16, 0(x2) # load 0x9ac0e2dc from memory into f16
fsub.h f16, f11, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
li x17, 0x38fa37c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaa1ff905 # load x3 with value 0xaa1ff905
sw x3, 0(x2) # store 0xaa1ff905 in memory
flh f13, 0(x2) # load 0xaa1ff905 from memory into f13
li x3, 0x6d963aea # load x3 with value 0x6d963aea
sw x3, 0(x2) # store 0x6d963aea in memory
flh f17, 0(x2) # load 0x6d963aea from memory into f17
fsub.h f17, f13, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
li x18, 0xd0a7bdd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd8796c72 # load x3 with value 0xd8796c72
sw x3, 0(x2) # store 0xd8796c72 in memory
flh f22, 0(x2) # load 0xd8796c72 from memory into f22
li x3, 0x9230b4f5 # load x3 with value 0x9230b4f5
sw x3, 0(x2) # store 0x9230b4f5 in memory
flh f18, 0(x2) # load 0x9230b4f5 from memory into f18
fsub.h f18, f22, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
li x19, 0xf7449fd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xac1dafd6 # load x3 with value 0xac1dafd6
sw x3, 0(x2) # store 0xac1dafd6 in memory
flh f11, 0(x2) # load 0xac1dafd6 from memory into f11
li x3, 0x4ee9747e # load x3 with value 0x4ee9747e
sw x3, 0(x2) # store 0x4ee9747e in memory
flh f19, 0(x2) # load 0x4ee9747e from memory into f19
fsub.h f19, f11, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
li x20, 0x5b138eff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5969d245 # load x3 with value 0x5969d245
sw x3, 0(x2) # store 0x5969d245 in memory
flh f13, 0(x2) # load 0x5969d245 from memory into f13
li x3, 0x31ac76a7 # load x3 with value 0x31ac76a7
sw x3, 0(x2) # store 0x31ac76a7 in memory
flh f20, 0(x2) # load 0x31ac76a7 from memory into f20
fsub.h f20, f13, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
li x21, 0xca6332b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x21e3fbbb # load x3 with value 0x21e3fbbb
sw x3, 0(x2) # store 0x21e3fbbb in memory
flh f29, 0(x2) # load 0x21e3fbbb from memory into f29
li x3, 0x2ff63cdf # load x3 with value 0x2ff63cdf
sw x3, 0(x2) # store 0x2ff63cdf in memory
flh f21, 0(x2) # load 0x2ff63cdf from memory into f21
fsub.h f21, f29, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
li x22, 0xe1f09f6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd093e7f0 # load x3 with value 0xd093e7f0
sw x3, 0(x2) # store 0xd093e7f0 in memory
flh f21, 0(x2) # load 0xd093e7f0 from memory into f21
li x3, 0x80d1ef6e # load x3 with value 0x80d1ef6e
sw x3, 0(x2) # store 0x80d1ef6e in memory
flh f22, 0(x2) # load 0x80d1ef6e from memory into f22
fsub.h f22, f21, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
li x23, 0x1d252de2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf5e50fac # load x3 with value 0xf5e50fac
sw x3, 0(x2) # store 0xf5e50fac in memory
flh f15, 0(x2) # load 0xf5e50fac from memory into f15
li x3, 0x025daf82 # load x3 with value 0x025daf82
sw x3, 0(x2) # store 0x025daf82 in memory
flh f23, 0(x2) # load 0x025daf82 from memory into f23
fsub.h f23, f15, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
li x24, 0x67bbee2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x64634bca # load x3 with value 0x64634bca
sw x3, 0(x2) # store 0x64634bca in memory
flh f12, 0(x2) # load 0x64634bca from memory into f12
li x3, 0x8850ee0d # load x3 with value 0x8850ee0d
sw x3, 0(x2) # store 0x8850ee0d in memory
flh f24, 0(x2) # load 0x8850ee0d from memory into f24
fsub.h f24, f12, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
li x25, 0xf0501792 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5579abae # load x3 with value 0x5579abae
sw x3, 0(x2) # store 0x5579abae in memory
flh f20, 0(x2) # load 0x5579abae from memory into f20
li x3, 0x61e19f7a # load x3 with value 0x61e19f7a
sw x3, 0(x2) # store 0x61e19f7a in memory
flh f25, 0(x2) # load 0x61e19f7a from memory into f25
fsub.h f25, f20, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
li x26, 0xc9aa0065 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x50f4faab # load x3 with value 0x50f4faab
sw x3, 0(x2) # store 0x50f4faab in memory
flh f31, 0(x2) # load 0x50f4faab from memory into f31
li x3, 0xde67a63f # load x3 with value 0xde67a63f
sw x3, 0(x2) # store 0xde67a63f in memory
flh f26, 0(x2) # load 0xde67a63f from memory into f26
fsub.h f26, f31, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
li x27, 0x680113f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x13144bba # load x3 with value 0x13144bba
sw x3, 0(x2) # store 0x13144bba in memory
flh f1, 0(x2) # load 0x13144bba from memory into f1
li x3, 0xd82127fa # load x3 with value 0xd82127fa
sw x3, 0(x2) # store 0xd82127fa in memory
flh f27, 0(x2) # load 0xd82127fa from memory into f27
fsub.h f27, f1, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
li x28, 0xa2e875f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe4b733e4 # load x3 with value 0xe4b733e4
sw x3, 0(x2) # store 0xe4b733e4 in memory
flh f25, 0(x2) # load 0xe4b733e4 from memory into f25
li x3, 0xa4f27056 # load x3 with value 0xa4f27056
sw x3, 0(x2) # store 0xa4f27056 in memory
flh f28, 0(x2) # load 0xa4f27056 from memory into f28
fsub.h f28, f25, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
li x29, 0x776f15ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x946584ff # load x3 with value 0x946584ff
sw x3, 0(x2) # store 0x946584ff in memory
flh f1, 0(x2) # load 0x946584ff from memory into f1
li x3, 0x083bb29d # load x3 with value 0x083bb29d
sw x3, 0(x2) # store 0x083bb29d in memory
flh f29, 0(x2) # load 0x083bb29d from memory into f29
fsub.h f29, f1, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
li x30, 0xd1d6711b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcbdff72a # load x3 with value 0xcbdff72a
sw x3, 0(x2) # store 0xcbdff72a in memory
flh f1, 0(x2) # load 0xcbdff72a from memory into f1
li x3, 0x73d9adde # load x3 with value 0x73d9adde
sw x3, 0(x2) # store 0x73d9adde in memory
flh f30, 0(x2) # load 0x73d9adde from memory into f30
fsub.h f30, f1, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
li x31, 0xb00660a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa1d688d7 # load x3 with value 0xa1d688d7
sw x3, 0(x2) # store 0xa1d688d7 in memory
flh f19, 0(x2) # load 0xa1d688d7 from memory into f19
li x3, 0x08f2929d # load x3 with value 0x08f2929d
sw x3, 0(x2) # store 0x08f2929d in memory
flh f31, 0(x2) # load 0x08f2929d from memory into f31
fsub.h f31, f19, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x22, 0x71a36300 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f20, 0(x2) # load 0x00000000 from memory into f20
li x3, 0x03065085 # load x3 with value 0x03065085
sw x3, 0(x2) # store 0x03065085 in memory
flh f21, 0(x2) # load 0x03065085 from memory into f21
fsub.h f22, f20, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
li x29, 0x9f5ebd52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f17, 0(x2) # load 0x00008000 from memory into f17
li x3, 0x704bbd82 # load x3 with value 0x704bbd82
sw x3, 0(x2) # store 0x704bbd82 in memory
flh f9, 0(x2) # load 0x704bbd82 from memory into f9
fsub.h f29, f17, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
li x15, 0xa4456dc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
li x3, 0x4ee84469 # load x3 with value 0x4ee84469
sw x3, 0(x2) # store 0x4ee84469 in memory
flh f12, 0(x2) # load 0x4ee84469 from memory into f12
fsub.h f15, f17, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
li x22, 0xde11e0b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f27, 0(x2) # load 0x0000bc00 from memory into f27
li x3, 0xcd9b00b3 # load x3 with value 0xcd9b00b3
sw x3, 0(x2) # store 0xcd9b00b3 in memory
flh f30, 0(x2) # load 0xcd9b00b3 from memory into f30
fsub.h f22, f27, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
li x9, 0x758762cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f11, 0(x2) # load 0x00003e00 from memory into f11
li x3, 0x80f313df # load x3 with value 0x80f313df
sw x3, 0(x2) # store 0x80f313df in memory
flh f8, 0(x2) # load 0x80f313df from memory into f8
fsub.h f9, f11, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
li x23, 0xd9847a55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
li x3, 0x7633254f # load x3 with value 0x7633254f
sw x3, 0(x2) # store 0x7633254f in memory
flh f13, 0(x2) # load 0x7633254f from memory into f13
fsub.h f23, f8, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
li x18, 0xbe73efd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
li x3, 0x9b69bfe3 # load x3 with value 0x9b69bfe3
sw x3, 0(x2) # store 0x9b69bfe3 in memory
flh f28, 0(x2) # load 0x9b69bfe3 from memory into f28
fsub.h f18, f6, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
li x21, 0xee568cdf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f12, 0(x2) # load 0x0000c000 from memory into f12
li x3, 0x9f1cdbfb # load x3 with value 0x9f1cdbfb
sw x3, 0(x2) # store 0x9f1cdbfb in memory
flh f28, 0(x2) # load 0x9f1cdbfb from memory into f28
fsub.h f21, f12, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
li x20, 0x52ff2ef4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f6, 0(x2) # load 0x00000400 from memory into f6
li x3, 0x8b1dab74 # load x3 with value 0x8b1dab74
sw x3, 0(x2) # store 0x8b1dab74 in memory
flh f5, 0(x2) # load 0x8b1dab74 from memory into f5
fsub.h f20, f6, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
li x4, 0xa483889d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f27, 0(x2) # load 0x00008400 from memory into f27
li x3, 0xee5cf411 # load x3 with value 0xee5cf411
sw x3, 0(x2) # store 0xee5cf411 in memory
flh f16, 0(x2) # load 0xee5cf411 from memory into f16
fsub.h f4, f27, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
li x13, 0x80a7a0bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
li x3, 0x8dd520d4 # load x3 with value 0x8dd520d4
sw x3, 0(x2) # store 0x8dd520d4 in memory
flh f15, 0(x2) # load 0x8dd520d4 from memory into f15
fsub.h f13, f24, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
li x16, 0x6c31ccb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
li x3, 0x7a7e2328 # load x3 with value 0x7a7e2328
sw x3, 0(x2) # store 0x7a7e2328 in memory
flh f28, 0(x2) # load 0x7a7e2328 from memory into f28
fsub.h f16, f27, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
li x11, 0xb8a8713d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
li x3, 0x94e02ae5 # load x3 with value 0x94e02ae5
sw x3, 0(x2) # store 0x94e02ae5 in memory
flh f3, 0(x2) # load 0x94e02ae5 from memory into f3
fsub.h f11, f27, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
li x19, 0x94a798d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f1, 0(x2) # load 0x000083ff from memory into f1
li x3, 0x79b8bb85 # load x3 with value 0x79b8bb85
sw x3, 0(x2) # store 0x79b8bb85 in memory
flh f23, 0(x2) # load 0x79b8bb85 from memory into f23
fsub.h f19, f1, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
li x31, 0xe455e577 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
li x3, 0x556ad46b # load x3 with value 0x556ad46b
sw x3, 0(x2) # store 0x556ad46b in memory
flh f24, 0(x2) # load 0x556ad46b from memory into f24
fsub.h f31, f19, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
li x10, 0x09242a68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f5, 0(x2) # load 0x00008200 from memory into f5
li x3, 0xc0b17921 # load x3 with value 0xc0b17921
sw x3, 0(x2) # store 0xc0b17921 in memory
flh f6, 0(x2) # load 0xc0b17921 from memory into f6
fsub.h f10, f5, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x28, 0x86fac654 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f13, 0(x2) # load 0x00000001 from memory into f13
li x3, 0xc57752ca # load x3 with value 0xc57752ca
sw x3, 0(x2) # store 0xc57752ca in memory
flh f7, 0(x2) # load 0xc57752ca from memory into f7
fsub.h f28, f13, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
li x29, 0x636adb5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f8, 0(x2) # load 0x00008001 from memory into f8
li x3, 0x93e989a8 # load x3 with value 0x93e989a8
sw x3, 0(x2) # store 0x93e989a8 in memory
flh f1, 0(x2) # load 0x93e989a8 from memory into f1
fsub.h f29, f8, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
li x22, 0x50323582 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
li x3, 0x45ca533f # load x3 with value 0x45ca533f
sw x3, 0(x2) # store 0x45ca533f in memory
flh f31, 0(x2) # load 0x45ca533f from memory into f31
fsub.h f22, f28, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
li x2, 0x8b2810ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
li x3, 0xb8dc2438 # load x3 with value 0xb8dc2438
sw x3, 0(x2) # store 0xb8dc2438 in memory
flh f20, 0(x2) # load 0xb8dc2438 from memory into f20
fsub.h f2, f31, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
li x14, 0x33ec3a67 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
li x3, 0x1fbc341b # load x3 with value 0x1fbc341b
sw x3, 0(x2) # store 0x1fbc341b in memory
flh f23, 0(x2) # load 0x1fbc341b from memory into f23
fsub.h f14, f30, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
li x31, 0x1990f089 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f21, 0(x2) # load 0x00007fff from memory into f21
li x3, 0x82b9142e # load x3 with value 0x82b9142e
sw x3, 0(x2) # store 0x82b9142e in memory
flh f25, 0(x2) # load 0x82b9142e from memory into f25
fsub.h f31, f21, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
li x2, 0xc5fd3687 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
li x3, 0xf8a31ad1 # load x3 with value 0xf8a31ad1
sw x3, 0(x2) # store 0xf8a31ad1 in memory
flh f18, 0(x2) # load 0xf8a31ad1 from memory into f18
fsub.h f2, f26, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
li x7, 0x293f68a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f28, 0(x2) # load 0x00007dff from memory into f28
li x3, 0xb4ac7a9a # load x3 with value 0xb4ac7a9a
sw x3, 0(x2) # store 0xb4ac7a9a in memory
flh f15, 0(x2) # load 0xb4ac7a9a from memory into f15
fsub.h f7, f28, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
li x3, 0x3fe2074e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f7, 0(x2) # load 0x000058b4 from memory into f7
li x3, 0xc392253e # load x3 with value 0xc392253e
sw x3, 0(x2) # store 0xc392253e in memory
flh f21, 0(x2) # load 0xc392253e from memory into f21
fsub.h f3, f7, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
li x2, 0x04310b6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
li x3, 0x3acfa182 # load x3 with value 0x3acfa182
sw x3, 0(x2) # store 0x3acfa182 in memory
flh f4, 0(x2) # load 0x3acfa182 from memory into f4
fsub.h f2, f26, f4 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x1, 0x961e1f8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x89e4aec6 # load x3 with value 0x89e4aec6
sw x3, 0(x2) # store 0x89e4aec6 in memory
flh f28, 0(x2) # load 0x89e4aec6 from memory into f28
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f26, 0(x2) # load 0x00000000 from memory into f26
fsub.h f1, f28, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000)
li x24, 0x153ac8c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa038b9e5 # load x3 with value 0xa038b9e5
sw x3, 0(x2) # store 0xa038b9e5 in memory
flh f19, 0(x2) # load 0xa038b9e5 from memory into f19
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
fsub.h f24, f19, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3c00)
li x6, 0x5fa0604b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x83808d6b # load x3 with value 0x83808d6b
sw x3, 0(x2) # store 0x83808d6b in memory
flh f28, 0(x2) # load 0x83808d6b from memory into f28
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f26, 0(x2) # load 0x00003c00 from memory into f26
fsub.h f6, f28, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbc00)
li x5, 0xd07d684a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xef9a2603 # load x3 with value 0xef9a2603
sw x3, 0(x2) # store 0xef9a2603 in memory
flh f22, 0(x2) # load 0xef9a2603 from memory into f22
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f9, 0(x2) # load 0x0000bc00 from memory into f9
fsub.h f5, f22, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3e00)
li x10, 0x290e096e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4653b0fa # load x3 with value 0x4653b0fa
sw x3, 0(x2) # store 0x4653b0fa in memory
flh f27, 0(x2) # load 0x4653b0fa from memory into f27
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
fsub.h f10, f27, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbe00)
li x25, 0x8b03b719 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3a5f58b3 # load x3 with value 0x3a5f58b3
sw x3, 0(x2) # store 0x3a5f58b3 in memory
flh f1, 0(x2) # load 0x3a5f58b3 from memory into f1
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f10, 0(x2) # load 0x0000be00 from memory into f10
fsub.h f25, f1, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000)
li x4, 0x54271f44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x303da27c # load x3 with value 0x303da27c
sw x3, 0(x2) # store 0x303da27c in memory
flh f24, 0(x2) # load 0x303da27c from memory into f24
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
fsub.h f4, f24, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000)
li x19, 0x2c26408c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc4690390 # load x3 with value 0xc4690390
sw x3, 0(x2) # store 0xc4690390 in memory
flh f26, 0(x2) # load 0xc4690390 from memory into f26
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
fsub.h f19, f26, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400)
li x26, 0xc38c65b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xea88e9d2 # load x3 with value 0xea88e9d2
sw x3, 0(x2) # store 0xea88e9d2 in memory
flh f21, 0(x2) # load 0xea88e9d2 from memory into f21
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f12, 0(x2) # load 0x00000400 from memory into f12
fsub.h f26, f21, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8400)
li x20, 0x7dada4c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd9c54073 # load x3 with value 0xd9c54073
sw x3, 0(x2) # store 0xd9c54073 in memory
flh f31, 0(x2) # load 0xd9c54073 from memory into f31
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
fsub.h f20, f31, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7bff)
li x21, 0xf046e615 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x06cd895e # load x3 with value 0x06cd895e
sw x3, 0(x2) # store 0x06cd895e in memory
flh f18, 0(x2) # load 0x06cd895e from memory into f18
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f14, 0(x2) # load 0x00007bff from memory into f14
fsub.h f21, f18, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfbff)
li x27, 0x687f4778 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcb996bd8 # load x3 with value 0xcb996bd8
sw x3, 0(x2) # store 0xcb996bd8 in memory
flh f28, 0(x2) # load 0xcb996bd8 from memory into f28
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f25, 0(x2) # load 0x0000fbff from memory into f25
fsub.h f27, f28, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff)
li x7, 0x3cb89811 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd1585737 # load x3 with value 0xd1585737
sw x3, 0(x2) # store 0xd1585737 in memory
flh f1, 0(x2) # load 0xd1585737 from memory into f1
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f16, 0(x2) # load 0x000003ff from memory into f16
fsub.h f7, f1, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x83ff)
li x3, 0xadddc332 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa1fe5a6e # load x3 with value 0xa1fe5a6e
sw x3, 0(x2) # store 0xa1fe5a6e in memory
flh f28, 0(x2) # load 0xa1fe5a6e from memory into f28
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
fsub.h f3, f28, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x200)
li x25, 0x16fe276e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f6ca81a # load x3 with value 0x7f6ca81a
sw x3, 0(x2) # store 0x7f6ca81a in memory
flh f26, 0(x2) # load 0x7f6ca81a from memory into f26
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
fsub.h f25, f26, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8200)
li x29, 0xe7e8aa69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb8e7563d # load x3 with value 0xb8e7563d
sw x3, 0(x2) # store 0xb8e7563d in memory
flh f11, 0(x2) # load 0xb8e7563d from memory into f11
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f5, 0(x2) # load 0x00008200 from memory into f5
fsub.h f29, f11, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x7, 0xd80dd74d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xad3e9278 # load x3 with value 0xad3e9278
sw x3, 0(x2) # store 0xad3e9278 in memory
flh f20, 0(x2) # load 0xad3e9278 from memory into f20
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f2, 0(x2) # load 0x00000001 from memory into f2
fsub.h f7, f20, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8001)
li x18, 0xc41fa7f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe7d5f504 # load x3 with value 0xe7d5f504
sw x3, 0(x2) # store 0xe7d5f504 in memory
flh f16, 0(x2) # load 0xe7d5f504 from memory into f16
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
fsub.h f18, f16, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c00)
li x26, 0x6f38aa1c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe0d87ee0 # load x3 with value 0xe0d87ee0
sw x3, 0(x2) # store 0xe0d87ee0 in memory
flh f24, 0(x2) # load 0xe0d87ee0 from memory into f24
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f9, 0(x2) # load 0x00007c00 from memory into f9
fsub.h f26, f24, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc00)
li x10, 0xca59a0c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4e0373b4 # load x3 with value 0x4e0373b4
sw x3, 0(x2) # store 0x4e0373b4 in memory
flh f18, 0(x2) # load 0x4e0373b4 from memory into f18
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f7, 0(x2) # load 0x0000fc00 from memory into f7
fsub.h f10, f18, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e00)
li x31, 0x09799a33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb225dbbd # load x3 with value 0xb225dbbd
sw x3, 0(x2) # store 0xb225dbbd in memory
flh f7, 0(x2) # load 0xb225dbbd from memory into f7
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
fsub.h f31, f7, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff)
li x8, 0xd25ebc41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x74227f71 # load x3 with value 0x74227f71
sw x3, 0(x2) # store 0x74227f71 in memory
flh f24, 0(x2) # load 0x74227f71 from memory into f24
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f26, 0(x2) # load 0x00007fff from memory into f26
fsub.h f8, f24, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c01)
li x16, 0xceba35f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x937179dd # load x3 with value 0x937179dd
sw x3, 0(x2) # store 0x937179dd in memory
flh f8, 0(x2) # load 0x937179dd from memory into f8
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
fsub.h f16, f8, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7dff)
li x6, 0xaaba5465 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4decc47e # load x3 with value 0x4decc47e
sw x3, 0(x2) # store 0x4decc47e in memory
flh f19, 0(x2) # load 0x4decc47e from memory into f19
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f9, 0(x2) # load 0x00007dff from memory into f9
fsub.h f6, f19, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x58b4)
li x20, 0x571c8eb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6bf63b7c # load x3 with value 0x6bf63b7c
sw x3, 0(x2) # store 0x6bf63b7c in memory
flh f29, 0(x2) # load 0x6bf63b7c from memory into f29
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f4, 0(x2) # load 0x000058b4 from memory into f4
fsub.h f20, f29, f4 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc93a)
li x15, 0x03a8c541 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9cf6c1f7 # load x3 with value 0x9cf6c1f7
sw x3, 0(x2) # store 0x9cf6c1f7 in memory
flh f14, 0(x2) # load 0x9cf6c1f7 from memory into f14
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f19, 0(x2) # load 0x0000c93a from memory into f19
fsub.h f15, f14, f19 # perform operation

# Testcase cp_frm
li x14, 0xfe5d2cc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcd105191 # load x3 with value 0xcd105191
sw x3, 0(x2) # store 0xcd105191 in memory
flh f1, 0(x2) # load 0xcd105191 from memory into f1
li x3, 0xcef722c0 # load x3 with value 0xcef722c0
sw x3, 0(x2) # store 0xcef722c0 in memory
flh f31, 0(x2) # load 0xcef722c0 from memory into f31
fsub.h f14, f1, f31, dyn # perform operation
fsub.h f14, f1, f31, rdn # perform operation
fsub.h f14, f1, f31, rmm # perform operation
fsub.h f14, f1, f31, rne # perform operation
fsub.h f14, f1, f31, rtz # perform operation
fsub.h f14, f1, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f1, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f1, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f1, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f1, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f1, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
li x13, 0x6f71bc82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f20, 0(x2) # load 0x00000000 from memory into f20
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f22, 0(x2) # load 0x00000000 from memory into f22
fsub.h f13, f20, f22, dyn # perform operation
fsub.h f13, f20, f22, rdn # perform operation
fsub.h f13, f20, f22, rmm # perform operation
fsub.h f13, f20, f22, rne # perform operation
fsub.h f13, f20, f22, rtz # perform operation
fsub.h f13, f20, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f20, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f20, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f20, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f20, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f20, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000)
li x11, 0x7b97bb95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f5, 0(x2) # load 0x00000000 from memory into f5
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f30, 0(x2) # load 0x00008000 from memory into f30
fsub.h f11, f5, f30, dyn # perform operation
fsub.h f11, f5, f30, rdn # perform operation
fsub.h f11, f5, f30, rmm # perform operation
fsub.h f11, f5, f30, rne # perform operation
fsub.h f11, f5, f30, rtz # perform operation
fsub.h f11, f5, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f5, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f5, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f5, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f5, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f5, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3c00)
li x5, 0x4ceab162 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f11, 0(x2) # load 0x00000000 from memory into f11
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
fsub.h f5, f11, f7, dyn # perform operation
fsub.h f5, f11, f7, rdn # perform operation
fsub.h f5, f11, f7, rmm # perform operation
fsub.h f5, f11, f7, rne # perform operation
fsub.h f5, f11, f7, rtz # perform operation
fsub.h f5, f11, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f11, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f11, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f11, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f11, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f11, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbc00)
li x1, 0xec772f6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f29, 0(x2) # load 0x0000bc00 from memory into f29
fsub.h f1, f14, f29, dyn # perform operation
fsub.h f1, f14, f29, rdn # perform operation
fsub.h f1, f14, f29, rmm # perform operation
fsub.h f1, f14, f29, rne # perform operation
fsub.h f1, f14, f29, rtz # perform operation
fsub.h f1, f14, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f14, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f14, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f14, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f14, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f14, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3e00)
li x30, 0xe8e17852 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
fsub.h f30, f19, f29, dyn # perform operation
fsub.h f30, f19, f29, rdn # perform operation
fsub.h f30, f19, f29, rmm # perform operation
fsub.h f30, f19, f29, rne # perform operation
fsub.h f30, f19, f29, rtz # perform operation
fsub.h f30, f19, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f19, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f19, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f19, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f19, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f19, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbe00)
li x4, 0x74298e38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f28, 0(x2) # load 0x00000000 from memory into f28
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f13, 0(x2) # load 0x0000be00 from memory into f13
fsub.h f4, f28, f13, dyn # perform operation
fsub.h f4, f28, f13, rdn # perform operation
fsub.h f4, f28, f13, rmm # perform operation
fsub.h f4, f28, f13, rne # perform operation
fsub.h f4, f28, f13, rtz # perform operation
fsub.h f4, f28, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f4, f28, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f4, f28, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f4, f28, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f4, f28, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f4, f28, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x4000)
li x28, 0x948a041a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f18, 0(x2) # load 0x00004000 from memory into f18
fsub.h f28, f14, f18, dyn # perform operation
fsub.h f28, f14, f18, rdn # perform operation
fsub.h f28, f14, f18, rmm # perform operation
fsub.h f28, f14, f18, rne # perform operation
fsub.h f28, f14, f18, rtz # perform operation
fsub.h f28, f14, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f14, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f14, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f14, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f14, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f14, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc000)
li x15, 0xee7b0bb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f29, 0(x2) # load 0x0000c000 from memory into f29
fsub.h f15, f12, f29, dyn # perform operation
fsub.h f15, f12, f29, rdn # perform operation
fsub.h f15, f12, f29, rmm # perform operation
fsub.h f15, f12, f29, rne # perform operation
fsub.h f15, f12, f29, rtz # perform operation
fsub.h f15, f12, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f12, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f12, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f12, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f12, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f12, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x400)
li x2, 0x67cd8d47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f9, 0(x2) # load 0x00000000 from memory into f9
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f22, 0(x2) # load 0x00000400 from memory into f22
fsub.h f2, f9, f22, dyn # perform operation
fsub.h f2, f9, f22, rdn # perform operation
fsub.h f2, f9, f22, rmm # perform operation
fsub.h f2, f9, f22, rne # perform operation
fsub.h f2, f9, f22, rtz # perform operation
fsub.h f2, f9, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f9, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f9, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f9, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f9, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f9, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8400)
li x3, 0xcd8270e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f15, 0(x2) # load 0x00008400 from memory into f15
fsub.h f3, f10, f15, dyn # perform operation
fsub.h f3, f10, f15, rdn # perform operation
fsub.h f3, f10, f15, rmm # perform operation
fsub.h f3, f10, f15, rne # perform operation
fsub.h f3, f10, f15, rtz # perform operation
fsub.h f3, f10, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f10, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f10, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f10, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f10, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f10, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7bff)
li x2, 0x1591c310 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f24, 0(x2) # load 0x00000000 from memory into f24
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
fsub.h f2, f24, f8, dyn # perform operation
fsub.h f2, f24, f8, rdn # perform operation
fsub.h f2, f24, f8, rmm # perform operation
fsub.h f2, f24, f8, rne # perform operation
fsub.h f2, f24, f8, rtz # perform operation
fsub.h f2, f24, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f24, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f24, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f24, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f24, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f24, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfbff)
li x2, 0x7c567d16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f19, 0(x2) # load 0x0000fbff from memory into f19
fsub.h f2, f18, f19, dyn # perform operation
fsub.h f2, f18, f19, rdn # perform operation
fsub.h f2, f18, f19, rmm # perform operation
fsub.h f2, f18, f19, rne # perform operation
fsub.h f2, f18, f19, rtz # perform operation
fsub.h f2, f18, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f18, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f18, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f18, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f18, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f18, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3ff)
li x21, 0x5da44421 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f26, 0(x2) # load 0x00000000 from memory into f26
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
fsub.h f21, f26, f27, dyn # perform operation
fsub.h f21, f26, f27, rdn # perform operation
fsub.h f21, f26, f27, rmm # perform operation
fsub.h f21, f26, f27, rne # perform operation
fsub.h f21, f26, f27, rtz # perform operation
fsub.h f21, f26, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f26, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f26, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f26, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f26, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f26, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x83ff)
li x3, 0x7c5c819f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f28, 0(x2) # load 0x000083ff from memory into f28
fsub.h f3, f30, f28, dyn # perform operation
fsub.h f3, f30, f28, rdn # perform operation
fsub.h f3, f30, f28, rmm # perform operation
fsub.h f3, f30, f28, rne # perform operation
fsub.h f3, f30, f28, rtz # perform operation
fsub.h f3, f30, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f30, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f30, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f30, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f30, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f30, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x200)
li x9, 0x4aee4c07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f21, 0(x2) # load 0x00000000 from memory into f21
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f26, 0(x2) # load 0x00000200 from memory into f26
fsub.h f9, f21, f26, dyn # perform operation
fsub.h f9, f21, f26, rdn # perform operation
fsub.h f9, f21, f26, rmm # perform operation
fsub.h f9, f21, f26, rne # perform operation
fsub.h f9, f21, f26, rtz # perform operation
fsub.h f9, f21, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f21, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f21, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f21, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f21, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f21, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8200)
li x12, 0x20024de0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f3, 0(x2) # load 0x00008200 from memory into f3
fsub.h f12, f6, f3, dyn # perform operation
fsub.h f12, f6, f3, rdn # perform operation
fsub.h f12, f6, f3, rmm # perform operation
fsub.h f12, f6, f3, rne # perform operation
fsub.h f12, f6, f3, rtz # perform operation
fsub.h f12, f6, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f6, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f6, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f6, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f6, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f6, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
li x4, 0x9cd93f65 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f13, 0(x2) # load 0x00000001 from memory into f13
fsub.h f4, f19, f13, dyn # perform operation
fsub.h f4, f19, f13, rdn # perform operation
fsub.h f4, f19, f13, rmm # perform operation
fsub.h f4, f19, f13, rne # perform operation
fsub.h f4, f19, f13, rtz # perform operation
fsub.h f4, f19, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f4, f19, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f4, f19, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f4, f19, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f4, f19, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f4, f19, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8001)
li x20, 0x67c62c4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f15, 0(x2) # load 0x00000000 from memory into f15
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f21, 0(x2) # load 0x00008001 from memory into f21
fsub.h f20, f15, f21, dyn # perform operation
fsub.h f20, f15, f21, rdn # perform operation
fsub.h f20, f15, f21, rmm # perform operation
fsub.h f20, f15, f21, rne # perform operation
fsub.h f20, f15, f21, rtz # perform operation
fsub.h f20, f15, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f15, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f15, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f15, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f15, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f15, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7c00)
li x11, 0x69dc77c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f4, 0(x2) # load 0x00000000 from memory into f4
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f24, 0(x2) # load 0x00007c00 from memory into f24
fsub.h f11, f4, f24, dyn # perform operation
fsub.h f11, f4, f24, rdn # perform operation
fsub.h f11, f4, f24, rmm # perform operation
fsub.h f11, f4, f24, rne # perform operation
fsub.h f11, f4, f24, rtz # perform operation
fsub.h f11, f4, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f4, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f4, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f4, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f4, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f4, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfc00)
li x21, 0x8204f3fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
fsub.h f21, f25, f26, dyn # perform operation
fsub.h f21, f25, f26, rdn # perform operation
fsub.h f21, f25, f26, rmm # perform operation
fsub.h f21, f25, f26, rne # perform operation
fsub.h f21, f25, f26, rtz # perform operation
fsub.h f21, f25, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f25, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f25, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f25, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f25, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f25, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7e00)
li x11, 0xb40e5f9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f23, 0(x2) # load 0x00000000 from memory into f23
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f12, 0(x2) # load 0x00007e00 from memory into f12
fsub.h f11, f23, f12, dyn # perform operation
fsub.h f11, f23, f12, rdn # perform operation
fsub.h f11, f23, f12, rmm # perform operation
fsub.h f11, f23, f12, rne # perform operation
fsub.h f11, f23, f12, rtz # perform operation
fsub.h f11, f23, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f23, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f23, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f23, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f23, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f23, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fff)
li x30, 0x8bf53e9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f1, 0(x2) # load 0x00000000 from memory into f1
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f13, 0(x2) # load 0x00007fff from memory into f13
fsub.h f30, f1, f13, dyn # perform operation
fsub.h f30, f1, f13, rdn # perform operation
fsub.h f30, f1, f13, rmm # perform operation
fsub.h f30, f1, f13, rne # perform operation
fsub.h f30, f1, f13, rtz # perform operation
fsub.h f30, f1, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f1, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f1, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f1, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f1, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f1, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7c01)
li x23, 0xd4d788be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f7, 0(x2) # load 0x00007c01 from memory into f7
fsub.h f23, f19, f7, dyn # perform operation
fsub.h f23, f19, f7, rdn # perform operation
fsub.h f23, f19, f7, rmm # perform operation
fsub.h f23, f19, f7, rne # perform operation
fsub.h f23, f19, f7, rtz # perform operation
fsub.h f23, f19, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f19, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f19, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f19, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f19, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f19, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7dff)
li x23, 0xe1a16f17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f16, 0(x2) # load 0x00000000 from memory into f16
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f14, 0(x2) # load 0x00007dff from memory into f14
fsub.h f23, f16, f14, dyn # perform operation
fsub.h f23, f16, f14, rdn # perform operation
fsub.h f23, f16, f14, rmm # perform operation
fsub.h f23, f16, f14, rne # perform operation
fsub.h f23, f16, f14, rtz # perform operation
fsub.h f23, f16, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f16, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f16, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f16, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f16, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f16, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x58b4)
li x10, 0xa1cbe95d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f9, 0(x2) # load 0x000058b4 from memory into f9
fsub.h f10, f2, f9, dyn # perform operation
fsub.h f10, f2, f9, rdn # perform operation
fsub.h f10, f2, f9, rmm # perform operation
fsub.h f10, f2, f9, rne # perform operation
fsub.h f10, f2, f9, rtz # perform operation
fsub.h f10, f2, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f2, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f2, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f2, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f2, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f2, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc93a)
li x26, 0xe52be99f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f7, 0(x2) # load 0x00000000 from memory into f7
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f16, 0(x2) # load 0x0000c93a from memory into f16
fsub.h f26, f7, f16, dyn # perform operation
fsub.h f26, f7, f16, rdn # perform operation
fsub.h f26, f7, f16, rmm # perform operation
fsub.h f26, f7, f16, rne # perform operation
fsub.h f26, f7, f16, rtz # perform operation
fsub.h f26, f7, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f7, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f7, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f7, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f7, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f7, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x0)
li x23, 0xa094a5ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
fsub.h f23, f6, f19, dyn # perform operation
fsub.h f23, f6, f19, rdn # perform operation
fsub.h f23, f6, f19, rmm # perform operation
fsub.h f23, f6, f19, rne # perform operation
fsub.h f23, f6, f19, rtz # perform operation
fsub.h f23, f6, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f6, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f6, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f6, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f6, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f6, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8000)
li x22, 0x7ac8b08c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f23, 0(x2) # load 0x00008000 from memory into f23
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
fsub.h f22, f23, f2, dyn # perform operation
fsub.h f22, f23, f2, rdn # perform operation
fsub.h f22, f23, f2, rmm # perform operation
fsub.h f22, f23, f2, rne # perform operation
fsub.h f22, f23, f2, rtz # perform operation
fsub.h f22, f23, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f23, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f23, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f23, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f23, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f23, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3c00)
li x12, 0x0c690405 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f8, 0(x2) # load 0x00008000 from memory into f8
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
fsub.h f12, f8, f28, dyn # perform operation
fsub.h f12, f8, f28, rdn # perform operation
fsub.h f12, f8, f28, rmm # perform operation
fsub.h f12, f8, f28, rne # perform operation
fsub.h f12, f8, f28, rtz # perform operation
fsub.h f12, f8, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f8, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f8, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f8, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f8, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f8, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xbc00)
li x22, 0xcb384254 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f12, 0(x2) # load 0x0000bc00 from memory into f12
fsub.h f22, f3, f12, dyn # perform operation
fsub.h f22, f3, f12, rdn # perform operation
fsub.h f22, f3, f12, rmm # perform operation
fsub.h f22, f3, f12, rne # perform operation
fsub.h f22, f3, f12, rtz # perform operation
fsub.h f22, f3, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f3, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f3, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f3, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f3, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f3, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3e00)
li x17, 0x9cc99f50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f20, 0(x2) # load 0x00008000 from memory into f20
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
fsub.h f17, f20, f1, dyn # perform operation
fsub.h f17, f20, f1, rdn # perform operation
fsub.h f17, f20, f1, rmm # perform operation
fsub.h f17, f20, f1, rne # perform operation
fsub.h f17, f20, f1, rtz # perform operation
fsub.h f17, f20, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f20, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f20, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f20, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f20, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f20, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xbe00)
li x19, 0xe25a9761 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f1, 0(x2) # load 0x00008000 from memory into f1
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f29, 0(x2) # load 0x0000be00 from memory into f29
fsub.h f19, f1, f29, dyn # perform operation
fsub.h f19, f1, f29, rdn # perform operation
fsub.h f19, f1, f29, rmm # perform operation
fsub.h f19, f1, f29, rne # perform operation
fsub.h f19, f1, f29, rtz # perform operation
fsub.h f19, f1, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f1, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f1, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f1, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f1, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f1, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x4000)
li x11, 0x4cc5d05d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f30, 0(x2) # load 0x00008000 from memory into f30
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
fsub.h f11, f30, f22, dyn # perform operation
fsub.h f11, f30, f22, rdn # perform operation
fsub.h f11, f30, f22, rmm # perform operation
fsub.h f11, f30, f22, rne # perform operation
fsub.h f11, f30, f22, rtz # perform operation
fsub.h f11, f30, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f30, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f30, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f30, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f30, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f30, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xc000)
li x12, 0x527a0a48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f4, 0(x2) # load 0x00008000 from memory into f4
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
fsub.h f12, f4, f23, dyn # perform operation
fsub.h f12, f4, f23, rdn # perform operation
fsub.h f12, f4, f23, rmm # perform operation
fsub.h f12, f4, f23, rne # perform operation
fsub.h f12, f4, f23, rtz # perform operation
fsub.h f12, f4, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f4, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f4, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f4, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f4, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f4, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x400)
li x14, 0x0d8c3b21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f8, 0(x2) # load 0x00008000 from memory into f8
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
fsub.h f14, f8, f7, dyn # perform operation
fsub.h f14, f8, f7, rdn # perform operation
fsub.h f14, f8, f7, rmm # perform operation
fsub.h f14, f8, f7, rne # perform operation
fsub.h f14, f8, f7, rtz # perform operation
fsub.h f14, f8, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f8, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f8, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f8, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f8, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f8, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8400)
li x12, 0x3015c25a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f14, 0(x2) # load 0x00008000 from memory into f14
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
fsub.h f12, f14, f29, dyn # perform operation
fsub.h f12, f14, f29, rdn # perform operation
fsub.h f12, f14, f29, rmm # perform operation
fsub.h f12, f14, f29, rne # perform operation
fsub.h f12, f14, f29, rtz # perform operation
fsub.h f12, f14, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f14, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f14, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f14, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f14, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f14, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7bff)
li x28, 0x7fe4b744 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f20, 0(x2) # load 0x00008000 from memory into f20
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
fsub.h f28, f20, f30, dyn # perform operation
fsub.h f28, f20, f30, rdn # perform operation
fsub.h f28, f20, f30, rmm # perform operation
fsub.h f28, f20, f30, rne # perform operation
fsub.h f28, f20, f30, rtz # perform operation
fsub.h f28, f20, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f20, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f20, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f20, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f20, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f20, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfbff)
li x31, 0xfff66a51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f21, 0(x2) # load 0x00008000 from memory into f21
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f20, 0(x2) # load 0x0000fbff from memory into f20
fsub.h f31, f21, f20, dyn # perform operation
fsub.h f31, f21, f20, rdn # perform operation
fsub.h f31, f21, f20, rmm # perform operation
fsub.h f31, f21, f20, rne # perform operation
fsub.h f31, f21, f20, rtz # perform operation
fsub.h f31, f21, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f21, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f21, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f21, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f21, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f21, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3ff)
li x27, 0x25a738f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f5, 0(x2) # load 0x000003ff from memory into f5
fsub.h f27, f11, f5, dyn # perform operation
fsub.h f27, f11, f5, rdn # perform operation
fsub.h f27, f11, f5, rmm # perform operation
fsub.h f27, f11, f5, rne # perform operation
fsub.h f27, f11, f5, rtz # perform operation
fsub.h f27, f11, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f11, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f11, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f11, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f11, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f11, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x83ff)
li x17, 0xb67bc3fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f29, 0(x2) # load 0x00008000 from memory into f29
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
fsub.h f17, f29, f11, dyn # perform operation
fsub.h f17, f29, f11, rdn # perform operation
fsub.h f17, f29, f11, rmm # perform operation
fsub.h f17, f29, f11, rne # perform operation
fsub.h f17, f29, f11, rtz # perform operation
fsub.h f17, f29, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f29, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f29, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f29, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f29, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f29, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x200)
li x25, 0xde613625 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f27, 0(x2) # load 0x00000200 from memory into f27
fsub.h f25, f12, f27, dyn # perform operation
fsub.h f25, f12, f27, rdn # perform operation
fsub.h f25, f12, f27, rmm # perform operation
fsub.h f25, f12, f27, rne # perform operation
fsub.h f25, f12, f27, rtz # perform operation
fsub.h f25, f12, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f12, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f12, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f12, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f12, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f12, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8200)
li x5, 0xfef1f947 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
fsub.h f5, f26, f15, dyn # perform operation
fsub.h f5, f26, f15, rdn # perform operation
fsub.h f5, f26, f15, rmm # perform operation
fsub.h f5, f26, f15, rne # perform operation
fsub.h f5, f26, f15, rtz # perform operation
fsub.h f5, f26, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f26, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f26, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f26, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f26, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f26, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x1)
li x25, 0xa1cb1875 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f14, 0(x2) # load 0x00008000 from memory into f14
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f2, 0(x2) # load 0x00000001 from memory into f2
fsub.h f25, f14, f2, dyn # perform operation
fsub.h f25, f14, f2, rdn # perform operation
fsub.h f25, f14, f2, rmm # perform operation
fsub.h f25, f14, f2, rne # perform operation
fsub.h f25, f14, f2, rtz # perform operation
fsub.h f25, f14, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f14, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f14, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f14, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f14, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f14, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8001)
li x23, 0xa80e7fc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f25, 0(x2) # load 0x00008001 from memory into f25
fsub.h f23, f7, f25, dyn # perform operation
fsub.h f23, f7, f25, rdn # perform operation
fsub.h f23, f7, f25, rmm # perform operation
fsub.h f23, f7, f25, rne # perform operation
fsub.h f23, f7, f25, rtz # perform operation
fsub.h f23, f7, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f7, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f7, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f7, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f7, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f7, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7c00)
li x20, 0xf42aa468 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
fsub.h f20, f13, f11, dyn # perform operation
fsub.h f20, f13, f11, rdn # perform operation
fsub.h f20, f13, f11, rmm # perform operation
fsub.h f20, f13, f11, rne # perform operation
fsub.h f20, f13, f11, rtz # perform operation
fsub.h f20, f13, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f13, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f13, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f13, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f13, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f13, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfc00)
li x17, 0xc91174a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f23, 0(x2) # load 0x00008000 from memory into f23
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f25, 0(x2) # load 0x0000fc00 from memory into f25
fsub.h f17, f23, f25, dyn # perform operation
fsub.h f17, f23, f25, rdn # perform operation
fsub.h f17, f23, f25, rmm # perform operation
fsub.h f17, f23, f25, rne # perform operation
fsub.h f17, f23, f25, rtz # perform operation
fsub.h f17, f23, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f23, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f23, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f23, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f23, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f23, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7e00)
li x20, 0xbeb4dc9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
fsub.h f20, f3, f8, dyn # perform operation
fsub.h f20, f3, f8, rdn # perform operation
fsub.h f20, f3, f8, rmm # perform operation
fsub.h f20, f3, f8, rne # perform operation
fsub.h f20, f3, f8, rtz # perform operation
fsub.h f20, f3, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f3, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f3, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f3, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f3, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f3, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7fff)
li x22, 0xc7086731 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f30, 0(x2) # load 0x00008000 from memory into f30
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f31, 0(x2) # load 0x00007fff from memory into f31
fsub.h f22, f30, f31, dyn # perform operation
fsub.h f22, f30, f31, rdn # perform operation
fsub.h f22, f30, f31, rmm # perform operation
fsub.h f22, f30, f31, rne # perform operation
fsub.h f22, f30, f31, rtz # perform operation
fsub.h f22, f30, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f30, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f30, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f30, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f30, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f30, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7c01)
li x3, 0x271e9ed3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
fsub.h f3, f7, f13, dyn # perform operation
fsub.h f3, f7, f13, rdn # perform operation
fsub.h f3, f7, f13, rmm # perform operation
fsub.h f3, f7, f13, rne # perform operation
fsub.h f3, f7, f13, rtz # perform operation
fsub.h f3, f7, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f7, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f7, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f7, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f7, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f7, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7dff)
li x9, 0x702e27d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f31, 0(x2) # load 0x00007dff from memory into f31
fsub.h f9, f6, f31, dyn # perform operation
fsub.h f9, f6, f31, rdn # perform operation
fsub.h f9, f6, f31, rmm # perform operation
fsub.h f9, f6, f31, rne # perform operation
fsub.h f9, f6, f31, rtz # perform operation
fsub.h f9, f6, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f6, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f6, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f6, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f6, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f6, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x58b4)
li x29, 0x9d73b068 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
fsub.h f29, f26, f3, dyn # perform operation
fsub.h f29, f26, f3, rdn # perform operation
fsub.h f29, f26, f3, rmm # perform operation
fsub.h f29, f26, f3, rne # perform operation
fsub.h f29, f26, f3, rtz # perform operation
fsub.h f29, f26, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f26, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f26, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f26, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f26, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f26, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xc93a)
li x23, 0x3f9bf034 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f16, 0(x2) # load 0x00008000 from memory into f16
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f31, 0(x2) # load 0x0000c93a from memory into f31
fsub.h f23, f16, f31, dyn # perform operation
fsub.h f23, f16, f31, rdn # perform operation
fsub.h f23, f16, f31, rmm # perform operation
fsub.h f23, f16, f31, rne # perform operation
fsub.h f23, f16, f31, rtz # perform operation
fsub.h f23, f16, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f16, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f16, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f16, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f16, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f16, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x0)
li x31, 0xcff7998f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f21, 0(x2) # load 0x00000000 from memory into f21
fsub.h f31, f28, f21, dyn # perform operation
fsub.h f31, f28, f21, rdn # perform operation
fsub.h f31, f28, f21, rmm # perform operation
fsub.h f31, f28, f21, rne # perform operation
fsub.h f31, f28, f21, rtz # perform operation
fsub.h f31, f28, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f28, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f28, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f28, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f28, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f28, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8000)
li x17, 0xc2f2d4aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f19, 0(x2) # load 0x00008000 from memory into f19
fsub.h f17, f27, f19, dyn # perform operation
fsub.h f17, f27, f19, rdn # perform operation
fsub.h f17, f27, f19, rmm # perform operation
fsub.h f17, f27, f19, rne # perform operation
fsub.h f17, f27, f19, rtz # perform operation
fsub.h f17, f27, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f27, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f27, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f27, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f27, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f27, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3c00)
li x17, 0xf63b1edc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f4, 0(x2) # load 0x00003c00 from memory into f4
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f13, 0(x2) # load 0x00003c00 from memory into f13
fsub.h f17, f4, f13, dyn # perform operation
fsub.h f17, f4, f13, rdn # perform operation
fsub.h f17, f4, f13, rmm # perform operation
fsub.h f17, f4, f13, rne # perform operation
fsub.h f17, f4, f13, rtz # perform operation
fsub.h f17, f4, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f4, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f4, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f4, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f4, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f4, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xbc00)
li x20, 0xdb27e9c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
fsub.h f20, f3, f28, dyn # perform operation
fsub.h f20, f3, f28, rdn # perform operation
fsub.h f20, f3, f28, rmm # perform operation
fsub.h f20, f3, f28, rne # perform operation
fsub.h f20, f3, f28, rtz # perform operation
fsub.h f20, f3, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f3, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f3, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f3, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f3, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f3, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3e00)
li x23, 0x1496f942 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f20, 0(x2) # load 0x00003c00 from memory into f20
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f27, 0(x2) # load 0x00003e00 from memory into f27
fsub.h f23, f20, f27, dyn # perform operation
fsub.h f23, f20, f27, rdn # perform operation
fsub.h f23, f20, f27, rmm # perform operation
fsub.h f23, f20, f27, rne # perform operation
fsub.h f23, f20, f27, rtz # perform operation
fsub.h f23, f20, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f20, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f20, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f20, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f20, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f20, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xbe00)
li x14, 0x31519f96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
fsub.h f14, f15, f27, dyn # perform operation
fsub.h f14, f15, f27, rdn # perform operation
fsub.h f14, f15, f27, rmm # perform operation
fsub.h f14, f15, f27, rne # perform operation
fsub.h f14, f15, f27, rtz # perform operation
fsub.h f14, f15, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f15, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f15, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f15, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f15, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f15, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x4000)
li x7, 0xf20ae2ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f1, 0(x2) # load 0x00004000 from memory into f1
fsub.h f7, f22, f1, dyn # perform operation
fsub.h f7, f22, f1, rdn # perform operation
fsub.h f7, f22, f1, rmm # perform operation
fsub.h f7, f22, f1, rne # perform operation
fsub.h f7, f22, f1, rtz # perform operation
fsub.h f7, f22, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f22, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f22, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f22, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f22, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f22, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xc000)
li x1, 0xde85e51e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f10, 0(x2) # load 0x00003c00 from memory into f10
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
fsub.h f1, f10, f5, dyn # perform operation
fsub.h f1, f10, f5, rdn # perform operation
fsub.h f1, f10, f5, rmm # perform operation
fsub.h f1, f10, f5, rne # perform operation
fsub.h f1, f10, f5, rtz # perform operation
fsub.h f1, f10, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f10, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f10, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f10, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f10, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f10, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x400)
li x8, 0x97d59e1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f4, 0(x2) # load 0x00003c00 from memory into f4
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
fsub.h f8, f4, f23, dyn # perform operation
fsub.h f8, f4, f23, rdn # perform operation
fsub.h f8, f4, f23, rmm # perform operation
fsub.h f8, f4, f23, rne # perform operation
fsub.h f8, f4, f23, rtz # perform operation
fsub.h f8, f4, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f4, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f4, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f4, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f4, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f4, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8400)
li x31, 0xc5455ca0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
fsub.h f31, f3, f29, dyn # perform operation
fsub.h f31, f3, f29, rdn # perform operation
fsub.h f31, f3, f29, rmm # perform operation
fsub.h f31, f3, f29, rne # perform operation
fsub.h f31, f3, f29, rtz # perform operation
fsub.h f31, f3, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f3, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f3, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f3, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f3, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f3, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7bff)
li x12, 0x60b652bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f26, 0(x2) # load 0x00003c00 from memory into f26
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f27, 0(x2) # load 0x00007bff from memory into f27
fsub.h f12, f26, f27, dyn # perform operation
fsub.h f12, f26, f27, rdn # perform operation
fsub.h f12, f26, f27, rmm # perform operation
fsub.h f12, f26, f27, rne # perform operation
fsub.h f12, f26, f27, rtz # perform operation
fsub.h f12, f26, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f26, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f26, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f26, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f26, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f26, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfbff)
li x30, 0xc2d0dce1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f1, 0(x2) # load 0x0000fbff from memory into f1
fsub.h f30, f16, f1, dyn # perform operation
fsub.h f30, f16, f1, rdn # perform operation
fsub.h f30, f16, f1, rmm # perform operation
fsub.h f30, f16, f1, rne # perform operation
fsub.h f30, f16, f1, rtz # perform operation
fsub.h f30, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f16, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3ff)
li x4, 0x3c74b615 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
fsub.h f4, f21, f17, dyn # perform operation
fsub.h f4, f21, f17, rdn # perform operation
fsub.h f4, f21, f17, rmm # perform operation
fsub.h f4, f21, f17, rne # perform operation
fsub.h f4, f21, f17, rtz # perform operation
fsub.h f4, f21, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f4, f21, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f4, f21, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f4, f21, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f4, f21, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f4, f21, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x83ff)
li x15, 0x6c33853c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f10, 0(x2) # load 0x00003c00 from memory into f10
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
fsub.h f15, f10, f11, dyn # perform operation
fsub.h f15, f10, f11, rdn # perform operation
fsub.h f15, f10, f11, rmm # perform operation
fsub.h f15, f10, f11, rne # perform operation
fsub.h f15, f10, f11, rtz # perform operation
fsub.h f15, f10, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f10, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f10, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f10, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f10, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f10, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x200)
li x31, 0xbae265bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f13, 0(x2) # load 0x00003c00 from memory into f13
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f1, 0(x2) # load 0x00000200 from memory into f1
fsub.h f31, f13, f1, dyn # perform operation
fsub.h f31, f13, f1, rdn # perform operation
fsub.h f31, f13, f1, rmm # perform operation
fsub.h f31, f13, f1, rne # perform operation
fsub.h f31, f13, f1, rtz # perform operation
fsub.h f31, f13, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f13, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f13, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f13, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f13, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f13, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8200)
li x13, 0xdb17dce7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
fsub.h f13, f16, f10, dyn # perform operation
fsub.h f13, f16, f10, rdn # perform operation
fsub.h f13, f16, f10, rmm # perform operation
fsub.h f13, f16, f10, rne # perform operation
fsub.h f13, f16, f10, rtz # perform operation
fsub.h f13, f16, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f16, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f16, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f16, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f16, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f16, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x1)
li x5, 0x43f0178a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f12, 0(x2) # load 0x00000001 from memory into f12
fsub.h f5, f3, f12, dyn # perform operation
fsub.h f5, f3, f12, rdn # perform operation
fsub.h f5, f3, f12, rmm # perform operation
fsub.h f5, f3, f12, rne # perform operation
fsub.h f5, f3, f12, rtz # perform operation
fsub.h f5, f3, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f3, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f3, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f3, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f3, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f3, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8001)
li x10, 0x85e719c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f18, 0(x2) # load 0x00008001 from memory into f18
fsub.h f10, f15, f18, dyn # perform operation
fsub.h f10, f15, f18, rdn # perform operation
fsub.h f10, f15, f18, rmm # perform operation
fsub.h f10, f15, f18, rne # perform operation
fsub.h f10, f15, f18, rtz # perform operation
fsub.h f10, f15, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f15, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f15, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f15, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f15, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f15, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7c00)
li x23, 0xa6ee7834 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
fsub.h f23, f15, f1, dyn # perform operation
fsub.h f23, f15, f1, rdn # perform operation
fsub.h f23, f15, f1, rmm # perform operation
fsub.h f23, f15, f1, rne # perform operation
fsub.h f23, f15, f1, rtz # perform operation
fsub.h f23, f15, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f15, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f15, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f15, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f15, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f15, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfc00)
li x10, 0xfd760bed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f19, 0(x2) # load 0x0000fc00 from memory into f19
fsub.h f10, f5, f19, dyn # perform operation
fsub.h f10, f5, f19, rdn # perform operation
fsub.h f10, f5, f19, rmm # perform operation
fsub.h f10, f5, f19, rne # perform operation
fsub.h f10, f5, f19, rtz # perform operation
fsub.h f10, f5, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f5, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f5, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f5, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f5, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f5, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7e00)
li x17, 0x883d0f4c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
fsub.h f17, f24, f14, dyn # perform operation
fsub.h f17, f24, f14, rdn # perform operation
fsub.h f17, f24, f14, rmm # perform operation
fsub.h f17, f24, f14, rne # perform operation
fsub.h f17, f24, f14, rtz # perform operation
fsub.h f17, f24, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f24, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f24, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f24, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f24, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f24, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7fff)
li x21, 0x41a1d5e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f13, 0(x2) # load 0x00007fff from memory into f13
fsub.h f21, f16, f13, dyn # perform operation
fsub.h f21, f16, f13, rdn # perform operation
fsub.h f21, f16, f13, rmm # perform operation
fsub.h f21, f16, f13, rne # perform operation
fsub.h f21, f16, f13, rtz # perform operation
fsub.h f21, f16, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f16, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f16, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f16, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f16, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f16, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7c01)
li x17, 0x63f6b3f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f5, 0(x2) # load 0x00007c01 from memory into f5
fsub.h f17, f22, f5, dyn # perform operation
fsub.h f17, f22, f5, rdn # perform operation
fsub.h f17, f22, f5, rmm # perform operation
fsub.h f17, f22, f5, rne # perform operation
fsub.h f17, f22, f5, rtz # perform operation
fsub.h f17, f22, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f22, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f22, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f22, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f22, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f22, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7dff)
li x3, 0x4a7d7f33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f9, 0(x2) # load 0x00007dff from memory into f9
fsub.h f3, f30, f9, dyn # perform operation
fsub.h f3, f30, f9, rdn # perform operation
fsub.h f3, f30, f9, rmm # perform operation
fsub.h f3, f30, f9, rne # perform operation
fsub.h f3, f30, f9, rtz # perform operation
fsub.h f3, f30, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f30, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f30, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f30, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f30, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f30, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x58b4)
li x1, 0x60763226 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f31, 0(x2) # load 0x00003c00 from memory into f31
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f2, 0(x2) # load 0x000058b4 from memory into f2
fsub.h f1, f31, f2, dyn # perform operation
fsub.h f1, f31, f2, rdn # perform operation
fsub.h f1, f31, f2, rmm # perform operation
fsub.h f1, f31, f2, rne # perform operation
fsub.h f1, f31, f2, rtz # perform operation
fsub.h f1, f31, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f31, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f31, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f31, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f31, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f31, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xc93a)
li x24, 0xf2b21b61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f26, 0(x2) # load 0x00003c00 from memory into f26
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
fsub.h f24, f26, f12, dyn # perform operation
fsub.h f24, f26, f12, rdn # perform operation
fsub.h f24, f26, f12, rmm # perform operation
fsub.h f24, f26, f12, rne # perform operation
fsub.h f24, f26, f12, rtz # perform operation
fsub.h f24, f26, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f26, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f26, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f26, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f26, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f26, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x0)
li x18, 0x12629d3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
fsub.h f18, f26, f2, dyn # perform operation
fsub.h f18, f26, f2, rdn # perform operation
fsub.h f18, f26, f2, rmm # perform operation
fsub.h f18, f26, f2, rne # perform operation
fsub.h f18, f26, f2, rtz # perform operation
fsub.h f18, f26, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f26, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f26, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f26, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f26, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f26, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8000)
li x29, 0xfc7dcf1c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f17, 0(x2) # load 0x0000bc00 from memory into f17
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f28, 0(x2) # load 0x00008000 from memory into f28
fsub.h f29, f17, f28, dyn # perform operation
fsub.h f29, f17, f28, rdn # perform operation
fsub.h f29, f17, f28, rmm # perform operation
fsub.h f29, f17, f28, rne # perform operation
fsub.h f29, f17, f28, rtz # perform operation
fsub.h f29, f17, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f17, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f17, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f17, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f17, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f17, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3c00)
li x4, 0x32711762 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
fsub.h f4, f5, f30, dyn # perform operation
fsub.h f4, f5, f30, rdn # perform operation
fsub.h f4, f5, f30, rmm # perform operation
fsub.h f4, f5, f30, rne # perform operation
fsub.h f4, f5, f30, rtz # perform operation
fsub.h f4, f5, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f4, f5, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f4, f5, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f4, f5, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f4, f5, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f4, f5, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xbc00)
li x10, 0x5be3a7a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f22, 0(x2) # load 0x0000bc00 from memory into f22
fsub.h f10, f5, f22, dyn # perform operation
fsub.h f10, f5, f22, rdn # perform operation
fsub.h f10, f5, f22, rmm # perform operation
fsub.h f10, f5, f22, rne # perform operation
fsub.h f10, f5, f22, rtz # perform operation
fsub.h f10, f5, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f5, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f5, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f5, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f5, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f5, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3e00)
li x25, 0xe421944c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f11, 0(x2) # load 0x0000bc00 from memory into f11
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
fsub.h f25, f11, f1, dyn # perform operation
fsub.h f25, f11, f1, rdn # perform operation
fsub.h f25, f11, f1, rmm # perform operation
fsub.h f25, f11, f1, rne # perform operation
fsub.h f25, f11, f1, rtz # perform operation
fsub.h f25, f11, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f11, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f11, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f11, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f11, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f11, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xbe00)
li x12, 0x12896aca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f13, 0(x2) # load 0x0000be00 from memory into f13
fsub.h f12, f26, f13, dyn # perform operation
fsub.h f12, f26, f13, rdn # perform operation
fsub.h f12, f26, f13, rmm # perform operation
fsub.h f12, f26, f13, rne # perform operation
fsub.h f12, f26, f13, rtz # perform operation
fsub.h f12, f26, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f26, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f26, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f26, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f26, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f26, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x4000)
li x7, 0x0cf1f06f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f25, 0(x2) # load 0x0000bc00 from memory into f25
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f5, 0(x2) # load 0x00004000 from memory into f5
fsub.h f7, f25, f5, dyn # perform operation
fsub.h f7, f25, f5, rdn # perform operation
fsub.h f7, f25, f5, rmm # perform operation
fsub.h f7, f25, f5, rne # perform operation
fsub.h f7, f25, f5, rtz # perform operation
fsub.h f7, f25, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f25, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f25, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f25, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f25, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f25, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xc000)
li x16, 0x84b8b4e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f10, 0(x2) # load 0x0000bc00 from memory into f10
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f14, 0(x2) # load 0x0000c000 from memory into f14
fsub.h f16, f10, f14, dyn # perform operation
fsub.h f16, f10, f14, rdn # perform operation
fsub.h f16, f10, f14, rmm # perform operation
fsub.h f16, f10, f14, rne # perform operation
fsub.h f16, f10, f14, rtz # perform operation
fsub.h f16, f10, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f10, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f10, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f10, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f10, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f10, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x400)
li x24, 0x5b5d9392 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
fsub.h f24, f26, f8, dyn # perform operation
fsub.h f24, f26, f8, rdn # perform operation
fsub.h f24, f26, f8, rmm # perform operation
fsub.h f24, f26, f8, rne # perform operation
fsub.h f24, f26, f8, rtz # perform operation
fsub.h f24, f26, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f26, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f26, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f26, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f26, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f26, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8400)
li x20, 0xe0c1c777 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f22, 0(x2) # load 0x0000bc00 from memory into f22
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
fsub.h f20, f22, f3, dyn # perform operation
fsub.h f20, f22, f3, rdn # perform operation
fsub.h f20, f22, f3, rmm # perform operation
fsub.h f20, f22, f3, rne # perform operation
fsub.h f20, f22, f3, rtz # perform operation
fsub.h f20, f22, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f22, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f22, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f22, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f22, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f22, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7bff)
li x20, 0x7291b4d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f13, 0(x2) # load 0x0000bc00 from memory into f13
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
fsub.h f20, f13, f8, dyn # perform operation
fsub.h f20, f13, f8, rdn # perform operation
fsub.h f20, f13, f8, rmm # perform operation
fsub.h f20, f13, f8, rne # perform operation
fsub.h f20, f13, f8, rtz # perform operation
fsub.h f20, f13, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f13, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f13, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f13, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f13, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f13, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfbff)
li x30, 0xf5083a0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f1, 0(x2) # load 0x0000fbff from memory into f1
fsub.h f30, f18, f1, dyn # perform operation
fsub.h f30, f18, f1, rdn # perform operation
fsub.h f30, f18, f1, rmm # perform operation
fsub.h f30, f18, f1, rne # perform operation
fsub.h f30, f18, f1, rtz # perform operation
fsub.h f30, f18, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f18, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f18, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f18, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f18, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f18, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3ff)
li x9, 0x4373d0bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f17, 0(x2) # load 0x0000bc00 from memory into f17
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f1, 0(x2) # load 0x000003ff from memory into f1
fsub.h f9, f17, f1, dyn # perform operation
fsub.h f9, f17, f1, rdn # perform operation
fsub.h f9, f17, f1, rmm # perform operation
fsub.h f9, f17, f1, rne # perform operation
fsub.h f9, f17, f1, rtz # perform operation
fsub.h f9, f17, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f17, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f17, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f17, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f17, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f17, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x83ff)
li x7, 0x4d6e207e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f22, 0(x2) # load 0x0000bc00 from memory into f22
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f30, 0(x2) # load 0x000083ff from memory into f30
fsub.h f7, f22, f30, dyn # perform operation
fsub.h f7, f22, f30, rdn # perform operation
fsub.h f7, f22, f30, rmm # perform operation
fsub.h f7, f22, f30, rne # perform operation
fsub.h f7, f22, f30, rtz # perform operation
fsub.h f7, f22, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f22, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f22, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f22, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f22, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f22, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x200)
li x14, 0xbde0e749 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f10, 0(x2) # load 0x0000bc00 from memory into f10
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
fsub.h f14, f10, f3, dyn # perform operation
fsub.h f14, f10, f3, rdn # perform operation
fsub.h f14, f10, f3, rmm # perform operation
fsub.h f14, f10, f3, rne # perform operation
fsub.h f14, f10, f3, rtz # perform operation
fsub.h f14, f10, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f10, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f10, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f10, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f10, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f10, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8200)
li x18, 0xbd1b3bdc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f6, 0(x2) # load 0x00008200 from memory into f6
fsub.h f18, f26, f6, dyn # perform operation
fsub.h f18, f26, f6, rdn # perform operation
fsub.h f18, f26, f6, rmm # perform operation
fsub.h f18, f26, f6, rne # perform operation
fsub.h f18, f26, f6, rtz # perform operation
fsub.h f18, f26, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f26, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f26, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f26, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f26, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f26, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x1)
li x14, 0x1433b864 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f25, 0(x2) # load 0x00000001 from memory into f25
fsub.h f14, f5, f25, dyn # perform operation
fsub.h f14, f5, f25, rdn # perform operation
fsub.h f14, f5, f25, rmm # perform operation
fsub.h f14, f5, f25, rne # perform operation
fsub.h f14, f5, f25, rtz # perform operation
fsub.h f14, f5, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f5, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f5, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f5, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f5, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f5, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8001)
li x2, 0xf7f7a16b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f1, 0(x2) # load 0x0000bc00 from memory into f1
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f17, 0(x2) # load 0x00008001 from memory into f17
fsub.h f2, f1, f17, dyn # perform operation
fsub.h f2, f1, f17, rdn # perform operation
fsub.h f2, f1, f17, rmm # perform operation
fsub.h f2, f1, f17, rne # perform operation
fsub.h f2, f1, f17, rtz # perform operation
fsub.h f2, f1, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f1, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f1, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f1, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f1, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f1, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7c00)
li x27, 0xf7f59029 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f12, 0(x2) # load 0x0000bc00 from memory into f12
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f13, 0(x2) # load 0x00007c00 from memory into f13
fsub.h f27, f12, f13, dyn # perform operation
fsub.h f27, f12, f13, rdn # perform operation
fsub.h f27, f12, f13, rmm # perform operation
fsub.h f27, f12, f13, rne # perform operation
fsub.h f27, f12, f13, rtz # perform operation
fsub.h f27, f12, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f12, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f12, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f12, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f12, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f12, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfc00)
li x28, 0xbf8aadbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f7, 0(x2) # load 0x0000fc00 from memory into f7
fsub.h f28, f18, f7, dyn # perform operation
fsub.h f28, f18, f7, rdn # perform operation
fsub.h f28, f18, f7, rmm # perform operation
fsub.h f28, f18, f7, rne # perform operation
fsub.h f28, f18, f7, rtz # perform operation
fsub.h f28, f18, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f18, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f18, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f18, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f18, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f18, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7e00)
li x12, 0x968385bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f4, 0(x2) # load 0x0000bc00 from memory into f4
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f5, 0(x2) # load 0x00007e00 from memory into f5
fsub.h f12, f4, f5, dyn # perform operation
fsub.h f12, f4, f5, rdn # perform operation
fsub.h f12, f4, f5, rmm # perform operation
fsub.h f12, f4, f5, rne # perform operation
fsub.h f12, f4, f5, rtz # perform operation
fsub.h f12, f4, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f4, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f4, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f4, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f4, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f4, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7fff)
li x1, 0x7f13e75d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f27, 0(x2) # load 0x0000bc00 from memory into f27
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
fsub.h f1, f27, f2, dyn # perform operation
fsub.h f1, f27, f2, rdn # perform operation
fsub.h f1, f27, f2, rmm # perform operation
fsub.h f1, f27, f2, rne # perform operation
fsub.h f1, f27, f2, rtz # perform operation
fsub.h f1, f27, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f27, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f27, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f27, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f27, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f27, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7c01)
li x21, 0xdbad13b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f30, 0(x2) # load 0x0000bc00 from memory into f30
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
fsub.h f21, f30, f13, dyn # perform operation
fsub.h f21, f30, f13, rdn # perform operation
fsub.h f21, f30, f13, rmm # perform operation
fsub.h f21, f30, f13, rne # perform operation
fsub.h f21, f30, f13, rtz # perform operation
fsub.h f21, f30, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f30, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f30, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f30, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f30, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f30, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7dff)
li x10, 0x64b320f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
fsub.h f10, f28, f30, dyn # perform operation
fsub.h f10, f28, f30, rdn # perform operation
fsub.h f10, f28, f30, rmm # perform operation
fsub.h f10, f28, f30, rne # perform operation
fsub.h f10, f28, f30, rtz # perform operation
fsub.h f10, f28, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f28, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f28, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f28, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f28, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f28, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x58b4)
li x2, 0xf1398b9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f1, 0(x2) # load 0x0000bc00 from memory into f1
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f27, 0(x2) # load 0x000058b4 from memory into f27
fsub.h f2, f1, f27, dyn # perform operation
fsub.h f2, f1, f27, rdn # perform operation
fsub.h f2, f1, f27, rmm # perform operation
fsub.h f2, f1, f27, rne # perform operation
fsub.h f2, f1, f27, rtz # perform operation
fsub.h f2, f1, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f1, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f1, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f1, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f1, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f1, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xc93a)
li x20, 0x501cd4e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f6, 0(x2) # load 0x0000bc00 from memory into f6
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
fsub.h f20, f6, f30, dyn # perform operation
fsub.h f20, f6, f30, rdn # perform operation
fsub.h f20, f6, f30, rmm # perform operation
fsub.h f20, f6, f30, rne # perform operation
fsub.h f20, f6, f30, rtz # perform operation
fsub.h f20, f6, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f6, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f6, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f6, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f6, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f6, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x0)
li x15, 0x18e8acae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f26, 0(x2) # load 0x00003e00 from memory into f26
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f11, 0(x2) # load 0x00000000 from memory into f11
fsub.h f15, f26, f11, dyn # perform operation
fsub.h f15, f26, f11, rdn # perform operation
fsub.h f15, f26, f11, rmm # perform operation
fsub.h f15, f26, f11, rne # perform operation
fsub.h f15, f26, f11, rtz # perform operation
fsub.h f15, f26, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f26, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f26, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f26, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f26, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f26, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8000)
li x31, 0x535eb82e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f21, 0(x2) # load 0x00003e00 from memory into f21
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f16, 0(x2) # load 0x00008000 from memory into f16
fsub.h f31, f21, f16, dyn # perform operation
fsub.h f31, f21, f16, rdn # perform operation
fsub.h f31, f21, f16, rmm # perform operation
fsub.h f31, f21, f16, rne # perform operation
fsub.h f31, f21, f16, rtz # perform operation
fsub.h f31, f21, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f21, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f21, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f21, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f21, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f21, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3c00)
li x27, 0xc2d33c46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f14, 0(x2) # load 0x00003e00 from memory into f14
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f29, 0(x2) # load 0x00003c00 from memory into f29
fsub.h f27, f14, f29, dyn # perform operation
fsub.h f27, f14, f29, rdn # perform operation
fsub.h f27, f14, f29, rmm # perform operation
fsub.h f27, f14, f29, rne # perform operation
fsub.h f27, f14, f29, rtz # perform operation
fsub.h f27, f14, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f14, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f14, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f14, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f14, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f14, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xbc00)
li x12, 0x03670647 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f25, 0(x2) # load 0x00003e00 from memory into f25
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f10, 0(x2) # load 0x0000bc00 from memory into f10
fsub.h f12, f25, f10, dyn # perform operation
fsub.h f12, f25, f10, rdn # perform operation
fsub.h f12, f25, f10, rmm # perform operation
fsub.h f12, f25, f10, rne # perform operation
fsub.h f12, f25, f10, rtz # perform operation
fsub.h f12, f25, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f25, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f25, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f25, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f25, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f25, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3e00)
li x21, 0x3e44f154 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f2, 0(x2) # load 0x00003e00 from memory into f2
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
fsub.h f21, f2, f12, dyn # perform operation
fsub.h f21, f2, f12, rdn # perform operation
fsub.h f21, f2, f12, rmm # perform operation
fsub.h f21, f2, f12, rne # perform operation
fsub.h f21, f2, f12, rtz # perform operation
fsub.h f21, f2, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f2, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f2, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f2, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f2, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f2, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xbe00)
li x22, 0x8e0bf0ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f24, 0(x2) # load 0x0000be00 from memory into f24
fsub.h f22, f6, f24, dyn # perform operation
fsub.h f22, f6, f24, rdn # perform operation
fsub.h f22, f6, f24, rmm # perform operation
fsub.h f22, f6, f24, rne # perform operation
fsub.h f22, f6, f24, rtz # perform operation
fsub.h f22, f6, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f6, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f6, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f6, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f6, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f6, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x4000)
li x21, 0xa00dcbb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f13, 0(x2) # load 0x00004000 from memory into f13
fsub.h f21, f12, f13, dyn # perform operation
fsub.h f21, f12, f13, rdn # perform operation
fsub.h f21, f12, f13, rmm # perform operation
fsub.h f21, f12, f13, rne # perform operation
fsub.h f21, f12, f13, rtz # perform operation
fsub.h f21, f12, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f12, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f12, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f12, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f12, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f12, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xc000)
li x2, 0x89a3ee17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f27, 0(x2) # load 0x00003e00 from memory into f27
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
fsub.h f2, f27, f23, dyn # perform operation
fsub.h f2, f27, f23, rdn # perform operation
fsub.h f2, f27, f23, rmm # perform operation
fsub.h f2, f27, f23, rne # perform operation
fsub.h f2, f27, f23, rtz # perform operation
fsub.h f2, f27, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f27, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f27, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f27, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f27, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f27, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x400)
li x30, 0xd4be81e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f26, 0(x2) # load 0x00003e00 from memory into f26
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f21, 0(x2) # load 0x00000400 from memory into f21
fsub.h f30, f26, f21, dyn # perform operation
fsub.h f30, f26, f21, rdn # perform operation
fsub.h f30, f26, f21, rmm # perform operation
fsub.h f30, f26, f21, rne # perform operation
fsub.h f30, f26, f21, rtz # perform operation
fsub.h f30, f26, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f26, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f26, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f26, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f26, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f26, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8400)
li x1, 0xa694e776 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f25, 0(x2) # load 0x00003e00 from memory into f25
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
fsub.h f1, f25, f18, dyn # perform operation
fsub.h f1, f25, f18, rdn # perform operation
fsub.h f1, f25, f18, rmm # perform operation
fsub.h f1, f25, f18, rne # perform operation
fsub.h f1, f25, f18, rtz # perform operation
fsub.h f1, f25, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f25, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f25, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f25, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f25, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f25, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7bff)
li x12, 0xcd7d48d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f28, 0(x2) # load 0x00003e00 from memory into f28
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
fsub.h f12, f28, f30, dyn # perform operation
fsub.h f12, f28, f30, rdn # perform operation
fsub.h f12, f28, f30, rmm # perform operation
fsub.h f12, f28, f30, rne # perform operation
fsub.h f12, f28, f30, rtz # perform operation
fsub.h f12, f28, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f28, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f28, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f28, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f28, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f28, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfbff)
li x28, 0x37424185 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f21, 0(x2) # load 0x00003e00 from memory into f21
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f18, 0(x2) # load 0x0000fbff from memory into f18
fsub.h f28, f21, f18, dyn # perform operation
fsub.h f28, f21, f18, rdn # perform operation
fsub.h f28, f21, f18, rmm # perform operation
fsub.h f28, f21, f18, rne # perform operation
fsub.h f28, f21, f18, rtz # perform operation
fsub.h f28, f21, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f21, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f21, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f21, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f21, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f21, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3ff)
li x10, 0xffae6c26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f14, 0(x2) # load 0x000003ff from memory into f14
fsub.h f10, f13, f14, dyn # perform operation
fsub.h f10, f13, f14, rdn # perform operation
fsub.h f10, f13, f14, rmm # perform operation
fsub.h f10, f13, f14, rne # perform operation
fsub.h f10, f13, f14, rtz # perform operation
fsub.h f10, f13, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f13, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f13, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f13, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f13, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f13, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x83ff)
li x8, 0xc2c26964 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
fsub.h f8, f12, f13, dyn # perform operation
fsub.h f8, f12, f13, rdn # perform operation
fsub.h f8, f12, f13, rmm # perform operation
fsub.h f8, f12, f13, rne # perform operation
fsub.h f8, f12, f13, rtz # perform operation
fsub.h f8, f12, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f12, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f12, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f12, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f12, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f12, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x200)
li x21, 0x3896346b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
fsub.h f21, f29, f25, dyn # perform operation
fsub.h f21, f29, f25, rdn # perform operation
fsub.h f21, f29, f25, rmm # perform operation
fsub.h f21, f29, f25, rne # perform operation
fsub.h f21, f29, f25, rtz # perform operation
fsub.h f21, f29, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f29, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f29, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f29, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f29, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f29, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8200)
li x25, 0xcd112f4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f18, 0(x2) # load 0x00003e00 from memory into f18
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
fsub.h f25, f18, f15, dyn # perform operation
fsub.h f25, f18, f15, rdn # perform operation
fsub.h f25, f18, f15, rmm # perform operation
fsub.h f25, f18, f15, rne # perform operation
fsub.h f25, f18, f15, rtz # perform operation
fsub.h f25, f18, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f18, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f18, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f18, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f18, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f18, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x1)
li x29, 0x72035934 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f3, 0(x2) # load 0x00003e00 from memory into f3
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f9, 0(x2) # load 0x00000001 from memory into f9
fsub.h f29, f3, f9, dyn # perform operation
fsub.h f29, f3, f9, rdn # perform operation
fsub.h f29, f3, f9, rmm # perform operation
fsub.h f29, f3, f9, rne # perform operation
fsub.h f29, f3, f9, rtz # perform operation
fsub.h f29, f3, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f3, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f3, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f3, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f3, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f3, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8001)
li x29, 0x33be06da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f8, 0(x2) # load 0x00003e00 from memory into f8
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f4, 0(x2) # load 0x00008001 from memory into f4
fsub.h f29, f8, f4, dyn # perform operation
fsub.h f29, f8, f4, rdn # perform operation
fsub.h f29, f8, f4, rmm # perform operation
fsub.h f29, f8, f4, rne # perform operation
fsub.h f29, f8, f4, rtz # perform operation
fsub.h f29, f8, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f8, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f8, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f8, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f8, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f8, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7c00)
li x22, 0xd65d25d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f27, 0(x2) # load 0x00003e00 from memory into f27
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
fsub.h f22, f27, f7, dyn # perform operation
fsub.h f22, f27, f7, rdn # perform operation
fsub.h f22, f27, f7, rmm # perform operation
fsub.h f22, f27, f7, rne # perform operation
fsub.h f22, f27, f7, rtz # perform operation
fsub.h f22, f27, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f27, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f27, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f27, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f27, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f27, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfc00)
li x13, 0x4e492ecb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f4, 0(x2) # load 0x00003e00 from memory into f4
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f6, 0(x2) # load 0x0000fc00 from memory into f6
fsub.h f13, f4, f6, dyn # perform operation
fsub.h f13, f4, f6, rdn # perform operation
fsub.h f13, f4, f6, rmm # perform operation
fsub.h f13, f4, f6, rne # perform operation
fsub.h f13, f4, f6, rtz # perform operation
fsub.h f13, f4, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f4, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f4, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f4, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f4, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f4, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7e00)
li x20, 0x3fb7a590 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f23, 0(x2) # load 0x00003e00 from memory into f23
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
fsub.h f20, f23, f10, dyn # perform operation
fsub.h f20, f23, f10, rdn # perform operation
fsub.h f20, f23, f10, rmm # perform operation
fsub.h f20, f23, f10, rne # perform operation
fsub.h f20, f23, f10, rtz # perform operation
fsub.h f20, f23, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f23, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f23, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f23, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f23, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f23, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7fff)
li x18, 0x853059cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f14, 0(x2) # load 0x00003e00 from memory into f14
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
fsub.h f18, f14, f30, dyn # perform operation
fsub.h f18, f14, f30, rdn # perform operation
fsub.h f18, f14, f30, rmm # perform operation
fsub.h f18, f14, f30, rne # perform operation
fsub.h f18, f14, f30, rtz # perform operation
fsub.h f18, f14, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f14, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f14, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f14, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f14, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f14, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7c01)
li x4, 0xea839be7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
fsub.h f4, f10, f13, dyn # perform operation
fsub.h f4, f10, f13, rdn # perform operation
fsub.h f4, f10, f13, rmm # perform operation
fsub.h f4, f10, f13, rne # perform operation
fsub.h f4, f10, f13, rtz # perform operation
fsub.h f4, f10, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f4, f10, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f4, f10, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f4, f10, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f4, f10, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f4, f10, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7dff)
li x26, 0xb2b27748 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f30, 0(x2) # load 0x00003e00 from memory into f30
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f3, 0(x2) # load 0x00007dff from memory into f3
fsub.h f26, f30, f3, dyn # perform operation
fsub.h f26, f30, f3, rdn # perform operation
fsub.h f26, f30, f3, rmm # perform operation
fsub.h f26, f30, f3, rne # perform operation
fsub.h f26, f30, f3, rtz # perform operation
fsub.h f26, f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f30, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x58b4)
li x5, 0x1a252922 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f25, 0(x2) # load 0x00003e00 from memory into f25
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f21, 0(x2) # load 0x000058b4 from memory into f21
fsub.h f5, f25, f21, dyn # perform operation
fsub.h f5, f25, f21, rdn # perform operation
fsub.h f5, f25, f21, rmm # perform operation
fsub.h f5, f25, f21, rne # perform operation
fsub.h f5, f25, f21, rtz # perform operation
fsub.h f5, f25, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f25, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f25, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f25, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f25, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f25, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xc93a)
li x10, 0xf430d9ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f4, 0(x2) # load 0x00003e00 from memory into f4
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f29, 0(x2) # load 0x0000c93a from memory into f29
fsub.h f10, f4, f29, dyn # perform operation
fsub.h f10, f4, f29, rdn # perform operation
fsub.h f10, f4, f29, rmm # perform operation
fsub.h f10, f4, f29, rne # perform operation
fsub.h f10, f4, f29, rtz # perform operation
fsub.h f10, f4, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f4, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f4, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f4, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f4, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f4, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x0)
li x28, 0x06694fc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
fsub.h f28, f17, f10, dyn # perform operation
fsub.h f28, f17, f10, rdn # perform operation
fsub.h f28, f17, f10, rmm # perform operation
fsub.h f28, f17, f10, rne # perform operation
fsub.h f28, f17, f10, rtz # perform operation
fsub.h f28, f17, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f17, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f17, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f17, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f17, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f17, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8000)
li x5, 0xf4c3141f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f30, 0(x2) # load 0x0000be00 from memory into f30
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
fsub.h f5, f30, f3, dyn # perform operation
fsub.h f5, f30, f3, rdn # perform operation
fsub.h f5, f30, f3, rmm # perform operation
fsub.h f5, f30, f3, rne # perform operation
fsub.h f5, f30, f3, rtz # perform operation
fsub.h f5, f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f30, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3c00)
li x28, 0x3fd54731 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f21, 0(x2) # load 0x0000be00 from memory into f21
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f9, 0(x2) # load 0x00003c00 from memory into f9
fsub.h f28, f21, f9, dyn # perform operation
fsub.h f28, f21, f9, rdn # perform operation
fsub.h f28, f21, f9, rmm # perform operation
fsub.h f28, f21, f9, rne # perform operation
fsub.h f28, f21, f9, rtz # perform operation
fsub.h f28, f21, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f21, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f21, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f21, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f21, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f21, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xbc00)
li x17, 0xfff3d749 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
fsub.h f17, f1, f15, dyn # perform operation
fsub.h f17, f1, f15, rdn # perform operation
fsub.h f17, f1, f15, rmm # perform operation
fsub.h f17, f1, f15, rne # perform operation
fsub.h f17, f1, f15, rtz # perform operation
fsub.h f17, f1, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f1, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f1, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f1, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f1, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f1, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3e00)
li x18, 0xbe6772a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f11, 0(x2) # load 0x0000be00 from memory into f11
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f5, 0(x2) # load 0x00003e00 from memory into f5
fsub.h f18, f11, f5, dyn # perform operation
fsub.h f18, f11, f5, rdn # perform operation
fsub.h f18, f11, f5, rmm # perform operation
fsub.h f18, f11, f5, rne # perform operation
fsub.h f18, f11, f5, rtz # perform operation
fsub.h f18, f11, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f11, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f11, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f11, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f11, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f11, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xbe00)
li x6, 0x3a73ef2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f25, 0(x2) # load 0x0000be00 from memory into f25
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f11, 0(x2) # load 0x0000be00 from memory into f11
fsub.h f6, f25, f11, dyn # perform operation
fsub.h f6, f25, f11, rdn # perform operation
fsub.h f6, f25, f11, rmm # perform operation
fsub.h f6, f25, f11, rne # perform operation
fsub.h f6, f25, f11, rtz # perform operation
fsub.h f6, f25, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f25, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f25, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f25, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f25, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f25, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x4000)
li x14, 0x6619a361 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
fsub.h f14, f28, f22, dyn # perform operation
fsub.h f14, f28, f22, rdn # perform operation
fsub.h f14, f28, f22, rmm # perform operation
fsub.h f14, f28, f22, rne # perform operation
fsub.h f14, f28, f22, rtz # perform operation
fsub.h f14, f28, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f28, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f28, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f28, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f28, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f28, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xc000)
li x5, 0x78b2c614 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f13, 0(x2) # load 0x0000c000 from memory into f13
fsub.h f5, f8, f13, dyn # perform operation
fsub.h f5, f8, f13, rdn # perform operation
fsub.h f5, f8, f13, rmm # perform operation
fsub.h f5, f8, f13, rne # perform operation
fsub.h f5, f8, f13, rtz # perform operation
fsub.h f5, f8, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f8, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f8, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f8, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f8, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f8, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x400)
li x12, 0x0793a4b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f25, 0(x2) # load 0x0000be00 from memory into f25
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
fsub.h f12, f25, f14, dyn # perform operation
fsub.h f12, f25, f14, rdn # perform operation
fsub.h f12, f25, f14, rmm # perform operation
fsub.h f12, f25, f14, rne # perform operation
fsub.h f12, f25, f14, rtz # perform operation
fsub.h f12, f25, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f25, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f25, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f25, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f25, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f25, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8400)
li x30, 0xb49fc4c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f6, 0(x2) # load 0x0000be00 from memory into f6
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f27, 0(x2) # load 0x00008400 from memory into f27
fsub.h f30, f6, f27, dyn # perform operation
fsub.h f30, f6, f27, rdn # perform operation
fsub.h f30, f6, f27, rmm # perform operation
fsub.h f30, f6, f27, rne # perform operation
fsub.h f30, f6, f27, rtz # perform operation
fsub.h f30, f6, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f6, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f6, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f6, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f6, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f6, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7bff)
li x11, 0x1ce648c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f12, 0(x2) # load 0x0000be00 from memory into f12
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
fsub.h f11, f12, f17, dyn # perform operation
fsub.h f11, f12, f17, rdn # perform operation
fsub.h f11, f12, f17, rmm # perform operation
fsub.h f11, f12, f17, rne # perform operation
fsub.h f11, f12, f17, rtz # perform operation
fsub.h f11, f12, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f12, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f12, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f12, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f12, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f12, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfbff)
li x31, 0x2ef77017 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f6, 0(x2) # load 0x0000be00 from memory into f6
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f10, 0(x2) # load 0x0000fbff from memory into f10
fsub.h f31, f6, f10, dyn # perform operation
fsub.h f31, f6, f10, rdn # perform operation
fsub.h f31, f6, f10, rmm # perform operation
fsub.h f31, f6, f10, rne # perform operation
fsub.h f31, f6, f10, rtz # perform operation
fsub.h f31, f6, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f6, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f6, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f6, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f6, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f6, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3ff)
li x22, 0x73956d13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f14, 0(x2) # load 0x0000be00 from memory into f14
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f1, 0(x2) # load 0x000003ff from memory into f1
fsub.h f22, f14, f1, dyn # perform operation
fsub.h f22, f14, f1, rdn # perform operation
fsub.h f22, f14, f1, rmm # perform operation
fsub.h f22, f14, f1, rne # perform operation
fsub.h f22, f14, f1, rtz # perform operation
fsub.h f22, f14, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f14, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f14, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f14, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f14, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f14, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x83ff)
li x23, 0xbc251b84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
fsub.h f23, f26, f29, dyn # perform operation
fsub.h f23, f26, f29, rdn # perform operation
fsub.h f23, f26, f29, rmm # perform operation
fsub.h f23, f26, f29, rne # perform operation
fsub.h f23, f26, f29, rtz # perform operation
fsub.h f23, f26, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f26, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f26, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f26, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f26, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f26, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x200)
li x23, 0x8fd65416 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f14, 0(x2) # load 0x00000200 from memory into f14
fsub.h f23, f1, f14, dyn # perform operation
fsub.h f23, f1, f14, rdn # perform operation
fsub.h f23, f1, f14, rmm # perform operation
fsub.h f23, f1, f14, rne # perform operation
fsub.h f23, f1, f14, rtz # perform operation
fsub.h f23, f1, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f1, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f1, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f1, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f1, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f1, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8200)
li x29, 0x8c61c1fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f12, 0(x2) # load 0x0000be00 from memory into f12
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f11, 0(x2) # load 0x00008200 from memory into f11
fsub.h f29, f12, f11, dyn # perform operation
fsub.h f29, f12, f11, rdn # perform operation
fsub.h f29, f12, f11, rmm # perform operation
fsub.h f29, f12, f11, rne # perform operation
fsub.h f29, f12, f11, rtz # perform operation
fsub.h f29, f12, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f12, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f12, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f12, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f12, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f12, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x1)
li x20, 0xe55809e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f19, 0(x2) # load 0x00000001 from memory into f19
fsub.h f20, f1, f19, dyn # perform operation
fsub.h f20, f1, f19, rdn # perform operation
fsub.h f20, f1, f19, rmm # perform operation
fsub.h f20, f1, f19, rne # perform operation
fsub.h f20, f1, f19, rtz # perform operation
fsub.h f20, f1, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f1, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f1, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f1, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f1, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f1, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8001)
li x26, 0x27bfc159 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f24, 0(x2) # load 0x0000be00 from memory into f24
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
fsub.h f26, f24, f11, dyn # perform operation
fsub.h f26, f24, f11, rdn # perform operation
fsub.h f26, f24, f11, rmm # perform operation
fsub.h f26, f24, f11, rne # perform operation
fsub.h f26, f24, f11, rtz # perform operation
fsub.h f26, f24, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f24, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f24, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f24, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f24, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f24, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7c00)
li x23, 0xdab33e6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f10, 0(x2) # load 0x0000be00 from memory into f10
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
fsub.h f23, f10, f1, dyn # perform operation
fsub.h f23, f10, f1, rdn # perform operation
fsub.h f23, f10, f1, rmm # perform operation
fsub.h f23, f10, f1, rne # perform operation
fsub.h f23, f10, f1, rtz # perform operation
fsub.h f23, f10, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f10, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f10, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f10, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f10, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f10, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfc00)
li x3, 0x1ef44922 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f13, 0(x2) # load 0x0000be00 from memory into f13
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
fsub.h f3, f13, f28, dyn # perform operation
fsub.h f3, f13, f28, rdn # perform operation
fsub.h f3, f13, f28, rmm # perform operation
fsub.h f3, f13, f28, rne # perform operation
fsub.h f3, f13, f28, rtz # perform operation
fsub.h f3, f13, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f13, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f13, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f13, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f13, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f13, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7e00)
li x18, 0x18aa3b2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f11, 0(x2) # load 0x0000be00 from memory into f11
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
fsub.h f18, f11, f8, dyn # perform operation
fsub.h f18, f11, f8, rdn # perform operation
fsub.h f18, f11, f8, rmm # perform operation
fsub.h f18, f11, f8, rne # perform operation
fsub.h f18, f11, f8, rtz # perform operation
fsub.h f18, f11, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f11, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f11, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f11, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f11, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f11, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7fff)
li x9, 0x53418be1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f13, 0(x2) # load 0x00007fff from memory into f13
fsub.h f9, f8, f13, dyn # perform operation
fsub.h f9, f8, f13, rdn # perform operation
fsub.h f9, f8, f13, rmm # perform operation
fsub.h f9, f8, f13, rne # perform operation
fsub.h f9, f8, f13, rtz # perform operation
fsub.h f9, f8, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f8, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f8, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f8, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f8, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f8, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7c01)
li x31, 0x9c07887c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f4, 0(x2) # load 0x0000be00 from memory into f4
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
fsub.h f31, f4, f12, dyn # perform operation
fsub.h f31, f4, f12, rdn # perform operation
fsub.h f31, f4, f12, rmm # perform operation
fsub.h f31, f4, f12, rne # perform operation
fsub.h f31, f4, f12, rtz # perform operation
fsub.h f31, f4, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f4, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f4, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f4, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f4, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f4, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7dff)
li x28, 0xbc4d2096 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f7, 0(x2) # load 0x0000be00 from memory into f7
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
fsub.h f28, f7, f30, dyn # perform operation
fsub.h f28, f7, f30, rdn # perform operation
fsub.h f28, f7, f30, rmm # perform operation
fsub.h f28, f7, f30, rne # perform operation
fsub.h f28, f7, f30, rtz # perform operation
fsub.h f28, f7, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f7, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f7, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f7, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f7, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f7, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x58b4)
li x29, 0xdc2d165f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f14, 0(x2) # load 0x0000be00 from memory into f14
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
fsub.h f29, f14, f3, dyn # perform operation
fsub.h f29, f14, f3, rdn # perform operation
fsub.h f29, f14, f3, rmm # perform operation
fsub.h f29, f14, f3, rne # perform operation
fsub.h f29, f14, f3, rtz # perform operation
fsub.h f29, f14, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f14, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f14, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f14, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f14, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f14, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xc93a)
li x5, 0x47821755 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f6, 0(x2) # load 0x0000be00 from memory into f6
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
fsub.h f5, f6, f21, dyn # perform operation
fsub.h f5, f6, f21, rdn # perform operation
fsub.h f5, f6, f21, rmm # perform operation
fsub.h f5, f6, f21, rne # perform operation
fsub.h f5, f6, f21, rtz # perform operation
fsub.h f5, f6, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f6, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f6, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f6, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f6, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f6, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x0)
li x18, 0xe9b26502 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f8, 0(x2) # load 0x00004000 from memory into f8
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
fsub.h f18, f8, f31, dyn # perform operation
fsub.h f18, f8, f31, rdn # perform operation
fsub.h f18, f8, f31, rmm # perform operation
fsub.h f18, f8, f31, rne # perform operation
fsub.h f18, f8, f31, rtz # perform operation
fsub.h f18, f8, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f8, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f8, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f8, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f8, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f8, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8000)
li x18, 0xe0ce4bfb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f15, 0(x2) # load 0x00004000 from memory into f15
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
fsub.h f18, f15, f10, dyn # perform operation
fsub.h f18, f15, f10, rdn # perform operation
fsub.h f18, f15, f10, rmm # perform operation
fsub.h f18, f15, f10, rne # perform operation
fsub.h f18, f15, f10, rtz # perform operation
fsub.h f18, f15, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f15, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f15, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f15, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f15, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f15, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3c00)
li x16, 0x40978240 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f5, 0(x2) # load 0x00004000 from memory into f5
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
fsub.h f16, f5, f7, dyn # perform operation
fsub.h f16, f5, f7, rdn # perform operation
fsub.h f16, f5, f7, rmm # perform operation
fsub.h f16, f5, f7, rne # perform operation
fsub.h f16, f5, f7, rtz # perform operation
fsub.h f16, f5, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f5, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f5, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f5, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f5, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f5, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xbc00)
li x29, 0x4a71e1ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f8, 0(x2) # load 0x00004000 from memory into f8
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f22, 0(x2) # load 0x0000bc00 from memory into f22
fsub.h f29, f8, f22, dyn # perform operation
fsub.h f29, f8, f22, rdn # perform operation
fsub.h f29, f8, f22, rmm # perform operation
fsub.h f29, f8, f22, rne # perform operation
fsub.h f29, f8, f22, rtz # perform operation
fsub.h f29, f8, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f8, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f8, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f8, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f8, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f8, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3e00)
li x4, 0x2e1a8ead # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f26, 0(x2) # load 0x00004000 from memory into f26
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
fsub.h f4, f26, f17, dyn # perform operation
fsub.h f4, f26, f17, rdn # perform operation
fsub.h f4, f26, f17, rmm # perform operation
fsub.h f4, f26, f17, rne # perform operation
fsub.h f4, f26, f17, rtz # perform operation
fsub.h f4, f26, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f4, f26, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f4, f26, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f4, f26, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f4, f26, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f4, f26, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xbe00)
li x7, 0x03ea8961 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f30, 0(x2) # load 0x00004000 from memory into f30
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f22, 0(x2) # load 0x0000be00 from memory into f22
fsub.h f7, f30, f22, dyn # perform operation
fsub.h f7, f30, f22, rdn # perform operation
fsub.h f7, f30, f22, rmm # perform operation
fsub.h f7, f30, f22, rne # perform operation
fsub.h f7, f30, f22, rtz # perform operation
fsub.h f7, f30, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f30, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f30, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f30, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f30, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f30, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x4000)
li x2, 0xa446a11b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f3, 0(x2) # load 0x00004000 from memory into f3
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f17, 0(x2) # load 0x00004000 from memory into f17
fsub.h f2, f3, f17, dyn # perform operation
fsub.h f2, f3, f17, rdn # perform operation
fsub.h f2, f3, f17, rmm # perform operation
fsub.h f2, f3, f17, rne # perform operation
fsub.h f2, f3, f17, rtz # perform operation
fsub.h f2, f3, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f3, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f3, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f3, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f3, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f3, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xc000)
li x27, 0xa2b6ab9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f8, 0(x2) # load 0x00004000 from memory into f8
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f28, 0(x2) # load 0x0000c000 from memory into f28
fsub.h f27, f8, f28, dyn # perform operation
fsub.h f27, f8, f28, rdn # perform operation
fsub.h f27, f8, f28, rmm # perform operation
fsub.h f27, f8, f28, rne # perform operation
fsub.h f27, f8, f28, rtz # perform operation
fsub.h f27, f8, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f8, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f8, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f8, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f8, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f8, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x400)
li x31, 0x18bbef83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f7, 0(x2) # load 0x00004000 from memory into f7
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f1, 0(x2) # load 0x00000400 from memory into f1
fsub.h f31, f7, f1, dyn # perform operation
fsub.h f31, f7, f1, rdn # perform operation
fsub.h f31, f7, f1, rmm # perform operation
fsub.h f31, f7, f1, rne # perform operation
fsub.h f31, f7, f1, rtz # perform operation
fsub.h f31, f7, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f7, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f7, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f7, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f7, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f7, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8400)
li x15, 0xba9d3b50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f19, 0(x2) # load 0x00004000 from memory into f19
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
fsub.h f15, f19, f3, dyn # perform operation
fsub.h f15, f19, f3, rdn # perform operation
fsub.h f15, f19, f3, rmm # perform operation
fsub.h f15, f19, f3, rne # perform operation
fsub.h f15, f19, f3, rtz # perform operation
fsub.h f15, f19, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f19, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f19, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f19, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f19, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f19, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7bff)
li x20, 0x1dbd9413 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f24, 0(x2) # load 0x00004000 from memory into f24
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f11, 0(x2) # load 0x00007bff from memory into f11
fsub.h f20, f24, f11, dyn # perform operation
fsub.h f20, f24, f11, rdn # perform operation
fsub.h f20, f24, f11, rmm # perform operation
fsub.h f20, f24, f11, rne # perform operation
fsub.h f20, f24, f11, rtz # perform operation
fsub.h f20, f24, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f24, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f24, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f24, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f24, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f24, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfbff)
li x27, 0xa3459d11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f26, 0(x2) # load 0x0000fbff from memory into f26
fsub.h f27, f21, f26, dyn # perform operation
fsub.h f27, f21, f26, rdn # perform operation
fsub.h f27, f21, f26, rmm # perform operation
fsub.h f27, f21, f26, rne # perform operation
fsub.h f27, f21, f26, rtz # perform operation
fsub.h f27, f21, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f21, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f21, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f21, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f21, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f21, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3ff)
li x23, 0xc5732a80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f4, 0(x2) # load 0x00004000 from memory into f4
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f24, 0(x2) # load 0x000003ff from memory into f24
fsub.h f23, f4, f24, dyn # perform operation
fsub.h f23, f4, f24, rdn # perform operation
fsub.h f23, f4, f24, rmm # perform operation
fsub.h f23, f4, f24, rne # perform operation
fsub.h f23, f4, f24, rtz # perform operation
fsub.h f23, f4, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f4, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f4, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f4, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f4, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f4, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x83ff)
li x20, 0xeaaa5a47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f3, 0(x2) # load 0x00004000 from memory into f3
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
fsub.h f20, f3, f11, dyn # perform operation
fsub.h f20, f3, f11, rdn # perform operation
fsub.h f20, f3, f11, rmm # perform operation
fsub.h f20, f3, f11, rne # perform operation
fsub.h f20, f3, f11, rtz # perform operation
fsub.h f20, f3, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f3, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f3, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f3, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f3, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f3, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x200)
li x3, 0xcd31c811 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f17, 0(x2) # load 0x00004000 from memory into f17
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f8, 0(x2) # load 0x00000200 from memory into f8
fsub.h f3, f17, f8, dyn # perform operation
fsub.h f3, f17, f8, rdn # perform operation
fsub.h f3, f17, f8, rmm # perform operation
fsub.h f3, f17, f8, rne # perform operation
fsub.h f3, f17, f8, rtz # perform operation
fsub.h f3, f17, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f17, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f17, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f17, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f17, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f17, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8200)
li x15, 0xffe44a8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f31, 0(x2) # load 0x00008200 from memory into f31
fsub.h f15, f21, f31, dyn # perform operation
fsub.h f15, f21, f31, rdn # perform operation
fsub.h f15, f21, f31, rmm # perform operation
fsub.h f15, f21, f31, rne # perform operation
fsub.h f15, f21, f31, rtz # perform operation
fsub.h f15, f21, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f21, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f21, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f21, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f21, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f21, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x1)
li x3, 0xea655e9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f16, 0(x2) # load 0x00004000 from memory into f16
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
fsub.h f3, f16, f21, dyn # perform operation
fsub.h f3, f16, f21, rdn # perform operation
fsub.h f3, f16, f21, rmm # perform operation
fsub.h f3, f16, f21, rne # perform operation
fsub.h f3, f16, f21, rtz # perform operation
fsub.h f3, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f16, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8001)
li x31, 0x551d917d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f21, 0(x2) # load 0x00008001 from memory into f21
fsub.h f31, f28, f21, dyn # perform operation
fsub.h f31, f28, f21, rdn # perform operation
fsub.h f31, f28, f21, rmm # perform operation
fsub.h f31, f28, f21, rne # perform operation
fsub.h f31, f28, f21, rtz # perform operation
fsub.h f31, f28, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f28, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f28, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f28, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f28, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f28, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7c00)
li x28, 0x596d72f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
fsub.h f28, f23, f14, dyn # perform operation
fsub.h f28, f23, f14, rdn # perform operation
fsub.h f28, f23, f14, rmm # perform operation
fsub.h f28, f23, f14, rne # perform operation
fsub.h f28, f23, f14, rtz # perform operation
fsub.h f28, f23, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f23, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f23, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f23, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f23, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f23, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfc00)
li x1, 0xa69e186a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f16, 0(x2) # load 0x00004000 from memory into f16
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f25, 0(x2) # load 0x0000fc00 from memory into f25
fsub.h f1, f16, f25, dyn # perform operation
fsub.h f1, f16, f25, rdn # perform operation
fsub.h f1, f16, f25, rmm # perform operation
fsub.h f1, f16, f25, rne # perform operation
fsub.h f1, f16, f25, rtz # perform operation
fsub.h f1, f16, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f16, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f16, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f16, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f16, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f16, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7e00)
li x16, 0x6ffc174b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f4, 0(x2) # load 0x00004000 from memory into f4
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f9, 0(x2) # load 0x00007e00 from memory into f9
fsub.h f16, f4, f9, dyn # perform operation
fsub.h f16, f4, f9, rdn # perform operation
fsub.h f16, f4, f9, rmm # perform operation
fsub.h f16, f4, f9, rne # perform operation
fsub.h f16, f4, f9, rtz # perform operation
fsub.h f16, f4, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f4, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f4, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f4, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f4, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f4, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7fff)
li x12, 0xdf35548d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f31, 0(x2) # load 0x00004000 from memory into f31
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f4, 0(x2) # load 0x00007fff from memory into f4
fsub.h f12, f31, f4, dyn # perform operation
fsub.h f12, f31, f4, rdn # perform operation
fsub.h f12, f31, f4, rmm # perform operation
fsub.h f12, f31, f4, rne # perform operation
fsub.h f12, f31, f4, rtz # perform operation
fsub.h f12, f31, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f31, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f31, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f31, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f31, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f31, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7c01)
li x29, 0xc369115d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f1, 0(x2) # load 0x00007c01 from memory into f1
fsub.h f29, f25, f1, dyn # perform operation
fsub.h f29, f25, f1, rdn # perform operation
fsub.h f29, f25, f1, rmm # perform operation
fsub.h f29, f25, f1, rne # perform operation
fsub.h f29, f25, f1, rtz # perform operation
fsub.h f29, f25, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f25, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f25, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f25, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f25, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f25, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7dff)
li x17, 0x5404116b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f18, 0(x2) # load 0x00007dff from memory into f18
fsub.h f17, f6, f18, dyn # perform operation
fsub.h f17, f6, f18, rdn # perform operation
fsub.h f17, f6, f18, rmm # perform operation
fsub.h f17, f6, f18, rne # perform operation
fsub.h f17, f6, f18, rtz # perform operation
fsub.h f17, f6, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f6, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f6, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f6, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f6, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f6, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x58b4)
li x14, 0x3df620ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
fsub.h f14, f25, f3, dyn # perform operation
fsub.h f14, f25, f3, rdn # perform operation
fsub.h f14, f25, f3, rmm # perform operation
fsub.h f14, f25, f3, rne # perform operation
fsub.h f14, f25, f3, rtz # perform operation
fsub.h f14, f25, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f25, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f25, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f25, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f25, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f25, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xc93a)
li x20, 0x468fd52c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f26, 0(x2) # load 0x00004000 from memory into f26
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f25, 0(x2) # load 0x0000c93a from memory into f25
fsub.h f20, f26, f25, dyn # perform operation
fsub.h f20, f26, f25, rdn # perform operation
fsub.h f20, f26, f25, rmm # perform operation
fsub.h f20, f26, f25, rne # perform operation
fsub.h f20, f26, f25, rtz # perform operation
fsub.h f20, f26, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f26, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f26, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f26, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f26, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f26, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x0)
li x12, 0xd7fc108e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f30, 0(x2) # load 0x0000c000 from memory into f30
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f28, 0(x2) # load 0x00000000 from memory into f28
fsub.h f12, f30, f28, dyn # perform operation
fsub.h f12, f30, f28, rdn # perform operation
fsub.h f12, f30, f28, rmm # perform operation
fsub.h f12, f30, f28, rne # perform operation
fsub.h f12, f30, f28, rtz # perform operation
fsub.h f12, f30, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f30, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f30, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f30, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f30, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f30, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8000)
li x16, 0xb071e106 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f1, 0(x2) # load 0x00008000 from memory into f1
fsub.h f16, f18, f1, dyn # perform operation
fsub.h f16, f18, f1, rdn # perform operation
fsub.h f16, f18, f1, rmm # perform operation
fsub.h f16, f18, f1, rne # perform operation
fsub.h f16, f18, f1, rtz # perform operation
fsub.h f16, f18, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f18, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f18, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f18, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f18, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f18, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3c00)
li x31, 0xe3bbb051 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f1, 0(x2) # load 0x00003c00 from memory into f1
fsub.h f31, f25, f1, dyn # perform operation
fsub.h f31, f25, f1, rdn # perform operation
fsub.h f31, f25, f1, rmm # perform operation
fsub.h f31, f25, f1, rne # perform operation
fsub.h f31, f25, f1, rtz # perform operation
fsub.h f31, f25, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f25, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f25, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f25, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f25, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f25, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xbc00)
li x19, 0x994a4b61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f13, 0(x2) # load 0x0000c000 from memory into f13
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f31, 0(x2) # load 0x0000bc00 from memory into f31
fsub.h f19, f13, f31, dyn # perform operation
fsub.h f19, f13, f31, rdn # perform operation
fsub.h f19, f13, f31, rmm # perform operation
fsub.h f19, f13, f31, rne # perform operation
fsub.h f19, f13, f31, rtz # perform operation
fsub.h f19, f13, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f13, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f13, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f13, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f13, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f13, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3e00)
li x9, 0x01c0a88a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f4, 0(x2) # load 0x00003e00 from memory into f4
fsub.h f9, f21, f4, dyn # perform operation
fsub.h f9, f21, f4, rdn # perform operation
fsub.h f9, f21, f4, rmm # perform operation
fsub.h f9, f21, f4, rne # perform operation
fsub.h f9, f21, f4, rtz # perform operation
fsub.h f9, f21, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f21, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f21, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f21, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f21, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f21, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xbe00)
li x11, 0xa4b48c2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f10, 0(x2) # load 0x0000c000 from memory into f10
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f9, 0(x2) # load 0x0000be00 from memory into f9
fsub.h f11, f10, f9, dyn # perform operation
fsub.h f11, f10, f9, rdn # perform operation
fsub.h f11, f10, f9, rmm # perform operation
fsub.h f11, f10, f9, rne # perform operation
fsub.h f11, f10, f9, rtz # perform operation
fsub.h f11, f10, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f10, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f10, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f10, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f10, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f10, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x4000)
li x8, 0x4bb2d3d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
fsub.h f8, f3, f22, dyn # perform operation
fsub.h f8, f3, f22, rdn # perform operation
fsub.h f8, f3, f22, rmm # perform operation
fsub.h f8, f3, f22, rne # perform operation
fsub.h f8, f3, f22, rtz # perform operation
fsub.h f8, f3, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f3, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f3, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f3, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f3, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f3, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xc000)
li x21, 0x97471ef3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f30, 0(x2) # load 0x0000c000 from memory into f30
fsub.h f21, f17, f30, dyn # perform operation
fsub.h f21, f17, f30, rdn # perform operation
fsub.h f21, f17, f30, rmm # perform operation
fsub.h f21, f17, f30, rne # perform operation
fsub.h f21, f17, f30, rtz # perform operation
fsub.h f21, f17, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f17, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f17, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f17, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f17, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f17, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x400)
li x19, 0x5c1b3a66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
fsub.h f19, f9, f29, dyn # perform operation
fsub.h f19, f9, f29, rdn # perform operation
fsub.h f19, f9, f29, rmm # perform operation
fsub.h f19, f9, f29, rne # perform operation
fsub.h f19, f9, f29, rtz # perform operation
fsub.h f19, f9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f9, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f9, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f9, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f9, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f9, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8400)
li x28, 0x4feee36e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
fsub.h f28, f26, f21, dyn # perform operation
fsub.h f28, f26, f21, rdn # perform operation
fsub.h f28, f26, f21, rmm # perform operation
fsub.h f28, f26, f21, rne # perform operation
fsub.h f28, f26, f21, rtz # perform operation
fsub.h f28, f26, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f26, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f26, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f26, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f26, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f26, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7bff)
li x22, 0x1f6294d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
fsub.h f22, f9, f12, dyn # perform operation
fsub.h f22, f9, f12, rdn # perform operation
fsub.h f22, f9, f12, rmm # perform operation
fsub.h f22, f9, f12, rne # perform operation
fsub.h f22, f9, f12, rtz # perform operation
fsub.h f22, f9, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f9, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f9, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f9, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f9, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f9, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfbff)
li x21, 0x7424c04c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
fsub.h f21, f23, f28, dyn # perform operation
fsub.h f21, f23, f28, rdn # perform operation
fsub.h f21, f23, f28, rmm # perform operation
fsub.h f21, f23, f28, rne # perform operation
fsub.h f21, f23, f28, rtz # perform operation
fsub.h f21, f23, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f23, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f23, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f23, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f23, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f23, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3ff)
li x23, 0xf39729e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f12, 0(x2) # load 0x0000c000 from memory into f12
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f19, 0(x2) # load 0x000003ff from memory into f19
fsub.h f23, f12, f19, dyn # perform operation
fsub.h f23, f12, f19, rdn # perform operation
fsub.h f23, f12, f19, rmm # perform operation
fsub.h f23, f12, f19, rne # perform operation
fsub.h f23, f12, f19, rtz # perform operation
fsub.h f23, f12, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f12, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f12, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f12, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f12, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f12, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x83ff)
li x18, 0xe97adf3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f30, 0(x2) # load 0x000083ff from memory into f30
fsub.h f18, f5, f30, dyn # perform operation
fsub.h f18, f5, f30, rdn # perform operation
fsub.h f18, f5, f30, rmm # perform operation
fsub.h f18, f5, f30, rne # perform operation
fsub.h f18, f5, f30, rtz # perform operation
fsub.h f18, f5, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f5, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f5, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f5, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f5, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f5, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x200)
li x26, 0x2617479d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
fsub.h f26, f16, f22, dyn # perform operation
fsub.h f26, f16, f22, rdn # perform operation
fsub.h f26, f16, f22, rmm # perform operation
fsub.h f26, f16, f22, rne # perform operation
fsub.h f26, f16, f22, rtz # perform operation
fsub.h f26, f16, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f16, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f16, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f16, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f16, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f16, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8200)
li x25, 0x7e1763e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f6, 0(x2) # load 0x00008200 from memory into f6
fsub.h f25, f17, f6, dyn # perform operation
fsub.h f25, f17, f6, rdn # perform operation
fsub.h f25, f17, f6, rmm # perform operation
fsub.h f25, f17, f6, rne # perform operation
fsub.h f25, f17, f6, rtz # perform operation
fsub.h f25, f17, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f17, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f17, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f17, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f17, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f17, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x1)
li x3, 0x6aadbb73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f12, 0(x2) # load 0x0000c000 from memory into f12
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f29, 0(x2) # load 0x00000001 from memory into f29
fsub.h f3, f12, f29, dyn # perform operation
fsub.h f3, f12, f29, rdn # perform operation
fsub.h f3, f12, f29, rmm # perform operation
fsub.h f3, f12, f29, rne # perform operation
fsub.h f3, f12, f29, rtz # perform operation
fsub.h f3, f12, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f12, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f12, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f12, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f12, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f12, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8001)
li x18, 0x2bd27acd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f29, 0(x2) # load 0x0000c000 from memory into f29
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f26, 0(x2) # load 0x00008001 from memory into f26
fsub.h f18, f29, f26, dyn # perform operation
fsub.h f18, f29, f26, rdn # perform operation
fsub.h f18, f29, f26, rmm # perform operation
fsub.h f18, f29, f26, rne # perform operation
fsub.h f18, f29, f26, rtz # perform operation
fsub.h f18, f29, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f29, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f29, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f29, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f29, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f29, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7c00)
li x5, 0x143c7460 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
fsub.h f5, f18, f2, dyn # perform operation
fsub.h f5, f18, f2, rdn # perform operation
fsub.h f5, f18, f2, rmm # perform operation
fsub.h f5, f18, f2, rne # perform operation
fsub.h f5, f18, f2, rtz # perform operation
fsub.h f5, f18, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f18, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f18, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f18, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f18, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f18, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfc00)
li x22, 0xdcc67a1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f30, 0(x2) # load 0x0000fc00 from memory into f30
fsub.h f22, f26, f30, dyn # perform operation
fsub.h f22, f26, f30, rdn # perform operation
fsub.h f22, f26, f30, rmm # perform operation
fsub.h f22, f26, f30, rne # perform operation
fsub.h f22, f26, f30, rtz # perform operation
fsub.h f22, f26, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f26, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f26, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f26, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f26, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f26, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7e00)
li x6, 0xa7b1c396 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f26, 0(x2) # load 0x00007e00 from memory into f26
fsub.h f6, f25, f26, dyn # perform operation
fsub.h f6, f25, f26, rdn # perform operation
fsub.h f6, f25, f26, rmm # perform operation
fsub.h f6, f25, f26, rne # perform operation
fsub.h f6, f25, f26, rtz # perform operation
fsub.h f6, f25, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f25, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f25, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f25, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f25, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f25, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7fff)
li x9, 0x370c09d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f30, 0(x2) # load 0x0000c000 from memory into f30
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f7, 0(x2) # load 0x00007fff from memory into f7
fsub.h f9, f30, f7, dyn # perform operation
fsub.h f9, f30, f7, rdn # perform operation
fsub.h f9, f30, f7, rmm # perform operation
fsub.h f9, f30, f7, rne # perform operation
fsub.h f9, f30, f7, rtz # perform operation
fsub.h f9, f30, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f30, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f30, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f30, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f30, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f30, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7c01)
li x2, 0x68c29172 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f7, 0(x2) # load 0x0000c000 from memory into f7
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
fsub.h f2, f7, f13, dyn # perform operation
fsub.h f2, f7, f13, rdn # perform operation
fsub.h f2, f7, f13, rmm # perform operation
fsub.h f2, f7, f13, rne # perform operation
fsub.h f2, f7, f13, rtz # perform operation
fsub.h f2, f7, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f7, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f7, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f7, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f7, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f7, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7dff)
li x4, 0x744aa55a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f20, 0(x2) # load 0x0000c000 from memory into f20
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f22, 0(x2) # load 0x00007dff from memory into f22
fsub.h f4, f20, f22, dyn # perform operation
fsub.h f4, f20, f22, rdn # perform operation
fsub.h f4, f20, f22, rmm # perform operation
fsub.h f4, f20, f22, rne # perform operation
fsub.h f4, f20, f22, rtz # perform operation
fsub.h f4, f20, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f4, f20, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f4, f20, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f4, f20, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f4, f20, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f4, f20, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x58b4)
li x22, 0xef6ec3bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f27, 0(x2) # load 0x0000c000 from memory into f27
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
fsub.h f22, f27, f11, dyn # perform operation
fsub.h f22, f27, f11, rdn # perform operation
fsub.h f22, f27, f11, rmm # perform operation
fsub.h f22, f27, f11, rne # perform operation
fsub.h f22, f27, f11, rtz # perform operation
fsub.h f22, f27, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f27, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f27, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f27, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f27, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f27, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xc93a)
li x20, 0x39939066 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f19, 0(x2) # load 0x0000c000 from memory into f19
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
fsub.h f20, f19, f12, dyn # perform operation
fsub.h f20, f19, f12, rdn # perform operation
fsub.h f20, f19, f12, rmm # perform operation
fsub.h f20, f19, f12, rne # perform operation
fsub.h f20, f19, f12, rtz # perform operation
fsub.h f20, f19, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f19, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f19, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f19, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f19, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f19, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x0)
li x19, 0xb1c81fd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f3, 0(x2) # load 0x00000400 from memory into f3
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f9, 0(x2) # load 0x00000000 from memory into f9
fsub.h f19, f3, f9, dyn # perform operation
fsub.h f19, f3, f9, rdn # perform operation
fsub.h f19, f3, f9, rmm # perform operation
fsub.h f19, f3, f9, rne # perform operation
fsub.h f19, f3, f9, rtz # perform operation
fsub.h f19, f3, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f3, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f3, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f3, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f3, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f3, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8000)
li x22, 0x5f4c0143 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f6, 0(x2) # load 0x00000400 from memory into f6
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f15, 0(x2) # load 0x00008000 from memory into f15
fsub.h f22, f6, f15, dyn # perform operation
fsub.h f22, f6, f15, rdn # perform operation
fsub.h f22, f6, f15, rmm # perform operation
fsub.h f22, f6, f15, rne # perform operation
fsub.h f22, f6, f15, rtz # perform operation
fsub.h f22, f6, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f6, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f6, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f6, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f6, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f6, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3c00)
li x11, 0x0484ab31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f12, 0(x2) # load 0x00003c00 from memory into f12
fsub.h f11, f20, f12, dyn # perform operation
fsub.h f11, f20, f12, rdn # perform operation
fsub.h f11, f20, f12, rmm # perform operation
fsub.h f11, f20, f12, rne # perform operation
fsub.h f11, f20, f12, rtz # perform operation
fsub.h f11, f20, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f20, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f20, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f20, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f20, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f20, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xbc00)
li x14, 0x919cfef4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f31, 0(x2) # load 0x00000400 from memory into f31
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f2, 0(x2) # load 0x0000bc00 from memory into f2
fsub.h f14, f31, f2, dyn # perform operation
fsub.h f14, f31, f2, rdn # perform operation
fsub.h f14, f31, f2, rmm # perform operation
fsub.h f14, f31, f2, rne # perform operation
fsub.h f14, f31, f2, rtz # perform operation
fsub.h f14, f31, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f31, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f31, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f31, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f31, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f31, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3e00)
li x24, 0xd2e0f345 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f15, 0(x2) # load 0x00003e00 from memory into f15
fsub.h f24, f8, f15, dyn # perform operation
fsub.h f24, f8, f15, rdn # perform operation
fsub.h f24, f8, f15, rmm # perform operation
fsub.h f24, f8, f15, rne # perform operation
fsub.h f24, f8, f15, rtz # perform operation
fsub.h f24, f8, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f8, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f8, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f8, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f8, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f8, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xbe00)
li x7, 0xc3eed638 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f5, 0(x2) # load 0x00000400 from memory into f5
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f14, 0(x2) # load 0x0000be00 from memory into f14
fsub.h f7, f5, f14, dyn # perform operation
fsub.h f7, f5, f14, rdn # perform operation
fsub.h f7, f5, f14, rmm # perform operation
fsub.h f7, f5, f14, rne # perform operation
fsub.h f7, f5, f14, rtz # perform operation
fsub.h f7, f5, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f5, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f5, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f5, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f5, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f5, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x4000)
li x1, 0x0b264c92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f10, 0(x2) # load 0x00004000 from memory into f10
fsub.h f1, f23, f10, dyn # perform operation
fsub.h f1, f23, f10, rdn # perform operation
fsub.h f1, f23, f10, rmm # perform operation
fsub.h f1, f23, f10, rne # perform operation
fsub.h f1, f23, f10, rtz # perform operation
fsub.h f1, f23, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f23, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f23, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f23, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f23, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f23, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xc000)
li x5, 0xf9b53a4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f21, 0(x2) # load 0x00000400 from memory into f21
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f12, 0(x2) # load 0x0000c000 from memory into f12
fsub.h f5, f21, f12, dyn # perform operation
fsub.h f5, f21, f12, rdn # perform operation
fsub.h f5, f21, f12, rmm # perform operation
fsub.h f5, f21, f12, rne # perform operation
fsub.h f5, f21, f12, rtz # perform operation
fsub.h f5, f21, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f21, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f21, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f21, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f21, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f21, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x400)
li x17, 0x4aca96e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f11, 0(x2) # load 0x00000400 from memory into f11
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f31, 0(x2) # load 0x00000400 from memory into f31
fsub.h f17, f11, f31, dyn # perform operation
fsub.h f17, f11, f31, rdn # perform operation
fsub.h f17, f11, f31, rmm # perform operation
fsub.h f17, f11, f31, rne # perform operation
fsub.h f17, f11, f31, rtz # perform operation
fsub.h f17, f11, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f11, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f11, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f11, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f11, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f11, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8400)
li x14, 0xc40a23d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
fsub.h f14, f16, f3, dyn # perform operation
fsub.h f14, f16, f3, rdn # perform operation
fsub.h f14, f16, f3, rmm # perform operation
fsub.h f14, f16, f3, rne # perform operation
fsub.h f14, f16, f3, rtz # perform operation
fsub.h f14, f16, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f16, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f16, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f16, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f16, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f16, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7bff)
li x6, 0x53daed71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f9, 0(x2) # load 0x00007bff from memory into f9
fsub.h f6, f13, f9, dyn # perform operation
fsub.h f6, f13, f9, rdn # perform operation
fsub.h f6, f13, f9, rmm # perform operation
fsub.h f6, f13, f9, rne # perform operation
fsub.h f6, f13, f9, rtz # perform operation
fsub.h f6, f13, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f13, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f13, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f13, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f13, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f13, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfbff)
li x12, 0xa2d31e5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
fsub.h f12, f16, f11, dyn # perform operation
fsub.h f12, f16, f11, rdn # perform operation
fsub.h f12, f16, f11, rmm # perform operation
fsub.h f12, f16, f11, rne # perform operation
fsub.h f12, f16, f11, rtz # perform operation
fsub.h f12, f16, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f16, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f16, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f16, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f16, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f16, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3ff)
li x11, 0x17607544 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f13, 0(x2) # load 0x000003ff from memory into f13
fsub.h f11, f23, f13, dyn # perform operation
fsub.h f11, f23, f13, rdn # perform operation
fsub.h f11, f23, f13, rmm # perform operation
fsub.h f11, f23, f13, rne # perform operation
fsub.h f11, f23, f13, rtz # perform operation
fsub.h f11, f23, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f23, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f23, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f23, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f23, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f23, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x83ff)
li x25, 0xb5229115 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f10, 0(x2) # load 0x00000400 from memory into f10
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f4, 0(x2) # load 0x000083ff from memory into f4
fsub.h f25, f10, f4, dyn # perform operation
fsub.h f25, f10, f4, rdn # perform operation
fsub.h f25, f10, f4, rmm # perform operation
fsub.h f25, f10, f4, rne # perform operation
fsub.h f25, f10, f4, rtz # perform operation
fsub.h f25, f10, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f10, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f10, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f10, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f10, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f10, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x200)
li x30, 0x9a88e7ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f4, 0(x2) # load 0x00000200 from memory into f4
fsub.h f30, f18, f4, dyn # perform operation
fsub.h f30, f18, f4, rdn # perform operation
fsub.h f30, f18, f4, rmm # perform operation
fsub.h f30, f18, f4, rne # perform operation
fsub.h f30, f18, f4, rtz # perform operation
fsub.h f30, f18, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f18, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f18, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f18, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f18, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f18, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8200)
li x5, 0xde6ae64c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f31, 0(x2) # load 0x00000400 from memory into f31
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f28, 0(x2) # load 0x00008200 from memory into f28
fsub.h f5, f31, f28, dyn # perform operation
fsub.h f5, f31, f28, rdn # perform operation
fsub.h f5, f31, f28, rmm # perform operation
fsub.h f5, f31, f28, rne # perform operation
fsub.h f5, f31, f28, rtz # perform operation
fsub.h f5, f31, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f31, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f31, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f31, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f31, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f31, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x1)
li x13, 0x5b4a035f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f4, 0(x2) # load 0x00000400 from memory into f4
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f9, 0(x2) # load 0x00000001 from memory into f9
fsub.h f13, f4, f9, dyn # perform operation
fsub.h f13, f4, f9, rdn # perform operation
fsub.h f13, f4, f9, rmm # perform operation
fsub.h f13, f4, f9, rne # perform operation
fsub.h f13, f4, f9, rtz # perform operation
fsub.h f13, f4, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f4, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f4, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f4, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f4, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f4, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8001)
li x10, 0x31df0e1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f9, 0(x2) # load 0x00000400 from memory into f9
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f28, 0(x2) # load 0x00008001 from memory into f28
fsub.h f10, f9, f28, dyn # perform operation
fsub.h f10, f9, f28, rdn # perform operation
fsub.h f10, f9, f28, rmm # perform operation
fsub.h f10, f9, f28, rne # perform operation
fsub.h f10, f9, f28, rtz # perform operation
fsub.h f10, f9, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f9, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f9, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f9, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f9, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f9, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7c00)
li x11, 0x36909e0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f3, 0(x2) # load 0x00007c00 from memory into f3
fsub.h f11, f2, f3, dyn # perform operation
fsub.h f11, f2, f3, rdn # perform operation
fsub.h f11, f2, f3, rmm # perform operation
fsub.h f11, f2, f3, rne # perform operation
fsub.h f11, f2, f3, rtz # perform operation
fsub.h f11, f2, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f2, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f2, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f2, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f2, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f2, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfc00)
li x24, 0x89f5ea2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f15, 0(x2) # load 0x0000fc00 from memory into f15
fsub.h f24, f7, f15, dyn # perform operation
fsub.h f24, f7, f15, rdn # perform operation
fsub.h f24, f7, f15, rmm # perform operation
fsub.h f24, f7, f15, rne # perform operation
fsub.h f24, f7, f15, rtz # perform operation
fsub.h f24, f7, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f7, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f7, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f7, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f7, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f7, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7e00)
li x13, 0x9e9916c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f10, 0(x2) # load 0x00000400 from memory into f10
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f28, 0(x2) # load 0x00007e00 from memory into f28
fsub.h f13, f10, f28, dyn # perform operation
fsub.h f13, f10, f28, rdn # perform operation
fsub.h f13, f10, f28, rmm # perform operation
fsub.h f13, f10, f28, rne # perform operation
fsub.h f13, f10, f28, rtz # perform operation
fsub.h f13, f10, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f10, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f10, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f10, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f10, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f10, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7fff)
li x2, 0x2d11db75 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f20, 0(x2) # load 0x00007fff from memory into f20
fsub.h f2, f18, f20, dyn # perform operation
fsub.h f2, f18, f20, rdn # perform operation
fsub.h f2, f18, f20, rmm # perform operation
fsub.h f2, f18, f20, rne # perform operation
fsub.h f2, f18, f20, rtz # perform operation
fsub.h f2, f18, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f18, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f18, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f18, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f18, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f18, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7c01)
li x12, 0x540ae693 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f17, 0(x2) # load 0x00000400 from memory into f17
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
fsub.h f12, f17, f14, dyn # perform operation
fsub.h f12, f17, f14, rdn # perform operation
fsub.h f12, f17, f14, rmm # perform operation
fsub.h f12, f17, f14, rne # perform operation
fsub.h f12, f17, f14, rtz # perform operation
fsub.h f12, f17, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f17, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f17, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f17, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f17, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f17, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7dff)
li x14, 0x28e5eccd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f1, 0(x2) # load 0x00007dff from memory into f1
fsub.h f14, f24, f1, dyn # perform operation
fsub.h f14, f24, f1, rdn # perform operation
fsub.h f14, f24, f1, rmm # perform operation
fsub.h f14, f24, f1, rne # perform operation
fsub.h f14, f24, f1, rtz # perform operation
fsub.h f14, f24, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f24, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f24, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f24, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f24, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f24, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x58b4)
li x11, 0xe95fa743 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
fsub.h f11, f29, f3, dyn # perform operation
fsub.h f11, f29, f3, rdn # perform operation
fsub.h f11, f29, f3, rmm # perform operation
fsub.h f11, f29, f3, rne # perform operation
fsub.h f11, f29, f3, rtz # perform operation
fsub.h f11, f29, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f29, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f29, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f29, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f29, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f29, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xc93a)
li x8, 0x3d710a27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f9, 0(x2) # load 0x00000400 from memory into f9
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f29, 0(x2) # load 0x0000c93a from memory into f29
fsub.h f8, f9, f29, dyn # perform operation
fsub.h f8, f9, f29, rdn # perform operation
fsub.h f8, f9, f29, rmm # perform operation
fsub.h f8, f9, f29, rne # perform operation
fsub.h f8, f9, f29, rtz # perform operation
fsub.h f8, f9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f9, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f9, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f9, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f9, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f9, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x0)
li x30, 0x5499e356 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f11, 0(x2) # load 0x00008400 from memory into f11
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f5, 0(x2) # load 0x00000000 from memory into f5
fsub.h f30, f11, f5, dyn # perform operation
fsub.h f30, f11, f5, rdn # perform operation
fsub.h f30, f11, f5, rmm # perform operation
fsub.h f30, f11, f5, rne # perform operation
fsub.h f30, f11, f5, rtz # perform operation
fsub.h f30, f11, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f11, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f11, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f11, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f11, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f11, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8000)
li x12, 0x2cc119f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f4, 0(x2) # load 0x00008000 from memory into f4
fsub.h f12, f6, f4, dyn # perform operation
fsub.h f12, f6, f4, rdn # perform operation
fsub.h f12, f6, f4, rmm # perform operation
fsub.h f12, f6, f4, rne # perform operation
fsub.h f12, f6, f4, rtz # perform operation
fsub.h f12, f6, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f6, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f6, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f6, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f6, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f6, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3c00)
li x23, 0x5589df3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f19, 0(x2) # load 0x00008400 from memory into f19
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
fsub.h f23, f19, f27, dyn # perform operation
fsub.h f23, f19, f27, rdn # perform operation
fsub.h f23, f19, f27, rmm # perform operation
fsub.h f23, f19, f27, rne # perform operation
fsub.h f23, f19, f27, rtz # perform operation
fsub.h f23, f19, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f19, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f19, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f19, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f19, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f19, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xbc00)
li x21, 0xb95551a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f17, 0(x2) # load 0x00008400 from memory into f17
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f13, 0(x2) # load 0x0000bc00 from memory into f13
fsub.h f21, f17, f13, dyn # perform operation
fsub.h f21, f17, f13, rdn # perform operation
fsub.h f21, f17, f13, rmm # perform operation
fsub.h f21, f17, f13, rne # perform operation
fsub.h f21, f17, f13, rtz # perform operation
fsub.h f21, f17, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f17, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f17, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f17, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f17, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f17, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3e00)
li x27, 0x978581ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f2, 0(x2) # load 0x00003e00 from memory into f2
fsub.h f27, f3, f2, dyn # perform operation
fsub.h f27, f3, f2, rdn # perform operation
fsub.h f27, f3, f2, rmm # perform operation
fsub.h f27, f3, f2, rne # perform operation
fsub.h f27, f3, f2, rtz # perform operation
fsub.h f27, f3, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f3, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f3, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f3, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f3, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f3, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xbe00)
li x19, 0x61847b66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f28, 0(x2) # load 0x00008400 from memory into f28
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
fsub.h f19, f28, f17, dyn # perform operation
fsub.h f19, f28, f17, rdn # perform operation
fsub.h f19, f28, f17, rmm # perform operation
fsub.h f19, f28, f17, rne # perform operation
fsub.h f19, f28, f17, rtz # perform operation
fsub.h f19, f28, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f28, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f28, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f28, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f28, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f28, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x4000)
li x4, 0x4ce2bbf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f7, 0(x2) # load 0x00004000 from memory into f7
fsub.h f4, f9, f7, dyn # perform operation
fsub.h f4, f9, f7, rdn # perform operation
fsub.h f4, f9, f7, rmm # perform operation
fsub.h f4, f9, f7, rne # perform operation
fsub.h f4, f9, f7, rtz # perform operation
fsub.h f4, f9, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f4, f9, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f4, f9, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f4, f9, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f4, f9, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f4, f9, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xc000)
li x11, 0xe01c48f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f7, 0(x2) # load 0x0000c000 from memory into f7
fsub.h f11, f29, f7, dyn # perform operation
fsub.h f11, f29, f7, rdn # perform operation
fsub.h f11, f29, f7, rmm # perform operation
fsub.h f11, f29, f7, rne # perform operation
fsub.h f11, f29, f7, rtz # perform operation
fsub.h f11, f29, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f29, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f29, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f29, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f29, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f29, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x400)
li x7, 0x34daa6d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f12, 0(x2) # load 0x00000400 from memory into f12
fsub.h f7, f24, f12, dyn # perform operation
fsub.h f7, f24, f12, rdn # perform operation
fsub.h f7, f24, f12, rmm # perform operation
fsub.h f7, f24, f12, rne # perform operation
fsub.h f7, f24, f12, rtz # perform operation
fsub.h f7, f24, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f24, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f24, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f24, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f24, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f24, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8400)
li x27, 0x8f0ac948 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f15, 0(x2) # load 0x00008400 from memory into f15
fsub.h f27, f3, f15, dyn # perform operation
fsub.h f27, f3, f15, rdn # perform operation
fsub.h f27, f3, f15, rmm # perform operation
fsub.h f27, f3, f15, rne # perform operation
fsub.h f27, f3, f15, rtz # perform operation
fsub.h f27, f3, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f3, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f3, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f3, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f3, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f3, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7bff)
li x12, 0x361559fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f13, 0(x2) # load 0x00008400 from memory into f13
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
fsub.h f12, f13, f8, dyn # perform operation
fsub.h f12, f13, f8, rdn # perform operation
fsub.h f12, f13, f8, rmm # perform operation
fsub.h f12, f13, f8, rne # perform operation
fsub.h f12, f13, f8, rtz # perform operation
fsub.h f12, f13, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f13, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f13, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f13, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f13, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f13, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfbff)
li x10, 0xb5dd2ef0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f31, 0(x2) # load 0x00008400 from memory into f31
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
fsub.h f10, f31, f14, dyn # perform operation
fsub.h f10, f31, f14, rdn # perform operation
fsub.h f10, f31, f14, rmm # perform operation
fsub.h f10, f31, f14, rne # perform operation
fsub.h f10, f31, f14, rtz # perform operation
fsub.h f10, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f31, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3ff)
li x3, 0x2a269f85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f20, 0(x2) # load 0x00008400 from memory into f20
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f16, 0(x2) # load 0x000003ff from memory into f16
fsub.h f3, f20, f16, dyn # perform operation
fsub.h f3, f20, f16, rdn # perform operation
fsub.h f3, f20, f16, rmm # perform operation
fsub.h f3, f20, f16, rne # perform operation
fsub.h f3, f20, f16, rtz # perform operation
fsub.h f3, f20, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f20, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f20, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f20, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f20, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f20, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x83ff)
li x29, 0xc4f1f51f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f12, 0(x2) # load 0x00008400 from memory into f12
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f6, 0(x2) # load 0x000083ff from memory into f6
fsub.h f29, f12, f6, dyn # perform operation
fsub.h f29, f12, f6, rdn # perform operation
fsub.h f29, f12, f6, rmm # perform operation
fsub.h f29, f12, f6, rne # perform operation
fsub.h f29, f12, f6, rtz # perform operation
fsub.h f29, f12, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f12, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f12, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f12, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f12, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f12, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x200)
li x13, 0x42cee3fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f19, 0(x2) # load 0x00008400 from memory into f19
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f31, 0(x2) # load 0x00000200 from memory into f31
fsub.h f13, f19, f31, dyn # perform operation
fsub.h f13, f19, f31, rdn # perform operation
fsub.h f13, f19, f31, rmm # perform operation
fsub.h f13, f19, f31, rne # perform operation
fsub.h f13, f19, f31, rtz # perform operation
fsub.h f13, f19, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f19, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f19, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f19, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f19, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f19, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8200)
li x14, 0xf044cd43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f19, 0(x2) # load 0x00008200 from memory into f19
fsub.h f14, f8, f19, dyn # perform operation
fsub.h f14, f8, f19, rdn # perform operation
fsub.h f14, f8, f19, rmm # perform operation
fsub.h f14, f8, f19, rne # perform operation
fsub.h f14, f8, f19, rtz # perform operation
fsub.h f14, f8, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f8, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f8, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f8, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f8, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f8, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x1)
li x8, 0xcc9b8949 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f2, 0(x2) # load 0x00008400 from memory into f2
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f3, 0(x2) # load 0x00000001 from memory into f3
fsub.h f8, f2, f3, dyn # perform operation
fsub.h f8, f2, f3, rdn # perform operation
fsub.h f8, f2, f3, rmm # perform operation
fsub.h f8, f2, f3, rne # perform operation
fsub.h f8, f2, f3, rtz # perform operation
fsub.h f8, f2, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f2, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f2, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f2, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f2, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f2, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8001)
li x16, 0x2f4fc38d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f30, 0(x2) # load 0x00008400 from memory into f30
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f28, 0(x2) # load 0x00008001 from memory into f28
fsub.h f16, f30, f28, dyn # perform operation
fsub.h f16, f30, f28, rdn # perform operation
fsub.h f16, f30, f28, rmm # perform operation
fsub.h f16, f30, f28, rne # perform operation
fsub.h f16, f30, f28, rtz # perform operation
fsub.h f16, f30, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f30, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f30, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f30, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f30, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f30, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7c00)
li x13, 0xa21b0afd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f28, 0(x2) # load 0x00008400 from memory into f28
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
fsub.h f13, f28, f8, dyn # perform operation
fsub.h f13, f28, f8, rdn # perform operation
fsub.h f13, f28, f8, rmm # perform operation
fsub.h f13, f28, f8, rne # perform operation
fsub.h f13, f28, f8, rtz # perform operation
fsub.h f13, f28, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f28, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f28, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f28, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f28, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f28, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfc00)
li x16, 0x295fc8b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f28, 0(x2) # load 0x00008400 from memory into f28
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
fsub.h f16, f28, f8, dyn # perform operation
fsub.h f16, f28, f8, rdn # perform operation
fsub.h f16, f28, f8, rmm # perform operation
fsub.h f16, f28, f8, rne # perform operation
fsub.h f16, f28, f8, rtz # perform operation
fsub.h f16, f28, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f28, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f28, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f28, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f28, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f28, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7e00)
li x19, 0x182e0f9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f22, 0(x2) # load 0x00008400 from memory into f22
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
fsub.h f19, f22, f21, dyn # perform operation
fsub.h f19, f22, f21, rdn # perform operation
fsub.h f19, f22, f21, rmm # perform operation
fsub.h f19, f22, f21, rne # perform operation
fsub.h f19, f22, f21, rtz # perform operation
fsub.h f19, f22, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f22, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f22, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f22, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f22, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f22, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7fff)
li x11, 0x206d24aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f14, 0(x2) # load 0x00008400 from memory into f14
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
fsub.h f11, f14, f27, dyn # perform operation
fsub.h f11, f14, f27, rdn # perform operation
fsub.h f11, f14, f27, rmm # perform operation
fsub.h f11, f14, f27, rne # perform operation
fsub.h f11, f14, f27, rtz # perform operation
fsub.h f11, f14, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f14, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f14, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f14, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f14, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f14, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7c01)
li x31, 0xf47c5347 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f19, 0(x2) # load 0x00008400 from memory into f19
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f18, 0(x2) # load 0x00007c01 from memory into f18
fsub.h f31, f19, f18, dyn # perform operation
fsub.h f31, f19, f18, rdn # perform operation
fsub.h f31, f19, f18, rmm # perform operation
fsub.h f31, f19, f18, rne # perform operation
fsub.h f31, f19, f18, rtz # perform operation
fsub.h f31, f19, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f19, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f19, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f19, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f19, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f19, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7dff)
li x9, 0xa5f43f7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f12, 0(x2) # load 0x00007dff from memory into f12
fsub.h f9, f21, f12, dyn # perform operation
fsub.h f9, f21, f12, rdn # perform operation
fsub.h f9, f21, f12, rmm # perform operation
fsub.h f9, f21, f12, rne # perform operation
fsub.h f9, f21, f12, rtz # perform operation
fsub.h f9, f21, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f21, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f21, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f21, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f21, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f21, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x58b4)
li x19, 0x73780503 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f12, 0(x2) # load 0x000058b4 from memory into f12
fsub.h f19, f7, f12, dyn # perform operation
fsub.h f19, f7, f12, rdn # perform operation
fsub.h f19, f7, f12, rmm # perform operation
fsub.h f19, f7, f12, rne # perform operation
fsub.h f19, f7, f12, rtz # perform operation
fsub.h f19, f7, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f7, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f7, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f7, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f7, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f7, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xc93a)
li x9, 0x2e5ccfac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f8, 0(x2) # load 0x0000c93a from memory into f8
fsub.h f9, f3, f8, dyn # perform operation
fsub.h f9, f3, f8, rdn # perform operation
fsub.h f9, f3, f8, rmm # perform operation
fsub.h f9, f3, f8, rne # perform operation
fsub.h f9, f3, f8, rtz # perform operation
fsub.h f9, f3, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f3, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f3, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f3, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f3, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f3, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x0)
li x23, 0x2bc3ff61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f17, 0(x2) # load 0x00000000 from memory into f17
fsub.h f23, f8, f17, dyn # perform operation
fsub.h f23, f8, f17, rdn # perform operation
fsub.h f23, f8, f17, rmm # perform operation
fsub.h f23, f8, f17, rne # perform operation
fsub.h f23, f8, f17, rtz # perform operation
fsub.h f23, f8, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f8, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f8, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f8, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f8, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f8, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8000)
li x19, 0x9091f5eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f22, 0(x2) # load 0x00007bff from memory into f22
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f27, 0(x2) # load 0x00008000 from memory into f27
fsub.h f19, f22, f27, dyn # perform operation
fsub.h f19, f22, f27, rdn # perform operation
fsub.h f19, f22, f27, rmm # perform operation
fsub.h f19, f22, f27, rne # perform operation
fsub.h f19, f22, f27, rtz # perform operation
fsub.h f19, f22, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f22, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f22, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f22, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f22, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f22, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3c00)
li x30, 0x7d6c88bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f28, 0(x2) # load 0x00007bff from memory into f28
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f2, 0(x2) # load 0x00003c00 from memory into f2
fsub.h f30, f28, f2, dyn # perform operation
fsub.h f30, f28, f2, rdn # perform operation
fsub.h f30, f28, f2, rmm # perform operation
fsub.h f30, f28, f2, rne # perform operation
fsub.h f30, f28, f2, rtz # perform operation
fsub.h f30, f28, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f28, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f28, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f28, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f28, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f28, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xbc00)
li x23, 0xf43ab465 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f25, 0(x2) # load 0x0000bc00 from memory into f25
fsub.h f23, f17, f25, dyn # perform operation
fsub.h f23, f17, f25, rdn # perform operation
fsub.h f23, f17, f25, rmm # perform operation
fsub.h f23, f17, f25, rne # perform operation
fsub.h f23, f17, f25, rtz # perform operation
fsub.h f23, f17, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f17, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f17, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f17, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f17, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f17, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3e00)
li x15, 0x992a8a18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
fsub.h f15, f17, f13, dyn # perform operation
fsub.h f15, f17, f13, rdn # perform operation
fsub.h f15, f17, f13, rmm # perform operation
fsub.h f15, f17, f13, rne # perform operation
fsub.h f15, f17, f13, rtz # perform operation
fsub.h f15, f17, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f17, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f17, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f17, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f17, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f17, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xbe00)
li x4, 0x63c90119 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f3, 0(x2) # load 0x00007bff from memory into f3
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
fsub.h f4, f3, f8, dyn # perform operation
fsub.h f4, f3, f8, rdn # perform operation
fsub.h f4, f3, f8, rmm # perform operation
fsub.h f4, f3, f8, rne # perform operation
fsub.h f4, f3, f8, rtz # perform operation
fsub.h f4, f3, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f4, f3, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f4, f3, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f4, f3, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f4, f3, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f4, f3, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x4000)
li x1, 0xfda403a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f20, 0(x2) # load 0x00007bff from memory into f20
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f17, 0(x2) # load 0x00004000 from memory into f17
fsub.h f1, f20, f17, dyn # perform operation
fsub.h f1, f20, f17, rdn # perform operation
fsub.h f1, f20, f17, rmm # perform operation
fsub.h f1, f20, f17, rne # perform operation
fsub.h f1, f20, f17, rtz # perform operation
fsub.h f1, f20, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f20, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f20, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f20, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f20, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f20, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xc000)
li x27, 0x437719f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f11, 0(x2) # load 0x00007bff from memory into f11
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
fsub.h f27, f11, f9, dyn # perform operation
fsub.h f27, f11, f9, rdn # perform operation
fsub.h f27, f11, f9, rmm # perform operation
fsub.h f27, f11, f9, rne # perform operation
fsub.h f27, f11, f9, rtz # perform operation
fsub.h f27, f11, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f11, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f11, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f11, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f11, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f11, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x400)
li x25, 0x26262529 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
fsub.h f25, f1, f14, dyn # perform operation
fsub.h f25, f1, f14, rdn # perform operation
fsub.h f25, f1, f14, rmm # perform operation
fsub.h f25, f1, f14, rne # perform operation
fsub.h f25, f1, f14, rtz # perform operation
fsub.h f25, f1, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f1, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f1, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f1, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f1, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f1, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8400)
li x1, 0x0c8b6cb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f4, 0(x2) # load 0x00008400 from memory into f4
fsub.h f1, f8, f4, dyn # perform operation
fsub.h f1, f8, f4, rdn # perform operation
fsub.h f1, f8, f4, rmm # perform operation
fsub.h f1, f8, f4, rne # perform operation
fsub.h f1, f8, f4, rtz # perform operation
fsub.h f1, f8, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f8, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f8, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f8, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f8, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f8, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7bff)
li x25, 0xf9efe706 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f14, 0(x2) # load 0x00007bff from memory into f14
fsub.h f25, f18, f14, dyn # perform operation
fsub.h f25, f18, f14, rdn # perform operation
fsub.h f25, f18, f14, rmm # perform operation
fsub.h f25, f18, f14, rne # perform operation
fsub.h f25, f18, f14, rtz # perform operation
fsub.h f25, f18, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f18, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f18, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f18, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f18, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f18, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfbff)
li x13, 0x3d1ebb09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f23, 0(x2) # load 0x0000fbff from memory into f23
fsub.h f13, f24, f23, dyn # perform operation
fsub.h f13, f24, f23, rdn # perform operation
fsub.h f13, f24, f23, rmm # perform operation
fsub.h f13, f24, f23, rne # perform operation
fsub.h f13, f24, f23, rtz # perform operation
fsub.h f13, f24, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f24, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f24, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f24, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f24, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f24, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3ff)
li x23, 0xc143d38a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f7, 0(x2) # load 0x00007bff from memory into f7
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f15, 0(x2) # load 0x000003ff from memory into f15
fsub.h f23, f7, f15, dyn # perform operation
fsub.h f23, f7, f15, rdn # perform operation
fsub.h f23, f7, f15, rmm # perform operation
fsub.h f23, f7, f15, rne # perform operation
fsub.h f23, f7, f15, rtz # perform operation
fsub.h f23, f7, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f7, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f7, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f7, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f7, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f7, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x83ff)
li x5, 0xe800a49b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f13, 0(x2) # load 0x00007bff from memory into f13
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f30, 0(x2) # load 0x000083ff from memory into f30
fsub.h f5, f13, f30, dyn # perform operation
fsub.h f5, f13, f30, rdn # perform operation
fsub.h f5, f13, f30, rmm # perform operation
fsub.h f5, f13, f30, rne # perform operation
fsub.h f5, f13, f30, rtz # perform operation
fsub.h f5, f13, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f13, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f13, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f13, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f13, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f13, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x200)
li x9, 0x45e7ba07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
fsub.h f9, f16, f13, dyn # perform operation
fsub.h f9, f16, f13, rdn # perform operation
fsub.h f9, f16, f13, rmm # perform operation
fsub.h f9, f16, f13, rne # perform operation
fsub.h f9, f16, f13, rtz # perform operation
fsub.h f9, f16, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f16, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f16, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f16, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f16, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f16, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8200)
li x13, 0xa91de1a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f8, 0(x2) # load 0x00008200 from memory into f8
fsub.h f13, f2, f8, dyn # perform operation
fsub.h f13, f2, f8, rdn # perform operation
fsub.h f13, f2, f8, rmm # perform operation
fsub.h f13, f2, f8, rne # perform operation
fsub.h f13, f2, f8, rtz # perform operation
fsub.h f13, f2, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f2, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f2, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f2, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f2, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f2, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x1)
li x6, 0xc6b9975a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f31, 0(x2) # load 0x00007bff from memory into f31
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f12, 0(x2) # load 0x00000001 from memory into f12
fsub.h f6, f31, f12, dyn # perform operation
fsub.h f6, f31, f12, rdn # perform operation
fsub.h f6, f31, f12, rmm # perform operation
fsub.h f6, f31, f12, rne # perform operation
fsub.h f6, f31, f12, rtz # perform operation
fsub.h f6, f31, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f31, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f31, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f31, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f31, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f31, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8001)
li x8, 0x3acc356a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f12, 0(x2) # load 0x00008001 from memory into f12
fsub.h f8, f17, f12, dyn # perform operation
fsub.h f8, f17, f12, rdn # perform operation
fsub.h f8, f17, f12, rmm # perform operation
fsub.h f8, f17, f12, rne # perform operation
fsub.h f8, f17, f12, rtz # perform operation
fsub.h f8, f17, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f17, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f17, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f17, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f17, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f17, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7c00)
li x29, 0x1c2596fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
fsub.h f29, f12, f2, dyn # perform operation
fsub.h f29, f12, f2, rdn # perform operation
fsub.h f29, f12, f2, rmm # perform operation
fsub.h f29, f12, f2, rne # perform operation
fsub.h f29, f12, f2, rtz # perform operation
fsub.h f29, f12, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f12, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f12, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f12, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f12, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f12, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfc00)
li x26, 0xd83c9032 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f21, 0(x2) # load 0x0000fc00 from memory into f21
fsub.h f26, f18, f21, dyn # perform operation
fsub.h f26, f18, f21, rdn # perform operation
fsub.h f26, f18, f21, rmm # perform operation
fsub.h f26, f18, f21, rne # perform operation
fsub.h f26, f18, f21, rtz # perform operation
fsub.h f26, f18, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f18, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f18, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f18, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f18, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f18, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7e00)
li x13, 0x207db68c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f9, 0(x2) # load 0x00007e00 from memory into f9
fsub.h f13, f12, f9, dyn # perform operation
fsub.h f13, f12, f9, rdn # perform operation
fsub.h f13, f12, f9, rmm # perform operation
fsub.h f13, f12, f9, rne # perform operation
fsub.h f13, f12, f9, rtz # perform operation
fsub.h f13, f12, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f12, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f12, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f12, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f12, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f12, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7fff)
li x13, 0x2a4cc337 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f15, 0(x2) # load 0x00007bff from memory into f15
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f5, 0(x2) # load 0x00007fff from memory into f5
fsub.h f13, f15, f5, dyn # perform operation
fsub.h f13, f15, f5, rdn # perform operation
fsub.h f13, f15, f5, rmm # perform operation
fsub.h f13, f15, f5, rne # perform operation
fsub.h f13, f15, f5, rtz # perform operation
fsub.h f13, f15, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f15, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f15, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f15, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f15, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f15, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7c01)
li x15, 0xd06f6e5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f22, 0(x2) # load 0x00007bff from memory into f22
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f8, 0(x2) # load 0x00007c01 from memory into f8
fsub.h f15, f22, f8, dyn # perform operation
fsub.h f15, f22, f8, rdn # perform operation
fsub.h f15, f22, f8, rmm # perform operation
fsub.h f15, f22, f8, rne # perform operation
fsub.h f15, f22, f8, rtz # perform operation
fsub.h f15, f22, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f22, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f22, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f22, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f22, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f22, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7dff)
li x29, 0x7ba10a7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f26, 0(x2) # load 0x00007bff from memory into f26
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f10, 0(x2) # load 0x00007dff from memory into f10
fsub.h f29, f26, f10, dyn # perform operation
fsub.h f29, f26, f10, rdn # perform operation
fsub.h f29, f26, f10, rmm # perform operation
fsub.h f29, f26, f10, rne # perform operation
fsub.h f29, f26, f10, rtz # perform operation
fsub.h f29, f26, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f26, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f26, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f26, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f26, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f26, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x58b4)
li x11, 0xa10b8c47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f4, 0(x2) # load 0x000058b4 from memory into f4
fsub.h f11, f24, f4, dyn # perform operation
fsub.h f11, f24, f4, rdn # perform operation
fsub.h f11, f24, f4, rmm # perform operation
fsub.h f11, f24, f4, rne # perform operation
fsub.h f11, f24, f4, rtz # perform operation
fsub.h f11, f24, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f24, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f24, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f24, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f24, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f24, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xc93a)
li x15, 0xcf2f970b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f8, 0(x2) # load 0x0000c93a from memory into f8
fsub.h f15, f12, f8, dyn # perform operation
fsub.h f15, f12, f8, rdn # perform operation
fsub.h f15, f12, f8, rmm # perform operation
fsub.h f15, f12, f8, rne # perform operation
fsub.h f15, f12, f8, rtz # perform operation
fsub.h f15, f12, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f12, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f12, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f12, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f12, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f12, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x0)
li x3, 0x8366995a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
fsub.h f3, f27, f10, dyn # perform operation
fsub.h f3, f27, f10, rdn # perform operation
fsub.h f3, f27, f10, rmm # perform operation
fsub.h f3, f27, f10, rne # perform operation
fsub.h f3, f27, f10, rtz # perform operation
fsub.h f3, f27, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f27, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f27, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f27, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f27, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f27, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8000)
li x28, 0x28c86336 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f4, 0(x2) # load 0x0000fbff from memory into f4
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f23, 0(x2) # load 0x00008000 from memory into f23
fsub.h f28, f4, f23, dyn # perform operation
fsub.h f28, f4, f23, rdn # perform operation
fsub.h f28, f4, f23, rmm # perform operation
fsub.h f28, f4, f23, rne # perform operation
fsub.h f28, f4, f23, rtz # perform operation
fsub.h f28, f4, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f4, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f4, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f4, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f4, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f4, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3c00)
li x11, 0x9e350a6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
fsub.h f11, f14, f3, dyn # perform operation
fsub.h f11, f14, f3, rdn # perform operation
fsub.h f11, f14, f3, rmm # perform operation
fsub.h f11, f14, f3, rne # perform operation
fsub.h f11, f14, f3, rtz # perform operation
fsub.h f11, f14, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f14, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f14, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f14, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f14, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f14, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xbc00)
li x14, 0x98e32805 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f18, 0(x2) # load 0x0000fbff from memory into f18
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f10, 0(x2) # load 0x0000bc00 from memory into f10
fsub.h f14, f18, f10, dyn # perform operation
fsub.h f14, f18, f10, rdn # perform operation
fsub.h f14, f18, f10, rmm # perform operation
fsub.h f14, f18, f10, rne # perform operation
fsub.h f14, f18, f10, rtz # perform operation
fsub.h f14, f18, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f18, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f18, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f18, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f18, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f18, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3e00)
li x17, 0x30bd620f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f2, 0(x2) # load 0x00003e00 from memory into f2
fsub.h f17, f16, f2, dyn # perform operation
fsub.h f17, f16, f2, rdn # perform operation
fsub.h f17, f16, f2, rmm # perform operation
fsub.h f17, f16, f2, rne # perform operation
fsub.h f17, f16, f2, rtz # perform operation
fsub.h f17, f16, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f16, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f16, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f16, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f16, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f16, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xbe00)
li x1, 0x7ad57fb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f6, 0(x2) # load 0x0000be00 from memory into f6
fsub.h f1, f11, f6, dyn # perform operation
fsub.h f1, f11, f6, rdn # perform operation
fsub.h f1, f11, f6, rmm # perform operation
fsub.h f1, f11, f6, rne # perform operation
fsub.h f1, f11, f6, rtz # perform operation
fsub.h f1, f11, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f11, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f11, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f11, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f11, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f11, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x4000)
li x15, 0x9c007418 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f5, 0(x2) # load 0x0000fbff from memory into f5
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f7, 0(x2) # load 0x00004000 from memory into f7
fsub.h f15, f5, f7, dyn # perform operation
fsub.h f15, f5, f7, rdn # perform operation
fsub.h f15, f5, f7, rmm # perform operation
fsub.h f15, f5, f7, rne # perform operation
fsub.h f15, f5, f7, rtz # perform operation
fsub.h f15, f5, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f5, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f5, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f5, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f5, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f5, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xc000)
li x31, 0x78ed400d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
fsub.h f31, f12, f9, dyn # perform operation
fsub.h f31, f12, f9, rdn # perform operation
fsub.h f31, f12, f9, rmm # perform operation
fsub.h f31, f12, f9, rne # perform operation
fsub.h f31, f12, f9, rtz # perform operation
fsub.h f31, f12, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f12, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f12, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f12, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f12, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f12, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x400)
li x9, 0x78aace0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f10, 0(x2) # load 0x0000fbff from memory into f10
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f21, 0(x2) # load 0x00000400 from memory into f21
fsub.h f9, f10, f21, dyn # perform operation
fsub.h f9, f10, f21, rdn # perform operation
fsub.h f9, f10, f21, rmm # perform operation
fsub.h f9, f10, f21, rne # perform operation
fsub.h f9, f10, f21, rtz # perform operation
fsub.h f9, f10, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f10, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f10, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f10, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f10, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f10, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8400)
li x10, 0xb991b3fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f23, 0(x2) # load 0x0000fbff from memory into f23
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f17, 0(x2) # load 0x00008400 from memory into f17
fsub.h f10, f23, f17, dyn # perform operation
fsub.h f10, f23, f17, rdn # perform operation
fsub.h f10, f23, f17, rmm # perform operation
fsub.h f10, f23, f17, rne # perform operation
fsub.h f10, f23, f17, rtz # perform operation
fsub.h f10, f23, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f23, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f23, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f23, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f23, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f23, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7bff)
li x29, 0x24895536 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f5, 0(x2) # load 0x0000fbff from memory into f5
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
fsub.h f29, f5, f24, dyn # perform operation
fsub.h f29, f5, f24, rdn # perform operation
fsub.h f29, f5, f24, rmm # perform operation
fsub.h f29, f5, f24, rne # perform operation
fsub.h f29, f5, f24, rtz # perform operation
fsub.h f29, f5, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f5, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f5, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f5, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f5, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f5, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfbff)
li x2, 0x6ef88a9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f8, 0(x2) # load 0x0000fbff from memory into f8
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f7, 0(x2) # load 0x0000fbff from memory into f7
fsub.h f2, f8, f7, dyn # perform operation
fsub.h f2, f8, f7, rdn # perform operation
fsub.h f2, f8, f7, rmm # perform operation
fsub.h f2, f8, f7, rne # perform operation
fsub.h f2, f8, f7, rtz # perform operation
fsub.h f2, f8, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f8, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f8, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f8, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f8, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f8, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3ff)
li x15, 0xc8467349 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f6, 0(x2) # load 0x0000fbff from memory into f6
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f30, 0(x2) # load 0x000003ff from memory into f30
fsub.h f15, f6, f30, dyn # perform operation
fsub.h f15, f6, f30, rdn # perform operation
fsub.h f15, f6, f30, rmm # perform operation
fsub.h f15, f6, f30, rne # perform operation
fsub.h f15, f6, f30, rtz # perform operation
fsub.h f15, f6, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f6, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f6, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f6, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f6, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f6, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x83ff)
li x27, 0xf9641f7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f29, 0(x2) # load 0x0000fbff from memory into f29
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f1, 0(x2) # load 0x000083ff from memory into f1
fsub.h f27, f29, f1, dyn # perform operation
fsub.h f27, f29, f1, rdn # perform operation
fsub.h f27, f29, f1, rmm # perform operation
fsub.h f27, f29, f1, rne # perform operation
fsub.h f27, f29, f1, rtz # perform operation
fsub.h f27, f29, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f29, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f29, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f29, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f29, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f29, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x200)
li x5, 0x9b80e750 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f24, 0(x2) # load 0x0000fbff from memory into f24
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
fsub.h f5, f24, f16, dyn # perform operation
fsub.h f5, f24, f16, rdn # perform operation
fsub.h f5, f24, f16, rmm # perform operation
fsub.h f5, f24, f16, rne # perform operation
fsub.h f5, f24, f16, rtz # perform operation
fsub.h f5, f24, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f24, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f24, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f24, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f24, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f24, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8200)
li x23, 0x7543bfdc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f29, 0(x2) # load 0x0000fbff from memory into f29
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f21, 0(x2) # load 0x00008200 from memory into f21
fsub.h f23, f29, f21, dyn # perform operation
fsub.h f23, f29, f21, rdn # perform operation
fsub.h f23, f29, f21, rmm # perform operation
fsub.h f23, f29, f21, rne # perform operation
fsub.h f23, f29, f21, rtz # perform operation
fsub.h f23, f29, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f29, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f29, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f29, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f29, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f29, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x1)
li x13, 0x66850209 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f28, 0(x2) # load 0x00000001 from memory into f28
fsub.h f13, f27, f28, dyn # perform operation
fsub.h f13, f27, f28, rdn # perform operation
fsub.h f13, f27, f28, rmm # perform operation
fsub.h f13, f27, f28, rne # perform operation
fsub.h f13, f27, f28, rtz # perform operation
fsub.h f13, f27, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f27, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f27, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f27, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f27, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f27, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8001)
li x5, 0x36f12114 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f1, 0(x2) # load 0x00008001 from memory into f1
fsub.h f5, f11, f1, dyn # perform operation
fsub.h f5, f11, f1, rdn # perform operation
fsub.h f5, f11, f1, rmm # perform operation
fsub.h f5, f11, f1, rne # perform operation
fsub.h f5, f11, f1, rtz # perform operation
fsub.h f5, f11, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f11, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f11, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f11, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f11, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f11, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7c00)
li x13, 0x4091f815 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f10, 0(x2) # load 0x0000fbff from memory into f10
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
fsub.h f13, f10, f28, dyn # perform operation
fsub.h f13, f10, f28, rdn # perform operation
fsub.h f13, f10, f28, rmm # perform operation
fsub.h f13, f10, f28, rne # perform operation
fsub.h f13, f10, f28, rtz # perform operation
fsub.h f13, f10, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f10, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f10, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f10, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f10, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f10, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfc00)
li x30, 0xb33c4fcc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f26, 0(x2) # load 0x0000fbff from memory into f26
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f9, 0(x2) # load 0x0000fc00 from memory into f9
fsub.h f30, f26, f9, dyn # perform operation
fsub.h f30, f26, f9, rdn # perform operation
fsub.h f30, f26, f9, rmm # perform operation
fsub.h f30, f26, f9, rne # perform operation
fsub.h f30, f26, f9, rtz # perform operation
fsub.h f30, f26, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f26, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f26, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f26, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f26, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f26, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7e00)
li x2, 0x628d1c5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f7, 0(x2) # load 0x00007e00 from memory into f7
fsub.h f2, f16, f7, dyn # perform operation
fsub.h f2, f16, f7, rdn # perform operation
fsub.h f2, f16, f7, rmm # perform operation
fsub.h f2, f16, f7, rne # perform operation
fsub.h f2, f16, f7, rtz # perform operation
fsub.h f2, f16, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f16, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f16, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f16, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f16, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f16, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7fff)
li x11, 0x8a400620 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
fsub.h f11, f14, f27, dyn # perform operation
fsub.h f11, f14, f27, rdn # perform operation
fsub.h f11, f14, f27, rmm # perform operation
fsub.h f11, f14, f27, rne # perform operation
fsub.h f11, f14, f27, rtz # perform operation
fsub.h f11, f14, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f14, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f14, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f14, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f14, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f14, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7c01)
li x4, 0x04dfac7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f1, 0(x2) # load 0x00007c01 from memory into f1
fsub.h f4, f27, f1, dyn # perform operation
fsub.h f4, f27, f1, rdn # perform operation
fsub.h f4, f27, f1, rmm # perform operation
fsub.h f4, f27, f1, rne # perform operation
fsub.h f4, f27, f1, rtz # perform operation
fsub.h f4, f27, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f4, f27, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f4, f27, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f4, f27, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f4, f27, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f4, f27, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7dff)
li x3, 0xf9758099 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f1, 0(x2) # load 0x0000fbff from memory into f1
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f2, 0(x2) # load 0x00007dff from memory into f2
fsub.h f3, f1, f2, dyn # perform operation
fsub.h f3, f1, f2, rdn # perform operation
fsub.h f3, f1, f2, rmm # perform operation
fsub.h f3, f1, f2, rne # perform operation
fsub.h f3, f1, f2, rtz # perform operation
fsub.h f3, f1, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f1, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f1, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f1, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f1, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f1, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x58b4)
li x5, 0x3711bd4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
fsub.h f5, f28, f23, dyn # perform operation
fsub.h f5, f28, f23, rdn # perform operation
fsub.h f5, f28, f23, rmm # perform operation
fsub.h f5, f28, f23, rne # perform operation
fsub.h f5, f28, f23, rtz # perform operation
fsub.h f5, f28, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f28, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f28, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f28, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f28, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f28, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xc93a)
li x30, 0x86203395 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f5, 0(x2) # load 0x0000c93a from memory into f5
fsub.h f30, f28, f5, dyn # perform operation
fsub.h f30, f28, f5, rdn # perform operation
fsub.h f30, f28, f5, rmm # perform operation
fsub.h f30, f28, f5, rne # perform operation
fsub.h f30, f28, f5, rtz # perform operation
fsub.h f30, f28, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f28, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f28, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f28, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f28, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f28, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x0)
li x12, 0x132e2b89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f4, 0(x2) # load 0x000003ff from memory into f4
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f5, 0(x2) # load 0x00000000 from memory into f5
fsub.h f12, f4, f5, dyn # perform operation
fsub.h f12, f4, f5, rdn # perform operation
fsub.h f12, f4, f5, rmm # perform operation
fsub.h f12, f4, f5, rne # perform operation
fsub.h f12, f4, f5, rtz # perform operation
fsub.h f12, f4, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f4, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f4, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f4, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f4, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f4, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8000)
li x27, 0xe5080e83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f10, 0(x2) # load 0x000003ff from memory into f10
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f28, 0(x2) # load 0x00008000 from memory into f28
fsub.h f27, f10, f28, dyn # perform operation
fsub.h f27, f10, f28, rdn # perform operation
fsub.h f27, f10, f28, rmm # perform operation
fsub.h f27, f10, f28, rne # perform operation
fsub.h f27, f10, f28, rtz # perform operation
fsub.h f27, f10, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f10, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f10, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f10, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f10, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f10, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3c00)
li x20, 0xdf295876 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f13, 0(x2) # load 0x000003ff from memory into f13
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
fsub.h f20, f13, f16, dyn # perform operation
fsub.h f20, f13, f16, rdn # perform operation
fsub.h f20, f13, f16, rmm # perform operation
fsub.h f20, f13, f16, rne # perform operation
fsub.h f20, f13, f16, rtz # perform operation
fsub.h f20, f13, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f13, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f13, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f13, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f13, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f13, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xbc00)
li x20, 0xe4ef7332 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f13, 0(x2) # load 0x000003ff from memory into f13
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
fsub.h f20, f13, f21, dyn # perform operation
fsub.h f20, f13, f21, rdn # perform operation
fsub.h f20, f13, f21, rmm # perform operation
fsub.h f20, f13, f21, rne # perform operation
fsub.h f20, f13, f21, rtz # perform operation
fsub.h f20, f13, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f13, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f13, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f13, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f13, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f13, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3e00)
li x29, 0x519d3ab5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f24, 0(x2) # load 0x000003ff from memory into f24
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f5, 0(x2) # load 0x00003e00 from memory into f5
fsub.h f29, f24, f5, dyn # perform operation
fsub.h f29, f24, f5, rdn # perform operation
fsub.h f29, f24, f5, rmm # perform operation
fsub.h f29, f24, f5, rne # perform operation
fsub.h f29, f24, f5, rtz # perform operation
fsub.h f29, f24, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f24, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f24, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f24, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f24, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f24, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xbe00)
li x29, 0x0fff818a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f22, 0(x2) # load 0x0000be00 from memory into f22
fsub.h f29, f2, f22, dyn # perform operation
fsub.h f29, f2, f22, rdn # perform operation
fsub.h f29, f2, f22, rmm # perform operation
fsub.h f29, f2, f22, rne # perform operation
fsub.h f29, f2, f22, rtz # perform operation
fsub.h f29, f2, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f2, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f2, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f2, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f2, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f2, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x4000)
li x27, 0x0c7e3c67 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f24, 0(x2) # load 0x000003ff from memory into f24
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
fsub.h f27, f24, f29, dyn # perform operation
fsub.h f27, f24, f29, rdn # perform operation
fsub.h f27, f24, f29, rmm # perform operation
fsub.h f27, f24, f29, rne # perform operation
fsub.h f27, f24, f29, rtz # perform operation
fsub.h f27, f24, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f24, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f24, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f24, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f24, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f24, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xc000)
li x20, 0x1e224e2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f1, 0(x2) # load 0x000003ff from memory into f1
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f13, 0(x2) # load 0x0000c000 from memory into f13
fsub.h f20, f1, f13, dyn # perform operation
fsub.h f20, f1, f13, rdn # perform operation
fsub.h f20, f1, f13, rmm # perform operation
fsub.h f20, f1, f13, rne # perform operation
fsub.h f20, f1, f13, rtz # perform operation
fsub.h f20, f1, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f1, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f1, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f1, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f1, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f1, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x400)
li x5, 0x98893fb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f3, 0(x2) # load 0x000003ff from memory into f3
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f1, 0(x2) # load 0x00000400 from memory into f1
fsub.h f5, f3, f1, dyn # perform operation
fsub.h f5, f3, f1, rdn # perform operation
fsub.h f5, f3, f1, rmm # perform operation
fsub.h f5, f3, f1, rne # perform operation
fsub.h f5, f3, f1, rtz # perform operation
fsub.h f5, f3, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f3, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f3, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f3, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f3, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f3, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8400)
li x18, 0x58410c49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f3, 0(x2) # load 0x000003ff from memory into f3
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
fsub.h f18, f3, f9, dyn # perform operation
fsub.h f18, f3, f9, rdn # perform operation
fsub.h f18, f3, f9, rmm # perform operation
fsub.h f18, f3, f9, rne # perform operation
fsub.h f18, f3, f9, rtz # perform operation
fsub.h f18, f3, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f3, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f3, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f3, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f3, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f3, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7bff)
li x22, 0x8fcd6b74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f29, 0(x2) # load 0x00007bff from memory into f29
fsub.h f22, f27, f29, dyn # perform operation
fsub.h f22, f27, f29, rdn # perform operation
fsub.h f22, f27, f29, rmm # perform operation
fsub.h f22, f27, f29, rne # perform operation
fsub.h f22, f27, f29, rtz # perform operation
fsub.h f22, f27, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f27, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f27, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f27, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f27, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f27, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfbff)
li x23, 0xe637da54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
fsub.h f23, f27, f12, dyn # perform operation
fsub.h f23, f27, f12, rdn # perform operation
fsub.h f23, f27, f12, rmm # perform operation
fsub.h f23, f27, f12, rne # perform operation
fsub.h f23, f27, f12, rtz # perform operation
fsub.h f23, f27, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f27, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f27, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f27, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f27, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f27, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3ff)
li x20, 0xcc93c45b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f16, 0(x2) # load 0x000003ff from memory into f16
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f14, 0(x2) # load 0x000003ff from memory into f14
fsub.h f20, f16, f14, dyn # perform operation
fsub.h f20, f16, f14, rdn # perform operation
fsub.h f20, f16, f14, rmm # perform operation
fsub.h f20, f16, f14, rne # perform operation
fsub.h f20, f16, f14, rtz # perform operation
fsub.h f20, f16, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f16, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f16, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f16, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f16, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f16, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x83ff)
li x26, 0xe14ba746 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f24, 0(x2) # load 0x000003ff from memory into f24
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
fsub.h f26, f24, f13, dyn # perform operation
fsub.h f26, f24, f13, rdn # perform operation
fsub.h f26, f24, f13, rmm # perform operation
fsub.h f26, f24, f13, rne # perform operation
fsub.h f26, f24, f13, rtz # perform operation
fsub.h f26, f24, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f24, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f24, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f24, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f24, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f24, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x200)
li x29, 0xde80db56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f8, 0(x2) # load 0x000003ff from memory into f8
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f10, 0(x2) # load 0x00000200 from memory into f10
fsub.h f29, f8, f10, dyn # perform operation
fsub.h f29, f8, f10, rdn # perform operation
fsub.h f29, f8, f10, rmm # perform operation
fsub.h f29, f8, f10, rne # perform operation
fsub.h f29, f8, f10, rtz # perform operation
fsub.h f29, f8, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f8, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f8, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f8, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f8, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f8, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8200)
li x14, 0xfad14f7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f1, 0(x2) # load 0x000003ff from memory into f1
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f31, 0(x2) # load 0x00008200 from memory into f31
fsub.h f14, f1, f31, dyn # perform operation
fsub.h f14, f1, f31, rdn # perform operation
fsub.h f14, f1, f31, rmm # perform operation
fsub.h f14, f1, f31, rne # perform operation
fsub.h f14, f1, f31, rtz # perform operation
fsub.h f14, f1, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f1, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f1, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f1, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f1, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f1, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x1)
li x12, 0x641d1a92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f31, 0(x2) # load 0x000003ff from memory into f31
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f22, 0(x2) # load 0x00000001 from memory into f22
fsub.h f12, f31, f22, dyn # perform operation
fsub.h f12, f31, f22, rdn # perform operation
fsub.h f12, f31, f22, rmm # perform operation
fsub.h f12, f31, f22, rne # perform operation
fsub.h f12, f31, f22, rtz # perform operation
fsub.h f12, f31, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f31, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f31, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f31, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f31, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f31, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8001)
li x27, 0xe917fdb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f31, 0(x2) # load 0x000003ff from memory into f31
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f4, 0(x2) # load 0x00008001 from memory into f4
fsub.h f27, f31, f4, dyn # perform operation
fsub.h f27, f31, f4, rdn # perform operation
fsub.h f27, f31, f4, rmm # perform operation
fsub.h f27, f31, f4, rne # perform operation
fsub.h f27, f31, f4, rtz # perform operation
fsub.h f27, f31, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f31, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f31, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f31, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f31, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f31, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7c00)
li x30, 0x9d8a29e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f18, 0(x2) # load 0x000003ff from memory into f18
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
fsub.h f30, f18, f14, dyn # perform operation
fsub.h f30, f18, f14, rdn # perform operation
fsub.h f30, f18, f14, rmm # perform operation
fsub.h f30, f18, f14, rne # perform operation
fsub.h f30, f18, f14, rtz # perform operation
fsub.h f30, f18, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f18, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f18, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f18, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f18, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f18, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfc00)
li x27, 0x3fb90f13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f3, 0(x2) # load 0x000003ff from memory into f3
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f12, 0(x2) # load 0x0000fc00 from memory into f12
fsub.h f27, f3, f12, dyn # perform operation
fsub.h f27, f3, f12, rdn # perform operation
fsub.h f27, f3, f12, rmm # perform operation
fsub.h f27, f3, f12, rne # perform operation
fsub.h f27, f3, f12, rtz # perform operation
fsub.h f27, f3, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f3, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f3, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f3, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f3, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f3, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7e00)
li x5, 0x6c7e0ed5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f3, 0(x2) # load 0x000003ff from memory into f3
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f17, 0(x2) # load 0x00007e00 from memory into f17
fsub.h f5, f3, f17, dyn # perform operation
fsub.h f5, f3, f17, rdn # perform operation
fsub.h f5, f3, f17, rmm # perform operation
fsub.h f5, f3, f17, rne # perform operation
fsub.h f5, f3, f17, rtz # perform operation
fsub.h f5, f3, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f3, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f3, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f3, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f3, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f3, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7fff)
li x28, 0x57bba187 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
fsub.h f28, f6, f8, dyn # perform operation
fsub.h f28, f6, f8, rdn # perform operation
fsub.h f28, f6, f8, rmm # perform operation
fsub.h f28, f6, f8, rne # perform operation
fsub.h f28, f6, f8, rtz # perform operation
fsub.h f28, f6, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f6, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f6, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f6, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f6, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f6, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7c01)
li x26, 0xc37b0849 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f13, 0(x2) # load 0x000003ff from memory into f13
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
fsub.h f26, f13, f14, dyn # perform operation
fsub.h f26, f13, f14, rdn # perform operation
fsub.h f26, f13, f14, rmm # perform operation
fsub.h f26, f13, f14, rne # perform operation
fsub.h f26, f13, f14, rtz # perform operation
fsub.h f26, f13, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f13, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f13, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f13, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f13, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f13, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7dff)
li x25, 0xf4a0816d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f19, 0(x2) # load 0x000003ff from memory into f19
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f22, 0(x2) # load 0x00007dff from memory into f22
fsub.h f25, f19, f22, dyn # perform operation
fsub.h f25, f19, f22, rdn # perform operation
fsub.h f25, f19, f22, rmm # perform operation
fsub.h f25, f19, f22, rne # perform operation
fsub.h f25, f19, f22, rtz # perform operation
fsub.h f25, f19, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f19, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f19, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f19, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f19, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f19, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x58b4)
li x29, 0x89548cd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f4, 0(x2) # load 0x000058b4 from memory into f4
fsub.h f29, f27, f4, dyn # perform operation
fsub.h f29, f27, f4, rdn # perform operation
fsub.h f29, f27, f4, rmm # perform operation
fsub.h f29, f27, f4, rne # perform operation
fsub.h f29, f27, f4, rtz # perform operation
fsub.h f29, f27, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f27, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f27, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f27, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f27, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f27, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xc93a)
li x22, 0x7a8e5f53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f31, 0(x2) # load 0x0000c93a from memory into f31
fsub.h f22, f6, f31, dyn # perform operation
fsub.h f22, f6, f31, rdn # perform operation
fsub.h f22, f6, f31, rmm # perform operation
fsub.h f22, f6, f31, rne # perform operation
fsub.h f22, f6, f31, rtz # perform operation
fsub.h f22, f6, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f6, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f6, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f6, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f6, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f6, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x0)
li x9, 0x81c3b446 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f4, 0(x2) # load 0x000083ff from memory into f4
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
fsub.h f9, f4, f25, dyn # perform operation
fsub.h f9, f4, f25, rdn # perform operation
fsub.h f9, f4, f25, rmm # perform operation
fsub.h f9, f4, f25, rne # perform operation
fsub.h f9, f4, f25, rtz # perform operation
fsub.h f9, f4, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f4, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f4, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f4, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f4, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f4, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8000)
li x29, 0xaa7db0b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f8, 0(x2) # load 0x00008000 from memory into f8
fsub.h f29, f15, f8, dyn # perform operation
fsub.h f29, f15, f8, rdn # perform operation
fsub.h f29, f15, f8, rmm # perform operation
fsub.h f29, f15, f8, rne # perform operation
fsub.h f29, f15, f8, rtz # perform operation
fsub.h f29, f15, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f15, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f15, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f15, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f15, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f15, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3c00)
li x20, 0x9a33e935 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f19, 0(x2) # load 0x00003c00 from memory into f19
fsub.h f20, f18, f19, dyn # perform operation
fsub.h f20, f18, f19, rdn # perform operation
fsub.h f20, f18, f19, rmm # perform operation
fsub.h f20, f18, f19, rne # perform operation
fsub.h f20, f18, f19, rtz # perform operation
fsub.h f20, f18, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f18, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f18, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f18, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f18, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f18, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xbc00)
li x5, 0x9a789a2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f19, 0(x2) # load 0x000083ff from memory into f19
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f11, 0(x2) # load 0x0000bc00 from memory into f11
fsub.h f5, f19, f11, dyn # perform operation
fsub.h f5, f19, f11, rdn # perform operation
fsub.h f5, f19, f11, rmm # perform operation
fsub.h f5, f19, f11, rne # perform operation
fsub.h f5, f19, f11, rtz # perform operation
fsub.h f5, f19, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f19, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f19, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f19, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f19, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f19, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3e00)
li x26, 0xd81f4f38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f8, 0(x2) # load 0x00003e00 from memory into f8
fsub.h f26, f18, f8, dyn # perform operation
fsub.h f26, f18, f8, rdn # perform operation
fsub.h f26, f18, f8, rmm # perform operation
fsub.h f26, f18, f8, rne # perform operation
fsub.h f26, f18, f8, rtz # perform operation
fsub.h f26, f18, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f18, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f18, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f18, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f18, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f18, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xbe00)
li x4, 0x57b9985b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f27, 0(x2) # load 0x000083ff from memory into f27
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
fsub.h f4, f27, f8, dyn # perform operation
fsub.h f4, f27, f8, rdn # perform operation
fsub.h f4, f27, f8, rmm # perform operation
fsub.h f4, f27, f8, rne # perform operation
fsub.h f4, f27, f8, rtz # perform operation
fsub.h f4, f27, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f4, f27, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f4, f27, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f4, f27, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f4, f27, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f4, f27, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x4000)
li x2, 0xeec09c16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f25, 0(x2) # load 0x000083ff from memory into f25
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
fsub.h f2, f25, f28, dyn # perform operation
fsub.h f2, f25, f28, rdn # perform operation
fsub.h f2, f25, f28, rmm # perform operation
fsub.h f2, f25, f28, rne # perform operation
fsub.h f2, f25, f28, rtz # perform operation
fsub.h f2, f25, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f25, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f25, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f25, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f25, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f25, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xc000)
li x30, 0x194e895d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
fsub.h f30, f23, f17, dyn # perform operation
fsub.h f30, f23, f17, rdn # perform operation
fsub.h f30, f23, f17, rmm # perform operation
fsub.h f30, f23, f17, rne # perform operation
fsub.h f30, f23, f17, rtz # perform operation
fsub.h f30, f23, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f23, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f23, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f23, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f23, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f23, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x400)
li x13, 0x55bbc7bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f5, 0(x2) # load 0x000083ff from memory into f5
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f19, 0(x2) # load 0x00000400 from memory into f19
fsub.h f13, f5, f19, dyn # perform operation
fsub.h f13, f5, f19, rdn # perform operation
fsub.h f13, f5, f19, rmm # perform operation
fsub.h f13, f5, f19, rne # perform operation
fsub.h f13, f5, f19, rtz # perform operation
fsub.h f13, f5, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f5, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f5, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f5, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f5, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f5, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8400)
li x26, 0xdb72b4cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f27, 0(x2) # load 0x000083ff from memory into f27
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
fsub.h f26, f27, f1, dyn # perform operation
fsub.h f26, f27, f1, rdn # perform operation
fsub.h f26, f27, f1, rmm # perform operation
fsub.h f26, f27, f1, rne # perform operation
fsub.h f26, f27, f1, rtz # perform operation
fsub.h f26, f27, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f27, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f27, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f27, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f27, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f27, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7bff)
li x14, 0xb4495b30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
fsub.h f14, f16, f10, dyn # perform operation
fsub.h f14, f16, f10, rdn # perform operation
fsub.h f14, f16, f10, rmm # perform operation
fsub.h f14, f16, f10, rne # perform operation
fsub.h f14, f16, f10, rtz # perform operation
fsub.h f14, f16, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f16, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f16, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f16, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f16, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f16, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfbff)
li x11, 0x636f95ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f18, 0(x2) # load 0x0000fbff from memory into f18
fsub.h f11, f16, f18, dyn # perform operation
fsub.h f11, f16, f18, rdn # perform operation
fsub.h f11, f16, f18, rmm # perform operation
fsub.h f11, f16, f18, rne # perform operation
fsub.h f11, f16, f18, rtz # perform operation
fsub.h f11, f16, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f16, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f16, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f16, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f16, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f16, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3ff)
li x29, 0x60b3b29f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f11, 0(x2) # load 0x000003ff from memory into f11
fsub.h f29, f15, f11, dyn # perform operation
fsub.h f29, f15, f11, rdn # perform operation
fsub.h f29, f15, f11, rmm # perform operation
fsub.h f29, f15, f11, rne # perform operation
fsub.h f29, f15, f11, rtz # perform operation
fsub.h f29, f15, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f15, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f15, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f15, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f15, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f15, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x83ff)
li x25, 0xd1a25a44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
fsub.h f25, f20, f15, dyn # perform operation
fsub.h f25, f20, f15, rdn # perform operation
fsub.h f25, f20, f15, rmm # perform operation
fsub.h f25, f20, f15, rne # perform operation
fsub.h f25, f20, f15, rtz # perform operation
fsub.h f25, f20, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f20, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f20, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f20, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f20, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f20, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x200)
li x17, 0xf0f7a6c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f7, 0(x2) # load 0x000083ff from memory into f7
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f26, 0(x2) # load 0x00000200 from memory into f26
fsub.h f17, f7, f26, dyn # perform operation
fsub.h f17, f7, f26, rdn # perform operation
fsub.h f17, f7, f26, rmm # perform operation
fsub.h f17, f7, f26, rne # perform operation
fsub.h f17, f7, f26, rtz # perform operation
fsub.h f17, f7, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f7, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f7, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f7, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f7, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f7, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8200)
li x10, 0xebe6a975 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f27, 0(x2) # load 0x000083ff from memory into f27
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
fsub.h f10, f27, f17, dyn # perform operation
fsub.h f10, f27, f17, rdn # perform operation
fsub.h f10, f27, f17, rmm # perform operation
fsub.h f10, f27, f17, rne # perform operation
fsub.h f10, f27, f17, rtz # perform operation
fsub.h f10, f27, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f27, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f27, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f27, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f27, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f27, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x1)
li x23, 0x79a407bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
fsub.h f23, f18, f26, dyn # perform operation
fsub.h f23, f18, f26, rdn # perform operation
fsub.h f23, f18, f26, rmm # perform operation
fsub.h f23, f18, f26, rne # perform operation
fsub.h f23, f18, f26, rtz # perform operation
fsub.h f23, f18, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f18, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f18, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f18, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f18, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f18, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8001)
li x21, 0xc18d5ec8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f30, 0(x2) # load 0x000083ff from memory into f30
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f26, 0(x2) # load 0x00008001 from memory into f26
fsub.h f21, f30, f26, dyn # perform operation
fsub.h f21, f30, f26, rdn # perform operation
fsub.h f21, f30, f26, rmm # perform operation
fsub.h f21, f30, f26, rne # perform operation
fsub.h f21, f30, f26, rtz # perform operation
fsub.h f21, f30, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f30, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f30, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f30, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f30, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f30, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7c00)
li x18, 0x93b63c5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f26, 0(x2) # load 0x00007c00 from memory into f26
fsub.h f18, f13, f26, dyn # perform operation
fsub.h f18, f13, f26, rdn # perform operation
fsub.h f18, f13, f26, rmm # perform operation
fsub.h f18, f13, f26, rne # perform operation
fsub.h f18, f13, f26, rtz # perform operation
fsub.h f18, f13, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f13, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f13, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f13, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f13, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f13, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfc00)
li x3, 0x97e17fb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f30, 0(x2) # load 0x000083ff from memory into f30
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f25, 0(x2) # load 0x0000fc00 from memory into f25
fsub.h f3, f30, f25, dyn # perform operation
fsub.h f3, f30, f25, rdn # perform operation
fsub.h f3, f30, f25, rmm # perform operation
fsub.h f3, f30, f25, rne # perform operation
fsub.h f3, f30, f25, rtz # perform operation
fsub.h f3, f30, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f30, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f30, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f30, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f30, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f30, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7e00)
li x24, 0x2931b123 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f26, 0(x2) # load 0x000083ff from memory into f26
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
fsub.h f24, f26, f14, dyn # perform operation
fsub.h f24, f26, f14, rdn # perform operation
fsub.h f24, f26, f14, rmm # perform operation
fsub.h f24, f26, f14, rne # perform operation
fsub.h f24, f26, f14, rtz # perform operation
fsub.h f24, f26, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f26, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f26, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f26, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f26, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f26, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7fff)
li x9, 0x33346318 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f25, 0(x2) # load 0x000083ff from memory into f25
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f21, 0(x2) # load 0x00007fff from memory into f21
fsub.h f9, f25, f21, dyn # perform operation
fsub.h f9, f25, f21, rdn # perform operation
fsub.h f9, f25, f21, rmm # perform operation
fsub.h f9, f25, f21, rne # perform operation
fsub.h f9, f25, f21, rtz # perform operation
fsub.h f9, f25, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f25, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f25, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f25, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f25, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f25, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7c01)
li x23, 0x60c4c8b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f10, 0(x2) # load 0x00007c01 from memory into f10
fsub.h f23, f29, f10, dyn # perform operation
fsub.h f23, f29, f10, rdn # perform operation
fsub.h f23, f29, f10, rmm # perform operation
fsub.h f23, f29, f10, rne # perform operation
fsub.h f23, f29, f10, rtz # perform operation
fsub.h f23, f29, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f29, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f29, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f29, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f29, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f29, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7dff)
li x4, 0xcf3e017c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f17, 0(x2) # load 0x000083ff from memory into f17
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f6, 0(x2) # load 0x00007dff from memory into f6
fsub.h f4, f17, f6, dyn # perform operation
fsub.h f4, f17, f6, rdn # perform operation
fsub.h f4, f17, f6, rmm # perform operation
fsub.h f4, f17, f6, rne # perform operation
fsub.h f4, f17, f6, rtz # perform operation
fsub.h f4, f17, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f4, f17, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f4, f17, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f4, f17, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f4, f17, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f4, f17, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x58b4)
li x23, 0x9c264071 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
fsub.h f23, f14, f18, dyn # perform operation
fsub.h f23, f14, f18, rdn # perform operation
fsub.h f23, f14, f18, rmm # perform operation
fsub.h f23, f14, f18, rne # perform operation
fsub.h f23, f14, f18, rtz # perform operation
fsub.h f23, f14, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f14, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f14, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f14, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f14, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f14, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xc93a)
li x24, 0xb43c7238 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f28, 0(x2) # load 0x000083ff from memory into f28
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f27, 0(x2) # load 0x0000c93a from memory into f27
fsub.h f24, f28, f27, dyn # perform operation
fsub.h f24, f28, f27, rdn # perform operation
fsub.h f24, f28, f27, rmm # perform operation
fsub.h f24, f28, f27, rne # perform operation
fsub.h f24, f28, f27, rtz # perform operation
fsub.h f24, f28, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f28, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f28, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f28, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f28, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f28, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x0)
li x5, 0x36fed4a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f14, 0(x2) # load 0x00000200 from memory into f14
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f9, 0(x2) # load 0x00000000 from memory into f9
fsub.h f5, f14, f9, dyn # perform operation
fsub.h f5, f14, f9, rdn # perform operation
fsub.h f5, f14, f9, rmm # perform operation
fsub.h f5, f14, f9, rne # perform operation
fsub.h f5, f14, f9, rtz # perform operation
fsub.h f5, f14, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f14, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f14, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f14, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f14, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f14, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8000)
li x7, 0x462fa164 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
fsub.h f7, f9, f10, dyn # perform operation
fsub.h f7, f9, f10, rdn # perform operation
fsub.h f7, f9, f10, rmm # perform operation
fsub.h f7, f9, f10, rne # perform operation
fsub.h f7, f9, f10, rtz # perform operation
fsub.h f7, f9, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f9, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f9, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f9, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f9, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f9, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3c00)
li x29, 0xf5642843 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
fsub.h f29, f16, f28, dyn # perform operation
fsub.h f29, f16, f28, rdn # perform operation
fsub.h f29, f16, f28, rmm # perform operation
fsub.h f29, f16, f28, rne # perform operation
fsub.h f29, f16, f28, rtz # perform operation
fsub.h f29, f16, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f16, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f16, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f16, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f16, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f16, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xbc00)
li x26, 0x44c85c47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
fsub.h f26, f15, f16, dyn # perform operation
fsub.h f26, f15, f16, rdn # perform operation
fsub.h f26, f15, f16, rmm # perform operation
fsub.h f26, f15, f16, rne # perform operation
fsub.h f26, f15, f16, rtz # perform operation
fsub.h f26, f15, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f15, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f15, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f15, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f15, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f15, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3e00)
li x20, 0x0aeeeff9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f23, 0(x2) # load 0x00000200 from memory into f23
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
fsub.h f20, f23, f12, dyn # perform operation
fsub.h f20, f23, f12, rdn # perform operation
fsub.h f20, f23, f12, rmm # perform operation
fsub.h f20, f23, f12, rne # perform operation
fsub.h f20, f23, f12, rtz # perform operation
fsub.h f20, f23, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f23, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f23, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f23, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f23, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f23, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xbe00)
li x29, 0x8c3c09cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f6, 0(x2) # load 0x00000200 from memory into f6
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
fsub.h f29, f6, f17, dyn # perform operation
fsub.h f29, f6, f17, rdn # perform operation
fsub.h f29, f6, f17, rmm # perform operation
fsub.h f29, f6, f17, rne # perform operation
fsub.h f29, f6, f17, rtz # perform operation
fsub.h f29, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f6, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x4000)
li x13, 0x4a616112 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f11, 0(x2) # load 0x00000200 from memory into f11
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f15, 0(x2) # load 0x00004000 from memory into f15
fsub.h f13, f11, f15, dyn # perform operation
fsub.h f13, f11, f15, rdn # perform operation
fsub.h f13, f11, f15, rmm # perform operation
fsub.h f13, f11, f15, rne # perform operation
fsub.h f13, f11, f15, rtz # perform operation
fsub.h f13, f11, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f11, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f11, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f11, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f11, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f11, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xc000)
li x23, 0xb9febff9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f10, 0(x2) # load 0x00000200 from memory into f10
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
fsub.h f23, f10, f3, dyn # perform operation
fsub.h f23, f10, f3, rdn # perform operation
fsub.h f23, f10, f3, rmm # perform operation
fsub.h f23, f10, f3, rne # perform operation
fsub.h f23, f10, f3, rtz # perform operation
fsub.h f23, f10, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f10, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f10, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f10, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f10, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f10, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x400)
li x15, 0x783ec4bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f10, 0(x2) # load 0x00000200 from memory into f10
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
fsub.h f15, f10, f24, dyn # perform operation
fsub.h f15, f10, f24, rdn # perform operation
fsub.h f15, f10, f24, rmm # perform operation
fsub.h f15, f10, f24, rne # perform operation
fsub.h f15, f10, f24, rtz # perform operation
fsub.h f15, f10, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f10, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f10, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f10, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f10, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f10, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8400)
li x17, 0xc7cf559f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f22, 0(x2) # load 0x00008400 from memory into f22
fsub.h f17, f3, f22, dyn # perform operation
fsub.h f17, f3, f22, rdn # perform operation
fsub.h f17, f3, f22, rmm # perform operation
fsub.h f17, f3, f22, rne # perform operation
fsub.h f17, f3, f22, rtz # perform operation
fsub.h f17, f3, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f3, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f3, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f3, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f3, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f3, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7bff)
li x8, 0xc84c320b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f29, 0(x2) # load 0x00007bff from memory into f29
fsub.h f8, f3, f29, dyn # perform operation
fsub.h f8, f3, f29, rdn # perform operation
fsub.h f8, f3, f29, rmm # perform operation
fsub.h f8, f3, f29, rne # perform operation
fsub.h f8, f3, f29, rtz # perform operation
fsub.h f8, f3, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f3, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f3, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f3, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f3, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f3, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfbff)
li x7, 0x7179b75d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f23, 0(x2) # load 0x00000200 from memory into f23
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
fsub.h f7, f23, f12, dyn # perform operation
fsub.h f7, f23, f12, rdn # perform operation
fsub.h f7, f23, f12, rmm # perform operation
fsub.h f7, f23, f12, rne # perform operation
fsub.h f7, f23, f12, rtz # perform operation
fsub.h f7, f23, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f23, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f23, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f23, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f23, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f23, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3ff)
li x13, 0x938ff70e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f1, 0(x2) # load 0x00000200 from memory into f1
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f8, 0(x2) # load 0x000003ff from memory into f8
fsub.h f13, f1, f8, dyn # perform operation
fsub.h f13, f1, f8, rdn # perform operation
fsub.h f13, f1, f8, rmm # perform operation
fsub.h f13, f1, f8, rne # perform operation
fsub.h f13, f1, f8, rtz # perform operation
fsub.h f13, f1, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f1, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f1, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f1, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f1, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f1, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x83ff)
li x15, 0xad51185a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f30, 0(x2) # load 0x00000200 from memory into f30
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
fsub.h f15, f30, f10, dyn # perform operation
fsub.h f15, f30, f10, rdn # perform operation
fsub.h f15, f30, f10, rmm # perform operation
fsub.h f15, f30, f10, rne # perform operation
fsub.h f15, f30, f10, rtz # perform operation
fsub.h f15, f30, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f30, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f30, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f30, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f30, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f30, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x200)
li x8, 0x87529bc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
fsub.h f8, f16, f25, dyn # perform operation
fsub.h f8, f16, f25, rdn # perform operation
fsub.h f8, f16, f25, rmm # perform operation
fsub.h f8, f16, f25, rne # perform operation
fsub.h f8, f16, f25, rtz # perform operation
fsub.h f8, f16, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f16, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f16, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f16, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f16, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f16, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8200)
li x18, 0x9cc3c1ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f21, 0(x2) # load 0x00000200 from memory into f21
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
fsub.h f18, f21, f25, dyn # perform operation
fsub.h f18, f21, f25, rdn # perform operation
fsub.h f18, f21, f25, rmm # perform operation
fsub.h f18, f21, f25, rne # perform operation
fsub.h f18, f21, f25, rtz # perform operation
fsub.h f18, f21, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f21, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f21, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f21, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f21, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f21, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x1)
li x25, 0xbd4dbdb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
fsub.h f25, f24, f27, dyn # perform operation
fsub.h f25, f24, f27, rdn # perform operation
fsub.h f25, f24, f27, rmm # perform operation
fsub.h f25, f24, f27, rne # perform operation
fsub.h f25, f24, f27, rtz # perform operation
fsub.h f25, f24, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f24, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f24, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f24, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f24, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f24, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8001)
li x21, 0xd6f6de54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f17, 0(x2) # load 0x00000200 from memory into f17
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
fsub.h f21, f17, f31, dyn # perform operation
fsub.h f21, f17, f31, rdn # perform operation
fsub.h f21, f17, f31, rmm # perform operation
fsub.h f21, f17, f31, rne # perform operation
fsub.h f21, f17, f31, rtz # perform operation
fsub.h f21, f17, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f17, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f17, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f17, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f17, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f17, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7c00)
li x28, 0x4857be38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f4, 0(x2) # load 0x00000200 from memory into f4
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f15, 0(x2) # load 0x00007c00 from memory into f15
fsub.h f28, f4, f15, dyn # perform operation
fsub.h f28, f4, f15, rdn # perform operation
fsub.h f28, f4, f15, rmm # perform operation
fsub.h f28, f4, f15, rne # perform operation
fsub.h f28, f4, f15, rtz # perform operation
fsub.h f28, f4, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f4, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f4, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f4, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f4, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f4, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfc00)
li x24, 0x0f4fadb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f17, 0(x2) # load 0x0000fc00 from memory into f17
fsub.h f24, f25, f17, dyn # perform operation
fsub.h f24, f25, f17, rdn # perform operation
fsub.h f24, f25, f17, rmm # perform operation
fsub.h f24, f25, f17, rne # perform operation
fsub.h f24, f25, f17, rtz # perform operation
fsub.h f24, f25, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f25, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f25, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f25, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f25, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f25, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7e00)
li x6, 0xa1762c94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f30, 0(x2) # load 0x00000200 from memory into f30
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
fsub.h f6, f30, f10, dyn # perform operation
fsub.h f6, f30, f10, rdn # perform operation
fsub.h f6, f30, f10, rmm # perform operation
fsub.h f6, f30, f10, rne # perform operation
fsub.h f6, f30, f10, rtz # perform operation
fsub.h f6, f30, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f30, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f30, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f30, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f30, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f30, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7fff)
li x25, 0x78c0cbaa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f31, 0(x2) # load 0x00000200 from memory into f31
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
fsub.h f25, f31, f29, dyn # perform operation
fsub.h f25, f31, f29, rdn # perform operation
fsub.h f25, f31, f29, rmm # perform operation
fsub.h f25, f31, f29, rne # perform operation
fsub.h f25, f31, f29, rtz # perform operation
fsub.h f25, f31, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f31, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f31, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f31, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f31, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f31, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7c01)
li x22, 0xfbee5806 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f20, 0(x2) # load 0x00000200 from memory into f20
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f4, 0(x2) # load 0x00007c01 from memory into f4
fsub.h f22, f20, f4, dyn # perform operation
fsub.h f22, f20, f4, rdn # perform operation
fsub.h f22, f20, f4, rmm # perform operation
fsub.h f22, f20, f4, rne # perform operation
fsub.h f22, f20, f4, rtz # perform operation
fsub.h f22, f20, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f20, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f20, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f20, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f20, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f20, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7dff)
li x14, 0xabadfe3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
fsub.h f14, f15, f5, dyn # perform operation
fsub.h f14, f15, f5, rdn # perform operation
fsub.h f14, f15, f5, rmm # perform operation
fsub.h f14, f15, f5, rne # perform operation
fsub.h f14, f15, f5, rtz # perform operation
fsub.h f14, f15, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f15, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f15, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f15, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f15, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f15, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x58b4)
li x9, 0xc2294f82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f7, 0(x2) # load 0x00000200 from memory into f7
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
fsub.h f9, f7, f10, dyn # perform operation
fsub.h f9, f7, f10, rdn # perform operation
fsub.h f9, f7, f10, rmm # perform operation
fsub.h f9, f7, f10, rne # perform operation
fsub.h f9, f7, f10, rtz # perform operation
fsub.h f9, f7, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f7, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f7, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f7, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f7, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f7, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xc93a)
li x8, 0x38e031b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f23, 0(x2) # load 0x00000200 from memory into f23
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f11, 0(x2) # load 0x0000c93a from memory into f11
fsub.h f8, f23, f11, dyn # perform operation
fsub.h f8, f23, f11, rdn # perform operation
fsub.h f8, f23, f11, rmm # perform operation
fsub.h f8, f23, f11, rne # perform operation
fsub.h f8, f23, f11, rtz # perform operation
fsub.h f8, f23, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f23, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f23, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f23, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f23, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f23, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x0)
li x16, 0x8233da14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f24, 0(x2) # load 0x00008200 from memory into f24
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
fsub.h f16, f24, f14, dyn # perform operation
fsub.h f16, f24, f14, rdn # perform operation
fsub.h f16, f24, f14, rmm # perform operation
fsub.h f16, f24, f14, rne # perform operation
fsub.h f16, f24, f14, rtz # perform operation
fsub.h f16, f24, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f24, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f24, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f24, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f24, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f24, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8000)
li x30, 0x5f5f80f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f5, 0(x2) # load 0x00008200 from memory into f5
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f16, 0(x2) # load 0x00008000 from memory into f16
fsub.h f30, f5, f16, dyn # perform operation
fsub.h f30, f5, f16, rdn # perform operation
fsub.h f30, f5, f16, rmm # perform operation
fsub.h f30, f5, f16, rne # perform operation
fsub.h f30, f5, f16, rtz # perform operation
fsub.h f30, f5, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f5, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f5, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f5, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f5, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f5, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3c00)
li x28, 0x00d45398 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f1, 0(x2) # load 0x00003c00 from memory into f1
fsub.h f28, f25, f1, dyn # perform operation
fsub.h f28, f25, f1, rdn # perform operation
fsub.h f28, f25, f1, rmm # perform operation
fsub.h f28, f25, f1, rne # perform operation
fsub.h f28, f25, f1, rtz # perform operation
fsub.h f28, f25, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f25, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f25, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f25, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f25, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f25, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xbc00)
li x21, 0x0af4db62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f28, 0(x2) # load 0x00008200 from memory into f28
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
fsub.h f21, f28, f24, dyn # perform operation
fsub.h f21, f28, f24, rdn # perform operation
fsub.h f21, f28, f24, rmm # perform operation
fsub.h f21, f28, f24, rne # perform operation
fsub.h f21, f28, f24, rtz # perform operation
fsub.h f21, f28, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f28, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f28, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f28, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f28, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f28, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3e00)
li x18, 0xb03f4987 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f30, 0(x2) # load 0x00003e00 from memory into f30
fsub.h f18, f25, f30, dyn # perform operation
fsub.h f18, f25, f30, rdn # perform operation
fsub.h f18, f25, f30, rmm # perform operation
fsub.h f18, f25, f30, rne # perform operation
fsub.h f18, f25, f30, rtz # perform operation
fsub.h f18, f25, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f25, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f25, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f25, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f25, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f25, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xbe00)
li x29, 0x32a6fa25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
fsub.h f29, f23, f27, dyn # perform operation
fsub.h f29, f23, f27, rdn # perform operation
fsub.h f29, f23, f27, rmm # perform operation
fsub.h f29, f23, f27, rne # perform operation
fsub.h f29, f23, f27, rtz # perform operation
fsub.h f29, f23, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f23, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f23, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f23, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f23, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f23, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x4000)
li x2, 0xeef77f74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f29, 0(x2) # load 0x00008200 from memory into f29
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
fsub.h f2, f29, f27, dyn # perform operation
fsub.h f2, f29, f27, rdn # perform operation
fsub.h f2, f29, f27, rmm # perform operation
fsub.h f2, f29, f27, rne # perform operation
fsub.h f2, f29, f27, rtz # perform operation
fsub.h f2, f29, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f29, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f29, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f29, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f29, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f29, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xc000)
li x26, 0xaa73fa58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f19, 0(x2) # load 0x00008200 from memory into f19
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
fsub.h f26, f19, f21, dyn # perform operation
fsub.h f26, f19, f21, rdn # perform operation
fsub.h f26, f19, f21, rmm # perform operation
fsub.h f26, f19, f21, rne # perform operation
fsub.h f26, f19, f21, rtz # perform operation
fsub.h f26, f19, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f19, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f19, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f19, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f19, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f19, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x400)
li x19, 0xacb1eedd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f5, 0(x2) # load 0x00008200 from memory into f5
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f4, 0(x2) # load 0x00000400 from memory into f4
fsub.h f19, f5, f4, dyn # perform operation
fsub.h f19, f5, f4, rdn # perform operation
fsub.h f19, f5, f4, rmm # perform operation
fsub.h f19, f5, f4, rne # perform operation
fsub.h f19, f5, f4, rtz # perform operation
fsub.h f19, f5, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f5, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f5, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f5, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f5, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f5, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8400)
li x29, 0xb7007f1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f6, 0(x2) # load 0x00008200 from memory into f6
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
fsub.h f29, f6, f9, dyn # perform operation
fsub.h f29, f6, f9, rdn # perform operation
fsub.h f29, f6, f9, rmm # perform operation
fsub.h f29, f6, f9, rne # perform operation
fsub.h f29, f6, f9, rtz # perform operation
fsub.h f29, f6, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f6, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f6, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f6, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f6, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f6, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7bff)
li x23, 0x44a9a621 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f9, 0(x2) # load 0x00008200 from memory into f9
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f25, 0(x2) # load 0x00007bff from memory into f25
fsub.h f23, f9, f25, dyn # perform operation
fsub.h f23, f9, f25, rdn # perform operation
fsub.h f23, f9, f25, rmm # perform operation
fsub.h f23, f9, f25, rne # perform operation
fsub.h f23, f9, f25, rtz # perform operation
fsub.h f23, f9, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f9, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f9, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f9, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f9, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f9, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfbff)
li x6, 0x0908376e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f23, 0(x2) # load 0x0000fbff from memory into f23
fsub.h f6, f10, f23, dyn # perform operation
fsub.h f6, f10, f23, rdn # perform operation
fsub.h f6, f10, f23, rmm # perform operation
fsub.h f6, f10, f23, rne # perform operation
fsub.h f6, f10, f23, rtz # perform operation
fsub.h f6, f10, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f10, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f10, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f10, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f10, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f10, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3ff)
li x27, 0x473ca50e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f9, 0(x2) # load 0x00008200 from memory into f9
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f24, 0(x2) # load 0x000003ff from memory into f24
fsub.h f27, f9, f24, dyn # perform operation
fsub.h f27, f9, f24, rdn # perform operation
fsub.h f27, f9, f24, rmm # perform operation
fsub.h f27, f9, f24, rne # perform operation
fsub.h f27, f9, f24, rtz # perform operation
fsub.h f27, f9, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f9, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f9, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f9, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f9, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f9, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x83ff)
li x9, 0x149a7e93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
fsub.h f9, f20, f15, dyn # perform operation
fsub.h f9, f20, f15, rdn # perform operation
fsub.h f9, f20, f15, rmm # perform operation
fsub.h f9, f20, f15, rne # perform operation
fsub.h f9, f20, f15, rtz # perform operation
fsub.h f9, f20, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f20, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f20, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f20, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f20, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f20, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x200)
li x16, 0x13a810a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f26, 0(x2) # load 0x00008200 from memory into f26
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
fsub.h f16, f26, f3, dyn # perform operation
fsub.h f16, f26, f3, rdn # perform operation
fsub.h f16, f26, f3, rmm # perform operation
fsub.h f16, f26, f3, rne # perform operation
fsub.h f16, f26, f3, rtz # perform operation
fsub.h f16, f26, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f26, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f26, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f26, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f26, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f26, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8200)
li x29, 0x3c9046a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f21, 0(x2) # load 0x00008200 from memory into f21
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f27, 0(x2) # load 0x00008200 from memory into f27
fsub.h f29, f21, f27, dyn # perform operation
fsub.h f29, f21, f27, rdn # perform operation
fsub.h f29, f21, f27, rmm # perform operation
fsub.h f29, f21, f27, rne # perform operation
fsub.h f29, f21, f27, rtz # perform operation
fsub.h f29, f21, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f21, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f21, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f21, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f21, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f21, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x1)
li x26, 0x1585ca49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f29, 0(x2) # load 0x00008200 from memory into f29
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f9, 0(x2) # load 0x00000001 from memory into f9
fsub.h f26, f29, f9, dyn # perform operation
fsub.h f26, f29, f9, rdn # perform operation
fsub.h f26, f29, f9, rmm # perform operation
fsub.h f26, f29, f9, rne # perform operation
fsub.h f26, f29, f9, rtz # perform operation
fsub.h f26, f29, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f29, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f29, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f29, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f29, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f29, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8001)
li x23, 0x4833bb49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f22, 0(x2) # load 0x00008200 from memory into f22
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f26, 0(x2) # load 0x00008001 from memory into f26
fsub.h f23, f22, f26, dyn # perform operation
fsub.h f23, f22, f26, rdn # perform operation
fsub.h f23, f22, f26, rmm # perform operation
fsub.h f23, f22, f26, rne # perform operation
fsub.h f23, f22, f26, rtz # perform operation
fsub.h f23, f22, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f22, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f22, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f22, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f22, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f22, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7c00)
li x25, 0xe2b6b546 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f4, 0(x2) # load 0x00008200 from memory into f4
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f31, 0(x2) # load 0x00007c00 from memory into f31
fsub.h f25, f4, f31, dyn # perform operation
fsub.h f25, f4, f31, rdn # perform operation
fsub.h f25, f4, f31, rmm # perform operation
fsub.h f25, f4, f31, rne # perform operation
fsub.h f25, f4, f31, rtz # perform operation
fsub.h f25, f4, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f4, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f4, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f4, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f4, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f4, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfc00)
li x8, 0xb71fb459 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f17, 0(x2) # load 0x0000fc00 from memory into f17
fsub.h f8, f10, f17, dyn # perform operation
fsub.h f8, f10, f17, rdn # perform operation
fsub.h f8, f10, f17, rmm # perform operation
fsub.h f8, f10, f17, rne # perform operation
fsub.h f8, f10, f17, rtz # perform operation
fsub.h f8, f10, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f10, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f10, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f10, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f10, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f10, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7e00)
li x9, 0x35b2030d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f11, 0(x2) # load 0x00008200 from memory into f11
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
fsub.h f9, f11, f21, dyn # perform operation
fsub.h f9, f11, f21, rdn # perform operation
fsub.h f9, f11, f21, rmm # perform operation
fsub.h f9, f11, f21, rne # perform operation
fsub.h f9, f11, f21, rtz # perform operation
fsub.h f9, f11, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f11, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f11, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f11, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f11, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f11, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7fff)
li x18, 0x3dab2353 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f16, 0(x2) # load 0x00007fff from memory into f16
fsub.h f18, f15, f16, dyn # perform operation
fsub.h f18, f15, f16, rdn # perform operation
fsub.h f18, f15, f16, rmm # perform operation
fsub.h f18, f15, f16, rne # perform operation
fsub.h f18, f15, f16, rtz # perform operation
fsub.h f18, f15, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f15, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f15, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f15, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f15, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f15, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7c01)
li x27, 0x9c056c9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f8, 0(x2) # load 0x00008200 from memory into f8
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f7, 0(x2) # load 0x00007c01 from memory into f7
fsub.h f27, f8, f7, dyn # perform operation
fsub.h f27, f8, f7, rdn # perform operation
fsub.h f27, f8, f7, rmm # perform operation
fsub.h f27, f8, f7, rne # perform operation
fsub.h f27, f8, f7, rtz # perform operation
fsub.h f27, f8, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f8, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f8, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f8, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f8, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f8, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7dff)
li x9, 0x5c2b05fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f21, 0(x2) # load 0x00008200 from memory into f21
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f10, 0(x2) # load 0x00007dff from memory into f10
fsub.h f9, f21, f10, dyn # perform operation
fsub.h f9, f21, f10, rdn # perform operation
fsub.h f9, f21, f10, rmm # perform operation
fsub.h f9, f21, f10, rne # perform operation
fsub.h f9, f21, f10, rtz # perform operation
fsub.h f9, f21, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f21, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f21, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f21, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f21, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f21, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x58b4)
li x2, 0x8775b09f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f30, 0(x2) # load 0x00008200 from memory into f30
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f12, 0(x2) # load 0x000058b4 from memory into f12
fsub.h f2, f30, f12, dyn # perform operation
fsub.h f2, f30, f12, rdn # perform operation
fsub.h f2, f30, f12, rmm # perform operation
fsub.h f2, f30, f12, rne # perform operation
fsub.h f2, f30, f12, rtz # perform operation
fsub.h f2, f30, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f30, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f30, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f30, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f30, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f30, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xc93a)
li x16, 0xf0ca3985 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f11, 0(x2) # load 0x00008200 from memory into f11
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f24, 0(x2) # load 0x0000c93a from memory into f24
fsub.h f16, f11, f24, dyn # perform operation
fsub.h f16, f11, f24, rdn # perform operation
fsub.h f16, f11, f24, rmm # perform operation
fsub.h f16, f11, f24, rne # perform operation
fsub.h f16, f11, f24, rtz # perform operation
fsub.h f16, f11, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f11, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f11, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f11, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f11, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f11, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
li x2, 0xb02fd600 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f5, 0(x2) # load 0x00000001 from memory into f5
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
fsub.h f2, f5, f14, dyn # perform operation
fsub.h f2, f5, f14, rdn # perform operation
fsub.h f2, f5, f14, rmm # perform operation
fsub.h f2, f5, f14, rne # perform operation
fsub.h f2, f5, f14, rtz # perform operation
fsub.h f2, f5, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f5, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f5, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f5, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f5, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f5, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000)
li x24, 0x64263ce3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f15, 0(x2) # load 0x00000001 from memory into f15
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f18, 0(x2) # load 0x00008000 from memory into f18
fsub.h f24, f15, f18, dyn # perform operation
fsub.h f24, f15, f18, rdn # perform operation
fsub.h f24, f15, f18, rmm # perform operation
fsub.h f24, f15, f18, rne # perform operation
fsub.h f24, f15, f18, rtz # perform operation
fsub.h f24, f15, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f15, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f15, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f15, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f15, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f15, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3c00)
li x6, 0x3d4721af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f31, 0(x2) # load 0x00003c00 from memory into f31
fsub.h f6, f14, f31, dyn # perform operation
fsub.h f6, f14, f31, rdn # perform operation
fsub.h f6, f14, f31, rmm # perform operation
fsub.h f6, f14, f31, rne # perform operation
fsub.h f6, f14, f31, rtz # perform operation
fsub.h f6, f14, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f14, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f14, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f14, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f14, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f14, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbc00)
li x2, 0xfba4e6db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f9, 0(x2) # load 0x0000bc00 from memory into f9
fsub.h f2, f14, f9, dyn # perform operation
fsub.h f2, f14, f9, rdn # perform operation
fsub.h f2, f14, f9, rmm # perform operation
fsub.h f2, f14, f9, rne # perform operation
fsub.h f2, f14, f9, rtz # perform operation
fsub.h f2, f14, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f14, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f14, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f14, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f14, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f14, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3e00)
li x18, 0x02bd1c68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f30, 0(x2) # load 0x00003e00 from memory into f30
fsub.h f18, f11, f30, dyn # perform operation
fsub.h f18, f11, f30, rdn # perform operation
fsub.h f18, f11, f30, rmm # perform operation
fsub.h f18, f11, f30, rne # perform operation
fsub.h f18, f11, f30, rtz # perform operation
fsub.h f18, f11, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f11, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f11, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f11, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f11, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f11, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbe00)
li x19, 0x046c8f2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f23, 0(x2) # load 0x00000001 from memory into f23
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f12, 0(x2) # load 0x0000be00 from memory into f12
fsub.h f19, f23, f12, dyn # perform operation
fsub.h f19, f23, f12, rdn # perform operation
fsub.h f19, f23, f12, rmm # perform operation
fsub.h f19, f23, f12, rne # perform operation
fsub.h f19, f23, f12, rtz # perform operation
fsub.h f19, f23, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f23, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f23, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f23, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f23, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f23, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x4000)
li x14, 0x38bad522 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f20, 0(x2) # load 0x00004000 from memory into f20
fsub.h f14, f24, f20, dyn # perform operation
fsub.h f14, f24, f20, rdn # perform operation
fsub.h f14, f24, f20, rmm # perform operation
fsub.h f14, f24, f20, rne # perform operation
fsub.h f14, f24, f20, rtz # perform operation
fsub.h f14, f24, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f24, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f24, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f24, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f24, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f24, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc000)
li x29, 0xe83d439c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
fsub.h f29, f27, f25, dyn # perform operation
fsub.h f29, f27, f25, rdn # perform operation
fsub.h f29, f27, f25, rmm # perform operation
fsub.h f29, f27, f25, rne # perform operation
fsub.h f29, f27, f25, rtz # perform operation
fsub.h f29, f27, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f27, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f27, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f27, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f27, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f27, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x400)
li x7, 0x8000a128 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f4, 0(x2) # load 0x00000001 from memory into f4
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f26, 0(x2) # load 0x00000400 from memory into f26
fsub.h f7, f4, f26, dyn # perform operation
fsub.h f7, f4, f26, rdn # perform operation
fsub.h f7, f4, f26, rmm # perform operation
fsub.h f7, f4, f26, rne # perform operation
fsub.h f7, f4, f26, rtz # perform operation
fsub.h f7, f4, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f4, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f4, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f4, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f4, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f4, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8400)
li x21, 0xb68c53fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f19, 0(x2) # load 0x00000001 from memory into f19
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f16, 0(x2) # load 0x00008400 from memory into f16
fsub.h f21, f19, f16, dyn # perform operation
fsub.h f21, f19, f16, rdn # perform operation
fsub.h f21, f19, f16, rmm # perform operation
fsub.h f21, f19, f16, rne # perform operation
fsub.h f21, f19, f16, rtz # perform operation
fsub.h f21, f19, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f19, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f19, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f19, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f19, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f19, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7bff)
li x24, 0x6ce2c778 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f4, 0(x2) # load 0x00000001 from memory into f4
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f31, 0(x2) # load 0x00007bff from memory into f31
fsub.h f24, f4, f31, dyn # perform operation
fsub.h f24, f4, f31, rdn # perform operation
fsub.h f24, f4, f31, rmm # perform operation
fsub.h f24, f4, f31, rne # perform operation
fsub.h f24, f4, f31, rtz # perform operation
fsub.h f24, f4, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f4, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f4, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f4, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f4, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f4, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfbff)
li x27, 0x6518c2f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f3, 0(x2) # load 0x0000fbff from memory into f3
fsub.h f27, f16, f3, dyn # perform operation
fsub.h f27, f16, f3, rdn # perform operation
fsub.h f27, f16, f3, rmm # perform operation
fsub.h f27, f16, f3, rne # perform operation
fsub.h f27, f16, f3, rtz # perform operation
fsub.h f27, f16, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f16, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f16, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f16, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f16, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f16, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3ff)
li x17, 0x014081d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f15, 0(x2) # load 0x000003ff from memory into f15
fsub.h f17, f11, f15, dyn # perform operation
fsub.h f17, f11, f15, rdn # perform operation
fsub.h f17, f11, f15, rmm # perform operation
fsub.h f17, f11, f15, rne # perform operation
fsub.h f17, f11, f15, rtz # perform operation
fsub.h f17, f11, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f11, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f11, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f11, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f11, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f11, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x83ff)
li x15, 0x96f6265a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f17, 0(x2) # load 0x000083ff from memory into f17
fsub.h f15, f27, f17, dyn # perform operation
fsub.h f15, f27, f17, rdn # perform operation
fsub.h f15, f27, f17, rmm # perform operation
fsub.h f15, f27, f17, rne # perform operation
fsub.h f15, f27, f17, rtz # perform operation
fsub.h f15, f27, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f27, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f27, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f27, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f27, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f27, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x200)
li x13, 0xcfd5972a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f3, 0(x2) # load 0x00000001 from memory into f3
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f18, 0(x2) # load 0x00000200 from memory into f18
fsub.h f13, f3, f18, dyn # perform operation
fsub.h f13, f3, f18, rdn # perform operation
fsub.h f13, f3, f18, rmm # perform operation
fsub.h f13, f3, f18, rne # perform operation
fsub.h f13, f3, f18, rtz # perform operation
fsub.h f13, f3, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f3, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f3, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f3, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f3, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f3, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8200)
li x16, 0x4bb1ae97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f1, 0(x2) # load 0x00000001 from memory into f1
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f24, 0(x2) # load 0x00008200 from memory into f24
fsub.h f16, f1, f24, dyn # perform operation
fsub.h f16, f1, f24, rdn # perform operation
fsub.h f16, f1, f24, rmm # perform operation
fsub.h f16, f1, f24, rne # perform operation
fsub.h f16, f1, f24, rtz # perform operation
fsub.h f16, f1, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f1, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f1, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f1, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f1, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f1, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
li x25, 0xbc694825 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f9, 0(x2) # load 0x00000001 from memory into f9
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f7, 0(x2) # load 0x00000001 from memory into f7
fsub.h f25, f9, f7, dyn # perform operation
fsub.h f25, f9, f7, rdn # perform operation
fsub.h f25, f9, f7, rmm # perform operation
fsub.h f25, f9, f7, rne # perform operation
fsub.h f25, f9, f7, rtz # perform operation
fsub.h f25, f9, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f9, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f9, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f9, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f9, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f9, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8001)
li x27, 0x0155ec9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f8, 0(x2) # load 0x00000001 from memory into f8
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
fsub.h f27, f8, f5, dyn # perform operation
fsub.h f27, f8, f5, rdn # perform operation
fsub.h f27, f8, f5, rmm # perform operation
fsub.h f27, f8, f5, rne # perform operation
fsub.h f27, f8, f5, rtz # perform operation
fsub.h f27, f8, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f8, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f8, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f8, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f8, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f8, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7c00)
li x21, 0xa037a1ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f25, 0(x2) # load 0x00000001 from memory into f25
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f29, 0(x2) # load 0x00007c00 from memory into f29
fsub.h f21, f25, f29, dyn # perform operation
fsub.h f21, f25, f29, rdn # perform operation
fsub.h f21, f25, f29, rmm # perform operation
fsub.h f21, f25, f29, rne # perform operation
fsub.h f21, f25, f29, rtz # perform operation
fsub.h f21, f25, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f25, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f25, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f25, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f25, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f25, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfc00)
li x20, 0x093f2d1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f13, 0(x2) # load 0x00000001 from memory into f13
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f12, 0(x2) # load 0x0000fc00 from memory into f12
fsub.h f20, f13, f12, dyn # perform operation
fsub.h f20, f13, f12, rdn # perform operation
fsub.h f20, f13, f12, rmm # perform operation
fsub.h f20, f13, f12, rne # perform operation
fsub.h f20, f13, f12, rtz # perform operation
fsub.h f20, f13, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f13, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f13, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f13, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f13, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f13, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7e00)
li x19, 0xd00e2705 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f4, 0(x2) # load 0x00000001 from memory into f4
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f22, 0(x2) # load 0x00007e00 from memory into f22
fsub.h f19, f4, f22, dyn # perform operation
fsub.h f19, f4, f22, rdn # perform operation
fsub.h f19, f4, f22, rmm # perform operation
fsub.h f19, f4, f22, rne # perform operation
fsub.h f19, f4, f22, rtz # perform operation
fsub.h f19, f4, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f4, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f4, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f4, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f4, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f4, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fff)
li x11, 0x9cd57f80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f15, 0(x2) # load 0x00000001 from memory into f15
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f28, 0(x2) # load 0x00007fff from memory into f28
fsub.h f11, f15, f28, dyn # perform operation
fsub.h f11, f15, f28, rdn # perform operation
fsub.h f11, f15, f28, rmm # perform operation
fsub.h f11, f15, f28, rne # perform operation
fsub.h f11, f15, f28, rtz # perform operation
fsub.h f11, f15, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f15, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f15, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f15, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f15, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f15, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7c01)
li x3, 0xf8e01b5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f5, 0(x2) # load 0x00000001 from memory into f5
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
fsub.h f3, f5, f9, dyn # perform operation
fsub.h f3, f5, f9, rdn # perform operation
fsub.h f3, f5, f9, rmm # perform operation
fsub.h f3, f5, f9, rne # perform operation
fsub.h f3, f5, f9, rtz # perform operation
fsub.h f3, f5, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f5, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f5, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f5, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f5, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f5, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7dff)
li x24, 0xec392fc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f10, 0(x2) # load 0x00000001 from memory into f10
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f6, 0(x2) # load 0x00007dff from memory into f6
fsub.h f24, f10, f6, dyn # perform operation
fsub.h f24, f10, f6, rdn # perform operation
fsub.h f24, f10, f6, rmm # perform operation
fsub.h f24, f10, f6, rne # perform operation
fsub.h f24, f10, f6, rtz # perform operation
fsub.h f24, f10, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f10, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f10, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f10, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f10, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f10, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x58b4)
li x19, 0x2140b411 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f25, 0(x2) # load 0x00000001 from memory into f25
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f12, 0(x2) # load 0x000058b4 from memory into f12
fsub.h f19, f25, f12, dyn # perform operation
fsub.h f19, f25, f12, rdn # perform operation
fsub.h f19, f25, f12, rmm # perform operation
fsub.h f19, f25, f12, rne # perform operation
fsub.h f19, f25, f12, rtz # perform operation
fsub.h f19, f25, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f25, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f25, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f25, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f25, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f25, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc93a)
li x7, 0xa49d54ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
fsub.h f7, f31, f26, dyn # perform operation
fsub.h f7, f31, f26, rdn # perform operation
fsub.h f7, f31, f26, rmm # perform operation
fsub.h f7, f31, f26, rne # perform operation
fsub.h f7, f31, f26, rtz # perform operation
fsub.h f7, f31, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f31, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f31, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f31, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f31, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f31, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x0)
li x11, 0xa83b0a1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f30, 0(x2) # load 0x00008001 from memory into f30
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f23, 0(x2) # load 0x00000000 from memory into f23
fsub.h f11, f30, f23, dyn # perform operation
fsub.h f11, f30, f23, rdn # perform operation
fsub.h f11, f30, f23, rmm # perform operation
fsub.h f11, f30, f23, rne # perform operation
fsub.h f11, f30, f23, rtz # perform operation
fsub.h f11, f30, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f30, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f30, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f30, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f30, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f30, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8000)
li x20, 0x5e3101ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f12, 0(x2) # load 0x00008001 from memory into f12
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
fsub.h f20, f12, f10, dyn # perform operation
fsub.h f20, f12, f10, rdn # perform operation
fsub.h f20, f12, f10, rmm # perform operation
fsub.h f20, f12, f10, rne # perform operation
fsub.h f20, f12, f10, rtz # perform operation
fsub.h f20, f12, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f12, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f12, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f12, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f12, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f12, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3c00)
li x2, 0xf4533653 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f28, 0(x2) # load 0x00008001 from memory into f28
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f12, 0(x2) # load 0x00003c00 from memory into f12
fsub.h f2, f28, f12, dyn # perform operation
fsub.h f2, f28, f12, rdn # perform operation
fsub.h f2, f28, f12, rmm # perform operation
fsub.h f2, f28, f12, rne # perform operation
fsub.h f2, f28, f12, rtz # perform operation
fsub.h f2, f28, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f28, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f28, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f28, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f28, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f28, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xbc00)
li x15, 0x9d08e5b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f12, 0(x2) # load 0x00008001 from memory into f12
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f25, 0(x2) # load 0x0000bc00 from memory into f25
fsub.h f15, f12, f25, dyn # perform operation
fsub.h f15, f12, f25, rdn # perform operation
fsub.h f15, f12, f25, rmm # perform operation
fsub.h f15, f12, f25, rne # perform operation
fsub.h f15, f12, f25, rtz # perform operation
fsub.h f15, f12, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f12, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f12, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f12, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f12, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f12, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3e00)
li x28, 0x2da1ee68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f30, 0(x2) # load 0x00003e00 from memory into f30
fsub.h f28, f23, f30, dyn # perform operation
fsub.h f28, f23, f30, rdn # perform operation
fsub.h f28, f23, f30, rmm # perform operation
fsub.h f28, f23, f30, rne # perform operation
fsub.h f28, f23, f30, rtz # perform operation
fsub.h f28, f23, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f23, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f23, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f23, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f23, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f23, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xbe00)
li x28, 0xe8c7ddb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f16, 0(x2) # load 0x0000be00 from memory into f16
fsub.h f28, f5, f16, dyn # perform operation
fsub.h f28, f5, f16, rdn # perform operation
fsub.h f28, f5, f16, rmm # perform operation
fsub.h f28, f5, f16, rne # perform operation
fsub.h f28, f5, f16, rtz # perform operation
fsub.h f28, f5, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f5, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f5, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f5, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f5, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f5, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x4000)
li x3, 0xe6f59b7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f19, 0(x2) # load 0x00004000 from memory into f19
fsub.h f3, f15, f19, dyn # perform operation
fsub.h f3, f15, f19, rdn # perform operation
fsub.h f3, f15, f19, rmm # perform operation
fsub.h f3, f15, f19, rne # perform operation
fsub.h f3, f15, f19, rtz # perform operation
fsub.h f3, f15, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f15, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f15, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f15, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f15, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f15, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xc000)
li x25, 0xd837dcb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f26, 0(x2) # load 0x00008001 from memory into f26
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
fsub.h f25, f26, f16, dyn # perform operation
fsub.h f25, f26, f16, rdn # perform operation
fsub.h f25, f26, f16, rmm # perform operation
fsub.h f25, f26, f16, rne # perform operation
fsub.h f25, f26, f16, rtz # perform operation
fsub.h f25, f26, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f26, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f26, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f26, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f26, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f26, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x400)
li x22, 0x72fc1a57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f17, 0(x2) # load 0x00008001 from memory into f17
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
fsub.h f22, f17, f13, dyn # perform operation
fsub.h f22, f17, f13, rdn # perform operation
fsub.h f22, f17, f13, rmm # perform operation
fsub.h f22, f17, f13, rne # perform operation
fsub.h f22, f17, f13, rtz # perform operation
fsub.h f22, f17, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f17, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f17, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f17, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f17, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f17, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8400)
li x17, 0x5314d747 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
fsub.h f17, f14, f7, dyn # perform operation
fsub.h f17, f14, f7, rdn # perform operation
fsub.h f17, f14, f7, rmm # perform operation
fsub.h f17, f14, f7, rne # perform operation
fsub.h f17, f14, f7, rtz # perform operation
fsub.h f17, f14, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f14, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f14, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f14, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f14, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f14, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7bff)
li x1, 0x0023a5c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f3, 0(x2) # load 0x00008001 from memory into f3
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f20, 0(x2) # load 0x00007bff from memory into f20
fsub.h f1, f3, f20, dyn # perform operation
fsub.h f1, f3, f20, rdn # perform operation
fsub.h f1, f3, f20, rmm # perform operation
fsub.h f1, f3, f20, rne # perform operation
fsub.h f1, f3, f20, rtz # perform operation
fsub.h f1, f3, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f3, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f3, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f3, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f3, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f3, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfbff)
li x9, 0xbeeb7c56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f13, 0(x2) # load 0x00008001 from memory into f13
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
fsub.h f9, f13, f16, dyn # perform operation
fsub.h f9, f13, f16, rdn # perform operation
fsub.h f9, f13, f16, rmm # perform operation
fsub.h f9, f13, f16, rne # perform operation
fsub.h f9, f13, f16, rtz # perform operation
fsub.h f9, f13, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f13, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f13, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f13, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f13, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f13, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3ff)
li x23, 0xc9d2b12d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f3, 0(x2) # load 0x00008001 from memory into f3
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
fsub.h f23, f3, f27, dyn # perform operation
fsub.h f23, f3, f27, rdn # perform operation
fsub.h f23, f3, f27, rmm # perform operation
fsub.h f23, f3, f27, rne # perform operation
fsub.h f23, f3, f27, rtz # perform operation
fsub.h f23, f3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f3, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f3, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f3, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f3, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f3, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x83ff)
li x3, 0x21d63bf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f27, 0(x2) # load 0x00008001 from memory into f27
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f26, 0(x2) # load 0x000083ff from memory into f26
fsub.h f3, f27, f26, dyn # perform operation
fsub.h f3, f27, f26, rdn # perform operation
fsub.h f3, f27, f26, rmm # perform operation
fsub.h f3, f27, f26, rne # perform operation
fsub.h f3, f27, f26, rtz # perform operation
fsub.h f3, f27, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f27, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f27, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f27, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f27, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f27, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x200)
li x25, 0x5e58184c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
fsub.h f25, f23, f24, dyn # perform operation
fsub.h f25, f23, f24, rdn # perform operation
fsub.h f25, f23, f24, rmm # perform operation
fsub.h f25, f23, f24, rne # perform operation
fsub.h f25, f23, f24, rtz # perform operation
fsub.h f25, f23, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f23, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f23, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f23, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f23, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f23, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8200)
li x10, 0x2aaabe4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f20, 0(x2) # load 0x00008001 from memory into f20
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f29, 0(x2) # load 0x00008200 from memory into f29
fsub.h f10, f20, f29, dyn # perform operation
fsub.h f10, f20, f29, rdn # perform operation
fsub.h f10, f20, f29, rmm # perform operation
fsub.h f10, f20, f29, rne # perform operation
fsub.h f10, f20, f29, rtz # perform operation
fsub.h f10, f20, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f20, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f20, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f20, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f20, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f20, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x1)
li x4, 0x47e846eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f23, 0(x2) # load 0x00000001 from memory into f23
fsub.h f4, f31, f23, dyn # perform operation
fsub.h f4, f31, f23, rdn # perform operation
fsub.h f4, f31, f23, rmm # perform operation
fsub.h f4, f31, f23, rne # perform operation
fsub.h f4, f31, f23, rtz # perform operation
fsub.h f4, f31, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f4, f31, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f4, f31, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f4, f31, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f4, f31, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f4, f31, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8001)
li x9, 0x53c4eac7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f12, 0(x2) # load 0x00008001 from memory into f12
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
fsub.h f9, f12, f23, dyn # perform operation
fsub.h f9, f12, f23, rdn # perform operation
fsub.h f9, f12, f23, rmm # perform operation
fsub.h f9, f12, f23, rne # perform operation
fsub.h f9, f12, f23, rtz # perform operation
fsub.h f9, f12, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f12, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f12, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f12, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f12, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f12, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7c00)
li x23, 0x5c7715fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f26, 0(x2) # load 0x00008001 from memory into f26
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f17, 0(x2) # load 0x00007c00 from memory into f17
fsub.h f23, f26, f17, dyn # perform operation
fsub.h f23, f26, f17, rdn # perform operation
fsub.h f23, f26, f17, rmm # perform operation
fsub.h f23, f26, f17, rne # perform operation
fsub.h f23, f26, f17, rtz # perform operation
fsub.h f23, f26, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f26, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f26, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f26, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f26, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f26, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfc00)
li x14, 0x8f4e17a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f19, 0(x2) # load 0x00008001 from memory into f19
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f9, 0(x2) # load 0x0000fc00 from memory into f9
fsub.h f14, f19, f9, dyn # perform operation
fsub.h f14, f19, f9, rdn # perform operation
fsub.h f14, f19, f9, rmm # perform operation
fsub.h f14, f19, f9, rne # perform operation
fsub.h f14, f19, f9, rtz # perform operation
fsub.h f14, f19, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f19, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f19, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f19, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f19, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f19, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7e00)
li x10, 0xbea97b17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f18, 0(x2) # load 0x00007e00 from memory into f18
fsub.h f10, f14, f18, dyn # perform operation
fsub.h f10, f14, f18, rdn # perform operation
fsub.h f10, f14, f18, rmm # perform operation
fsub.h f10, f14, f18, rne # perform operation
fsub.h f10, f14, f18, rtz # perform operation
fsub.h f10, f14, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f14, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f14, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f14, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f14, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f14, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7fff)
li x30, 0x775ea2d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f5, 0(x2) # load 0x00007fff from memory into f5
fsub.h f30, f6, f5, dyn # perform operation
fsub.h f30, f6, f5, rdn # perform operation
fsub.h f30, f6, f5, rmm # perform operation
fsub.h f30, f6, f5, rne # perform operation
fsub.h f30, f6, f5, rtz # perform operation
fsub.h f30, f6, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f6, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f6, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f6, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f6, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f6, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7c01)
li x26, 0xc692275d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f2, 0(x2) # load 0x00007c01 from memory into f2
fsub.h f26, f15, f2, dyn # perform operation
fsub.h f26, f15, f2, rdn # perform operation
fsub.h f26, f15, f2, rmm # perform operation
fsub.h f26, f15, f2, rne # perform operation
fsub.h f26, f15, f2, rtz # perform operation
fsub.h f26, f15, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f15, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f15, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f15, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f15, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f15, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7dff)
li x12, 0x8cd7aca7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f8, 0(x2) # load 0x00008001 from memory into f8
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f18, 0(x2) # load 0x00007dff from memory into f18
fsub.h f12, f8, f18, dyn # perform operation
fsub.h f12, f8, f18, rdn # perform operation
fsub.h f12, f8, f18, rmm # perform operation
fsub.h f12, f8, f18, rne # perform operation
fsub.h f12, f8, f18, rtz # perform operation
fsub.h f12, f8, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f8, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f8, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f8, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f8, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f8, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x58b4)
li x29, 0xfe641fd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f17, 0(x2) # load 0x00008001 from memory into f17
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f7, 0(x2) # load 0x000058b4 from memory into f7
fsub.h f29, f17, f7, dyn # perform operation
fsub.h f29, f17, f7, rdn # perform operation
fsub.h f29, f17, f7, rmm # perform operation
fsub.h f29, f17, f7, rne # perform operation
fsub.h f29, f17, f7, rtz # perform operation
fsub.h f29, f17, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f17, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f17, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f17, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f17, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f17, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xc93a)
li x16, 0xd3f3d02b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f19, 0(x2) # load 0x00008001 from memory into f19
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
fsub.h f16, f19, f6, dyn # perform operation
fsub.h f16, f19, f6, rdn # perform operation
fsub.h f16, f19, f6, rmm # perform operation
fsub.h f16, f19, f6, rne # perform operation
fsub.h f16, f19, f6, rtz # perform operation
fsub.h f16, f19, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f19, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f19, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f19, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f19, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f19, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x0)
li x19, 0xb6b5b519 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
fsub.h f19, f16, f31, dyn # perform operation
fsub.h f19, f16, f31, rdn # perform operation
fsub.h f19, f16, f31, rmm # perform operation
fsub.h f19, f16, f31, rne # perform operation
fsub.h f19, f16, f31, rtz # perform operation
fsub.h f19, f16, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f16, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f16, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f16, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f16, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f16, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8000)
li x5, 0xceca8fdc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f21, 0(x2) # load 0x00007c00 from memory into f21
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f22, 0(x2) # load 0x00008000 from memory into f22
fsub.h f5, f21, f22, dyn # perform operation
fsub.h f5, f21, f22, rdn # perform operation
fsub.h f5, f21, f22, rmm # perform operation
fsub.h f5, f21, f22, rne # perform operation
fsub.h f5, f21, f22, rtz # perform operation
fsub.h f5, f21, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f21, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f21, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f21, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f21, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f21, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3c00)
li x21, 0x8c7daf9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
fsub.h f21, f28, f30, dyn # perform operation
fsub.h f21, f28, f30, rdn # perform operation
fsub.h f21, f28, f30, rmm # perform operation
fsub.h f21, f28, f30, rne # perform operation
fsub.h f21, f28, f30, rtz # perform operation
fsub.h f21, f28, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f28, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f28, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f28, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f28, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f28, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xbc00)
li x30, 0xdc7f3ac3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f26, 0(x2) # load 0x00007c00 from memory into f26
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
fsub.h f30, f26, f7, dyn # perform operation
fsub.h f30, f26, f7, rdn # perform operation
fsub.h f30, f26, f7, rmm # perform operation
fsub.h f30, f26, f7, rne # perform operation
fsub.h f30, f26, f7, rtz # perform operation
fsub.h f30, f26, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f26, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f26, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f26, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f26, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f26, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3e00)
li x6, 0x6d7aa218 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f22, 0(x2) # load 0x00003e00 from memory into f22
fsub.h f6, f7, f22, dyn # perform operation
fsub.h f6, f7, f22, rdn # perform operation
fsub.h f6, f7, f22, rmm # perform operation
fsub.h f6, f7, f22, rne # perform operation
fsub.h f6, f7, f22, rtz # perform operation
fsub.h f6, f7, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f7, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f7, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f7, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f7, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f7, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xbe00)
li x11, 0x01ef6ae3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f25, 0(x2) # load 0x00007c00 from memory into f25
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
fsub.h f11, f25, f5, dyn # perform operation
fsub.h f11, f25, f5, rdn # perform operation
fsub.h f11, f25, f5, rmm # perform operation
fsub.h f11, f25, f5, rne # perform operation
fsub.h f11, f25, f5, rtz # perform operation
fsub.h f11, f25, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f25, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f25, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f25, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f25, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f25, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x4000)
li x23, 0x12a047e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f21, 0(x2) # load 0x00007c00 from memory into f21
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
fsub.h f23, f21, f6, dyn # perform operation
fsub.h f23, f21, f6, rdn # perform operation
fsub.h f23, f21, f6, rmm # perform operation
fsub.h f23, f21, f6, rne # perform operation
fsub.h f23, f21, f6, rtz # perform operation
fsub.h f23, f21, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f21, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f21, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f21, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f21, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f21, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xc000)
li x12, 0x01747600 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f28, 0(x2) # load 0x0000c000 from memory into f28
fsub.h f12, f2, f28, dyn # perform operation
fsub.h f12, f2, f28, rdn # perform operation
fsub.h f12, f2, f28, rmm # perform operation
fsub.h f12, f2, f28, rne # perform operation
fsub.h f12, f2, f28, rtz # perform operation
fsub.h f12, f2, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f2, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f2, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f2, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f2, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f2, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x400)
li x25, 0x8853f16f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f22, 0(x2) # load 0x00007c00 from memory into f22
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f6, 0(x2) # load 0x00000400 from memory into f6
fsub.h f25, f22, f6, dyn # perform operation
fsub.h f25, f22, f6, rdn # perform operation
fsub.h f25, f22, f6, rmm # perform operation
fsub.h f25, f22, f6, rne # perform operation
fsub.h f25, f22, f6, rtz # perform operation
fsub.h f25, f22, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f22, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f22, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f22, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f22, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f22, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8400)
li x4, 0x12956c15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f3, 0(x2) # load 0x00007c00 from memory into f3
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
fsub.h f4, f3, f24, dyn # perform operation
fsub.h f4, f3, f24, rdn # perform operation
fsub.h f4, f3, f24, rmm # perform operation
fsub.h f4, f3, f24, rne # perform operation
fsub.h f4, f3, f24, rtz # perform operation
fsub.h f4, f3, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f4, f3, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f4, f3, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f4, f3, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f4, f3, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f4, f3, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7bff)
li x28, 0x9941ab7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f4, 0(x2) # load 0x00007c00 from memory into f4
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
fsub.h f28, f4, f24, dyn # perform operation
fsub.h f28, f4, f24, rdn # perform operation
fsub.h f28, f4, f24, rmm # perform operation
fsub.h f28, f4, f24, rne # perform operation
fsub.h f28, f4, f24, rtz # perform operation
fsub.h f28, f4, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f4, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f4, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f4, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f4, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f4, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfbff)
li x27, 0x0327c79f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f24, 0(x2) # load 0x0000fbff from memory into f24
fsub.h f27, f14, f24, dyn # perform operation
fsub.h f27, f14, f24, rdn # perform operation
fsub.h f27, f14, f24, rmm # perform operation
fsub.h f27, f14, f24, rne # perform operation
fsub.h f27, f14, f24, rtz # perform operation
fsub.h f27, f14, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f14, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f14, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f14, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f14, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f14, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3ff)
li x9, 0x23dcd098 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f22, 0(x2) # load 0x00007c00 from memory into f22
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f19, 0(x2) # load 0x000003ff from memory into f19
fsub.h f9, f22, f19, dyn # perform operation
fsub.h f9, f22, f19, rdn # perform operation
fsub.h f9, f22, f19, rmm # perform operation
fsub.h f9, f22, f19, rne # perform operation
fsub.h f9, f22, f19, rtz # perform operation
fsub.h f9, f22, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f22, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f22, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f22, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f22, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f22, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x83ff)
li x14, 0xd43096fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f23, 0(x2) # load 0x00007c00 from memory into f23
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
fsub.h f14, f23, f20, dyn # perform operation
fsub.h f14, f23, f20, rdn # perform operation
fsub.h f14, f23, f20, rmm # perform operation
fsub.h f14, f23, f20, rne # perform operation
fsub.h f14, f23, f20, rtz # perform operation
fsub.h f14, f23, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f23, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f23, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f23, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f23, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f23, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x200)
li x31, 0x0f394652 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f18, 0(x2) # load 0x00000200 from memory into f18
fsub.h f31, f11, f18, dyn # perform operation
fsub.h f31, f11, f18, rdn # perform operation
fsub.h f31, f11, f18, rmm # perform operation
fsub.h f31, f11, f18, rne # perform operation
fsub.h f31, f11, f18, rtz # perform operation
fsub.h f31, f11, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f11, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f11, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f11, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f11, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f11, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8200)
li x10, 0x8bf119bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f29, 0(x2) # load 0x00007c00 from memory into f29
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f18, 0(x2) # load 0x00008200 from memory into f18
fsub.h f10, f29, f18, dyn # perform operation
fsub.h f10, f29, f18, rdn # perform operation
fsub.h f10, f29, f18, rmm # perform operation
fsub.h f10, f29, f18, rne # perform operation
fsub.h f10, f29, f18, rtz # perform operation
fsub.h f10, f29, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f29, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f29, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f29, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f29, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f29, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x1)
li x3, 0x34c86934 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f22, 0(x2) # load 0x00007c00 from memory into f22
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f4, 0(x2) # load 0x00000001 from memory into f4
fsub.h f3, f22, f4, dyn # perform operation
fsub.h f3, f22, f4, rdn # perform operation
fsub.h f3, f22, f4, rmm # perform operation
fsub.h f3, f22, f4, rne # perform operation
fsub.h f3, f22, f4, rtz # perform operation
fsub.h f3, f22, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f22, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f22, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f22, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f22, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f22, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8001)
li x23, 0xd2128f40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f22, 0(x2) # load 0x00008001 from memory into f22
fsub.h f23, f2, f22, dyn # perform operation
fsub.h f23, f2, f22, rdn # perform operation
fsub.h f23, f2, f22, rmm # perform operation
fsub.h f23, f2, f22, rne # perform operation
fsub.h f23, f2, f22, rtz # perform operation
fsub.h f23, f2, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f2, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f2, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f2, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f2, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f2, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7c00)
li x6, 0xb3fde93a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f10, 0(x2) # load 0x00007c00 from memory into f10
fsub.h f6, f11, f10, dyn # perform operation
fsub.h f6, f11, f10, rdn # perform operation
fsub.h f6, f11, f10, rmm # perform operation
fsub.h f6, f11, f10, rne # perform operation
fsub.h f6, f11, f10, rtz # perform operation
fsub.h f6, f11, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f11, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f11, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f11, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f11, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f11, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfc00)
li x22, 0x128a7b6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f29, 0(x2) # load 0x0000fc00 from memory into f29
fsub.h f22, f8, f29, dyn # perform operation
fsub.h f22, f8, f29, rdn # perform operation
fsub.h f22, f8, f29, rmm # perform operation
fsub.h f22, f8, f29, rne # perform operation
fsub.h f22, f8, f29, rtz # perform operation
fsub.h f22, f8, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f8, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f8, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f8, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f8, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f8, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7e00)
li x3, 0x82c9513b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f9, 0(x2) # load 0x00007c00 from memory into f9
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f25, 0(x2) # load 0x00007e00 from memory into f25
fsub.h f3, f9, f25, dyn # perform operation
fsub.h f3, f9, f25, rdn # perform operation
fsub.h f3, f9, f25, rmm # perform operation
fsub.h f3, f9, f25, rne # perform operation
fsub.h f3, f9, f25, rtz # perform operation
fsub.h f3, f9, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f9, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f9, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f9, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f9, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f9, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7fff)
li x21, 0xc3ec2308 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f26, 0(x2) # load 0x00007c00 from memory into f26
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
fsub.h f21, f26, f24, dyn # perform operation
fsub.h f21, f26, f24, rdn # perform operation
fsub.h f21, f26, f24, rmm # perform operation
fsub.h f21, f26, f24, rne # perform operation
fsub.h f21, f26, f24, rtz # perform operation
fsub.h f21, f26, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f26, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f26, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f26, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f26, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f26, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7c01)
li x16, 0x09cd6951 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f5, 0(x2) # load 0x00007c00 from memory into f5
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
fsub.h f16, f5, f31, dyn # perform operation
fsub.h f16, f5, f31, rdn # perform operation
fsub.h f16, f5, f31, rmm # perform operation
fsub.h f16, f5, f31, rne # perform operation
fsub.h f16, f5, f31, rtz # perform operation
fsub.h f16, f5, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f5, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f5, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f5, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f5, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f5, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7dff)
li x28, 0xc81ec6f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f9, 0(x2) # load 0x00007c00 from memory into f9
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
fsub.h f28, f9, f30, dyn # perform operation
fsub.h f28, f9, f30, rdn # perform operation
fsub.h f28, f9, f30, rmm # perform operation
fsub.h f28, f9, f30, rne # perform operation
fsub.h f28, f9, f30, rtz # perform operation
fsub.h f28, f9, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f9, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f9, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f9, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f9, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f9, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x58b4)
li x31, 0x639b37a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f1, 0(x2) # load 0x000058b4 from memory into f1
fsub.h f31, f16, f1, dyn # perform operation
fsub.h f31, f16, f1, rdn # perform operation
fsub.h f31, f16, f1, rmm # perform operation
fsub.h f31, f16, f1, rne # perform operation
fsub.h f31, f16, f1, rtz # perform operation
fsub.h f31, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f16, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xc93a)
li x14, 0x98380698 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f13, 0(x2) # load 0x00007c00 from memory into f13
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f29, 0(x2) # load 0x0000c93a from memory into f29
fsub.h f14, f13, f29, dyn # perform operation
fsub.h f14, f13, f29, rdn # perform operation
fsub.h f14, f13, f29, rmm # perform operation
fsub.h f14, f13, f29, rne # perform operation
fsub.h f14, f13, f29, rtz # perform operation
fsub.h f14, f13, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f13, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f13, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f13, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f13, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f13, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x0)
li x10, 0x345a0180 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f4, 0(x2) # load 0x0000fc00 from memory into f4
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f23, 0(x2) # load 0x00000000 from memory into f23
fsub.h f10, f4, f23, dyn # perform operation
fsub.h f10, f4, f23, rdn # perform operation
fsub.h f10, f4, f23, rmm # perform operation
fsub.h f10, f4, f23, rne # perform operation
fsub.h f10, f4, f23, rtz # perform operation
fsub.h f10, f4, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f4, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f4, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f4, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f4, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f4, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8000)
li x2, 0x18a6ea42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f7, 0(x2) # load 0x0000fc00 from memory into f7
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f18, 0(x2) # load 0x00008000 from memory into f18
fsub.h f2, f7, f18, dyn # perform operation
fsub.h f2, f7, f18, rdn # perform operation
fsub.h f2, f7, f18, rmm # perform operation
fsub.h f2, f7, f18, rne # perform operation
fsub.h f2, f7, f18, rtz # perform operation
fsub.h f2, f7, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f7, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f7, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f7, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f7, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f7, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3c00)
li x2, 0x65538585 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f25, 0(x2) # load 0x0000fc00 from memory into f25
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
fsub.h f2, f25, f3, dyn # perform operation
fsub.h f2, f25, f3, rdn # perform operation
fsub.h f2, f25, f3, rmm # perform operation
fsub.h f2, f25, f3, rne # perform operation
fsub.h f2, f25, f3, rtz # perform operation
fsub.h f2, f25, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f25, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f25, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f25, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f25, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f25, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xbc00)
li x29, 0xb2d1a88e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f19, 0(x2) # load 0x0000fc00 from memory into f19
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
fsub.h f29, f19, f28, dyn # perform operation
fsub.h f29, f19, f28, rdn # perform operation
fsub.h f29, f19, f28, rmm # perform operation
fsub.h f29, f19, f28, rne # perform operation
fsub.h f29, f19, f28, rtz # perform operation
fsub.h f29, f19, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f19, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f19, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f19, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f19, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f19, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3e00)
li x18, 0x0f38b04f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f28, 0(x2) # load 0x00003e00 from memory into f28
fsub.h f18, f11, f28, dyn # perform operation
fsub.h f18, f11, f28, rdn # perform operation
fsub.h f18, f11, f28, rmm # perform operation
fsub.h f18, f11, f28, rne # perform operation
fsub.h f18, f11, f28, rtz # perform operation
fsub.h f18, f11, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f11, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f11, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f11, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f11, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f11, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xbe00)
li x18, 0x199e1f2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
fsub.h f18, f22, f1, dyn # perform operation
fsub.h f18, f22, f1, rdn # perform operation
fsub.h f18, f22, f1, rmm # perform operation
fsub.h f18, f22, f1, rne # perform operation
fsub.h f18, f22, f1, rtz # perform operation
fsub.h f18, f22, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f22, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f22, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f22, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f22, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f22, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x4000)
li x3, 0x13bf9ba0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f20, 0(x2) # load 0x0000fc00 from memory into f20
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
fsub.h f3, f20, f23, dyn # perform operation
fsub.h f3, f20, f23, rdn # perform operation
fsub.h f3, f20, f23, rmm # perform operation
fsub.h f3, f20, f23, rne # perform operation
fsub.h f3, f20, f23, rtz # perform operation
fsub.h f3, f20, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f20, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f20, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f20, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f20, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f20, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xc000)
li x27, 0x760c8f30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f2, 0(x2) # load 0x0000c000 from memory into f2
fsub.h f27, f23, f2, dyn # perform operation
fsub.h f27, f23, f2, rdn # perform operation
fsub.h f27, f23, f2, rmm # perform operation
fsub.h f27, f23, f2, rne # perform operation
fsub.h f27, f23, f2, rtz # perform operation
fsub.h f27, f23, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f23, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f23, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f23, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f23, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f23, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x400)
li x11, 0xd47f3b5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f25, 0(x2) # load 0x0000fc00 from memory into f25
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f27, 0(x2) # load 0x00000400 from memory into f27
fsub.h f11, f25, f27, dyn # perform operation
fsub.h f11, f25, f27, rdn # perform operation
fsub.h f11, f25, f27, rmm # perform operation
fsub.h f11, f25, f27, rne # perform operation
fsub.h f11, f25, f27, rtz # perform operation
fsub.h f11, f25, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f25, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f25, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f25, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f25, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f25, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8400)
li x11, 0x46074901 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f20, 0(x2) # load 0x0000fc00 from memory into f20
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f10, 0(x2) # load 0x00008400 from memory into f10
fsub.h f11, f20, f10, dyn # perform operation
fsub.h f11, f20, f10, rdn # perform operation
fsub.h f11, f20, f10, rmm # perform operation
fsub.h f11, f20, f10, rne # perform operation
fsub.h f11, f20, f10, rtz # perform operation
fsub.h f11, f20, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f20, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f20, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f20, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f20, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f20, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7bff)
li x7, 0xe8f951ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f30, 0(x2) # load 0x0000fc00 from memory into f30
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
fsub.h f7, f30, f16, dyn # perform operation
fsub.h f7, f30, f16, rdn # perform operation
fsub.h f7, f30, f16, rmm # perform operation
fsub.h f7, f30, f16, rne # perform operation
fsub.h f7, f30, f16, rtz # perform operation
fsub.h f7, f30, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f30, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f30, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f30, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f30, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f30, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfbff)
li x29, 0x6900fb89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
fsub.h f29, f22, f27, dyn # perform operation
fsub.h f29, f22, f27, rdn # perform operation
fsub.h f29, f22, f27, rmm # perform operation
fsub.h f29, f22, f27, rne # perform operation
fsub.h f29, f22, f27, rtz # perform operation
fsub.h f29, f22, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f22, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f22, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f22, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f22, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f22, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3ff)
li x3, 0x3f0954d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f12, 0(x2) # load 0x0000fc00 from memory into f12
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f9, 0(x2) # load 0x000003ff from memory into f9
fsub.h f3, f12, f9, dyn # perform operation
fsub.h f3, f12, f9, rdn # perform operation
fsub.h f3, f12, f9, rmm # perform operation
fsub.h f3, f12, f9, rne # perform operation
fsub.h f3, f12, f9, rtz # perform operation
fsub.h f3, f12, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f12, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f12, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f12, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f12, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f12, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x83ff)
li x18, 0xcacfd68c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f15, 0(x2) # load 0x0000fc00 from memory into f15
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f5, 0(x2) # load 0x000083ff from memory into f5
fsub.h f18, f15, f5, dyn # perform operation
fsub.h f18, f15, f5, rdn # perform operation
fsub.h f18, f15, f5, rmm # perform operation
fsub.h f18, f15, f5, rne # perform operation
fsub.h f18, f15, f5, rtz # perform operation
fsub.h f18, f15, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f15, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f15, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f15, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f15, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f15, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x200)
li x12, 0x428011a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f4, 0(x2) # load 0x0000fc00 from memory into f4
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f31, 0(x2) # load 0x00000200 from memory into f31
fsub.h f12, f4, f31, dyn # perform operation
fsub.h f12, f4, f31, rdn # perform operation
fsub.h f12, f4, f31, rmm # perform operation
fsub.h f12, f4, f31, rne # perform operation
fsub.h f12, f4, f31, rtz # perform operation
fsub.h f12, f4, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f4, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f4, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f4, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f4, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f4, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8200)
li x29, 0x5da8f28e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f19, 0(x2) # load 0x0000fc00 from memory into f19
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f13, 0(x2) # load 0x00008200 from memory into f13
fsub.h f29, f19, f13, dyn # perform operation
fsub.h f29, f19, f13, rdn # perform operation
fsub.h f29, f19, f13, rmm # perform operation
fsub.h f29, f19, f13, rne # perform operation
fsub.h f29, f19, f13, rtz # perform operation
fsub.h f29, f19, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f19, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f19, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f19, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f19, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f19, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x1)
li x23, 0x2f3c829c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
fsub.h f23, f8, f21, dyn # perform operation
fsub.h f23, f8, f21, rdn # perform operation
fsub.h f23, f8, f21, rmm # perform operation
fsub.h f23, f8, f21, rne # perform operation
fsub.h f23, f8, f21, rtz # perform operation
fsub.h f23, f8, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f8, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f8, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f8, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f8, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f8, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8001)
li x31, 0xb0e094d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f24, 0(x2) # load 0x0000fc00 from memory into f24
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f28, 0(x2) # load 0x00008001 from memory into f28
fsub.h f31, f24, f28, dyn # perform operation
fsub.h f31, f24, f28, rdn # perform operation
fsub.h f31, f24, f28, rmm # perform operation
fsub.h f31, f24, f28, rne # perform operation
fsub.h f31, f24, f28, rtz # perform operation
fsub.h f31, f24, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f24, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f24, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f24, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f24, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f24, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7c00)
li x11, 0x8533b3f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f20, 0(x2) # load 0x0000fc00 from memory into f20
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
fsub.h f11, f20, f1, dyn # perform operation
fsub.h f11, f20, f1, rdn # perform operation
fsub.h f11, f20, f1, rmm # perform operation
fsub.h f11, f20, f1, rne # perform operation
fsub.h f11, f20, f1, rtz # perform operation
fsub.h f11, f20, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f20, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f20, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f20, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f20, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f20, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfc00)
li x22, 0x4124005c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f27, 0(x2) # load 0x0000fc00 from memory into f27
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f20, 0(x2) # load 0x0000fc00 from memory into f20
fsub.h f22, f27, f20, dyn # perform operation
fsub.h f22, f27, f20, rdn # perform operation
fsub.h f22, f27, f20, rmm # perform operation
fsub.h f22, f27, f20, rne # perform operation
fsub.h f22, f27, f20, rtz # perform operation
fsub.h f22, f27, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f27, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f27, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f27, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f27, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f27, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7e00)
li x25, 0xb372ba24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f6, 0(x2) # load 0x0000fc00 from memory into f6
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f29, 0(x2) # load 0x00007e00 from memory into f29
fsub.h f25, f6, f29, dyn # perform operation
fsub.h f25, f6, f29, rdn # perform operation
fsub.h f25, f6, f29, rmm # perform operation
fsub.h f25, f6, f29, rne # perform operation
fsub.h f25, f6, f29, rtz # perform operation
fsub.h f25, f6, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f6, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f6, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f6, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f6, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f6, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7fff)
li x3, 0x10cac977 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f21, 0(x2) # load 0x00007fff from memory into f21
fsub.h f3, f22, f21, dyn # perform operation
fsub.h f3, f22, f21, rdn # perform operation
fsub.h f3, f22, f21, rmm # perform operation
fsub.h f3, f22, f21, rne # perform operation
fsub.h f3, f22, f21, rtz # perform operation
fsub.h f3, f22, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f22, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f22, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f22, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f22, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f22, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7c01)
li x5, 0x486c5879 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f27, 0(x2) # load 0x0000fc00 from memory into f27
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
fsub.h f5, f27, f6, dyn # perform operation
fsub.h f5, f27, f6, rdn # perform operation
fsub.h f5, f27, f6, rmm # perform operation
fsub.h f5, f27, f6, rne # perform operation
fsub.h f5, f27, f6, rtz # perform operation
fsub.h f5, f27, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f27, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f27, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f27, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f27, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f27, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7dff)
li x23, 0xaef5034a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f31, 0(x2) # load 0x00007dff from memory into f31
fsub.h f23, f14, f31, dyn # perform operation
fsub.h f23, f14, f31, rdn # perform operation
fsub.h f23, f14, f31, rmm # perform operation
fsub.h f23, f14, f31, rne # perform operation
fsub.h f23, f14, f31, rtz # perform operation
fsub.h f23, f14, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f14, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f14, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f14, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f14, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f14, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x58b4)
li x12, 0x5f7156d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f15, 0(x2) # load 0x0000fc00 from memory into f15
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
fsub.h f12, f15, f10, dyn # perform operation
fsub.h f12, f15, f10, rdn # perform operation
fsub.h f12, f15, f10, rmm # perform operation
fsub.h f12, f15, f10, rne # perform operation
fsub.h f12, f15, f10, rtz # perform operation
fsub.h f12, f15, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f15, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f15, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f15, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f15, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f15, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xc93a)
li x8, 0x4b2aef48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
fsub.h f8, f14, f26, dyn # perform operation
fsub.h f8, f14, f26, rdn # perform operation
fsub.h f8, f14, f26, rmm # perform operation
fsub.h f8, f14, f26, rne # perform operation
fsub.h f8, f14, f26, rtz # perform operation
fsub.h f8, f14, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f14, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f14, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f14, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f14, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f14, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x0)
li x30, 0x09b013e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f24, 0(x2) # load 0x00007e00 from memory into f24
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
fsub.h f30, f24, f6, dyn # perform operation
fsub.h f30, f24, f6, rdn # perform operation
fsub.h f30, f24, f6, rmm # perform operation
fsub.h f30, f24, f6, rne # perform operation
fsub.h f30, f24, f6, rtz # perform operation
fsub.h f30, f24, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f24, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f24, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f24, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f24, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f24, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8000)
li x28, 0xaa361db7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
fsub.h f28, f31, f13, dyn # perform operation
fsub.h f28, f31, f13, rdn # perform operation
fsub.h f28, f31, f13, rmm # perform operation
fsub.h f28, f31, f13, rne # perform operation
fsub.h f28, f31, f13, rtz # perform operation
fsub.h f28, f31, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f31, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f31, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f31, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f31, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f31, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3c00)
li x27, 0x6632ee1d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f13, 0(x2) # load 0x00007e00 from memory into f13
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f12, 0(x2) # load 0x00003c00 from memory into f12
fsub.h f27, f13, f12, dyn # perform operation
fsub.h f27, f13, f12, rdn # perform operation
fsub.h f27, f13, f12, rmm # perform operation
fsub.h f27, f13, f12, rne # perform operation
fsub.h f27, f13, f12, rtz # perform operation
fsub.h f27, f13, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f13, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f13, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f13, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f13, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f13, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xbc00)
li x28, 0x9bf8127a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f16, 0(x2) # load 0x00007e00 from memory into f16
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
fsub.h f28, f16, f24, dyn # perform operation
fsub.h f28, f16, f24, rdn # perform operation
fsub.h f28, f16, f24, rmm # perform operation
fsub.h f28, f16, f24, rne # perform operation
fsub.h f28, f16, f24, rtz # perform operation
fsub.h f28, f16, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f16, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f16, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f16, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f16, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f16, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3e00)
li x26, 0x2790afb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
fsub.h f26, f10, f6, dyn # perform operation
fsub.h f26, f10, f6, rdn # perform operation
fsub.h f26, f10, f6, rmm # perform operation
fsub.h f26, f10, f6, rne # perform operation
fsub.h f26, f10, f6, rtz # perform operation
fsub.h f26, f10, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f10, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f10, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f10, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f10, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f10, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xbe00)
li x13, 0x36f8313d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
fsub.h f13, f31, f8, dyn # perform operation
fsub.h f13, f31, f8, rdn # perform operation
fsub.h f13, f31, f8, rmm # perform operation
fsub.h f13, f31, f8, rne # perform operation
fsub.h f13, f31, f8, rtz # perform operation
fsub.h f13, f31, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f31, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f31, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f31, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f31, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f31, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x4000)
li x6, 0xce1733e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f4, 0(x2) # load 0x00004000 from memory into f4
fsub.h f6, f21, f4, dyn # perform operation
fsub.h f6, f21, f4, rdn # perform operation
fsub.h f6, f21, f4, rmm # perform operation
fsub.h f6, f21, f4, rne # perform operation
fsub.h f6, f21, f4, rtz # perform operation
fsub.h f6, f21, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f21, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f21, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f21, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f21, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f21, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xc000)
li x8, 0xb5b31989 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f25, 0(x2) # load 0x00007e00 from memory into f25
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
fsub.h f8, f25, f23, dyn # perform operation
fsub.h f8, f25, f23, rdn # perform operation
fsub.h f8, f25, f23, rmm # perform operation
fsub.h f8, f25, f23, rne # perform operation
fsub.h f8, f25, f23, rtz # perform operation
fsub.h f8, f25, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f25, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f25, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f25, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f25, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f25, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x400)
li x28, 0x23239be5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f16, 0(x2) # load 0x00007e00 from memory into f16
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
fsub.h f28, f16, f30, dyn # perform operation
fsub.h f28, f16, f30, rdn # perform operation
fsub.h f28, f16, f30, rmm # perform operation
fsub.h f28, f16, f30, rne # perform operation
fsub.h f28, f16, f30, rtz # perform operation
fsub.h f28, f16, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f16, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f16, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f16, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f16, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f16, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8400)
li x4, 0x3024cb12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f23, 0(x2) # load 0x00007e00 from memory into f23
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
fsub.h f4, f23, f25, dyn # perform operation
fsub.h f4, f23, f25, rdn # perform operation
fsub.h f4, f23, f25, rmm # perform operation
fsub.h f4, f23, f25, rne # perform operation
fsub.h f4, f23, f25, rtz # perform operation
fsub.h f4, f23, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f4, f23, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f4, f23, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f4, f23, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f4, f23, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f4, f23, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7bff)
li x28, 0xe90bd422 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f9, 0(x2) # load 0x00007bff from memory into f9
fsub.h f28, f31, f9, dyn # perform operation
fsub.h f28, f31, f9, rdn # perform operation
fsub.h f28, f31, f9, rmm # perform operation
fsub.h f28, f31, f9, rne # perform operation
fsub.h f28, f31, f9, rtz # perform operation
fsub.h f28, f31, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f31, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f31, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f31, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f31, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f31, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfbff)
li x12, 0xf6fa4fa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f29, 0(x2) # load 0x00007e00 from memory into f29
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
fsub.h f12, f29, f14, dyn # perform operation
fsub.h f12, f29, f14, rdn # perform operation
fsub.h f12, f29, f14, rmm # perform operation
fsub.h f12, f29, f14, rne # perform operation
fsub.h f12, f29, f14, rtz # perform operation
fsub.h f12, f29, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f29, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f29, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f29, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f29, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f29, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3ff)
li x28, 0x23965097 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f5, 0(x2) # load 0x00007e00 from memory into f5
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
fsub.h f28, f5, f12, dyn # perform operation
fsub.h f28, f5, f12, rdn # perform operation
fsub.h f28, f5, f12, rmm # perform operation
fsub.h f28, f5, f12, rne # perform operation
fsub.h f28, f5, f12, rtz # perform operation
fsub.h f28, f5, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f5, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f5, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f5, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f5, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f5, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x83ff)
li x14, 0x907d9762 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f6, 0(x2) # load 0x00007e00 from memory into f6
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f17, 0(x2) # load 0x000083ff from memory into f17
fsub.h f14, f6, f17, dyn # perform operation
fsub.h f14, f6, f17, rdn # perform operation
fsub.h f14, f6, f17, rmm # perform operation
fsub.h f14, f6, f17, rne # perform operation
fsub.h f14, f6, f17, rtz # perform operation
fsub.h f14, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f6, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x200)
li x27, 0x6abe0112 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f5, 0(x2) # load 0x00007e00 from memory into f5
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f6, 0(x2) # load 0x00000200 from memory into f6
fsub.h f27, f5, f6, dyn # perform operation
fsub.h f27, f5, f6, rdn # perform operation
fsub.h f27, f5, f6, rmm # perform operation
fsub.h f27, f5, f6, rne # perform operation
fsub.h f27, f5, f6, rtz # perform operation
fsub.h f27, f5, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f5, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f5, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f5, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f5, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f5, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8200)
li x15, 0xda90e4d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f5, 0(x2) # load 0x00007e00 from memory into f5
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f29, 0(x2) # load 0x00008200 from memory into f29
fsub.h f15, f5, f29, dyn # perform operation
fsub.h f15, f5, f29, rdn # perform operation
fsub.h f15, f5, f29, rmm # perform operation
fsub.h f15, f5, f29, rne # perform operation
fsub.h f15, f5, f29, rtz # perform operation
fsub.h f15, f5, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f5, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f5, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f5, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f5, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f5, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x1)
li x5, 0x432078a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f7, 0(x2) # load 0x00000001 from memory into f7
fsub.h f5, f21, f7, dyn # perform operation
fsub.h f5, f21, f7, rdn # perform operation
fsub.h f5, f21, f7, rmm # perform operation
fsub.h f5, f21, f7, rne # perform operation
fsub.h f5, f21, f7, rtz # perform operation
fsub.h f5, f21, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f21, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f21, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f21, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f21, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f21, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8001)
li x26, 0x1b82f3d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f4, 0(x2) # load 0x00007e00 from memory into f4
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f22, 0(x2) # load 0x00008001 from memory into f22
fsub.h f26, f4, f22, dyn # perform operation
fsub.h f26, f4, f22, rdn # perform operation
fsub.h f26, f4, f22, rmm # perform operation
fsub.h f26, f4, f22, rne # perform operation
fsub.h f26, f4, f22, rtz # perform operation
fsub.h f26, f4, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f4, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f4, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f4, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f4, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f4, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7c00)
li x7, 0x8162bf0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f15, 0(x2) # load 0x00007c00 from memory into f15
fsub.h f7, f31, f15, dyn # perform operation
fsub.h f7, f31, f15, rdn # perform operation
fsub.h f7, f31, f15, rmm # perform operation
fsub.h f7, f31, f15, rne # perform operation
fsub.h f7, f31, f15, rtz # perform operation
fsub.h f7, f31, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f31, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f31, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f31, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f31, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f31, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfc00)
li x12, 0x591b7ca4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f25, 0(x2) # load 0x00007e00 from memory into f25
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
fsub.h f12, f25, f5, dyn # perform operation
fsub.h f12, f25, f5, rdn # perform operation
fsub.h f12, f25, f5, rmm # perform operation
fsub.h f12, f25, f5, rne # perform operation
fsub.h f12, f25, f5, rtz # perform operation
fsub.h f12, f25, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f25, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f25, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f25, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f25, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f25, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7e00)
li x16, 0xe7f96bec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f18, 0(x2) # load 0x00007e00 from memory into f18
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
fsub.h f16, f18, f3, dyn # perform operation
fsub.h f16, f18, f3, rdn # perform operation
fsub.h f16, f18, f3, rmm # perform operation
fsub.h f16, f18, f3, rne # perform operation
fsub.h f16, f18, f3, rtz # perform operation
fsub.h f16, f18, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f18, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f18, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f18, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f18, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f18, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7fff)
li x12, 0xaf26bbe7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f17, 0(x2) # load 0x00007e00 from memory into f17
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f9, 0(x2) # load 0x00007fff from memory into f9
fsub.h f12, f17, f9, dyn # perform operation
fsub.h f12, f17, f9, rdn # perform operation
fsub.h f12, f17, f9, rmm # perform operation
fsub.h f12, f17, f9, rne # perform operation
fsub.h f12, f17, f9, rtz # perform operation
fsub.h f12, f17, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f17, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f17, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f17, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f17, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f17, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7c01)
li x12, 0x7bdf5d43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
fsub.h f12, f30, f28, dyn # perform operation
fsub.h f12, f30, f28, rdn # perform operation
fsub.h f12, f30, f28, rmm # perform operation
fsub.h f12, f30, f28, rne # perform operation
fsub.h f12, f30, f28, rtz # perform operation
fsub.h f12, f30, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f30, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f30, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f30, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f30, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f30, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7dff)
li x2, 0x25a1b6cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f23, 0(x2) # load 0x00007e00 from memory into f23
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f31, 0(x2) # load 0x00007dff from memory into f31
fsub.h f2, f23, f31, dyn # perform operation
fsub.h f2, f23, f31, rdn # perform operation
fsub.h f2, f23, f31, rmm # perform operation
fsub.h f2, f23, f31, rne # perform operation
fsub.h f2, f23, f31, rtz # perform operation
fsub.h f2, f23, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f23, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f23, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f23, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f23, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f23, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x58b4)
li x9, 0x330621e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f6, 0(x2) # load 0x000058b4 from memory into f6
fsub.h f9, f19, f6, dyn # perform operation
fsub.h f9, f19, f6, rdn # perform operation
fsub.h f9, f19, f6, rmm # perform operation
fsub.h f9, f19, f6, rne # perform operation
fsub.h f9, f19, f6, rtz # perform operation
fsub.h f9, f19, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f19, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f19, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f19, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f19, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f19, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xc93a)
li x12, 0xda9929f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f7, 0(x2) # load 0x00007e00 from memory into f7
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
fsub.h f12, f7, f17, dyn # perform operation
fsub.h f12, f7, f17, rdn # perform operation
fsub.h f12, f7, f17, rmm # perform operation
fsub.h f12, f7, f17, rne # perform operation
fsub.h f12, f7, f17, rtz # perform operation
fsub.h f12, f7, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f7, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f7, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f7, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f7, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f7, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x0)
li x9, 0x3d79d2c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f11, 0(x2) # load 0x00000000 from memory into f11
fsub.h f9, f10, f11, dyn # perform operation
fsub.h f9, f10, f11, rdn # perform operation
fsub.h f9, f10, f11, rmm # perform operation
fsub.h f9, f10, f11, rne # perform operation
fsub.h f9, f10, f11, rtz # perform operation
fsub.h f9, f10, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f10, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f10, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f10, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f10, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f10, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8000)
li x27, 0x340c93cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f9, 0(x2) # load 0x00008000 from memory into f9
fsub.h f27, f2, f9, dyn # perform operation
fsub.h f27, f2, f9, rdn # perform operation
fsub.h f27, f2, f9, rmm # perform operation
fsub.h f27, f2, f9, rne # perform operation
fsub.h f27, f2, f9, rtz # perform operation
fsub.h f27, f2, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f2, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f2, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f2, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f2, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f2, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3c00)
li x10, 0xeda1b6ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f4, 0(x2) # load 0x00007fff from memory into f4
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f8, 0(x2) # load 0x00003c00 from memory into f8
fsub.h f10, f4, f8, dyn # perform operation
fsub.h f10, f4, f8, rdn # perform operation
fsub.h f10, f4, f8, rmm # perform operation
fsub.h f10, f4, f8, rne # perform operation
fsub.h f10, f4, f8, rtz # perform operation
fsub.h f10, f4, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f4, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f4, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f4, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f4, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f4, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xbc00)
li x17, 0xbd1f9423 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f7, 0(x2) # load 0x00007fff from memory into f7
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f3, 0(x2) # load 0x0000bc00 from memory into f3
fsub.h f17, f7, f3, dyn # perform operation
fsub.h f17, f7, f3, rdn # perform operation
fsub.h f17, f7, f3, rmm # perform operation
fsub.h f17, f7, f3, rne # perform operation
fsub.h f17, f7, f3, rtz # perform operation
fsub.h f17, f7, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f7, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f7, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f7, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f7, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f7, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3e00)
li x1, 0x3b54b2c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f17, 0(x2) # load 0x00007fff from memory into f17
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f21, 0(x2) # load 0x00003e00 from memory into f21
fsub.h f1, f17, f21, dyn # perform operation
fsub.h f1, f17, f21, rdn # perform operation
fsub.h f1, f17, f21, rmm # perform operation
fsub.h f1, f17, f21, rne # perform operation
fsub.h f1, f17, f21, rtz # perform operation
fsub.h f1, f17, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f17, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f17, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f17, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f17, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f17, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xbe00)
li x22, 0x65016542 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f11, 0(x2) # load 0x00007fff from memory into f11
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f29, 0(x2) # load 0x0000be00 from memory into f29
fsub.h f22, f11, f29, dyn # perform operation
fsub.h f22, f11, f29, rdn # perform operation
fsub.h f22, f11, f29, rmm # perform operation
fsub.h f22, f11, f29, rne # perform operation
fsub.h f22, f11, f29, rtz # perform operation
fsub.h f22, f11, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f11, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f11, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f11, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f11, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f11, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x4000)
li x29, 0xd5cac1f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f1, 0(x2) # load 0x00007fff from memory into f1
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f24, 0(x2) # load 0x00004000 from memory into f24
fsub.h f29, f1, f24, dyn # perform operation
fsub.h f29, f1, f24, rdn # perform operation
fsub.h f29, f1, f24, rmm # perform operation
fsub.h f29, f1, f24, rne # perform operation
fsub.h f29, f1, f24, rtz # perform operation
fsub.h f29, f1, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f1, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f1, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f1, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f1, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f1, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xc000)
li x16, 0x6a57a82c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f20, 0(x2) # load 0x00007fff from memory into f20
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f29, 0(x2) # load 0x0000c000 from memory into f29
fsub.h f16, f20, f29, dyn # perform operation
fsub.h f16, f20, f29, rdn # perform operation
fsub.h f16, f20, f29, rmm # perform operation
fsub.h f16, f20, f29, rne # perform operation
fsub.h f16, f20, f29, rtz # perform operation
fsub.h f16, f20, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f20, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f20, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f20, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f20, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f20, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x400)
li x11, 0xd3953a24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f9, 0(x2) # load 0x00007fff from memory into f9
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f25, 0(x2) # load 0x00000400 from memory into f25
fsub.h f11, f9, f25, dyn # perform operation
fsub.h f11, f9, f25, rdn # perform operation
fsub.h f11, f9, f25, rmm # perform operation
fsub.h f11, f9, f25, rne # perform operation
fsub.h f11, f9, f25, rtz # perform operation
fsub.h f11, f9, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f9, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f9, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f9, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f9, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f9, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8400)
li x16, 0xca15d9d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f20, 0(x2) # load 0x00008400 from memory into f20
fsub.h f16, f6, f20, dyn # perform operation
fsub.h f16, f6, f20, rdn # perform operation
fsub.h f16, f6, f20, rmm # perform operation
fsub.h f16, f6, f20, rne # perform operation
fsub.h f16, f6, f20, rtz # perform operation
fsub.h f16, f6, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f6, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f6, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f6, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f6, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f6, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7bff)
li x10, 0x623ace60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f26, 0(x2) # load 0x00007fff from memory into f26
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
fsub.h f10, f26, f1, dyn # perform operation
fsub.h f10, f26, f1, rdn # perform operation
fsub.h f10, f26, f1, rmm # perform operation
fsub.h f10, f26, f1, rne # perform operation
fsub.h f10, f26, f1, rtz # perform operation
fsub.h f10, f26, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f26, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f26, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f26, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f26, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f26, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfbff)
li x9, 0x14b4772c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f3, 0(x2) # load 0x00007fff from memory into f3
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f6, 0(x2) # load 0x0000fbff from memory into f6
fsub.h f9, f3, f6, dyn # perform operation
fsub.h f9, f3, f6, rdn # perform operation
fsub.h f9, f3, f6, rmm # perform operation
fsub.h f9, f3, f6, rne # perform operation
fsub.h f9, f3, f6, rtz # perform operation
fsub.h f9, f3, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f3, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f3, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f3, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f3, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f3, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3ff)
li x8, 0xbe661056 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f5, 0(x2) # load 0x00007fff from memory into f5
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f22, 0(x2) # load 0x000003ff from memory into f22
fsub.h f8, f5, f22, dyn # perform operation
fsub.h f8, f5, f22, rdn # perform operation
fsub.h f8, f5, f22, rmm # perform operation
fsub.h f8, f5, f22, rne # perform operation
fsub.h f8, f5, f22, rtz # perform operation
fsub.h f8, f5, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f5, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f5, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f5, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f5, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f5, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x83ff)
li x27, 0x639e53fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f9, 0(x2) # load 0x00007fff from memory into f9
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f1, 0(x2) # load 0x000083ff from memory into f1
fsub.h f27, f9, f1, dyn # perform operation
fsub.h f27, f9, f1, rdn # perform operation
fsub.h f27, f9, f1, rmm # perform operation
fsub.h f27, f9, f1, rne # perform operation
fsub.h f27, f9, f1, rtz # perform operation
fsub.h f27, f9, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f9, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f9, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f9, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f9, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f9, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x200)
li x23, 0xfe6f3dbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f3, 0(x2) # load 0x00007fff from memory into f3
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f10, 0(x2) # load 0x00000200 from memory into f10
fsub.h f23, f3, f10, dyn # perform operation
fsub.h f23, f3, f10, rdn # perform operation
fsub.h f23, f3, f10, rmm # perform operation
fsub.h f23, f3, f10, rne # perform operation
fsub.h f23, f3, f10, rtz # perform operation
fsub.h f23, f3, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f3, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f3, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f3, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f3, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f3, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8200)
li x17, 0x75aaa475 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
fsub.h f17, f10, f15, dyn # perform operation
fsub.h f17, f10, f15, rdn # perform operation
fsub.h f17, f10, f15, rmm # perform operation
fsub.h f17, f10, f15, rne # perform operation
fsub.h f17, f10, f15, rtz # perform operation
fsub.h f17, f10, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f10, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f10, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f10, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f10, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f10, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x1)
li x8, 0x13709df1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f28, 0(x2) # load 0x00007fff from memory into f28
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f3, 0(x2) # load 0x00000001 from memory into f3
fsub.h f8, f28, f3, dyn # perform operation
fsub.h f8, f28, f3, rdn # perform operation
fsub.h f8, f28, f3, rmm # perform operation
fsub.h f8, f28, f3, rne # perform operation
fsub.h f8, f28, f3, rtz # perform operation
fsub.h f8, f28, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f28, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f28, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f28, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f28, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f28, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8001)
li x20, 0x75da0d6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f4, 0(x2) # load 0x00007fff from memory into f4
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
fsub.h f20, f4, f31, dyn # perform operation
fsub.h f20, f4, f31, rdn # perform operation
fsub.h f20, f4, f31, rmm # perform operation
fsub.h f20, f4, f31, rne # perform operation
fsub.h f20, f4, f31, rtz # perform operation
fsub.h f20, f4, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f4, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f4, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f4, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f4, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f4, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7c00)
li x8, 0x3f425a04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f27, 0(x2) # load 0x00007c00 from memory into f27
fsub.h f8, f10, f27, dyn # perform operation
fsub.h f8, f10, f27, rdn # perform operation
fsub.h f8, f10, f27, rmm # perform operation
fsub.h f8, f10, f27, rne # perform operation
fsub.h f8, f10, f27, rtz # perform operation
fsub.h f8, f10, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f10, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f10, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f10, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f10, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f10, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfc00)
li x1, 0x07f386f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f28, 0(x2) # load 0x00007fff from memory into f28
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f12, 0(x2) # load 0x0000fc00 from memory into f12
fsub.h f1, f28, f12, dyn # perform operation
fsub.h f1, f28, f12, rdn # perform operation
fsub.h f1, f28, f12, rmm # perform operation
fsub.h f1, f28, f12, rne # perform operation
fsub.h f1, f28, f12, rtz # perform operation
fsub.h f1, f28, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f28, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f28, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f28, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f28, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f28, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7e00)
li x5, 0x6233d621 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f12, 0(x2) # load 0x00007e00 from memory into f12
fsub.h f5, f25, f12, dyn # perform operation
fsub.h f5, f25, f12, rdn # perform operation
fsub.h f5, f25, f12, rmm # perform operation
fsub.h f5, f25, f12, rne # perform operation
fsub.h f5, f25, f12, rtz # perform operation
fsub.h f5, f25, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f25, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f25, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f25, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f25, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f25, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7fff)
li x27, 0xf31b25cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
fsub.h f27, f6, f24, dyn # perform operation
fsub.h f27, f6, f24, rdn # perform operation
fsub.h f27, f6, f24, rmm # perform operation
fsub.h f27, f6, f24, rne # perform operation
fsub.h f27, f6, f24, rtz # perform operation
fsub.h f27, f6, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f6, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f6, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f6, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f6, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f6, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7c01)
li x18, 0xea3bee47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f30, 0(x2) # load 0x00007c01 from memory into f30
fsub.h f18, f8, f30, dyn # perform operation
fsub.h f18, f8, f30, rdn # perform operation
fsub.h f18, f8, f30, rmm # perform operation
fsub.h f18, f8, f30, rne # perform operation
fsub.h f18, f8, f30, rtz # perform operation
fsub.h f18, f8, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f8, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f8, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f8, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f8, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f8, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7dff)
li x11, 0x871a0218 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f3, 0(x2) # load 0x00007fff from memory into f3
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f10, 0(x2) # load 0x00007dff from memory into f10
fsub.h f11, f3, f10, dyn # perform operation
fsub.h f11, f3, f10, rdn # perform operation
fsub.h f11, f3, f10, rmm # perform operation
fsub.h f11, f3, f10, rne # perform operation
fsub.h f11, f3, f10, rtz # perform operation
fsub.h f11, f3, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f3, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f3, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f3, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f3, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f3, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x58b4)
li x9, 0xd9bdbc52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f19, 0(x2) # load 0x000058b4 from memory into f19
fsub.h f9, f8, f19, dyn # perform operation
fsub.h f9, f8, f19, rdn # perform operation
fsub.h f9, f8, f19, rmm # perform operation
fsub.h f9, f8, f19, rne # perform operation
fsub.h f9, f8, f19, rtz # perform operation
fsub.h f9, f8, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f8, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f8, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f8, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f8, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f8, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xc93a)
li x25, 0x2042d7b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f7, 0(x2) # load 0x00007fff from memory into f7
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
fsub.h f25, f7, f30, dyn # perform operation
fsub.h f25, f7, f30, rdn # perform operation
fsub.h f25, f7, f30, rmm # perform operation
fsub.h f25, f7, f30, rne # perform operation
fsub.h f25, f7, f30, rtz # perform operation
fsub.h f25, f7, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f7, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f7, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f7, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f7, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f7, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x0)
li x26, 0x27c1dc41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f11, 0(x2) # load 0x00007c01 from memory into f11
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f9, 0(x2) # load 0x00000000 from memory into f9
fsub.h f26, f11, f9, dyn # perform operation
fsub.h f26, f11, f9, rdn # perform operation
fsub.h f26, f11, f9, rmm # perform operation
fsub.h f26, f11, f9, rne # perform operation
fsub.h f26, f11, f9, rtz # perform operation
fsub.h f26, f11, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f11, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f11, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f11, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f11, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f11, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8000)
li x10, 0x544c0bc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f21, 0(x2) # load 0x00007c01 from memory into f21
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f14, 0(x2) # load 0x00008000 from memory into f14
fsub.h f10, f21, f14, dyn # perform operation
fsub.h f10, f21, f14, rdn # perform operation
fsub.h f10, f21, f14, rmm # perform operation
fsub.h f10, f21, f14, rne # perform operation
fsub.h f10, f21, f14, rtz # perform operation
fsub.h f10, f21, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f21, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f21, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f21, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f21, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f21, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3c00)
li x31, 0x3d6e93c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f15, 0(x2) # load 0x00007c01 from memory into f15
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
fsub.h f31, f15, f24, dyn # perform operation
fsub.h f31, f15, f24, rdn # perform operation
fsub.h f31, f15, f24, rmm # perform operation
fsub.h f31, f15, f24, rne # perform operation
fsub.h f31, f15, f24, rtz # perform operation
fsub.h f31, f15, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f15, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f15, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f15, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f15, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f15, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xbc00)
li x10, 0x408e5022 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f4, 0(x2) # load 0x00007c01 from memory into f4
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f2, 0(x2) # load 0x0000bc00 from memory into f2
fsub.h f10, f4, f2, dyn # perform operation
fsub.h f10, f4, f2, rdn # perform operation
fsub.h f10, f4, f2, rmm # perform operation
fsub.h f10, f4, f2, rne # perform operation
fsub.h f10, f4, f2, rtz # perform operation
fsub.h f10, f4, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f4, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f4, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f4, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f4, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f4, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3e00)
li x1, 0x9e33738f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f5, 0(x2) # load 0x00007c01 from memory into f5
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
fsub.h f1, f5, f17, dyn # perform operation
fsub.h f1, f5, f17, rdn # perform operation
fsub.h f1, f5, f17, rmm # perform operation
fsub.h f1, f5, f17, rne # perform operation
fsub.h f1, f5, f17, rtz # perform operation
fsub.h f1, f5, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f5, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f5, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f5, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f5, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f5, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xbe00)
li x7, 0x4319cac8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f24, 0(x2) # load 0x00007c01 from memory into f24
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
fsub.h f7, f24, f27, dyn # perform operation
fsub.h f7, f24, f27, rdn # perform operation
fsub.h f7, f24, f27, rmm # perform operation
fsub.h f7, f24, f27, rne # perform operation
fsub.h f7, f24, f27, rtz # perform operation
fsub.h f7, f24, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f24, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f24, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f24, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f24, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f24, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x4000)
li x27, 0x198638be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f20, 0(x2) # load 0x00007c01 from memory into f20
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
fsub.h f27, f20, f9, dyn # perform operation
fsub.h f27, f20, f9, rdn # perform operation
fsub.h f27, f20, f9, rmm # perform operation
fsub.h f27, f20, f9, rne # perform operation
fsub.h f27, f20, f9, rtz # perform operation
fsub.h f27, f20, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f20, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f20, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f20, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f20, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f20, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xc000)
li x5, 0x5dfa8ac8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f15, 0(x2) # load 0x0000c000 from memory into f15
fsub.h f5, f9, f15, dyn # perform operation
fsub.h f5, f9, f15, rdn # perform operation
fsub.h f5, f9, f15, rmm # perform operation
fsub.h f5, f9, f15, rne # perform operation
fsub.h f5, f9, f15, rtz # perform operation
fsub.h f5, f9, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f9, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f9, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f9, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f9, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f9, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x400)
li x27, 0x2d2e6f2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f18, 0(x2) # load 0x00007c01 from memory into f18
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
fsub.h f27, f18, f30, dyn # perform operation
fsub.h f27, f18, f30, rdn # perform operation
fsub.h f27, f18, f30, rmm # perform operation
fsub.h f27, f18, f30, rne # perform operation
fsub.h f27, f18, f30, rtz # perform operation
fsub.h f27, f18, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f18, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f18, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f18, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f18, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f18, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8400)
li x8, 0x1f909f52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f15, 0(x2) # load 0x00008400 from memory into f15
fsub.h f8, f17, f15, dyn # perform operation
fsub.h f8, f17, f15, rdn # perform operation
fsub.h f8, f17, f15, rmm # perform operation
fsub.h f8, f17, f15, rne # perform operation
fsub.h f8, f17, f15, rtz # perform operation
fsub.h f8, f17, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f17, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f17, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f17, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f17, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f17, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7bff)
li x21, 0xe87dd27a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f29, 0(x2) # load 0x00007bff from memory into f29
fsub.h f21, f9, f29, dyn # perform operation
fsub.h f21, f9, f29, rdn # perform operation
fsub.h f21, f9, f29, rmm # perform operation
fsub.h f21, f9, f29, rne # perform operation
fsub.h f21, f9, f29, rtz # perform operation
fsub.h f21, f9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f9, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f9, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f9, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f9, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f9, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfbff)
li x6, 0x1ea2adf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f27, 0(x2) # load 0x00007c01 from memory into f27
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f15, 0(x2) # load 0x0000fbff from memory into f15
fsub.h f6, f27, f15, dyn # perform operation
fsub.h f6, f27, f15, rdn # perform operation
fsub.h f6, f27, f15, rmm # perform operation
fsub.h f6, f27, f15, rne # perform operation
fsub.h f6, f27, f15, rtz # perform operation
fsub.h f6, f27, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f27, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f27, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f27, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f27, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f27, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3ff)
li x25, 0x5d66d08e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
fsub.h f25, f13, f12, dyn # perform operation
fsub.h f25, f13, f12, rdn # perform operation
fsub.h f25, f13, f12, rmm # perform operation
fsub.h f25, f13, f12, rne # perform operation
fsub.h f25, f13, f12, rtz # perform operation
fsub.h f25, f13, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f13, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f13, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f13, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f13, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f13, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x83ff)
li x12, 0x806457c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f19, 0(x2) # load 0x00007c01 from memory into f19
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
fsub.h f12, f19, f13, dyn # perform operation
fsub.h f12, f19, f13, rdn # perform operation
fsub.h f12, f19, f13, rmm # perform operation
fsub.h f12, f19, f13, rne # perform operation
fsub.h f12, f19, f13, rtz # perform operation
fsub.h f12, f19, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f19, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f19, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f19, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f19, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f19, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x200)
li x20, 0x67ed2414 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f27, 0(x2) # load 0x00007c01 from memory into f27
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f1, 0(x2) # load 0x00000200 from memory into f1
fsub.h f20, f27, f1, dyn # perform operation
fsub.h f20, f27, f1, rdn # perform operation
fsub.h f20, f27, f1, rmm # perform operation
fsub.h f20, f27, f1, rne # perform operation
fsub.h f20, f27, f1, rtz # perform operation
fsub.h f20, f27, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f27, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f27, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f27, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f27, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f27, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8200)
li x4, 0x97596316 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f15, 0(x2) # load 0x00007c01 from memory into f15
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
fsub.h f4, f15, f14, dyn # perform operation
fsub.h f4, f15, f14, rdn # perform operation
fsub.h f4, f15, f14, rmm # perform operation
fsub.h f4, f15, f14, rne # perform operation
fsub.h f4, f15, f14, rtz # perform operation
fsub.h f4, f15, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f4, f15, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f4, f15, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f4, f15, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f4, f15, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f4, f15, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x1)
li x12, 0x516092cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f24, 0(x2) # load 0x00007c01 from memory into f24
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f13, 0(x2) # load 0x00000001 from memory into f13
fsub.h f12, f24, f13, dyn # perform operation
fsub.h f12, f24, f13, rdn # perform operation
fsub.h f12, f24, f13, rmm # perform operation
fsub.h f12, f24, f13, rne # perform operation
fsub.h f12, f24, f13, rtz # perform operation
fsub.h f12, f24, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f24, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f24, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f24, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f24, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f24, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8001)
li x22, 0x236745a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f28, 0(x2) # load 0x00008001 from memory into f28
fsub.h f22, f12, f28, dyn # perform operation
fsub.h f22, f12, f28, rdn # perform operation
fsub.h f22, f12, f28, rmm # perform operation
fsub.h f22, f12, f28, rne # perform operation
fsub.h f22, f12, f28, rtz # perform operation
fsub.h f22, f12, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f12, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f12, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f12, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f12, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f12, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7c00)
li x31, 0x3b281ee4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f22, 0(x2) # load 0x00007c01 from memory into f22
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
fsub.h f31, f22, f2, dyn # perform operation
fsub.h f31, f22, f2, rdn # perform operation
fsub.h f31, f22, f2, rmm # perform operation
fsub.h f31, f22, f2, rne # perform operation
fsub.h f31, f22, f2, rtz # perform operation
fsub.h f31, f22, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f22, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f22, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f22, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f22, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f22, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfc00)
li x14, 0xb405e6ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f2, 0(x2) # load 0x00007c01 from memory into f2
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f29, 0(x2) # load 0x0000fc00 from memory into f29
fsub.h f14, f2, f29, dyn # perform operation
fsub.h f14, f2, f29, rdn # perform operation
fsub.h f14, f2, f29, rmm # perform operation
fsub.h f14, f2, f29, rne # perform operation
fsub.h f14, f2, f29, rtz # perform operation
fsub.h f14, f2, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f2, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f2, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f2, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f2, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f2, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7e00)
li x5, 0x76544f9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f20, 0(x2) # load 0x00007c01 from memory into f20
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
fsub.h f5, f20, f30, dyn # perform operation
fsub.h f5, f20, f30, rdn # perform operation
fsub.h f5, f20, f30, rmm # perform operation
fsub.h f5, f20, f30, rne # perform operation
fsub.h f5, f20, f30, rtz # perform operation
fsub.h f5, f20, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f20, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f20, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f20, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f20, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f20, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7fff)
li x25, 0xb729f392 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
fsub.h f25, f3, f29, dyn # perform operation
fsub.h f25, f3, f29, rdn # perform operation
fsub.h f25, f3, f29, rmm # perform operation
fsub.h f25, f3, f29, rne # perform operation
fsub.h f25, f3, f29, rtz # perform operation
fsub.h f25, f3, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f3, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f3, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f3, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f3, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f3, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7c01)
li x13, 0x9a15103c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f15, 0(x2) # load 0x00007c01 from memory into f15
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
fsub.h f13, f15, f16, dyn # perform operation
fsub.h f13, f15, f16, rdn # perform operation
fsub.h f13, f15, f16, rmm # perform operation
fsub.h f13, f15, f16, rne # perform operation
fsub.h f13, f15, f16, rtz # perform operation
fsub.h f13, f15, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f15, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f15, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f15, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f15, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f15, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7dff)
li x23, 0xe42df59a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f13, 0(x2) # load 0x00007dff from memory into f13
fsub.h f23, f28, f13, dyn # perform operation
fsub.h f23, f28, f13, rdn # perform operation
fsub.h f23, f28, f13, rmm # perform operation
fsub.h f23, f28, f13, rne # perform operation
fsub.h f23, f28, f13, rtz # perform operation
fsub.h f23, f28, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f28, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f28, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f28, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f28, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f28, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x58b4)
li x25, 0x48cf4e0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
fsub.h f25, f28, f24, dyn # perform operation
fsub.h f25, f28, f24, rdn # perform operation
fsub.h f25, f28, f24, rmm # perform operation
fsub.h f25, f28, f24, rne # perform operation
fsub.h f25, f28, f24, rtz # perform operation
fsub.h f25, f28, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f28, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f28, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f28, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f28, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f28, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xc93a)
li x22, 0x1ccdcb3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f13, 0(x2) # load 0x0000c93a from memory into f13
fsub.h f22, f3, f13, dyn # perform operation
fsub.h f22, f3, f13, rdn # perform operation
fsub.h f22, f3, f13, rmm # perform operation
fsub.h f22, f3, f13, rne # perform operation
fsub.h f22, f3, f13, rtz # perform operation
fsub.h f22, f3, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f3, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f3, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f3, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f3, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f3, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x0)
li x2, 0xa80d359d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f18, 0(x2) # load 0x00007dff from memory into f18
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f5, 0(x2) # load 0x00000000 from memory into f5
fsub.h f2, f18, f5, dyn # perform operation
fsub.h f2, f18, f5, rdn # perform operation
fsub.h f2, f18, f5, rmm # perform operation
fsub.h f2, f18, f5, rne # perform operation
fsub.h f2, f18, f5, rtz # perform operation
fsub.h f2, f18, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f18, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f18, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f18, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f18, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f18, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8000)
li x2, 0x5fb719ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f12, 0(x2) # load 0x00007dff from memory into f12
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
fsub.h f2, f12, f31, dyn # perform operation
fsub.h f2, f12, f31, rdn # perform operation
fsub.h f2, f12, f31, rmm # perform operation
fsub.h f2, f12, f31, rne # perform operation
fsub.h f2, f12, f31, rtz # perform operation
fsub.h f2, f12, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f12, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f12, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f12, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f12, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f12, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3c00)
li x19, 0xd253b9f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
fsub.h f19, f30, f27, dyn # perform operation
fsub.h f19, f30, f27, rdn # perform operation
fsub.h f19, f30, f27, rmm # perform operation
fsub.h f19, f30, f27, rne # perform operation
fsub.h f19, f30, f27, rtz # perform operation
fsub.h f19, f30, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f30, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f30, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f30, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f30, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f30, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xbc00)
li x2, 0xf08c943c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f12, 0(x2) # load 0x00007dff from memory into f12
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
fsub.h f2, f12, f28, dyn # perform operation
fsub.h f2, f12, f28, rdn # perform operation
fsub.h f2, f12, f28, rmm # perform operation
fsub.h f2, f12, f28, rne # perform operation
fsub.h f2, f12, f28, rtz # perform operation
fsub.h f2, f12, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f12, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f12, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f12, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f12, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f12, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3e00)
li x28, 0xbf66094c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f15, 0(x2) # load 0x00007dff from memory into f15
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f21, 0(x2) # load 0x00003e00 from memory into f21
fsub.h f28, f15, f21, dyn # perform operation
fsub.h f28, f15, f21, rdn # perform operation
fsub.h f28, f15, f21, rmm # perform operation
fsub.h f28, f15, f21, rne # perform operation
fsub.h f28, f15, f21, rtz # perform operation
fsub.h f28, f15, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f15, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f15, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f15, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f15, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f15, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xbe00)
li x28, 0x3847c0a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f15, 0(x2) # load 0x00007dff from memory into f15
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f30, 0(x2) # load 0x0000be00 from memory into f30
fsub.h f28, f15, f30, dyn # perform operation
fsub.h f28, f15, f30, rdn # perform operation
fsub.h f28, f15, f30, rmm # perform operation
fsub.h f28, f15, f30, rne # perform operation
fsub.h f28, f15, f30, rtz # perform operation
fsub.h f28, f15, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f15, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f15, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f15, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f15, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f15, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x4000)
li x30, 0x8afd5215 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f22, 0(x2) # load 0x00007dff from memory into f22
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f8, 0(x2) # load 0x00004000 from memory into f8
fsub.h f30, f22, f8, dyn # perform operation
fsub.h f30, f22, f8, rdn # perform operation
fsub.h f30, f22, f8, rmm # perform operation
fsub.h f30, f22, f8, rne # perform operation
fsub.h f30, f22, f8, rtz # perform operation
fsub.h f30, f22, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f22, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f22, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f22, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f22, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f22, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xc000)
li x5, 0x2211070a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f13, 0(x2) # load 0x0000c000 from memory into f13
fsub.h f5, f24, f13, dyn # perform operation
fsub.h f5, f24, f13, rdn # perform operation
fsub.h f5, f24, f13, rmm # perform operation
fsub.h f5, f24, f13, rne # perform operation
fsub.h f5, f24, f13, rtz # perform operation
fsub.h f5, f24, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f24, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f24, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f24, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f24, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f24, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x400)
li x20, 0xf69cf8d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f19, 0(x2) # load 0x00007dff from memory into f19
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
fsub.h f20, f19, f30, dyn # perform operation
fsub.h f20, f19, f30, rdn # perform operation
fsub.h f20, f19, f30, rmm # perform operation
fsub.h f20, f19, f30, rne # perform operation
fsub.h f20, f19, f30, rtz # perform operation
fsub.h f20, f19, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f19, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f19, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f19, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f19, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f19, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8400)
li x31, 0x454ad19f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f16, 0(x2) # load 0x00007dff from memory into f16
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
fsub.h f31, f16, f3, dyn # perform operation
fsub.h f31, f16, f3, rdn # perform operation
fsub.h f31, f16, f3, rmm # perform operation
fsub.h f31, f16, f3, rne # perform operation
fsub.h f31, f16, f3, rtz # perform operation
fsub.h f31, f16, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f16, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f16, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f16, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f16, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f16, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7bff)
li x20, 0x45be093a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f3, 0(x2) # load 0x00007dff from memory into f3
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f5, 0(x2) # load 0x00007bff from memory into f5
fsub.h f20, f3, f5, dyn # perform operation
fsub.h f20, f3, f5, rdn # perform operation
fsub.h f20, f3, f5, rmm # perform operation
fsub.h f20, f3, f5, rne # perform operation
fsub.h f20, f3, f5, rtz # perform operation
fsub.h f20, f3, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f3, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f3, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f3, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f3, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f3, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfbff)
li x28, 0x70e4d0c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f11, 0(x2) # load 0x00007dff from memory into f11
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
fsub.h f28, f11, f21, dyn # perform operation
fsub.h f28, f11, f21, rdn # perform operation
fsub.h f28, f11, f21, rmm # perform operation
fsub.h f28, f11, f21, rne # perform operation
fsub.h f28, f11, f21, rtz # perform operation
fsub.h f28, f11, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f11, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f11, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f11, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f11, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f11, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3ff)
li x16, 0xad0b9d55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f31, 0(x2) # load 0x000003ff from memory into f31
fsub.h f16, f24, f31, dyn # perform operation
fsub.h f16, f24, f31, rdn # perform operation
fsub.h f16, f24, f31, rmm # perform operation
fsub.h f16, f24, f31, rne # perform operation
fsub.h f16, f24, f31, rtz # perform operation
fsub.h f16, f24, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f24, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f24, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f24, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f24, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f24, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x83ff)
li x7, 0x2bf8975b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f29, 0(x2) # load 0x00007dff from memory into f29
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f19, 0(x2) # load 0x000083ff from memory into f19
fsub.h f7, f29, f19, dyn # perform operation
fsub.h f7, f29, f19, rdn # perform operation
fsub.h f7, f29, f19, rmm # perform operation
fsub.h f7, f29, f19, rne # perform operation
fsub.h f7, f29, f19, rtz # perform operation
fsub.h f7, f29, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f29, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f29, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f29, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f29, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f29, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x200)
li x8, 0x6a097a95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f1, 0(x2) # load 0x00007dff from memory into f1
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
fsub.h f8, f1, f5, dyn # perform operation
fsub.h f8, f1, f5, rdn # perform operation
fsub.h f8, f1, f5, rmm # perform operation
fsub.h f8, f1, f5, rne # perform operation
fsub.h f8, f1, f5, rtz # perform operation
fsub.h f8, f1, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f1, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f1, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f1, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f1, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f1, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8200)
li x13, 0xcaa16f77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f1, 0(x2) # load 0x00007dff from memory into f1
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
fsub.h f13, f1, f2, dyn # perform operation
fsub.h f13, f1, f2, rdn # perform operation
fsub.h f13, f1, f2, rmm # perform operation
fsub.h f13, f1, f2, rne # perform operation
fsub.h f13, f1, f2, rtz # perform operation
fsub.h f13, f1, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f1, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f1, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f1, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f1, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f1, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x1)
li x21, 0xd1480c25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f27, 0(x2) # load 0x00007dff from memory into f27
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f8, 0(x2) # load 0x00000001 from memory into f8
fsub.h f21, f27, f8, dyn # perform operation
fsub.h f21, f27, f8, rdn # perform operation
fsub.h f21, f27, f8, rmm # perform operation
fsub.h f21, f27, f8, rne # perform operation
fsub.h f21, f27, f8, rtz # perform operation
fsub.h f21, f27, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f27, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f27, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f27, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f27, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f27, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8001)
li x10, 0x8469f41e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f8, 0(x2) # load 0x00008001 from memory into f8
fsub.h f10, f5, f8, dyn # perform operation
fsub.h f10, f5, f8, rdn # perform operation
fsub.h f10, f5, f8, rmm # perform operation
fsub.h f10, f5, f8, rne # perform operation
fsub.h f10, f5, f8, rtz # perform operation
fsub.h f10, f5, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f5, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f5, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f5, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f5, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f5, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7c00)
li x22, 0x367475c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f28, 0(x2) # load 0x00007dff from memory into f28
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f21, 0(x2) # load 0x00007c00 from memory into f21
fsub.h f22, f28, f21, dyn # perform operation
fsub.h f22, f28, f21, rdn # perform operation
fsub.h f22, f28, f21, rmm # perform operation
fsub.h f22, f28, f21, rne # perform operation
fsub.h f22, f28, f21, rtz # perform operation
fsub.h f22, f28, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f28, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f28, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f28, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f28, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f28, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfc00)
li x5, 0xaa767d1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f18, 0(x2) # load 0x00007dff from memory into f18
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f24, 0(x2) # load 0x0000fc00 from memory into f24
fsub.h f5, f18, f24, dyn # perform operation
fsub.h f5, f18, f24, rdn # perform operation
fsub.h f5, f18, f24, rmm # perform operation
fsub.h f5, f18, f24, rne # perform operation
fsub.h f5, f18, f24, rtz # perform operation
fsub.h f5, f18, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f18, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f18, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f18, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f18, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f18, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7e00)
li x30, 0x0c386124 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f13, 0(x2) # load 0x00007e00 from memory into f13
fsub.h f30, f5, f13, dyn # perform operation
fsub.h f30, f5, f13, rdn # perform operation
fsub.h f30, f5, f13, rmm # perform operation
fsub.h f30, f5, f13, rne # perform operation
fsub.h f30, f5, f13, rtz # perform operation
fsub.h f30, f5, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f5, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f5, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f5, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f5, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f5, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7fff)
li x15, 0xc773af43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f7, 0(x2) # load 0x00007fff from memory into f7
fsub.h f15, f24, f7, dyn # perform operation
fsub.h f15, f24, f7, rdn # perform operation
fsub.h f15, f24, f7, rmm # perform operation
fsub.h f15, f24, f7, rne # perform operation
fsub.h f15, f24, f7, rtz # perform operation
fsub.h f15, f24, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f24, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f24, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f24, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f24, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f24, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7c01)
li x21, 0xd91e2efe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f17, 0(x2) # load 0x00007dff from memory into f17
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
fsub.h f21, f17, f12, dyn # perform operation
fsub.h f21, f17, f12, rdn # perform operation
fsub.h f21, f17, f12, rmm # perform operation
fsub.h f21, f17, f12, rne # perform operation
fsub.h f21, f17, f12, rtz # perform operation
fsub.h f21, f17, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f17, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f17, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f17, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f17, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f17, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7dff)
li x5, 0x0e3866e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f22, 0(x2) # load 0x00007dff from memory into f22
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f3, 0(x2) # load 0x00007dff from memory into f3
fsub.h f5, f22, f3, dyn # perform operation
fsub.h f5, f22, f3, rdn # perform operation
fsub.h f5, f22, f3, rmm # perform operation
fsub.h f5, f22, f3, rne # perform operation
fsub.h f5, f22, f3, rtz # perform operation
fsub.h f5, f22, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f22, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f22, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f22, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f22, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f22, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x58b4)
li x1, 0x5a0882da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f15, 0(x2) # load 0x00007dff from memory into f15
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f21, 0(x2) # load 0x000058b4 from memory into f21
fsub.h f1, f15, f21, dyn # perform operation
fsub.h f1, f15, f21, rdn # perform operation
fsub.h f1, f15, f21, rmm # perform operation
fsub.h f1, f15, f21, rne # perform operation
fsub.h f1, f15, f21, rtz # perform operation
fsub.h f1, f15, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f15, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f15, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f15, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f15, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f15, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xc93a)
li x30, 0xfd2d623c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f16, 0(x2) # load 0x00007dff from memory into f16
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f31, 0(x2) # load 0x0000c93a from memory into f31
fsub.h f30, f16, f31, dyn # perform operation
fsub.h f30, f16, f31, rdn # perform operation
fsub.h f30, f16, f31, rmm # perform operation
fsub.h f30, f16, f31, rne # perform operation
fsub.h f30, f16, f31, rtz # perform operation
fsub.h f30, f16, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f16, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f16, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f16, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f16, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f16, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x0)
li x20, 0x132937b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f2, 0(x2) # load 0x000058b4 from memory into f2
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
fsub.h f20, f2, f29, dyn # perform operation
fsub.h f20, f2, f29, rdn # perform operation
fsub.h f20, f2, f29, rmm # perform operation
fsub.h f20, f2, f29, rne # perform operation
fsub.h f20, f2, f29, rtz # perform operation
fsub.h f20, f2, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f2, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f2, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f2, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f2, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f2, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8000)
li x1, 0x1f118925 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f27, 0(x2) # load 0x000058b4 from memory into f27
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f17, 0(x2) # load 0x00008000 from memory into f17
fsub.h f1, f27, f17, dyn # perform operation
fsub.h f1, f27, f17, rdn # perform operation
fsub.h f1, f27, f17, rmm # perform operation
fsub.h f1, f27, f17, rne # perform operation
fsub.h f1, f27, f17, rtz # perform operation
fsub.h f1, f27, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f27, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f27, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f27, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f27, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f27, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3c00)
li x4, 0xc4dda5d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f31, 0(x2) # load 0x000058b4 from memory into f31
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
fsub.h f4, f31, f7, dyn # perform operation
fsub.h f4, f31, f7, rdn # perform operation
fsub.h f4, f31, f7, rmm # perform operation
fsub.h f4, f31, f7, rne # perform operation
fsub.h f4, f31, f7, rtz # perform operation
fsub.h f4, f31, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f4, f31, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f4, f31, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f4, f31, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f4, f31, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f4, f31, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xbc00)
li x14, 0x973c9601 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f27, 0(x2) # load 0x000058b4 from memory into f27
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f6, 0(x2) # load 0x0000bc00 from memory into f6
fsub.h f14, f27, f6, dyn # perform operation
fsub.h f14, f27, f6, rdn # perform operation
fsub.h f14, f27, f6, rmm # perform operation
fsub.h f14, f27, f6, rne # perform operation
fsub.h f14, f27, f6, rtz # perform operation
fsub.h f14, f27, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f27, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f27, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f27, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f27, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f27, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3e00)
li x12, 0x6f7e2547 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f3, 0(x2) # load 0x00003e00 from memory into f3
fsub.h f12, f10, f3, dyn # perform operation
fsub.h f12, f10, f3, rdn # perform operation
fsub.h f12, f10, f3, rmm # perform operation
fsub.h f12, f10, f3, rne # perform operation
fsub.h f12, f10, f3, rtz # perform operation
fsub.h f12, f10, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f10, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f10, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f10, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f10, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f10, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xbe00)
li x24, 0x525cc619 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f6, 0(x2) # load 0x0000be00 from memory into f6
fsub.h f24, f11, f6, dyn # perform operation
fsub.h f24, f11, f6, rdn # perform operation
fsub.h f24, f11, f6, rmm # perform operation
fsub.h f24, f11, f6, rne # perform operation
fsub.h f24, f11, f6, rtz # perform operation
fsub.h f24, f11, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f11, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f11, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f11, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f11, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f11, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x4000)
li x6, 0x02556b19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f7, 0(x2) # load 0x000058b4 from memory into f7
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
fsub.h f6, f7, f9, dyn # perform operation
fsub.h f6, f7, f9, rdn # perform operation
fsub.h f6, f7, f9, rmm # perform operation
fsub.h f6, f7, f9, rne # perform operation
fsub.h f6, f7, f9, rtz # perform operation
fsub.h f6, f7, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f7, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f7, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f7, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f7, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f7, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xc000)
li x29, 0x22ed032f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f12, 0(x2) # load 0x000058b4 from memory into f12
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f27, 0(x2) # load 0x0000c000 from memory into f27
fsub.h f29, f12, f27, dyn # perform operation
fsub.h f29, f12, f27, rdn # perform operation
fsub.h f29, f12, f27, rmm # perform operation
fsub.h f29, f12, f27, rne # perform operation
fsub.h f29, f12, f27, rtz # perform operation
fsub.h f29, f12, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f12, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f12, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f12, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f12, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f12, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x400)
li x30, 0x145bf40c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f15, 0(x2) # load 0x000058b4 from memory into f15
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
fsub.h f30, f15, f18, dyn # perform operation
fsub.h f30, f15, f18, rdn # perform operation
fsub.h f30, f15, f18, rmm # perform operation
fsub.h f30, f15, f18, rne # perform operation
fsub.h f30, f15, f18, rtz # perform operation
fsub.h f30, f15, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f15, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f15, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f15, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f15, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f15, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8400)
li x25, 0x4e492400 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
fsub.h f25, f13, f6, dyn # perform operation
fsub.h f25, f13, f6, rdn # perform operation
fsub.h f25, f13, f6, rmm # perform operation
fsub.h f25, f13, f6, rne # perform operation
fsub.h f25, f13, f6, rtz # perform operation
fsub.h f25, f13, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f13, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f13, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f13, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f13, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f13, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7bff)
li x10, 0x2c54adbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f28, 0(x2) # load 0x000058b4 from memory into f28
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
fsub.h f10, f28, f1, dyn # perform operation
fsub.h f10, f28, f1, rdn # perform operation
fsub.h f10, f28, f1, rmm # perform operation
fsub.h f10, f28, f1, rne # perform operation
fsub.h f10, f28, f1, rtz # perform operation
fsub.h f10, f28, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f28, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f28, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f28, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f28, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f28, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfbff)
li x8, 0xaaba0351 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f14, 0(x2) # load 0x000058b4 from memory into f14
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f10, 0(x2) # load 0x0000fbff from memory into f10
fsub.h f8, f14, f10, dyn # perform operation
fsub.h f8, f14, f10, rdn # perform operation
fsub.h f8, f14, f10, rmm # perform operation
fsub.h f8, f14, f10, rne # perform operation
fsub.h f8, f14, f10, rtz # perform operation
fsub.h f8, f14, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f14, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f14, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f14, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f14, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f14, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3ff)
li x18, 0x9f08f0af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f2, 0(x2) # load 0x000058b4 from memory into f2
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
fsub.h f18, f2, f27, dyn # perform operation
fsub.h f18, f2, f27, rdn # perform operation
fsub.h f18, f2, f27, rmm # perform operation
fsub.h f18, f2, f27, rne # perform operation
fsub.h f18, f2, f27, rtz # perform operation
fsub.h f18, f2, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f2, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f2, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f2, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f2, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f2, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x83ff)
li x26, 0x596b8e84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f6, 0(x2) # load 0x000083ff from memory into f6
fsub.h f26, f17, f6, dyn # perform operation
fsub.h f26, f17, f6, rdn # perform operation
fsub.h f26, f17, f6, rmm # perform operation
fsub.h f26, f17, f6, rne # perform operation
fsub.h f26, f17, f6, rtz # perform operation
fsub.h f26, f17, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f17, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f17, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f17, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f17, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f17, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x200)
li x27, 0x98d14984 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f2, 0(x2) # load 0x000058b4 from memory into f2
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f20, 0(x2) # load 0x00000200 from memory into f20
fsub.h f27, f2, f20, dyn # perform operation
fsub.h f27, f2, f20, rdn # perform operation
fsub.h f27, f2, f20, rmm # perform operation
fsub.h f27, f2, f20, rne # perform operation
fsub.h f27, f2, f20, rtz # perform operation
fsub.h f27, f2, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f2, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f2, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f2, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f2, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f2, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8200)
li x18, 0xca4d14a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f15, 0(x2) # load 0x000058b4 from memory into f15
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f29, 0(x2) # load 0x00008200 from memory into f29
fsub.h f18, f15, f29, dyn # perform operation
fsub.h f18, f15, f29, rdn # perform operation
fsub.h f18, f15, f29, rmm # perform operation
fsub.h f18, f15, f29, rne # perform operation
fsub.h f18, f15, f29, rtz # perform operation
fsub.h f18, f15, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f15, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f15, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f15, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f15, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f15, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x1)
li x29, 0x5ebdc652 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f4, 0(x2) # load 0x000058b4 from memory into f4
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f8, 0(x2) # load 0x00000001 from memory into f8
fsub.h f29, f4, f8, dyn # perform operation
fsub.h f29, f4, f8, rdn # perform operation
fsub.h f29, f4, f8, rmm # perform operation
fsub.h f29, f4, f8, rne # perform operation
fsub.h f29, f4, f8, rtz # perform operation
fsub.h f29, f4, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f4, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f4, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f4, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f4, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f4, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8001)
li x4, 0x95ebfdca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f31, 0(x2) # load 0x000058b4 from memory into f31
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f17, 0(x2) # load 0x00008001 from memory into f17
fsub.h f4, f31, f17, dyn # perform operation
fsub.h f4, f31, f17, rdn # perform operation
fsub.h f4, f31, f17, rmm # perform operation
fsub.h f4, f31, f17, rne # perform operation
fsub.h f4, f31, f17, rtz # perform operation
fsub.h f4, f31, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f4, f31, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f4, f31, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f4, f31, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f4, f31, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f4, f31, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7c00)
li x31, 0x723157c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f20, 0(x2) # load 0x000058b4 from memory into f20
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
fsub.h f31, f20, f16, dyn # perform operation
fsub.h f31, f20, f16, rdn # perform operation
fsub.h f31, f20, f16, rmm # perform operation
fsub.h f31, f20, f16, rne # perform operation
fsub.h f31, f20, f16, rtz # perform operation
fsub.h f31, f20, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f20, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f20, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f20, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f20, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f20, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfc00)
li x4, 0x73995a30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f27, 0(x2) # load 0x000058b4 from memory into f27
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
fsub.h f4, f27, f14, dyn # perform operation
fsub.h f4, f27, f14, rdn # perform operation
fsub.h f4, f27, f14, rmm # perform operation
fsub.h f4, f27, f14, rne # perform operation
fsub.h f4, f27, f14, rtz # perform operation
fsub.h f4, f27, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f4, f27, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f4, f27, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f4, f27, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f4, f27, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f4, f27, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7e00)
li x28, 0x63b9011d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f4, 0(x2) # load 0x000058b4 from memory into f4
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f7, 0(x2) # load 0x00007e00 from memory into f7
fsub.h f28, f4, f7, dyn # perform operation
fsub.h f28, f4, f7, rdn # perform operation
fsub.h f28, f4, f7, rmm # perform operation
fsub.h f28, f4, f7, rne # perform operation
fsub.h f28, f4, f7, rtz # perform operation
fsub.h f28, f4, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f4, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f4, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f4, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f4, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f4, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7fff)
li x14, 0x2d1c890f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f5, 0(x2) # load 0x000058b4 from memory into f5
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f13, 0(x2) # load 0x00007fff from memory into f13
fsub.h f14, f5, f13, dyn # perform operation
fsub.h f14, f5, f13, rdn # perform operation
fsub.h f14, f5, f13, rmm # perform operation
fsub.h f14, f5, f13, rne # perform operation
fsub.h f14, f5, f13, rtz # perform operation
fsub.h f14, f5, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f5, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f5, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f5, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f5, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f5, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7c01)
li x20, 0xa3cfa4c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
fsub.h f20, f30, f31, dyn # perform operation
fsub.h f20, f30, f31, rdn # perform operation
fsub.h f20, f30, f31, rmm # perform operation
fsub.h f20, f30, f31, rne # perform operation
fsub.h f20, f30, f31, rtz # perform operation
fsub.h f20, f30, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f30, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f30, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f30, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f30, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f30, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7dff)
li x8, 0x306057d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f5, 0(x2) # load 0x000058b4 from memory into f5
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
fsub.h f8, f5, f24, dyn # perform operation
fsub.h f8, f5, f24, rdn # perform operation
fsub.h f8, f5, f24, rmm # perform operation
fsub.h f8, f5, f24, rne # perform operation
fsub.h f8, f5, f24, rtz # perform operation
fsub.h f8, f5, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f5, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f5, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f5, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f5, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f5, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x58b4)
li x18, 0x60859685 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f19, 0(x2) # load 0x000058b4 from memory into f19
fsub.h f18, f11, f19, dyn # perform operation
fsub.h f18, f11, f19, rdn # perform operation
fsub.h f18, f11, f19, rmm # perform operation
fsub.h f18, f11, f19, rne # perform operation
fsub.h f18, f11, f19, rtz # perform operation
fsub.h f18, f11, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f11, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f11, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f11, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f11, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f11, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xc93a)
li x27, 0x39b9223c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f28, 0(x2) # load 0x000058b4 from memory into f28
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
fsub.h f27, f28, f6, dyn # perform operation
fsub.h f27, f28, f6, rdn # perform operation
fsub.h f27, f28, f6, rmm # perform operation
fsub.h f27, f28, f6, rne # perform operation
fsub.h f27, f28, f6, rtz # perform operation
fsub.h f27, f28, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f28, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f28, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f28, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f28, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f28, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x0)
li x7, 0x70f7b2c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
fsub.h f7, f21, f25, dyn # perform operation
fsub.h f7, f21, f25, rdn # perform operation
fsub.h f7, f21, f25, rmm # perform operation
fsub.h f7, f21, f25, rne # perform operation
fsub.h f7, f21, f25, rtz # perform operation
fsub.h f7, f21, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f21, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f21, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f21, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f21, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f21, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8000)
li x16, 0x23102c4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f25, 0(x2) # load 0x0000c93a from memory into f25
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f18, 0(x2) # load 0x00008000 from memory into f18
fsub.h f16, f25, f18, dyn # perform operation
fsub.h f16, f25, f18, rdn # perform operation
fsub.h f16, f25, f18, rmm # perform operation
fsub.h f16, f25, f18, rne # perform operation
fsub.h f16, f25, f18, rtz # perform operation
fsub.h f16, f25, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f25, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f25, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f25, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f25, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f25, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3c00)
li x1, 0xee7d98c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
fsub.h f1, f17, f16, dyn # perform operation
fsub.h f1, f17, f16, rdn # perform operation
fsub.h f1, f17, f16, rmm # perform operation
fsub.h f1, f17, f16, rne # perform operation
fsub.h f1, f17, f16, rtz # perform operation
fsub.h f1, f17, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f17, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f17, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f17, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f17, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f17, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xbc00)
li x20, 0xe45059ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f14, 0(x2) # load 0x0000c93a from memory into f14
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
fsub.h f20, f14, f26, dyn # perform operation
fsub.h f20, f14, f26, rdn # perform operation
fsub.h f20, f14, f26, rmm # perform operation
fsub.h f20, f14, f26, rne # perform operation
fsub.h f20, f14, f26, rtz # perform operation
fsub.h f20, f14, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f14, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f14, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f14, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f14, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f14, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3e00)
li x1, 0x944481c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f18, 0(x2) # load 0x00003e00 from memory into f18
fsub.h f1, f10, f18, dyn # perform operation
fsub.h f1, f10, f18, rdn # perform operation
fsub.h f1, f10, f18, rmm # perform operation
fsub.h f1, f10, f18, rne # perform operation
fsub.h f1, f10, f18, rtz # perform operation
fsub.h f1, f10, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f10, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f10, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f10, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f10, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f10, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xbe00)
li x31, 0x3a868886 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f27, 0(x2) # load 0x0000c93a from memory into f27
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f29, 0(x2) # load 0x0000be00 from memory into f29
fsub.h f31, f27, f29, dyn # perform operation
fsub.h f31, f27, f29, rdn # perform operation
fsub.h f31, f27, f29, rmm # perform operation
fsub.h f31, f27, f29, rne # perform operation
fsub.h f31, f27, f29, rtz # perform operation
fsub.h f31, f27, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f27, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f27, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f27, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f27, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f27, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x4000)
li x2, 0x60ef556e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f24, 0(x2) # load 0x0000c93a from memory into f24
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
fsub.h f2, f24, f23, dyn # perform operation
fsub.h f2, f24, f23, rdn # perform operation
fsub.h f2, f24, f23, rmm # perform operation
fsub.h f2, f24, f23, rne # perform operation
fsub.h f2, f24, f23, rtz # perform operation
fsub.h f2, f24, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f24, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f24, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f24, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f24, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f24, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xc000)
li x5, 0x688b47f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f4, 0(x2) # load 0x0000c93a from memory into f4
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
fsub.h f5, f4, f1, dyn # perform operation
fsub.h f5, f4, f1, rdn # perform operation
fsub.h f5, f4, f1, rmm # perform operation
fsub.h f5, f4, f1, rne # perform operation
fsub.h f5, f4, f1, rtz # perform operation
fsub.h f5, f4, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f4, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f4, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f4, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f4, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f4, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x400)
li x31, 0x4eb12051 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f23, 0(x2) # load 0x0000c93a from memory into f23
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f15, 0(x2) # load 0x00000400 from memory into f15
fsub.h f31, f23, f15, dyn # perform operation
fsub.h f31, f23, f15, rdn # perform operation
fsub.h f31, f23, f15, rmm # perform operation
fsub.h f31, f23, f15, rne # perform operation
fsub.h f31, f23, f15, rtz # perform operation
fsub.h f31, f23, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f23, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f23, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f23, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f23, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f23, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8400)
li x19, 0x4093fd27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f17, 0(x2) # load 0x00008400 from memory into f17
fsub.h f19, f30, f17, dyn # perform operation
fsub.h f19, f30, f17, rdn # perform operation
fsub.h f19, f30, f17, rmm # perform operation
fsub.h f19, f30, f17, rne # perform operation
fsub.h f19, f30, f17, rtz # perform operation
fsub.h f19, f30, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f30, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f30, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f30, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f30, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f30, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7bff)
li x18, 0xf539d376 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f31, 0(x2) # load 0x0000c93a from memory into f31
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
fsub.h f18, f31, f12, dyn # perform operation
fsub.h f18, f31, f12, rdn # perform operation
fsub.h f18, f31, f12, rmm # perform operation
fsub.h f18, f31, f12, rne # perform operation
fsub.h f18, f31, f12, rtz # perform operation
fsub.h f18, f31, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f31, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f31, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f31, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f31, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f31, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfbff)
li x11, 0xfda3048b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f15, 0(x2) # load 0x0000c93a from memory into f15
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f7, 0(x2) # load 0x0000fbff from memory into f7
fsub.h f11, f15, f7, dyn # perform operation
fsub.h f11, f15, f7, rdn # perform operation
fsub.h f11, f15, f7, rmm # perform operation
fsub.h f11, f15, f7, rne # perform operation
fsub.h f11, f15, f7, rtz # perform operation
fsub.h f11, f15, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f15, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f15, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f15, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f15, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f15, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3ff)
li x19, 0xba789a32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f11, 0(x2) # load 0x0000c93a from memory into f11
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f14, 0(x2) # load 0x000003ff from memory into f14
fsub.h f19, f11, f14, dyn # perform operation
fsub.h f19, f11, f14, rdn # perform operation
fsub.h f19, f11, f14, rmm # perform operation
fsub.h f19, f11, f14, rne # perform operation
fsub.h f19, f11, f14, rtz # perform operation
fsub.h f19, f11, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f11, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f11, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f11, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f11, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f11, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x83ff)
li x14, 0x5a59c4ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f16, 0(x2) # load 0x0000c93a from memory into f16
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f3, 0(x2) # load 0x000083ff from memory into f3
fsub.h f14, f16, f3, dyn # perform operation
fsub.h f14, f16, f3, rdn # perform operation
fsub.h f14, f16, f3, rmm # perform operation
fsub.h f14, f16, f3, rne # perform operation
fsub.h f14, f16, f3, rtz # perform operation
fsub.h f14, f16, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f16, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f16, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f16, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f16, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f16, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x200)
li x2, 0x61ff3947 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f4, 0(x2) # load 0x0000c93a from memory into f4
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f1, 0(x2) # load 0x00000200 from memory into f1
fsub.h f2, f4, f1, dyn # perform operation
fsub.h f2, f4, f1, rdn # perform operation
fsub.h f2, f4, f1, rmm # perform operation
fsub.h f2, f4, f1, rne # perform operation
fsub.h f2, f4, f1, rtz # perform operation
fsub.h f2, f4, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f4, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f4, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f4, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f4, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f4, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8200)
li x28, 0xe0b6784c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f13, 0(x2) # load 0x0000c93a from memory into f13
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f5, 0(x2) # load 0x00008200 from memory into f5
fsub.h f28, f13, f5, dyn # perform operation
fsub.h f28, f13, f5, rdn # perform operation
fsub.h f28, f13, f5, rmm # perform operation
fsub.h f28, f13, f5, rne # perform operation
fsub.h f28, f13, f5, rtz # perform operation
fsub.h f28, f13, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f13, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f13, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f13, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f13, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f13, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x1)
li x6, 0x91115295 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f5, 0(x2) # load 0x0000c93a from memory into f5
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
fsub.h f6, f5, f14, dyn # perform operation
fsub.h f6, f5, f14, rdn # perform operation
fsub.h f6, f5, f14, rmm # perform operation
fsub.h f6, f5, f14, rne # perform operation
fsub.h f6, f5, f14, rtz # perform operation
fsub.h f6, f5, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f5, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f5, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f5, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f5, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f5, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8001)
li x18, 0x1b07ebbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f1, 0(x2) # load 0x00008001 from memory into f1
fsub.h f18, f12, f1, dyn # perform operation
fsub.h f18, f12, f1, rdn # perform operation
fsub.h f18, f12, f1, rmm # perform operation
fsub.h f18, f12, f1, rne # perform operation
fsub.h f18, f12, f1, rtz # perform operation
fsub.h f18, f12, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f12, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f12, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f12, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f12, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f12, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7c00)
li x14, 0xb8ef7ce9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f22, 0(x2) # load 0x00007c00 from memory into f22
fsub.h f14, f2, f22, dyn # perform operation
fsub.h f14, f2, f22, rdn # perform operation
fsub.h f14, f2, f22, rmm # perform operation
fsub.h f14, f2, f22, rne # perform operation
fsub.h f14, f2, f22, rtz # perform operation
fsub.h f14, f2, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f2, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f2, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f2, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f2, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f2, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfc00)
li x2, 0x862e8f35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f19, 0(x2) # load 0x0000c93a from memory into f19
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f10, 0(x2) # load 0x0000fc00 from memory into f10
fsub.h f2, f19, f10, dyn # perform operation
fsub.h f2, f19, f10, rdn # perform operation
fsub.h f2, f19, f10, rmm # perform operation
fsub.h f2, f19, f10, rne # perform operation
fsub.h f2, f19, f10, rtz # perform operation
fsub.h f2, f19, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f19, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f19, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f19, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f19, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f19, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7e00)
li x25, 0xc7ca5e77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
fsub.h f25, f6, f21, dyn # perform operation
fsub.h f25, f6, f21, rdn # perform operation
fsub.h f25, f6, f21, rmm # perform operation
fsub.h f25, f6, f21, rne # perform operation
fsub.h f25, f6, f21, rtz # perform operation
fsub.h f25, f6, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f6, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f6, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f6, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f6, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f6, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7fff)
li x18, 0xe82a341e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f9, 0(x2) # load 0x0000c93a from memory into f9
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f20, 0(x2) # load 0x00007fff from memory into f20
fsub.h f18, f9, f20, dyn # perform operation
fsub.h f18, f9, f20, rdn # perform operation
fsub.h f18, f9, f20, rmm # perform operation
fsub.h f18, f9, f20, rne # perform operation
fsub.h f18, f9, f20, rtz # perform operation
fsub.h f18, f9, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f9, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f9, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f9, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f9, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f9, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7c01)
li x20, 0x64c80c26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f14, 0(x2) # load 0x0000c93a from memory into f14
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
fsub.h f20, f14, f25, dyn # perform operation
fsub.h f20, f14, f25, rdn # perform operation
fsub.h f20, f14, f25, rmm # perform operation
fsub.h f20, f14, f25, rne # perform operation
fsub.h f20, f14, f25, rtz # perform operation
fsub.h f20, f14, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f14, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f14, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f14, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f14, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f14, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7dff)
li x13, 0xc778c602 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f29, 0(x2) # load 0x00007dff from memory into f29
fsub.h f13, f18, f29, dyn # perform operation
fsub.h f13, f18, f29, rdn # perform operation
fsub.h f13, f18, f29, rmm # perform operation
fsub.h f13, f18, f29, rne # perform operation
fsub.h f13, f18, f29, rtz # perform operation
fsub.h f13, f18, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f18, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f18, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f18, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f18, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f18, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x58b4)
li x17, 0x4f9f40ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f9, 0(x2) # load 0x000058b4 from memory into f9
fsub.h f17, f30, f9, dyn # perform operation
fsub.h f17, f30, f9, rdn # perform operation
fsub.h f17, f30, f9, rmm # perform operation
fsub.h f17, f30, f9, rne # perform operation
fsub.h f17, f30, f9, rtz # perform operation
fsub.h f17, f30, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f30, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f30, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f30, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f30, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f30, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xc93a)
li x5, 0xaef5ec91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f31, 0(x2) # load 0x0000c93a from memory into f31
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f19, 0(x2) # load 0x0000c93a from memory into f19
fsub.h f5, f31, f19, dyn # perform operation
fsub.h f5, f31, f19, rdn # perform operation
fsub.h f5, f31, f19, rmm # perform operation
fsub.h f5, f31, f19, rne # perform operation
fsub.h f5, f31, f19, rtz # perform operation
fsub.h f5, f31, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f31, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f31, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f31, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f31, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f31, f19 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x44a383d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0a04b660 # load x3 with value 0x0a04b660
sw x3, 0(x2) # store 0x0a04b660 in memory
flh f21, 0(x2) # load 0x0a04b660 from memory into f21
li x3, 0xb713aa1e # load x3 with value 0xb713aa1e
sw x3, 0(x2) # store 0xb713aa1e in memory
flh f11, 0(x2) # load 0xb713aa1e from memory into f11
fsub.h f0, f21, f11 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x5b43a475 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa72dafa3 # load x3 with value 0xa72dafa3
sw x3, 0(x2) # store 0xa72dafa3 in memory
flh f23, 0(x2) # load 0xa72dafa3 from memory into f23
li x3, 0xf201f702 # load x3 with value 0xf201f702
sw x3, 0(x2) # store 0xf201f702 in memory
flh f13, 0(x2) # load 0xf201f702 from memory into f13
fsub.h f1, f23, f13 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x27b81846 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x79bc5121 # load x3 with value 0x79bc5121
sw x3, 0(x2) # store 0x79bc5121 in memory
flh f8, 0(x2) # load 0x79bc5121 from memory into f8
li x3, 0x315b58d9 # load x3 with value 0x315b58d9
sw x3, 0(x2) # store 0x315b58d9 in memory
flh f17, 0(x2) # load 0x315b58d9 from memory into f17
fsub.h f2, f8, f17 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0xd550f0b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe03c9b97 # load x3 with value 0xe03c9b97
sw x3, 0(x2) # store 0xe03c9b97 in memory
flh f18, 0(x2) # load 0xe03c9b97 from memory into f18
li x3, 0xcf43cc9f # load x3 with value 0xcf43cc9f
sw x3, 0(x2) # store 0xcf43cc9f in memory
flh f2, 0(x2) # load 0xcf43cc9f from memory into f2
fsub.h f3, f18, f2 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0xad637433 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x95ed1429 # load x3 with value 0x95ed1429
sw x3, 0(x2) # store 0x95ed1429 in memory
flh f10, 0(x2) # load 0x95ed1429 from memory into f10
li x3, 0x65e5d77b # load x3 with value 0x65e5d77b
sw x3, 0(x2) # store 0x65e5d77b in memory
flh f13, 0(x2) # load 0x65e5d77b from memory into f13
fsub.h f4, f10, f13 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x943476b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4f776082 # load x3 with value 0x4f776082
sw x3, 0(x2) # store 0x4f776082 in memory
flh f31, 0(x2) # load 0x4f776082 from memory into f31
li x3, 0x6912dcf7 # load x3 with value 0x6912dcf7
sw x3, 0(x2) # store 0x6912dcf7 in memory
flh f4, 0(x2) # load 0x6912dcf7 from memory into f4
fsub.h f5, f31, f4 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x570cd5ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9093a7d3 # load x3 with value 0x9093a7d3
sw x3, 0(x2) # store 0x9093a7d3 in memory
flh f25, 0(x2) # load 0x9093a7d3 from memory into f25
li x3, 0x80e5f31b # load x3 with value 0x80e5f31b
sw x3, 0(x2) # store 0x80e5f31b in memory
flh f4, 0(x2) # load 0x80e5f31b from memory into f4
fsub.h f6, f25, f4 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0xb5233b37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7aeee297 # load x3 with value 0x7aeee297
sw x3, 0(x2) # store 0x7aeee297 in memory
flh f16, 0(x2) # load 0x7aeee297 from memory into f16
li x3, 0x0c758aa3 # load x3 with value 0x0c758aa3
sw x3, 0(x2) # store 0x0c758aa3 in memory
flh f11, 0(x2) # load 0x0c758aa3 from memory into f11
fsub.h f7, f16, f11 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x321626d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0e2b737e # load x3 with value 0x0e2b737e
sw x3, 0(x2) # store 0x0e2b737e in memory
flh f17, 0(x2) # load 0x0e2b737e from memory into f17
li x3, 0x92a48bdb # load x3 with value 0x92a48bdb
sw x3, 0(x2) # store 0x92a48bdb in memory
flh f27, 0(x2) # load 0x92a48bdb from memory into f27
fsub.h f8, f17, f27 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x1468992e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5e8df08c # load x3 with value 0x5e8df08c
sw x3, 0(x2) # store 0x5e8df08c in memory
flh f17, 0(x2) # load 0x5e8df08c from memory into f17
li x3, 0x6fdfb078 # load x3 with value 0x6fdfb078
sw x3, 0(x2) # store 0x6fdfb078 in memory
flh f12, 0(x2) # load 0x6fdfb078 from memory into f12
fsub.h f9, f17, f12 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x86097d25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x041fb4bc # load x3 with value 0x041fb4bc
sw x3, 0(x2) # store 0x041fb4bc in memory
flh f12, 0(x2) # load 0x041fb4bc from memory into f12
li x3, 0x0715c208 # load x3 with value 0x0715c208
sw x3, 0(x2) # store 0x0715c208 in memory
flh f18, 0(x2) # load 0x0715c208 from memory into f18
fsub.h f10, f12, f18 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x0812db84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3dc2e1f0 # load x3 with value 0x3dc2e1f0
sw x3, 0(x2) # store 0x3dc2e1f0 in memory
flh f9, 0(x2) # load 0x3dc2e1f0 from memory into f9
li x3, 0x28ced4df # load x3 with value 0x28ced4df
sw x3, 0(x2) # store 0x28ced4df in memory
flh f5, 0(x2) # load 0x28ced4df from memory into f5
fsub.h f11, f9, f5 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x6be7f2ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa99479a7 # load x3 with value 0xa99479a7
sw x3, 0(x2) # store 0xa99479a7 in memory
flh f21, 0(x2) # load 0xa99479a7 from memory into f21
li x3, 0x364a667e # load x3 with value 0x364a667e
sw x3, 0(x2) # store 0x364a667e in memory
flh f19, 0(x2) # load 0x364a667e from memory into f19
fsub.h f12, f21, f19 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x6ac33baa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x755d6134 # load x3 with value 0x755d6134
sw x3, 0(x2) # store 0x755d6134 in memory
flh f20, 0(x2) # load 0x755d6134 from memory into f20
li x3, 0xb5afdd65 # load x3 with value 0xb5afdd65
sw x3, 0(x2) # store 0xb5afdd65 in memory
flh f22, 0(x2) # load 0xb5afdd65 from memory into f22
fsub.h f13, f20, f22 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x048331b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x37da0723 # load x3 with value 0x37da0723
sw x3, 0(x2) # store 0x37da0723 in memory
flh f12, 0(x2) # load 0x37da0723 from memory into f12
li x3, 0x10f78958 # load x3 with value 0x10f78958
sw x3, 0(x2) # store 0x10f78958 in memory
flh f7, 0(x2) # load 0x10f78958 from memory into f7
fsub.h f14, f12, f7 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x82c6e899 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x32b141d0 # load x3 with value 0x32b141d0
sw x3, 0(x2) # store 0x32b141d0 in memory
flh f2, 0(x2) # load 0x32b141d0 from memory into f2
li x3, 0x7bf76fcb # load x3 with value 0x7bf76fcb
sw x3, 0(x2) # store 0x7bf76fcb in memory
flh f26, 0(x2) # load 0x7bf76fcb from memory into f26
fsub.h f15, f2, f26 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x332e9e50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8325f73d # load x3 with value 0x8325f73d
sw x3, 0(x2) # store 0x8325f73d in memory
flh f11, 0(x2) # load 0x8325f73d from memory into f11
li x3, 0x575a6ce2 # load x3 with value 0x575a6ce2
sw x3, 0(x2) # store 0x575a6ce2 in memory
flh f18, 0(x2) # load 0x575a6ce2 from memory into f18
fsub.h f16, f11, f18 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x3c0c43fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x36df0bb9 # load x3 with value 0x36df0bb9
sw x3, 0(x2) # store 0x36df0bb9 in memory
flh f30, 0(x2) # load 0x36df0bb9 from memory into f30
li x3, 0xe2a0f812 # load x3 with value 0xe2a0f812
sw x3, 0(x2) # store 0xe2a0f812 in memory
flh f17, 0(x2) # load 0xe2a0f812 from memory into f17
fsub.h f17, f30, f17 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x9747882e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x81ea85e7 # load x3 with value 0x81ea85e7
sw x3, 0(x2) # store 0x81ea85e7 in memory
flh f25, 0(x2) # load 0x81ea85e7 from memory into f25
li x3, 0xb04b9c31 # load x3 with value 0xb04b9c31
sw x3, 0(x2) # store 0xb04b9c31 in memory
flh f19, 0(x2) # load 0xb04b9c31 from memory into f19
fsub.h f18, f25, f19 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x43096371 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007577e7 # load x3 with value 0x007577e7
sw x3, 0(x2) # store 0x007577e7 in memory
flh f9, 0(x2) # load 0x007577e7 from memory into f9
li x3, 0xba4d3fe2 # load x3 with value 0xba4d3fe2
sw x3, 0(x2) # store 0xba4d3fe2 in memory
flh f5, 0(x2) # load 0xba4d3fe2 from memory into f5
fsub.h f19, f9, f5 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0xa3b7c2bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x83e6deab # load x3 with value 0x83e6deab
sw x3, 0(x2) # store 0x83e6deab in memory
flh f23, 0(x2) # load 0x83e6deab from memory into f23
li x3, 0x4ef03e51 # load x3 with value 0x4ef03e51
sw x3, 0(x2) # store 0x4ef03e51 in memory
flh f2, 0(x2) # load 0x4ef03e51 from memory into f2
fsub.h f20, f23, f2 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x023dfe38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x67c85ed8 # load x3 with value 0x67c85ed8
sw x3, 0(x2) # store 0x67c85ed8 in memory
flh f30, 0(x2) # load 0x67c85ed8 from memory into f30
li x3, 0x20e222da # load x3 with value 0x20e222da
sw x3, 0(x2) # store 0x20e222da in memory
flh f9, 0(x2) # load 0x20e222da from memory into f9
fsub.h f21, f30, f9 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x95dd5c72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4ee53723 # load x3 with value 0x4ee53723
sw x3, 0(x2) # store 0x4ee53723 in memory
flh f8, 0(x2) # load 0x4ee53723 from memory into f8
li x3, 0xadd9cafa # load x3 with value 0xadd9cafa
sw x3, 0(x2) # store 0xadd9cafa in memory
flh f23, 0(x2) # load 0xadd9cafa from memory into f23
fsub.h f22, f8, f23 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x7be17848 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x98beb9e4 # load x3 with value 0x98beb9e4
sw x3, 0(x2) # store 0x98beb9e4 in memory
flh f28, 0(x2) # load 0x98beb9e4 from memory into f28
li x3, 0x38ebe4c6 # load x3 with value 0x38ebe4c6
sw x3, 0(x2) # store 0x38ebe4c6 in memory
flh f17, 0(x2) # load 0x38ebe4c6 from memory into f17
fsub.h f23, f28, f17 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x6c2c5951 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdefc2899 # load x3 with value 0xdefc2899
sw x3, 0(x2) # store 0xdefc2899 in memory
flh f26, 0(x2) # load 0xdefc2899 from memory into f26
li x3, 0x030d4591 # load x3 with value 0x030d4591
sw x3, 0(x2) # store 0x030d4591 in memory
flh f20, 0(x2) # load 0x030d4591 from memory into f20
fsub.h f24, f26, f20 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0xfce91206 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9d9c453e # load x3 with value 0x9d9c453e
sw x3, 0(x2) # store 0x9d9c453e in memory
flh f27, 0(x2) # load 0x9d9c453e from memory into f27
li x3, 0x2524ea3e # load x3 with value 0x2524ea3e
sw x3, 0(x2) # store 0x2524ea3e in memory
flh f28, 0(x2) # load 0x2524ea3e from memory into f28
fsub.h f25, f27, f28 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xfb40e0e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff6745f2 # load x3 with value 0xff6745f2
sw x3, 0(x2) # store 0xff6745f2 in memory
flh f5, 0(x2) # load 0xff6745f2 from memory into f5
li x3, 0xf6ebf24d # load x3 with value 0xf6ebf24d
sw x3, 0(x2) # store 0xf6ebf24d in memory
flh f4, 0(x2) # load 0xf6ebf24d from memory into f4
fsub.h f26, f5, f4 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x28a2ec9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x300b3028 # load x3 with value 0x300b3028
sw x3, 0(x2) # store 0x300b3028 in memory
flh f26, 0(x2) # load 0x300b3028 from memory into f26
li x3, 0xcadb8582 # load x3 with value 0xcadb8582
sw x3, 0(x2) # store 0xcadb8582 in memory
flh f28, 0(x2) # load 0xcadb8582 from memory into f28
fsub.h f27, f26, f28 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x69110dbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdaab1f31 # load x3 with value 0xdaab1f31
sw x3, 0(x2) # store 0xdaab1f31 in memory
flh f24, 0(x2) # load 0xdaab1f31 from memory into f24
li x3, 0x6f9f4222 # load x3 with value 0x6f9f4222
sw x3, 0(x2) # store 0x6f9f4222 in memory
flh f29, 0(x2) # load 0x6f9f4222 from memory into f29
fsub.h f28, f24, f29 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x966cba8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdea7dc50 # load x3 with value 0xdea7dc50
sw x3, 0(x2) # store 0xdea7dc50 in memory
flh f28, 0(x2) # load 0xdea7dc50 from memory into f28
li x3, 0x8a26f5a9 # load x3 with value 0x8a26f5a9
sw x3, 0(x2) # store 0x8a26f5a9 in memory
flh f25, 0(x2) # load 0x8a26f5a9 from memory into f25
fsub.h f29, f28, f25 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x3599d600 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe70cf64c # load x3 with value 0xe70cf64c
sw x3, 0(x2) # store 0xe70cf64c in memory
flh f29, 0(x2) # load 0xe70cf64c from memory into f29
li x3, 0x625bfcac # load x3 with value 0x625bfcac
sw x3, 0(x2) # store 0x625bfcac in memory
flh f31, 0(x2) # load 0x625bfcac from memory into f31
fsub.h f30, f29, f31 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x207dd791 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x70ced7d9 # load x3 with value 0x70ced7d9
sw x3, 0(x2) # store 0x70ced7d9 in memory
flh f10, 0(x2) # load 0x70ced7d9 from memory into f10
li x3, 0x059ac0c1 # load x3 with value 0x059ac0c1
sw x3, 0(x2) # store 0x059ac0c1 in memory
flh f16, 0(x2) # load 0x059ac0c1 from memory into f16
fsub.h f31, f10, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x28, 0xff802b93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2be43126 # load x3 with value 0x2be43126
sw x3, 0(x2) # store 0x2be43126 in memory
flh f0, 0(x2) # load 0x2be43126 from memory into f0
li x3, 0xac0b43be # load x3 with value 0xac0b43be
sw x3, 0(x2) # store 0xac0b43be in memory
flh f15, 0(x2) # load 0xac0b43be from memory into f15
fsub.h f28, f0, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x20, 0x1b78e4aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe8d39144 # load x3 with value 0xe8d39144
sw x3, 0(x2) # store 0xe8d39144 in memory
flh f1, 0(x2) # load 0xe8d39144 from memory into f1
li x3, 0x7ea7b6f3 # load x3 with value 0x7ea7b6f3
sw x3, 0(x2) # store 0x7ea7b6f3 in memory
flh f19, 0(x2) # load 0x7ea7b6f3 from memory into f19
fsub.h f20, f1, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x18, 0xcd806a05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8c46ec26 # load x3 with value 0x8c46ec26
sw x3, 0(x2) # store 0x8c46ec26 in memory
flh f2, 0(x2) # load 0x8c46ec26 from memory into f2
li x3, 0x1384224f # load x3 with value 0x1384224f
sw x3, 0(x2) # store 0x1384224f in memory
flh f14, 0(x2) # load 0x1384224f from memory into f14
fsub.h f18, f2, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x24, 0x3e5a73d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x48556f9e # load x3 with value 0x48556f9e
sw x3, 0(x2) # store 0x48556f9e in memory
flh f3, 0(x2) # load 0x48556f9e from memory into f3
li x3, 0x8f480419 # load x3 with value 0x8f480419
sw x3, 0(x2) # store 0x8f480419 in memory
flh f9, 0(x2) # load 0x8f480419 from memory into f9
fsub.h f24, f3, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x3, 0xf1177d11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4cfaaf4d # load x3 with value 0x4cfaaf4d
sw x3, 0(x2) # store 0x4cfaaf4d in memory
flh f4, 0(x2) # load 0x4cfaaf4d from memory into f4
li x3, 0x80a93a94 # load x3 with value 0x80a93a94
sw x3, 0(x2) # store 0x80a93a94 in memory
flh f30, 0(x2) # load 0x80a93a94 from memory into f30
fsub.h f3, f4, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x16, 0x05bcee30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0568642b # load x3 with value 0x0568642b
sw x3, 0(x2) # store 0x0568642b in memory
flh f5, 0(x2) # load 0x0568642b from memory into f5
li x3, 0x0eacf4bc # load x3 with value 0x0eacf4bc
sw x3, 0(x2) # store 0x0eacf4bc in memory
flh f23, 0(x2) # load 0x0eacf4bc from memory into f23
fsub.h f16, f5, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x29, 0xe105f475 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1ff3f605 # load x3 with value 0x1ff3f605
sw x3, 0(x2) # store 0x1ff3f605 in memory
flh f6, 0(x2) # load 0x1ff3f605 from memory into f6
li x3, 0x9a67fab7 # load x3 with value 0x9a67fab7
sw x3, 0(x2) # store 0x9a67fab7 in memory
flh f7, 0(x2) # load 0x9a67fab7 from memory into f7
fsub.h f29, f6, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x12, 0x50142da8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x44e71f34 # load x3 with value 0x44e71f34
sw x3, 0(x2) # store 0x44e71f34 in memory
flh f7, 0(x2) # load 0x44e71f34 from memory into f7
li x3, 0x97520fb0 # load x3 with value 0x97520fb0
sw x3, 0(x2) # store 0x97520fb0 in memory
flh f9, 0(x2) # load 0x97520fb0 from memory into f9
fsub.h f12, f7, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x26, 0x6acf4041 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x101d3a64 # load x3 with value 0x101d3a64
sw x3, 0(x2) # store 0x101d3a64 in memory
flh f8, 0(x2) # load 0x101d3a64 from memory into f8
li x3, 0xa123ed96 # load x3 with value 0xa123ed96
sw x3, 0(x2) # store 0xa123ed96 in memory
flh f11, 0(x2) # load 0xa123ed96 from memory into f11
fsub.h f26, f8, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x9, 0xec64ccbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcb9ea003 # load x3 with value 0xcb9ea003
sw x3, 0(x2) # store 0xcb9ea003 in memory
flh f9, 0(x2) # load 0xcb9ea003 from memory into f9
li x3, 0x3f70db11 # load x3 with value 0x3f70db11
sw x3, 0(x2) # store 0x3f70db11 in memory
flh f3, 0(x2) # load 0x3f70db11 from memory into f3
fsub.h f9, f9, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x2, 0x7f9cdaff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7a524fc6 # load x3 with value 0x7a524fc6
sw x3, 0(x2) # store 0x7a524fc6 in memory
flh f10, 0(x2) # load 0x7a524fc6 from memory into f10
li x3, 0x06725561 # load x3 with value 0x06725561
sw x3, 0(x2) # store 0x06725561 in memory
flh f31, 0(x2) # load 0x06725561 from memory into f31
fsub.h f2, f10, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x29, 0x042494fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x30e65eb5 # load x3 with value 0x30e65eb5
sw x3, 0(x2) # store 0x30e65eb5 in memory
flh f11, 0(x2) # load 0x30e65eb5 from memory into f11
li x3, 0xec7409e3 # load x3 with value 0xec7409e3
sw x3, 0(x2) # store 0xec7409e3 in memory
flh f12, 0(x2) # load 0xec7409e3 from memory into f12
fsub.h f29, f11, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x19, 0x2fb0ec12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdc922a78 # load x3 with value 0xdc922a78
sw x3, 0(x2) # store 0xdc922a78 in memory
flh f12, 0(x2) # load 0xdc922a78 from memory into f12
li x3, 0x7eafd550 # load x3 with value 0x7eafd550
sw x3, 0(x2) # store 0x7eafd550 in memory
flh f9, 0(x2) # load 0x7eafd550 from memory into f9
fsub.h f19, f12, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x19, 0x6a5b676f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x755ab617 # load x3 with value 0x755ab617
sw x3, 0(x2) # store 0x755ab617 in memory
flh f13, 0(x2) # load 0x755ab617 from memory into f13
li x3, 0xaad34f63 # load x3 with value 0xaad34f63
sw x3, 0(x2) # store 0xaad34f63 in memory
flh f12, 0(x2) # load 0xaad34f63 from memory into f12
fsub.h f19, f13, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x8, 0x4b641495 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3972de99 # load x3 with value 0x3972de99
sw x3, 0(x2) # store 0x3972de99 in memory
flh f14, 0(x2) # load 0x3972de99 from memory into f14
li x3, 0x9574e881 # load x3 with value 0x9574e881
sw x3, 0(x2) # store 0x9574e881 in memory
flh f10, 0(x2) # load 0x9574e881 from memory into f10
fsub.h f8, f14, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x8, 0x254305fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x53cdc5c3 # load x3 with value 0x53cdc5c3
sw x3, 0(x2) # store 0x53cdc5c3 in memory
flh f15, 0(x2) # load 0x53cdc5c3 from memory into f15
li x3, 0x945eacf7 # load x3 with value 0x945eacf7
sw x3, 0(x2) # store 0x945eacf7 in memory
flh f20, 0(x2) # load 0x945eacf7 from memory into f20
fsub.h f8, f15, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x19, 0xd8108861 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd903a4de # load x3 with value 0xd903a4de
sw x3, 0(x2) # store 0xd903a4de in memory
flh f16, 0(x2) # load 0xd903a4de from memory into f16
li x3, 0x9d480801 # load x3 with value 0x9d480801
sw x3, 0(x2) # store 0x9d480801 in memory
flh f5, 0(x2) # load 0x9d480801 from memory into f5
fsub.h f19, f16, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x29, 0x8b930d0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfbfa2b5a # load x3 with value 0xfbfa2b5a
sw x3, 0(x2) # store 0xfbfa2b5a in memory
flh f17, 0(x2) # load 0xfbfa2b5a from memory into f17
li x3, 0xda8424e3 # load x3 with value 0xda8424e3
sw x3, 0(x2) # store 0xda8424e3 in memory
flh f31, 0(x2) # load 0xda8424e3 from memory into f31
fsub.h f29, f17, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x30, 0xe59c56d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x85e9e079 # load x3 with value 0x85e9e079
sw x3, 0(x2) # store 0x85e9e079 in memory
flh f18, 0(x2) # load 0x85e9e079 from memory into f18
li x3, 0x8a9ad5bf # load x3 with value 0x8a9ad5bf
sw x3, 0(x2) # store 0x8a9ad5bf in memory
flh f12, 0(x2) # load 0x8a9ad5bf from memory into f12
fsub.h f30, f18, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x29, 0x47db0479 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x73505dfc # load x3 with value 0x73505dfc
sw x3, 0(x2) # store 0x73505dfc in memory
flh f19, 0(x2) # load 0x73505dfc from memory into f19
li x3, 0xe694ec30 # load x3 with value 0xe694ec30
sw x3, 0(x2) # store 0xe694ec30 in memory
flh f17, 0(x2) # load 0xe694ec30 from memory into f17
fsub.h f29, f19, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x26, 0xd06413a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb54e974c # load x3 with value 0xb54e974c
sw x3, 0(x2) # store 0xb54e974c in memory
flh f20, 0(x2) # load 0xb54e974c from memory into f20
li x3, 0x6f302d37 # load x3 with value 0x6f302d37
sw x3, 0(x2) # store 0x6f302d37 in memory
flh f2, 0(x2) # load 0x6f302d37 from memory into f2
fsub.h f26, f20, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x1, 0x0f75dc4c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe950d412 # load x3 with value 0xe950d412
sw x3, 0(x2) # store 0xe950d412 in memory
flh f21, 0(x2) # load 0xe950d412 from memory into f21
li x3, 0x3980db8f # load x3 with value 0x3980db8f
sw x3, 0(x2) # store 0x3980db8f in memory
flh f6, 0(x2) # load 0x3980db8f from memory into f6
fsub.h f1, f21, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x9, 0xfb494f4c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x66d64003 # load x3 with value 0x66d64003
sw x3, 0(x2) # store 0x66d64003 in memory
flh f22, 0(x2) # load 0x66d64003 from memory into f22
li x3, 0xcff4252a # load x3 with value 0xcff4252a
sw x3, 0(x2) # store 0xcff4252a in memory
flh f24, 0(x2) # load 0xcff4252a from memory into f24
fsub.h f9, f22, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x8, 0x7ebddace # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf0dfbf60 # load x3 with value 0xf0dfbf60
sw x3, 0(x2) # store 0xf0dfbf60 in memory
flh f23, 0(x2) # load 0xf0dfbf60 from memory into f23
li x3, 0x5422bbe0 # load x3 with value 0x5422bbe0
sw x3, 0(x2) # store 0x5422bbe0 in memory
flh f15, 0(x2) # load 0x5422bbe0 from memory into f15
fsub.h f8, f23, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x27, 0xf66611d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xef01dc10 # load x3 with value 0xef01dc10
sw x3, 0(x2) # store 0xef01dc10 in memory
flh f24, 0(x2) # load 0xef01dc10 from memory into f24
li x3, 0x87d2ea6b # load x3 with value 0x87d2ea6b
sw x3, 0(x2) # store 0x87d2ea6b in memory
flh f13, 0(x2) # load 0x87d2ea6b from memory into f13
fsub.h f27, f24, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x30, 0xcbbab52a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3184c867 # load x3 with value 0x3184c867
sw x3, 0(x2) # store 0x3184c867 in memory
flh f25, 0(x2) # load 0x3184c867 from memory into f25
li x3, 0xcee7da47 # load x3 with value 0xcee7da47
sw x3, 0(x2) # store 0xcee7da47 in memory
flh f4, 0(x2) # load 0xcee7da47 from memory into f4
fsub.h f30, f25, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x26, 0xcc04c6e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaddd4c0b # load x3 with value 0xaddd4c0b
sw x3, 0(x2) # store 0xaddd4c0b in memory
flh f26, 0(x2) # load 0xaddd4c0b from memory into f26
li x3, 0x656d717f # load x3 with value 0x656d717f
sw x3, 0(x2) # store 0x656d717f in memory
flh f20, 0(x2) # load 0x656d717f from memory into f20
fsub.h f26, f26, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x1, 0x96a6e64c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x24cb8531 # load x3 with value 0x24cb8531
sw x3, 0(x2) # store 0x24cb8531 in memory
flh f27, 0(x2) # load 0x24cb8531 from memory into f27
li x3, 0xc80d9b43 # load x3 with value 0xc80d9b43
sw x3, 0(x2) # store 0xc80d9b43 in memory
flh f21, 0(x2) # load 0xc80d9b43 from memory into f21
fsub.h f1, f27, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x28, 0x95379d18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x62b8879d # load x3 with value 0x62b8879d
sw x3, 0(x2) # store 0x62b8879d in memory
flh f28, 0(x2) # load 0x62b8879d from memory into f28
li x3, 0x06bfa5da # load x3 with value 0x06bfa5da
sw x3, 0(x2) # store 0x06bfa5da in memory
flh f26, 0(x2) # load 0x06bfa5da from memory into f26
fsub.h f28, f28, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x17, 0xe9f3521b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6c96f9bd # load x3 with value 0x6c96f9bd
sw x3, 0(x2) # store 0x6c96f9bd in memory
flh f29, 0(x2) # load 0x6c96f9bd from memory into f29
li x3, 0xd488e243 # load x3 with value 0xd488e243
sw x3, 0(x2) # store 0xd488e243 in memory
flh f28, 0(x2) # load 0xd488e243 from memory into f28
fsub.h f17, f29, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x14, 0x7b167e21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf59737ca # load x3 with value 0xf59737ca
sw x3, 0(x2) # store 0xf59737ca in memory
flh f30, 0(x2) # load 0xf59737ca from memory into f30
li x3, 0x34dc6470 # load x3 with value 0x34dc6470
sw x3, 0(x2) # store 0x34dc6470 in memory
flh f4, 0(x2) # load 0x34dc6470 from memory into f4
fsub.h f14, f30, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x22, 0x83d7bf9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x73de0f96 # load x3 with value 0x73de0f96
sw x3, 0(x2) # store 0x73de0f96 in memory
flh f31, 0(x2) # load 0x73de0f96 from memory into f31
li x3, 0x54058330 # load x3 with value 0x54058330
sw x3, 0(x2) # store 0x54058330 in memory
flh f8, 0(x2) # load 0x54058330 from memory into f8
fsub.h f22, f31, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x14, 0xfcd9119c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x268ea67c # load x3 with value 0x268ea67c
sw x3, 0(x2) # store 0x268ea67c in memory
flh f17, 0(x2) # load 0x268ea67c from memory into f17
li x3, 0x9623defd # load x3 with value 0x9623defd
sw x3, 0(x2) # store 0x9623defd in memory
flh f0, 0(x2) # load 0x9623defd from memory into f0
fsub.h f14, f17, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x1, 0xd194085b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x62680806 # load x3 with value 0x62680806
sw x3, 0(x2) # store 0x62680806 in memory
flh f10, 0(x2) # load 0x62680806 from memory into f10
li x3, 0x40cdf58e # load x3 with value 0x40cdf58e
sw x3, 0(x2) # store 0x40cdf58e in memory
flh f1, 0(x2) # load 0x40cdf58e from memory into f1
fsub.h f1, f10, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x30, 0xed779749 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4bb9c4e6 # load x3 with value 0x4bb9c4e6
sw x3, 0(x2) # store 0x4bb9c4e6 in memory
flh f29, 0(x2) # load 0x4bb9c4e6 from memory into f29
li x3, 0xcc7771fb # load x3 with value 0xcc7771fb
sw x3, 0(x2) # store 0xcc7771fb in memory
flh f2, 0(x2) # load 0xcc7771fb from memory into f2
fsub.h f30, f29, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x1, 0x6acbf98c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x992e8e72 # load x3 with value 0x992e8e72
sw x3, 0(x2) # store 0x992e8e72 in memory
flh f20, 0(x2) # load 0x992e8e72 from memory into f20
li x3, 0xb32af8ef # load x3 with value 0xb32af8ef
sw x3, 0(x2) # store 0xb32af8ef in memory
flh f3, 0(x2) # load 0xb32af8ef from memory into f3
fsub.h f1, f20, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x21, 0xd3f74ce7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x722fcbd0 # load x3 with value 0x722fcbd0
sw x3, 0(x2) # store 0x722fcbd0 in memory
flh f3, 0(x2) # load 0x722fcbd0 from memory into f3
li x3, 0x52a16b96 # load x3 with value 0x52a16b96
sw x3, 0(x2) # store 0x52a16b96 in memory
flh f4, 0(x2) # load 0x52a16b96 from memory into f4
fsub.h f21, f3, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x11, 0xd0211b07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcd89262c # load x3 with value 0xcd89262c
sw x3, 0(x2) # store 0xcd89262c in memory
flh f13, 0(x2) # load 0xcd89262c from memory into f13
li x3, 0x4750442f # load x3 with value 0x4750442f
sw x3, 0(x2) # store 0x4750442f in memory
flh f5, 0(x2) # load 0x4750442f from memory into f5
fsub.h f11, f13, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x27, 0x21644757 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7c0ed26f # load x3 with value 0x7c0ed26f
sw x3, 0(x2) # store 0x7c0ed26f in memory
flh f21, 0(x2) # load 0x7c0ed26f from memory into f21
li x3, 0xc5856fdf # load x3 with value 0xc5856fdf
sw x3, 0(x2) # store 0xc5856fdf in memory
flh f6, 0(x2) # load 0xc5856fdf from memory into f6
fsub.h f27, f21, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x5, 0x621450f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3e7c9c32 # load x3 with value 0x3e7c9c32
sw x3, 0(x2) # store 0x3e7c9c32 in memory
flh f24, 0(x2) # load 0x3e7c9c32 from memory into f24
li x3, 0xde5954b1 # load x3 with value 0xde5954b1
sw x3, 0(x2) # store 0xde5954b1 in memory
flh f7, 0(x2) # load 0xde5954b1 from memory into f7
fsub.h f5, f24, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x27, 0xec81a5f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd383a106 # load x3 with value 0xd383a106
sw x3, 0(x2) # store 0xd383a106 in memory
flh f20, 0(x2) # load 0xd383a106 from memory into f20
li x3, 0xd2d82984 # load x3 with value 0xd2d82984
sw x3, 0(x2) # store 0xd2d82984 in memory
flh f8, 0(x2) # load 0xd2d82984 from memory into f8
fsub.h f27, f20, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x19, 0x9131e390 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ea89597 # load x3 with value 0x7ea89597
sw x3, 0(x2) # store 0x7ea89597 in memory
flh f10, 0(x2) # load 0x7ea89597 from memory into f10
li x3, 0x31a5a40d # load x3 with value 0x31a5a40d
sw x3, 0(x2) # store 0x31a5a40d in memory
flh f9, 0(x2) # load 0x31a5a40d from memory into f9
fsub.h f19, f10, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x22, 0x3740972b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc07a6bd9 # load x3 with value 0xc07a6bd9
sw x3, 0(x2) # store 0xc07a6bd9 in memory
flh f28, 0(x2) # load 0xc07a6bd9 from memory into f28
li x3, 0x2569f5be # load x3 with value 0x2569f5be
sw x3, 0(x2) # store 0x2569f5be in memory
flh f10, 0(x2) # load 0x2569f5be from memory into f10
fsub.h f22, f28, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x7, 0x2c193056 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7cb46077 # load x3 with value 0x7cb46077
sw x3, 0(x2) # store 0x7cb46077 in memory
flh f2, 0(x2) # load 0x7cb46077 from memory into f2
li x3, 0xbaaec318 # load x3 with value 0xbaaec318
sw x3, 0(x2) # store 0xbaaec318 in memory
flh f11, 0(x2) # load 0xbaaec318 from memory into f11
fsub.h f7, f2, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x22, 0xb0c28743 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6a6fa655 # load x3 with value 0x6a6fa655
sw x3, 0(x2) # store 0x6a6fa655 in memory
flh f13, 0(x2) # load 0x6a6fa655 from memory into f13
li x3, 0xe82fda69 # load x3 with value 0xe82fda69
sw x3, 0(x2) # store 0xe82fda69 in memory
flh f12, 0(x2) # load 0xe82fda69 from memory into f12
fsub.h f22, f13, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x5, 0xcca307cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x49d8a03b # load x3 with value 0x49d8a03b
sw x3, 0(x2) # store 0x49d8a03b in memory
flh f8, 0(x2) # load 0x49d8a03b from memory into f8
li x3, 0x795eb188 # load x3 with value 0x795eb188
sw x3, 0(x2) # store 0x795eb188 in memory
flh f13, 0(x2) # load 0x795eb188 from memory into f13
fsub.h f5, f8, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x15, 0x402b511a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6317804 # load x3 with value 0xa6317804
sw x3, 0(x2) # store 0xa6317804 in memory
flh f29, 0(x2) # load 0xa6317804 from memory into f29
li x3, 0xe83f768b # load x3 with value 0xe83f768b
sw x3, 0(x2) # store 0xe83f768b in memory
flh f14, 0(x2) # load 0xe83f768b from memory into f14
fsub.h f15, f29, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x30, 0x666d5d47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8e85e350 # load x3 with value 0x8e85e350
sw x3, 0(x2) # store 0x8e85e350 in memory
flh f11, 0(x2) # load 0x8e85e350 from memory into f11
li x3, 0xfb13ba9b # load x3 with value 0xfb13ba9b
sw x3, 0(x2) # store 0xfb13ba9b in memory
flh f15, 0(x2) # load 0xfb13ba9b from memory into f15
fsub.h f30, f11, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x28, 0x61b70b0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe715f0d7 # load x3 with value 0xe715f0d7
sw x3, 0(x2) # store 0xe715f0d7 in memory
flh f1, 0(x2) # load 0xe715f0d7 from memory into f1
li x3, 0x047dbc68 # load x3 with value 0x047dbc68
sw x3, 0(x2) # store 0x047dbc68 in memory
flh f16, 0(x2) # load 0x047dbc68 from memory into f16
fsub.h f28, f1, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x21, 0xaf568b15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1d070790 # load x3 with value 0x1d070790
sw x3, 0(x2) # store 0x1d070790 in memory
flh f4, 0(x2) # load 0x1d070790 from memory into f4
li x3, 0xd84bf059 # load x3 with value 0xd84bf059
sw x3, 0(x2) # store 0xd84bf059 in memory
flh f17, 0(x2) # load 0xd84bf059 from memory into f17
fsub.h f21, f4, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x9, 0x03005c4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x801444d4 # load x3 with value 0x801444d4
sw x3, 0(x2) # store 0x801444d4 in memory
flh f13, 0(x2) # load 0x801444d4 from memory into f13
li x3, 0xc1e9a408 # load x3 with value 0xc1e9a408
sw x3, 0(x2) # store 0xc1e9a408 in memory
flh f18, 0(x2) # load 0xc1e9a408 from memory into f18
fsub.h f9, f13, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x29, 0x62c375f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8f66ed0f # load x3 with value 0x8f66ed0f
sw x3, 0(x2) # store 0x8f66ed0f in memory
flh f22, 0(x2) # load 0x8f66ed0f from memory into f22
li x3, 0xa6887497 # load x3 with value 0xa6887497
sw x3, 0(x2) # store 0xa6887497 in memory
flh f19, 0(x2) # load 0xa6887497 from memory into f19
fsub.h f29, f22, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x20, 0xb5b461fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x06196c67 # load x3 with value 0x06196c67
sw x3, 0(x2) # store 0x06196c67 in memory
flh f18, 0(x2) # load 0x06196c67 from memory into f18
li x3, 0x23c41528 # load x3 with value 0x23c41528
sw x3, 0(x2) # store 0x23c41528 in memory
flh f20, 0(x2) # load 0x23c41528 from memory into f20
fsub.h f20, f18, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x27, 0x1dd13874 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4c883463 # load x3 with value 0x4c883463
sw x3, 0(x2) # store 0x4c883463 in memory
flh f10, 0(x2) # load 0x4c883463 from memory into f10
li x3, 0x260ae4b3 # load x3 with value 0x260ae4b3
sw x3, 0(x2) # store 0x260ae4b3 in memory
flh f21, 0(x2) # load 0x260ae4b3 from memory into f21
fsub.h f27, f10, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x16, 0x6227afa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa48643d2 # load x3 with value 0xa48643d2
sw x3, 0(x2) # store 0xa48643d2 in memory
flh f5, 0(x2) # load 0xa48643d2 from memory into f5
li x3, 0x074731de # load x3 with value 0x074731de
sw x3, 0(x2) # store 0x074731de in memory
flh f22, 0(x2) # load 0x074731de from memory into f22
fsub.h f16, f5, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x26, 0x81244d11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf1879d1c # load x3 with value 0xf1879d1c
sw x3, 0(x2) # store 0xf1879d1c in memory
flh f12, 0(x2) # load 0xf1879d1c from memory into f12
li x3, 0xa0636091 # load x3 with value 0xa0636091
sw x3, 0(x2) # store 0xa0636091 in memory
flh f23, 0(x2) # load 0xa0636091 from memory into f23
fsub.h f26, f12, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x8, 0x108fc86e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf3bfddff # load x3 with value 0xf3bfddff
sw x3, 0(x2) # store 0xf3bfddff in memory
flh f31, 0(x2) # load 0xf3bfddff from memory into f31
li x3, 0xc2b772d7 # load x3 with value 0xc2b772d7
sw x3, 0(x2) # store 0xc2b772d7 in memory
flh f24, 0(x2) # load 0xc2b772d7 from memory into f24
fsub.h f8, f31, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x7, 0x2e711d8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0ece838b # load x3 with value 0x0ece838b
sw x3, 0(x2) # store 0x0ece838b in memory
flh f23, 0(x2) # load 0x0ece838b from memory into f23
li x3, 0xacae9fb1 # load x3 with value 0xacae9fb1
sw x3, 0(x2) # store 0xacae9fb1 in memory
flh f25, 0(x2) # load 0xacae9fb1 from memory into f25
fsub.h f7, f23, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x12, 0x15479575 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x81240058 # load x3 with value 0x81240058
sw x3, 0(x2) # store 0x81240058 in memory
flh f6, 0(x2) # load 0x81240058 from memory into f6
li x3, 0x92448515 # load x3 with value 0x92448515
sw x3, 0(x2) # store 0x92448515 in memory
flh f26, 0(x2) # load 0x92448515 from memory into f26
fsub.h f12, f6, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x19, 0xa91a22d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x61086739 # load x3 with value 0x61086739
sw x3, 0(x2) # store 0x61086739 in memory
flh f17, 0(x2) # load 0x61086739 from memory into f17
li x3, 0x5dadc77a # load x3 with value 0x5dadc77a
sw x3, 0(x2) # store 0x5dadc77a in memory
flh f27, 0(x2) # load 0x5dadc77a from memory into f27
fsub.h f19, f17, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x13, 0xb3d7757e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe7a55673 # load x3 with value 0xe7a55673
sw x3, 0(x2) # store 0xe7a55673 in memory
flh f3, 0(x2) # load 0xe7a55673 from memory into f3
li x3, 0xdee64058 # load x3 with value 0xdee64058
sw x3, 0(x2) # store 0xdee64058 in memory
flh f28, 0(x2) # load 0xdee64058 from memory into f28
fsub.h f13, f3, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x1, 0xf0cdd2fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbe1e32f4 # load x3 with value 0xbe1e32f4
sw x3, 0(x2) # store 0xbe1e32f4 in memory
flh f3, 0(x2) # load 0xbe1e32f4 from memory into f3
li x3, 0xd8c53673 # load x3 with value 0xd8c53673
sw x3, 0(x2) # store 0xd8c53673 in memory
flh f29, 0(x2) # load 0xd8c53673 from memory into f29
fsub.h f1, f3, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x7, 0x8a0d11f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7e41a216 # load x3 with value 0x7e41a216
sw x3, 0(x2) # store 0x7e41a216 in memory
flh f2, 0(x2) # load 0x7e41a216 from memory into f2
li x3, 0x255a50d4 # load x3 with value 0x255a50d4
sw x3, 0(x2) # store 0x255a50d4 in memory
flh f30, 0(x2) # load 0x255a50d4 from memory into f30
fsub.h f7, f2, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x2, 0x86342fc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xea218a80 # load x3 with value 0xea218a80
sw x3, 0(x2) # store 0xea218a80 in memory
flh f19, 0(x2) # load 0xea218a80 from memory into f19
li x3, 0x41792685 # load x3 with value 0x41792685
sw x3, 0(x2) # store 0x41792685 in memory
flh f31, 0(x2) # load 0x41792685 from memory into f31
fsub.h f2, f19, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
