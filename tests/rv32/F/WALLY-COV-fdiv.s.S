///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/F//WALLY-COV-fdiv.s.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.145707
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
fdiv.s f30, f22, f1 # perform first operation
fdiv.s f27, f30, f13 # perform second operation

# Testcase cmp_gpr_hazard raw test
fdiv.s f26, f11, f16 # perform first operation
fdiv.s f13, f28, f26 # perform second operation

# Testcase cmp_gpr_hazard waw test
fdiv.s f5, f16, f2 # perform first operation
fdiv.s f5, f21, f30 # perform second operation

# Testcase cmp_gpr_hazard waw test
fdiv.s f3, f4, f24 # perform first operation
fdiv.s f3, f27, f24 # perform second operation

# Testcase cmp_gpr_hazard war test
fdiv.s f9, f10, f7 # perform first operation
fdiv.s f10, f17, f29 # perform second operation

# Testcase cmp_gpr_hazard war test
fdiv.s f6, f22, f20 # perform first operation
fdiv.s f20, f28, f2 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0xaec2e8b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0aa18491 # load x3 with value 0x0aa18491
sw x3, 0(x2) # store 0x0aa18491 in memory
flw f0, 0(x2) # load 0x0aa18491 from memory into f0
li x3, 0xf162e3e3 # load x3 with value 0xf162e3e3
sw x3, 0(x2) # store 0xf162e3e3 in memory
flw f16, 0(x2) # load 0xf162e3e3 from memory into f16
fdiv.s f0, f0, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0xf54b17a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6a62c480 # load x3 with value 0x6a62c480
sw x3, 0(x2) # store 0x6a62c480 in memory
flw f1, 0(x2) # load 0x6a62c480 from memory into f1
li x3, 0xa575f568 # load x3 with value 0xa575f568
sw x3, 0(x2) # store 0xa575f568 in memory
flw f22, 0(x2) # load 0xa575f568 from memory into f22
fdiv.s f1, f1, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0x4742fa63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcfd9a569 # load x3 with value 0xcfd9a569
sw x3, 0(x2) # store 0xcfd9a569 in memory
flw f2, 0(x2) # load 0xcfd9a569 from memory into f2
li x3, 0x647df5b9 # load x3 with value 0x647df5b9
sw x3, 0(x2) # store 0x647df5b9 in memory
flw f31, 0(x2) # load 0x647df5b9 from memory into f31
fdiv.s f2, f2, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0x9b8fc8cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfa3184ee # load x3 with value 0xfa3184ee
sw x3, 0(x2) # store 0xfa3184ee in memory
flw f3, 0(x2) # load 0xfa3184ee from memory into f3
li x3, 0x1a47782e # load x3 with value 0x1a47782e
sw x3, 0(x2) # store 0x1a47782e in memory
flw f13, 0(x2) # load 0x1a47782e from memory into f13
fdiv.s f3, f3, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0xf43a80e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc66691e7 # load x3 with value 0xc66691e7
sw x3, 0(x2) # store 0xc66691e7 in memory
flw f4, 0(x2) # load 0xc66691e7 from memory into f4
li x3, 0x5ebaceef # load x3 with value 0x5ebaceef
sw x3, 0(x2) # store 0x5ebaceef in memory
flw f6, 0(x2) # load 0x5ebaceef from memory into f6
fdiv.s f4, f4, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0xb687973f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1f7d2452 # load x3 with value 0x1f7d2452
sw x3, 0(x2) # store 0x1f7d2452 in memory
flw f5, 0(x2) # load 0x1f7d2452 from memory into f5
li x3, 0xefc3a9fe # load x3 with value 0xefc3a9fe
sw x3, 0(x2) # store 0xefc3a9fe in memory
flw f12, 0(x2) # load 0xefc3a9fe from memory into f12
fdiv.s f5, f5, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0x2e17a06b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7a368166 # load x3 with value 0x7a368166
sw x3, 0(x2) # store 0x7a368166 in memory
flw f6, 0(x2) # load 0x7a368166 from memory into f6
li x3, 0xe234e47c # load x3 with value 0xe234e47c
sw x3, 0(x2) # store 0xe234e47c in memory
flw f20, 0(x2) # load 0xe234e47c from memory into f20
fdiv.s f6, f6, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0xbd07815a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00b12c5a # load x3 with value 0x00b12c5a
sw x3, 0(x2) # store 0x00b12c5a in memory
flw f7, 0(x2) # load 0x00b12c5a from memory into f7
li x3, 0x78e0e590 # load x3 with value 0x78e0e590
sw x3, 0(x2) # store 0x78e0e590 in memory
flw f6, 0(x2) # load 0x78e0e590 from memory into f6
fdiv.s f7, f7, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0x3c0e490b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x28d8592d # load x3 with value 0x28d8592d
sw x3, 0(x2) # store 0x28d8592d in memory
flw f8, 0(x2) # load 0x28d8592d from memory into f8
li x3, 0x07757093 # load x3 with value 0x07757093
sw x3, 0(x2) # store 0x07757093 in memory
flw f9, 0(x2) # load 0x07757093 from memory into f9
fdiv.s f8, f8, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0x11f790d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5f264eda # load x3 with value 0x5f264eda
sw x3, 0(x2) # store 0x5f264eda in memory
flw f9, 0(x2) # load 0x5f264eda from memory into f9
li x3, 0xb7155092 # load x3 with value 0xb7155092
sw x3, 0(x2) # store 0xb7155092 in memory
flw f15, 0(x2) # load 0xb7155092 from memory into f15
fdiv.s f9, f9, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0x2e9e5575 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x51561e2d # load x3 with value 0x51561e2d
sw x3, 0(x2) # store 0x51561e2d in memory
flw f10, 0(x2) # load 0x51561e2d from memory into f10
li x3, 0x397a09bb # load x3 with value 0x397a09bb
sw x3, 0(x2) # store 0x397a09bb in memory
flw f28, 0(x2) # load 0x397a09bb from memory into f28
fdiv.s f10, f10, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0x18330db4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd87b7e31 # load x3 with value 0xd87b7e31
sw x3, 0(x2) # store 0xd87b7e31 in memory
flw f11, 0(x2) # load 0xd87b7e31 from memory into f11
li x3, 0x8aaa7292 # load x3 with value 0x8aaa7292
sw x3, 0(x2) # store 0x8aaa7292 in memory
flw f10, 0(x2) # load 0x8aaa7292 from memory into f10
fdiv.s f11, f11, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0xf1bdb702 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xddf7ab5d # load x3 with value 0xddf7ab5d
sw x3, 0(x2) # store 0xddf7ab5d in memory
flw f12, 0(x2) # load 0xddf7ab5d from memory into f12
li x3, 0x7f92ed26 # load x3 with value 0x7f92ed26
sw x3, 0(x2) # store 0x7f92ed26 in memory
flw f16, 0(x2) # load 0x7f92ed26 from memory into f16
fdiv.s f12, f12, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0x6f821321 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x54d3e75c # load x3 with value 0x54d3e75c
sw x3, 0(x2) # store 0x54d3e75c in memory
flw f13, 0(x2) # load 0x54d3e75c from memory into f13
li x3, 0x5c2a6429 # load x3 with value 0x5c2a6429
sw x3, 0(x2) # store 0x5c2a6429 in memory
flw f18, 0(x2) # load 0x5c2a6429 from memory into f18
fdiv.s f13, f13, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0x99c16300 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6b43e431 # load x3 with value 0x6b43e431
sw x3, 0(x2) # store 0x6b43e431 in memory
flw f14, 0(x2) # load 0x6b43e431 from memory into f14
li x3, 0xf81f28d9 # load x3 with value 0xf81f28d9
sw x3, 0(x2) # store 0xf81f28d9 in memory
flw f16, 0(x2) # load 0xf81f28d9 from memory into f16
fdiv.s f14, f14, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0x3e2ea9b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2874ba7e # load x3 with value 0x2874ba7e
sw x3, 0(x2) # store 0x2874ba7e in memory
flw f15, 0(x2) # load 0x2874ba7e from memory into f15
li x3, 0x14074437 # load x3 with value 0x14074437
sw x3, 0(x2) # store 0x14074437 in memory
flw f2, 0(x2) # load 0x14074437 from memory into f2
fdiv.s f15, f15, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0x88065ea5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb0f4e3fd # load x3 with value 0xb0f4e3fd
sw x3, 0(x2) # store 0xb0f4e3fd in memory
flw f16, 0(x2) # load 0xb0f4e3fd from memory into f16
li x3, 0x26cf0ad7 # load x3 with value 0x26cf0ad7
sw x3, 0(x2) # store 0x26cf0ad7 in memory
flw f18, 0(x2) # load 0x26cf0ad7 from memory into f18
fdiv.s f16, f16, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0x9c9a773a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x93fd7603 # load x3 with value 0x93fd7603
sw x3, 0(x2) # store 0x93fd7603 in memory
flw f17, 0(x2) # load 0x93fd7603 from memory into f17
li x3, 0x6de40450 # load x3 with value 0x6de40450
sw x3, 0(x2) # store 0x6de40450 in memory
flw f1, 0(x2) # load 0x6de40450 from memory into f1
fdiv.s f17, f17, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0x59c7e19c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9d45f1b9 # load x3 with value 0x9d45f1b9
sw x3, 0(x2) # store 0x9d45f1b9 in memory
flw f18, 0(x2) # load 0x9d45f1b9 from memory into f18
li x3, 0x81a16003 # load x3 with value 0x81a16003
sw x3, 0(x2) # store 0x81a16003 in memory
flw f10, 0(x2) # load 0x81a16003 from memory into f10
fdiv.s f18, f18, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0x3683060b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x68d6f1f9 # load x3 with value 0x68d6f1f9
sw x3, 0(x2) # store 0x68d6f1f9 in memory
flw f19, 0(x2) # load 0x68d6f1f9 from memory into f19
li x3, 0x1ab52272 # load x3 with value 0x1ab52272
sw x3, 0(x2) # store 0x1ab52272 in memory
flw f9, 0(x2) # load 0x1ab52272 from memory into f9
fdiv.s f19, f19, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0x099d3262 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x43409180 # load x3 with value 0x43409180
sw x3, 0(x2) # store 0x43409180 in memory
flw f20, 0(x2) # load 0x43409180 from memory into f20
li x3, 0xb6f1426a # load x3 with value 0xb6f1426a
sw x3, 0(x2) # store 0xb6f1426a in memory
flw f29, 0(x2) # load 0xb6f1426a from memory into f29
fdiv.s f20, f20, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0xf8e3b857 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x99df242b # load x3 with value 0x99df242b
sw x3, 0(x2) # store 0x99df242b in memory
flw f21, 0(x2) # load 0x99df242b from memory into f21
li x3, 0x5b89549c # load x3 with value 0x5b89549c
sw x3, 0(x2) # store 0x5b89549c in memory
flw f13, 0(x2) # load 0x5b89549c from memory into f13
fdiv.s f21, f21, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0x8db8fd54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x43b40ad4 # load x3 with value 0x43b40ad4
sw x3, 0(x2) # store 0x43b40ad4 in memory
flw f22, 0(x2) # load 0x43b40ad4 from memory into f22
li x3, 0xd3d90f28 # load x3 with value 0xd3d90f28
sw x3, 0(x2) # store 0xd3d90f28 in memory
flw f11, 0(x2) # load 0xd3d90f28 from memory into f11
fdiv.s f22, f22, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0xae2a1c51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1694e575 # load x3 with value 0x1694e575
sw x3, 0(x2) # store 0x1694e575 in memory
flw f23, 0(x2) # load 0x1694e575 from memory into f23
li x3, 0x4bd15063 # load x3 with value 0x4bd15063
sw x3, 0(x2) # store 0x4bd15063 in memory
flw f29, 0(x2) # load 0x4bd15063 from memory into f29
fdiv.s f23, f23, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0x37487263 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x904cf41d # load x3 with value 0x904cf41d
sw x3, 0(x2) # store 0x904cf41d in memory
flw f24, 0(x2) # load 0x904cf41d from memory into f24
li x3, 0x59c012c8 # load x3 with value 0x59c012c8
sw x3, 0(x2) # store 0x59c012c8 in memory
flw f5, 0(x2) # load 0x59c012c8 from memory into f5
fdiv.s f24, f24, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0xdd493cbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9332bdcf # load x3 with value 0x9332bdcf
sw x3, 0(x2) # store 0x9332bdcf in memory
flw f25, 0(x2) # load 0x9332bdcf from memory into f25
li x3, 0x9c2c178a # load x3 with value 0x9c2c178a
sw x3, 0(x2) # store 0x9c2c178a in memory
flw f19, 0(x2) # load 0x9c2c178a from memory into f19
fdiv.s f25, f25, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0x0f85d7e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbd8255bc # load x3 with value 0xbd8255bc
sw x3, 0(x2) # store 0xbd8255bc in memory
flw f26, 0(x2) # load 0xbd8255bc from memory into f26
li x3, 0x3345f325 # load x3 with value 0x3345f325
sw x3, 0(x2) # store 0x3345f325 in memory
flw f9, 0(x2) # load 0x3345f325 from memory into f9
fdiv.s f26, f26, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0xb27d6c44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9a6d9955 # load x3 with value 0x9a6d9955
sw x3, 0(x2) # store 0x9a6d9955 in memory
flw f27, 0(x2) # load 0x9a6d9955 from memory into f27
li x3, 0xf3291c85 # load x3 with value 0xf3291c85
sw x3, 0(x2) # store 0xf3291c85 in memory
flw f15, 0(x2) # load 0xf3291c85 from memory into f15
fdiv.s f27, f27, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0xf8ee33ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd530819f # load x3 with value 0xd530819f
sw x3, 0(x2) # store 0xd530819f in memory
flw f28, 0(x2) # load 0xd530819f from memory into f28
li x3, 0xe8ac068f # load x3 with value 0xe8ac068f
sw x3, 0(x2) # store 0xe8ac068f in memory
flw f22, 0(x2) # load 0xe8ac068f from memory into f22
fdiv.s f28, f28, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0x62be1543 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa401358c # load x3 with value 0xa401358c
sw x3, 0(x2) # store 0xa401358c in memory
flw f29, 0(x2) # load 0xa401358c from memory into f29
li x3, 0x21d7a318 # load x3 with value 0x21d7a318
sw x3, 0(x2) # store 0x21d7a318 in memory
flw f27, 0(x2) # load 0x21d7a318 from memory into f27
fdiv.s f29, f29, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0x52a8a0c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4c6d462d # load x3 with value 0x4c6d462d
sw x3, 0(x2) # store 0x4c6d462d in memory
flw f30, 0(x2) # load 0x4c6d462d from memory into f30
li x3, 0x20f6bba3 # load x3 with value 0x20f6bba3
sw x3, 0(x2) # store 0x20f6bba3 in memory
flw f25, 0(x2) # load 0x20f6bba3 from memory into f25
fdiv.s f30, f30, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0xaa2ca56c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xacd00c05 # load x3 with value 0xacd00c05
sw x3, 0(x2) # store 0xacd00c05 in memory
flw f31, 0(x2) # load 0xacd00c05 from memory into f31
li x3, 0x8b2ae338 # load x3 with value 0x8b2ae338
sw x3, 0(x2) # store 0x8b2ae338 in memory
flw f7, 0(x2) # load 0x8b2ae338 from memory into f7
fdiv.s f31, f31, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
li x0, 0xd71f1e8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0c170fe3 # load x3 with value 0x0c170fe3
sw x3, 0(x2) # store 0x0c170fe3 in memory
flw f11, 0(x2) # load 0x0c170fe3 from memory into f11
li x3, 0xc9534f08 # load x3 with value 0xc9534f08
sw x3, 0(x2) # store 0xc9534f08 in memory
flw f0, 0(x2) # load 0xc9534f08 from memory into f0
fdiv.s f0, f11, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
li x1, 0x7241d693 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xedad68de # load x3 with value 0xedad68de
sw x3, 0(x2) # store 0xedad68de in memory
flw f30, 0(x2) # load 0xedad68de from memory into f30
li x3, 0xf38fcab3 # load x3 with value 0xf38fcab3
sw x3, 0(x2) # store 0xf38fcab3 in memory
flw f1, 0(x2) # load 0xf38fcab3 from memory into f1
fdiv.s f1, f30, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
li x2, 0x33a9a5da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb6b0bc8a # load x3 with value 0xb6b0bc8a
sw x3, 0(x2) # store 0xb6b0bc8a in memory
flw f10, 0(x2) # load 0xb6b0bc8a from memory into f10
li x3, 0x4ac145f5 # load x3 with value 0x4ac145f5
sw x3, 0(x2) # store 0x4ac145f5 in memory
flw f2, 0(x2) # load 0x4ac145f5 from memory into f2
fdiv.s f2, f10, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
li x3, 0x3cb0a642 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa4839a7e # load x3 with value 0xa4839a7e
sw x3, 0(x2) # store 0xa4839a7e in memory
flw f9, 0(x2) # load 0xa4839a7e from memory into f9
li x3, 0x852e416f # load x3 with value 0x852e416f
sw x3, 0(x2) # store 0x852e416f in memory
flw f3, 0(x2) # load 0x852e416f from memory into f3
fdiv.s f3, f9, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
li x4, 0x8b9ad789 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x801509da # load x3 with value 0x801509da
sw x3, 0(x2) # store 0x801509da in memory
flw f14, 0(x2) # load 0x801509da from memory into f14
li x3, 0x33adf80c # load x3 with value 0x33adf80c
sw x3, 0(x2) # store 0x33adf80c in memory
flw f4, 0(x2) # load 0x33adf80c from memory into f4
fdiv.s f4, f14, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
li x5, 0xaaf27175 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x05fac4d8 # load x3 with value 0x05fac4d8
sw x3, 0(x2) # store 0x05fac4d8 in memory
flw f4, 0(x2) # load 0x05fac4d8 from memory into f4
li x3, 0x1960e6af # load x3 with value 0x1960e6af
sw x3, 0(x2) # store 0x1960e6af in memory
flw f5, 0(x2) # load 0x1960e6af from memory into f5
fdiv.s f5, f4, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
li x6, 0x984eaf8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9e546438 # load x3 with value 0x9e546438
sw x3, 0(x2) # store 0x9e546438 in memory
flw f19, 0(x2) # load 0x9e546438 from memory into f19
li x3, 0x7c6ddf9d # load x3 with value 0x7c6ddf9d
sw x3, 0(x2) # store 0x7c6ddf9d in memory
flw f6, 0(x2) # load 0x7c6ddf9d from memory into f6
fdiv.s f6, f19, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
li x7, 0x3b37595e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x53720ee1 # load x3 with value 0x53720ee1
sw x3, 0(x2) # store 0x53720ee1 in memory
flw f27, 0(x2) # load 0x53720ee1 from memory into f27
li x3, 0xdd2c7108 # load x3 with value 0xdd2c7108
sw x3, 0(x2) # store 0xdd2c7108 in memory
flw f7, 0(x2) # load 0xdd2c7108 from memory into f7
fdiv.s f7, f27, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
li x8, 0x2f434f29 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe4eee700 # load x3 with value 0xe4eee700
sw x3, 0(x2) # store 0xe4eee700 in memory
flw f18, 0(x2) # load 0xe4eee700 from memory into f18
li x3, 0xf5abc20d # load x3 with value 0xf5abc20d
sw x3, 0(x2) # store 0xf5abc20d in memory
flw f8, 0(x2) # load 0xf5abc20d from memory into f8
fdiv.s f8, f18, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
li x9, 0x5b0d93e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x069f01e6 # load x3 with value 0x069f01e6
sw x3, 0(x2) # store 0x069f01e6 in memory
flw f14, 0(x2) # load 0x069f01e6 from memory into f14
li x3, 0x21bc1401 # load x3 with value 0x21bc1401
sw x3, 0(x2) # store 0x21bc1401 in memory
flw f9, 0(x2) # load 0x21bc1401 from memory into f9
fdiv.s f9, f14, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
li x10, 0x2a21a977 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x428a9e77 # load x3 with value 0x428a9e77
sw x3, 0(x2) # store 0x428a9e77 in memory
flw f28, 0(x2) # load 0x428a9e77 from memory into f28
li x3, 0x9a356e55 # load x3 with value 0x9a356e55
sw x3, 0(x2) # store 0x9a356e55 in memory
flw f10, 0(x2) # load 0x9a356e55 from memory into f10
fdiv.s f10, f28, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
li x11, 0x07ac954c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7b97cb46 # load x3 with value 0x7b97cb46
sw x3, 0(x2) # store 0x7b97cb46 in memory
flw f20, 0(x2) # load 0x7b97cb46 from memory into f20
li x3, 0x607eaa25 # load x3 with value 0x607eaa25
sw x3, 0(x2) # store 0x607eaa25 in memory
flw f11, 0(x2) # load 0x607eaa25 from memory into f11
fdiv.s f11, f20, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
li x12, 0x4354b7d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3dce0dd4 # load x3 with value 0x3dce0dd4
sw x3, 0(x2) # store 0x3dce0dd4 in memory
flw f16, 0(x2) # load 0x3dce0dd4 from memory into f16
li x3, 0xd6123a65 # load x3 with value 0xd6123a65
sw x3, 0(x2) # store 0xd6123a65 in memory
flw f12, 0(x2) # load 0xd6123a65 from memory into f12
fdiv.s f12, f16, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
li x13, 0xda75aecb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8cfd99b9 # load x3 with value 0x8cfd99b9
sw x3, 0(x2) # store 0x8cfd99b9 in memory
flw f25, 0(x2) # load 0x8cfd99b9 from memory into f25
li x3, 0xbde3c261 # load x3 with value 0xbde3c261
sw x3, 0(x2) # store 0xbde3c261 in memory
flw f13, 0(x2) # load 0xbde3c261 from memory into f13
fdiv.s f13, f25, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
li x14, 0x9a87b898 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x76a27594 # load x3 with value 0x76a27594
sw x3, 0(x2) # store 0x76a27594 in memory
flw f2, 0(x2) # load 0x76a27594 from memory into f2
li x3, 0xb13febc4 # load x3 with value 0xb13febc4
sw x3, 0(x2) # store 0xb13febc4 in memory
flw f14, 0(x2) # load 0xb13febc4 from memory into f14
fdiv.s f14, f2, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
li x15, 0xfd9990bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6f651234 # load x3 with value 0x6f651234
sw x3, 0(x2) # store 0x6f651234 in memory
flw f13, 0(x2) # load 0x6f651234 from memory into f13
li x3, 0x4479afc9 # load x3 with value 0x4479afc9
sw x3, 0(x2) # store 0x4479afc9 in memory
flw f15, 0(x2) # load 0x4479afc9 from memory into f15
fdiv.s f15, f13, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
li x16, 0x7bd8e965 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x208b4fbb # load x3 with value 0x208b4fbb
sw x3, 0(x2) # store 0x208b4fbb in memory
flw f22, 0(x2) # load 0x208b4fbb from memory into f22
li x3, 0xac7bad7c # load x3 with value 0xac7bad7c
sw x3, 0(x2) # store 0xac7bad7c in memory
flw f16, 0(x2) # load 0xac7bad7c from memory into f16
fdiv.s f16, f22, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
li x17, 0xdba42bd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x57459cbe # load x3 with value 0x57459cbe
sw x3, 0(x2) # store 0x57459cbe in memory
flw f8, 0(x2) # load 0x57459cbe from memory into f8
li x3, 0x4d854d0a # load x3 with value 0x4d854d0a
sw x3, 0(x2) # store 0x4d854d0a in memory
flw f17, 0(x2) # load 0x4d854d0a from memory into f17
fdiv.s f17, f8, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
li x18, 0xf2504add # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x46a941d1 # load x3 with value 0x46a941d1
sw x3, 0(x2) # store 0x46a941d1 in memory
flw f6, 0(x2) # load 0x46a941d1 from memory into f6
li x3, 0xe92a1d94 # load x3 with value 0xe92a1d94
sw x3, 0(x2) # store 0xe92a1d94 in memory
flw f18, 0(x2) # load 0xe92a1d94 from memory into f18
fdiv.s f18, f6, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
li x19, 0xb6070ba3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x957a4278 # load x3 with value 0x957a4278
sw x3, 0(x2) # store 0x957a4278 in memory
flw f24, 0(x2) # load 0x957a4278 from memory into f24
li x3, 0xb9a0505d # load x3 with value 0xb9a0505d
sw x3, 0(x2) # store 0xb9a0505d in memory
flw f19, 0(x2) # load 0xb9a0505d from memory into f19
fdiv.s f19, f24, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
li x20, 0xb740d2ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa89ebd07 # load x3 with value 0xa89ebd07
sw x3, 0(x2) # store 0xa89ebd07 in memory
flw f1, 0(x2) # load 0xa89ebd07 from memory into f1
li x3, 0xb9e056a0 # load x3 with value 0xb9e056a0
sw x3, 0(x2) # store 0xb9e056a0 in memory
flw f20, 0(x2) # load 0xb9e056a0 from memory into f20
fdiv.s f20, f1, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
li x21, 0x73895328 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x07c3acf7 # load x3 with value 0x07c3acf7
sw x3, 0(x2) # store 0x07c3acf7 in memory
flw f27, 0(x2) # load 0x07c3acf7 from memory into f27
li x3, 0x6622570a # load x3 with value 0x6622570a
sw x3, 0(x2) # store 0x6622570a in memory
flw f21, 0(x2) # load 0x6622570a from memory into f21
fdiv.s f21, f27, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
li x22, 0x06d9f603 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x42adec8a # load x3 with value 0x42adec8a
sw x3, 0(x2) # store 0x42adec8a in memory
flw f6, 0(x2) # load 0x42adec8a from memory into f6
li x3, 0x6180656c # load x3 with value 0x6180656c
sw x3, 0(x2) # store 0x6180656c in memory
flw f22, 0(x2) # load 0x6180656c from memory into f22
fdiv.s f22, f6, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
li x23, 0x75019594 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9229842d # load x3 with value 0x9229842d
sw x3, 0(x2) # store 0x9229842d in memory
flw f24, 0(x2) # load 0x9229842d from memory into f24
li x3, 0xf19a4e33 # load x3 with value 0xf19a4e33
sw x3, 0(x2) # store 0xf19a4e33 in memory
flw f23, 0(x2) # load 0xf19a4e33 from memory into f23
fdiv.s f23, f24, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
li x24, 0x923e878e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xba84aeca # load x3 with value 0xba84aeca
sw x3, 0(x2) # store 0xba84aeca in memory
flw f22, 0(x2) # load 0xba84aeca from memory into f22
li x3, 0x37625466 # load x3 with value 0x37625466
sw x3, 0(x2) # store 0x37625466 in memory
flw f24, 0(x2) # load 0x37625466 from memory into f24
fdiv.s f24, f22, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
li x25, 0x9a617114 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5b3a4f22 # load x3 with value 0x5b3a4f22
sw x3, 0(x2) # store 0x5b3a4f22 in memory
flw f3, 0(x2) # load 0x5b3a4f22 from memory into f3
li x3, 0x57cb309d # load x3 with value 0x57cb309d
sw x3, 0(x2) # store 0x57cb309d in memory
flw f25, 0(x2) # load 0x57cb309d from memory into f25
fdiv.s f25, f3, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
li x26, 0xdd23aaa8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1f63bc82 # load x3 with value 0x1f63bc82
sw x3, 0(x2) # store 0x1f63bc82 in memory
flw f25, 0(x2) # load 0x1f63bc82 from memory into f25
li x3, 0x217feae6 # load x3 with value 0x217feae6
sw x3, 0(x2) # store 0x217feae6 in memory
flw f26, 0(x2) # load 0x217feae6 from memory into f26
fdiv.s f26, f25, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
li x27, 0xccbeb5b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xedc9c359 # load x3 with value 0xedc9c359
sw x3, 0(x2) # store 0xedc9c359 in memory
flw f31, 0(x2) # load 0xedc9c359 from memory into f31
li x3, 0x76cea145 # load x3 with value 0x76cea145
sw x3, 0(x2) # store 0x76cea145 in memory
flw f27, 0(x2) # load 0x76cea145 from memory into f27
fdiv.s f27, f31, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
li x28, 0x052f3f6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcd574b63 # load x3 with value 0xcd574b63
sw x3, 0(x2) # store 0xcd574b63 in memory
flw f24, 0(x2) # load 0xcd574b63 from memory into f24
li x3, 0xa3a62b86 # load x3 with value 0xa3a62b86
sw x3, 0(x2) # store 0xa3a62b86 in memory
flw f28, 0(x2) # load 0xa3a62b86 from memory into f28
fdiv.s f28, f24, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
li x29, 0xac82cda8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa4ace569 # load x3 with value 0xa4ace569
sw x3, 0(x2) # store 0xa4ace569 in memory
flw f25, 0(x2) # load 0xa4ace569 from memory into f25
li x3, 0x50df3000 # load x3 with value 0x50df3000
sw x3, 0(x2) # store 0x50df3000 in memory
flw f29, 0(x2) # load 0x50df3000 from memory into f29
fdiv.s f29, f25, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
li x30, 0xf5db02a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2ce70763 # load x3 with value 0x2ce70763
sw x3, 0(x2) # store 0x2ce70763 in memory
flw f8, 0(x2) # load 0x2ce70763 from memory into f8
li x3, 0x4d48480c # load x3 with value 0x4d48480c
sw x3, 0(x2) # store 0x4d48480c in memory
flw f30, 0(x2) # load 0x4d48480c from memory into f30
fdiv.s f30, f8, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
li x31, 0x68ead65e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4e3a63a9 # load x3 with value 0x4e3a63a9
sw x3, 0(x2) # store 0x4e3a63a9 in memory
flw f3, 0(x2) # load 0x4e3a63a9 from memory into f3
li x3, 0xd7bacaab # load x3 with value 0xd7bacaab
sw x3, 0(x2) # store 0xd7bacaab in memory
flw f31, 0(x2) # load 0xd7bacaab from memory into f31
fdiv.s f31, f3, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x9, 0x87b5031c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f1, 0(x2) # load 0x00000000 from memory into f1
li x3, 0xa094d1cc # load x3 with value 0xa094d1cc
sw x3, 0(x2) # store 0xa094d1cc in memory
flw f16, 0(x2) # load 0xa094d1cc from memory into f16
fdiv.s f9, f1, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
li x13, 0xed092c71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f5, 0(x2) # load 0x80000000 from memory into f5
li x3, 0x19782740 # load x3 with value 0x19782740
sw x3, 0(x2) # store 0x19782740 in memory
flw f21, 0(x2) # load 0x19782740 from memory into f21
fdiv.s f13, f5, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
li x8, 0x0d2c1cc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f5, 0(x2) # load 0x3f800000 from memory into f5
li x3, 0x3fdb28a1 # load x3 with value 0x3fdb28a1
sw x3, 0(x2) # store 0x3fdb28a1 in memory
flw f25, 0(x2) # load 0x3fdb28a1 from memory into f25
fdiv.s f8, f5, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
li x29, 0x886de562 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
li x3, 0x491d6f5e # load x3 with value 0x491d6f5e
sw x3, 0(x2) # store 0x491d6f5e in memory
flw f31, 0(x2) # load 0x491d6f5e from memory into f31
fdiv.s f29, f27, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
li x28, 0xecc6aec4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f15, 0(x2) # load 0x3fc00000 from memory into f15
li x3, 0x5b9d1edb # load x3 with value 0x5b9d1edb
sw x3, 0(x2) # store 0x5b9d1edb in memory
flw f1, 0(x2) # load 0x5b9d1edb from memory into f1
fdiv.s f28, f15, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
li x5, 0x8312433e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f15, 0(x2) # load 0xbfc00000 from memory into f15
li x3, 0xf470a697 # load x3 with value 0xf470a697
sw x3, 0(x2) # store 0xf470a697 in memory
flw f10, 0(x2) # load 0xf470a697 from memory into f10
fdiv.s f5, f15, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
li x20, 0x2c4cfce5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f28, 0(x2) # load 0x40000000 from memory into f28
li x3, 0x9f8c4c21 # load x3 with value 0x9f8c4c21
sw x3, 0(x2) # store 0x9f8c4c21 in memory
flw f6, 0(x2) # load 0x9f8c4c21 from memory into f6
fdiv.s f20, f28, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
li x13, 0x927bb3f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
li x3, 0x990076b3 # load x3 with value 0x990076b3
sw x3, 0(x2) # store 0x990076b3 in memory
flw f9, 0(x2) # load 0x990076b3 from memory into f9
fdiv.s f13, f31, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
li x13, 0xff76651c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f12, 0(x2) # load 0x00800000 from memory into f12
li x3, 0xa93dd7f3 # load x3 with value 0xa93dd7f3
sw x3, 0(x2) # store 0xa93dd7f3 in memory
flw f28, 0(x2) # load 0xa93dd7f3 from memory into f28
fdiv.s f13, f12, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
li x25, 0xfed5901c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f4, 0(x2) # load 0x80800000 from memory into f4
li x3, 0x1a9d01e7 # load x3 with value 0x1a9d01e7
sw x3, 0(x2) # store 0x1a9d01e7 in memory
flw f2, 0(x2) # load 0x1a9d01e7 from memory into f2
fdiv.s f25, f4, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
li x22, 0xf155dd2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f7, 0(x2) # load 0x7f7fffff from memory into f7
li x3, 0x2ac0d1b5 # load x3 with value 0x2ac0d1b5
sw x3, 0(x2) # store 0x2ac0d1b5 in memory
flw f29, 0(x2) # load 0x2ac0d1b5 from memory into f29
fdiv.s f22, f7, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
li x25, 0x479b2b4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f4, 0(x2) # load 0xff7fffff from memory into f4
li x3, 0x880c400a # load x3 with value 0x880c400a
sw x3, 0(x2) # store 0x880c400a in memory
flw f29, 0(x2) # load 0x880c400a from memory into f29
fdiv.s f25, f4, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
li x8, 0xe9a036ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f2, 0(x2) # load 0x007fffff from memory into f2
li x3, 0xfdbf034c # load x3 with value 0xfdbf034c
sw x3, 0(x2) # store 0xfdbf034c in memory
flw f30, 0(x2) # load 0xfdbf034c from memory into f30
fdiv.s f8, f2, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
li x1, 0x153cbf9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
li x3, 0xa25005c7 # load x3 with value 0xa25005c7
sw x3, 0(x2) # store 0xa25005c7 in memory
flw f20, 0(x2) # load 0xa25005c7 from memory into f20
fdiv.s f1, f3, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
li x22, 0x13aece8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
li x3, 0x6313c725 # load x3 with value 0x6313c725
sw x3, 0(x2) # store 0x6313c725 in memory
flw f17, 0(x2) # load 0x6313c725 from memory into f17
fdiv.s f22, f12, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
li x29, 0x04bebabc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f13, 0(x2) # load 0x80400000 from memory into f13
li x3, 0xa59a918d # load x3 with value 0xa59a918d
sw x3, 0(x2) # store 0xa59a918d in memory
flw f4, 0(x2) # load 0xa59a918d from memory into f4
fdiv.s f29, f13, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x3, 0x6520027f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f25, 0(x2) # load 0x00000001 from memory into f25
li x3, 0x811f52b4 # load x3 with value 0x811f52b4
sw x3, 0(x2) # store 0x811f52b4 in memory
flw f13, 0(x2) # load 0x811f52b4 from memory into f13
fdiv.s f3, f25, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
li x8, 0x7ce93b3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f2, 0(x2) # load 0x80000001 from memory into f2
li x3, 0xed464667 # load x3 with value 0xed464667
sw x3, 0(x2) # store 0xed464667 in memory
flw f19, 0(x2) # load 0xed464667 from memory into f19
fdiv.s f8, f2, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
li x25, 0x1f74a743 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f10, 0(x2) # load 0x7f800000 from memory into f10
li x3, 0xafa71296 # load x3 with value 0xafa71296
sw x3, 0(x2) # store 0xafa71296 in memory
flw f29, 0(x2) # load 0xafa71296 from memory into f29
fdiv.s f25, f10, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
li x26, 0xe604bef3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f12, 0(x2) # load 0xff800000 from memory into f12
li x3, 0xdc01ebf2 # load x3 with value 0xdc01ebf2
sw x3, 0(x2) # store 0xdc01ebf2 in memory
flw f16, 0(x2) # load 0xdc01ebf2 from memory into f16
fdiv.s f26, f12, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
li x29, 0xa24a9cee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f31, 0(x2) # load 0x7fc00000 from memory into f31
li x3, 0x80524d41 # load x3 with value 0x80524d41
sw x3, 0(x2) # store 0x80524d41 in memory
flw f24, 0(x2) # load 0x80524d41 from memory into f24
fdiv.s f29, f31, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
li x5, 0x52ad3dbb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f31, 0(x2) # load 0x7fffffff from memory into f31
li x3, 0xfba3fdec # load x3 with value 0xfba3fdec
sw x3, 0(x2) # store 0xfba3fdec in memory
flw f4, 0(x2) # load 0xfba3fdec from memory into f4
fdiv.s f5, f31, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
li x30, 0xec8114bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f9, 0(x2) # load 0x7f800001 from memory into f9
li x3, 0xe68fdcfc # load x3 with value 0xe68fdcfc
sw x3, 0(x2) # store 0xe68fdcfc in memory
flw f8, 0(x2) # load 0xe68fdcfc from memory into f8
fdiv.s f30, f9, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
li x9, 0xc300749d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f6, 0(x2) # load 0x7fbfffff from memory into f6
li x3, 0x393570b8 # load x3 with value 0x393570b8
sw x3, 0(x2) # store 0x393570b8 in memory
flw f27, 0(x2) # load 0x393570b8 from memory into f27
fdiv.s f9, f6, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
li x21, 0x4c51a572 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f17, 0(x2) # load 0x7ef8654f from memory into f17
li x3, 0xcb87736e # load x3 with value 0xcb87736e
sw x3, 0(x2) # store 0xcb87736e in memory
flw f4, 0(x2) # load 0xcb87736e from memory into f4
fdiv.s f21, f17, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
li x1, 0x1b106a3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
li x3, 0x732ea072 # load x3 with value 0x732ea072
sw x3, 0(x2) # store 0x732ea072 in memory
flw f4, 0(x2) # load 0x732ea072 from memory into f4
fdiv.s f1, f13, f4 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x5, 0x5ddd9669 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5083d901 # load x3 with value 0x5083d901
sw x3, 0(x2) # store 0x5083d901 in memory
flw f30, 0(x2) # load 0x5083d901 from memory into f30
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
fdiv.s f5, f30, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000000)
li x17, 0x1330ce2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0118d107 # load x3 with value 0x0118d107
sw x3, 0(x2) # store 0x0118d107 in memory
flw f11, 0(x2) # load 0x0118d107 from memory into f11
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f25, 0(x2) # load 0x80000000 from memory into f25
fdiv.s f17, f11, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
li x31, 0x65515069 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc2b8a573 # load x3 with value 0xc2b8a573
sw x3, 0(x2) # store 0xc2b8a573 in memory
flw f24, 0(x2) # load 0xc2b8a573 from memory into f24
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f15, 0(x2) # load 0x3f800000 from memory into f15
fdiv.s f31, f24, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbf800000)
li x3, 0x21e5166d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x26416974 # load x3 with value 0x26416974
sw x3, 0(x2) # store 0x26416974 in memory
flw f9, 0(x2) # load 0x26416974 from memory into f9
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f1, 0(x2) # load 0xbf800000 from memory into f1
fdiv.s f3, f9, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3fc00000)
li x12, 0x582f22a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6a1152a4 # load x3 with value 0x6a1152a4
sw x3, 0(x2) # store 0x6a1152a4 in memory
flw f5, 0(x2) # load 0x6a1152a4 from memory into f5
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f16, 0(x2) # load 0x3fc00000 from memory into f16
fdiv.s f12, f5, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbfc00000)
li x12, 0xbb836b4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa15f2b2f # load x3 with value 0xa15f2b2f
sw x3, 0(x2) # store 0xa15f2b2f in memory
flw f23, 0(x2) # load 0xa15f2b2f from memory into f23
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f2, 0(x2) # load 0xbfc00000 from memory into f2
fdiv.s f12, f23, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x40000000)
li x3, 0xa90026bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7aa3d6b4 # load x3 with value 0x7aa3d6b4
sw x3, 0(x2) # store 0x7aa3d6b4 in memory
flw f11, 0(x2) # load 0x7aa3d6b4 from memory into f11
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
fdiv.s f3, f11, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0000000)
li x25, 0x012d6ab5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb6cd0f25 # load x3 with value 0xb6cd0f25
sw x3, 0(x2) # store 0xb6cd0f25 in memory
flw f11, 0(x2) # load 0xb6cd0f25 from memory into f11
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f19, 0(x2) # load 0xc0000000 from memory into f19
fdiv.s f25, f11, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800000)
li x5, 0x5ff14483 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x96845b3c # load x3 with value 0x96845b3c
sw x3, 0(x2) # store 0x96845b3c in memory
flw f9, 0(x2) # load 0x96845b3c from memory into f9
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f10, 0(x2) # load 0x00800000 from memory into f10
fdiv.s f5, f9, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80800000)
li x25, 0xc29e9db6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0aad8074 # load x3 with value 0x0aad8074
sw x3, 0(x2) # store 0x0aad8074 in memory
flw f5, 0(x2) # load 0x0aad8074 from memory into f5
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f19, 0(x2) # load 0x80800000 from memory into f19
fdiv.s f25, f5, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f7fffff)
li x20, 0xb9b927d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x03f12455 # load x3 with value 0x03f12455
sw x3, 0(x2) # store 0x03f12455 in memory
flw f27, 0(x2) # load 0x03f12455 from memory into f27
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f31, 0(x2) # load 0x7f7fffff from memory into f31
fdiv.s f20, f27, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff7fffff)
li x17, 0xe1c516df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc9262ed8 # load x3 with value 0xc9262ed8
sw x3, 0(x2) # store 0xc9262ed8 in memory
flw f14, 0(x2) # load 0xc9262ed8 from memory into f14
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f22, 0(x2) # load 0xff7fffff from memory into f22
fdiv.s f17, f14, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffff)
li x28, 0xbbac492a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcb841bba # load x3 with value 0xcb841bba
sw x3, 0(x2) # store 0xcb841bba in memory
flw f23, 0(x2) # load 0xcb841bba from memory into f23
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f26, 0(x2) # load 0x007fffff from memory into f26
fdiv.s f28, f23, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x807fffff)
li x3, 0x823f194a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a7d986a # load x3 with value 0x5a7d986a
sw x3, 0(x2) # store 0x5a7d986a in memory
flw f25, 0(x2) # load 0x5a7d986a from memory into f25
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f15, 0(x2) # load 0x807fffff from memory into f15
fdiv.s f3, f25, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400000)
li x20, 0x29f7bb31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1e125866 # load x3 with value 0x1e125866
sw x3, 0(x2) # store 0x1e125866 in memory
flw f21, 0(x2) # load 0x1e125866 from memory into f21
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
fdiv.s f20, f21, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80400000)
li x4, 0x6ed24af6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf1ab3cbc # load x3 with value 0xf1ab3cbc
sw x3, 0(x2) # store 0xf1ab3cbc in memory
flw f25, 0(x2) # load 0xf1ab3cbc from memory into f25
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f27, 0(x2) # load 0x80400000 from memory into f27
fdiv.s f4, f25, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x28, 0x28098650 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfd1986f # load x3 with value 0xbfd1986f
sw x3, 0(x2) # store 0xbfd1986f in memory
flw f17, 0(x2) # load 0xbfd1986f from memory into f17
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f15, 0(x2) # load 0x00000001 from memory into f15
fdiv.s f28, f17, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000001)
li x26, 0x61868c44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd204bc33 # load x3 with value 0xd204bc33
sw x3, 0(x2) # store 0xd204bc33 in memory
flw f9, 0(x2) # load 0xd204bc33 from memory into f9
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
fdiv.s f26, f9, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800000)
li x1, 0x411f99cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x911dfacc # load x3 with value 0x911dfacc
sw x3, 0(x2) # store 0x911dfacc in memory
flw f2, 0(x2) # load 0x911dfacc from memory into f2
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f6, 0(x2) # load 0x7f800000 from memory into f6
fdiv.s f1, f2, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff800000)
li x30, 0xb9b337c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xca5e8c26 # load x3 with value 0xca5e8c26
sw x3, 0(x2) # store 0xca5e8c26 in memory
flw f16, 0(x2) # load 0xca5e8c26 from memory into f16
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
fdiv.s f30, f16, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fc00000)
li x5, 0xc0877707 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa066d764 # load x3 with value 0xa066d764
sw x3, 0(x2) # store 0xa066d764 in memory
flw f19, 0(x2) # load 0xa066d764 from memory into f19
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f4, 0(x2) # load 0x7fc00000 from memory into f4
fdiv.s f5, f19, f4 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff)
li x1, 0x7b7888e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa0aed0f6 # load x3 with value 0xa0aed0f6
sw x3, 0(x2) # store 0xa0aed0f6 in memory
flw f31, 0(x2) # load 0xa0aed0f6 from memory into f31
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f3, 0(x2) # load 0x7fffffff from memory into f3
fdiv.s f1, f31, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800001)
li x7, 0x8cf96fc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe37a9f5c # load x3 with value 0xe37a9f5c
sw x3, 0(x2) # store 0xe37a9f5c in memory
flw f1, 0(x2) # load 0xe37a9f5c from memory into f1
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f26, 0(x2) # load 0x7f800001 from memory into f26
fdiv.s f7, f1, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fbfffff)
li x6, 0xae6d10cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe86f8a44 # load x3 with value 0xe86f8a44
sw x3, 0(x2) # store 0xe86f8a44 in memory
flw f5, 0(x2) # load 0xe86f8a44 from memory into f5
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
fdiv.s f6, f5, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ef8654f)
li x18, 0x8c399d94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb95ff2d2 # load x3 with value 0xb95ff2d2
sw x3, 0(x2) # store 0xb95ff2d2 in memory
flw f13, 0(x2) # load 0xb95ff2d2 from memory into f13
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f5, 0(x2) # load 0x7ef8654f from memory into f5
fdiv.s f18, f13, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x813d9ab0)
li x4, 0xdc57ca0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1d7bdb28 # load x3 with value 0x1d7bdb28
sw x3, 0(x2) # store 0x1d7bdb28 in memory
flw f22, 0(x2) # load 0x1d7bdb28 from memory into f22
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f26, 0(x2) # load 0x813d9ab0 from memory into f26
fdiv.s f4, f22, f26 # perform operation

# Testcase cp_frm
li x19, 0x07797f9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc8f2c9de # load x3 with value 0xc8f2c9de
sw x3, 0(x2) # store 0xc8f2c9de in memory
flw f28, 0(x2) # load 0xc8f2c9de from memory into f28
li x3, 0xf545590d # load x3 with value 0xf545590d
sw x3, 0(x2) # store 0xf545590d in memory
flw f4, 0(x2) # load 0xf545590d from memory into f4
fdiv.s f19, f28, f4, dyn # perform operation
fdiv.s f19, f28, f4, rdn # perform operation
fdiv.s f19, f28, f4, rmm # perform operation
fdiv.s f19, f28, f4, rne # perform operation
fdiv.s f19, f28, f4, rtz # perform operation
fdiv.s f19, f28, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f28, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f28, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f28, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f28, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f28, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
li x22, 0x39153cc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f8, 0(x2) # load 0x00000000 from memory into f8
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f1, 0(x2) # load 0x00000000 from memory into f1
fdiv.s f22, f8, f1, dyn # perform operation
fdiv.s f22, f8, f1, rdn # perform operation
fdiv.s f22, f8, f1, rmm # perform operation
fdiv.s f22, f8, f1, rne # perform operation
fdiv.s f22, f8, f1, rtz # perform operation
fdiv.s f22, f8, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f8, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f8, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f8, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f8, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f8, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80000000)
li x18, 0xc65ce754 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f19, 0(x2) # load 0x00000000 from memory into f19
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f13, 0(x2) # load 0x80000000 from memory into f13
fdiv.s f18, f19, f13, dyn # perform operation
fdiv.s f18, f19, f13, rdn # perform operation
fdiv.s f18, f19, f13, rmm # perform operation
fdiv.s f18, f19, f13, rne # perform operation
fdiv.s f18, f19, f13, rtz # perform operation
fdiv.s f18, f19, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f19, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f19, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f19, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f19, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f19, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3f800000)
li x29, 0x17e1ee90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f30, 0(x2) # load 0x3f800000 from memory into f30
fdiv.s f29, f13, f30, dyn # perform operation
fdiv.s f29, f13, f30, rdn # perform operation
fdiv.s f29, f13, f30, rmm # perform operation
fdiv.s f29, f13, f30, rne # perform operation
fdiv.s f29, f13, f30, rtz # perform operation
fdiv.s f29, f13, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f13, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f13, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f13, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f13, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f13, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbf800000)
li x4, 0x5749d403 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f15, 0(x2) # load 0xbf800000 from memory into f15
fdiv.s f4, f31, f15, dyn # perform operation
fdiv.s f4, f31, f15, rdn # perform operation
fdiv.s f4, f31, f15, rmm # perform operation
fdiv.s f4, f31, f15, rne # perform operation
fdiv.s f4, f31, f15, rtz # perform operation
fdiv.s f4, f31, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f31, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f31, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f31, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f31, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f31, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3fc00000)
li x6, 0x7a5ef93a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f10, 0(x2) # load 0x00000000 from memory into f10
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f16, 0(x2) # load 0x3fc00000 from memory into f16
fdiv.s f6, f10, f16, dyn # perform operation
fdiv.s f6, f10, f16, rdn # perform operation
fdiv.s f6, f10, f16, rmm # perform operation
fdiv.s f6, f10, f16, rne # perform operation
fdiv.s f6, f10, f16, rtz # perform operation
fdiv.s f6, f10, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f10, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f10, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f10, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f10, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f10, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbfc00000)
li x31, 0x80ea98b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f2, 0(x2) # load 0x00000000 from memory into f2
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
fdiv.s f31, f2, f29, dyn # perform operation
fdiv.s f31, f2, f29, rdn # perform operation
fdiv.s f31, f2, f29, rmm # perform operation
fdiv.s f31, f2, f29, rne # perform operation
fdiv.s f31, f2, f29, rtz # perform operation
fdiv.s f31, f2, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f2, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f2, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f2, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f2, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f2, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x40000000)
li x12, 0x1d5bd829 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f27, 0(x2) # load 0x00000000 from memory into f27
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
fdiv.s f12, f27, f16, dyn # perform operation
fdiv.s f12, f27, f16, rdn # perform operation
fdiv.s f12, f27, f16, rmm # perform operation
fdiv.s f12, f27, f16, rne # perform operation
fdiv.s f12, f27, f16, rtz # perform operation
fdiv.s f12, f27, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f27, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f27, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f27, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f27, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f27, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc0000000)
li x19, 0x516cd9ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f1, 0(x2) # load 0x00000000 from memory into f1
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f18, 0(x2) # load 0xc0000000 from memory into f18
fdiv.s f19, f1, f18, dyn # perform operation
fdiv.s f19, f1, f18, rdn # perform operation
fdiv.s f19, f1, f18, rmm # perform operation
fdiv.s f19, f1, f18, rne # perform operation
fdiv.s f19, f1, f18, rtz # perform operation
fdiv.s f19, f1, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f1, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f1, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f1, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f1, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f1, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x800000)
li x21, 0x6ef298a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f7, 0(x2) # load 0x00000000 from memory into f7
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f24, 0(x2) # load 0x00800000 from memory into f24
fdiv.s f21, f7, f24, dyn # perform operation
fdiv.s f21, f7, f24, rdn # perform operation
fdiv.s f21, f7, f24, rmm # perform operation
fdiv.s f21, f7, f24, rne # perform operation
fdiv.s f21, f7, f24, rtz # perform operation
fdiv.s f21, f7, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f7, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f7, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f7, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f7, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f7, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80800000)
li x4, 0xe14b9b57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f26, 0(x2) # load 0x00000000 from memory into f26
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f31, 0(x2) # load 0x80800000 from memory into f31
fdiv.s f4, f26, f31, dyn # perform operation
fdiv.s f4, f26, f31, rdn # perform operation
fdiv.s f4, f26, f31, rmm # perform operation
fdiv.s f4, f26, f31, rne # perform operation
fdiv.s f4, f26, f31, rtz # perform operation
fdiv.s f4, f26, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f26, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f26, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f26, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f26, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f26, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f7fffff)
li x18, 0xa3054783 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f30, 0(x2) # load 0x7f7fffff from memory into f30
fdiv.s f18, f3, f30, dyn # perform operation
fdiv.s f18, f3, f30, rdn # perform operation
fdiv.s f18, f3, f30, rmm # perform operation
fdiv.s f18, f3, f30, rne # perform operation
fdiv.s f18, f3, f30, rtz # perform operation
fdiv.s f18, f3, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f3, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f3, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f3, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f3, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f3, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xff7fffff)
li x10, 0xf05249be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f1, 0(x2) # load 0x00000000 from memory into f1
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
fdiv.s f10, f1, f31, dyn # perform operation
fdiv.s f10, f1, f31, rdn # perform operation
fdiv.s f10, f1, f31, rmm # perform operation
fdiv.s f10, f1, f31, rne # perform operation
fdiv.s f10, f1, f31, rtz # perform operation
fdiv.s f10, f1, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f1, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f1, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f1, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f1, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f1, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffff)
li x28, 0x2e892878 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f2, 0(x2) # load 0x00000000 from memory into f2
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f24, 0(x2) # load 0x007fffff from memory into f24
fdiv.s f28, f2, f24, dyn # perform operation
fdiv.s f28, f2, f24, rdn # perform operation
fdiv.s f28, f2, f24, rmm # perform operation
fdiv.s f28, f2, f24, rne # perform operation
fdiv.s f28, f2, f24, rtz # perform operation
fdiv.s f28, f2, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f2, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f2, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f2, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f2, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f2, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x807fffff)
li x12, 0x61a057e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f8, 0(x2) # load 0x00000000 from memory into f8
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f31, 0(x2) # load 0x807fffff from memory into f31
fdiv.s f12, f8, f31, dyn # perform operation
fdiv.s f12, f8, f31, rdn # perform operation
fdiv.s f12, f8, f31, rmm # perform operation
fdiv.s f12, f8, f31, rne # perform operation
fdiv.s f12, f8, f31, rtz # perform operation
fdiv.s f12, f8, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f8, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f8, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f8, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f8, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f8, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x400000)
li x24, 0x021ebe67 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f26, 0(x2) # load 0x00000000 from memory into f26
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f11, 0(x2) # load 0x00400000 from memory into f11
fdiv.s f24, f26, f11, dyn # perform operation
fdiv.s f24, f26, f11, rdn # perform operation
fdiv.s f24, f26, f11, rmm # perform operation
fdiv.s f24, f26, f11, rne # perform operation
fdiv.s f24, f26, f11, rtz # perform operation
fdiv.s f24, f26, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f26, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f26, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f26, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f26, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f26, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80400000)
li x6, 0x32c93a80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f24, 0(x2) # load 0x00000000 from memory into f24
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f7, 0(x2) # load 0x80400000 from memory into f7
fdiv.s f6, f24, f7, dyn # perform operation
fdiv.s f6, f24, f7, rdn # perform operation
fdiv.s f6, f24, f7, rmm # perform operation
fdiv.s f6, f24, f7, rne # perform operation
fdiv.s f6, f24, f7, rtz # perform operation
fdiv.s f6, f24, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f24, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f24, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f24, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f24, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f24, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
li x23, 0x44e08947 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f4, 0(x2) # load 0x00000000 from memory into f4
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f27, 0(x2) # load 0x00000001 from memory into f27
fdiv.s f23, f4, f27, dyn # perform operation
fdiv.s f23, f4, f27, rdn # perform operation
fdiv.s f23, f4, f27, rmm # perform operation
fdiv.s f23, f4, f27, rne # perform operation
fdiv.s f23, f4, f27, rtz # perform operation
fdiv.s f23, f4, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f4, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f4, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f4, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f4, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f4, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80000001)
li x27, 0x0d76d293 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f12, 0(x2) # load 0x80000001 from memory into f12
fdiv.s f27, f15, f12, dyn # perform operation
fdiv.s f27, f15, f12, rdn # perform operation
fdiv.s f27, f15, f12, rmm # perform operation
fdiv.s f27, f15, f12, rne # perform operation
fdiv.s f27, f15, f12, rtz # perform operation
fdiv.s f27, f15, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f15, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f15, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f15, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f15, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f15, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f800000)
li x27, 0xd1c080b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f30, 0(x2) # load 0x00000000 from memory into f30
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f19, 0(x2) # load 0x7f800000 from memory into f19
fdiv.s f27, f30, f19, dyn # perform operation
fdiv.s f27, f30, f19, rdn # perform operation
fdiv.s f27, f30, f19, rmm # perform operation
fdiv.s f27, f30, f19, rne # perform operation
fdiv.s f27, f30, f19, rtz # perform operation
fdiv.s f27, f30, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f30, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f30, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f30, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f30, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f30, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xff800000)
li x26, 0x2b281a0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f2, 0(x2) # load 0x00000000 from memory into f2
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f11, 0(x2) # load 0xff800000 from memory into f11
fdiv.s f26, f2, f11, dyn # perform operation
fdiv.s f26, f2, f11, rdn # perform operation
fdiv.s f26, f2, f11, rmm # perform operation
fdiv.s f26, f2, f11, rne # perform operation
fdiv.s f26, f2, f11, rtz # perform operation
fdiv.s f26, f2, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f2, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f2, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f2, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f2, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f2, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fc00000)
li x21, 0x1f110ab5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f29, 0(x2) # load 0x7fc00000 from memory into f29
fdiv.s f21, f16, f29, dyn # perform operation
fdiv.s f21, f16, f29, rdn # perform operation
fdiv.s f21, f16, f29, rmm # perform operation
fdiv.s f21, f16, f29, rne # perform operation
fdiv.s f21, f16, f29, rtz # perform operation
fdiv.s f21, f16, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f16, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f16, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f16, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f16, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f16, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffffff)
li x13, 0x3a598cc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
fdiv.s f13, f9, f5, dyn # perform operation
fdiv.s f13, f9, f5, rdn # perform operation
fdiv.s f13, f9, f5, rmm # perform operation
fdiv.s f13, f9, f5, rne # perform operation
fdiv.s f13, f9, f5, rtz # perform operation
fdiv.s f13, f9, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f9, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f9, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f9, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f9, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f9, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f800001)
li x31, 0x684242c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f23, 0(x2) # load 0x00000000 from memory into f23
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f2, 0(x2) # load 0x7f800001 from memory into f2
fdiv.s f31, f23, f2, dyn # perform operation
fdiv.s f31, f23, f2, rdn # perform operation
fdiv.s f31, f23, f2, rmm # perform operation
fdiv.s f31, f23, f2, rne # perform operation
fdiv.s f31, f23, f2, rtz # perform operation
fdiv.s f31, f23, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f23, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f23, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f23, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f23, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f23, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fbfffff)
li x9, 0x204facb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f19, 0(x2) # load 0x7fbfffff from memory into f19
fdiv.s f9, f16, f19, dyn # perform operation
fdiv.s f9, f16, f19, rdn # perform operation
fdiv.s f9, f16, f19, rmm # perform operation
fdiv.s f9, f16, f19, rne # perform operation
fdiv.s f9, f16, f19, rtz # perform operation
fdiv.s f9, f16, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f16, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f16, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f16, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f16, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f16, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ef8654f)
li x1, 0x5ab2709f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
fdiv.s f1, f3, f13, dyn # perform operation
fdiv.s f1, f3, f13, rdn # perform operation
fdiv.s f1, f3, f13, rmm # perform operation
fdiv.s f1, f3, f13, rne # perform operation
fdiv.s f1, f3, f13, rtz # perform operation
fdiv.s f1, f3, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f3, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f3, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f3, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f3, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f3, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x813d9ab0)
li x23, 0x674d1539 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f12, 0(x2) # load 0x00000000 from memory into f12
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f8, 0(x2) # load 0x813d9ab0 from memory into f8
fdiv.s f23, f12, f8, dyn # perform operation
fdiv.s f23, f12, f8, rdn # perform operation
fdiv.s f23, f12, f8, rmm # perform operation
fdiv.s f23, f12, f8, rne # perform operation
fdiv.s f23, f12, f8, rtz # perform operation
fdiv.s f23, f12, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f12, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f12, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f12, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f12, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f12, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x0)
li x1, 0xfef73a2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f6, 0(x2) # load 0x80000000 from memory into f6
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f2, 0(x2) # load 0x00000000 from memory into f2
fdiv.s f1, f6, f2, dyn # perform operation
fdiv.s f1, f6, f2, rdn # perform operation
fdiv.s f1, f6, f2, rmm # perform operation
fdiv.s f1, f6, f2, rne # perform operation
fdiv.s f1, f6, f2, rtz # perform operation
fdiv.s f1, f6, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f6, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f6, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f6, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f6, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f6, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80000000)
li x10, 0xf0161cd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f26, 0(x2) # load 0x80000000 from memory into f26
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f21, 0(x2) # load 0x80000000 from memory into f21
fdiv.s f10, f26, f21, dyn # perform operation
fdiv.s f10, f26, f21, rdn # perform operation
fdiv.s f10, f26, f21, rmm # perform operation
fdiv.s f10, f26, f21, rne # perform operation
fdiv.s f10, f26, f21, rtz # perform operation
fdiv.s f10, f26, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f26, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f26, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f26, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f26, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f26, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x3f800000)
li x12, 0x4282c7b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f26, 0(x2) # load 0x80000000 from memory into f26
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f9, 0(x2) # load 0x3f800000 from memory into f9
fdiv.s f12, f26, f9, dyn # perform operation
fdiv.s f12, f26, f9, rdn # perform operation
fdiv.s f12, f26, f9, rmm # perform operation
fdiv.s f12, f26, f9, rne # perform operation
fdiv.s f12, f26, f9, rtz # perform operation
fdiv.s f12, f26, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f26, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f26, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f26, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f26, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f26, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xbf800000)
li x30, 0xa528ce8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f24, 0(x2) # load 0x80000000 from memory into f24
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f6, 0(x2) # load 0xbf800000 from memory into f6
fdiv.s f30, f24, f6, dyn # perform operation
fdiv.s f30, f24, f6, rdn # perform operation
fdiv.s f30, f24, f6, rmm # perform operation
fdiv.s f30, f24, f6, rne # perform operation
fdiv.s f30, f24, f6, rtz # perform operation
fdiv.s f30, f24, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f24, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f24, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f24, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f24, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f24, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x3fc00000)
li x22, 0x25c7617b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f4, 0(x2) # load 0x80000000 from memory into f4
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f2, 0(x2) # load 0x3fc00000 from memory into f2
fdiv.s f22, f4, f2, dyn # perform operation
fdiv.s f22, f4, f2, rdn # perform operation
fdiv.s f22, f4, f2, rmm # perform operation
fdiv.s f22, f4, f2, rne # perform operation
fdiv.s f22, f4, f2, rtz # perform operation
fdiv.s f22, f4, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f4, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f4, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f4, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f4, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f4, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xbfc00000)
li x8, 0xfdb34388 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f12, 0(x2) # load 0x80000000 from memory into f12
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f24, 0(x2) # load 0xbfc00000 from memory into f24
fdiv.s f8, f12, f24, dyn # perform operation
fdiv.s f8, f12, f24, rdn # perform operation
fdiv.s f8, f12, f24, rmm # perform operation
fdiv.s f8, f12, f24, rne # perform operation
fdiv.s f8, f12, f24, rtz # perform operation
fdiv.s f8, f12, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f12, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f12, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f12, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f12, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f12, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x40000000)
li x4, 0x5704d449 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f8, 0(x2) # load 0x80000000 from memory into f8
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f19, 0(x2) # load 0x40000000 from memory into f19
fdiv.s f4, f8, f19, dyn # perform operation
fdiv.s f4, f8, f19, rdn # perform operation
fdiv.s f4, f8, f19, rmm # perform operation
fdiv.s f4, f8, f19, rne # perform operation
fdiv.s f4, f8, f19, rtz # perform operation
fdiv.s f4, f8, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f8, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f8, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f8, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f8, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f8, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xc0000000)
li x24, 0xcaaf04c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f23, 0(x2) # load 0x80000000 from memory into f23
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f6, 0(x2) # load 0xc0000000 from memory into f6
fdiv.s f24, f23, f6, dyn # perform operation
fdiv.s f24, f23, f6, rdn # perform operation
fdiv.s f24, f23, f6, rmm # perform operation
fdiv.s f24, f23, f6, rne # perform operation
fdiv.s f24, f23, f6, rtz # perform operation
fdiv.s f24, f23, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f23, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f23, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f23, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f23, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f23, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x800000)
li x28, 0xada77112 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f30, 0(x2) # load 0x80000000 from memory into f30
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f16, 0(x2) # load 0x00800000 from memory into f16
fdiv.s f28, f30, f16, dyn # perform operation
fdiv.s f28, f30, f16, rdn # perform operation
fdiv.s f28, f30, f16, rmm # perform operation
fdiv.s f28, f30, f16, rne # perform operation
fdiv.s f28, f30, f16, rtz # perform operation
fdiv.s f28, f30, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f30, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f30, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f30, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f30, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f30, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80800000)
li x10, 0x4a404196 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f2, 0(x2) # load 0x80000000 from memory into f2
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f6, 0(x2) # load 0x80800000 from memory into f6
fdiv.s f10, f2, f6, dyn # perform operation
fdiv.s f10, f2, f6, rdn # perform operation
fdiv.s f10, f2, f6, rmm # perform operation
fdiv.s f10, f2, f6, rne # perform operation
fdiv.s f10, f2, f6, rtz # perform operation
fdiv.s f10, f2, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f2, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f2, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f2, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f2, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f2, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f7fffff)
li x20, 0xa3a07abf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f15, 0(x2) # load 0x80000000 from memory into f15
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f18, 0(x2) # load 0x7f7fffff from memory into f18
fdiv.s f20, f15, f18, dyn # perform operation
fdiv.s f20, f15, f18, rdn # perform operation
fdiv.s f20, f15, f18, rmm # perform operation
fdiv.s f20, f15, f18, rne # perform operation
fdiv.s f20, f15, f18, rtz # perform operation
fdiv.s f20, f15, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f15, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f15, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f15, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f15, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f15, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xff7fffff)
li x5, 0xd9b5cc7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f3, 0(x2) # load 0x80000000 from memory into f3
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
fdiv.s f5, f3, f11, dyn # perform operation
fdiv.s f5, f3, f11, rdn # perform operation
fdiv.s f5, f3, f11, rmm # perform operation
fdiv.s f5, f3, f11, rne # perform operation
fdiv.s f5, f3, f11, rtz # perform operation
fdiv.s f5, f3, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f3, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f3, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f3, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f3, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f3, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fffff)
li x4, 0x2db69890 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f21, 0(x2) # load 0x80000000 from memory into f21
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f7, 0(x2) # load 0x007fffff from memory into f7
fdiv.s f4, f21, f7, dyn # perform operation
fdiv.s f4, f21, f7, rdn # perform operation
fdiv.s f4, f21, f7, rmm # perform operation
fdiv.s f4, f21, f7, rne # perform operation
fdiv.s f4, f21, f7, rtz # perform operation
fdiv.s f4, f21, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f21, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f21, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f21, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f21, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f21, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x807fffff)
li x6, 0x90ead44c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f5, 0(x2) # load 0x80000000 from memory into f5
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f18, 0(x2) # load 0x807fffff from memory into f18
fdiv.s f6, f5, f18, dyn # perform operation
fdiv.s f6, f5, f18, rdn # perform operation
fdiv.s f6, f5, f18, rmm # perform operation
fdiv.s f6, f5, f18, rne # perform operation
fdiv.s f6, f5, f18, rtz # perform operation
fdiv.s f6, f5, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f5, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f5, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f5, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f5, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f5, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x400000)
li x13, 0x7799a7e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f7, 0(x2) # load 0x80000000 from memory into f7
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f16, 0(x2) # load 0x00400000 from memory into f16
fdiv.s f13, f7, f16, dyn # perform operation
fdiv.s f13, f7, f16, rdn # perform operation
fdiv.s f13, f7, f16, rmm # perform operation
fdiv.s f13, f7, f16, rne # perform operation
fdiv.s f13, f7, f16, rtz # perform operation
fdiv.s f13, f7, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f7, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f7, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f7, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f7, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f7, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80400000)
li x16, 0x17023f7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f20, 0(x2) # load 0x80000000 from memory into f20
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f27, 0(x2) # load 0x80400000 from memory into f27
fdiv.s f16, f20, f27, dyn # perform operation
fdiv.s f16, f20, f27, rdn # perform operation
fdiv.s f16, f20, f27, rmm # perform operation
fdiv.s f16, f20, f27, rne # perform operation
fdiv.s f16, f20, f27, rtz # perform operation
fdiv.s f16, f20, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f20, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f20, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f20, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f20, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f20, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x1)
li x11, 0x215cc49b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f29, 0(x2) # load 0x80000000 from memory into f29
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
fdiv.s f11, f29, f2, dyn # perform operation
fdiv.s f11, f29, f2, rdn # perform operation
fdiv.s f11, f29, f2, rmm # perform operation
fdiv.s f11, f29, f2, rne # perform operation
fdiv.s f11, f29, f2, rtz # perform operation
fdiv.s f11, f29, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f29, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f29, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f29, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f29, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f29, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80000001)
li x22, 0x9c5a7b85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f21, 0(x2) # load 0x80000000 from memory into f21
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
fdiv.s f22, f21, f31, dyn # perform operation
fdiv.s f22, f21, f31, rdn # perform operation
fdiv.s f22, f21, f31, rmm # perform operation
fdiv.s f22, f21, f31, rne # perform operation
fdiv.s f22, f21, f31, rtz # perform operation
fdiv.s f22, f21, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f21, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f21, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f21, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f21, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f21, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f800000)
li x22, 0xd7a9493b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f30, 0(x2) # load 0x80000000 from memory into f30
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f12, 0(x2) # load 0x7f800000 from memory into f12
fdiv.s f22, f30, f12, dyn # perform operation
fdiv.s f22, f30, f12, rdn # perform operation
fdiv.s f22, f30, f12, rmm # perform operation
fdiv.s f22, f30, f12, rne # perform operation
fdiv.s f22, f30, f12, rtz # perform operation
fdiv.s f22, f30, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f30, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f30, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f30, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f30, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f30, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xff800000)
li x5, 0xce87b47f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f1, 0(x2) # load 0x80000000 from memory into f1
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f16, 0(x2) # load 0xff800000 from memory into f16
fdiv.s f5, f1, f16, dyn # perform operation
fdiv.s f5, f1, f16, rdn # perform operation
fdiv.s f5, f1, f16, rmm # perform operation
fdiv.s f5, f1, f16, rne # perform operation
fdiv.s f5, f1, f16, rtz # perform operation
fdiv.s f5, f1, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f1, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f1, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f1, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f1, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f1, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fc00000)
li x2, 0x831f51f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f16, 0(x2) # load 0x80000000 from memory into f16
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f27, 0(x2) # load 0x7fc00000 from memory into f27
fdiv.s f2, f16, f27, dyn # perform operation
fdiv.s f2, f16, f27, rdn # perform operation
fdiv.s f2, f16, f27, rmm # perform operation
fdiv.s f2, f16, f27, rne # perform operation
fdiv.s f2, f16, f27, rtz # perform operation
fdiv.s f2, f16, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f16, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f16, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f16, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f16, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f16, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fffffff)
li x11, 0x5b426a22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f18, 0(x2) # load 0x80000000 from memory into f18
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f8, 0(x2) # load 0x7fffffff from memory into f8
fdiv.s f11, f18, f8, dyn # perform operation
fdiv.s f11, f18, f8, rdn # perform operation
fdiv.s f11, f18, f8, rmm # perform operation
fdiv.s f11, f18, f8, rne # perform operation
fdiv.s f11, f18, f8, rtz # perform operation
fdiv.s f11, f18, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f18, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f18, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f18, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f18, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f18, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f800001)
li x16, 0x943c2ebb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f19, 0(x2) # load 0x80000000 from memory into f19
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f24, 0(x2) # load 0x7f800001 from memory into f24
fdiv.s f16, f19, f24, dyn # perform operation
fdiv.s f16, f19, f24, rdn # perform operation
fdiv.s f16, f19, f24, rmm # perform operation
fdiv.s f16, f19, f24, rne # perform operation
fdiv.s f16, f19, f24, rtz # perform operation
fdiv.s f16, f19, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f19, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f19, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f19, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f19, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f19, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fbfffff)
li x12, 0x4caea5b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f22, 0(x2) # load 0x80000000 from memory into f22
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f14, 0(x2) # load 0x7fbfffff from memory into f14
fdiv.s f12, f22, f14, dyn # perform operation
fdiv.s f12, f22, f14, rdn # perform operation
fdiv.s f12, f22, f14, rmm # perform operation
fdiv.s f12, f22, f14, rne # perform operation
fdiv.s f12, f22, f14, rtz # perform operation
fdiv.s f12, f22, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f22, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f22, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f22, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f22, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f22, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7ef8654f)
li x7, 0x64b1d0b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f27, 0(x2) # load 0x80000000 from memory into f27
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f18, 0(x2) # load 0x7ef8654f from memory into f18
fdiv.s f7, f27, f18, dyn # perform operation
fdiv.s f7, f27, f18, rdn # perform operation
fdiv.s f7, f27, f18, rmm # perform operation
fdiv.s f7, f27, f18, rne # perform operation
fdiv.s f7, f27, f18, rtz # perform operation
fdiv.s f7, f27, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f27, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f27, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f27, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f27, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f27, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x813d9ab0)
li x4, 0xf74b8656 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f3, 0(x2) # load 0x80000000 from memory into f3
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f8, 0(x2) # load 0x813d9ab0 from memory into f8
fdiv.s f4, f3, f8, dyn # perform operation
fdiv.s f4, f3, f8, rdn # perform operation
fdiv.s f4, f3, f8, rmm # perform operation
fdiv.s f4, f3, f8, rne # perform operation
fdiv.s f4, f3, f8, rtz # perform operation
fdiv.s f4, f3, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f3, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f3, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f3, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f3, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f3, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x0)
li x23, 0x41286a89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f12, 0(x2) # load 0x3f800000 from memory into f12
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
fdiv.s f23, f12, f29, dyn # perform operation
fdiv.s f23, f12, f29, rdn # perform operation
fdiv.s f23, f12, f29, rmm # perform operation
fdiv.s f23, f12, f29, rne # perform operation
fdiv.s f23, f12, f29, rtz # perform operation
fdiv.s f23, f12, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f12, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f12, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f12, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f12, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f12, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80000000)
li x1, 0xe62e26fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f2, 0(x2) # load 0x80000000 from memory into f2
fdiv.s f1, f11, f2, dyn # perform operation
fdiv.s f1, f11, f2, rdn # perform operation
fdiv.s f1, f11, f2, rmm # perform operation
fdiv.s f1, f11, f2, rne # perform operation
fdiv.s f1, f11, f2, rtz # perform operation
fdiv.s f1, f11, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f11, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f11, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f11, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f11, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f11, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x3f800000)
li x1, 0x68cda366 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f25, 0(x2) # load 0x3f800000 from memory into f25
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f22, 0(x2) # load 0x3f800000 from memory into f22
fdiv.s f1, f25, f22, dyn # perform operation
fdiv.s f1, f25, f22, rdn # perform operation
fdiv.s f1, f25, f22, rmm # perform operation
fdiv.s f1, f25, f22, rne # perform operation
fdiv.s f1, f25, f22, rtz # perform operation
fdiv.s f1, f25, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f25, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f25, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f25, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f25, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f25, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xbf800000)
li x9, 0x2febcd53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f25, 0(x2) # load 0xbf800000 from memory into f25
fdiv.s f9, f24, f25, dyn # perform operation
fdiv.s f9, f24, f25, rdn # perform operation
fdiv.s f9, f24, f25, rmm # perform operation
fdiv.s f9, f24, f25, rne # perform operation
fdiv.s f9, f24, f25, rtz # perform operation
fdiv.s f9, f24, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f24, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f24, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f24, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f24, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f24, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x3fc00000)
li x11, 0x8458890a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f28, 0(x2) # load 0x3f800000 from memory into f28
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
fdiv.s f11, f28, f6, dyn # perform operation
fdiv.s f11, f28, f6, rdn # perform operation
fdiv.s f11, f28, f6, rmm # perform operation
fdiv.s f11, f28, f6, rne # perform operation
fdiv.s f11, f28, f6, rtz # perform operation
fdiv.s f11, f28, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f28, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f28, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f28, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f28, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f28, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xbfc00000)
li x25, 0xf1493940 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f30, 0(x2) # load 0x3f800000 from memory into f30
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f7, 0(x2) # load 0xbfc00000 from memory into f7
fdiv.s f25, f30, f7, dyn # perform operation
fdiv.s f25, f30, f7, rdn # perform operation
fdiv.s f25, f30, f7, rmm # perform operation
fdiv.s f25, f30, f7, rne # perform operation
fdiv.s f25, f30, f7, rtz # perform operation
fdiv.s f25, f30, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f30, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f30, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f30, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f30, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f30, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x40000000)
li x28, 0xf43665f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f31, 0(x2) # load 0x3f800000 from memory into f31
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f29, 0(x2) # load 0x40000000 from memory into f29
fdiv.s f28, f31, f29, dyn # perform operation
fdiv.s f28, f31, f29, rdn # perform operation
fdiv.s f28, f31, f29, rmm # perform operation
fdiv.s f28, f31, f29, rne # perform operation
fdiv.s f28, f31, f29, rtz # perform operation
fdiv.s f28, f31, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f31, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f31, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f31, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f31, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f31, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xc0000000)
li x10, 0xab523381 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f17, 0(x2) # load 0x3f800000 from memory into f17
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f5, 0(x2) # load 0xc0000000 from memory into f5
fdiv.s f10, f17, f5, dyn # perform operation
fdiv.s f10, f17, f5, rdn # perform operation
fdiv.s f10, f17, f5, rmm # perform operation
fdiv.s f10, f17, f5, rne # perform operation
fdiv.s f10, f17, f5, rtz # perform operation
fdiv.s f10, f17, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f17, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f17, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f17, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f17, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f17, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x800000)
li x9, 0xa9ca6466 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f8, 0(x2) # load 0x3f800000 from memory into f8
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f5, 0(x2) # load 0x00800000 from memory into f5
fdiv.s f9, f8, f5, dyn # perform operation
fdiv.s f9, f8, f5, rdn # perform operation
fdiv.s f9, f8, f5, rmm # perform operation
fdiv.s f9, f8, f5, rne # perform operation
fdiv.s f9, f8, f5, rtz # perform operation
fdiv.s f9, f8, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f8, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f8, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f8, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f8, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f8, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80800000)
li x8, 0xf95d2204 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f9, 0(x2) # load 0x3f800000 from memory into f9
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f17, 0(x2) # load 0x80800000 from memory into f17
fdiv.s f8, f9, f17, dyn # perform operation
fdiv.s f8, f9, f17, rdn # perform operation
fdiv.s f8, f9, f17, rmm # perform operation
fdiv.s f8, f9, f17, rne # perform operation
fdiv.s f8, f9, f17, rtz # perform operation
fdiv.s f8, f9, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f9, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f9, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f9, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f9, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f9, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f7fffff)
li x21, 0x96c6ef59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f29, 0(x2) # load 0x3f800000 from memory into f29
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f20, 0(x2) # load 0x7f7fffff from memory into f20
fdiv.s f21, f29, f20, dyn # perform operation
fdiv.s f21, f29, f20, rdn # perform operation
fdiv.s f21, f29, f20, rmm # perform operation
fdiv.s f21, f29, f20, rne # perform operation
fdiv.s f21, f29, f20, rtz # perform operation
fdiv.s f21, f29, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f29, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f29, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f29, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f29, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f29, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xff7fffff)
li x8, 0x19a72b04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f1, 0(x2) # load 0x3f800000 from memory into f1
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f24, 0(x2) # load 0xff7fffff from memory into f24
fdiv.s f8, f1, f24, dyn # perform operation
fdiv.s f8, f1, f24, rdn # perform operation
fdiv.s f8, f1, f24, rmm # perform operation
fdiv.s f8, f1, f24, rne # perform operation
fdiv.s f8, f1, f24, rtz # perform operation
fdiv.s f8, f1, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f1, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f1, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f1, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f1, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f1, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fffff)
li x23, 0xa078af8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f16, 0(x2) # load 0x3f800000 from memory into f16
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f25, 0(x2) # load 0x007fffff from memory into f25
fdiv.s f23, f16, f25, dyn # perform operation
fdiv.s f23, f16, f25, rdn # perform operation
fdiv.s f23, f16, f25, rmm # perform operation
fdiv.s f23, f16, f25, rne # perform operation
fdiv.s f23, f16, f25, rtz # perform operation
fdiv.s f23, f16, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f16, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f16, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f16, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f16, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f16, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x807fffff)
li x9, 0x04d0566d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f12, 0(x2) # load 0x807fffff from memory into f12
fdiv.s f9, f11, f12, dyn # perform operation
fdiv.s f9, f11, f12, rdn # perform operation
fdiv.s f9, f11, f12, rmm # perform operation
fdiv.s f9, f11, f12, rne # perform operation
fdiv.s f9, f11, f12, rtz # perform operation
fdiv.s f9, f11, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f11, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f11, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f11, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f11, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f11, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x400000)
li x12, 0x87d1e7b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f5, 0(x2) # load 0x3f800000 from memory into f5
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f23, 0(x2) # load 0x00400000 from memory into f23
fdiv.s f12, f5, f23, dyn # perform operation
fdiv.s f12, f5, f23, rdn # perform operation
fdiv.s f12, f5, f23, rmm # perform operation
fdiv.s f12, f5, f23, rne # perform operation
fdiv.s f12, f5, f23, rtz # perform operation
fdiv.s f12, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f5, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80400000)
li x18, 0x013f4719 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f27, 0(x2) # load 0x80400000 from memory into f27
fdiv.s f18, f11, f27, dyn # perform operation
fdiv.s f18, f11, f27, rdn # perform operation
fdiv.s f18, f11, f27, rmm # perform operation
fdiv.s f18, f11, f27, rne # perform operation
fdiv.s f18, f11, f27, rtz # perform operation
fdiv.s f18, f11, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f11, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f11, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f11, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f11, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f11, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x1)
li x17, 0x65863598 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f8, 0(x2) # load 0x00000001 from memory into f8
fdiv.s f17, f24, f8, dyn # perform operation
fdiv.s f17, f24, f8, rdn # perform operation
fdiv.s f17, f24, f8, rmm # perform operation
fdiv.s f17, f24, f8, rne # perform operation
fdiv.s f17, f24, f8, rtz # perform operation
fdiv.s f17, f24, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f24, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f24, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f24, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f24, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f24, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80000001)
li x17, 0x0ca01e08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f9, 0(x2) # load 0x3f800000 from memory into f9
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f2, 0(x2) # load 0x80000001 from memory into f2
fdiv.s f17, f9, f2, dyn # perform operation
fdiv.s f17, f9, f2, rdn # perform operation
fdiv.s f17, f9, f2, rmm # perform operation
fdiv.s f17, f9, f2, rne # perform operation
fdiv.s f17, f9, f2, rtz # perform operation
fdiv.s f17, f9, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f9, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f9, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f9, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f9, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f9, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f800000)
li x30, 0xae76a916 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f14, 0(x2) # load 0x3f800000 from memory into f14
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f13, 0(x2) # load 0x7f800000 from memory into f13
fdiv.s f30, f14, f13, dyn # perform operation
fdiv.s f30, f14, f13, rdn # perform operation
fdiv.s f30, f14, f13, rmm # perform operation
fdiv.s f30, f14, f13, rne # perform operation
fdiv.s f30, f14, f13, rtz # perform operation
fdiv.s f30, f14, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f14, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f14, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f14, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f14, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f14, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xff800000)
li x13, 0x6f63c008 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f5, 0(x2) # load 0x3f800000 from memory into f5
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f2, 0(x2) # load 0xff800000 from memory into f2
fdiv.s f13, f5, f2, dyn # perform operation
fdiv.s f13, f5, f2, rdn # perform operation
fdiv.s f13, f5, f2, rmm # perform operation
fdiv.s f13, f5, f2, rne # perform operation
fdiv.s f13, f5, f2, rtz # perform operation
fdiv.s f13, f5, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f5, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f5, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f5, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f5, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f5, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fc00000)
li x7, 0x486bb6b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f8, 0(x2) # load 0x3f800000 from memory into f8
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f31, 0(x2) # load 0x7fc00000 from memory into f31
fdiv.s f7, f8, f31, dyn # perform operation
fdiv.s f7, f8, f31, rdn # perform operation
fdiv.s f7, f8, f31, rmm # perform operation
fdiv.s f7, f8, f31, rne # perform operation
fdiv.s f7, f8, f31, rtz # perform operation
fdiv.s f7, f8, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f8, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f8, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f8, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f8, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f8, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fffffff)
li x23, 0x67940129 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f7, 0(x2) # load 0x3f800000 from memory into f7
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
fdiv.s f23, f7, f12, dyn # perform operation
fdiv.s f23, f7, f12, rdn # perform operation
fdiv.s f23, f7, f12, rmm # perform operation
fdiv.s f23, f7, f12, rne # perform operation
fdiv.s f23, f7, f12, rtz # perform operation
fdiv.s f23, f7, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f7, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f7, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f7, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f7, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f7, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f800001)
li x9, 0x1712fddf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f13, 0(x2) # load 0x7f800001 from memory into f13
fdiv.s f9, f24, f13, dyn # perform operation
fdiv.s f9, f24, f13, rdn # perform operation
fdiv.s f9, f24, f13, rmm # perform operation
fdiv.s f9, f24, f13, rne # perform operation
fdiv.s f9, f24, f13, rtz # perform operation
fdiv.s f9, f24, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f24, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f24, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f24, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f24, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f24, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fbfffff)
li x19, 0xcb9dab1c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f3, 0(x2) # load 0x3f800000 from memory into f3
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f14, 0(x2) # load 0x7fbfffff from memory into f14
fdiv.s f19, f3, f14, dyn # perform operation
fdiv.s f19, f3, f14, rdn # perform operation
fdiv.s f19, f3, f14, rmm # perform operation
fdiv.s f19, f3, f14, rne # perform operation
fdiv.s f19, f3, f14, rtz # perform operation
fdiv.s f19, f3, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f3, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f3, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f3, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f3, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f3, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7ef8654f)
li x1, 0xb1d8a2a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f12, 0(x2) # load 0x3f800000 from memory into f12
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f15, 0(x2) # load 0x7ef8654f from memory into f15
fdiv.s f1, f12, f15, dyn # perform operation
fdiv.s f1, f12, f15, rdn # perform operation
fdiv.s f1, f12, f15, rmm # perform operation
fdiv.s f1, f12, f15, rne # perform operation
fdiv.s f1, f12, f15, rtz # perform operation
fdiv.s f1, f12, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f12, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f12, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f12, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f12, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f12, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x813d9ab0)
li x18, 0x2dc48770 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f5, 0(x2) # load 0x3f800000 from memory into f5
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f11, 0(x2) # load 0x813d9ab0 from memory into f11
fdiv.s f18, f5, f11, dyn # perform operation
fdiv.s f18, f5, f11, rdn # perform operation
fdiv.s f18, f5, f11, rmm # perform operation
fdiv.s f18, f5, f11, rne # perform operation
fdiv.s f18, f5, f11, rtz # perform operation
fdiv.s f18, f5, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f5, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f5, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f5, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f5, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f5, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x0)
li x24, 0xf5bfb988 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f16, 0(x2) # load 0xbf800000 from memory into f16
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f4, 0(x2) # load 0x00000000 from memory into f4
fdiv.s f24, f16, f4, dyn # perform operation
fdiv.s f24, f16, f4, rdn # perform operation
fdiv.s f24, f16, f4, rmm # perform operation
fdiv.s f24, f16, f4, rne # perform operation
fdiv.s f24, f16, f4, rtz # perform operation
fdiv.s f24, f16, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f16, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f16, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f16, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f16, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f16, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80000000)
li x22, 0x5883d105 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f12, 0(x2) # load 0xbf800000 from memory into f12
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f28, 0(x2) # load 0x80000000 from memory into f28
fdiv.s f22, f12, f28, dyn # perform operation
fdiv.s f22, f12, f28, rdn # perform operation
fdiv.s f22, f12, f28, rmm # perform operation
fdiv.s f22, f12, f28, rne # perform operation
fdiv.s f22, f12, f28, rtz # perform operation
fdiv.s f22, f12, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f12, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f12, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f12, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f12, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f12, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x3f800000)
li x11, 0xf3155159 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f26, 0(x2) # load 0xbf800000 from memory into f26
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f12, 0(x2) # load 0x3f800000 from memory into f12
fdiv.s f11, f26, f12, dyn # perform operation
fdiv.s f11, f26, f12, rdn # perform operation
fdiv.s f11, f26, f12, rmm # perform operation
fdiv.s f11, f26, f12, rne # perform operation
fdiv.s f11, f26, f12, rtz # perform operation
fdiv.s f11, f26, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f26, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f26, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f26, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f26, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f26, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xbf800000)
li x11, 0xfed7fff7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f6, 0(x2) # load 0xbf800000 from memory into f6
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
fdiv.s f11, f6, f27, dyn # perform operation
fdiv.s f11, f6, f27, rdn # perform operation
fdiv.s f11, f6, f27, rmm # perform operation
fdiv.s f11, f6, f27, rne # perform operation
fdiv.s f11, f6, f27, rtz # perform operation
fdiv.s f11, f6, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f6, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f6, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f6, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f6, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f6, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x3fc00000)
li x28, 0x0ecf3034 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f30, 0(x2) # load 0xbf800000 from memory into f30
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f2, 0(x2) # load 0x3fc00000 from memory into f2
fdiv.s f28, f30, f2, dyn # perform operation
fdiv.s f28, f30, f2, rdn # perform operation
fdiv.s f28, f30, f2, rmm # perform operation
fdiv.s f28, f30, f2, rne # perform operation
fdiv.s f28, f30, f2, rtz # perform operation
fdiv.s f28, f30, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f30, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f30, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f30, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f30, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f30, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xbfc00000)
li x31, 0x50b6f211 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f13, 0(x2) # load 0xbf800000 from memory into f13
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
fdiv.s f31, f13, f20, dyn # perform operation
fdiv.s f31, f13, f20, rdn # perform operation
fdiv.s f31, f13, f20, rmm # perform operation
fdiv.s f31, f13, f20, rne # perform operation
fdiv.s f31, f13, f20, rtz # perform operation
fdiv.s f31, f13, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f13, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f13, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f13, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f13, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f13, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x40000000)
li x27, 0x605b49aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f25, 0(x2) # load 0xbf800000 from memory into f25
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f31, 0(x2) # load 0x40000000 from memory into f31
fdiv.s f27, f25, f31, dyn # perform operation
fdiv.s f27, f25, f31, rdn # perform operation
fdiv.s f27, f25, f31, rmm # perform operation
fdiv.s f27, f25, f31, rne # perform operation
fdiv.s f27, f25, f31, rtz # perform operation
fdiv.s f27, f25, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f25, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f25, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f25, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f25, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f25, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xc0000000)
li x6, 0xf10a0e52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f7, 0(x2) # load 0xbf800000 from memory into f7
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f3, 0(x2) # load 0xc0000000 from memory into f3
fdiv.s f6, f7, f3, dyn # perform operation
fdiv.s f6, f7, f3, rdn # perform operation
fdiv.s f6, f7, f3, rmm # perform operation
fdiv.s f6, f7, f3, rne # perform operation
fdiv.s f6, f7, f3, rtz # perform operation
fdiv.s f6, f7, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f7, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f7, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f7, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f7, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f7, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x800000)
li x27, 0xde611885 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f20, 0(x2) # load 0xbf800000 from memory into f20
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
fdiv.s f27, f20, f22, dyn # perform operation
fdiv.s f27, f20, f22, rdn # perform operation
fdiv.s f27, f20, f22, rmm # perform operation
fdiv.s f27, f20, f22, rne # perform operation
fdiv.s f27, f20, f22, rtz # perform operation
fdiv.s f27, f20, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f20, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f20, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f20, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f20, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f20, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80800000)
li x14, 0x2ed206b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f30, 0(x2) # load 0xbf800000 from memory into f30
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f25, 0(x2) # load 0x80800000 from memory into f25
fdiv.s f14, f30, f25, dyn # perform operation
fdiv.s f14, f30, f25, rdn # perform operation
fdiv.s f14, f30, f25, rmm # perform operation
fdiv.s f14, f30, f25, rne # perform operation
fdiv.s f14, f30, f25, rtz # perform operation
fdiv.s f14, f30, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f30, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f30, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f30, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f30, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f30, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f7fffff)
li x30, 0x0ab1645e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f23, 0(x2) # load 0xbf800000 from memory into f23
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f25, 0(x2) # load 0x7f7fffff from memory into f25
fdiv.s f30, f23, f25, dyn # perform operation
fdiv.s f30, f23, f25, rdn # perform operation
fdiv.s f30, f23, f25, rmm # perform operation
fdiv.s f30, f23, f25, rne # perform operation
fdiv.s f30, f23, f25, rtz # perform operation
fdiv.s f30, f23, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f23, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f23, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f23, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f23, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f23, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xff7fffff)
li x14, 0x2c19b06c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f8, 0(x2) # load 0xbf800000 from memory into f8
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
fdiv.s f14, f8, f11, dyn # perform operation
fdiv.s f14, f8, f11, rdn # perform operation
fdiv.s f14, f8, f11, rmm # perform operation
fdiv.s f14, f8, f11, rne # perform operation
fdiv.s f14, f8, f11, rtz # perform operation
fdiv.s f14, f8, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f8, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f8, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f8, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f8, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f8, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fffff)
li x18, 0x67c27108 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f15, 0(x2) # load 0xbf800000 from memory into f15
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f11, 0(x2) # load 0x007fffff from memory into f11
fdiv.s f18, f15, f11, dyn # perform operation
fdiv.s f18, f15, f11, rdn # perform operation
fdiv.s f18, f15, f11, rmm # perform operation
fdiv.s f18, f15, f11, rne # perform operation
fdiv.s f18, f15, f11, rtz # perform operation
fdiv.s f18, f15, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f15, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f15, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f15, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f15, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f15, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x807fffff)
li x7, 0x5f4dbc17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f13, 0(x2) # load 0xbf800000 from memory into f13
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
fdiv.s f7, f13, f3, dyn # perform operation
fdiv.s f7, f13, f3, rdn # perform operation
fdiv.s f7, f13, f3, rmm # perform operation
fdiv.s f7, f13, f3, rne # perform operation
fdiv.s f7, f13, f3, rtz # perform operation
fdiv.s f7, f13, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f13, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f13, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f13, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f13, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f13, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x400000)
li x11, 0xf7c5b1e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
fdiv.s f11, f27, f25, dyn # perform operation
fdiv.s f11, f27, f25, rdn # perform operation
fdiv.s f11, f27, f25, rmm # perform operation
fdiv.s f11, f27, f25, rne # perform operation
fdiv.s f11, f27, f25, rtz # perform operation
fdiv.s f11, f27, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f27, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f27, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f27, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f27, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f27, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80400000)
li x24, 0x7c71fce9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f6, 0(x2) # load 0xbf800000 from memory into f6
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f5, 0(x2) # load 0x80400000 from memory into f5
fdiv.s f24, f6, f5, dyn # perform operation
fdiv.s f24, f6, f5, rdn # perform operation
fdiv.s f24, f6, f5, rmm # perform operation
fdiv.s f24, f6, f5, rne # perform operation
fdiv.s f24, f6, f5, rtz # perform operation
fdiv.s f24, f6, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f6, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f6, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f6, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f6, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f6, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x1)
li x11, 0x247cb165 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f7, 0(x2) # load 0xbf800000 from memory into f7
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f1, 0(x2) # load 0x00000001 from memory into f1
fdiv.s f11, f7, f1, dyn # perform operation
fdiv.s f11, f7, f1, rdn # perform operation
fdiv.s f11, f7, f1, rmm # perform operation
fdiv.s f11, f7, f1, rne # perform operation
fdiv.s f11, f7, f1, rtz # perform operation
fdiv.s f11, f7, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f7, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f7, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f7, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f7, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f7, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80000001)
li x14, 0x1ce1b0d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f4, 0(x2) # load 0x80000001 from memory into f4
fdiv.s f14, f27, f4, dyn # perform operation
fdiv.s f14, f27, f4, rdn # perform operation
fdiv.s f14, f27, f4, rmm # perform operation
fdiv.s f14, f27, f4, rne # perform operation
fdiv.s f14, f27, f4, rtz # perform operation
fdiv.s f14, f27, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f27, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f27, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f27, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f27, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f27, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f800000)
li x20, 0x84ce1afc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f28, 0(x2) # load 0xbf800000 from memory into f28
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f5, 0(x2) # load 0x7f800000 from memory into f5
fdiv.s f20, f28, f5, dyn # perform operation
fdiv.s f20, f28, f5, rdn # perform operation
fdiv.s f20, f28, f5, rmm # perform operation
fdiv.s f20, f28, f5, rne # perform operation
fdiv.s f20, f28, f5, rtz # perform operation
fdiv.s f20, f28, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f28, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f28, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f28, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f28, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f28, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xff800000)
li x18, 0xe79af247 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f24, 0(x2) # load 0xbf800000 from memory into f24
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f26, 0(x2) # load 0xff800000 from memory into f26
fdiv.s f18, f24, f26, dyn # perform operation
fdiv.s f18, f24, f26, rdn # perform operation
fdiv.s f18, f24, f26, rmm # perform operation
fdiv.s f18, f24, f26, rne # perform operation
fdiv.s f18, f24, f26, rtz # perform operation
fdiv.s f18, f24, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f24, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f24, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f24, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f24, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f24, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fc00000)
li x16, 0xfa67eb3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f3, 0(x2) # load 0xbf800000 from memory into f3
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f23, 0(x2) # load 0x7fc00000 from memory into f23
fdiv.s f16, f3, f23, dyn # perform operation
fdiv.s f16, f3, f23, rdn # perform operation
fdiv.s f16, f3, f23, rmm # perform operation
fdiv.s f16, f3, f23, rne # perform operation
fdiv.s f16, f3, f23, rtz # perform operation
fdiv.s f16, f3, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f3, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f3, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f3, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f3, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f3, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fffffff)
li x10, 0xb54dd1b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
fdiv.s f10, f9, f19, dyn # perform operation
fdiv.s f10, f9, f19, rdn # perform operation
fdiv.s f10, f9, f19, rmm # perform operation
fdiv.s f10, f9, f19, rne # perform operation
fdiv.s f10, f9, f19, rtz # perform operation
fdiv.s f10, f9, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f9, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f9, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f9, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f9, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f9, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f800001)
li x20, 0x6d88ddca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f30, 0(x2) # load 0xbf800000 from memory into f30
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f18, 0(x2) # load 0x7f800001 from memory into f18
fdiv.s f20, f30, f18, dyn # perform operation
fdiv.s f20, f30, f18, rdn # perform operation
fdiv.s f20, f30, f18, rmm # perform operation
fdiv.s f20, f30, f18, rne # perform operation
fdiv.s f20, f30, f18, rtz # perform operation
fdiv.s f20, f30, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f30, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f30, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f30, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f30, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f30, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fbfffff)
li x11, 0x431b4312 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f14, 0(x2) # load 0xbf800000 from memory into f14
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f27, 0(x2) # load 0x7fbfffff from memory into f27
fdiv.s f11, f14, f27, dyn # perform operation
fdiv.s f11, f14, f27, rdn # perform operation
fdiv.s f11, f14, f27, rmm # perform operation
fdiv.s f11, f14, f27, rne # perform operation
fdiv.s f11, f14, f27, rtz # perform operation
fdiv.s f11, f14, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f14, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f14, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f14, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f14, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f14, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7ef8654f)
li x4, 0x6df95141 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f23, 0(x2) # load 0xbf800000 from memory into f23
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f26, 0(x2) # load 0x7ef8654f from memory into f26
fdiv.s f4, f23, f26, dyn # perform operation
fdiv.s f4, f23, f26, rdn # perform operation
fdiv.s f4, f23, f26, rmm # perform operation
fdiv.s f4, f23, f26, rne # perform operation
fdiv.s f4, f23, f26, rtz # perform operation
fdiv.s f4, f23, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f23, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f23, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f23, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f23, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f23, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x813d9ab0)
li x4, 0x7cd7317f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f30, 0(x2) # load 0xbf800000 from memory into f30
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
fdiv.s f4, f30, f22, dyn # perform operation
fdiv.s f4, f30, f22, rdn # perform operation
fdiv.s f4, f30, f22, rmm # perform operation
fdiv.s f4, f30, f22, rne # perform operation
fdiv.s f4, f30, f22, rtz # perform operation
fdiv.s f4, f30, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f30, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f30, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f30, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f30, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f30, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x0)
li x7, 0x395fcf9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f4, 0(x2) # load 0x3fc00000 from memory into f4
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f22, 0(x2) # load 0x00000000 from memory into f22
fdiv.s f7, f4, f22, dyn # perform operation
fdiv.s f7, f4, f22, rdn # perform operation
fdiv.s f7, f4, f22, rmm # perform operation
fdiv.s f7, f4, f22, rne # perform operation
fdiv.s f7, f4, f22, rtz # perform operation
fdiv.s f7, f4, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f4, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f4, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f4, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f4, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f4, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80000000)
li x28, 0x30c4a000 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f1, 0(x2) # load 0x3fc00000 from memory into f1
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f9, 0(x2) # load 0x80000000 from memory into f9
fdiv.s f28, f1, f9, dyn # perform operation
fdiv.s f28, f1, f9, rdn # perform operation
fdiv.s f28, f1, f9, rmm # perform operation
fdiv.s f28, f1, f9, rne # perform operation
fdiv.s f28, f1, f9, rtz # perform operation
fdiv.s f28, f1, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f1, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f1, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f1, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f1, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f1, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x3f800000)
li x23, 0xfb260e73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f22, 0(x2) # load 0x3f800000 from memory into f22
fdiv.s f23, f13, f22, dyn # perform operation
fdiv.s f23, f13, f22, rdn # perform operation
fdiv.s f23, f13, f22, rmm # perform operation
fdiv.s f23, f13, f22, rne # perform operation
fdiv.s f23, f13, f22, rtz # perform operation
fdiv.s f23, f13, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f13, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f13, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f13, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f13, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f13, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xbf800000)
li x12, 0xffbc73fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f26, 0(x2) # load 0x3fc00000 from memory into f26
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f30, 0(x2) # load 0xbf800000 from memory into f30
fdiv.s f12, f26, f30, dyn # perform operation
fdiv.s f12, f26, f30, rdn # perform operation
fdiv.s f12, f26, f30, rmm # perform operation
fdiv.s f12, f26, f30, rne # perform operation
fdiv.s f12, f26, f30, rtz # perform operation
fdiv.s f12, f26, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f26, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f26, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f26, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f26, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f26, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x3fc00000)
li x10, 0x92d67fec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f22, 0(x2) # load 0x3fc00000 from memory into f22
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f11, 0(x2) # load 0x3fc00000 from memory into f11
fdiv.s f10, f22, f11, dyn # perform operation
fdiv.s f10, f22, f11, rdn # perform operation
fdiv.s f10, f22, f11, rmm # perform operation
fdiv.s f10, f22, f11, rne # perform operation
fdiv.s f10, f22, f11, rtz # perform operation
fdiv.s f10, f22, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f22, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f22, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f22, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f22, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f22, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xbfc00000)
li x5, 0xef4ea15a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f25, 0(x2) # load 0x3fc00000 from memory into f25
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f22, 0(x2) # load 0xbfc00000 from memory into f22
fdiv.s f5, f25, f22, dyn # perform operation
fdiv.s f5, f25, f22, rdn # perform operation
fdiv.s f5, f25, f22, rmm # perform operation
fdiv.s f5, f25, f22, rne # perform operation
fdiv.s f5, f25, f22, rtz # perform operation
fdiv.s f5, f25, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f25, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f25, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f25, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f25, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f25, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x40000000)
li x1, 0x2911c755 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f30, 0(x2) # load 0x3fc00000 from memory into f30
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f7, 0(x2) # load 0x40000000 from memory into f7
fdiv.s f1, f30, f7, dyn # perform operation
fdiv.s f1, f30, f7, rdn # perform operation
fdiv.s f1, f30, f7, rmm # perform operation
fdiv.s f1, f30, f7, rne # perform operation
fdiv.s f1, f30, f7, rtz # perform operation
fdiv.s f1, f30, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f30, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f30, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f30, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f30, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f30, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xc0000000)
li x28, 0xe6b5892e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f23, 0(x2) # load 0x3fc00000 from memory into f23
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f27, 0(x2) # load 0xc0000000 from memory into f27
fdiv.s f28, f23, f27, dyn # perform operation
fdiv.s f28, f23, f27, rdn # perform operation
fdiv.s f28, f23, f27, rmm # perform operation
fdiv.s f28, f23, f27, rne # perform operation
fdiv.s f28, f23, f27, rtz # perform operation
fdiv.s f28, f23, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f23, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f23, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f23, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f23, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f23, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x800000)
li x12, 0x41d2e907 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f28, 0(x2) # load 0x3fc00000 from memory into f28
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f29, 0(x2) # load 0x00800000 from memory into f29
fdiv.s f12, f28, f29, dyn # perform operation
fdiv.s f12, f28, f29, rdn # perform operation
fdiv.s f12, f28, f29, rmm # perform operation
fdiv.s f12, f28, f29, rne # perform operation
fdiv.s f12, f28, f29, rtz # perform operation
fdiv.s f12, f28, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f28, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f28, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f28, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f28, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f28, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80800000)
li x14, 0xb74d6961 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f3, 0(x2) # load 0x80800000 from memory into f3
fdiv.s f14, f12, f3, dyn # perform operation
fdiv.s f14, f12, f3, rdn # perform operation
fdiv.s f14, f12, f3, rmm # perform operation
fdiv.s f14, f12, f3, rne # perform operation
fdiv.s f14, f12, f3, rtz # perform operation
fdiv.s f14, f12, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f12, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f12, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f12, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f12, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f12, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f7fffff)
li x25, 0xd0052170 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f16, 0(x2) # load 0x3fc00000 from memory into f16
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f27, 0(x2) # load 0x7f7fffff from memory into f27
fdiv.s f25, f16, f27, dyn # perform operation
fdiv.s f25, f16, f27, rdn # perform operation
fdiv.s f25, f16, f27, rmm # perform operation
fdiv.s f25, f16, f27, rne # perform operation
fdiv.s f25, f16, f27, rtz # perform operation
fdiv.s f25, f16, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f16, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f16, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f16, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f16, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f16, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xff7fffff)
li x25, 0x30fc77eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f4, 0(x2) # load 0x3fc00000 from memory into f4
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f1, 0(x2) # load 0xff7fffff from memory into f1
fdiv.s f25, f4, f1, dyn # perform operation
fdiv.s f25, f4, f1, rdn # perform operation
fdiv.s f25, f4, f1, rmm # perform operation
fdiv.s f25, f4, f1, rne # perform operation
fdiv.s f25, f4, f1, rtz # perform operation
fdiv.s f25, f4, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f4, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f4, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f4, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f4, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f4, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fffff)
li x3, 0xed9b937d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f17, 0(x2) # load 0x3fc00000 from memory into f17
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f20, 0(x2) # load 0x007fffff from memory into f20
fdiv.s f3, f17, f20, dyn # perform operation
fdiv.s f3, f17, f20, rdn # perform operation
fdiv.s f3, f17, f20, rmm # perform operation
fdiv.s f3, f17, f20, rne # perform operation
fdiv.s f3, f17, f20, rtz # perform operation
fdiv.s f3, f17, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f17, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f17, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f17, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f17, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f17, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x807fffff)
li x11, 0x811e70e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f16, 0(x2) # load 0x807fffff from memory into f16
fdiv.s f11, f12, f16, dyn # perform operation
fdiv.s f11, f12, f16, rdn # perform operation
fdiv.s f11, f12, f16, rmm # perform operation
fdiv.s f11, f12, f16, rne # perform operation
fdiv.s f11, f12, f16, rtz # perform operation
fdiv.s f11, f12, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f12, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f12, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f12, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f12, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f12, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x400000)
li x1, 0x877e5274 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f14, 0(x2) # load 0x3fc00000 from memory into f14
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
fdiv.s f1, f14, f15, dyn # perform operation
fdiv.s f1, f14, f15, rdn # perform operation
fdiv.s f1, f14, f15, rmm # perform operation
fdiv.s f1, f14, f15, rne # perform operation
fdiv.s f1, f14, f15, rtz # perform operation
fdiv.s f1, f14, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f14, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f14, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f14, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f14, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f14, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80400000)
li x21, 0x33e65818 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f10, 0(x2) # load 0x3fc00000 from memory into f10
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f3, 0(x2) # load 0x80400000 from memory into f3
fdiv.s f21, f10, f3, dyn # perform operation
fdiv.s f21, f10, f3, rdn # perform operation
fdiv.s f21, f10, f3, rmm # perform operation
fdiv.s f21, f10, f3, rne # perform operation
fdiv.s f21, f10, f3, rtz # perform operation
fdiv.s f21, f10, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f10, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f10, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f10, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f10, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f10, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x1)
li x29, 0x58525a20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f7, 0(x2) # load 0x00000001 from memory into f7
fdiv.s f29, f31, f7, dyn # perform operation
fdiv.s f29, f31, f7, rdn # perform operation
fdiv.s f29, f31, f7, rmm # perform operation
fdiv.s f29, f31, f7, rne # perform operation
fdiv.s f29, f31, f7, rtz # perform operation
fdiv.s f29, f31, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f31, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f31, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f31, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f31, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f31, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80000001)
li x19, 0x68469638 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f2, 0(x2) # load 0x3fc00000 from memory into f2
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f28, 0(x2) # load 0x80000001 from memory into f28
fdiv.s f19, f2, f28, dyn # perform operation
fdiv.s f19, f2, f28, rdn # perform operation
fdiv.s f19, f2, f28, rmm # perform operation
fdiv.s f19, f2, f28, rne # perform operation
fdiv.s f19, f2, f28, rtz # perform operation
fdiv.s f19, f2, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f2, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f2, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f2, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f2, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f2, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f800000)
li x1, 0x5fc19347 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f9, 0(x2) # load 0x3fc00000 from memory into f9
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f28, 0(x2) # load 0x7f800000 from memory into f28
fdiv.s f1, f9, f28, dyn # perform operation
fdiv.s f1, f9, f28, rdn # perform operation
fdiv.s f1, f9, f28, rmm # perform operation
fdiv.s f1, f9, f28, rne # perform operation
fdiv.s f1, f9, f28, rtz # perform operation
fdiv.s f1, f9, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f9, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f9, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f9, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f9, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f9, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xff800000)
li x7, 0x9a025418 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f28, 0(x2) # load 0x3fc00000 from memory into f28
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f24, 0(x2) # load 0xff800000 from memory into f24
fdiv.s f7, f28, f24, dyn # perform operation
fdiv.s f7, f28, f24, rdn # perform operation
fdiv.s f7, f28, f24, rmm # perform operation
fdiv.s f7, f28, f24, rne # perform operation
fdiv.s f7, f28, f24, rtz # perform operation
fdiv.s f7, f28, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f28, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f28, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f28, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f28, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f28, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fc00000)
li x27, 0xd6cb5ca1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f15, 0(x2) # load 0x3fc00000 from memory into f15
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f2, 0(x2) # load 0x7fc00000 from memory into f2
fdiv.s f27, f15, f2, dyn # perform operation
fdiv.s f27, f15, f2, rdn # perform operation
fdiv.s f27, f15, f2, rmm # perform operation
fdiv.s f27, f15, f2, rne # perform operation
fdiv.s f27, f15, f2, rtz # perform operation
fdiv.s f27, f15, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f15, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f15, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f15, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f15, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f15, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fffffff)
li x15, 0xdb40f00f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f4, 0(x2) # load 0x3fc00000 from memory into f4
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f25, 0(x2) # load 0x7fffffff from memory into f25
fdiv.s f15, f4, f25, dyn # perform operation
fdiv.s f15, f4, f25, rdn # perform operation
fdiv.s f15, f4, f25, rmm # perform operation
fdiv.s f15, f4, f25, rne # perform operation
fdiv.s f15, f4, f25, rtz # perform operation
fdiv.s f15, f4, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f4, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f4, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f4, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f4, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f4, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f800001)
li x20, 0x2fd55f16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f7, 0(x2) # load 0x3fc00000 from memory into f7
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f23, 0(x2) # load 0x7f800001 from memory into f23
fdiv.s f20, f7, f23, dyn # perform operation
fdiv.s f20, f7, f23, rdn # perform operation
fdiv.s f20, f7, f23, rmm # perform operation
fdiv.s f20, f7, f23, rne # perform operation
fdiv.s f20, f7, f23, rtz # perform operation
fdiv.s f20, f7, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f7, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f7, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f7, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f7, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f7, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fbfffff)
li x29, 0xd396bf41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f1, 0(x2) # load 0x3fc00000 from memory into f1
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f23, 0(x2) # load 0x7fbfffff from memory into f23
fdiv.s f29, f1, f23, dyn # perform operation
fdiv.s f29, f1, f23, rdn # perform operation
fdiv.s f29, f1, f23, rmm # perform operation
fdiv.s f29, f1, f23, rne # perform operation
fdiv.s f29, f1, f23, rtz # perform operation
fdiv.s f29, f1, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f1, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f1, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f1, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f1, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f1, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7ef8654f)
li x15, 0x203c061f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f5, 0(x2) # load 0x3fc00000 from memory into f5
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f30, 0(x2) # load 0x7ef8654f from memory into f30
fdiv.s f15, f5, f30, dyn # perform operation
fdiv.s f15, f5, f30, rdn # perform operation
fdiv.s f15, f5, f30, rmm # perform operation
fdiv.s f15, f5, f30, rne # perform operation
fdiv.s f15, f5, f30, rtz # perform operation
fdiv.s f15, f5, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f5, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f5, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f5, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f5, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f5, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x813d9ab0)
li x17, 0xc1a7a2d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f7, 0(x2) # load 0x3fc00000 from memory into f7
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f15, 0(x2) # load 0x813d9ab0 from memory into f15
fdiv.s f17, f7, f15, dyn # perform operation
fdiv.s f17, f7, f15, rdn # perform operation
fdiv.s f17, f7, f15, rmm # perform operation
fdiv.s f17, f7, f15, rne # perform operation
fdiv.s f17, f7, f15, rtz # perform operation
fdiv.s f17, f7, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f7, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f7, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f7, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f7, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f7, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x0)
li x12, 0x77a078be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f6, 0(x2) # load 0x00000000 from memory into f6
fdiv.s f12, f28, f6, dyn # perform operation
fdiv.s f12, f28, f6, rdn # perform operation
fdiv.s f12, f28, f6, rmm # perform operation
fdiv.s f12, f28, f6, rne # perform operation
fdiv.s f12, f28, f6, rtz # perform operation
fdiv.s f12, f28, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f28, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f28, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f28, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f28, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f28, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80000000)
li x31, 0xe1d89ea9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f30, 0(x2) # load 0x80000000 from memory into f30
fdiv.s f31, f28, f30, dyn # perform operation
fdiv.s f31, f28, f30, rdn # perform operation
fdiv.s f31, f28, f30, rmm # perform operation
fdiv.s f31, f28, f30, rne # perform operation
fdiv.s f31, f28, f30, rtz # perform operation
fdiv.s f31, f28, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f28, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f28, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f28, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f28, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f28, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x3f800000)
li x18, 0xd8464e0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f6, 0(x2) # load 0xbfc00000 from memory into f6
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f17, 0(x2) # load 0x3f800000 from memory into f17
fdiv.s f18, f6, f17, dyn # perform operation
fdiv.s f18, f6, f17, rdn # perform operation
fdiv.s f18, f6, f17, rmm # perform operation
fdiv.s f18, f6, f17, rne # perform operation
fdiv.s f18, f6, f17, rtz # perform operation
fdiv.s f18, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f6, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xbf800000)
li x21, 0x29cbca34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f30, 0(x2) # load 0xbf800000 from memory into f30
fdiv.s f21, f25, f30, dyn # perform operation
fdiv.s f21, f25, f30, rdn # perform operation
fdiv.s f21, f25, f30, rmm # perform operation
fdiv.s f21, f25, f30, rne # perform operation
fdiv.s f21, f25, f30, rtz # perform operation
fdiv.s f21, f25, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f25, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f25, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f25, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f25, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f25, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x3fc00000)
li x1, 0x69f89ba9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f4, 0(x2) # load 0xbfc00000 from memory into f4
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
fdiv.s f1, f4, f12, dyn # perform operation
fdiv.s f1, f4, f12, rdn # perform operation
fdiv.s f1, f4, f12, rmm # perform operation
fdiv.s f1, f4, f12, rne # perform operation
fdiv.s f1, f4, f12, rtz # perform operation
fdiv.s f1, f4, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f4, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f4, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f4, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f4, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f4, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xbfc00000)
li x1, 0xdd9ddbf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f22, 0(x2) # load 0xbfc00000 from memory into f22
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f10, 0(x2) # load 0xbfc00000 from memory into f10
fdiv.s f1, f22, f10, dyn # perform operation
fdiv.s f1, f22, f10, rdn # perform operation
fdiv.s f1, f22, f10, rmm # perform operation
fdiv.s f1, f22, f10, rne # perform operation
fdiv.s f1, f22, f10, rtz # perform operation
fdiv.s f1, f22, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f22, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f22, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f22, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f22, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f22, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x40000000)
li x23, 0x1f882e85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f30, 0(x2) # load 0xbfc00000 from memory into f30
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f1, 0(x2) # load 0x40000000 from memory into f1
fdiv.s f23, f30, f1, dyn # perform operation
fdiv.s f23, f30, f1, rdn # perform operation
fdiv.s f23, f30, f1, rmm # perform operation
fdiv.s f23, f30, f1, rne # perform operation
fdiv.s f23, f30, f1, rtz # perform operation
fdiv.s f23, f30, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f30, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f30, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f30, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f30, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f30, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xc0000000)
li x28, 0xf3307710 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f26, 0(x2) # load 0xbfc00000 from memory into f26
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f18, 0(x2) # load 0xc0000000 from memory into f18
fdiv.s f28, f26, f18, dyn # perform operation
fdiv.s f28, f26, f18, rdn # perform operation
fdiv.s f28, f26, f18, rmm # perform operation
fdiv.s f28, f26, f18, rne # perform operation
fdiv.s f28, f26, f18, rtz # perform operation
fdiv.s f28, f26, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f26, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f26, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f26, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f26, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f26, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x800000)
li x2, 0xd13a1dae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f21, 0(x2) # load 0xbfc00000 from memory into f21
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
fdiv.s f2, f21, f14, dyn # perform operation
fdiv.s f2, f21, f14, rdn # perform operation
fdiv.s f2, f21, f14, rmm # perform operation
fdiv.s f2, f21, f14, rne # perform operation
fdiv.s f2, f21, f14, rtz # perform operation
fdiv.s f2, f21, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f21, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f21, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f21, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f21, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f21, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80800000)
li x31, 0x374c9d9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f17, 0(x2) # load 0xbfc00000 from memory into f17
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f12, 0(x2) # load 0x80800000 from memory into f12
fdiv.s f31, f17, f12, dyn # perform operation
fdiv.s f31, f17, f12, rdn # perform operation
fdiv.s f31, f17, f12, rmm # perform operation
fdiv.s f31, f17, f12, rne # perform operation
fdiv.s f31, f17, f12, rtz # perform operation
fdiv.s f31, f17, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f17, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f17, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f17, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f17, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f17, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f7fffff)
li x19, 0x384f2dee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f27, 0(x2) # load 0x7f7fffff from memory into f27
fdiv.s f19, f20, f27, dyn # perform operation
fdiv.s f19, f20, f27, rdn # perform operation
fdiv.s f19, f20, f27, rmm # perform operation
fdiv.s f19, f20, f27, rne # perform operation
fdiv.s f19, f20, f27, rtz # perform operation
fdiv.s f19, f20, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f20, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f20, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f20, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f20, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f20, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xff7fffff)
li x10, 0xe78ab265 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f31, 0(x2) # load 0xbfc00000 from memory into f31
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f19, 0(x2) # load 0xff7fffff from memory into f19
fdiv.s f10, f31, f19, dyn # perform operation
fdiv.s f10, f31, f19, rdn # perform operation
fdiv.s f10, f31, f19, rmm # perform operation
fdiv.s f10, f31, f19, rne # perform operation
fdiv.s f10, f31, f19, rtz # perform operation
fdiv.s f10, f31, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f31, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f31, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f31, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f31, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f31, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fffff)
li x5, 0xc715582a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f10, 0(x2) # load 0xbfc00000 from memory into f10
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f26, 0(x2) # load 0x007fffff from memory into f26
fdiv.s f5, f10, f26, dyn # perform operation
fdiv.s f5, f10, f26, rdn # perform operation
fdiv.s f5, f10, f26, rmm # perform operation
fdiv.s f5, f10, f26, rne # perform operation
fdiv.s f5, f10, f26, rtz # perform operation
fdiv.s f5, f10, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f10, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f10, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f10, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f10, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f10, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x807fffff)
li x17, 0x4e508d6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f31, 0(x2) # load 0xbfc00000 from memory into f31
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f7, 0(x2) # load 0x807fffff from memory into f7
fdiv.s f17, f31, f7, dyn # perform operation
fdiv.s f17, f31, f7, rdn # perform operation
fdiv.s f17, f31, f7, rmm # perform operation
fdiv.s f17, f31, f7, rne # perform operation
fdiv.s f17, f31, f7, rtz # perform operation
fdiv.s f17, f31, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f31, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f31, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f31, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f31, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f31, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x400000)
li x17, 0xb3015a72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f2, 0(x2) # load 0xbfc00000 from memory into f2
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f5, 0(x2) # load 0x00400000 from memory into f5
fdiv.s f17, f2, f5, dyn # perform operation
fdiv.s f17, f2, f5, rdn # perform operation
fdiv.s f17, f2, f5, rmm # perform operation
fdiv.s f17, f2, f5, rne # perform operation
fdiv.s f17, f2, f5, rtz # perform operation
fdiv.s f17, f2, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f2, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f2, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f2, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f2, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f2, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80400000)
li x21, 0x7aea6e2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f14, 0(x2) # load 0xbfc00000 from memory into f14
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
fdiv.s f21, f14, f6, dyn # perform operation
fdiv.s f21, f14, f6, rdn # perform operation
fdiv.s f21, f14, f6, rmm # perform operation
fdiv.s f21, f14, f6, rne # perform operation
fdiv.s f21, f14, f6, rtz # perform operation
fdiv.s f21, f14, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f14, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f14, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f14, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f14, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f14, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x1)
li x15, 0x82ded28e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f3, 0(x2) # load 0xbfc00000 from memory into f3
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
fdiv.s f15, f3, f19, dyn # perform operation
fdiv.s f15, f3, f19, rdn # perform operation
fdiv.s f15, f3, f19, rmm # perform operation
fdiv.s f15, f3, f19, rne # perform operation
fdiv.s f15, f3, f19, rtz # perform operation
fdiv.s f15, f3, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f3, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f3, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f3, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f3, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f3, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80000001)
li x30, 0x1a170918 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f9, 0(x2) # load 0x80000001 from memory into f9
fdiv.s f30, f27, f9, dyn # perform operation
fdiv.s f30, f27, f9, rdn # perform operation
fdiv.s f30, f27, f9, rmm # perform operation
fdiv.s f30, f27, f9, rne # perform operation
fdiv.s f30, f27, f9, rtz # perform operation
fdiv.s f30, f27, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f27, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f27, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f27, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f27, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f27, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f800000)
li x23, 0x78ee854c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
fdiv.s f23, f25, f27, dyn # perform operation
fdiv.s f23, f25, f27, rdn # perform operation
fdiv.s f23, f25, f27, rmm # perform operation
fdiv.s f23, f25, f27, rne # perform operation
fdiv.s f23, f25, f27, rtz # perform operation
fdiv.s f23, f25, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f25, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f25, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f25, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f25, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f25, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xff800000)
li x24, 0x9932abfc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f15, 0(x2) # load 0xbfc00000 from memory into f15
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f4, 0(x2) # load 0xff800000 from memory into f4
fdiv.s f24, f15, f4, dyn # perform operation
fdiv.s f24, f15, f4, rdn # perform operation
fdiv.s f24, f15, f4, rmm # perform operation
fdiv.s f24, f15, f4, rne # perform operation
fdiv.s f24, f15, f4, rtz # perform operation
fdiv.s f24, f15, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f15, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f15, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f15, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f15, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f15, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fc00000)
li x5, 0x9b52be6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f23, 0(x2) # load 0xbfc00000 from memory into f23
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f19, 0(x2) # load 0x7fc00000 from memory into f19
fdiv.s f5, f23, f19, dyn # perform operation
fdiv.s f5, f23, f19, rdn # perform operation
fdiv.s f5, f23, f19, rmm # perform operation
fdiv.s f5, f23, f19, rne # perform operation
fdiv.s f5, f23, f19, rtz # perform operation
fdiv.s f5, f23, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f23, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f23, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f23, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f23, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f23, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fffffff)
li x28, 0xe5cb5b09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f31, 0(x2) # load 0xbfc00000 from memory into f31
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f16, 0(x2) # load 0x7fffffff from memory into f16
fdiv.s f28, f31, f16, dyn # perform operation
fdiv.s f28, f31, f16, rdn # perform operation
fdiv.s f28, f31, f16, rmm # perform operation
fdiv.s f28, f31, f16, rne # perform operation
fdiv.s f28, f31, f16, rtz # perform operation
fdiv.s f28, f31, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f31, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f31, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f31, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f31, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f31, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f800001)
li x16, 0x8f67acd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f9, 0(x2) # load 0xbfc00000 from memory into f9
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
fdiv.s f16, f9, f19, dyn # perform operation
fdiv.s f16, f9, f19, rdn # perform operation
fdiv.s f16, f9, f19, rmm # perform operation
fdiv.s f16, f9, f19, rne # perform operation
fdiv.s f16, f9, f19, rtz # perform operation
fdiv.s f16, f9, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f9, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f9, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f9, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f9, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f9, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fbfffff)
li x8, 0xa6c67775 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f6, 0(x2) # load 0xbfc00000 from memory into f6
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f21, 0(x2) # load 0x7fbfffff from memory into f21
fdiv.s f8, f6, f21, dyn # perform operation
fdiv.s f8, f6, f21, rdn # perform operation
fdiv.s f8, f6, f21, rmm # perform operation
fdiv.s f8, f6, f21, rne # perform operation
fdiv.s f8, f6, f21, rtz # perform operation
fdiv.s f8, f6, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f6, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f6, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f6, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f6, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f6, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7ef8654f)
li x10, 0xd191c378 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f17, 0(x2) # load 0xbfc00000 from memory into f17
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f7, 0(x2) # load 0x7ef8654f from memory into f7
fdiv.s f10, f17, f7, dyn # perform operation
fdiv.s f10, f17, f7, rdn # perform operation
fdiv.s f10, f17, f7, rmm # perform operation
fdiv.s f10, f17, f7, rne # perform operation
fdiv.s f10, f17, f7, rtz # perform operation
fdiv.s f10, f17, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f17, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f17, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f17, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f17, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f17, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x813d9ab0)
li x1, 0x23f0cef7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f6, 0(x2) # load 0xbfc00000 from memory into f6
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
fdiv.s f1, f6, f22, dyn # perform operation
fdiv.s f1, f6, f22, rdn # perform operation
fdiv.s f1, f6, f22, rmm # perform operation
fdiv.s f1, f6, f22, rne # perform operation
fdiv.s f1, f6, f22, rtz # perform operation
fdiv.s f1, f6, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f6, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f6, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f6, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f6, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f6, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x0)
li x14, 0x863b4fc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f28, 0(x2) # load 0x40000000 from memory into f28
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f18, 0(x2) # load 0x00000000 from memory into f18
fdiv.s f14, f28, f18, dyn # perform operation
fdiv.s f14, f28, f18, rdn # perform operation
fdiv.s f14, f28, f18, rmm # perform operation
fdiv.s f14, f28, f18, rne # perform operation
fdiv.s f14, f28, f18, rtz # perform operation
fdiv.s f14, f28, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f28, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f28, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f28, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f28, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f28, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80000000)
li x8, 0xa251437c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f25, 0(x2) # load 0x80000000 from memory into f25
fdiv.s f8, f23, f25, dyn # perform operation
fdiv.s f8, f23, f25, rdn # perform operation
fdiv.s f8, f23, f25, rmm # perform operation
fdiv.s f8, f23, f25, rne # perform operation
fdiv.s f8, f23, f25, rtz # perform operation
fdiv.s f8, f23, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f23, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f23, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f23, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f23, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f23, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x3f800000)
li x4, 0x4b91ef2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
fdiv.s f4, f16, f11, dyn # perform operation
fdiv.s f4, f16, f11, rdn # perform operation
fdiv.s f4, f16, f11, rmm # perform operation
fdiv.s f4, f16, f11, rne # perform operation
fdiv.s f4, f16, f11, rtz # perform operation
fdiv.s f4, f16, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f16, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f16, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f16, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f16, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f16, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xbf800000)
li x16, 0x75028dbc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f22, 0(x2) # load 0x40000000 from memory into f22
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
fdiv.s f16, f22, f17, dyn # perform operation
fdiv.s f16, f22, f17, rdn # perform operation
fdiv.s f16, f22, f17, rmm # perform operation
fdiv.s f16, f22, f17, rne # perform operation
fdiv.s f16, f22, f17, rtz # perform operation
fdiv.s f16, f22, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f22, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f22, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f22, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f22, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f22, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x3fc00000)
li x25, 0xbf0cc613 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f31, 0(x2) # load 0x40000000 from memory into f31
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f29, 0(x2) # load 0x3fc00000 from memory into f29
fdiv.s f25, f31, f29, dyn # perform operation
fdiv.s f25, f31, f29, rdn # perform operation
fdiv.s f25, f31, f29, rmm # perform operation
fdiv.s f25, f31, f29, rne # perform operation
fdiv.s f25, f31, f29, rtz # perform operation
fdiv.s f25, f31, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f31, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f31, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f31, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f31, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f31, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xbfc00000)
li x28, 0x48732eb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f4, 0(x2) # load 0x40000000 from memory into f4
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f17, 0(x2) # load 0xbfc00000 from memory into f17
fdiv.s f28, f4, f17, dyn # perform operation
fdiv.s f28, f4, f17, rdn # perform operation
fdiv.s f28, f4, f17, rmm # perform operation
fdiv.s f28, f4, f17, rne # perform operation
fdiv.s f28, f4, f17, rtz # perform operation
fdiv.s f28, f4, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f4, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f4, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f4, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f4, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f4, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x40000000)
li x25, 0x7e625a97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f3, 0(x2) # load 0x40000000 from memory into f3
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f29, 0(x2) # load 0x40000000 from memory into f29
fdiv.s f25, f3, f29, dyn # perform operation
fdiv.s f25, f3, f29, rdn # perform operation
fdiv.s f25, f3, f29, rmm # perform operation
fdiv.s f25, f3, f29, rne # perform operation
fdiv.s f25, f3, f29, rtz # perform operation
fdiv.s f25, f3, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f3, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f3, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f3, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f3, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f3, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xc0000000)
li x23, 0x113e4cb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f12, 0(x2) # load 0x40000000 from memory into f12
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f2, 0(x2) # load 0xc0000000 from memory into f2
fdiv.s f23, f12, f2, dyn # perform operation
fdiv.s f23, f12, f2, rdn # perform operation
fdiv.s f23, f12, f2, rmm # perform operation
fdiv.s f23, f12, f2, rne # perform operation
fdiv.s f23, f12, f2, rtz # perform operation
fdiv.s f23, f12, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f12, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f12, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f12, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f12, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f12, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x800000)
li x31, 0x6fabd27c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f4, 0(x2) # load 0x40000000 from memory into f4
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f3, 0(x2) # load 0x00800000 from memory into f3
fdiv.s f31, f4, f3, dyn # perform operation
fdiv.s f31, f4, f3, rdn # perform operation
fdiv.s f31, f4, f3, rmm # perform operation
fdiv.s f31, f4, f3, rne # perform operation
fdiv.s f31, f4, f3, rtz # perform operation
fdiv.s f31, f4, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f4, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f4, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f4, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f4, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f4, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80800000)
li x3, 0xc0995805 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
fdiv.s f3, f13, f20, dyn # perform operation
fdiv.s f3, f13, f20, rdn # perform operation
fdiv.s f3, f13, f20, rmm # perform operation
fdiv.s f3, f13, f20, rne # perform operation
fdiv.s f3, f13, f20, rtz # perform operation
fdiv.s f3, f13, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f13, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f13, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f13, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f13, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f13, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f7fffff)
li x31, 0x49cfba55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f12, 0(x2) # load 0x40000000 from memory into f12
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f18, 0(x2) # load 0x7f7fffff from memory into f18
fdiv.s f31, f12, f18, dyn # perform operation
fdiv.s f31, f12, f18, rdn # perform operation
fdiv.s f31, f12, f18, rmm # perform operation
fdiv.s f31, f12, f18, rne # perform operation
fdiv.s f31, f12, f18, rtz # perform operation
fdiv.s f31, f12, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f12, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f12, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f12, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f12, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f12, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xff7fffff)
li x31, 0x5b53dd7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f19, 0(x2) # load 0xff7fffff from memory into f19
fdiv.s f31, f8, f19, dyn # perform operation
fdiv.s f31, f8, f19, rdn # perform operation
fdiv.s f31, f8, f19, rmm # perform operation
fdiv.s f31, f8, f19, rne # perform operation
fdiv.s f31, f8, f19, rtz # perform operation
fdiv.s f31, f8, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f8, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f8, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f8, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f8, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f8, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fffff)
li x27, 0xa0f9c045 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f21, 0(x2) # load 0x40000000 from memory into f21
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f25, 0(x2) # load 0x007fffff from memory into f25
fdiv.s f27, f21, f25, dyn # perform operation
fdiv.s f27, f21, f25, rdn # perform operation
fdiv.s f27, f21, f25, rmm # perform operation
fdiv.s f27, f21, f25, rne # perform operation
fdiv.s f27, f21, f25, rtz # perform operation
fdiv.s f27, f21, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f21, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f21, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f21, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f21, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f21, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x807fffff)
li x26, 0x7f87c7fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f11, 0(x2) # load 0x807fffff from memory into f11
fdiv.s f26, f24, f11, dyn # perform operation
fdiv.s f26, f24, f11, rdn # perform operation
fdiv.s f26, f24, f11, rmm # perform operation
fdiv.s f26, f24, f11, rne # perform operation
fdiv.s f26, f24, f11, rtz # perform operation
fdiv.s f26, f24, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f24, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f24, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f24, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f24, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f24, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x400000)
li x26, 0x940720d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f10, 0(x2) # load 0x40000000 from memory into f10
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
fdiv.s f26, f10, f25, dyn # perform operation
fdiv.s f26, f10, f25, rdn # perform operation
fdiv.s f26, f10, f25, rmm # perform operation
fdiv.s f26, f10, f25, rne # perform operation
fdiv.s f26, f10, f25, rtz # perform operation
fdiv.s f26, f10, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f10, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f10, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f10, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f10, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f10, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80400000)
li x25, 0x062e6a50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f30, 0(x2) # load 0x80400000 from memory into f30
fdiv.s f25, f13, f30, dyn # perform operation
fdiv.s f25, f13, f30, rdn # perform operation
fdiv.s f25, f13, f30, rmm # perform operation
fdiv.s f25, f13, f30, rne # perform operation
fdiv.s f25, f13, f30, rtz # perform operation
fdiv.s f25, f13, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f13, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f13, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f13, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f13, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f13, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x1)
li x7, 0x89fb5f6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f10, 0(x2) # load 0x40000000 from memory into f10
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f9, 0(x2) # load 0x00000001 from memory into f9
fdiv.s f7, f10, f9, dyn # perform operation
fdiv.s f7, f10, f9, rdn # perform operation
fdiv.s f7, f10, f9, rmm # perform operation
fdiv.s f7, f10, f9, rne # perform operation
fdiv.s f7, f10, f9, rtz # perform operation
fdiv.s f7, f10, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f10, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f10, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f10, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f10, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f10, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80000001)
li x21, 0xdace453b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f4, 0(x2) # load 0x40000000 from memory into f4
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f8, 0(x2) # load 0x80000001 from memory into f8
fdiv.s f21, f4, f8, dyn # perform operation
fdiv.s f21, f4, f8, rdn # perform operation
fdiv.s f21, f4, f8, rmm # perform operation
fdiv.s f21, f4, f8, rne # perform operation
fdiv.s f21, f4, f8, rtz # perform operation
fdiv.s f21, f4, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f4, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f4, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f4, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f4, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f4, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f800000)
li x26, 0xe056c85e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f31, 0(x2) # load 0x40000000 from memory into f31
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f1, 0(x2) # load 0x7f800000 from memory into f1
fdiv.s f26, f31, f1, dyn # perform operation
fdiv.s f26, f31, f1, rdn # perform operation
fdiv.s f26, f31, f1, rmm # perform operation
fdiv.s f26, f31, f1, rne # perform operation
fdiv.s f26, f31, f1, rtz # perform operation
fdiv.s f26, f31, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f31, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f31, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f31, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f31, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f31, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xff800000)
li x16, 0x244b92d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f21, 0(x2) # load 0x40000000 from memory into f21
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
fdiv.s f16, f21, f1, dyn # perform operation
fdiv.s f16, f21, f1, rdn # perform operation
fdiv.s f16, f21, f1, rmm # perform operation
fdiv.s f16, f21, f1, rne # perform operation
fdiv.s f16, f21, f1, rtz # perform operation
fdiv.s f16, f21, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f21, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f21, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f21, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f21, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f21, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fc00000)
li x18, 0x98aecc27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f25, 0(x2) # load 0x40000000 from memory into f25
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f15, 0(x2) # load 0x7fc00000 from memory into f15
fdiv.s f18, f25, f15, dyn # perform operation
fdiv.s f18, f25, f15, rdn # perform operation
fdiv.s f18, f25, f15, rmm # perform operation
fdiv.s f18, f25, f15, rne # perform operation
fdiv.s f18, f25, f15, rtz # perform operation
fdiv.s f18, f25, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f25, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f25, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f25, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f25, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f25, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fffffff)
li x2, 0xedb592b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f20, 0(x2) # load 0x40000000 from memory into f20
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f23, 0(x2) # load 0x7fffffff from memory into f23
fdiv.s f2, f20, f23, dyn # perform operation
fdiv.s f2, f20, f23, rdn # perform operation
fdiv.s f2, f20, f23, rmm # perform operation
fdiv.s f2, f20, f23, rne # perform operation
fdiv.s f2, f20, f23, rtz # perform operation
fdiv.s f2, f20, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f20, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f20, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f20, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f20, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f20, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f800001)
li x15, 0xf2109c5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f27, 0(x2) # load 0x40000000 from memory into f27
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f29, 0(x2) # load 0x7f800001 from memory into f29
fdiv.s f15, f27, f29, dyn # perform operation
fdiv.s f15, f27, f29, rdn # perform operation
fdiv.s f15, f27, f29, rmm # perform operation
fdiv.s f15, f27, f29, rne # perform operation
fdiv.s f15, f27, f29, rtz # perform operation
fdiv.s f15, f27, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f27, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f27, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f27, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f27, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f27, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fbfffff)
li x27, 0xa5474e0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f31, 0(x2) # load 0x40000000 from memory into f31
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f4, 0(x2) # load 0x7fbfffff from memory into f4
fdiv.s f27, f31, f4, dyn # perform operation
fdiv.s f27, f31, f4, rdn # perform operation
fdiv.s f27, f31, f4, rmm # perform operation
fdiv.s f27, f31, f4, rne # perform operation
fdiv.s f27, f31, f4, rtz # perform operation
fdiv.s f27, f31, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f31, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f31, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f31, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f31, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f31, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7ef8654f)
li x14, 0x5e90c815 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f6, 0(x2) # load 0x40000000 from memory into f6
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f12, 0(x2) # load 0x7ef8654f from memory into f12
fdiv.s f14, f6, f12, dyn # perform operation
fdiv.s f14, f6, f12, rdn # perform operation
fdiv.s f14, f6, f12, rmm # perform operation
fdiv.s f14, f6, f12, rne # perform operation
fdiv.s f14, f6, f12, rtz # perform operation
fdiv.s f14, f6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f6, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f6, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f6, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f6, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f6, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x813d9ab0)
li x5, 0x87424764 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f6, 0(x2) # load 0x40000000 from memory into f6
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f20, 0(x2) # load 0x813d9ab0 from memory into f20
fdiv.s f5, f6, f20, dyn # perform operation
fdiv.s f5, f6, f20, rdn # perform operation
fdiv.s f5, f6, f20, rmm # perform operation
fdiv.s f5, f6, f20, rne # perform operation
fdiv.s f5, f6, f20, rtz # perform operation
fdiv.s f5, f6, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f6, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f6, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f6, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f6, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f6, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x0)
li x8, 0x68b45c07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f15, 0(x2) # load 0xc0000000 from memory into f15
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f26, 0(x2) # load 0x00000000 from memory into f26
fdiv.s f8, f15, f26, dyn # perform operation
fdiv.s f8, f15, f26, rdn # perform operation
fdiv.s f8, f15, f26, rmm # perform operation
fdiv.s f8, f15, f26, rne # perform operation
fdiv.s f8, f15, f26, rtz # perform operation
fdiv.s f8, f15, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f15, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f15, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f15, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f15, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f15, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80000000)
li x26, 0x96964c35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f20, 0(x2) # load 0xc0000000 from memory into f20
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f9, 0(x2) # load 0x80000000 from memory into f9
fdiv.s f26, f20, f9, dyn # perform operation
fdiv.s f26, f20, f9, rdn # perform operation
fdiv.s f26, f20, f9, rmm # perform operation
fdiv.s f26, f20, f9, rne # perform operation
fdiv.s f26, f20, f9, rtz # perform operation
fdiv.s f26, f20, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f20, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f20, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f20, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f20, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f20, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x3f800000)
li x10, 0x36378c54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f28, 0(x2) # load 0xc0000000 from memory into f28
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f1, 0(x2) # load 0x3f800000 from memory into f1
fdiv.s f10, f28, f1, dyn # perform operation
fdiv.s f10, f28, f1, rdn # perform operation
fdiv.s f10, f28, f1, rmm # perform operation
fdiv.s f10, f28, f1, rne # perform operation
fdiv.s f10, f28, f1, rtz # perform operation
fdiv.s f10, f28, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f28, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f28, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f28, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f28, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f28, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xbf800000)
li x8, 0xb408df5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f31, 0(x2) # load 0xbf800000 from memory into f31
fdiv.s f8, f14, f31, dyn # perform operation
fdiv.s f8, f14, f31, rdn # perform operation
fdiv.s f8, f14, f31, rmm # perform operation
fdiv.s f8, f14, f31, rne # perform operation
fdiv.s f8, f14, f31, rtz # perform operation
fdiv.s f8, f14, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f14, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f14, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f14, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f14, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f14, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x3fc00000)
li x28, 0x6caf7833 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f19, 0(x2) # load 0xc0000000 from memory into f19
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
fdiv.s f28, f19, f6, dyn # perform operation
fdiv.s f28, f19, f6, rdn # perform operation
fdiv.s f28, f19, f6, rmm # perform operation
fdiv.s f28, f19, f6, rne # perform operation
fdiv.s f28, f19, f6, rtz # perform operation
fdiv.s f28, f19, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f19, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f19, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f19, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f19, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f19, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xbfc00000)
li x16, 0xf83919a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f19, 0(x2) # load 0xbfc00000 from memory into f19
fdiv.s f16, f31, f19, dyn # perform operation
fdiv.s f16, f31, f19, rdn # perform operation
fdiv.s f16, f31, f19, rmm # perform operation
fdiv.s f16, f31, f19, rne # perform operation
fdiv.s f16, f31, f19, rtz # perform operation
fdiv.s f16, f31, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f31, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f31, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f31, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f31, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f31, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x40000000)
li x17, 0xbfe83b50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f6, 0(x2) # load 0xc0000000 from memory into f6
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f12, 0(x2) # load 0x40000000 from memory into f12
fdiv.s f17, f6, f12, dyn # perform operation
fdiv.s f17, f6, f12, rdn # perform operation
fdiv.s f17, f6, f12, rmm # perform operation
fdiv.s f17, f6, f12, rne # perform operation
fdiv.s f17, f6, f12, rtz # perform operation
fdiv.s f17, f6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f6, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f6, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f6, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f6, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f6, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xc0000000)
li x29, 0x974167b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f26, 0(x2) # load 0xc0000000 from memory into f26
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f5, 0(x2) # load 0xc0000000 from memory into f5
fdiv.s f29, f26, f5, dyn # perform operation
fdiv.s f29, f26, f5, rdn # perform operation
fdiv.s f29, f26, f5, rmm # perform operation
fdiv.s f29, f26, f5, rne # perform operation
fdiv.s f29, f26, f5, rtz # perform operation
fdiv.s f29, f26, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f26, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f26, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f26, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f26, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f26, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x800000)
li x16, 0xab9c87bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f12, 0(x2) # load 0xc0000000 from memory into f12
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f17, 0(x2) # load 0x00800000 from memory into f17
fdiv.s f16, f12, f17, dyn # perform operation
fdiv.s f16, f12, f17, rdn # perform operation
fdiv.s f16, f12, f17, rmm # perform operation
fdiv.s f16, f12, f17, rne # perform operation
fdiv.s f16, f12, f17, rtz # perform operation
fdiv.s f16, f12, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f12, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f12, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f12, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f12, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f12, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80800000)
li x18, 0x7b6206b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f7, 0(x2) # load 0xc0000000 from memory into f7
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
fdiv.s f18, f7, f20, dyn # perform operation
fdiv.s f18, f7, f20, rdn # perform operation
fdiv.s f18, f7, f20, rmm # perform operation
fdiv.s f18, f7, f20, rne # perform operation
fdiv.s f18, f7, f20, rtz # perform operation
fdiv.s f18, f7, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f7, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f7, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f7, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f7, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f7, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f7fffff)
li x9, 0x95a8887c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f26, 0(x2) # load 0x7f7fffff from memory into f26
fdiv.s f9, f21, f26, dyn # perform operation
fdiv.s f9, f21, f26, rdn # perform operation
fdiv.s f9, f21, f26, rmm # perform operation
fdiv.s f9, f21, f26, rne # perform operation
fdiv.s f9, f21, f26, rtz # perform operation
fdiv.s f9, f21, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f21, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f21, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f21, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f21, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f21, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xff7fffff)
li x1, 0x7ffe7be9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f28, 0(x2) # load 0xc0000000 from memory into f28
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f8, 0(x2) # load 0xff7fffff from memory into f8
fdiv.s f1, f28, f8, dyn # perform operation
fdiv.s f1, f28, f8, rdn # perform operation
fdiv.s f1, f28, f8, rmm # perform operation
fdiv.s f1, f28, f8, rne # perform operation
fdiv.s f1, f28, f8, rtz # perform operation
fdiv.s f1, f28, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f28, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f28, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f28, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f28, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f28, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fffff)
li x23, 0x05e04b00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f3, 0(x2) # load 0xc0000000 from memory into f3
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f7, 0(x2) # load 0x007fffff from memory into f7
fdiv.s f23, f3, f7, dyn # perform operation
fdiv.s f23, f3, f7, rdn # perform operation
fdiv.s f23, f3, f7, rmm # perform operation
fdiv.s f23, f3, f7, rne # perform operation
fdiv.s f23, f3, f7, rtz # perform operation
fdiv.s f23, f3, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f3, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f3, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f3, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f3, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f3, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x807fffff)
li x21, 0x0938af18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f30, 0(x2) # load 0xc0000000 from memory into f30
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f29, 0(x2) # load 0x807fffff from memory into f29
fdiv.s f21, f30, f29, dyn # perform operation
fdiv.s f21, f30, f29, rdn # perform operation
fdiv.s f21, f30, f29, rmm # perform operation
fdiv.s f21, f30, f29, rne # perform operation
fdiv.s f21, f30, f29, rtz # perform operation
fdiv.s f21, f30, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f30, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f30, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f30, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f30, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f30, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x400000)
li x22, 0x1e6fa5cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f19, 0(x2) # load 0xc0000000 from memory into f19
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f10, 0(x2) # load 0x00400000 from memory into f10
fdiv.s f22, f19, f10, dyn # perform operation
fdiv.s f22, f19, f10, rdn # perform operation
fdiv.s f22, f19, f10, rmm # perform operation
fdiv.s f22, f19, f10, rne # perform operation
fdiv.s f22, f19, f10, rtz # perform operation
fdiv.s f22, f19, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f19, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f19, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f19, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f19, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f19, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80400000)
li x18, 0x84e05565 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f30, 0(x2) # load 0xc0000000 from memory into f30
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f22, 0(x2) # load 0x80400000 from memory into f22
fdiv.s f18, f30, f22, dyn # perform operation
fdiv.s f18, f30, f22, rdn # perform operation
fdiv.s f18, f30, f22, rmm # perform operation
fdiv.s f18, f30, f22, rne # perform operation
fdiv.s f18, f30, f22, rtz # perform operation
fdiv.s f18, f30, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f30, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f30, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f30, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f30, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f30, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x1)
li x17, 0x874edd4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f13, 0(x2) # load 0xc0000000 from memory into f13
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
fdiv.s f17, f13, f22, dyn # perform operation
fdiv.s f17, f13, f22, rdn # perform operation
fdiv.s f17, f13, f22, rmm # perform operation
fdiv.s f17, f13, f22, rne # perform operation
fdiv.s f17, f13, f22, rtz # perform operation
fdiv.s f17, f13, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f13, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f13, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f13, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f13, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f13, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80000001)
li x17, 0x47193399 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f30, 0(x2) # load 0xc0000000 from memory into f30
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f29, 0(x2) # load 0x80000001 from memory into f29
fdiv.s f17, f30, f29, dyn # perform operation
fdiv.s f17, f30, f29, rdn # perform operation
fdiv.s f17, f30, f29, rmm # perform operation
fdiv.s f17, f30, f29, rne # perform operation
fdiv.s f17, f30, f29, rtz # perform operation
fdiv.s f17, f30, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f30, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f30, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f30, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f30, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f30, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f800000)
li x8, 0xc0c82879 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f4, 0(x2) # load 0xc0000000 from memory into f4
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f6, 0(x2) # load 0x7f800000 from memory into f6
fdiv.s f8, f4, f6, dyn # perform operation
fdiv.s f8, f4, f6, rdn # perform operation
fdiv.s f8, f4, f6, rmm # perform operation
fdiv.s f8, f4, f6, rne # perform operation
fdiv.s f8, f4, f6, rtz # perform operation
fdiv.s f8, f4, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f4, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f4, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f4, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f4, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f4, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xff800000)
li x22, 0x54c83f98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f7, 0(x2) # load 0xc0000000 from memory into f7
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f19, 0(x2) # load 0xff800000 from memory into f19
fdiv.s f22, f7, f19, dyn # perform operation
fdiv.s f22, f7, f19, rdn # perform operation
fdiv.s f22, f7, f19, rmm # perform operation
fdiv.s f22, f7, f19, rne # perform operation
fdiv.s f22, f7, f19, rtz # perform operation
fdiv.s f22, f7, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f7, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f7, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f7, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f7, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f7, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fc00000)
li x25, 0xd0b352a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f12, 0(x2) # load 0xc0000000 from memory into f12
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f28, 0(x2) # load 0x7fc00000 from memory into f28
fdiv.s f25, f12, f28, dyn # perform operation
fdiv.s f25, f12, f28, rdn # perform operation
fdiv.s f25, f12, f28, rmm # perform operation
fdiv.s f25, f12, f28, rne # perform operation
fdiv.s f25, f12, f28, rtz # perform operation
fdiv.s f25, f12, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f12, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f12, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f12, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f12, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f12, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fffffff)
li x3, 0x623ac15e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f27, 0(x2) # load 0xc0000000 from memory into f27
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f4, 0(x2) # load 0x7fffffff from memory into f4
fdiv.s f3, f27, f4, dyn # perform operation
fdiv.s f3, f27, f4, rdn # perform operation
fdiv.s f3, f27, f4, rmm # perform operation
fdiv.s f3, f27, f4, rne # perform operation
fdiv.s f3, f27, f4, rtz # perform operation
fdiv.s f3, f27, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f27, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f27, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f27, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f27, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f27, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f800001)
li x6, 0xdff5305b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f2, 0(x2) # load 0xc0000000 from memory into f2
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f11, 0(x2) # load 0x7f800001 from memory into f11
fdiv.s f6, f2, f11, dyn # perform operation
fdiv.s f6, f2, f11, rdn # perform operation
fdiv.s f6, f2, f11, rmm # perform operation
fdiv.s f6, f2, f11, rne # perform operation
fdiv.s f6, f2, f11, rtz # perform operation
fdiv.s f6, f2, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f2, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f2, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f2, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f2, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f2, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fbfffff)
li x10, 0x9ef18f84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f11, 0(x2) # load 0xc0000000 from memory into f11
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f13, 0(x2) # load 0x7fbfffff from memory into f13
fdiv.s f10, f11, f13, dyn # perform operation
fdiv.s f10, f11, f13, rdn # perform operation
fdiv.s f10, f11, f13, rmm # perform operation
fdiv.s f10, f11, f13, rne # perform operation
fdiv.s f10, f11, f13, rtz # perform operation
fdiv.s f10, f11, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f11, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f11, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f11, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f11, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f11, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7ef8654f)
li x1, 0x79913bfc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f23, 0(x2) # load 0xc0000000 from memory into f23
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f15, 0(x2) # load 0x7ef8654f from memory into f15
fdiv.s f1, f23, f15, dyn # perform operation
fdiv.s f1, f23, f15, rdn # perform operation
fdiv.s f1, f23, f15, rmm # perform operation
fdiv.s f1, f23, f15, rne # perform operation
fdiv.s f1, f23, f15, rtz # perform operation
fdiv.s f1, f23, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f23, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f23, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f23, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f23, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f23, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x813d9ab0)
li x13, 0x6e68efa3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
fdiv.s f13, f29, f17, dyn # perform operation
fdiv.s f13, f29, f17, rdn # perform operation
fdiv.s f13, f29, f17, rmm # perform operation
fdiv.s f13, f29, f17, rne # perform operation
fdiv.s f13, f29, f17, rtz # perform operation
fdiv.s f13, f29, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f29, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f29, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f29, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f29, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f29, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x0)
li x21, 0x1386f66e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f8, 0(x2) # load 0x00800000 from memory into f8
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f20, 0(x2) # load 0x00000000 from memory into f20
fdiv.s f21, f8, f20, dyn # perform operation
fdiv.s f21, f8, f20, rdn # perform operation
fdiv.s f21, f8, f20, rmm # perform operation
fdiv.s f21, f8, f20, rne # perform operation
fdiv.s f21, f8, f20, rtz # perform operation
fdiv.s f21, f8, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f8, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f8, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f8, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f8, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f8, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80000000)
li x2, 0x421ec915 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f10, 0(x2) # load 0x00800000 from memory into f10
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f25, 0(x2) # load 0x80000000 from memory into f25
fdiv.s f2, f10, f25, dyn # perform operation
fdiv.s f2, f10, f25, rdn # perform operation
fdiv.s f2, f10, f25, rmm # perform operation
fdiv.s f2, f10, f25, rne # perform operation
fdiv.s f2, f10, f25, rtz # perform operation
fdiv.s f2, f10, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f10, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f10, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f10, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f10, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f10, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x3f800000)
li x29, 0xd510b792 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f20, 0(x2) # load 0x00800000 from memory into f20
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f21, 0(x2) # load 0x3f800000 from memory into f21
fdiv.s f29, f20, f21, dyn # perform operation
fdiv.s f29, f20, f21, rdn # perform operation
fdiv.s f29, f20, f21, rmm # perform operation
fdiv.s f29, f20, f21, rne # perform operation
fdiv.s f29, f20, f21, rtz # perform operation
fdiv.s f29, f20, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f20, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f20, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f20, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f20, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f20, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xbf800000)
li x23, 0x31330bda # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f28, 0(x2) # load 0xbf800000 from memory into f28
fdiv.s f23, f22, f28, dyn # perform operation
fdiv.s f23, f22, f28, rdn # perform operation
fdiv.s f23, f22, f28, rmm # perform operation
fdiv.s f23, f22, f28, rne # perform operation
fdiv.s f23, f22, f28, rtz # perform operation
fdiv.s f23, f22, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f22, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f22, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f22, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f22, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f22, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x3fc00000)
li x1, 0x698b23f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f9, 0(x2) # load 0x00800000 from memory into f9
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
fdiv.s f1, f9, f13, dyn # perform operation
fdiv.s f1, f9, f13, rdn # perform operation
fdiv.s f1, f9, f13, rmm # perform operation
fdiv.s f1, f9, f13, rne # perform operation
fdiv.s f1, f9, f13, rtz # perform operation
fdiv.s f1, f9, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f9, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f9, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f9, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f9, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f9, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xbfc00000)
li x5, 0xad7a445e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f31, 0(x2) # load 0xbfc00000 from memory into f31
fdiv.s f5, f23, f31, dyn # perform operation
fdiv.s f5, f23, f31, rdn # perform operation
fdiv.s f5, f23, f31, rmm # perform operation
fdiv.s f5, f23, f31, rne # perform operation
fdiv.s f5, f23, f31, rtz # perform operation
fdiv.s f5, f23, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f23, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f23, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f23, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f23, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f23, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x40000000)
li x22, 0xa67a0bf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f1, 0(x2) # load 0x00800000 from memory into f1
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f27, 0(x2) # load 0x40000000 from memory into f27
fdiv.s f22, f1, f27, dyn # perform operation
fdiv.s f22, f1, f27, rdn # perform operation
fdiv.s f22, f1, f27, rmm # perform operation
fdiv.s f22, f1, f27, rne # perform operation
fdiv.s f22, f1, f27, rtz # perform operation
fdiv.s f22, f1, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f1, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f1, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f1, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f1, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f1, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xc0000000)
li x5, 0xb5a4e64d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f3, 0(x2) # load 0x00800000 from memory into f3
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f7, 0(x2) # load 0xc0000000 from memory into f7
fdiv.s f5, f3, f7, dyn # perform operation
fdiv.s f5, f3, f7, rdn # perform operation
fdiv.s f5, f3, f7, rmm # perform operation
fdiv.s f5, f3, f7, rne # perform operation
fdiv.s f5, f3, f7, rtz # perform operation
fdiv.s f5, f3, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f3, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f3, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f3, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f3, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f3, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x800000)
li x21, 0x0a7577ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f2, 0(x2) # load 0x00800000 from memory into f2
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f1, 0(x2) # load 0x00800000 from memory into f1
fdiv.s f21, f2, f1, dyn # perform operation
fdiv.s f21, f2, f1, rdn # perform operation
fdiv.s f21, f2, f1, rmm # perform operation
fdiv.s f21, f2, f1, rne # perform operation
fdiv.s f21, f2, f1, rtz # perform operation
fdiv.s f21, f2, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f2, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f2, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f2, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f2, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f2, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80800000)
li x12, 0xb2f5ffb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f9, 0(x2) # load 0x00800000 from memory into f9
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f24, 0(x2) # load 0x80800000 from memory into f24
fdiv.s f12, f9, f24, dyn # perform operation
fdiv.s f12, f9, f24, rdn # perform operation
fdiv.s f12, f9, f24, rmm # perform operation
fdiv.s f12, f9, f24, rne # perform operation
fdiv.s f12, f9, f24, rtz # perform operation
fdiv.s f12, f9, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f9, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f9, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f9, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f9, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f9, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f7fffff)
li x11, 0xab48dbc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f1, 0(x2) # load 0x00800000 from memory into f1
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f22, 0(x2) # load 0x7f7fffff from memory into f22
fdiv.s f11, f1, f22, dyn # perform operation
fdiv.s f11, f1, f22, rdn # perform operation
fdiv.s f11, f1, f22, rmm # perform operation
fdiv.s f11, f1, f22, rne # perform operation
fdiv.s f11, f1, f22, rtz # perform operation
fdiv.s f11, f1, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f1, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f1, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f1, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f1, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f1, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xff7fffff)
li x6, 0x3c3f809c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f25, 0(x2) # load 0x00800000 from memory into f25
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f19, 0(x2) # load 0xff7fffff from memory into f19
fdiv.s f6, f25, f19, dyn # perform operation
fdiv.s f6, f25, f19, rdn # perform operation
fdiv.s f6, f25, f19, rmm # perform operation
fdiv.s f6, f25, f19, rne # perform operation
fdiv.s f6, f25, f19, rtz # perform operation
fdiv.s f6, f25, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f25, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f25, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f25, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f25, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f25, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fffff)
li x17, 0xe2e154f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f1, 0(x2) # load 0x007fffff from memory into f1
fdiv.s f17, f14, f1, dyn # perform operation
fdiv.s f17, f14, f1, rdn # perform operation
fdiv.s f17, f14, f1, rmm # perform operation
fdiv.s f17, f14, f1, rne # perform operation
fdiv.s f17, f14, f1, rtz # perform operation
fdiv.s f17, f14, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f14, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f14, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f14, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f14, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f14, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x807fffff)
li x25, 0x313898fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f9, 0(x2) # load 0x00800000 from memory into f9
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f31, 0(x2) # load 0x807fffff from memory into f31
fdiv.s f25, f9, f31, dyn # perform operation
fdiv.s f25, f9, f31, rdn # perform operation
fdiv.s f25, f9, f31, rmm # perform operation
fdiv.s f25, f9, f31, rne # perform operation
fdiv.s f25, f9, f31, rtz # perform operation
fdiv.s f25, f9, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f9, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f9, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f9, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f9, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f9, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x400000)
li x4, 0x0dccb31a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f24, 0(x2) # load 0x00800000 from memory into f24
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f23, 0(x2) # load 0x00400000 from memory into f23
fdiv.s f4, f24, f23, dyn # perform operation
fdiv.s f4, f24, f23, rdn # perform operation
fdiv.s f4, f24, f23, rmm # perform operation
fdiv.s f4, f24, f23, rne # perform operation
fdiv.s f4, f24, f23, rtz # perform operation
fdiv.s f4, f24, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f24, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f24, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f24, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f24, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f24, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80400000)
li x3, 0x5ec2e6d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f12, 0(x2) # load 0x00800000 from memory into f12
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f16, 0(x2) # load 0x80400000 from memory into f16
fdiv.s f3, f12, f16, dyn # perform operation
fdiv.s f3, f12, f16, rdn # perform operation
fdiv.s f3, f12, f16, rmm # perform operation
fdiv.s f3, f12, f16, rne # perform operation
fdiv.s f3, f12, f16, rtz # perform operation
fdiv.s f3, f12, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f12, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f12, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f12, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f12, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f12, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x1)
li x31, 0xe8e01411 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f17, 0(x2) # load 0x00800000 from memory into f17
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
fdiv.s f31, f17, f22, dyn # perform operation
fdiv.s f31, f17, f22, rdn # perform operation
fdiv.s f31, f17, f22, rmm # perform operation
fdiv.s f31, f17, f22, rne # perform operation
fdiv.s f31, f17, f22, rtz # perform operation
fdiv.s f31, f17, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f17, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f17, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f17, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f17, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f17, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80000001)
li x3, 0x47d0223b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f2, 0(x2) # load 0x00800000 from memory into f2
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
fdiv.s f3, f2, f7, dyn # perform operation
fdiv.s f3, f2, f7, rdn # perform operation
fdiv.s f3, f2, f7, rmm # perform operation
fdiv.s f3, f2, f7, rne # perform operation
fdiv.s f3, f2, f7, rtz # perform operation
fdiv.s f3, f2, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f2, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f2, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f2, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f2, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f2, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f800000)
li x4, 0xd4d0b1fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f12, 0(x2) # load 0x00800000 from memory into f12
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
fdiv.s f4, f12, f11, dyn # perform operation
fdiv.s f4, f12, f11, rdn # perform operation
fdiv.s f4, f12, f11, rmm # perform operation
fdiv.s f4, f12, f11, rne # perform operation
fdiv.s f4, f12, f11, rtz # perform operation
fdiv.s f4, f12, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f12, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f12, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f12, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f12, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f12, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xff800000)
li x20, 0xc8bf3daa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f4, 0(x2) # load 0x00800000 from memory into f4
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f13, 0(x2) # load 0xff800000 from memory into f13
fdiv.s f20, f4, f13, dyn # perform operation
fdiv.s f20, f4, f13, rdn # perform operation
fdiv.s f20, f4, f13, rmm # perform operation
fdiv.s f20, f4, f13, rne # perform operation
fdiv.s f20, f4, f13, rtz # perform operation
fdiv.s f20, f4, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f4, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f4, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f4, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f4, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f4, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fc00000)
li x27, 0x62a5958a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f4, 0(x2) # load 0x00800000 from memory into f4
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f31, 0(x2) # load 0x7fc00000 from memory into f31
fdiv.s f27, f4, f31, dyn # perform operation
fdiv.s f27, f4, f31, rdn # perform operation
fdiv.s f27, f4, f31, rmm # perform operation
fdiv.s f27, f4, f31, rne # perform operation
fdiv.s f27, f4, f31, rtz # perform operation
fdiv.s f27, f4, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f4, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f4, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f4, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f4, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f4, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fffffff)
li x25, 0x43753786 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f11, 0(x2) # load 0x7fffffff from memory into f11
fdiv.s f25, f22, f11, dyn # perform operation
fdiv.s f25, f22, f11, rdn # perform operation
fdiv.s f25, f22, f11, rmm # perform operation
fdiv.s f25, f22, f11, rne # perform operation
fdiv.s f25, f22, f11, rtz # perform operation
fdiv.s f25, f22, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f22, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f22, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f22, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f22, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f22, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f800001)
li x8, 0x142992b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f17, 0(x2) # load 0x00800000 from memory into f17
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
fdiv.s f8, f17, f19, dyn # perform operation
fdiv.s f8, f17, f19, rdn # perform operation
fdiv.s f8, f17, f19, rmm # perform operation
fdiv.s f8, f17, f19, rne # perform operation
fdiv.s f8, f17, f19, rtz # perform operation
fdiv.s f8, f17, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f17, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f17, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f17, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f17, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f17, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fbfffff)
li x4, 0x756f24b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f24, 0(x2) # load 0x00800000 from memory into f24
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f2, 0(x2) # load 0x7fbfffff from memory into f2
fdiv.s f4, f24, f2, dyn # perform operation
fdiv.s f4, f24, f2, rdn # perform operation
fdiv.s f4, f24, f2, rmm # perform operation
fdiv.s f4, f24, f2, rne # perform operation
fdiv.s f4, f24, f2, rtz # perform operation
fdiv.s f4, f24, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f24, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f24, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f24, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f24, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f24, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7ef8654f)
li x6, 0x870c34b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f15, 0(x2) # load 0x00800000 from memory into f15
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f22, 0(x2) # load 0x7ef8654f from memory into f22
fdiv.s f6, f15, f22, dyn # perform operation
fdiv.s f6, f15, f22, rdn # perform operation
fdiv.s f6, f15, f22, rmm # perform operation
fdiv.s f6, f15, f22, rne # perform operation
fdiv.s f6, f15, f22, rtz # perform operation
fdiv.s f6, f15, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f15, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f15, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f15, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f15, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f15, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x813d9ab0)
li x9, 0xfc913ab4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f13, 0(x2) # load 0x00800000 from memory into f13
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f10, 0(x2) # load 0x813d9ab0 from memory into f10
fdiv.s f9, f13, f10, dyn # perform operation
fdiv.s f9, f13, f10, rdn # perform operation
fdiv.s f9, f13, f10, rmm # perform operation
fdiv.s f9, f13, f10, rne # perform operation
fdiv.s f9, f13, f10, rtz # perform operation
fdiv.s f9, f13, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f13, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f13, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f13, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f13, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f13, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x0)
li x23, 0xf19bab3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f22, 0(x2) # load 0x80800000 from memory into f22
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f17, 0(x2) # load 0x00000000 from memory into f17
fdiv.s f23, f22, f17, dyn # perform operation
fdiv.s f23, f22, f17, rdn # perform operation
fdiv.s f23, f22, f17, rmm # perform operation
fdiv.s f23, f22, f17, rne # perform operation
fdiv.s f23, f22, f17, rtz # perform operation
fdiv.s f23, f22, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f22, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f22, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f22, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f22, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f22, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80000000)
li x7, 0xacc4dc7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f9, 0(x2) # load 0x80800000 from memory into f9
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f3, 0(x2) # load 0x80000000 from memory into f3
fdiv.s f7, f9, f3, dyn # perform operation
fdiv.s f7, f9, f3, rdn # perform operation
fdiv.s f7, f9, f3, rmm # perform operation
fdiv.s f7, f9, f3, rne # perform operation
fdiv.s f7, f9, f3, rtz # perform operation
fdiv.s f7, f9, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f9, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f9, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f9, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f9, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f9, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x3f800000)
li x26, 0xab2b4f41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f30, 0(x2) # load 0x80800000 from memory into f30
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
fdiv.s f26, f30, f11, dyn # perform operation
fdiv.s f26, f30, f11, rdn # perform operation
fdiv.s f26, f30, f11, rmm # perform operation
fdiv.s f26, f30, f11, rne # perform operation
fdiv.s f26, f30, f11, rtz # perform operation
fdiv.s f26, f30, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f30, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f30, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f30, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f30, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f30, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xbf800000)
li x24, 0x0b81df30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f2, 0(x2) # load 0x80800000 from memory into f2
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f6, 0(x2) # load 0xbf800000 from memory into f6
fdiv.s f24, f2, f6, dyn # perform operation
fdiv.s f24, f2, f6, rdn # perform operation
fdiv.s f24, f2, f6, rmm # perform operation
fdiv.s f24, f2, f6, rne # perform operation
fdiv.s f24, f2, f6, rtz # perform operation
fdiv.s f24, f2, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f2, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f2, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f2, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f2, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f2, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x3fc00000)
li x10, 0x36167cfd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f12, 0(x2) # load 0x80800000 from memory into f12
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f14, 0(x2) # load 0x3fc00000 from memory into f14
fdiv.s f10, f12, f14, dyn # perform operation
fdiv.s f10, f12, f14, rdn # perform operation
fdiv.s f10, f12, f14, rmm # perform operation
fdiv.s f10, f12, f14, rne # perform operation
fdiv.s f10, f12, f14, rtz # perform operation
fdiv.s f10, f12, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f12, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f12, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f12, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f12, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f12, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xbfc00000)
li x3, 0x1743cec8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f27, 0(x2) # load 0x80800000 from memory into f27
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f31, 0(x2) # load 0xbfc00000 from memory into f31
fdiv.s f3, f27, f31, dyn # perform operation
fdiv.s f3, f27, f31, rdn # perform operation
fdiv.s f3, f27, f31, rmm # perform operation
fdiv.s f3, f27, f31, rne # perform operation
fdiv.s f3, f27, f31, rtz # perform operation
fdiv.s f3, f27, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f27, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f27, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f27, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f27, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f27, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x40000000)
li x25, 0x38bbea21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f4, 0(x2) # load 0x80800000 from memory into f4
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f10, 0(x2) # load 0x40000000 from memory into f10
fdiv.s f25, f4, f10, dyn # perform operation
fdiv.s f25, f4, f10, rdn # perform operation
fdiv.s f25, f4, f10, rmm # perform operation
fdiv.s f25, f4, f10, rne # perform operation
fdiv.s f25, f4, f10, rtz # perform operation
fdiv.s f25, f4, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f4, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f4, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f4, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f4, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f4, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xc0000000)
li x7, 0xe5dbe6e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f8, 0(x2) # load 0x80800000 from memory into f8
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f18, 0(x2) # load 0xc0000000 from memory into f18
fdiv.s f7, f8, f18, dyn # perform operation
fdiv.s f7, f8, f18, rdn # perform operation
fdiv.s f7, f8, f18, rmm # perform operation
fdiv.s f7, f8, f18, rne # perform operation
fdiv.s f7, f8, f18, rtz # perform operation
fdiv.s f7, f8, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f8, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f8, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f8, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f8, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f8, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x800000)
li x26, 0xb68e4c2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f14, 0(x2) # load 0x80800000 from memory into f14
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f21, 0(x2) # load 0x00800000 from memory into f21
fdiv.s f26, f14, f21, dyn # perform operation
fdiv.s f26, f14, f21, rdn # perform operation
fdiv.s f26, f14, f21, rmm # perform operation
fdiv.s f26, f14, f21, rne # perform operation
fdiv.s f26, f14, f21, rtz # perform operation
fdiv.s f26, f14, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f14, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f14, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f14, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f14, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f14, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80800000)
li x25, 0xb1cf99c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f9, 0(x2) # load 0x80800000 from memory into f9
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f16, 0(x2) # load 0x80800000 from memory into f16
fdiv.s f25, f9, f16, dyn # perform operation
fdiv.s f25, f9, f16, rdn # perform operation
fdiv.s f25, f9, f16, rmm # perform operation
fdiv.s f25, f9, f16, rne # perform operation
fdiv.s f25, f9, f16, rtz # perform operation
fdiv.s f25, f9, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f9, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f9, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f9, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f9, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f9, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f7fffff)
li x21, 0xd7642ffa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f27, 0(x2) # load 0x80800000 from memory into f27
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f12, 0(x2) # load 0x7f7fffff from memory into f12
fdiv.s f21, f27, f12, dyn # perform operation
fdiv.s f21, f27, f12, rdn # perform operation
fdiv.s f21, f27, f12, rmm # perform operation
fdiv.s f21, f27, f12, rne # perform operation
fdiv.s f21, f27, f12, rtz # perform operation
fdiv.s f21, f27, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f27, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f27, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f27, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f27, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f27, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xff7fffff)
li x21, 0x0d150e44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f4, 0(x2) # load 0x80800000 from memory into f4
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f1, 0(x2) # load 0xff7fffff from memory into f1
fdiv.s f21, f4, f1, dyn # perform operation
fdiv.s f21, f4, f1, rdn # perform operation
fdiv.s f21, f4, f1, rmm # perform operation
fdiv.s f21, f4, f1, rne # perform operation
fdiv.s f21, f4, f1, rtz # perform operation
fdiv.s f21, f4, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f4, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f4, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f4, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f4, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f4, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fffff)
li x23, 0x8e4e95cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f11, 0(x2) # load 0x80800000 from memory into f11
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f13, 0(x2) # load 0x007fffff from memory into f13
fdiv.s f23, f11, f13, dyn # perform operation
fdiv.s f23, f11, f13, rdn # perform operation
fdiv.s f23, f11, f13, rmm # perform operation
fdiv.s f23, f11, f13, rne # perform operation
fdiv.s f23, f11, f13, rtz # perform operation
fdiv.s f23, f11, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f11, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f11, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f11, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f11, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f11, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x807fffff)
li x10, 0x8a6219e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f6, 0(x2) # load 0x80800000 from memory into f6
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f7, 0(x2) # load 0x807fffff from memory into f7
fdiv.s f10, f6, f7, dyn # perform operation
fdiv.s f10, f6, f7, rdn # perform operation
fdiv.s f10, f6, f7, rmm # perform operation
fdiv.s f10, f6, f7, rne # perform operation
fdiv.s f10, f6, f7, rtz # perform operation
fdiv.s f10, f6, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f6, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f6, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f6, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f6, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f6, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x400000)
li x14, 0x3dfee249 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f29, 0(x2) # load 0x80800000 from memory into f29
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f18, 0(x2) # load 0x00400000 from memory into f18
fdiv.s f14, f29, f18, dyn # perform operation
fdiv.s f14, f29, f18, rdn # perform operation
fdiv.s f14, f29, f18, rmm # perform operation
fdiv.s f14, f29, f18, rne # perform operation
fdiv.s f14, f29, f18, rtz # perform operation
fdiv.s f14, f29, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f29, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f29, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f29, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f29, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f29, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80400000)
li x29, 0x4eef9ab6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f15, 0(x2) # load 0x80400000 from memory into f15
fdiv.s f29, f28, f15, dyn # perform operation
fdiv.s f29, f28, f15, rdn # perform operation
fdiv.s f29, f28, f15, rmm # perform operation
fdiv.s f29, f28, f15, rne # perform operation
fdiv.s f29, f28, f15, rtz # perform operation
fdiv.s f29, f28, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f28, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f28, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f28, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f28, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f28, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x1)
li x20, 0xdb80786c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f1, 0(x2) # load 0x80800000 from memory into f1
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f4, 0(x2) # load 0x00000001 from memory into f4
fdiv.s f20, f1, f4, dyn # perform operation
fdiv.s f20, f1, f4, rdn # perform operation
fdiv.s f20, f1, f4, rmm # perform operation
fdiv.s f20, f1, f4, rne # perform operation
fdiv.s f20, f1, f4, rtz # perform operation
fdiv.s f20, f1, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f1, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f1, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f1, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f1, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f1, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80000001)
li x31, 0x92bbcc90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f9, 0(x2) # load 0x80000001 from memory into f9
fdiv.s f31, f18, f9, dyn # perform operation
fdiv.s f31, f18, f9, rdn # perform operation
fdiv.s f31, f18, f9, rmm # perform operation
fdiv.s f31, f18, f9, rne # perform operation
fdiv.s f31, f18, f9, rtz # perform operation
fdiv.s f31, f18, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f18, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f18, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f18, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f18, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f18, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f800000)
li x13, 0xb0e2ec35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f11, 0(x2) # load 0x80800000 from memory into f11
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f2, 0(x2) # load 0x7f800000 from memory into f2
fdiv.s f13, f11, f2, dyn # perform operation
fdiv.s f13, f11, f2, rdn # perform operation
fdiv.s f13, f11, f2, rmm # perform operation
fdiv.s f13, f11, f2, rne # perform operation
fdiv.s f13, f11, f2, rtz # perform operation
fdiv.s f13, f11, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f11, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f11, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f11, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f11, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f11, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xff800000)
li x14, 0x36916e8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f1, 0(x2) # load 0x80800000 from memory into f1
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f31, 0(x2) # load 0xff800000 from memory into f31
fdiv.s f14, f1, f31, dyn # perform operation
fdiv.s f14, f1, f31, rdn # perform operation
fdiv.s f14, f1, f31, rmm # perform operation
fdiv.s f14, f1, f31, rne # perform operation
fdiv.s f14, f1, f31, rtz # perform operation
fdiv.s f14, f1, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f1, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f1, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f1, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f1, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f1, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fc00000)
li x14, 0x03508c91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f30, 0(x2) # load 0x80800000 from memory into f30
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f13, 0(x2) # load 0x7fc00000 from memory into f13
fdiv.s f14, f30, f13, dyn # perform operation
fdiv.s f14, f30, f13, rdn # perform operation
fdiv.s f14, f30, f13, rmm # perform operation
fdiv.s f14, f30, f13, rne # perform operation
fdiv.s f14, f30, f13, rtz # perform operation
fdiv.s f14, f30, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f30, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f30, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f30, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f30, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f30, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fffffff)
li x18, 0xa613fb1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f1, 0(x2) # load 0x80800000 from memory into f1
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f23, 0(x2) # load 0x7fffffff from memory into f23
fdiv.s f18, f1, f23, dyn # perform operation
fdiv.s f18, f1, f23, rdn # perform operation
fdiv.s f18, f1, f23, rmm # perform operation
fdiv.s f18, f1, f23, rne # perform operation
fdiv.s f18, f1, f23, rtz # perform operation
fdiv.s f18, f1, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f1, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f1, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f1, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f1, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f1, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f800001)
li x23, 0xf4210090 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f12, 0(x2) # load 0x7f800001 from memory into f12
fdiv.s f23, f18, f12, dyn # perform operation
fdiv.s f23, f18, f12, rdn # perform operation
fdiv.s f23, f18, f12, rmm # perform operation
fdiv.s f23, f18, f12, rne # perform operation
fdiv.s f23, f18, f12, rtz # perform operation
fdiv.s f23, f18, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f18, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f18, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f18, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f18, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f18, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fbfffff)
li x17, 0x282cbec9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f21, 0(x2) # load 0x7fbfffff from memory into f21
fdiv.s f17, f18, f21, dyn # perform operation
fdiv.s f17, f18, f21, rdn # perform operation
fdiv.s f17, f18, f21, rmm # perform operation
fdiv.s f17, f18, f21, rne # perform operation
fdiv.s f17, f18, f21, rtz # perform operation
fdiv.s f17, f18, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f18, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f18, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f18, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f18, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f18, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7ef8654f)
li x17, 0x2814f78e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f3, 0(x2) # load 0x80800000 from memory into f3
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f26, 0(x2) # load 0x7ef8654f from memory into f26
fdiv.s f17, f3, f26, dyn # perform operation
fdiv.s f17, f3, f26, rdn # perform operation
fdiv.s f17, f3, f26, rmm # perform operation
fdiv.s f17, f3, f26, rne # perform operation
fdiv.s f17, f3, f26, rtz # perform operation
fdiv.s f17, f3, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f3, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f3, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f3, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f3, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f3, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x813d9ab0)
li x13, 0xdfd55c75 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f4, 0(x2) # load 0x80800000 from memory into f4
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f7, 0(x2) # load 0x813d9ab0 from memory into f7
fdiv.s f13, f4, f7, dyn # perform operation
fdiv.s f13, f4, f7, rdn # perform operation
fdiv.s f13, f4, f7, rmm # perform operation
fdiv.s f13, f4, f7, rne # perform operation
fdiv.s f13, f4, f7, rtz # perform operation
fdiv.s f13, f4, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f4, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f4, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f4, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f4, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f4, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x0)
li x6, 0xfab04130 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f19, 0(x2) # load 0x7f7fffff from memory into f19
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f24, 0(x2) # load 0x00000000 from memory into f24
fdiv.s f6, f19, f24, dyn # perform operation
fdiv.s f6, f19, f24, rdn # perform operation
fdiv.s f6, f19, f24, rmm # perform operation
fdiv.s f6, f19, f24, rne # perform operation
fdiv.s f6, f19, f24, rtz # perform operation
fdiv.s f6, f19, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f19, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f19, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f19, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f19, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f19, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80000000)
li x12, 0x0d29819c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f31, 0(x2) # load 0x7f7fffff from memory into f31
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f29, 0(x2) # load 0x80000000 from memory into f29
fdiv.s f12, f31, f29, dyn # perform operation
fdiv.s f12, f31, f29, rdn # perform operation
fdiv.s f12, f31, f29, rmm # perform operation
fdiv.s f12, f31, f29, rne # perform operation
fdiv.s f12, f31, f29, rtz # perform operation
fdiv.s f12, f31, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f31, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f31, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f31, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f31, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f31, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x3f800000)
li x11, 0xb906296a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f15, 0(x2) # load 0x3f800000 from memory into f15
fdiv.s f11, f16, f15, dyn # perform operation
fdiv.s f11, f16, f15, rdn # perform operation
fdiv.s f11, f16, f15, rmm # perform operation
fdiv.s f11, f16, f15, rne # perform operation
fdiv.s f11, f16, f15, rtz # perform operation
fdiv.s f11, f16, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f16, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f16, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f16, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f16, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f16, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xbf800000)
li x22, 0x66188d8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f28, 0(x2) # load 0x7f7fffff from memory into f28
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f13, 0(x2) # load 0xbf800000 from memory into f13
fdiv.s f22, f28, f13, dyn # perform operation
fdiv.s f22, f28, f13, rdn # perform operation
fdiv.s f22, f28, f13, rmm # perform operation
fdiv.s f22, f28, f13, rne # perform operation
fdiv.s f22, f28, f13, rtz # perform operation
fdiv.s f22, f28, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f28, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f28, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f28, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f28, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f28, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x3fc00000)
li x17, 0x24e75787 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f11, 0(x2) # load 0x3fc00000 from memory into f11
fdiv.s f17, f6, f11, dyn # perform operation
fdiv.s f17, f6, f11, rdn # perform operation
fdiv.s f17, f6, f11, rmm # perform operation
fdiv.s f17, f6, f11, rne # perform operation
fdiv.s f17, f6, f11, rtz # perform operation
fdiv.s f17, f6, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f6, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f6, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f6, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f6, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f6, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xbfc00000)
li x17, 0xde7083bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f18, 0(x2) # load 0x7f7fffff from memory into f18
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f19, 0(x2) # load 0xbfc00000 from memory into f19
fdiv.s f17, f18, f19, dyn # perform operation
fdiv.s f17, f18, f19, rdn # perform operation
fdiv.s f17, f18, f19, rmm # perform operation
fdiv.s f17, f18, f19, rne # perform operation
fdiv.s f17, f18, f19, rtz # perform operation
fdiv.s f17, f18, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f18, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f18, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f18, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f18, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f18, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x40000000)
li x1, 0x6e3c987e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f20, 0(x2) # load 0x7f7fffff from memory into f20
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f28, 0(x2) # load 0x40000000 from memory into f28
fdiv.s f1, f20, f28, dyn # perform operation
fdiv.s f1, f20, f28, rdn # perform operation
fdiv.s f1, f20, f28, rmm # perform operation
fdiv.s f1, f20, f28, rne # perform operation
fdiv.s f1, f20, f28, rtz # perform operation
fdiv.s f1, f20, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f20, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f20, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f20, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f20, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f20, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xc0000000)
li x24, 0x42cce6d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f12, 0(x2) # load 0x7f7fffff from memory into f12
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f1, 0(x2) # load 0xc0000000 from memory into f1
fdiv.s f24, f12, f1, dyn # perform operation
fdiv.s f24, f12, f1, rdn # perform operation
fdiv.s f24, f12, f1, rmm # perform operation
fdiv.s f24, f12, f1, rne # perform operation
fdiv.s f24, f12, f1, rtz # perform operation
fdiv.s f24, f12, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f12, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f12, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f12, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f12, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f12, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x800000)
li x4, 0xf225c1fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
fdiv.s f4, f15, f11, dyn # perform operation
fdiv.s f4, f15, f11, rdn # perform operation
fdiv.s f4, f15, f11, rmm # perform operation
fdiv.s f4, f15, f11, rne # perform operation
fdiv.s f4, f15, f11, rtz # perform operation
fdiv.s f4, f15, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f15, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f15, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f15, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f15, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f15, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80800000)
li x30, 0x215a96d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f14, 0(x2) # load 0x7f7fffff from memory into f14
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f7, 0(x2) # load 0x80800000 from memory into f7
fdiv.s f30, f14, f7, dyn # perform operation
fdiv.s f30, f14, f7, rdn # perform operation
fdiv.s f30, f14, f7, rmm # perform operation
fdiv.s f30, f14, f7, rne # perform operation
fdiv.s f30, f14, f7, rtz # perform operation
fdiv.s f30, f14, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f14, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f14, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f14, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f14, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f14, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f7fffff)
li x18, 0x2e875a72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f22, 0(x2) # load 0x7f7fffff from memory into f22
fdiv.s f18, f3, f22, dyn # perform operation
fdiv.s f18, f3, f22, rdn # perform operation
fdiv.s f18, f3, f22, rmm # perform operation
fdiv.s f18, f3, f22, rne # perform operation
fdiv.s f18, f3, f22, rtz # perform operation
fdiv.s f18, f3, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f3, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f3, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f3, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f3, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f3, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xff7fffff)
li x6, 0xe29307ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f1, 0(x2) # load 0x7f7fffff from memory into f1
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
fdiv.s f6, f1, f12, dyn # perform operation
fdiv.s f6, f1, f12, rdn # perform operation
fdiv.s f6, f1, f12, rmm # perform operation
fdiv.s f6, f1, f12, rne # perform operation
fdiv.s f6, f1, f12, rtz # perform operation
fdiv.s f6, f1, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f1, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f1, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f1, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f1, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f1, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fffff)
li x21, 0x4cac665a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f28, 0(x2) # load 0x7f7fffff from memory into f28
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f7, 0(x2) # load 0x007fffff from memory into f7
fdiv.s f21, f28, f7, dyn # perform operation
fdiv.s f21, f28, f7, rdn # perform operation
fdiv.s f21, f28, f7, rmm # perform operation
fdiv.s f21, f28, f7, rne # perform operation
fdiv.s f21, f28, f7, rtz # perform operation
fdiv.s f21, f28, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f28, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f28, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f28, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f28, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f28, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x807fffff)
li x19, 0xa0875c12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f22, 0(x2) # load 0x807fffff from memory into f22
fdiv.s f19, f3, f22, dyn # perform operation
fdiv.s f19, f3, f22, rdn # perform operation
fdiv.s f19, f3, f22, rmm # perform operation
fdiv.s f19, f3, f22, rne # perform operation
fdiv.s f19, f3, f22, rtz # perform operation
fdiv.s f19, f3, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f3, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f3, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f3, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f3, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f3, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x400000)
li x4, 0x8d3fc281 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f11, 0(x2) # load 0x7f7fffff from memory into f11
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f17, 0(x2) # load 0x00400000 from memory into f17
fdiv.s f4, f11, f17, dyn # perform operation
fdiv.s f4, f11, f17, rdn # perform operation
fdiv.s f4, f11, f17, rmm # perform operation
fdiv.s f4, f11, f17, rne # perform operation
fdiv.s f4, f11, f17, rtz # perform operation
fdiv.s f4, f11, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f11, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f11, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f11, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f11, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f11, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80400000)
li x12, 0xdbec64bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f9, 0(x2) # load 0x7f7fffff from memory into f9
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f23, 0(x2) # load 0x80400000 from memory into f23
fdiv.s f12, f9, f23, dyn # perform operation
fdiv.s f12, f9, f23, rdn # perform operation
fdiv.s f12, f9, f23, rmm # perform operation
fdiv.s f12, f9, f23, rne # perform operation
fdiv.s f12, f9, f23, rtz # perform operation
fdiv.s f12, f9, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f9, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f9, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f9, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f9, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f9, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x1)
li x14, 0x31029a72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f12, 0(x2) # load 0x00000001 from memory into f12
fdiv.s f14, f3, f12, dyn # perform operation
fdiv.s f14, f3, f12, rdn # perform operation
fdiv.s f14, f3, f12, rmm # perform operation
fdiv.s f14, f3, f12, rne # perform operation
fdiv.s f14, f3, f12, rtz # perform operation
fdiv.s f14, f3, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f3, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f3, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f3, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f3, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f3, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80000001)
li x1, 0x599bd61e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f17, 0(x2) # load 0x7f7fffff from memory into f17
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
fdiv.s f1, f17, f10, dyn # perform operation
fdiv.s f1, f17, f10, rdn # perform operation
fdiv.s f1, f17, f10, rmm # perform operation
fdiv.s f1, f17, f10, rne # perform operation
fdiv.s f1, f17, f10, rtz # perform operation
fdiv.s f1, f17, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f17, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f17, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f17, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f17, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f17, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f800000)
li x28, 0x07de28ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f27, 0(x2) # load 0x7f7fffff from memory into f27
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f17, 0(x2) # load 0x7f800000 from memory into f17
fdiv.s f28, f27, f17, dyn # perform operation
fdiv.s f28, f27, f17, rdn # perform operation
fdiv.s f28, f27, f17, rmm # perform operation
fdiv.s f28, f27, f17, rne # perform operation
fdiv.s f28, f27, f17, rtz # perform operation
fdiv.s f28, f27, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f27, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f27, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f27, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f27, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f27, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xff800000)
li x3, 0xc1f947cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
fdiv.s f3, f16, f14, dyn # perform operation
fdiv.s f3, f16, f14, rdn # perform operation
fdiv.s f3, f16, f14, rmm # perform operation
fdiv.s f3, f16, f14, rne # perform operation
fdiv.s f3, f16, f14, rtz # perform operation
fdiv.s f3, f16, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f16, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f16, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f16, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f16, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f16, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fc00000)
li x23, 0x3b086e9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f9, 0(x2) # load 0x7f7fffff from memory into f9
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f27, 0(x2) # load 0x7fc00000 from memory into f27
fdiv.s f23, f9, f27, dyn # perform operation
fdiv.s f23, f9, f27, rdn # perform operation
fdiv.s f23, f9, f27, rmm # perform operation
fdiv.s f23, f9, f27, rne # perform operation
fdiv.s f23, f9, f27, rtz # perform operation
fdiv.s f23, f9, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f9, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f9, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f9, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f9, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f9, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fffffff)
li x20, 0x43c20d43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f27, 0(x2) # load 0x7fffffff from memory into f27
fdiv.s f20, f6, f27, dyn # perform operation
fdiv.s f20, f6, f27, rdn # perform operation
fdiv.s f20, f6, f27, rmm # perform operation
fdiv.s f20, f6, f27, rne # perform operation
fdiv.s f20, f6, f27, rtz # perform operation
fdiv.s f20, f6, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f6, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f6, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f6, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f6, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f6, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f800001)
li x30, 0x4bcb30dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f18, 0(x2) # load 0x7f7fffff from memory into f18
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f2, 0(x2) # load 0x7f800001 from memory into f2
fdiv.s f30, f18, f2, dyn # perform operation
fdiv.s f30, f18, f2, rdn # perform operation
fdiv.s f30, f18, f2, rmm # perform operation
fdiv.s f30, f18, f2, rne # perform operation
fdiv.s f30, f18, f2, rtz # perform operation
fdiv.s f30, f18, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f18, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f18, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f18, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f18, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f18, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fbfffff)
li x28, 0x3195a84b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f24, 0(x2) # load 0x7f7fffff from memory into f24
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f9, 0(x2) # load 0x7fbfffff from memory into f9
fdiv.s f28, f24, f9, dyn # perform operation
fdiv.s f28, f24, f9, rdn # perform operation
fdiv.s f28, f24, f9, rmm # perform operation
fdiv.s f28, f24, f9, rne # perform operation
fdiv.s f28, f24, f9, rtz # perform operation
fdiv.s f28, f24, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f24, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f24, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f24, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f24, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f24, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7ef8654f)
li x23, 0x775582c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f8, 0(x2) # load 0x7f7fffff from memory into f8
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f4, 0(x2) # load 0x7ef8654f from memory into f4
fdiv.s f23, f8, f4, dyn # perform operation
fdiv.s f23, f8, f4, rdn # perform operation
fdiv.s f23, f8, f4, rmm # perform operation
fdiv.s f23, f8, f4, rne # perform operation
fdiv.s f23, f8, f4, rtz # perform operation
fdiv.s f23, f8, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f8, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f8, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f8, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f8, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f8, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x813d9ab0)
li x19, 0xc5517077 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f25, 0(x2) # load 0x7f7fffff from memory into f25
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f1, 0(x2) # load 0x813d9ab0 from memory into f1
fdiv.s f19, f25, f1, dyn # perform operation
fdiv.s f19, f25, f1, rdn # perform operation
fdiv.s f19, f25, f1, rmm # perform operation
fdiv.s f19, f25, f1, rne # perform operation
fdiv.s f19, f25, f1, rtz # perform operation
fdiv.s f19, f25, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f25, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f25, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f25, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f25, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f25, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x0)
li x30, 0xa824bca8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f23, 0(x2) # load 0xff7fffff from memory into f23
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f20, 0(x2) # load 0x00000000 from memory into f20
fdiv.s f30, f23, f20, dyn # perform operation
fdiv.s f30, f23, f20, rdn # perform operation
fdiv.s f30, f23, f20, rmm # perform operation
fdiv.s f30, f23, f20, rne # perform operation
fdiv.s f30, f23, f20, rtz # perform operation
fdiv.s f30, f23, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f23, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f23, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f23, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f23, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f23, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80000000)
li x11, 0xd323f7ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f1, 0(x2) # load 0xff7fffff from memory into f1
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f12, 0(x2) # load 0x80000000 from memory into f12
fdiv.s f11, f1, f12, dyn # perform operation
fdiv.s f11, f1, f12, rdn # perform operation
fdiv.s f11, f1, f12, rmm # perform operation
fdiv.s f11, f1, f12, rne # perform operation
fdiv.s f11, f1, f12, rtz # perform operation
fdiv.s f11, f1, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f1, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f1, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f1, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f1, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f1, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x3f800000)
li x23, 0x5bc6b5fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f26, 0(x2) # load 0xff7fffff from memory into f26
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f21, 0(x2) # load 0x3f800000 from memory into f21
fdiv.s f23, f26, f21, dyn # perform operation
fdiv.s f23, f26, f21, rdn # perform operation
fdiv.s f23, f26, f21, rmm # perform operation
fdiv.s f23, f26, f21, rne # perform operation
fdiv.s f23, f26, f21, rtz # perform operation
fdiv.s f23, f26, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f26, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f26, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f26, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f26, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f26, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xbf800000)
li x10, 0x7e12a68b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f26, 0(x2) # load 0xbf800000 from memory into f26
fdiv.s f10, f12, f26, dyn # perform operation
fdiv.s f10, f12, f26, rdn # perform operation
fdiv.s f10, f12, f26, rmm # perform operation
fdiv.s f10, f12, f26, rne # perform operation
fdiv.s f10, f12, f26, rtz # perform operation
fdiv.s f10, f12, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f12, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f12, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f12, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f12, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f12, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x3fc00000)
li x28, 0xfaa602fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f19, 0(x2) # load 0xff7fffff from memory into f19
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f27, 0(x2) # load 0x3fc00000 from memory into f27
fdiv.s f28, f19, f27, dyn # perform operation
fdiv.s f28, f19, f27, rdn # perform operation
fdiv.s f28, f19, f27, rmm # perform operation
fdiv.s f28, f19, f27, rne # perform operation
fdiv.s f28, f19, f27, rtz # perform operation
fdiv.s f28, f19, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f19, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f19, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f19, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f19, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f19, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xbfc00000)
li x10, 0xdf9507d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f13, 0(x2) # load 0xff7fffff from memory into f13
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f6, 0(x2) # load 0xbfc00000 from memory into f6
fdiv.s f10, f13, f6, dyn # perform operation
fdiv.s f10, f13, f6, rdn # perform operation
fdiv.s f10, f13, f6, rmm # perform operation
fdiv.s f10, f13, f6, rne # perform operation
fdiv.s f10, f13, f6, rtz # perform operation
fdiv.s f10, f13, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f13, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f13, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f13, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f13, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f13, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x40000000)
li x7, 0xa3ed2c0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f8, 0(x2) # load 0xff7fffff from memory into f8
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f3, 0(x2) # load 0x40000000 from memory into f3
fdiv.s f7, f8, f3, dyn # perform operation
fdiv.s f7, f8, f3, rdn # perform operation
fdiv.s f7, f8, f3, rmm # perform operation
fdiv.s f7, f8, f3, rne # perform operation
fdiv.s f7, f8, f3, rtz # perform operation
fdiv.s f7, f8, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f8, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f8, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f8, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f8, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f8, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xc0000000)
li x11, 0x695a1e61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f27, 0(x2) # load 0xff7fffff from memory into f27
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
fdiv.s f11, f27, f31, dyn # perform operation
fdiv.s f11, f27, f31, rdn # perform operation
fdiv.s f11, f27, f31, rmm # perform operation
fdiv.s f11, f27, f31, rne # perform operation
fdiv.s f11, f27, f31, rtz # perform operation
fdiv.s f11, f27, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f27, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f27, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f27, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f27, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f27, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x800000)
li x1, 0xb3541682 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f10, 0(x2) # load 0xff7fffff from memory into f10
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f4, 0(x2) # load 0x00800000 from memory into f4
fdiv.s f1, f10, f4, dyn # perform operation
fdiv.s f1, f10, f4, rdn # perform operation
fdiv.s f1, f10, f4, rmm # perform operation
fdiv.s f1, f10, f4, rne # perform operation
fdiv.s f1, f10, f4, rtz # perform operation
fdiv.s f1, f10, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f10, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f10, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f10, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f10, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f10, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80800000)
li x3, 0xaf3f5d77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f7, 0(x2) # load 0xff7fffff from memory into f7
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f21, 0(x2) # load 0x80800000 from memory into f21
fdiv.s f3, f7, f21, dyn # perform operation
fdiv.s f3, f7, f21, rdn # perform operation
fdiv.s f3, f7, f21, rmm # perform operation
fdiv.s f3, f7, f21, rne # perform operation
fdiv.s f3, f7, f21, rtz # perform operation
fdiv.s f3, f7, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f7, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f7, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f7, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f7, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f7, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f7fffff)
li x8, 0x0be90c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f18, 0(x2) # load 0xff7fffff from memory into f18
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f24, 0(x2) # load 0x7f7fffff from memory into f24
fdiv.s f8, f18, f24, dyn # perform operation
fdiv.s f8, f18, f24, rdn # perform operation
fdiv.s f8, f18, f24, rmm # perform operation
fdiv.s f8, f18, f24, rne # perform operation
fdiv.s f8, f18, f24, rtz # perform operation
fdiv.s f8, f18, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f18, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f18, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f18, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f18, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f18, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xff7fffff)
li x2, 0xf4ef3b2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f29, 0(x2) # load 0xff7fffff from memory into f29
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f15, 0(x2) # load 0xff7fffff from memory into f15
fdiv.s f2, f29, f15, dyn # perform operation
fdiv.s f2, f29, f15, rdn # perform operation
fdiv.s f2, f29, f15, rmm # perform operation
fdiv.s f2, f29, f15, rne # perform operation
fdiv.s f2, f29, f15, rtz # perform operation
fdiv.s f2, f29, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f29, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f29, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f29, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f29, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f29, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fffff)
li x18, 0xb57dc78f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f16, 0(x2) # load 0xff7fffff from memory into f16
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
fdiv.s f18, f16, f12, dyn # perform operation
fdiv.s f18, f16, f12, rdn # perform operation
fdiv.s f18, f16, f12, rmm # perform operation
fdiv.s f18, f16, f12, rne # perform operation
fdiv.s f18, f16, f12, rtz # perform operation
fdiv.s f18, f16, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f16, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f16, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f16, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f16, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f16, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x807fffff)
li x24, 0x4283bb34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f30, 0(x2) # load 0xff7fffff from memory into f30
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f14, 0(x2) # load 0x807fffff from memory into f14
fdiv.s f24, f30, f14, dyn # perform operation
fdiv.s f24, f30, f14, rdn # perform operation
fdiv.s f24, f30, f14, rmm # perform operation
fdiv.s f24, f30, f14, rne # perform operation
fdiv.s f24, f30, f14, rtz # perform operation
fdiv.s f24, f30, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f30, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f30, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f30, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f30, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f30, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x400000)
li x15, 0x16743c30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f1, 0(x2) # load 0xff7fffff from memory into f1
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
fdiv.s f15, f1, f21, dyn # perform operation
fdiv.s f15, f1, f21, rdn # perform operation
fdiv.s f15, f1, f21, rmm # perform operation
fdiv.s f15, f1, f21, rne # perform operation
fdiv.s f15, f1, f21, rtz # perform operation
fdiv.s f15, f1, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f1, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f1, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f1, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f1, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f1, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80400000)
li x20, 0xe8b8dffb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f19, 0(x2) # load 0xff7fffff from memory into f19
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f14, 0(x2) # load 0x80400000 from memory into f14
fdiv.s f20, f19, f14, dyn # perform operation
fdiv.s f20, f19, f14, rdn # perform operation
fdiv.s f20, f19, f14, rmm # perform operation
fdiv.s f20, f19, f14, rne # perform operation
fdiv.s f20, f19, f14, rtz # perform operation
fdiv.s f20, f19, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f19, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f19, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f19, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f19, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f19, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x1)
li x21, 0xfd0abd3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f6, 0(x2) # load 0xff7fffff from memory into f6
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f18, 0(x2) # load 0x00000001 from memory into f18
fdiv.s f21, f6, f18, dyn # perform operation
fdiv.s f21, f6, f18, rdn # perform operation
fdiv.s f21, f6, f18, rmm # perform operation
fdiv.s f21, f6, f18, rne # perform operation
fdiv.s f21, f6, f18, rtz # perform operation
fdiv.s f21, f6, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f6, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f6, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f6, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f6, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f6, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80000001)
li x13, 0xa392258c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f1, 0(x2) # load 0xff7fffff from memory into f1
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f3, 0(x2) # load 0x80000001 from memory into f3
fdiv.s f13, f1, f3, dyn # perform operation
fdiv.s f13, f1, f3, rdn # perform operation
fdiv.s f13, f1, f3, rmm # perform operation
fdiv.s f13, f1, f3, rne # perform operation
fdiv.s f13, f1, f3, rtz # perform operation
fdiv.s f13, f1, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f1, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f1, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f1, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f1, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f1, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f800000)
li x24, 0xf025c450 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f13, 0(x2) # load 0xff7fffff from memory into f13
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
fdiv.s f24, f13, f27, dyn # perform operation
fdiv.s f24, f13, f27, rdn # perform operation
fdiv.s f24, f13, f27, rmm # perform operation
fdiv.s f24, f13, f27, rne # perform operation
fdiv.s f24, f13, f27, rtz # perform operation
fdiv.s f24, f13, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f13, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f13, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f13, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f13, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f13, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xff800000)
li x5, 0xdea096e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f17, 0(x2) # load 0xff7fffff from memory into f17
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f29, 0(x2) # load 0xff800000 from memory into f29
fdiv.s f5, f17, f29, dyn # perform operation
fdiv.s f5, f17, f29, rdn # perform operation
fdiv.s f5, f17, f29, rmm # perform operation
fdiv.s f5, f17, f29, rne # perform operation
fdiv.s f5, f17, f29, rtz # perform operation
fdiv.s f5, f17, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f17, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f17, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f17, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f17, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f17, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fc00000)
li x18, 0x36c8386d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f15, 0(x2) # load 0xff7fffff from memory into f15
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f3, 0(x2) # load 0x7fc00000 from memory into f3
fdiv.s f18, f15, f3, dyn # perform operation
fdiv.s f18, f15, f3, rdn # perform operation
fdiv.s f18, f15, f3, rmm # perform operation
fdiv.s f18, f15, f3, rne # perform operation
fdiv.s f18, f15, f3, rtz # perform operation
fdiv.s f18, f15, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f15, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f15, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f15, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f15, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f15, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fffffff)
li x28, 0x588a8c9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f5, 0(x2) # load 0xff7fffff from memory into f5
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f14, 0(x2) # load 0x7fffffff from memory into f14
fdiv.s f28, f5, f14, dyn # perform operation
fdiv.s f28, f5, f14, rdn # perform operation
fdiv.s f28, f5, f14, rmm # perform operation
fdiv.s f28, f5, f14, rne # perform operation
fdiv.s f28, f5, f14, rtz # perform operation
fdiv.s f28, f5, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f5, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f5, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f5, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f5, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f5, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f800001)
li x7, 0xe6265065 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f5, 0(x2) # load 0xff7fffff from memory into f5
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f16, 0(x2) # load 0x7f800001 from memory into f16
fdiv.s f7, f5, f16, dyn # perform operation
fdiv.s f7, f5, f16, rdn # perform operation
fdiv.s f7, f5, f16, rmm # perform operation
fdiv.s f7, f5, f16, rne # perform operation
fdiv.s f7, f5, f16, rtz # perform operation
fdiv.s f7, f5, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f5, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f5, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f5, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f5, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f5, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fbfffff)
li x28, 0x24cdd2e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f29, 0(x2) # load 0xff7fffff from memory into f29
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f22, 0(x2) # load 0x7fbfffff from memory into f22
fdiv.s f28, f29, f22, dyn # perform operation
fdiv.s f28, f29, f22, rdn # perform operation
fdiv.s f28, f29, f22, rmm # perform operation
fdiv.s f28, f29, f22, rne # perform operation
fdiv.s f28, f29, f22, rtz # perform operation
fdiv.s f28, f29, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f29, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f29, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f29, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f29, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f29, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7ef8654f)
li x15, 0x1202fad6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f9, 0(x2) # load 0x7ef8654f from memory into f9
fdiv.s f15, f31, f9, dyn # perform operation
fdiv.s f15, f31, f9, rdn # perform operation
fdiv.s f15, f31, f9, rmm # perform operation
fdiv.s f15, f31, f9, rne # perform operation
fdiv.s f15, f31, f9, rtz # perform operation
fdiv.s f15, f31, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f31, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f31, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f31, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f31, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f31, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x813d9ab0)
li x13, 0xbb228efa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f17, 0(x2) # load 0xff7fffff from memory into f17
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f9, 0(x2) # load 0x813d9ab0 from memory into f9
fdiv.s f13, f17, f9, dyn # perform operation
fdiv.s f13, f17, f9, rdn # perform operation
fdiv.s f13, f17, f9, rmm # perform operation
fdiv.s f13, f17, f9, rne # perform operation
fdiv.s f13, f17, f9, rtz # perform operation
fdiv.s f13, f17, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f17, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f17, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f17, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f17, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f17, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x0)
li x10, 0xd270839a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
fdiv.s f10, f17, f15, dyn # perform operation
fdiv.s f10, f17, f15, rdn # perform operation
fdiv.s f10, f17, f15, rmm # perform operation
fdiv.s f10, f17, f15, rne # perform operation
fdiv.s f10, f17, f15, rtz # perform operation
fdiv.s f10, f17, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f17, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f17, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f17, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f17, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f17, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80000000)
li x23, 0x3ad41947 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f26, 0(x2) # load 0x007fffff from memory into f26
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f22, 0(x2) # load 0x80000000 from memory into f22
fdiv.s f23, f26, f22, dyn # perform operation
fdiv.s f23, f26, f22, rdn # perform operation
fdiv.s f23, f26, f22, rmm # perform operation
fdiv.s f23, f26, f22, rne # perform operation
fdiv.s f23, f26, f22, rtz # perform operation
fdiv.s f23, f26, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f26, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f26, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f26, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f26, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f26, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x3f800000)
li x5, 0x16941e04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f4, 0(x2) # load 0x007fffff from memory into f4
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f16, 0(x2) # load 0x3f800000 from memory into f16
fdiv.s f5, f4, f16, dyn # perform operation
fdiv.s f5, f4, f16, rdn # perform operation
fdiv.s f5, f4, f16, rmm # perform operation
fdiv.s f5, f4, f16, rne # perform operation
fdiv.s f5, f4, f16, rtz # perform operation
fdiv.s f5, f4, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f4, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f4, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f4, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f4, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f4, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xbf800000)
li x17, 0x9b8b0eb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f11, 0(x2) # load 0x007fffff from memory into f11
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f29, 0(x2) # load 0xbf800000 from memory into f29
fdiv.s f17, f11, f29, dyn # perform operation
fdiv.s f17, f11, f29, rdn # perform operation
fdiv.s f17, f11, f29, rmm # perform operation
fdiv.s f17, f11, f29, rne # perform operation
fdiv.s f17, f11, f29, rtz # perform operation
fdiv.s f17, f11, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f11, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f11, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f11, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f11, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f11, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x3fc00000)
li x28, 0x346f4350 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f21, 0(x2) # load 0x007fffff from memory into f21
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f19, 0(x2) # load 0x3fc00000 from memory into f19
fdiv.s f28, f21, f19, dyn # perform operation
fdiv.s f28, f21, f19, rdn # perform operation
fdiv.s f28, f21, f19, rmm # perform operation
fdiv.s f28, f21, f19, rne # perform operation
fdiv.s f28, f21, f19, rtz # perform operation
fdiv.s f28, f21, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f21, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f21, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f21, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f21, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f21, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xbfc00000)
li x17, 0xd541b42e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f6, 0(x2) # load 0xbfc00000 from memory into f6
fdiv.s f17, f12, f6, dyn # perform operation
fdiv.s f17, f12, f6, rdn # perform operation
fdiv.s f17, f12, f6, rmm # perform operation
fdiv.s f17, f12, f6, rne # perform operation
fdiv.s f17, f12, f6, rtz # perform operation
fdiv.s f17, f12, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f12, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f12, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f12, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f12, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f12, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x40000000)
li x10, 0x0b176735 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f15, 0(x2) # load 0x007fffff from memory into f15
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f3, 0(x2) # load 0x40000000 from memory into f3
fdiv.s f10, f15, f3, dyn # perform operation
fdiv.s f10, f15, f3, rdn # perform operation
fdiv.s f10, f15, f3, rmm # perform operation
fdiv.s f10, f15, f3, rne # perform operation
fdiv.s f10, f15, f3, rtz # perform operation
fdiv.s f10, f15, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f15, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f15, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f15, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f15, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f15, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xc0000000)
li x12, 0x99b480bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f19, 0(x2) # load 0x007fffff from memory into f19
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f15, 0(x2) # load 0xc0000000 from memory into f15
fdiv.s f12, f19, f15, dyn # perform operation
fdiv.s f12, f19, f15, rdn # perform operation
fdiv.s f12, f19, f15, rmm # perform operation
fdiv.s f12, f19, f15, rne # perform operation
fdiv.s f12, f19, f15, rtz # perform operation
fdiv.s f12, f19, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f19, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f19, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f19, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f19, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f19, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x800000)
li x11, 0x14a6b0b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f5, 0(x2) # load 0x007fffff from memory into f5
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f13, 0(x2) # load 0x00800000 from memory into f13
fdiv.s f11, f5, f13, dyn # perform operation
fdiv.s f11, f5, f13, rdn # perform operation
fdiv.s f11, f5, f13, rmm # perform operation
fdiv.s f11, f5, f13, rne # perform operation
fdiv.s f11, f5, f13, rtz # perform operation
fdiv.s f11, f5, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f5, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f5, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f5, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f5, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f5, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80800000)
li x21, 0xdc85ba28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f11, 0(x2) # load 0x007fffff from memory into f11
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f29, 0(x2) # load 0x80800000 from memory into f29
fdiv.s f21, f11, f29, dyn # perform operation
fdiv.s f21, f11, f29, rdn # perform operation
fdiv.s f21, f11, f29, rmm # perform operation
fdiv.s f21, f11, f29, rne # perform operation
fdiv.s f21, f11, f29, rtz # perform operation
fdiv.s f21, f11, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f11, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f11, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f11, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f11, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f11, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f7fffff)
li x22, 0xb1957764 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f6, 0(x2) # load 0x007fffff from memory into f6
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f26, 0(x2) # load 0x7f7fffff from memory into f26
fdiv.s f22, f6, f26, dyn # perform operation
fdiv.s f22, f6, f26, rdn # perform operation
fdiv.s f22, f6, f26, rmm # perform operation
fdiv.s f22, f6, f26, rne # perform operation
fdiv.s f22, f6, f26, rtz # perform operation
fdiv.s f22, f6, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f6, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f6, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f6, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f6, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f6, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xff7fffff)
li x31, 0xcd289675 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f26, 0(x2) # load 0xff7fffff from memory into f26
fdiv.s f31, f17, f26, dyn # perform operation
fdiv.s f31, f17, f26, rdn # perform operation
fdiv.s f31, f17, f26, rmm # perform operation
fdiv.s f31, f17, f26, rne # perform operation
fdiv.s f31, f17, f26, rtz # perform operation
fdiv.s f31, f17, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f17, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f17, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f17, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f17, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f17, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fffff)
li x24, 0xa8e8e9e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f8, 0(x2) # load 0x007fffff from memory into f8
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f18, 0(x2) # load 0x007fffff from memory into f18
fdiv.s f24, f8, f18, dyn # perform operation
fdiv.s f24, f8, f18, rdn # perform operation
fdiv.s f24, f8, f18, rmm # perform operation
fdiv.s f24, f8, f18, rne # perform operation
fdiv.s f24, f8, f18, rtz # perform operation
fdiv.s f24, f8, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f8, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f8, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f8, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f8, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f8, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x807fffff)
li x9, 0xb9ddc277 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f27, 0(x2) # load 0x007fffff from memory into f27
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f15, 0(x2) # load 0x807fffff from memory into f15
fdiv.s f9, f27, f15, dyn # perform operation
fdiv.s f9, f27, f15, rdn # perform operation
fdiv.s f9, f27, f15, rmm # perform operation
fdiv.s f9, f27, f15, rne # perform operation
fdiv.s f9, f27, f15, rtz # perform operation
fdiv.s f9, f27, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f27, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f27, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f27, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f27, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f27, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x400000)
li x1, 0xe1c07991 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f5, 0(x2) # load 0x007fffff from memory into f5
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f23, 0(x2) # load 0x00400000 from memory into f23
fdiv.s f1, f5, f23, dyn # perform operation
fdiv.s f1, f5, f23, rdn # perform operation
fdiv.s f1, f5, f23, rmm # perform operation
fdiv.s f1, f5, f23, rne # perform operation
fdiv.s f1, f5, f23, rtz # perform operation
fdiv.s f1, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f5, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80400000)
li x13, 0x979a4726 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f8, 0(x2) # load 0x007fffff from memory into f8
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f9, 0(x2) # load 0x80400000 from memory into f9
fdiv.s f13, f8, f9, dyn # perform operation
fdiv.s f13, f8, f9, rdn # perform operation
fdiv.s f13, f8, f9, rmm # perform operation
fdiv.s f13, f8, f9, rne # perform operation
fdiv.s f13, f8, f9, rtz # perform operation
fdiv.s f13, f8, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f8, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f8, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f8, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f8, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f8, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x1)
li x31, 0xf49804da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f9, 0(x2) # load 0x007fffff from memory into f9
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f28, 0(x2) # load 0x00000001 from memory into f28
fdiv.s f31, f9, f28, dyn # perform operation
fdiv.s f31, f9, f28, rdn # perform operation
fdiv.s f31, f9, f28, rmm # perform operation
fdiv.s f31, f9, f28, rne # perform operation
fdiv.s f31, f9, f28, rtz # perform operation
fdiv.s f31, f9, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f9, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f9, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f9, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f9, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f9, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80000001)
li x4, 0x78393bdf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f31, 0(x2) # load 0x007fffff from memory into f31
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f3, 0(x2) # load 0x80000001 from memory into f3
fdiv.s f4, f31, f3, dyn # perform operation
fdiv.s f4, f31, f3, rdn # perform operation
fdiv.s f4, f31, f3, rmm # perform operation
fdiv.s f4, f31, f3, rne # perform operation
fdiv.s f4, f31, f3, rtz # perform operation
fdiv.s f4, f31, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f31, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f31, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f31, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f31, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f31, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f800000)
li x25, 0x85091447 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f19, 0(x2) # load 0x007fffff from memory into f19
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f1, 0(x2) # load 0x7f800000 from memory into f1
fdiv.s f25, f19, f1, dyn # perform operation
fdiv.s f25, f19, f1, rdn # perform operation
fdiv.s f25, f19, f1, rmm # perform operation
fdiv.s f25, f19, f1, rne # perform operation
fdiv.s f25, f19, f1, rtz # perform operation
fdiv.s f25, f19, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f19, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f19, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f19, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f19, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f19, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xff800000)
li x8, 0x7e841248 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f27, 0(x2) # load 0x007fffff from memory into f27
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f5, 0(x2) # load 0xff800000 from memory into f5
fdiv.s f8, f27, f5, dyn # perform operation
fdiv.s f8, f27, f5, rdn # perform operation
fdiv.s f8, f27, f5, rmm # perform operation
fdiv.s f8, f27, f5, rne # perform operation
fdiv.s f8, f27, f5, rtz # perform operation
fdiv.s f8, f27, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f27, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f27, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f27, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f27, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f27, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fc00000)
li x3, 0x201742b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f23, 0(x2) # load 0x007fffff from memory into f23
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f24, 0(x2) # load 0x7fc00000 from memory into f24
fdiv.s f3, f23, f24, dyn # perform operation
fdiv.s f3, f23, f24, rdn # perform operation
fdiv.s f3, f23, f24, rmm # perform operation
fdiv.s f3, f23, f24, rne # perform operation
fdiv.s f3, f23, f24, rtz # perform operation
fdiv.s f3, f23, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f23, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f23, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f23, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f23, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f23, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fffffff)
li x8, 0x1f1f2153 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f16, 0(x2) # load 0x7fffffff from memory into f16
fdiv.s f8, f12, f16, dyn # perform operation
fdiv.s f8, f12, f16, rdn # perform operation
fdiv.s f8, f12, f16, rmm # perform operation
fdiv.s f8, f12, f16, rne # perform operation
fdiv.s f8, f12, f16, rtz # perform operation
fdiv.s f8, f12, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f12, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f12, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f12, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f12, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f12, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f800001)
li x28, 0x922ce585 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f7, 0(x2) # load 0x007fffff from memory into f7
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
fdiv.s f28, f7, f19, dyn # perform operation
fdiv.s f28, f7, f19, rdn # perform operation
fdiv.s f28, f7, f19, rmm # perform operation
fdiv.s f28, f7, f19, rne # perform operation
fdiv.s f28, f7, f19, rtz # perform operation
fdiv.s f28, f7, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f7, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f7, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f7, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f7, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f7, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fbfffff)
li x23, 0xd5d2b6c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f14, 0(x2) # load 0x007fffff from memory into f14
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f21, 0(x2) # load 0x7fbfffff from memory into f21
fdiv.s f23, f14, f21, dyn # perform operation
fdiv.s f23, f14, f21, rdn # perform operation
fdiv.s f23, f14, f21, rmm # perform operation
fdiv.s f23, f14, f21, rne # perform operation
fdiv.s f23, f14, f21, rtz # perform operation
fdiv.s f23, f14, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f14, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f14, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f14, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f14, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f14, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7ef8654f)
li x22, 0xc22bc52d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f8, 0(x2) # load 0x007fffff from memory into f8
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f29, 0(x2) # load 0x7ef8654f from memory into f29
fdiv.s f22, f8, f29, dyn # perform operation
fdiv.s f22, f8, f29, rdn # perform operation
fdiv.s f22, f8, f29, rmm # perform operation
fdiv.s f22, f8, f29, rne # perform operation
fdiv.s f22, f8, f29, rtz # perform operation
fdiv.s f22, f8, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f8, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f8, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f8, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f8, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f8, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x813d9ab0)
li x14, 0x75a8f311 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f18, 0(x2) # load 0x007fffff from memory into f18
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f27, 0(x2) # load 0x813d9ab0 from memory into f27
fdiv.s f14, f18, f27, dyn # perform operation
fdiv.s f14, f18, f27, rdn # perform operation
fdiv.s f14, f18, f27, rmm # perform operation
fdiv.s f14, f18, f27, rne # perform operation
fdiv.s f14, f18, f27, rtz # perform operation
fdiv.s f14, f18, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f18, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f18, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f18, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f18, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f18, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x0)
li x3, 0xb93a6575 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f20, 0(x2) # load 0x807fffff from memory into f20
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f30, 0(x2) # load 0x00000000 from memory into f30
fdiv.s f3, f20, f30, dyn # perform operation
fdiv.s f3, f20, f30, rdn # perform operation
fdiv.s f3, f20, f30, rmm # perform operation
fdiv.s f3, f20, f30, rne # perform operation
fdiv.s f3, f20, f30, rtz # perform operation
fdiv.s f3, f20, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f20, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f20, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f20, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f20, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f20, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80000000)
li x4, 0x9e8cd638 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f19, 0(x2) # load 0x807fffff from memory into f19
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f11, 0(x2) # load 0x80000000 from memory into f11
fdiv.s f4, f19, f11, dyn # perform operation
fdiv.s f4, f19, f11, rdn # perform operation
fdiv.s f4, f19, f11, rmm # perform operation
fdiv.s f4, f19, f11, rne # perform operation
fdiv.s f4, f19, f11, rtz # perform operation
fdiv.s f4, f19, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f19, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f19, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f19, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f19, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f19, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x3f800000)
li x8, 0x81b534a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f7, 0(x2) # load 0x807fffff from memory into f7
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f13, 0(x2) # load 0x3f800000 from memory into f13
fdiv.s f8, f7, f13, dyn # perform operation
fdiv.s f8, f7, f13, rdn # perform operation
fdiv.s f8, f7, f13, rmm # perform operation
fdiv.s f8, f7, f13, rne # perform operation
fdiv.s f8, f7, f13, rtz # perform operation
fdiv.s f8, f7, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f7, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f7, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f7, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f7, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f7, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xbf800000)
li x16, 0x663855d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f31, 0(x2) # load 0xbf800000 from memory into f31
fdiv.s f16, f3, f31, dyn # perform operation
fdiv.s f16, f3, f31, rdn # perform operation
fdiv.s f16, f3, f31, rmm # perform operation
fdiv.s f16, f3, f31, rne # perform operation
fdiv.s f16, f3, f31, rtz # perform operation
fdiv.s f16, f3, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f3, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f3, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f3, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f3, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f3, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x3fc00000)
li x5, 0xf9768528 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
fdiv.s f5, f2, f13, dyn # perform operation
fdiv.s f5, f2, f13, rdn # perform operation
fdiv.s f5, f2, f13, rmm # perform operation
fdiv.s f5, f2, f13, rne # perform operation
fdiv.s f5, f2, f13, rtz # perform operation
fdiv.s f5, f2, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f2, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f2, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f2, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f2, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f2, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xbfc00000)
li x6, 0xc60ccc8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f26, 0(x2) # load 0x807fffff from memory into f26
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f13, 0(x2) # load 0xbfc00000 from memory into f13
fdiv.s f6, f26, f13, dyn # perform operation
fdiv.s f6, f26, f13, rdn # perform operation
fdiv.s f6, f26, f13, rmm # perform operation
fdiv.s f6, f26, f13, rne # perform operation
fdiv.s f6, f26, f13, rtz # perform operation
fdiv.s f6, f26, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f26, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f26, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f26, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f26, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f26, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x40000000)
li x19, 0x6b20c865 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f29, 0(x2) # load 0x807fffff from memory into f29
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f6, 0(x2) # load 0x40000000 from memory into f6
fdiv.s f19, f29, f6, dyn # perform operation
fdiv.s f19, f29, f6, rdn # perform operation
fdiv.s f19, f29, f6, rmm # perform operation
fdiv.s f19, f29, f6, rne # perform operation
fdiv.s f19, f29, f6, rtz # perform operation
fdiv.s f19, f29, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f29, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f29, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f29, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f29, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f29, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xc0000000)
li x9, 0x53a1f8dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f19, 0(x2) # load 0x807fffff from memory into f19
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f1, 0(x2) # load 0xc0000000 from memory into f1
fdiv.s f9, f19, f1, dyn # perform operation
fdiv.s f9, f19, f1, rdn # perform operation
fdiv.s f9, f19, f1, rmm # perform operation
fdiv.s f9, f19, f1, rne # perform operation
fdiv.s f9, f19, f1, rtz # perform operation
fdiv.s f9, f19, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f19, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f19, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f19, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f19, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f19, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x800000)
li x30, 0xc5d95fd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f27, 0(x2) # load 0x807fffff from memory into f27
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
fdiv.s f30, f27, f14, dyn # perform operation
fdiv.s f30, f27, f14, rdn # perform operation
fdiv.s f30, f27, f14, rmm # perform operation
fdiv.s f30, f27, f14, rne # perform operation
fdiv.s f30, f27, f14, rtz # perform operation
fdiv.s f30, f27, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f27, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f27, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f27, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f27, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f27, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80800000)
li x8, 0x5160cc5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f14, 0(x2) # load 0x80800000 from memory into f14
fdiv.s f8, f3, f14, dyn # perform operation
fdiv.s f8, f3, f14, rdn # perform operation
fdiv.s f8, f3, f14, rmm # perform operation
fdiv.s f8, f3, f14, rne # perform operation
fdiv.s f8, f3, f14, rtz # perform operation
fdiv.s f8, f3, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f3, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f3, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f3, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f3, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f3, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f7fffff)
li x31, 0x32dac5e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f15, 0(x2) # load 0x807fffff from memory into f15
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f24, 0(x2) # load 0x7f7fffff from memory into f24
fdiv.s f31, f15, f24, dyn # perform operation
fdiv.s f31, f15, f24, rdn # perform operation
fdiv.s f31, f15, f24, rmm # perform operation
fdiv.s f31, f15, f24, rne # perform operation
fdiv.s f31, f15, f24, rtz # perform operation
fdiv.s f31, f15, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f15, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f15, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f15, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f15, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f15, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xff7fffff)
li x13, 0x63be7db0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f25, 0(x2) # load 0x807fffff from memory into f25
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f15, 0(x2) # load 0xff7fffff from memory into f15
fdiv.s f13, f25, f15, dyn # perform operation
fdiv.s f13, f25, f15, rdn # perform operation
fdiv.s f13, f25, f15, rmm # perform operation
fdiv.s f13, f25, f15, rne # perform operation
fdiv.s f13, f25, f15, rtz # perform operation
fdiv.s f13, f25, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f25, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f25, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f25, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f25, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f25, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fffff)
li x3, 0x3f4d35e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f28, 0(x2) # load 0x807fffff from memory into f28
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f30, 0(x2) # load 0x007fffff from memory into f30
fdiv.s f3, f28, f30, dyn # perform operation
fdiv.s f3, f28, f30, rdn # perform operation
fdiv.s f3, f28, f30, rmm # perform operation
fdiv.s f3, f28, f30, rne # perform operation
fdiv.s f3, f28, f30, rtz # perform operation
fdiv.s f3, f28, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f28, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f28, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f28, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f28, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f28, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x807fffff)
li x26, 0xe8394f04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f17, 0(x2) # load 0x807fffff from memory into f17
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f28, 0(x2) # load 0x807fffff from memory into f28
fdiv.s f26, f17, f28, dyn # perform operation
fdiv.s f26, f17, f28, rdn # perform operation
fdiv.s f26, f17, f28, rmm # perform operation
fdiv.s f26, f17, f28, rne # perform operation
fdiv.s f26, f17, f28, rtz # perform operation
fdiv.s f26, f17, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f17, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f17, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f17, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f17, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f17, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x400000)
li x3, 0xb41cdf89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f31, 0(x2) # load 0x807fffff from memory into f31
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f2, 0(x2) # load 0x00400000 from memory into f2
fdiv.s f3, f31, f2, dyn # perform operation
fdiv.s f3, f31, f2, rdn # perform operation
fdiv.s f3, f31, f2, rmm # perform operation
fdiv.s f3, f31, f2, rne # perform operation
fdiv.s f3, f31, f2, rtz # perform operation
fdiv.s f3, f31, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f31, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f31, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f31, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f31, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f31, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80400000)
li x11, 0x184609ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f5, 0(x2) # load 0x807fffff from memory into f5
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f25, 0(x2) # load 0x80400000 from memory into f25
fdiv.s f11, f5, f25, dyn # perform operation
fdiv.s f11, f5, f25, rdn # perform operation
fdiv.s f11, f5, f25, rmm # perform operation
fdiv.s f11, f5, f25, rne # perform operation
fdiv.s f11, f5, f25, rtz # perform operation
fdiv.s f11, f5, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f5, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f5, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f5, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f5, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f5, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x1)
li x3, 0x471f935e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f17, 0(x2) # load 0x807fffff from memory into f17
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
fdiv.s f3, f17, f6, dyn # perform operation
fdiv.s f3, f17, f6, rdn # perform operation
fdiv.s f3, f17, f6, rmm # perform operation
fdiv.s f3, f17, f6, rne # perform operation
fdiv.s f3, f17, f6, rtz # perform operation
fdiv.s f3, f17, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f17, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f17, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f17, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f17, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f17, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80000001)
li x2, 0xfa144140 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f19, 0(x2) # load 0x807fffff from memory into f19
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f24, 0(x2) # load 0x80000001 from memory into f24
fdiv.s f2, f19, f24, dyn # perform operation
fdiv.s f2, f19, f24, rdn # perform operation
fdiv.s f2, f19, f24, rmm # perform operation
fdiv.s f2, f19, f24, rne # perform operation
fdiv.s f2, f19, f24, rtz # perform operation
fdiv.s f2, f19, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f19, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f19, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f19, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f19, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f19, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f800000)
li x24, 0x7de71a9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f15, 0(x2) # load 0x807fffff from memory into f15
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f29, 0(x2) # load 0x7f800000 from memory into f29
fdiv.s f24, f15, f29, dyn # perform operation
fdiv.s f24, f15, f29, rdn # perform operation
fdiv.s f24, f15, f29, rmm # perform operation
fdiv.s f24, f15, f29, rne # perform operation
fdiv.s f24, f15, f29, rtz # perform operation
fdiv.s f24, f15, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f15, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f15, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f15, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f15, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f15, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xff800000)
li x2, 0x8a02b672 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f5, 0(x2) # load 0x807fffff from memory into f5
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f4, 0(x2) # load 0xff800000 from memory into f4
fdiv.s f2, f5, f4, dyn # perform operation
fdiv.s f2, f5, f4, rdn # perform operation
fdiv.s f2, f5, f4, rmm # perform operation
fdiv.s f2, f5, f4, rne # perform operation
fdiv.s f2, f5, f4, rtz # perform operation
fdiv.s f2, f5, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f5, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f5, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f5, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f5, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f5, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fc00000)
li x4, 0xcc1ee568 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f13, 0(x2) # load 0x807fffff from memory into f13
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f28, 0(x2) # load 0x7fc00000 from memory into f28
fdiv.s f4, f13, f28, dyn # perform operation
fdiv.s f4, f13, f28, rdn # perform operation
fdiv.s f4, f13, f28, rmm # perform operation
fdiv.s f4, f13, f28, rne # perform operation
fdiv.s f4, f13, f28, rtz # perform operation
fdiv.s f4, f13, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f13, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f13, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f13, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f13, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f13, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fffffff)
li x13, 0x876d7cc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f25, 0(x2) # load 0x807fffff from memory into f25
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f29, 0(x2) # load 0x7fffffff from memory into f29
fdiv.s f13, f25, f29, dyn # perform operation
fdiv.s f13, f25, f29, rdn # perform operation
fdiv.s f13, f25, f29, rmm # perform operation
fdiv.s f13, f25, f29, rne # perform operation
fdiv.s f13, f25, f29, rtz # perform operation
fdiv.s f13, f25, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f25, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f25, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f25, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f25, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f25, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f800001)
li x12, 0xcc250f14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f5, 0(x2) # load 0x807fffff from memory into f5
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
fdiv.s f12, f5, f30, dyn # perform operation
fdiv.s f12, f5, f30, rdn # perform operation
fdiv.s f12, f5, f30, rmm # perform operation
fdiv.s f12, f5, f30, rne # perform operation
fdiv.s f12, f5, f30, rtz # perform operation
fdiv.s f12, f5, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f5, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f5, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f5, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f5, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f5, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fbfffff)
li x29, 0xcc0ff086 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f10, 0(x2) # load 0x807fffff from memory into f10
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f11, 0(x2) # load 0x7fbfffff from memory into f11
fdiv.s f29, f10, f11, dyn # perform operation
fdiv.s f29, f10, f11, rdn # perform operation
fdiv.s f29, f10, f11, rmm # perform operation
fdiv.s f29, f10, f11, rne # perform operation
fdiv.s f29, f10, f11, rtz # perform operation
fdiv.s f29, f10, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f10, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f10, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f10, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f10, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f10, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7ef8654f)
li x11, 0x070b5bda # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f14, 0(x2) # load 0x807fffff from memory into f14
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f4, 0(x2) # load 0x7ef8654f from memory into f4
fdiv.s f11, f14, f4, dyn # perform operation
fdiv.s f11, f14, f4, rdn # perform operation
fdiv.s f11, f14, f4, rmm # perform operation
fdiv.s f11, f14, f4, rne # perform operation
fdiv.s f11, f14, f4, rtz # perform operation
fdiv.s f11, f14, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f14, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f14, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f14, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f14, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f14, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x813d9ab0)
li x15, 0x99d6edaf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f20, 0(x2) # load 0x807fffff from memory into f20
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
fdiv.s f15, f20, f13, dyn # perform operation
fdiv.s f15, f20, f13, rdn # perform operation
fdiv.s f15, f20, f13, rmm # perform operation
fdiv.s f15, f20, f13, rne # perform operation
fdiv.s f15, f20, f13, rtz # perform operation
fdiv.s f15, f20, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f20, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f20, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f20, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f20, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f20, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x0)
li x6, 0x8469d5c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f30, 0(x2) # load 0x00400000 from memory into f30
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
fdiv.s f6, f30, f15, dyn # perform operation
fdiv.s f6, f30, f15, rdn # perform operation
fdiv.s f6, f30, f15, rmm # perform operation
fdiv.s f6, f30, f15, rne # perform operation
fdiv.s f6, f30, f15, rtz # perform operation
fdiv.s f6, f30, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f30, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f30, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f30, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f30, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f30, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80000000)
li x8, 0x679ba358 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f19, 0(x2) # load 0x80000000 from memory into f19
fdiv.s f8, f25, f19, dyn # perform operation
fdiv.s f8, f25, f19, rdn # perform operation
fdiv.s f8, f25, f19, rmm # perform operation
fdiv.s f8, f25, f19, rne # perform operation
fdiv.s f8, f25, f19, rtz # perform operation
fdiv.s f8, f25, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f25, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f25, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f25, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f25, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f25, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x3f800000)
li x13, 0xe62fffae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f7, 0(x2) # load 0x00400000 from memory into f7
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f27, 0(x2) # load 0x3f800000 from memory into f27
fdiv.s f13, f7, f27, dyn # perform operation
fdiv.s f13, f7, f27, rdn # perform operation
fdiv.s f13, f7, f27, rmm # perform operation
fdiv.s f13, f7, f27, rne # perform operation
fdiv.s f13, f7, f27, rtz # perform operation
fdiv.s f13, f7, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f7, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f7, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f7, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f7, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f7, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xbf800000)
li x16, 0x3adfe5db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f11, 0(x2) # load 0x00400000 from memory into f11
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
fdiv.s f16, f11, f17, dyn # perform operation
fdiv.s f16, f11, f17, rdn # perform operation
fdiv.s f16, f11, f17, rmm # perform operation
fdiv.s f16, f11, f17, rne # perform operation
fdiv.s f16, f11, f17, rtz # perform operation
fdiv.s f16, f11, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f11, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f11, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f11, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f11, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f11, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x3fc00000)
li x17, 0xa9da66a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
fdiv.s f17, f25, f6, dyn # perform operation
fdiv.s f17, f25, f6, rdn # perform operation
fdiv.s f17, f25, f6, rmm # perform operation
fdiv.s f17, f25, f6, rne # perform operation
fdiv.s f17, f25, f6, rtz # perform operation
fdiv.s f17, f25, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f25, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f25, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f25, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f25, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f25, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xbfc00000)
li x25, 0xb58ebae4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f17, 0(x2) # load 0xbfc00000 from memory into f17
fdiv.s f25, f12, f17, dyn # perform operation
fdiv.s f25, f12, f17, rdn # perform operation
fdiv.s f25, f12, f17, rmm # perform operation
fdiv.s f25, f12, f17, rne # perform operation
fdiv.s f25, f12, f17, rtz # perform operation
fdiv.s f25, f12, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f12, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f12, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f12, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f12, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f12, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x40000000)
li x26, 0x4e6a1f41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f31, 0(x2) # load 0x00400000 from memory into f31
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
fdiv.s f26, f31, f16, dyn # perform operation
fdiv.s f26, f31, f16, rdn # perform operation
fdiv.s f26, f31, f16, rmm # perform operation
fdiv.s f26, f31, f16, rne # perform operation
fdiv.s f26, f31, f16, rtz # perform operation
fdiv.s f26, f31, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f31, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f31, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f31, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f31, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f31, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xc0000000)
li x13, 0xf6bbe7cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f6, 0(x2) # load 0xc0000000 from memory into f6
fdiv.s f13, f21, f6, dyn # perform operation
fdiv.s f13, f21, f6, rdn # perform operation
fdiv.s f13, f21, f6, rmm # perform operation
fdiv.s f13, f21, f6, rne # perform operation
fdiv.s f13, f21, f6, rtz # perform operation
fdiv.s f13, f21, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f21, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f21, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f21, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f21, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f21, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x800000)
li x28, 0x5c5504be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f19, 0(x2) # load 0x00400000 from memory into f19
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f4, 0(x2) # load 0x00800000 from memory into f4
fdiv.s f28, f19, f4, dyn # perform operation
fdiv.s f28, f19, f4, rdn # perform operation
fdiv.s f28, f19, f4, rmm # perform operation
fdiv.s f28, f19, f4, rne # perform operation
fdiv.s f28, f19, f4, rtz # perform operation
fdiv.s f28, f19, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f19, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f19, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f19, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f19, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f19, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80800000)
li x8, 0x6f903ee6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f22, 0(x2) # load 0x00400000 from memory into f22
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f26, 0(x2) # load 0x80800000 from memory into f26
fdiv.s f8, f22, f26, dyn # perform operation
fdiv.s f8, f22, f26, rdn # perform operation
fdiv.s f8, f22, f26, rmm # perform operation
fdiv.s f8, f22, f26, rne # perform operation
fdiv.s f8, f22, f26, rtz # perform operation
fdiv.s f8, f22, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f22, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f22, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f22, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f22, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f22, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f7fffff)
li x2, 0x26e495c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f27, 0(x2) # load 0x00400000 from memory into f27
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
fdiv.s f2, f27, f6, dyn # perform operation
fdiv.s f2, f27, f6, rdn # perform operation
fdiv.s f2, f27, f6, rmm # perform operation
fdiv.s f2, f27, f6, rne # perform operation
fdiv.s f2, f27, f6, rtz # perform operation
fdiv.s f2, f27, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f27, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f27, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f27, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f27, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f27, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xff7fffff)
li x29, 0x624e9ec9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f5, 0(x2) # load 0x00400000 from memory into f5
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f19, 0(x2) # load 0xff7fffff from memory into f19
fdiv.s f29, f5, f19, dyn # perform operation
fdiv.s f29, f5, f19, rdn # perform operation
fdiv.s f29, f5, f19, rmm # perform operation
fdiv.s f29, f5, f19, rne # perform operation
fdiv.s f29, f5, f19, rtz # perform operation
fdiv.s f29, f5, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f5, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f5, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f5, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f5, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f5, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fffff)
li x29, 0x76dcba85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f8, 0(x2) # load 0x00400000 from memory into f8
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
fdiv.s f29, f8, f12, dyn # perform operation
fdiv.s f29, f8, f12, rdn # perform operation
fdiv.s f29, f8, f12, rmm # perform operation
fdiv.s f29, f8, f12, rne # perform operation
fdiv.s f29, f8, f12, rtz # perform operation
fdiv.s f29, f8, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f8, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f8, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f8, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f8, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f8, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x807fffff)
li x10, 0x88355e2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f4, 0(x2) # load 0x00400000 from memory into f4
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f30, 0(x2) # load 0x807fffff from memory into f30
fdiv.s f10, f4, f30, dyn # perform operation
fdiv.s f10, f4, f30, rdn # perform operation
fdiv.s f10, f4, f30, rmm # perform operation
fdiv.s f10, f4, f30, rne # perform operation
fdiv.s f10, f4, f30, rtz # perform operation
fdiv.s f10, f4, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f4, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f4, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f4, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f4, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f4, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x400000)
li x22, 0xcb80f451 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f4, 0(x2) # load 0x00400000 from memory into f4
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f20, 0(x2) # load 0x00400000 from memory into f20
fdiv.s f22, f4, f20, dyn # perform operation
fdiv.s f22, f4, f20, rdn # perform operation
fdiv.s f22, f4, f20, rmm # perform operation
fdiv.s f22, f4, f20, rne # perform operation
fdiv.s f22, f4, f20, rtz # perform operation
fdiv.s f22, f4, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f4, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f4, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f4, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f4, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f4, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80400000)
li x14, 0x5592ba24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f26, 0(x2) # load 0x80400000 from memory into f26
fdiv.s f14, f25, f26, dyn # perform operation
fdiv.s f14, f25, f26, rdn # perform operation
fdiv.s f14, f25, f26, rmm # perform operation
fdiv.s f14, f25, f26, rne # perform operation
fdiv.s f14, f25, f26, rtz # perform operation
fdiv.s f14, f25, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f25, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f25, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f25, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f25, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f25, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x1)
li x18, 0xc79400d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
fdiv.s f18, f14, f3, dyn # perform operation
fdiv.s f18, f14, f3, rdn # perform operation
fdiv.s f18, f14, f3, rmm # perform operation
fdiv.s f18, f14, f3, rne # perform operation
fdiv.s f18, f14, f3, rtz # perform operation
fdiv.s f18, f14, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f14, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f14, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f14, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f14, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f14, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80000001)
li x19, 0x07b8ce03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f6, 0(x2) # load 0x80000001 from memory into f6
fdiv.s f19, f21, f6, dyn # perform operation
fdiv.s f19, f21, f6, rdn # perform operation
fdiv.s f19, f21, f6, rmm # perform operation
fdiv.s f19, f21, f6, rne # perform operation
fdiv.s f19, f21, f6, rtz # perform operation
fdiv.s f19, f21, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f21, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f21, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f21, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f21, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f21, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f800000)
li x9, 0x19555ff3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f5, 0(x2) # load 0x7f800000 from memory into f5
fdiv.s f9, f21, f5, dyn # perform operation
fdiv.s f9, f21, f5, rdn # perform operation
fdiv.s f9, f21, f5, rmm # perform operation
fdiv.s f9, f21, f5, rne # perform operation
fdiv.s f9, f21, f5, rtz # perform operation
fdiv.s f9, f21, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f21, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f21, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f21, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f21, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f21, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xff800000)
li x4, 0x08150c63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f2, 0(x2) # load 0x00400000 from memory into f2
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f17, 0(x2) # load 0xff800000 from memory into f17
fdiv.s f4, f2, f17, dyn # perform operation
fdiv.s f4, f2, f17, rdn # perform operation
fdiv.s f4, f2, f17, rmm # perform operation
fdiv.s f4, f2, f17, rne # perform operation
fdiv.s f4, f2, f17, rtz # perform operation
fdiv.s f4, f2, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f2, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f2, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f2, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f2, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f2, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fc00000)
li x1, 0x10ed6f2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f20, 0(x2) # load 0x00400000 from memory into f20
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f14, 0(x2) # load 0x7fc00000 from memory into f14
fdiv.s f1, f20, f14, dyn # perform operation
fdiv.s f1, f20, f14, rdn # perform operation
fdiv.s f1, f20, f14, rmm # perform operation
fdiv.s f1, f20, f14, rne # perform operation
fdiv.s f1, f20, f14, rtz # perform operation
fdiv.s f1, f20, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f20, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f20, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f20, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f20, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f20, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fffffff)
li x25, 0xae9c42b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
fdiv.s f25, f12, f19, dyn # perform operation
fdiv.s f25, f12, f19, rdn # perform operation
fdiv.s f25, f12, f19, rmm # perform operation
fdiv.s f25, f12, f19, rne # perform operation
fdiv.s f25, f12, f19, rtz # perform operation
fdiv.s f25, f12, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f12, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f12, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f12, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f12, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f12, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f800001)
li x4, 0xcbdb6b18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f2, 0(x2) # load 0x00400000 from memory into f2
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f6, 0(x2) # load 0x7f800001 from memory into f6
fdiv.s f4, f2, f6, dyn # perform operation
fdiv.s f4, f2, f6, rdn # perform operation
fdiv.s f4, f2, f6, rmm # perform operation
fdiv.s f4, f2, f6, rne # perform operation
fdiv.s f4, f2, f6, rtz # perform operation
fdiv.s f4, f2, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f2, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f2, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f2, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f2, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f2, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fbfffff)
li x8, 0xa057f24a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f31, 0(x2) # load 0x00400000 from memory into f31
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f29, 0(x2) # load 0x7fbfffff from memory into f29
fdiv.s f8, f31, f29, dyn # perform operation
fdiv.s f8, f31, f29, rdn # perform operation
fdiv.s f8, f31, f29, rmm # perform operation
fdiv.s f8, f31, f29, rne # perform operation
fdiv.s f8, f31, f29, rtz # perform operation
fdiv.s f8, f31, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f31, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f31, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f31, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f31, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f31, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7ef8654f)
li x12, 0x6ed24d0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f4, 0(x2) # load 0x00400000 from memory into f4
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f25, 0(x2) # load 0x7ef8654f from memory into f25
fdiv.s f12, f4, f25, dyn # perform operation
fdiv.s f12, f4, f25, rdn # perform operation
fdiv.s f12, f4, f25, rmm # perform operation
fdiv.s f12, f4, f25, rne # perform operation
fdiv.s f12, f4, f25, rtz # perform operation
fdiv.s f12, f4, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f4, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f4, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f4, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f4, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f4, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x813d9ab0)
li x13, 0x11861e21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f3, 0(x2) # load 0x00400000 from memory into f3
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f7, 0(x2) # load 0x813d9ab0 from memory into f7
fdiv.s f13, f3, f7, dyn # perform operation
fdiv.s f13, f3, f7, rdn # perform operation
fdiv.s f13, f3, f7, rmm # perform operation
fdiv.s f13, f3, f7, rne # perform operation
fdiv.s f13, f3, f7, rtz # perform operation
fdiv.s f13, f3, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f3, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f3, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f3, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f3, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f3, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x0)
li x22, 0xbd104833 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f8, 0(x2) # load 0x80400000 from memory into f8
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f20, 0(x2) # load 0x00000000 from memory into f20
fdiv.s f22, f8, f20, dyn # perform operation
fdiv.s f22, f8, f20, rdn # perform operation
fdiv.s f22, f8, f20, rmm # perform operation
fdiv.s f22, f8, f20, rne # perform operation
fdiv.s f22, f8, f20, rtz # perform operation
fdiv.s f22, f8, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f8, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f8, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f8, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f8, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f8, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80000000)
li x15, 0xedf06ee2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f18, 0(x2) # load 0x80400000 from memory into f18
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f6, 0(x2) # load 0x80000000 from memory into f6
fdiv.s f15, f18, f6, dyn # perform operation
fdiv.s f15, f18, f6, rdn # perform operation
fdiv.s f15, f18, f6, rmm # perform operation
fdiv.s f15, f18, f6, rne # perform operation
fdiv.s f15, f18, f6, rtz # perform operation
fdiv.s f15, f18, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f18, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f18, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f18, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f18, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f18, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x3f800000)
li x17, 0x437ae712 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f4, 0(x2) # load 0x80400000 from memory into f4
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f15, 0(x2) # load 0x3f800000 from memory into f15
fdiv.s f17, f4, f15, dyn # perform operation
fdiv.s f17, f4, f15, rdn # perform operation
fdiv.s f17, f4, f15, rmm # perform operation
fdiv.s f17, f4, f15, rne # perform operation
fdiv.s f17, f4, f15, rtz # perform operation
fdiv.s f17, f4, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f4, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f4, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f4, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f4, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f4, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xbf800000)
li x11, 0xee4a61d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f3, 0(x2) # load 0x80400000 from memory into f3
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f1, 0(x2) # load 0xbf800000 from memory into f1
fdiv.s f11, f3, f1, dyn # perform operation
fdiv.s f11, f3, f1, rdn # perform operation
fdiv.s f11, f3, f1, rmm # perform operation
fdiv.s f11, f3, f1, rne # perform operation
fdiv.s f11, f3, f1, rtz # perform operation
fdiv.s f11, f3, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f3, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f3, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f3, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f3, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f3, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x3fc00000)
li x1, 0x8dea38ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f9, 0(x2) # load 0x80400000 from memory into f9
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f16, 0(x2) # load 0x3fc00000 from memory into f16
fdiv.s f1, f9, f16, dyn # perform operation
fdiv.s f1, f9, f16, rdn # perform operation
fdiv.s f1, f9, f16, rmm # perform operation
fdiv.s f1, f9, f16, rne # perform operation
fdiv.s f1, f9, f16, rtz # perform operation
fdiv.s f1, f9, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f9, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f9, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f9, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f9, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f9, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xbfc00000)
li x6, 0x3353cb1c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f31, 0(x2) # load 0x80400000 from memory into f31
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f1, 0(x2) # load 0xbfc00000 from memory into f1
fdiv.s f6, f31, f1, dyn # perform operation
fdiv.s f6, f31, f1, rdn # perform operation
fdiv.s f6, f31, f1, rmm # perform operation
fdiv.s f6, f31, f1, rne # perform operation
fdiv.s f6, f31, f1, rtz # perform operation
fdiv.s f6, f31, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f31, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f31, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f31, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f31, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f31, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x40000000)
li x31, 0xb298bd16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f14, 0(x2) # load 0x80400000 from memory into f14
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f5, 0(x2) # load 0x40000000 from memory into f5
fdiv.s f31, f14, f5, dyn # perform operation
fdiv.s f31, f14, f5, rdn # perform operation
fdiv.s f31, f14, f5, rmm # perform operation
fdiv.s f31, f14, f5, rne # perform operation
fdiv.s f31, f14, f5, rtz # perform operation
fdiv.s f31, f14, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f14, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f14, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f14, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f14, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f14, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xc0000000)
li x11, 0x3d7b834b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f27, 0(x2) # load 0x80400000 from memory into f27
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f7, 0(x2) # load 0xc0000000 from memory into f7
fdiv.s f11, f27, f7, dyn # perform operation
fdiv.s f11, f27, f7, rdn # perform operation
fdiv.s f11, f27, f7, rmm # perform operation
fdiv.s f11, f27, f7, rne # perform operation
fdiv.s f11, f27, f7, rtz # perform operation
fdiv.s f11, f27, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f27, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f27, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f27, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f27, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f27, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x800000)
li x6, 0x4578cad0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f17, 0(x2) # load 0x80400000 from memory into f17
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
fdiv.s f6, f17, f27, dyn # perform operation
fdiv.s f6, f17, f27, rdn # perform operation
fdiv.s f6, f17, f27, rmm # perform operation
fdiv.s f6, f17, f27, rne # perform operation
fdiv.s f6, f17, f27, rtz # perform operation
fdiv.s f6, f17, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f17, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f17, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f17, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f17, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f17, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80800000)
li x18, 0x37a249c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f22, 0(x2) # load 0x80400000 from memory into f22
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f26, 0(x2) # load 0x80800000 from memory into f26
fdiv.s f18, f22, f26, dyn # perform operation
fdiv.s f18, f22, f26, rdn # perform operation
fdiv.s f18, f22, f26, rmm # perform operation
fdiv.s f18, f22, f26, rne # perform operation
fdiv.s f18, f22, f26, rtz # perform operation
fdiv.s f18, f22, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f22, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f22, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f22, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f22, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f22, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f7fffff)
li x8, 0x27072766 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f31, 0(x2) # load 0x80400000 from memory into f31
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
fdiv.s f8, f31, f6, dyn # perform operation
fdiv.s f8, f31, f6, rdn # perform operation
fdiv.s f8, f31, f6, rmm # perform operation
fdiv.s f8, f31, f6, rne # perform operation
fdiv.s f8, f31, f6, rtz # perform operation
fdiv.s f8, f31, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f31, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f31, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f31, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f31, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f31, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xff7fffff)
li x8, 0xf8945710 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f7, 0(x2) # load 0x80400000 from memory into f7
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
fdiv.s f8, f7, f11, dyn # perform operation
fdiv.s f8, f7, f11, rdn # perform operation
fdiv.s f8, f7, f11, rmm # perform operation
fdiv.s f8, f7, f11, rne # perform operation
fdiv.s f8, f7, f11, rtz # perform operation
fdiv.s f8, f7, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f7, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f7, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f7, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f7, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f7, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fffff)
li x7, 0xe19c98ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f18, 0(x2) # load 0x80400000 from memory into f18
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f28, 0(x2) # load 0x007fffff from memory into f28
fdiv.s f7, f18, f28, dyn # perform operation
fdiv.s f7, f18, f28, rdn # perform operation
fdiv.s f7, f18, f28, rmm # perform operation
fdiv.s f7, f18, f28, rne # perform operation
fdiv.s f7, f18, f28, rtz # perform operation
fdiv.s f7, f18, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f18, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f18, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f18, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f18, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f18, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x807fffff)
li x15, 0xcaa452b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f5, 0(x2) # load 0x80400000 from memory into f5
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f25, 0(x2) # load 0x807fffff from memory into f25
fdiv.s f15, f5, f25, dyn # perform operation
fdiv.s f15, f5, f25, rdn # perform operation
fdiv.s f15, f5, f25, rmm # perform operation
fdiv.s f15, f5, f25, rne # perform operation
fdiv.s f15, f5, f25, rtz # perform operation
fdiv.s f15, f5, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f5, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f5, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f5, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f5, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f5, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x400000)
li x11, 0xf94b314a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f19, 0(x2) # load 0x80400000 from memory into f19
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
fdiv.s f11, f19, f14, dyn # perform operation
fdiv.s f11, f19, f14, rdn # perform operation
fdiv.s f11, f19, f14, rmm # perform operation
fdiv.s f11, f19, f14, rne # perform operation
fdiv.s f11, f19, f14, rtz # perform operation
fdiv.s f11, f19, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f19, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f19, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f19, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f19, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f19, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80400000)
li x28, 0xd9117c12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f1, 0(x2) # load 0x80400000 from memory into f1
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f25, 0(x2) # load 0x80400000 from memory into f25
fdiv.s f28, f1, f25, dyn # perform operation
fdiv.s f28, f1, f25, rdn # perform operation
fdiv.s f28, f1, f25, rmm # perform operation
fdiv.s f28, f1, f25, rne # perform operation
fdiv.s f28, f1, f25, rtz # perform operation
fdiv.s f28, f1, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f1, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f1, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f1, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f1, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f1, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x1)
li x13, 0x701466d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f19, 0(x2) # load 0x80400000 from memory into f19
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f31, 0(x2) # load 0x00000001 from memory into f31
fdiv.s f13, f19, f31, dyn # perform operation
fdiv.s f13, f19, f31, rdn # perform operation
fdiv.s f13, f19, f31, rmm # perform operation
fdiv.s f13, f19, f31, rne # perform operation
fdiv.s f13, f19, f31, rtz # perform operation
fdiv.s f13, f19, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f19, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f19, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f19, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f19, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f19, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80000001)
li x23, 0x1e201701 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f30, 0(x2) # load 0x80400000 from memory into f30
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f13, 0(x2) # load 0x80000001 from memory into f13
fdiv.s f23, f30, f13, dyn # perform operation
fdiv.s f23, f30, f13, rdn # perform operation
fdiv.s f23, f30, f13, rmm # perform operation
fdiv.s f23, f30, f13, rne # perform operation
fdiv.s f23, f30, f13, rtz # perform operation
fdiv.s f23, f30, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f30, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f30, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f30, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f30, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f30, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f800000)
li x14, 0x944f86ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f4, 0(x2) # load 0x80400000 from memory into f4
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f5, 0(x2) # load 0x7f800000 from memory into f5
fdiv.s f14, f4, f5, dyn # perform operation
fdiv.s f14, f4, f5, rdn # perform operation
fdiv.s f14, f4, f5, rmm # perform operation
fdiv.s f14, f4, f5, rne # perform operation
fdiv.s f14, f4, f5, rtz # perform operation
fdiv.s f14, f4, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f4, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f4, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f4, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f4, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f4, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xff800000)
li x25, 0xf1a2f1a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f28, 0(x2) # load 0x80400000 from memory into f28
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f5, 0(x2) # load 0xff800000 from memory into f5
fdiv.s f25, f28, f5, dyn # perform operation
fdiv.s f25, f28, f5, rdn # perform operation
fdiv.s f25, f28, f5, rmm # perform operation
fdiv.s f25, f28, f5, rne # perform operation
fdiv.s f25, f28, f5, rtz # perform operation
fdiv.s f25, f28, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f28, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f28, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f28, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f28, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f28, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fc00000)
li x27, 0x2ea43bb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f10, 0(x2) # load 0x80400000 from memory into f10
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f21, 0(x2) # load 0x7fc00000 from memory into f21
fdiv.s f27, f10, f21, dyn # perform operation
fdiv.s f27, f10, f21, rdn # perform operation
fdiv.s f27, f10, f21, rmm # perform operation
fdiv.s f27, f10, f21, rne # perform operation
fdiv.s f27, f10, f21, rtz # perform operation
fdiv.s f27, f10, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f10, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f10, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f10, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f10, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f10, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fffffff)
li x17, 0x8e9a0dae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f24, 0(x2) # load 0x80400000 from memory into f24
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
fdiv.s f17, f24, f12, dyn # perform operation
fdiv.s f17, f24, f12, rdn # perform operation
fdiv.s f17, f24, f12, rmm # perform operation
fdiv.s f17, f24, f12, rne # perform operation
fdiv.s f17, f24, f12, rtz # perform operation
fdiv.s f17, f24, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f24, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f24, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f24, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f24, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f24, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f800001)
li x28, 0x2bc5dbca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f31, 0(x2) # load 0x80400000 from memory into f31
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f25, 0(x2) # load 0x7f800001 from memory into f25
fdiv.s f28, f31, f25, dyn # perform operation
fdiv.s f28, f31, f25, rdn # perform operation
fdiv.s f28, f31, f25, rmm # perform operation
fdiv.s f28, f31, f25, rne # perform operation
fdiv.s f28, f31, f25, rtz # perform operation
fdiv.s f28, f31, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f31, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f31, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f31, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f31, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f31, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fbfffff)
li x7, 0x17d3f97c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f22, 0(x2) # load 0x80400000 from memory into f22
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f25, 0(x2) # load 0x7fbfffff from memory into f25
fdiv.s f7, f22, f25, dyn # perform operation
fdiv.s f7, f22, f25, rdn # perform operation
fdiv.s f7, f22, f25, rmm # perform operation
fdiv.s f7, f22, f25, rne # perform operation
fdiv.s f7, f22, f25, rtz # perform operation
fdiv.s f7, f22, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f22, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f22, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f22, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f22, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f22, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7ef8654f)
li x30, 0xd7ccd503 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f15, 0(x2) # load 0x80400000 from memory into f15
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f14, 0(x2) # load 0x7ef8654f from memory into f14
fdiv.s f30, f15, f14, dyn # perform operation
fdiv.s f30, f15, f14, rdn # perform operation
fdiv.s f30, f15, f14, rmm # perform operation
fdiv.s f30, f15, f14, rne # perform operation
fdiv.s f30, f15, f14, rtz # perform operation
fdiv.s f30, f15, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f15, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f15, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f15, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f15, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f15, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x813d9ab0)
li x7, 0xeee1e686 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f9, 0(x2) # load 0x80400000 from memory into f9
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f4, 0(x2) # load 0x813d9ab0 from memory into f4
fdiv.s f7, f9, f4, dyn # perform operation
fdiv.s f7, f9, f4, rdn # perform operation
fdiv.s f7, f9, f4, rmm # perform operation
fdiv.s f7, f9, f4, rne # perform operation
fdiv.s f7, f9, f4, rtz # perform operation
fdiv.s f7, f9, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f9, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f9, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f9, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f9, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f9, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
li x14, 0x94a5a955 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f10, 0(x2) # load 0x00000001 from memory into f10
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f21, 0(x2) # load 0x00000000 from memory into f21
fdiv.s f14, f10, f21, dyn # perform operation
fdiv.s f14, f10, f21, rdn # perform operation
fdiv.s f14, f10, f21, rmm # perform operation
fdiv.s f14, f10, f21, rne # perform operation
fdiv.s f14, f10, f21, rtz # perform operation
fdiv.s f14, f10, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f10, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f10, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f10, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f10, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f10, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80000000)
li x24, 0xd2e9d04f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f8, 0(x2) # load 0x00000001 from memory into f8
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f5, 0(x2) # load 0x80000000 from memory into f5
fdiv.s f24, f8, f5, dyn # perform operation
fdiv.s f24, f8, f5, rdn # perform operation
fdiv.s f24, f8, f5, rmm # perform operation
fdiv.s f24, f8, f5, rne # perform operation
fdiv.s f24, f8, f5, rtz # perform operation
fdiv.s f24, f8, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f8, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f8, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f8, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f8, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f8, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3f800000)
li x6, 0x978ef0b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f17, 0(x2) # load 0x00000001 from memory into f17
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
fdiv.s f6, f17, f24, dyn # perform operation
fdiv.s f6, f17, f24, rdn # perform operation
fdiv.s f6, f17, f24, rmm # perform operation
fdiv.s f6, f17, f24, rne # perform operation
fdiv.s f6, f17, f24, rtz # perform operation
fdiv.s f6, f17, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f17, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f17, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f17, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f17, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f17, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbf800000)
li x20, 0x079e9da2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f7, 0(x2) # load 0xbf800000 from memory into f7
fdiv.s f20, f6, f7, dyn # perform operation
fdiv.s f20, f6, f7, rdn # perform operation
fdiv.s f20, f6, f7, rmm # perform operation
fdiv.s f20, f6, f7, rne # perform operation
fdiv.s f20, f6, f7, rtz # perform operation
fdiv.s f20, f6, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f6, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f6, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f6, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f6, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f6, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3fc00000)
li x24, 0x21497841 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f4, 0(x2) # load 0x00000001 from memory into f4
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f25, 0(x2) # load 0x3fc00000 from memory into f25
fdiv.s f24, f4, f25, dyn # perform operation
fdiv.s f24, f4, f25, rdn # perform operation
fdiv.s f24, f4, f25, rmm # perform operation
fdiv.s f24, f4, f25, rne # perform operation
fdiv.s f24, f4, f25, rtz # perform operation
fdiv.s f24, f4, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f4, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f4, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f4, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f4, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f4, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbfc00000)
li x1, 0xb1d36db1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f13, 0(x2) # load 0x00000001 from memory into f13
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f11, 0(x2) # load 0xbfc00000 from memory into f11
fdiv.s f1, f13, f11, dyn # perform operation
fdiv.s f1, f13, f11, rdn # perform operation
fdiv.s f1, f13, f11, rmm # perform operation
fdiv.s f1, f13, f11, rne # perform operation
fdiv.s f1, f13, f11, rtz # perform operation
fdiv.s f1, f13, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f13, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f13, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f13, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f13, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f13, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x40000000)
li x30, 0x641e77be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f26, 0(x2) # load 0x00000001 from memory into f26
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
fdiv.s f30, f26, f16, dyn # perform operation
fdiv.s f30, f26, f16, rdn # perform operation
fdiv.s f30, f26, f16, rmm # perform operation
fdiv.s f30, f26, f16, rne # perform operation
fdiv.s f30, f26, f16, rtz # perform operation
fdiv.s f30, f26, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f26, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f26, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f26, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f26, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f26, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc0000000)
li x16, 0xf76a0b2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f31, 0(x2) # load 0x00000001 from memory into f31
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f5, 0(x2) # load 0xc0000000 from memory into f5
fdiv.s f16, f31, f5, dyn # perform operation
fdiv.s f16, f31, f5, rdn # perform operation
fdiv.s f16, f31, f5, rmm # perform operation
fdiv.s f16, f31, f5, rne # perform operation
fdiv.s f16, f31, f5, rtz # perform operation
fdiv.s f16, f31, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f31, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f31, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f31, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f31, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f31, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x800000)
li x15, 0x413b351a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f31, 0(x2) # load 0x00000001 from memory into f31
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f6, 0(x2) # load 0x00800000 from memory into f6
fdiv.s f15, f31, f6, dyn # perform operation
fdiv.s f15, f31, f6, rdn # perform operation
fdiv.s f15, f31, f6, rmm # perform operation
fdiv.s f15, f31, f6, rne # perform operation
fdiv.s f15, f31, f6, rtz # perform operation
fdiv.s f15, f31, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f31, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f31, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f31, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f31, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f31, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80800000)
li x3, 0xfdc96110 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f23, 0(x2) # load 0x00000001 from memory into f23
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f22, 0(x2) # load 0x80800000 from memory into f22
fdiv.s f3, f23, f22, dyn # perform operation
fdiv.s f3, f23, f22, rdn # perform operation
fdiv.s f3, f23, f22, rmm # perform operation
fdiv.s f3, f23, f22, rne # perform operation
fdiv.s f3, f23, f22, rtz # perform operation
fdiv.s f3, f23, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f23, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f23, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f23, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f23, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f23, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f7fffff)
li x8, 0x6a049fe1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f10, 0(x2) # load 0x00000001 from memory into f10
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f18, 0(x2) # load 0x7f7fffff from memory into f18
fdiv.s f8, f10, f18, dyn # perform operation
fdiv.s f8, f10, f18, rdn # perform operation
fdiv.s f8, f10, f18, rmm # perform operation
fdiv.s f8, f10, f18, rne # perform operation
fdiv.s f8, f10, f18, rtz # perform operation
fdiv.s f8, f10, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f10, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f10, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f10, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f10, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f10, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xff7fffff)
li x27, 0x9f616476 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f30, 0(x2) # load 0x00000001 from memory into f30
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f23, 0(x2) # load 0xff7fffff from memory into f23
fdiv.s f27, f30, f23, dyn # perform operation
fdiv.s f27, f30, f23, rdn # perform operation
fdiv.s f27, f30, f23, rmm # perform operation
fdiv.s f27, f30, f23, rne # perform operation
fdiv.s f27, f30, f23, rtz # perform operation
fdiv.s f27, f30, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f30, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f30, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f30, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f30, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f30, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffff)
li x1, 0xb6c5da15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f14, 0(x2) # load 0x00000001 from memory into f14
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f2, 0(x2) # load 0x007fffff from memory into f2
fdiv.s f1, f14, f2, dyn # perform operation
fdiv.s f1, f14, f2, rdn # perform operation
fdiv.s f1, f14, f2, rmm # perform operation
fdiv.s f1, f14, f2, rne # perform operation
fdiv.s f1, f14, f2, rtz # perform operation
fdiv.s f1, f14, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f14, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f14, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f14, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f14, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f14, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x807fffff)
li x3, 0xca1fbf04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f9, 0(x2) # load 0x00000001 from memory into f9
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f14, 0(x2) # load 0x807fffff from memory into f14
fdiv.s f3, f9, f14, dyn # perform operation
fdiv.s f3, f9, f14, rdn # perform operation
fdiv.s f3, f9, f14, rmm # perform operation
fdiv.s f3, f9, f14, rne # perform operation
fdiv.s f3, f9, f14, rtz # perform operation
fdiv.s f3, f9, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f9, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f9, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f9, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f9, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f9, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x400000)
li x26, 0xf767e995 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f9, 0(x2) # load 0x00000001 from memory into f9
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f7, 0(x2) # load 0x00400000 from memory into f7
fdiv.s f26, f9, f7, dyn # perform operation
fdiv.s f26, f9, f7, rdn # perform operation
fdiv.s f26, f9, f7, rmm # perform operation
fdiv.s f26, f9, f7, rne # perform operation
fdiv.s f26, f9, f7, rtz # perform operation
fdiv.s f26, f9, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f9, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f9, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f9, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f9, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f9, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80400000)
li x23, 0x6f7a4d30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f30, 0(x2) # load 0x00000001 from memory into f30
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f22, 0(x2) # load 0x80400000 from memory into f22
fdiv.s f23, f30, f22, dyn # perform operation
fdiv.s f23, f30, f22, rdn # perform operation
fdiv.s f23, f30, f22, rmm # perform operation
fdiv.s f23, f30, f22, rne # perform operation
fdiv.s f23, f30, f22, rtz # perform operation
fdiv.s f23, f30, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f30, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f30, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f30, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f30, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f30, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
li x23, 0xc62d5ed7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f30, 0(x2) # load 0x00000001 from memory into f30
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
fdiv.s f23, f30, f6, dyn # perform operation
fdiv.s f23, f30, f6, rdn # perform operation
fdiv.s f23, f30, f6, rmm # perform operation
fdiv.s f23, f30, f6, rne # perform operation
fdiv.s f23, f30, f6, rtz # perform operation
fdiv.s f23, f30, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f30, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f30, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f30, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f30, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f30, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80000001)
li x12, 0x3f82a031 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f31, 0(x2) # load 0x00000001 from memory into f31
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f15, 0(x2) # load 0x80000001 from memory into f15
fdiv.s f12, f31, f15, dyn # perform operation
fdiv.s f12, f31, f15, rdn # perform operation
fdiv.s f12, f31, f15, rmm # perform operation
fdiv.s f12, f31, f15, rne # perform operation
fdiv.s f12, f31, f15, rtz # perform operation
fdiv.s f12, f31, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f31, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f31, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f31, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f31, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f31, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f800000)
li x13, 0xca095120 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f14, 0(x2) # load 0x00000001 from memory into f14
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
fdiv.s f13, f14, f7, dyn # perform operation
fdiv.s f13, f14, f7, rdn # perform operation
fdiv.s f13, f14, f7, rmm # perform operation
fdiv.s f13, f14, f7, rne # perform operation
fdiv.s f13, f14, f7, rtz # perform operation
fdiv.s f13, f14, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f14, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f14, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f14, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f14, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f14, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xff800000)
li x26, 0xd4569deb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f29, 0(x2) # load 0x00000001 from memory into f29
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f10, 0(x2) # load 0xff800000 from memory into f10
fdiv.s f26, f29, f10, dyn # perform operation
fdiv.s f26, f29, f10, rdn # perform operation
fdiv.s f26, f29, f10, rmm # perform operation
fdiv.s f26, f29, f10, rne # perform operation
fdiv.s f26, f29, f10, rtz # perform operation
fdiv.s f26, f29, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f29, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f29, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f29, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f29, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f29, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fc00000)
li x5, 0x68f6bc7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f9, 0(x2) # load 0x00000001 from memory into f9
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f3, 0(x2) # load 0x7fc00000 from memory into f3
fdiv.s f5, f9, f3, dyn # perform operation
fdiv.s f5, f9, f3, rdn # perform operation
fdiv.s f5, f9, f3, rmm # perform operation
fdiv.s f5, f9, f3, rne # perform operation
fdiv.s f5, f9, f3, rtz # perform operation
fdiv.s f5, f9, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f9, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f9, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f9, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f9, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f9, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffffff)
li x3, 0x6c042c36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f21, 0(x2) # load 0x00000001 from memory into f21
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f25, 0(x2) # load 0x7fffffff from memory into f25
fdiv.s f3, f21, f25, dyn # perform operation
fdiv.s f3, f21, f25, rdn # perform operation
fdiv.s f3, f21, f25, rmm # perform operation
fdiv.s f3, f21, f25, rne # perform operation
fdiv.s f3, f21, f25, rtz # perform operation
fdiv.s f3, f21, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f21, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f21, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f21, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f21, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f21, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f800001)
li x12, 0xd7b840a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f7, 0(x2) # load 0x00000001 from memory into f7
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f4, 0(x2) # load 0x7f800001 from memory into f4
fdiv.s f12, f7, f4, dyn # perform operation
fdiv.s f12, f7, f4, rdn # perform operation
fdiv.s f12, f7, f4, rmm # perform operation
fdiv.s f12, f7, f4, rne # perform operation
fdiv.s f12, f7, f4, rtz # perform operation
fdiv.s f12, f7, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f7, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f7, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f7, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f7, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f7, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fbfffff)
li x25, 0xd423efdc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f24, 0(x2) # load 0x7fbfffff from memory into f24
fdiv.s f25, f2, f24, dyn # perform operation
fdiv.s f25, f2, f24, rdn # perform operation
fdiv.s f25, f2, f24, rmm # perform operation
fdiv.s f25, f2, f24, rne # perform operation
fdiv.s f25, f2, f24, rtz # perform operation
fdiv.s f25, f2, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f2, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f2, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f2, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f2, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f2, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ef8654f)
li x12, 0x7909875c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f10, 0(x2) # load 0x00000001 from memory into f10
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f4, 0(x2) # load 0x7ef8654f from memory into f4
fdiv.s f12, f10, f4, dyn # perform operation
fdiv.s f12, f10, f4, rdn # perform operation
fdiv.s f12, f10, f4, rmm # perform operation
fdiv.s f12, f10, f4, rne # perform operation
fdiv.s f12, f10, f4, rtz # perform operation
fdiv.s f12, f10, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f10, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f10, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f10, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f10, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f10, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x813d9ab0)
li x27, 0x4ef90e6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f21, 0(x2) # load 0x00000001 from memory into f21
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f12, 0(x2) # load 0x813d9ab0 from memory into f12
fdiv.s f27, f21, f12, dyn # perform operation
fdiv.s f27, f21, f12, rdn # perform operation
fdiv.s f27, f21, f12, rmm # perform operation
fdiv.s f27, f21, f12, rne # perform operation
fdiv.s f27, f21, f12, rtz # perform operation
fdiv.s f27, f21, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f21, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f21, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f21, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f21, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f21, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x0)
li x5, 0x41d43262 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f13, 0(x2) # load 0x80000001 from memory into f13
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f18, 0(x2) # load 0x00000000 from memory into f18
fdiv.s f5, f13, f18, dyn # perform operation
fdiv.s f5, f13, f18, rdn # perform operation
fdiv.s f5, f13, f18, rmm # perform operation
fdiv.s f5, f13, f18, rne # perform operation
fdiv.s f5, f13, f18, rtz # perform operation
fdiv.s f5, f13, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f13, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f13, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f13, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f13, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f13, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80000000)
li x3, 0xae098662 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f1, 0(x2) # load 0x80000001 from memory into f1
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f16, 0(x2) # load 0x80000000 from memory into f16
fdiv.s f3, f1, f16, dyn # perform operation
fdiv.s f3, f1, f16, rdn # perform operation
fdiv.s f3, f1, f16, rmm # perform operation
fdiv.s f3, f1, f16, rne # perform operation
fdiv.s f3, f1, f16, rtz # perform operation
fdiv.s f3, f1, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f1, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f1, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f1, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f1, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f1, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x3f800000)
li x24, 0x7a1cbf7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f28, 0(x2) # load 0x80000001 from memory into f28
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f23, 0(x2) # load 0x3f800000 from memory into f23
fdiv.s f24, f28, f23, dyn # perform operation
fdiv.s f24, f28, f23, rdn # perform operation
fdiv.s f24, f28, f23, rmm # perform operation
fdiv.s f24, f28, f23, rne # perform operation
fdiv.s f24, f28, f23, rtz # perform operation
fdiv.s f24, f28, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f28, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f28, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f28, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f28, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f28, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xbf800000)
li x25, 0xc947f764 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
fdiv.s f25, f31, f17, dyn # perform operation
fdiv.s f25, f31, f17, rdn # perform operation
fdiv.s f25, f31, f17, rmm # perform operation
fdiv.s f25, f31, f17, rne # perform operation
fdiv.s f25, f31, f17, rtz # perform operation
fdiv.s f25, f31, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f31, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f31, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f31, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f31, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f31, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x3fc00000)
li x25, 0x90234c95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f29, 0(x2) # load 0x80000001 from memory into f29
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f16, 0(x2) # load 0x3fc00000 from memory into f16
fdiv.s f25, f29, f16, dyn # perform operation
fdiv.s f25, f29, f16, rdn # perform operation
fdiv.s f25, f29, f16, rmm # perform operation
fdiv.s f25, f29, f16, rne # perform operation
fdiv.s f25, f29, f16, rtz # perform operation
fdiv.s f25, f29, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f29, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f29, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f29, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f29, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f29, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xbfc00000)
li x16, 0x7f1ee50f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f21, 0(x2) # load 0x80000001 from memory into f21
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f24, 0(x2) # load 0xbfc00000 from memory into f24
fdiv.s f16, f21, f24, dyn # perform operation
fdiv.s f16, f21, f24, rdn # perform operation
fdiv.s f16, f21, f24, rmm # perform operation
fdiv.s f16, f21, f24, rne # perform operation
fdiv.s f16, f21, f24, rtz # perform operation
fdiv.s f16, f21, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f21, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f21, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f21, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f21, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f21, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x40000000)
li x11, 0x446592c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f5, 0(x2) # load 0x80000001 from memory into f5
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f4, 0(x2) # load 0x40000000 from memory into f4
fdiv.s f11, f5, f4, dyn # perform operation
fdiv.s f11, f5, f4, rdn # perform operation
fdiv.s f11, f5, f4, rmm # perform operation
fdiv.s f11, f5, f4, rne # perform operation
fdiv.s f11, f5, f4, rtz # perform operation
fdiv.s f11, f5, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f5, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f5, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f5, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f5, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f5, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xc0000000)
li x18, 0x777d4575 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f23, 0(x2) # load 0xc0000000 from memory into f23
fdiv.s f18, f7, f23, dyn # perform operation
fdiv.s f18, f7, f23, rdn # perform operation
fdiv.s f18, f7, f23, rmm # perform operation
fdiv.s f18, f7, f23, rne # perform operation
fdiv.s f18, f7, f23, rtz # perform operation
fdiv.s f18, f7, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f7, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f7, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f7, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f7, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f7, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x800000)
li x5, 0xfa430992 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f1, 0(x2) # load 0x80000001 from memory into f1
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f3, 0(x2) # load 0x00800000 from memory into f3
fdiv.s f5, f1, f3, dyn # perform operation
fdiv.s f5, f1, f3, rdn # perform operation
fdiv.s f5, f1, f3, rmm # perform operation
fdiv.s f5, f1, f3, rne # perform operation
fdiv.s f5, f1, f3, rtz # perform operation
fdiv.s f5, f1, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f1, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f1, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f1, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f1, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f1, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80800000)
li x28, 0x57f2a24e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f8, 0(x2) # load 0x80000001 from memory into f8
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f29, 0(x2) # load 0x80800000 from memory into f29
fdiv.s f28, f8, f29, dyn # perform operation
fdiv.s f28, f8, f29, rdn # perform operation
fdiv.s f28, f8, f29, rmm # perform operation
fdiv.s f28, f8, f29, rne # perform operation
fdiv.s f28, f8, f29, rtz # perform operation
fdiv.s f28, f8, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f8, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f8, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f8, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f8, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f8, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f7fffff)
li x20, 0x7edab9c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
fdiv.s f20, f10, f3, dyn # perform operation
fdiv.s f20, f10, f3, rdn # perform operation
fdiv.s f20, f10, f3, rmm # perform operation
fdiv.s f20, f10, f3, rne # perform operation
fdiv.s f20, f10, f3, rtz # perform operation
fdiv.s f20, f10, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f10, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f10, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f10, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f10, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f10, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xff7fffff)
li x4, 0x422ea984 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f21, 0(x2) # load 0x80000001 from memory into f21
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f7, 0(x2) # load 0xff7fffff from memory into f7
fdiv.s f4, f21, f7, dyn # perform operation
fdiv.s f4, f21, f7, rdn # perform operation
fdiv.s f4, f21, f7, rmm # perform operation
fdiv.s f4, f21, f7, rne # perform operation
fdiv.s f4, f21, f7, rtz # perform operation
fdiv.s f4, f21, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f21, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f21, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f21, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f21, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f21, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fffff)
li x21, 0x070a4d23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f23, 0(x2) # load 0x80000001 from memory into f23
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f18, 0(x2) # load 0x007fffff from memory into f18
fdiv.s f21, f23, f18, dyn # perform operation
fdiv.s f21, f23, f18, rdn # perform operation
fdiv.s f21, f23, f18, rmm # perform operation
fdiv.s f21, f23, f18, rne # perform operation
fdiv.s f21, f23, f18, rtz # perform operation
fdiv.s f21, f23, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f23, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f23, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f23, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f23, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f23, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x807fffff)
li x2, 0x1c376e8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f22, 0(x2) # load 0x80000001 from memory into f22
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f30, 0(x2) # load 0x807fffff from memory into f30
fdiv.s f2, f22, f30, dyn # perform operation
fdiv.s f2, f22, f30, rdn # perform operation
fdiv.s f2, f22, f30, rmm # perform operation
fdiv.s f2, f22, f30, rne # perform operation
fdiv.s f2, f22, f30, rtz # perform operation
fdiv.s f2, f22, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f22, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f22, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f22, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f22, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f22, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x400000)
li x12, 0x57da598a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f11, 0(x2) # load 0x00400000 from memory into f11
fdiv.s f12, f31, f11, dyn # perform operation
fdiv.s f12, f31, f11, rdn # perform operation
fdiv.s f12, f31, f11, rmm # perform operation
fdiv.s f12, f31, f11, rne # perform operation
fdiv.s f12, f31, f11, rtz # perform operation
fdiv.s f12, f31, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f31, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f31, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f31, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f31, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f31, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80400000)
li x3, 0xe6b6f12d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f14, 0(x2) # load 0x80000001 from memory into f14
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f12, 0(x2) # load 0x80400000 from memory into f12
fdiv.s f3, f14, f12, dyn # perform operation
fdiv.s f3, f14, f12, rdn # perform operation
fdiv.s f3, f14, f12, rmm # perform operation
fdiv.s f3, f14, f12, rne # perform operation
fdiv.s f3, f14, f12, rtz # perform operation
fdiv.s f3, f14, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f14, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f14, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f14, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f14, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f14, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x1)
li x14, 0x6a13051e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f29, 0(x2) # load 0x80000001 from memory into f29
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f18, 0(x2) # load 0x00000001 from memory into f18
fdiv.s f14, f29, f18, dyn # perform operation
fdiv.s f14, f29, f18, rdn # perform operation
fdiv.s f14, f29, f18, rmm # perform operation
fdiv.s f14, f29, f18, rne # perform operation
fdiv.s f14, f29, f18, rtz # perform operation
fdiv.s f14, f29, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f29, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f29, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f29, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f29, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f29, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80000001)
li x15, 0x0b1ff5c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f12, 0(x2) # load 0x80000001 from memory into f12
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f6, 0(x2) # load 0x80000001 from memory into f6
fdiv.s f15, f12, f6, dyn # perform operation
fdiv.s f15, f12, f6, rdn # perform operation
fdiv.s f15, f12, f6, rmm # perform operation
fdiv.s f15, f12, f6, rne # perform operation
fdiv.s f15, f12, f6, rtz # perform operation
fdiv.s f15, f12, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f12, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f12, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f12, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f12, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f12, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f800000)
li x2, 0x90f6965b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f14, 0(x2) # load 0x80000001 from memory into f14
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f21, 0(x2) # load 0x7f800000 from memory into f21
fdiv.s f2, f14, f21, dyn # perform operation
fdiv.s f2, f14, f21, rdn # perform operation
fdiv.s f2, f14, f21, rmm # perform operation
fdiv.s f2, f14, f21, rne # perform operation
fdiv.s f2, f14, f21, rtz # perform operation
fdiv.s f2, f14, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f14, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f14, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f14, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f14, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f14, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xff800000)
li x3, 0xdc52c2a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f24, 0(x2) # load 0x80000001 from memory into f24
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f2, 0(x2) # load 0xff800000 from memory into f2
fdiv.s f3, f24, f2, dyn # perform operation
fdiv.s f3, f24, f2, rdn # perform operation
fdiv.s f3, f24, f2, rmm # perform operation
fdiv.s f3, f24, f2, rne # perform operation
fdiv.s f3, f24, f2, rtz # perform operation
fdiv.s f3, f24, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f24, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f24, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f24, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f24, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f24, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fc00000)
li x8, 0xc0d14541 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f3, 0(x2) # load 0x7fc00000 from memory into f3
fdiv.s f8, f31, f3, dyn # perform operation
fdiv.s f8, f31, f3, rdn # perform operation
fdiv.s f8, f31, f3, rmm # perform operation
fdiv.s f8, f31, f3, rne # perform operation
fdiv.s f8, f31, f3, rtz # perform operation
fdiv.s f8, f31, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f31, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f31, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f31, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f31, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f31, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fffffff)
li x5, 0xfcd8c168 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f19, 0(x2) # load 0x80000001 from memory into f19
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f29, 0(x2) # load 0x7fffffff from memory into f29
fdiv.s f5, f19, f29, dyn # perform operation
fdiv.s f5, f19, f29, rdn # perform operation
fdiv.s f5, f19, f29, rmm # perform operation
fdiv.s f5, f19, f29, rne # perform operation
fdiv.s f5, f19, f29, rtz # perform operation
fdiv.s f5, f19, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f19, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f19, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f19, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f19, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f19, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f800001)
li x17, 0xd1901bee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f4, 0(x2) # load 0x80000001 from memory into f4
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f1, 0(x2) # load 0x7f800001 from memory into f1
fdiv.s f17, f4, f1, dyn # perform operation
fdiv.s f17, f4, f1, rdn # perform operation
fdiv.s f17, f4, f1, rmm # perform operation
fdiv.s f17, f4, f1, rne # perform operation
fdiv.s f17, f4, f1, rtz # perform operation
fdiv.s f17, f4, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f4, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f4, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f4, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f4, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f4, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fbfffff)
li x25, 0xbfb3e161 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f21, 0(x2) # load 0x80000001 from memory into f21
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f2, 0(x2) # load 0x7fbfffff from memory into f2
fdiv.s f25, f21, f2, dyn # perform operation
fdiv.s f25, f21, f2, rdn # perform operation
fdiv.s f25, f21, f2, rmm # perform operation
fdiv.s f25, f21, f2, rne # perform operation
fdiv.s f25, f21, f2, rtz # perform operation
fdiv.s f25, f21, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f21, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f21, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f21, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f21, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f21, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7ef8654f)
li x6, 0x214355f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f28, 0(x2) # load 0x80000001 from memory into f28
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f15, 0(x2) # load 0x7ef8654f from memory into f15
fdiv.s f6, f28, f15, dyn # perform operation
fdiv.s f6, f28, f15, rdn # perform operation
fdiv.s f6, f28, f15, rmm # perform operation
fdiv.s f6, f28, f15, rne # perform operation
fdiv.s f6, f28, f15, rtz # perform operation
fdiv.s f6, f28, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f28, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f28, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f28, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f28, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f28, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x813d9ab0)
li x16, 0x9310df1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f24, 0(x2) # load 0x813d9ab0 from memory into f24
fdiv.s f16, f18, f24, dyn # perform operation
fdiv.s f16, f18, f24, rdn # perform operation
fdiv.s f16, f18, f24, rmm # perform operation
fdiv.s f16, f18, f24, rne # perform operation
fdiv.s f16, f18, f24, rtz # perform operation
fdiv.s f16, f18, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f18, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f18, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f18, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f18, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f18, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x0)
li x15, 0x6b1d638d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f20, 0(x2) # load 0x7f800000 from memory into f20
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f11, 0(x2) # load 0x00000000 from memory into f11
fdiv.s f15, f20, f11, dyn # perform operation
fdiv.s f15, f20, f11, rdn # perform operation
fdiv.s f15, f20, f11, rmm # perform operation
fdiv.s f15, f20, f11, rne # perform operation
fdiv.s f15, f20, f11, rtz # perform operation
fdiv.s f15, f20, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f20, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f20, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f20, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f20, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f20, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80000000)
li x13, 0xaa6bbd48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f26, 0(x2) # load 0x80000000 from memory into f26
fdiv.s f13, f31, f26, dyn # perform operation
fdiv.s f13, f31, f26, rdn # perform operation
fdiv.s f13, f31, f26, rmm # perform operation
fdiv.s f13, f31, f26, rne # perform operation
fdiv.s f13, f31, f26, rtz # perform operation
fdiv.s f13, f31, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f31, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f31, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f31, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f31, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f31, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x3f800000)
li x29, 0x7b0dff34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f25, 0(x2) # load 0x7f800000 from memory into f25
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f16, 0(x2) # load 0x3f800000 from memory into f16
fdiv.s f29, f25, f16, dyn # perform operation
fdiv.s f29, f25, f16, rdn # perform operation
fdiv.s f29, f25, f16, rmm # perform operation
fdiv.s f29, f25, f16, rne # perform operation
fdiv.s f29, f25, f16, rtz # perform operation
fdiv.s f29, f25, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f25, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f25, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f25, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f25, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f25, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xbf800000)
li x5, 0xbb796f32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f29, 0(x2) # load 0x7f800000 from memory into f29
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f2, 0(x2) # load 0xbf800000 from memory into f2
fdiv.s f5, f29, f2, dyn # perform operation
fdiv.s f5, f29, f2, rdn # perform operation
fdiv.s f5, f29, f2, rmm # perform operation
fdiv.s f5, f29, f2, rne # perform operation
fdiv.s f5, f29, f2, rtz # perform operation
fdiv.s f5, f29, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f29, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f29, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f29, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f29, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f29, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x3fc00000)
li x14, 0x4f900040 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f12, 0(x2) # load 0x7f800000 from memory into f12
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
fdiv.s f14, f12, f6, dyn # perform operation
fdiv.s f14, f12, f6, rdn # perform operation
fdiv.s f14, f12, f6, rmm # perform operation
fdiv.s f14, f12, f6, rne # perform operation
fdiv.s f14, f12, f6, rtz # perform operation
fdiv.s f14, f12, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f12, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f12, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f12, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f12, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f12, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xbfc00000)
li x18, 0xed9ac6b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f28, 0(x2) # load 0x7f800000 from memory into f28
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f14, 0(x2) # load 0xbfc00000 from memory into f14
fdiv.s f18, f28, f14, dyn # perform operation
fdiv.s f18, f28, f14, rdn # perform operation
fdiv.s f18, f28, f14, rmm # perform operation
fdiv.s f18, f28, f14, rne # perform operation
fdiv.s f18, f28, f14, rtz # perform operation
fdiv.s f18, f28, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f28, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f28, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f28, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f28, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f28, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x40000000)
li x4, 0x3d25915f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f10, 0(x2) # load 0x7f800000 from memory into f10
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f22, 0(x2) # load 0x40000000 from memory into f22
fdiv.s f4, f10, f22, dyn # perform operation
fdiv.s f4, f10, f22, rdn # perform operation
fdiv.s f4, f10, f22, rmm # perform operation
fdiv.s f4, f10, f22, rne # perform operation
fdiv.s f4, f10, f22, rtz # perform operation
fdiv.s f4, f10, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f10, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f10, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f10, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f10, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f10, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xc0000000)
li x29, 0xde26b20f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f15, 0(x2) # load 0x7f800000 from memory into f15
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
fdiv.s f29, f15, f14, dyn # perform operation
fdiv.s f29, f15, f14, rdn # perform operation
fdiv.s f29, f15, f14, rmm # perform operation
fdiv.s f29, f15, f14, rne # perform operation
fdiv.s f29, f15, f14, rtz # perform operation
fdiv.s f29, f15, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f15, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f15, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f15, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f15, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f15, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x800000)
li x1, 0xbd2d0bc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f25, 0(x2) # load 0x7f800000 from memory into f25
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
fdiv.s f1, f25, f23, dyn # perform operation
fdiv.s f1, f25, f23, rdn # perform operation
fdiv.s f1, f25, f23, rmm # perform operation
fdiv.s f1, f25, f23, rne # perform operation
fdiv.s f1, f25, f23, rtz # perform operation
fdiv.s f1, f25, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f25, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f25, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f25, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f25, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f25, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80800000)
li x23, 0xab49ccdc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f9, 0(x2) # load 0x7f800000 from memory into f9
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f14, 0(x2) # load 0x80800000 from memory into f14
fdiv.s f23, f9, f14, dyn # perform operation
fdiv.s f23, f9, f14, rdn # perform operation
fdiv.s f23, f9, f14, rmm # perform operation
fdiv.s f23, f9, f14, rne # perform operation
fdiv.s f23, f9, f14, rtz # perform operation
fdiv.s f23, f9, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f9, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f9, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f9, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f9, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f9, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f7fffff)
li x3, 0x6e982a41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f17, 0(x2) # load 0x7f800000 from memory into f17
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f19, 0(x2) # load 0x7f7fffff from memory into f19
fdiv.s f3, f17, f19, dyn # perform operation
fdiv.s f3, f17, f19, rdn # perform operation
fdiv.s f3, f17, f19, rmm # perform operation
fdiv.s f3, f17, f19, rne # perform operation
fdiv.s f3, f17, f19, rtz # perform operation
fdiv.s f3, f17, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f17, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f17, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f17, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f17, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f17, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xff7fffff)
li x28, 0x5bdb3aa8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f10, 0(x2) # load 0x7f800000 from memory into f10
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f9, 0(x2) # load 0xff7fffff from memory into f9
fdiv.s f28, f10, f9, dyn # perform operation
fdiv.s f28, f10, f9, rdn # perform operation
fdiv.s f28, f10, f9, rmm # perform operation
fdiv.s f28, f10, f9, rne # perform operation
fdiv.s f28, f10, f9, rtz # perform operation
fdiv.s f28, f10, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f10, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f10, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f10, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f10, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f10, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fffff)
li x5, 0x3d790d11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f3, 0(x2) # load 0x7f800000 from memory into f3
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f21, 0(x2) # load 0x007fffff from memory into f21
fdiv.s f5, f3, f21, dyn # perform operation
fdiv.s f5, f3, f21, rdn # perform operation
fdiv.s f5, f3, f21, rmm # perform operation
fdiv.s f5, f3, f21, rne # perform operation
fdiv.s f5, f3, f21, rtz # perform operation
fdiv.s f5, f3, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f3, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f3, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f3, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f3, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f3, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x807fffff)
li x14, 0xba9da4fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f22, 0(x2) # load 0x7f800000 from memory into f22
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
fdiv.s f14, f22, f2, dyn # perform operation
fdiv.s f14, f22, f2, rdn # perform operation
fdiv.s f14, f22, f2, rmm # perform operation
fdiv.s f14, f22, f2, rne # perform operation
fdiv.s f14, f22, f2, rtz # perform operation
fdiv.s f14, f22, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f22, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f22, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f22, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f22, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f22, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x400000)
li x1, 0xede05daa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f9, 0(x2) # load 0x7f800000 from memory into f9
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f28, 0(x2) # load 0x00400000 from memory into f28
fdiv.s f1, f9, f28, dyn # perform operation
fdiv.s f1, f9, f28, rdn # perform operation
fdiv.s f1, f9, f28, rmm # perform operation
fdiv.s f1, f9, f28, rne # perform operation
fdiv.s f1, f9, f28, rtz # perform operation
fdiv.s f1, f9, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f9, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f9, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f9, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f9, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f9, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80400000)
li x1, 0x0cb85ffa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f6, 0(x2) # load 0x7f800000 from memory into f6
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f22, 0(x2) # load 0x80400000 from memory into f22
fdiv.s f1, f6, f22, dyn # perform operation
fdiv.s f1, f6, f22, rdn # perform operation
fdiv.s f1, f6, f22, rmm # perform operation
fdiv.s f1, f6, f22, rne # perform operation
fdiv.s f1, f6, f22, rtz # perform operation
fdiv.s f1, f6, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f6, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f6, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f6, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f6, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f6, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x1)
li x17, 0xb85d1c91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f25, 0(x2) # load 0x7f800000 from memory into f25
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
fdiv.s f17, f25, f2, dyn # perform operation
fdiv.s f17, f25, f2, rdn # perform operation
fdiv.s f17, f25, f2, rmm # perform operation
fdiv.s f17, f25, f2, rne # perform operation
fdiv.s f17, f25, f2, rtz # perform operation
fdiv.s f17, f25, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f25, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f25, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f25, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f25, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f25, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80000001)
li x18, 0xe18f33e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f13, 0(x2) # load 0x80000001 from memory into f13
fdiv.s f18, f11, f13, dyn # perform operation
fdiv.s f18, f11, f13, rdn # perform operation
fdiv.s f18, f11, f13, rmm # perform operation
fdiv.s f18, f11, f13, rne # perform operation
fdiv.s f18, f11, f13, rtz # perform operation
fdiv.s f18, f11, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f11, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f11, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f11, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f11, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f11, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f800000)
li x31, 0x33f2aa1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f8, 0(x2) # load 0x7f800000 from memory into f8
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f25, 0(x2) # load 0x7f800000 from memory into f25
fdiv.s f31, f8, f25, dyn # perform operation
fdiv.s f31, f8, f25, rdn # perform operation
fdiv.s f31, f8, f25, rmm # perform operation
fdiv.s f31, f8, f25, rne # perform operation
fdiv.s f31, f8, f25, rtz # perform operation
fdiv.s f31, f8, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f8, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f8, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f8, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f8, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f8, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xff800000)
li x14, 0x571e498a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f21, 0(x2) # load 0x7f800000 from memory into f21
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f27, 0(x2) # load 0xff800000 from memory into f27
fdiv.s f14, f21, f27, dyn # perform operation
fdiv.s f14, f21, f27, rdn # perform operation
fdiv.s f14, f21, f27, rmm # perform operation
fdiv.s f14, f21, f27, rne # perform operation
fdiv.s f14, f21, f27, rtz # perform operation
fdiv.s f14, f21, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f21, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f21, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f21, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f21, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f21, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fc00000)
li x11, 0x7e93d537 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f6, 0(x2) # load 0x7f800000 from memory into f6
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f26, 0(x2) # load 0x7fc00000 from memory into f26
fdiv.s f11, f6, f26, dyn # perform operation
fdiv.s f11, f6, f26, rdn # perform operation
fdiv.s f11, f6, f26, rmm # perform operation
fdiv.s f11, f6, f26, rne # perform operation
fdiv.s f11, f6, f26, rtz # perform operation
fdiv.s f11, f6, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f6, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f6, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f6, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f6, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f6, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fffffff)
li x29, 0x023797a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f9, 0(x2) # load 0x7f800000 from memory into f9
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f27, 0(x2) # load 0x7fffffff from memory into f27
fdiv.s f29, f9, f27, dyn # perform operation
fdiv.s f29, f9, f27, rdn # perform operation
fdiv.s f29, f9, f27, rmm # perform operation
fdiv.s f29, f9, f27, rne # perform operation
fdiv.s f29, f9, f27, rtz # perform operation
fdiv.s f29, f9, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f9, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f9, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f9, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f9, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f9, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f800001)
li x22, 0x71d22aa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f19, 0(x2) # load 0x7f800000 from memory into f19
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f18, 0(x2) # load 0x7f800001 from memory into f18
fdiv.s f22, f19, f18, dyn # perform operation
fdiv.s f22, f19, f18, rdn # perform operation
fdiv.s f22, f19, f18, rmm # perform operation
fdiv.s f22, f19, f18, rne # perform operation
fdiv.s f22, f19, f18, rtz # perform operation
fdiv.s f22, f19, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f19, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f19, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f19, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f19, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f19, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fbfffff)
li x2, 0x5098a7e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f3, 0(x2) # load 0x7f800000 from memory into f3
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f10, 0(x2) # load 0x7fbfffff from memory into f10
fdiv.s f2, f3, f10, dyn # perform operation
fdiv.s f2, f3, f10, rdn # perform operation
fdiv.s f2, f3, f10, rmm # perform operation
fdiv.s f2, f3, f10, rne # perform operation
fdiv.s f2, f3, f10, rtz # perform operation
fdiv.s f2, f3, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f3, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f3, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f3, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f3, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f3, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7ef8654f)
li x22, 0x1e372dbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f2, 0(x2) # load 0x7f800000 from memory into f2
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f25, 0(x2) # load 0x7ef8654f from memory into f25
fdiv.s f22, f2, f25, dyn # perform operation
fdiv.s f22, f2, f25, rdn # perform operation
fdiv.s f22, f2, f25, rmm # perform operation
fdiv.s f22, f2, f25, rne # perform operation
fdiv.s f22, f2, f25, rtz # perform operation
fdiv.s f22, f2, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f2, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f2, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f2, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f2, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f2, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x813d9ab0)
li x23, 0x25e1589b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f17, 0(x2) # load 0x7f800000 from memory into f17
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f27, 0(x2) # load 0x813d9ab0 from memory into f27
fdiv.s f23, f17, f27, dyn # perform operation
fdiv.s f23, f17, f27, rdn # perform operation
fdiv.s f23, f17, f27, rmm # perform operation
fdiv.s f23, f17, f27, rne # perform operation
fdiv.s f23, f17, f27, rtz # perform operation
fdiv.s f23, f17, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f17, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f17, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f17, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f17, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f17, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x0)
li x23, 0xf18f4cb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f12, 0(x2) # load 0xff800000 from memory into f12
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f19, 0(x2) # load 0x00000000 from memory into f19
fdiv.s f23, f12, f19, dyn # perform operation
fdiv.s f23, f12, f19, rdn # perform operation
fdiv.s f23, f12, f19, rmm # perform operation
fdiv.s f23, f12, f19, rne # perform operation
fdiv.s f23, f12, f19, rtz # perform operation
fdiv.s f23, f12, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f12, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f12, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f12, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f12, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f12, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80000000)
li x2, 0xb27bbbb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f15, 0(x2) # load 0xff800000 from memory into f15
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f31, 0(x2) # load 0x80000000 from memory into f31
fdiv.s f2, f15, f31, dyn # perform operation
fdiv.s f2, f15, f31, rdn # perform operation
fdiv.s f2, f15, f31, rmm # perform operation
fdiv.s f2, f15, f31, rne # perform operation
fdiv.s f2, f15, f31, rtz # perform operation
fdiv.s f2, f15, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f15, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f15, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f15, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f15, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f15, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x3f800000)
li x10, 0xa9317993 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f17, 0(x2) # load 0xff800000 from memory into f17
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f29, 0(x2) # load 0x3f800000 from memory into f29
fdiv.s f10, f17, f29, dyn # perform operation
fdiv.s f10, f17, f29, rdn # perform operation
fdiv.s f10, f17, f29, rmm # perform operation
fdiv.s f10, f17, f29, rne # perform operation
fdiv.s f10, f17, f29, rtz # perform operation
fdiv.s f10, f17, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f17, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f17, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f17, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f17, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f17, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xbf800000)
li x19, 0x4f30c960 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f31, 0(x2) # load 0xff800000 from memory into f31
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f11, 0(x2) # load 0xbf800000 from memory into f11
fdiv.s f19, f31, f11, dyn # perform operation
fdiv.s f19, f31, f11, rdn # perform operation
fdiv.s f19, f31, f11, rmm # perform operation
fdiv.s f19, f31, f11, rne # perform operation
fdiv.s f19, f31, f11, rtz # perform operation
fdiv.s f19, f31, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f31, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f31, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f31, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f31, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f31, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x3fc00000)
li x17, 0xfe9df397 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f2, 0(x2) # load 0xff800000 from memory into f2
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f29, 0(x2) # load 0x3fc00000 from memory into f29
fdiv.s f17, f2, f29, dyn # perform operation
fdiv.s f17, f2, f29, rdn # perform operation
fdiv.s f17, f2, f29, rmm # perform operation
fdiv.s f17, f2, f29, rne # perform operation
fdiv.s f17, f2, f29, rtz # perform operation
fdiv.s f17, f2, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f2, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f2, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f2, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f2, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f2, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xbfc00000)
li x30, 0x50cf76cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f18, 0(x2) # load 0xff800000 from memory into f18
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f13, 0(x2) # load 0xbfc00000 from memory into f13
fdiv.s f30, f18, f13, dyn # perform operation
fdiv.s f30, f18, f13, rdn # perform operation
fdiv.s f30, f18, f13, rmm # perform operation
fdiv.s f30, f18, f13, rne # perform operation
fdiv.s f30, f18, f13, rtz # perform operation
fdiv.s f30, f18, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f18, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f18, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f18, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f18, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f18, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x40000000)
li x14, 0x794d8b44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f5, 0(x2) # load 0xff800000 from memory into f5
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f30, 0(x2) # load 0x40000000 from memory into f30
fdiv.s f14, f5, f30, dyn # perform operation
fdiv.s f14, f5, f30, rdn # perform operation
fdiv.s f14, f5, f30, rmm # perform operation
fdiv.s f14, f5, f30, rne # perform operation
fdiv.s f14, f5, f30, rtz # perform operation
fdiv.s f14, f5, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f5, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f5, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f5, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f5, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f5, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xc0000000)
li x21, 0x41eabd43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f28, 0(x2) # load 0xff800000 from memory into f28
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f30, 0(x2) # load 0xc0000000 from memory into f30
fdiv.s f21, f28, f30, dyn # perform operation
fdiv.s f21, f28, f30, rdn # perform operation
fdiv.s f21, f28, f30, rmm # perform operation
fdiv.s f21, f28, f30, rne # perform operation
fdiv.s f21, f28, f30, rtz # perform operation
fdiv.s f21, f28, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f28, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f28, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f28, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f28, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f28, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x800000)
li x20, 0xd6e66a3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f25, 0(x2) # load 0xff800000 from memory into f25
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f18, 0(x2) # load 0x00800000 from memory into f18
fdiv.s f20, f25, f18, dyn # perform operation
fdiv.s f20, f25, f18, rdn # perform operation
fdiv.s f20, f25, f18, rmm # perform operation
fdiv.s f20, f25, f18, rne # perform operation
fdiv.s f20, f25, f18, rtz # perform operation
fdiv.s f20, f25, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f25, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f25, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f25, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f25, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f25, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80800000)
li x15, 0x9c5b0f42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f23, 0(x2) # load 0xff800000 from memory into f23
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f9, 0(x2) # load 0x80800000 from memory into f9
fdiv.s f15, f23, f9, dyn # perform operation
fdiv.s f15, f23, f9, rdn # perform operation
fdiv.s f15, f23, f9, rmm # perform operation
fdiv.s f15, f23, f9, rne # perform operation
fdiv.s f15, f23, f9, rtz # perform operation
fdiv.s f15, f23, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f23, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f23, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f23, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f23, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f23, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f7fffff)
li x11, 0x6d5f1dfe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f19, 0(x2) # load 0xff800000 from memory into f19
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f14, 0(x2) # load 0x7f7fffff from memory into f14
fdiv.s f11, f19, f14, dyn # perform operation
fdiv.s f11, f19, f14, rdn # perform operation
fdiv.s f11, f19, f14, rmm # perform operation
fdiv.s f11, f19, f14, rne # perform operation
fdiv.s f11, f19, f14, rtz # perform operation
fdiv.s f11, f19, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f19, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f19, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f19, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f19, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f19, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xff7fffff)
li x1, 0x1b90ea62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f20, 0(x2) # load 0xff800000 from memory into f20
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f15, 0(x2) # load 0xff7fffff from memory into f15
fdiv.s f1, f20, f15, dyn # perform operation
fdiv.s f1, f20, f15, rdn # perform operation
fdiv.s f1, f20, f15, rmm # perform operation
fdiv.s f1, f20, f15, rne # perform operation
fdiv.s f1, f20, f15, rtz # perform operation
fdiv.s f1, f20, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f20, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f20, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f20, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f20, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f20, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fffff)
li x14, 0xb7a8713a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
fdiv.s f14, f30, f10, dyn # perform operation
fdiv.s f14, f30, f10, rdn # perform operation
fdiv.s f14, f30, f10, rmm # perform operation
fdiv.s f14, f30, f10, rne # perform operation
fdiv.s f14, f30, f10, rtz # perform operation
fdiv.s f14, f30, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f30, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f30, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f30, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f30, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f30, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x807fffff)
li x6, 0x116ef660 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f26, 0(x2) # load 0xff800000 from memory into f26
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f19, 0(x2) # load 0x807fffff from memory into f19
fdiv.s f6, f26, f19, dyn # perform operation
fdiv.s f6, f26, f19, rdn # perform operation
fdiv.s f6, f26, f19, rmm # perform operation
fdiv.s f6, f26, f19, rne # perform operation
fdiv.s f6, f26, f19, rtz # perform operation
fdiv.s f6, f26, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f26, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f26, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f26, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f26, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f26, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x400000)
li x21, 0xc34fd261 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f20, 0(x2) # load 0x00400000 from memory into f20
fdiv.s f21, f9, f20, dyn # perform operation
fdiv.s f21, f9, f20, rdn # perform operation
fdiv.s f21, f9, f20, rmm # perform operation
fdiv.s f21, f9, f20, rne # perform operation
fdiv.s f21, f9, f20, rtz # perform operation
fdiv.s f21, f9, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f9, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f9, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f9, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f9, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f9, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80400000)
li x25, 0x30c1107d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f19, 0(x2) # load 0x80400000 from memory into f19
fdiv.s f25, f30, f19, dyn # perform operation
fdiv.s f25, f30, f19, rdn # perform operation
fdiv.s f25, f30, f19, rmm # perform operation
fdiv.s f25, f30, f19, rne # perform operation
fdiv.s f25, f30, f19, rtz # perform operation
fdiv.s f25, f30, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f30, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f30, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f30, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f30, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f30, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x1)
li x23, 0xf1a4d576 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f12, 0(x2) # load 0xff800000 from memory into f12
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f31, 0(x2) # load 0x00000001 from memory into f31
fdiv.s f23, f12, f31, dyn # perform operation
fdiv.s f23, f12, f31, rdn # perform operation
fdiv.s f23, f12, f31, rmm # perform operation
fdiv.s f23, f12, f31, rne # perform operation
fdiv.s f23, f12, f31, rtz # perform operation
fdiv.s f23, f12, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f12, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f12, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f12, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f12, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f12, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80000001)
li x14, 0x405c6b65 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f28, 0(x2) # load 0xff800000 from memory into f28
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f9, 0(x2) # load 0x80000001 from memory into f9
fdiv.s f14, f28, f9, dyn # perform operation
fdiv.s f14, f28, f9, rdn # perform operation
fdiv.s f14, f28, f9, rmm # perform operation
fdiv.s f14, f28, f9, rne # perform operation
fdiv.s f14, f28, f9, rtz # perform operation
fdiv.s f14, f28, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f28, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f28, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f28, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f28, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f28, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f800000)
li x22, 0x3e9d4059 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f5, 0(x2) # load 0xff800000 from memory into f5
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f26, 0(x2) # load 0x7f800000 from memory into f26
fdiv.s f22, f5, f26, dyn # perform operation
fdiv.s f22, f5, f26, rdn # perform operation
fdiv.s f22, f5, f26, rmm # perform operation
fdiv.s f22, f5, f26, rne # perform operation
fdiv.s f22, f5, f26, rtz # perform operation
fdiv.s f22, f5, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f5, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f5, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f5, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f5, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f5, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xff800000)
li x5, 0xb6f525f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f29, 0(x2) # load 0xff800000 from memory into f29
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f10, 0(x2) # load 0xff800000 from memory into f10
fdiv.s f5, f29, f10, dyn # perform operation
fdiv.s f5, f29, f10, rdn # perform operation
fdiv.s f5, f29, f10, rmm # perform operation
fdiv.s f5, f29, f10, rne # perform operation
fdiv.s f5, f29, f10, rtz # perform operation
fdiv.s f5, f29, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f29, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f29, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f29, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f29, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f29, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fc00000)
li x7, 0x0380711a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f6, 0(x2) # load 0xff800000 from memory into f6
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f8, 0(x2) # load 0x7fc00000 from memory into f8
fdiv.s f7, f6, f8, dyn # perform operation
fdiv.s f7, f6, f8, rdn # perform operation
fdiv.s f7, f6, f8, rmm # perform operation
fdiv.s f7, f6, f8, rne # perform operation
fdiv.s f7, f6, f8, rtz # perform operation
fdiv.s f7, f6, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f6, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f6, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f6, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f6, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f6, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fffffff)
li x15, 0x9741a38e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f11, 0(x2) # load 0xff800000 from memory into f11
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f13, 0(x2) # load 0x7fffffff from memory into f13
fdiv.s f15, f11, f13, dyn # perform operation
fdiv.s f15, f11, f13, rdn # perform operation
fdiv.s f15, f11, f13, rmm # perform operation
fdiv.s f15, f11, f13, rne # perform operation
fdiv.s f15, f11, f13, rtz # perform operation
fdiv.s f15, f11, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f11, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f11, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f11, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f11, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f11, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f800001)
li x14, 0x67d150f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f13, 0(x2) # load 0xff800000 from memory into f13
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f10, 0(x2) # load 0x7f800001 from memory into f10
fdiv.s f14, f13, f10, dyn # perform operation
fdiv.s f14, f13, f10, rdn # perform operation
fdiv.s f14, f13, f10, rmm # perform operation
fdiv.s f14, f13, f10, rne # perform operation
fdiv.s f14, f13, f10, rtz # perform operation
fdiv.s f14, f13, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f13, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f13, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f13, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f13, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f13, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fbfffff)
li x28, 0x007d9397 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f22, 0(x2) # load 0xff800000 from memory into f22
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
fdiv.s f28, f22, f15, dyn # perform operation
fdiv.s f28, f22, f15, rdn # perform operation
fdiv.s f28, f22, f15, rmm # perform operation
fdiv.s f28, f22, f15, rne # perform operation
fdiv.s f28, f22, f15, rtz # perform operation
fdiv.s f28, f22, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f22, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f22, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f22, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f22, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f22, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7ef8654f)
li x16, 0x66689777 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f31, 0(x2) # load 0xff800000 from memory into f31
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f7, 0(x2) # load 0x7ef8654f from memory into f7
fdiv.s f16, f31, f7, dyn # perform operation
fdiv.s f16, f31, f7, rdn # perform operation
fdiv.s f16, f31, f7, rmm # perform operation
fdiv.s f16, f31, f7, rne # perform operation
fdiv.s f16, f31, f7, rtz # perform operation
fdiv.s f16, f31, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f31, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f31, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f31, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f31, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f31, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x813d9ab0)
li x31, 0xe14cd247 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f12, 0(x2) # load 0xff800000 from memory into f12
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f8, 0(x2) # load 0x813d9ab0 from memory into f8
fdiv.s f31, f12, f8, dyn # perform operation
fdiv.s f31, f12, f8, rdn # perform operation
fdiv.s f31, f12, f8, rmm # perform operation
fdiv.s f31, f12, f8, rne # perform operation
fdiv.s f31, f12, f8, rtz # perform operation
fdiv.s f31, f12, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f12, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f12, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f12, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f12, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f12, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x0)
li x30, 0xcc3c1bca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f4, 0(x2) # load 0x00000000 from memory into f4
fdiv.s f30, f10, f4, dyn # perform operation
fdiv.s f30, f10, f4, rdn # perform operation
fdiv.s f30, f10, f4, rmm # perform operation
fdiv.s f30, f10, f4, rne # perform operation
fdiv.s f30, f10, f4, rtz # perform operation
fdiv.s f30, f10, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f10, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f10, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f10, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f10, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f10, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80000000)
li x17, 0x65a806b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f6, 0(x2) # load 0x7fc00000 from memory into f6
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f31, 0(x2) # load 0x80000000 from memory into f31
fdiv.s f17, f6, f31, dyn # perform operation
fdiv.s f17, f6, f31, rdn # perform operation
fdiv.s f17, f6, f31, rmm # perform operation
fdiv.s f17, f6, f31, rne # perform operation
fdiv.s f17, f6, f31, rtz # perform operation
fdiv.s f17, f6, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f6, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f6, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f6, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f6, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f6, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x3f800000)
li x23, 0x40242128 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f3, 0(x2) # load 0x7fc00000 from memory into f3
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
fdiv.s f23, f3, f24, dyn # perform operation
fdiv.s f23, f3, f24, rdn # perform operation
fdiv.s f23, f3, f24, rmm # perform operation
fdiv.s f23, f3, f24, rne # perform operation
fdiv.s f23, f3, f24, rtz # perform operation
fdiv.s f23, f3, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f3, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f3, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f3, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f3, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f3, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xbf800000)
li x24, 0x6af3dde3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f14, 0(x2) # load 0x7fc00000 from memory into f14
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f15, 0(x2) # load 0xbf800000 from memory into f15
fdiv.s f24, f14, f15, dyn # perform operation
fdiv.s f24, f14, f15, rdn # perform operation
fdiv.s f24, f14, f15, rmm # perform operation
fdiv.s f24, f14, f15, rne # perform operation
fdiv.s f24, f14, f15, rtz # perform operation
fdiv.s f24, f14, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f14, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f14, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f14, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f14, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f14, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x3fc00000)
li x6, 0xbf0f98e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f15, 0(x2) # load 0x3fc00000 from memory into f15
fdiv.s f6, f7, f15, dyn # perform operation
fdiv.s f6, f7, f15, rdn # perform operation
fdiv.s f6, f7, f15, rmm # perform operation
fdiv.s f6, f7, f15, rne # perform operation
fdiv.s f6, f7, f15, rtz # perform operation
fdiv.s f6, f7, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f7, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f7, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f7, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f7, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f7, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xbfc00000)
li x15, 0x1dbb64ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f9, 0(x2) # load 0xbfc00000 from memory into f9
fdiv.s f15, f18, f9, dyn # perform operation
fdiv.s f15, f18, f9, rdn # perform operation
fdiv.s f15, f18, f9, rmm # perform operation
fdiv.s f15, f18, f9, rne # perform operation
fdiv.s f15, f18, f9, rtz # perform operation
fdiv.s f15, f18, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f18, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f18, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f18, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f18, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f18, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x40000000)
li x22, 0x389a94da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f5, 0(x2) # load 0x7fc00000 from memory into f5
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f9, 0(x2) # load 0x40000000 from memory into f9
fdiv.s f22, f5, f9, dyn # perform operation
fdiv.s f22, f5, f9, rdn # perform operation
fdiv.s f22, f5, f9, rmm # perform operation
fdiv.s f22, f5, f9, rne # perform operation
fdiv.s f22, f5, f9, rtz # perform operation
fdiv.s f22, f5, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f5, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f5, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f5, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f5, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f5, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xc0000000)
li x30, 0x91d0fc16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f29, 0(x2) # load 0x7fc00000 from memory into f29
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f9, 0(x2) # load 0xc0000000 from memory into f9
fdiv.s f30, f29, f9, dyn # perform operation
fdiv.s f30, f29, f9, rdn # perform operation
fdiv.s f30, f29, f9, rmm # perform operation
fdiv.s f30, f29, f9, rne # perform operation
fdiv.s f30, f29, f9, rtz # perform operation
fdiv.s f30, f29, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f29, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f29, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f29, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f29, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f29, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x800000)
li x5, 0xbe881403 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f3, 0(x2) # load 0x7fc00000 from memory into f3
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f19, 0(x2) # load 0x00800000 from memory into f19
fdiv.s f5, f3, f19, dyn # perform operation
fdiv.s f5, f3, f19, rdn # perform operation
fdiv.s f5, f3, f19, rmm # perform operation
fdiv.s f5, f3, f19, rne # perform operation
fdiv.s f5, f3, f19, rtz # perform operation
fdiv.s f5, f3, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f3, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f3, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f3, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f3, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f3, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80800000)
li x3, 0xdb7845fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f25, 0(x2) # load 0x7fc00000 from memory into f25
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f21, 0(x2) # load 0x80800000 from memory into f21
fdiv.s f3, f25, f21, dyn # perform operation
fdiv.s f3, f25, f21, rdn # perform operation
fdiv.s f3, f25, f21, rmm # perform operation
fdiv.s f3, f25, f21, rne # perform operation
fdiv.s f3, f25, f21, rtz # perform operation
fdiv.s f3, f25, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f25, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f25, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f25, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f25, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f25, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f7fffff)
li x23, 0xd9d9460b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f25, 0(x2) # load 0x7fc00000 from memory into f25
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f24, 0(x2) # load 0x7f7fffff from memory into f24
fdiv.s f23, f25, f24, dyn # perform operation
fdiv.s f23, f25, f24, rdn # perform operation
fdiv.s f23, f25, f24, rmm # perform operation
fdiv.s f23, f25, f24, rne # perform operation
fdiv.s f23, f25, f24, rtz # perform operation
fdiv.s f23, f25, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f25, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f25, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f25, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f25, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f25, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xff7fffff)
li x12, 0xb378b036 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f26, 0(x2) # load 0x7fc00000 from memory into f26
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f19, 0(x2) # load 0xff7fffff from memory into f19
fdiv.s f12, f26, f19, dyn # perform operation
fdiv.s f12, f26, f19, rdn # perform operation
fdiv.s f12, f26, f19, rmm # perform operation
fdiv.s f12, f26, f19, rne # perform operation
fdiv.s f12, f26, f19, rtz # perform operation
fdiv.s f12, f26, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f26, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f26, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f26, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f26, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f26, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fffff)
li x10, 0x49bb04db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f12, 0(x2) # load 0x7fc00000 from memory into f12
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f27, 0(x2) # load 0x007fffff from memory into f27
fdiv.s f10, f12, f27, dyn # perform operation
fdiv.s f10, f12, f27, rdn # perform operation
fdiv.s f10, f12, f27, rmm # perform operation
fdiv.s f10, f12, f27, rne # perform operation
fdiv.s f10, f12, f27, rtz # perform operation
fdiv.s f10, f12, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f12, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f12, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f12, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f12, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f12, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x807fffff)
li x27, 0x111794ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f22, 0(x2) # load 0x7fc00000 from memory into f22
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f19, 0(x2) # load 0x807fffff from memory into f19
fdiv.s f27, f22, f19, dyn # perform operation
fdiv.s f27, f22, f19, rdn # perform operation
fdiv.s f27, f22, f19, rmm # perform operation
fdiv.s f27, f22, f19, rne # perform operation
fdiv.s f27, f22, f19, rtz # perform operation
fdiv.s f27, f22, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f22, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f22, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f22, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f22, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f22, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x400000)
li x14, 0x6eaf7e66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f8, 0(x2) # load 0x7fc00000 from memory into f8
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f19, 0(x2) # load 0x00400000 from memory into f19
fdiv.s f14, f8, f19, dyn # perform operation
fdiv.s f14, f8, f19, rdn # perform operation
fdiv.s f14, f8, f19, rmm # perform operation
fdiv.s f14, f8, f19, rne # perform operation
fdiv.s f14, f8, f19, rtz # perform operation
fdiv.s f14, f8, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f8, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f8, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f8, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f8, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f8, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80400000)
li x17, 0x9c0976ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f24, 0(x2) # load 0x7fc00000 from memory into f24
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f28, 0(x2) # load 0x80400000 from memory into f28
fdiv.s f17, f24, f28, dyn # perform operation
fdiv.s f17, f24, f28, rdn # perform operation
fdiv.s f17, f24, f28, rmm # perform operation
fdiv.s f17, f24, f28, rne # perform operation
fdiv.s f17, f24, f28, rtz # perform operation
fdiv.s f17, f24, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f24, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f24, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f24, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f24, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f24, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x1)
li x16, 0xa666ecff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f31, 0(x2) # load 0x7fc00000 from memory into f31
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f14, 0(x2) # load 0x00000001 from memory into f14
fdiv.s f16, f31, f14, dyn # perform operation
fdiv.s f16, f31, f14, rdn # perform operation
fdiv.s f16, f31, f14, rmm # perform operation
fdiv.s f16, f31, f14, rne # perform operation
fdiv.s f16, f31, f14, rtz # perform operation
fdiv.s f16, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f31, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80000001)
li x25, 0xc39432e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f31, 0(x2) # load 0x7fc00000 from memory into f31
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f19, 0(x2) # load 0x80000001 from memory into f19
fdiv.s f25, f31, f19, dyn # perform operation
fdiv.s f25, f31, f19, rdn # perform operation
fdiv.s f25, f31, f19, rmm # perform operation
fdiv.s f25, f31, f19, rne # perform operation
fdiv.s f25, f31, f19, rtz # perform operation
fdiv.s f25, f31, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f31, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f31, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f31, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f31, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f31, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f800000)
li x7, 0x0e56ab92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f17, 0(x2) # load 0x7fc00000 from memory into f17
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f24, 0(x2) # load 0x7f800000 from memory into f24
fdiv.s f7, f17, f24, dyn # perform operation
fdiv.s f7, f17, f24, rdn # perform operation
fdiv.s f7, f17, f24, rmm # perform operation
fdiv.s f7, f17, f24, rne # perform operation
fdiv.s f7, f17, f24, rtz # perform operation
fdiv.s f7, f17, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f17, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f17, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f17, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f17, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f17, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xff800000)
li x6, 0xae1229dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f24, 0(x2) # load 0x7fc00000 from memory into f24
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f8, 0(x2) # load 0xff800000 from memory into f8
fdiv.s f6, f24, f8, dyn # perform operation
fdiv.s f6, f24, f8, rdn # perform operation
fdiv.s f6, f24, f8, rmm # perform operation
fdiv.s f6, f24, f8, rne # perform operation
fdiv.s f6, f24, f8, rtz # perform operation
fdiv.s f6, f24, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f24, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f24, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f24, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f24, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f24, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fc00000)
li x24, 0x3565933f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f28, 0(x2) # load 0x7fc00000 from memory into f28
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f22, 0(x2) # load 0x7fc00000 from memory into f22
fdiv.s f24, f28, f22, dyn # perform operation
fdiv.s f24, f28, f22, rdn # perform operation
fdiv.s f24, f28, f22, rmm # perform operation
fdiv.s f24, f28, f22, rne # perform operation
fdiv.s f24, f28, f22, rtz # perform operation
fdiv.s f24, f28, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f28, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f28, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f28, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f28, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f28, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fffffff)
li x14, 0xcd14d06c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f13, 0(x2) # load 0x7fc00000 from memory into f13
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f16, 0(x2) # load 0x7fffffff from memory into f16
fdiv.s f14, f13, f16, dyn # perform operation
fdiv.s f14, f13, f16, rdn # perform operation
fdiv.s f14, f13, f16, rmm # perform operation
fdiv.s f14, f13, f16, rne # perform operation
fdiv.s f14, f13, f16, rtz # perform operation
fdiv.s f14, f13, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f13, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f13, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f13, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f13, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f13, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f800001)
li x6, 0x2010b57e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f19, 0(x2) # load 0x7fc00000 from memory into f19
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
fdiv.s f6, f19, f27, dyn # perform operation
fdiv.s f6, f19, f27, rdn # perform operation
fdiv.s f6, f19, f27, rmm # perform operation
fdiv.s f6, f19, f27, rne # perform operation
fdiv.s f6, f19, f27, rtz # perform operation
fdiv.s f6, f19, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f19, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f19, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f19, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f19, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f19, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fbfffff)
li x13, 0xb7c9857e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f25, 0(x2) # load 0x7fbfffff from memory into f25
fdiv.s f13, f7, f25, dyn # perform operation
fdiv.s f13, f7, f25, rdn # perform operation
fdiv.s f13, f7, f25, rmm # perform operation
fdiv.s f13, f7, f25, rne # perform operation
fdiv.s f13, f7, f25, rtz # perform operation
fdiv.s f13, f7, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f7, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f7, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f7, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f7, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f7, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7ef8654f)
li x21, 0xa0b489ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f11, 0(x2) # load 0x7fc00000 from memory into f11
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f31, 0(x2) # load 0x7ef8654f from memory into f31
fdiv.s f21, f11, f31, dyn # perform operation
fdiv.s f21, f11, f31, rdn # perform operation
fdiv.s f21, f11, f31, rmm # perform operation
fdiv.s f21, f11, f31, rne # perform operation
fdiv.s f21, f11, f31, rtz # perform operation
fdiv.s f21, f11, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f11, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f11, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f11, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f11, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f11, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x813d9ab0)
li x27, 0xfe2bdfb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f30, 0(x2) # load 0x7fc00000 from memory into f30
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f6, 0(x2) # load 0x813d9ab0 from memory into f6
fdiv.s f27, f30, f6, dyn # perform operation
fdiv.s f27, f30, f6, rdn # perform operation
fdiv.s f27, f30, f6, rmm # perform operation
fdiv.s f27, f30, f6, rne # perform operation
fdiv.s f27, f30, f6, rtz # perform operation
fdiv.s f27, f30, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f30, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f30, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f30, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f30, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f30, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x0)
li x5, 0x83902918 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f13, 0(x2) # load 0x7fffffff from memory into f13
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f25, 0(x2) # load 0x00000000 from memory into f25
fdiv.s f5, f13, f25, dyn # perform operation
fdiv.s f5, f13, f25, rdn # perform operation
fdiv.s f5, f13, f25, rmm # perform operation
fdiv.s f5, f13, f25, rne # perform operation
fdiv.s f5, f13, f25, rtz # perform operation
fdiv.s f5, f13, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f13, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f13, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f13, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f13, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f13, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80000000)
li x25, 0x1ef6b46a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f1, 0(x2) # load 0x7fffffff from memory into f1
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f29, 0(x2) # load 0x80000000 from memory into f29
fdiv.s f25, f1, f29, dyn # perform operation
fdiv.s f25, f1, f29, rdn # perform operation
fdiv.s f25, f1, f29, rmm # perform operation
fdiv.s f25, f1, f29, rne # perform operation
fdiv.s f25, f1, f29, rtz # perform operation
fdiv.s f25, f1, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f1, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f1, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f1, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f1, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f1, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x3f800000)
li x28, 0xf05f28a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f29, 0(x2) # load 0x3f800000 from memory into f29
fdiv.s f28, f19, f29, dyn # perform operation
fdiv.s f28, f19, f29, rdn # perform operation
fdiv.s f28, f19, f29, rmm # perform operation
fdiv.s f28, f19, f29, rne # perform operation
fdiv.s f28, f19, f29, rtz # perform operation
fdiv.s f28, f19, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f19, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f19, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f19, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f19, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f19, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xbf800000)
li x12, 0x6f601ecf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f18, 0(x2) # load 0x7fffffff from memory into f18
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f5, 0(x2) # load 0xbf800000 from memory into f5
fdiv.s f12, f18, f5, dyn # perform operation
fdiv.s f12, f18, f5, rdn # perform operation
fdiv.s f12, f18, f5, rmm # perform operation
fdiv.s f12, f18, f5, rne # perform operation
fdiv.s f12, f18, f5, rtz # perform operation
fdiv.s f12, f18, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f18, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f18, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f18, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f18, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f18, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x3fc00000)
li x7, 0x002be659 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f31, 0(x2) # load 0x7fffffff from memory into f31
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f22, 0(x2) # load 0x3fc00000 from memory into f22
fdiv.s f7, f31, f22, dyn # perform operation
fdiv.s f7, f31, f22, rdn # perform operation
fdiv.s f7, f31, f22, rmm # perform operation
fdiv.s f7, f31, f22, rne # perform operation
fdiv.s f7, f31, f22, rtz # perform operation
fdiv.s f7, f31, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f31, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f31, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f31, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f31, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f31, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xbfc00000)
li x23, 0x12c992b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f17, 0(x2) # load 0x7fffffff from memory into f17
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f7, 0(x2) # load 0xbfc00000 from memory into f7
fdiv.s f23, f17, f7, dyn # perform operation
fdiv.s f23, f17, f7, rdn # perform operation
fdiv.s f23, f17, f7, rmm # perform operation
fdiv.s f23, f17, f7, rne # perform operation
fdiv.s f23, f17, f7, rtz # perform operation
fdiv.s f23, f17, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f17, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f17, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f17, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f17, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f17, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x40000000)
li x17, 0xeb58bc69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f3, 0(x2) # load 0x7fffffff from memory into f3
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f14, 0(x2) # load 0x40000000 from memory into f14
fdiv.s f17, f3, f14, dyn # perform operation
fdiv.s f17, f3, f14, rdn # perform operation
fdiv.s f17, f3, f14, rmm # perform operation
fdiv.s f17, f3, f14, rne # perform operation
fdiv.s f17, f3, f14, rtz # perform operation
fdiv.s f17, f3, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f3, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f3, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f3, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f3, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f3, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xc0000000)
li x22, 0x850bdb83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f17, 0(x2) # load 0x7fffffff from memory into f17
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f2, 0(x2) # load 0xc0000000 from memory into f2
fdiv.s f22, f17, f2, dyn # perform operation
fdiv.s f22, f17, f2, rdn # perform operation
fdiv.s f22, f17, f2, rmm # perform operation
fdiv.s f22, f17, f2, rne # perform operation
fdiv.s f22, f17, f2, rtz # perform operation
fdiv.s f22, f17, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f17, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f17, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f17, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f17, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f17, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x800000)
li x29, 0x53101979 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f10, 0(x2) # load 0x00800000 from memory into f10
fdiv.s f29, f2, f10, dyn # perform operation
fdiv.s f29, f2, f10, rdn # perform operation
fdiv.s f29, f2, f10, rmm # perform operation
fdiv.s f29, f2, f10, rne # perform operation
fdiv.s f29, f2, f10, rtz # perform operation
fdiv.s f29, f2, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f2, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f2, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f2, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f2, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f2, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80800000)
li x13, 0x92109ee6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f17, 0(x2) # load 0x7fffffff from memory into f17
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
fdiv.s f13, f17, f23, dyn # perform operation
fdiv.s f13, f17, f23, rdn # perform operation
fdiv.s f13, f17, f23, rmm # perform operation
fdiv.s f13, f17, f23, rne # perform operation
fdiv.s f13, f17, f23, rtz # perform operation
fdiv.s f13, f17, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f17, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f17, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f17, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f17, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f17, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f7fffff)
li x5, 0x670af644 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f1, 0(x2) # load 0x7f7fffff from memory into f1
fdiv.s f5, f19, f1, dyn # perform operation
fdiv.s f5, f19, f1, rdn # perform operation
fdiv.s f5, f19, f1, rmm # perform operation
fdiv.s f5, f19, f1, rne # perform operation
fdiv.s f5, f19, f1, rtz # perform operation
fdiv.s f5, f19, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f19, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f19, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f19, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f19, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f19, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xff7fffff)
li x19, 0x194d17dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f6, 0(x2) # load 0x7fffffff from memory into f6
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f26, 0(x2) # load 0xff7fffff from memory into f26
fdiv.s f19, f6, f26, dyn # perform operation
fdiv.s f19, f6, f26, rdn # perform operation
fdiv.s f19, f6, f26, rmm # perform operation
fdiv.s f19, f6, f26, rne # perform operation
fdiv.s f19, f6, f26, rtz # perform operation
fdiv.s f19, f6, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f6, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f6, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f6, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f6, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f6, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fffff)
li x10, 0xa7339a2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f6, 0(x2) # load 0x7fffffff from memory into f6
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f4, 0(x2) # load 0x007fffff from memory into f4
fdiv.s f10, f6, f4, dyn # perform operation
fdiv.s f10, f6, f4, rdn # perform operation
fdiv.s f10, f6, f4, rmm # perform operation
fdiv.s f10, f6, f4, rne # perform operation
fdiv.s f10, f6, f4, rtz # perform operation
fdiv.s f10, f6, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f6, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f6, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f6, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f6, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f6, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x807fffff)
li x4, 0x9b2663b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f26, 0(x2) # load 0x7fffffff from memory into f26
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
fdiv.s f4, f26, f23, dyn # perform operation
fdiv.s f4, f26, f23, rdn # perform operation
fdiv.s f4, f26, f23, rmm # perform operation
fdiv.s f4, f26, f23, rne # perform operation
fdiv.s f4, f26, f23, rtz # perform operation
fdiv.s f4, f26, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f26, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f26, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f26, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f26, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f26, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x400000)
li x8, 0xc8f2553a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f22, 0(x2) # load 0x00400000 from memory into f22
fdiv.s f8, f5, f22, dyn # perform operation
fdiv.s f8, f5, f22, rdn # perform operation
fdiv.s f8, f5, f22, rmm # perform operation
fdiv.s f8, f5, f22, rne # perform operation
fdiv.s f8, f5, f22, rtz # perform operation
fdiv.s f8, f5, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f5, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f5, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f5, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f5, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f5, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80400000)
li x4, 0x20df9579 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f1, 0(x2) # load 0x7fffffff from memory into f1
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f26, 0(x2) # load 0x80400000 from memory into f26
fdiv.s f4, f1, f26, dyn # perform operation
fdiv.s f4, f1, f26, rdn # perform operation
fdiv.s f4, f1, f26, rmm # perform operation
fdiv.s f4, f1, f26, rne # perform operation
fdiv.s f4, f1, f26, rtz # perform operation
fdiv.s f4, f1, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f1, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f1, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f1, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f1, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f1, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x1)
li x3, 0x821c0f1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f7, 0(x2) # load 0x7fffffff from memory into f7
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f10, 0(x2) # load 0x00000001 from memory into f10
fdiv.s f3, f7, f10, dyn # perform operation
fdiv.s f3, f7, f10, rdn # perform operation
fdiv.s f3, f7, f10, rmm # perform operation
fdiv.s f3, f7, f10, rne # perform operation
fdiv.s f3, f7, f10, rtz # perform operation
fdiv.s f3, f7, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f7, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f7, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f7, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f7, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f7, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80000001)
li x1, 0xf65c8fee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f16, 0(x2) # load 0x7fffffff from memory into f16
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f4, 0(x2) # load 0x80000001 from memory into f4
fdiv.s f1, f16, f4, dyn # perform operation
fdiv.s f1, f16, f4, rdn # perform operation
fdiv.s f1, f16, f4, rmm # perform operation
fdiv.s f1, f16, f4, rne # perform operation
fdiv.s f1, f16, f4, rtz # perform operation
fdiv.s f1, f16, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f16, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f16, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f16, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f16, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f16, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f800000)
li x4, 0x0c495ff1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f30, 0(x2) # load 0x7fffffff from memory into f30
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
fdiv.s f4, f30, f27, dyn # perform operation
fdiv.s f4, f30, f27, rdn # perform operation
fdiv.s f4, f30, f27, rmm # perform operation
fdiv.s f4, f30, f27, rne # perform operation
fdiv.s f4, f30, f27, rtz # perform operation
fdiv.s f4, f30, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f30, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f30, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f30, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f30, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f30, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xff800000)
li x21, 0xc57e7a1c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f12, 0(x2) # load 0xff800000 from memory into f12
fdiv.s f21, f10, f12, dyn # perform operation
fdiv.s f21, f10, f12, rdn # perform operation
fdiv.s f21, f10, f12, rmm # perform operation
fdiv.s f21, f10, f12, rne # perform operation
fdiv.s f21, f10, f12, rtz # perform operation
fdiv.s f21, f10, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f10, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f10, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f10, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f10, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f10, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fc00000)
li x16, 0x45a202f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f6, 0(x2) # load 0x7fffffff from memory into f6
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f21, 0(x2) # load 0x7fc00000 from memory into f21
fdiv.s f16, f6, f21, dyn # perform operation
fdiv.s f16, f6, f21, rdn # perform operation
fdiv.s f16, f6, f21, rmm # perform operation
fdiv.s f16, f6, f21, rne # perform operation
fdiv.s f16, f6, f21, rtz # perform operation
fdiv.s f16, f6, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f6, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f6, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f6, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f6, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f6, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fffffff)
li x16, 0x276de666 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f24, 0(x2) # load 0x7fffffff from memory into f24
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f15, 0(x2) # load 0x7fffffff from memory into f15
fdiv.s f16, f24, f15, dyn # perform operation
fdiv.s f16, f24, f15, rdn # perform operation
fdiv.s f16, f24, f15, rmm # perform operation
fdiv.s f16, f24, f15, rne # perform operation
fdiv.s f16, f24, f15, rtz # perform operation
fdiv.s f16, f24, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f24, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f24, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f24, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f24, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f24, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f800001)
li x19, 0x7fa4c441 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f18, 0(x2) # load 0x7fffffff from memory into f18
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f10, 0(x2) # load 0x7f800001 from memory into f10
fdiv.s f19, f18, f10, dyn # perform operation
fdiv.s f19, f18, f10, rdn # perform operation
fdiv.s f19, f18, f10, rmm # perform operation
fdiv.s f19, f18, f10, rne # perform operation
fdiv.s f19, f18, f10, rtz # perform operation
fdiv.s f19, f18, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f18, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f18, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f18, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f18, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f18, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fbfffff)
li x18, 0x320b6699 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f31, 0(x2) # load 0x7fffffff from memory into f31
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f12, 0(x2) # load 0x7fbfffff from memory into f12
fdiv.s f18, f31, f12, dyn # perform operation
fdiv.s f18, f31, f12, rdn # perform operation
fdiv.s f18, f31, f12, rmm # perform operation
fdiv.s f18, f31, f12, rne # perform operation
fdiv.s f18, f31, f12, rtz # perform operation
fdiv.s f18, f31, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f31, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f31, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f31, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f31, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f31, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7ef8654f)
li x1, 0x43ff07ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f11, 0(x2) # load 0x7fffffff from memory into f11
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f29, 0(x2) # load 0x7ef8654f from memory into f29
fdiv.s f1, f11, f29, dyn # perform operation
fdiv.s f1, f11, f29, rdn # perform operation
fdiv.s f1, f11, f29, rmm # perform operation
fdiv.s f1, f11, f29, rne # perform operation
fdiv.s f1, f11, f29, rtz # perform operation
fdiv.s f1, f11, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f11, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f11, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f11, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f11, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f11, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x813d9ab0)
li x18, 0x5342a5c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f4, 0(x2) # load 0x7fffffff from memory into f4
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f11, 0(x2) # load 0x813d9ab0 from memory into f11
fdiv.s f18, f4, f11, dyn # perform operation
fdiv.s f18, f4, f11, rdn # perform operation
fdiv.s f18, f4, f11, rmm # perform operation
fdiv.s f18, f4, f11, rne # perform operation
fdiv.s f18, f4, f11, rtz # perform operation
fdiv.s f18, f4, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f4, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f4, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f4, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f4, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f4, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x0)
li x2, 0x9ecdf1a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f8, 0(x2) # load 0x7f800001 from memory into f8
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
fdiv.s f2, f8, f29, dyn # perform operation
fdiv.s f2, f8, f29, rdn # perform operation
fdiv.s f2, f8, f29, rmm # perform operation
fdiv.s f2, f8, f29, rne # perform operation
fdiv.s f2, f8, f29, rtz # perform operation
fdiv.s f2, f8, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f8, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f8, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f8, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f8, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f8, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80000000)
li x25, 0xfd990d64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f8, 0(x2) # load 0x7f800001 from memory into f8
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f21, 0(x2) # load 0x80000000 from memory into f21
fdiv.s f25, f8, f21, dyn # perform operation
fdiv.s f25, f8, f21, rdn # perform operation
fdiv.s f25, f8, f21, rmm # perform operation
fdiv.s f25, f8, f21, rne # perform operation
fdiv.s f25, f8, f21, rtz # perform operation
fdiv.s f25, f8, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f8, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f8, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f8, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f8, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f8, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x3f800000)
li x27, 0x5825cb25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f26, 0(x2) # load 0x7f800001 from memory into f26
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f12, 0(x2) # load 0x3f800000 from memory into f12
fdiv.s f27, f26, f12, dyn # perform operation
fdiv.s f27, f26, f12, rdn # perform operation
fdiv.s f27, f26, f12, rmm # perform operation
fdiv.s f27, f26, f12, rne # perform operation
fdiv.s f27, f26, f12, rtz # perform operation
fdiv.s f27, f26, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f26, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f26, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f26, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f26, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f26, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xbf800000)
li x23, 0xc7f1c1ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f7, 0(x2) # load 0xbf800000 from memory into f7
fdiv.s f23, f19, f7, dyn # perform operation
fdiv.s f23, f19, f7, rdn # perform operation
fdiv.s f23, f19, f7, rmm # perform operation
fdiv.s f23, f19, f7, rne # perform operation
fdiv.s f23, f19, f7, rtz # perform operation
fdiv.s f23, f19, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f19, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f19, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f19, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f19, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f19, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x3fc00000)
li x30, 0x9dd50fe3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f31, 0(x2) # load 0x7f800001 from memory into f31
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f11, 0(x2) # load 0x3fc00000 from memory into f11
fdiv.s f30, f31, f11, dyn # perform operation
fdiv.s f30, f31, f11, rdn # perform operation
fdiv.s f30, f31, f11, rmm # perform operation
fdiv.s f30, f31, f11, rne # perform operation
fdiv.s f30, f31, f11, rtz # perform operation
fdiv.s f30, f31, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f31, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f31, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f31, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f31, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f31, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xbfc00000)
li x30, 0x9ccab1f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f17, 0(x2) # load 0x7f800001 from memory into f17
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f22, 0(x2) # load 0xbfc00000 from memory into f22
fdiv.s f30, f17, f22, dyn # perform operation
fdiv.s f30, f17, f22, rdn # perform operation
fdiv.s f30, f17, f22, rmm # perform operation
fdiv.s f30, f17, f22, rne # perform operation
fdiv.s f30, f17, f22, rtz # perform operation
fdiv.s f30, f17, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f17, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f17, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f17, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f17, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f17, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x40000000)
li x2, 0x46f6c70c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f24, 0(x2) # load 0x7f800001 from memory into f24
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f3, 0(x2) # load 0x40000000 from memory into f3
fdiv.s f2, f24, f3, dyn # perform operation
fdiv.s f2, f24, f3, rdn # perform operation
fdiv.s f2, f24, f3, rmm # perform operation
fdiv.s f2, f24, f3, rne # perform operation
fdiv.s f2, f24, f3, rtz # perform operation
fdiv.s f2, f24, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f24, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f24, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f24, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f24, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f24, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xc0000000)
li x7, 0xf6ac28ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
fdiv.s f7, f19, f31, dyn # perform operation
fdiv.s f7, f19, f31, rdn # perform operation
fdiv.s f7, f19, f31, rmm # perform operation
fdiv.s f7, f19, f31, rne # perform operation
fdiv.s f7, f19, f31, rtz # perform operation
fdiv.s f7, f19, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f7, f19, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f7, f19, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f7, f19, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f7, f19, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f7, f19, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x800000)
li x26, 0x8387377f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f13, 0(x2) # load 0x7f800001 from memory into f13
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f17, 0(x2) # load 0x00800000 from memory into f17
fdiv.s f26, f13, f17, dyn # perform operation
fdiv.s f26, f13, f17, rdn # perform operation
fdiv.s f26, f13, f17, rmm # perform operation
fdiv.s f26, f13, f17, rne # perform operation
fdiv.s f26, f13, f17, rtz # perform operation
fdiv.s f26, f13, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f13, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f13, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f13, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f13, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f13, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80800000)
li x31, 0xc0ca713d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f14, 0(x2) # load 0x7f800001 from memory into f14
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f16, 0(x2) # load 0x80800000 from memory into f16
fdiv.s f31, f14, f16, dyn # perform operation
fdiv.s f31, f14, f16, rdn # perform operation
fdiv.s f31, f14, f16, rmm # perform operation
fdiv.s f31, f14, f16, rne # perform operation
fdiv.s f31, f14, f16, rtz # perform operation
fdiv.s f31, f14, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f14, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f14, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f14, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f14, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f14, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f7fffff)
li x14, 0xd70fac61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f25, 0(x2) # load 0x7f800001 from memory into f25
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
fdiv.s f14, f25, f15, dyn # perform operation
fdiv.s f14, f25, f15, rdn # perform operation
fdiv.s f14, f25, f15, rmm # perform operation
fdiv.s f14, f25, f15, rne # perform operation
fdiv.s f14, f25, f15, rtz # perform operation
fdiv.s f14, f25, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f25, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f25, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f25, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f25, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f25, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xff7fffff)
li x2, 0x6379576e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f3, 0(x2) # load 0x7f800001 from memory into f3
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f10, 0(x2) # load 0xff7fffff from memory into f10
fdiv.s f2, f3, f10, dyn # perform operation
fdiv.s f2, f3, f10, rdn # perform operation
fdiv.s f2, f3, f10, rmm # perform operation
fdiv.s f2, f3, f10, rne # perform operation
fdiv.s f2, f3, f10, rtz # perform operation
fdiv.s f2, f3, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f3, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f3, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f3, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f3, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f3, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fffff)
li x16, 0xc8b9f11f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f31, 0(x2) # load 0x7f800001 from memory into f31
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f2, 0(x2) # load 0x007fffff from memory into f2
fdiv.s f16, f31, f2, dyn # perform operation
fdiv.s f16, f31, f2, rdn # perform operation
fdiv.s f16, f31, f2, rmm # perform operation
fdiv.s f16, f31, f2, rne # perform operation
fdiv.s f16, f31, f2, rtz # perform operation
fdiv.s f16, f31, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f31, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f31, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f31, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f31, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f31, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x807fffff)
li x9, 0x77c50924 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f26, 0(x2) # load 0x807fffff from memory into f26
fdiv.s f9, f21, f26, dyn # perform operation
fdiv.s f9, f21, f26, rdn # perform operation
fdiv.s f9, f21, f26, rmm # perform operation
fdiv.s f9, f21, f26, rne # perform operation
fdiv.s f9, f21, f26, rtz # perform operation
fdiv.s f9, f21, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f21, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f21, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f21, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f21, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f21, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x400000)
li x24, 0x088a5145 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f16, 0(x2) # load 0x00400000 from memory into f16
fdiv.s f24, f30, f16, dyn # perform operation
fdiv.s f24, f30, f16, rdn # perform operation
fdiv.s f24, f30, f16, rmm # perform operation
fdiv.s f24, f30, f16, rne # perform operation
fdiv.s f24, f30, f16, rtz # perform operation
fdiv.s f24, f30, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f30, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f30, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f30, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f30, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f30, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80400000)
li x13, 0x5b4c0cef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f11, 0(x2) # load 0x80400000 from memory into f11
fdiv.s f13, f5, f11, dyn # perform operation
fdiv.s f13, f5, f11, rdn # perform operation
fdiv.s f13, f5, f11, rmm # perform operation
fdiv.s f13, f5, f11, rne # perform operation
fdiv.s f13, f5, f11, rtz # perform operation
fdiv.s f13, f5, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f5, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f5, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f5, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f5, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f5, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x1)
li x25, 0x5e8f925f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f3, 0(x2) # load 0x7f800001 from memory into f3
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f17, 0(x2) # load 0x00000001 from memory into f17
fdiv.s f25, f3, f17, dyn # perform operation
fdiv.s f25, f3, f17, rdn # perform operation
fdiv.s f25, f3, f17, rmm # perform operation
fdiv.s f25, f3, f17, rne # perform operation
fdiv.s f25, f3, f17, rtz # perform operation
fdiv.s f25, f3, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f3, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f3, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f3, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f3, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f3, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80000001)
li x23, 0x0ad99b00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f17, 0(x2) # load 0x7f800001 from memory into f17
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f5, 0(x2) # load 0x80000001 from memory into f5
fdiv.s f23, f17, f5, dyn # perform operation
fdiv.s f23, f17, f5, rdn # perform operation
fdiv.s f23, f17, f5, rmm # perform operation
fdiv.s f23, f17, f5, rne # perform operation
fdiv.s f23, f17, f5, rtz # perform operation
fdiv.s f23, f17, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f17, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f17, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f17, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f17, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f17, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f800000)
li x10, 0x7ca26c6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f9, 0(x2) # load 0x7f800000 from memory into f9
fdiv.s f10, f21, f9, dyn # perform operation
fdiv.s f10, f21, f9, rdn # perform operation
fdiv.s f10, f21, f9, rmm # perform operation
fdiv.s f10, f21, f9, rne # perform operation
fdiv.s f10, f21, f9, rtz # perform operation
fdiv.s f10, f21, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f21, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f21, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f21, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f21, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f21, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xff800000)
li x4, 0x11b6dace # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f6, 0(x2) # load 0x7f800001 from memory into f6
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f10, 0(x2) # load 0xff800000 from memory into f10
fdiv.s f4, f6, f10, dyn # perform operation
fdiv.s f4, f6, f10, rdn # perform operation
fdiv.s f4, f6, f10, rmm # perform operation
fdiv.s f4, f6, f10, rne # perform operation
fdiv.s f4, f6, f10, rtz # perform operation
fdiv.s f4, f6, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f6, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f6, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f6, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f6, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f6, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fc00000)
li x24, 0x543d3ac1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
fdiv.s f24, f19, f18, dyn # perform operation
fdiv.s f24, f19, f18, rdn # perform operation
fdiv.s f24, f19, f18, rmm # perform operation
fdiv.s f24, f19, f18, rne # perform operation
fdiv.s f24, f19, f18, rtz # perform operation
fdiv.s f24, f19, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f19, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f19, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f19, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f19, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f19, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fffffff)
li x25, 0x43aec286 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f28, 0(x2) # load 0x7f800001 from memory into f28
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f6, 0(x2) # load 0x7fffffff from memory into f6
fdiv.s f25, f28, f6, dyn # perform operation
fdiv.s f25, f28, f6, rdn # perform operation
fdiv.s f25, f28, f6, rmm # perform operation
fdiv.s f25, f28, f6, rne # perform operation
fdiv.s f25, f28, f6, rtz # perform operation
fdiv.s f25, f28, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f28, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f28, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f28, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f28, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f28, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f800001)
li x4, 0x583394cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f6, 0(x2) # load 0x7f800001 from memory into f6
fdiv.s f4, f7, f6, dyn # perform operation
fdiv.s f4, f7, f6, rdn # perform operation
fdiv.s f4, f7, f6, rmm # perform operation
fdiv.s f4, f7, f6, rne # perform operation
fdiv.s f4, f7, f6, rtz # perform operation
fdiv.s f4, f7, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f7, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f7, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f7, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f7, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f7, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fbfffff)
li x23, 0x0daac3fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f3, 0(x2) # load 0x7f800001 from memory into f3
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f11, 0(x2) # load 0x7fbfffff from memory into f11
fdiv.s f23, f3, f11, dyn # perform operation
fdiv.s f23, f3, f11, rdn # perform operation
fdiv.s f23, f3, f11, rmm # perform operation
fdiv.s f23, f3, f11, rne # perform operation
fdiv.s f23, f3, f11, rtz # perform operation
fdiv.s f23, f3, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f3, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f3, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f3, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f3, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f3, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7ef8654f)
li x28, 0xcd650cf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f22, 0(x2) # load 0x7ef8654f from memory into f22
fdiv.s f28, f30, f22, dyn # perform operation
fdiv.s f28, f30, f22, rdn # perform operation
fdiv.s f28, f30, f22, rmm # perform operation
fdiv.s f28, f30, f22, rne # perform operation
fdiv.s f28, f30, f22, rtz # perform operation
fdiv.s f28, f30, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f30, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f30, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f30, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f30, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f30, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x813d9ab0)
li x15, 0x22ad8278 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f10, 0(x2) # load 0x7f800001 from memory into f10
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f30, 0(x2) # load 0x813d9ab0 from memory into f30
fdiv.s f15, f10, f30, dyn # perform operation
fdiv.s f15, f10, f30, rdn # perform operation
fdiv.s f15, f10, f30, rmm # perform operation
fdiv.s f15, f10, f30, rne # perform operation
fdiv.s f15, f10, f30, rtz # perform operation
fdiv.s f15, f10, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f10, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f10, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f10, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f10, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f10, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x0)
li x3, 0xb3bc2890 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
fdiv.s f3, f28, f29, dyn # perform operation
fdiv.s f3, f28, f29, rdn # perform operation
fdiv.s f3, f28, f29, rmm # perform operation
fdiv.s f3, f28, f29, rne # perform operation
fdiv.s f3, f28, f29, rtz # perform operation
fdiv.s f3, f28, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f28, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f28, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f28, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f28, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f28, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80000000)
li x6, 0xc12c4fdf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f5, 0(x2) # load 0x7fbfffff from memory into f5
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f13, 0(x2) # load 0x80000000 from memory into f13
fdiv.s f6, f5, f13, dyn # perform operation
fdiv.s f6, f5, f13, rdn # perform operation
fdiv.s f6, f5, f13, rmm # perform operation
fdiv.s f6, f5, f13, rne # perform operation
fdiv.s f6, f5, f13, rtz # perform operation
fdiv.s f6, f5, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f5, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f5, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f5, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f5, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f5, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x3f800000)
li x5, 0xe63027bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f20, 0(x2) # load 0x7fbfffff from memory into f20
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f17, 0(x2) # load 0x3f800000 from memory into f17
fdiv.s f5, f20, f17, dyn # perform operation
fdiv.s f5, f20, f17, rdn # perform operation
fdiv.s f5, f20, f17, rmm # perform operation
fdiv.s f5, f20, f17, rne # perform operation
fdiv.s f5, f20, f17, rtz # perform operation
fdiv.s f5, f20, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f20, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f20, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f20, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f20, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f20, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xbf800000)
li x5, 0x9702a834 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f8, 0(x2) # load 0x7fbfffff from memory into f8
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f20, 0(x2) # load 0xbf800000 from memory into f20
fdiv.s f5, f8, f20, dyn # perform operation
fdiv.s f5, f8, f20, rdn # perform operation
fdiv.s f5, f8, f20, rmm # perform operation
fdiv.s f5, f8, f20, rne # perform operation
fdiv.s f5, f8, f20, rtz # perform operation
fdiv.s f5, f8, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f8, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f8, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f8, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f8, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f8, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x3fc00000)
li x30, 0x3b4190d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f7, 0(x2) # load 0x7fbfffff from memory into f7
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f11, 0(x2) # load 0x3fc00000 from memory into f11
fdiv.s f30, f7, f11, dyn # perform operation
fdiv.s f30, f7, f11, rdn # perform operation
fdiv.s f30, f7, f11, rmm # perform operation
fdiv.s f30, f7, f11, rne # perform operation
fdiv.s f30, f7, f11, rtz # perform operation
fdiv.s f30, f7, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f7, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f7, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f7, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f7, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f7, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xbfc00000)
li x19, 0xf4e6187c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f25, 0(x2) # load 0x7fbfffff from memory into f25
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f2, 0(x2) # load 0xbfc00000 from memory into f2
fdiv.s f19, f25, f2, dyn # perform operation
fdiv.s f19, f25, f2, rdn # perform operation
fdiv.s f19, f25, f2, rmm # perform operation
fdiv.s f19, f25, f2, rne # perform operation
fdiv.s f19, f25, f2, rtz # perform operation
fdiv.s f19, f25, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f25, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f25, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f25, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f25, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f25, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x40000000)
li x15, 0x4c7c97af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f20, 0(x2) # load 0x7fbfffff from memory into f20
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f17, 0(x2) # load 0x40000000 from memory into f17
fdiv.s f15, f20, f17, dyn # perform operation
fdiv.s f15, f20, f17, rdn # perform operation
fdiv.s f15, f20, f17, rmm # perform operation
fdiv.s f15, f20, f17, rne # perform operation
fdiv.s f15, f20, f17, rtz # perform operation
fdiv.s f15, f20, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f20, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f20, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f20, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f20, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f20, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xc0000000)
li x6, 0x1dbb9db9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f19, 0(x2) # load 0x7fbfffff from memory into f19
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f7, 0(x2) # load 0xc0000000 from memory into f7
fdiv.s f6, f19, f7, dyn # perform operation
fdiv.s f6, f19, f7, rdn # perform operation
fdiv.s f6, f19, f7, rmm # perform operation
fdiv.s f6, f19, f7, rne # perform operation
fdiv.s f6, f19, f7, rtz # perform operation
fdiv.s f6, f19, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f19, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f19, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f19, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f19, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f19, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x800000)
li x23, 0xc3a725ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f6, 0(x2) # load 0x7fbfffff from memory into f6
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f9, 0(x2) # load 0x00800000 from memory into f9
fdiv.s f23, f6, f9, dyn # perform operation
fdiv.s f23, f6, f9, rdn # perform operation
fdiv.s f23, f6, f9, rmm # perform operation
fdiv.s f23, f6, f9, rne # perform operation
fdiv.s f23, f6, f9, rtz # perform operation
fdiv.s f23, f6, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f6, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f6, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f6, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f6, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f6, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80800000)
li x3, 0x7deff5ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f22, 0(x2) # load 0x7fbfffff from memory into f22
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
fdiv.s f3, f22, f28, dyn # perform operation
fdiv.s f3, f22, f28, rdn # perform operation
fdiv.s f3, f22, f28, rmm # perform operation
fdiv.s f3, f22, f28, rne # perform operation
fdiv.s f3, f22, f28, rtz # perform operation
fdiv.s f3, f22, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f22, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f22, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f22, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f22, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f22, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f7fffff)
li x22, 0x97360ba3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f30, 0(x2) # load 0x7fbfffff from memory into f30
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f17, 0(x2) # load 0x7f7fffff from memory into f17
fdiv.s f22, f30, f17, dyn # perform operation
fdiv.s f22, f30, f17, rdn # perform operation
fdiv.s f22, f30, f17, rmm # perform operation
fdiv.s f22, f30, f17, rne # perform operation
fdiv.s f22, f30, f17, rtz # perform operation
fdiv.s f22, f30, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f22, f30, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f22, f30, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f22, f30, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f22, f30, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f22, f30, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xff7fffff)
li x6, 0x6ba17921 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f26, 0(x2) # load 0x7fbfffff from memory into f26
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f18, 0(x2) # load 0xff7fffff from memory into f18
fdiv.s f6, f26, f18, dyn # perform operation
fdiv.s f6, f26, f18, rdn # perform operation
fdiv.s f6, f26, f18, rmm # perform operation
fdiv.s f6, f26, f18, rne # perform operation
fdiv.s f6, f26, f18, rtz # perform operation
fdiv.s f6, f26, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f6, f26, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f6, f26, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f6, f26, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f6, f26, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f6, f26, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fffff)
li x2, 0x75c58e2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f13, 0(x2) # load 0x7fbfffff from memory into f13
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f7, 0(x2) # load 0x007fffff from memory into f7
fdiv.s f2, f13, f7, dyn # perform operation
fdiv.s f2, f13, f7, rdn # perform operation
fdiv.s f2, f13, f7, rmm # perform operation
fdiv.s f2, f13, f7, rne # perform operation
fdiv.s f2, f13, f7, rtz # perform operation
fdiv.s f2, f13, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f13, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f13, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f13, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f13, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f13, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x807fffff)
li x8, 0xf229595f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f30, 0(x2) # load 0x807fffff from memory into f30
fdiv.s f8, f16, f30, dyn # perform operation
fdiv.s f8, f16, f30, rdn # perform operation
fdiv.s f8, f16, f30, rmm # perform operation
fdiv.s f8, f16, f30, rne # perform operation
fdiv.s f8, f16, f30, rtz # perform operation
fdiv.s f8, f16, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f16, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f16, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f16, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f16, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f16, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x400000)
li x17, 0xe11b863e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f20, 0(x2) # load 0x7fbfffff from memory into f20
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f19, 0(x2) # load 0x00400000 from memory into f19
fdiv.s f17, f20, f19, dyn # perform operation
fdiv.s f17, f20, f19, rdn # perform operation
fdiv.s f17, f20, f19, rmm # perform operation
fdiv.s f17, f20, f19, rne # perform operation
fdiv.s f17, f20, f19, rtz # perform operation
fdiv.s f17, f20, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f20, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f20, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f20, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f20, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f20, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80400000)
li x28, 0x241945c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f14, 0(x2) # load 0x7fbfffff from memory into f14
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
fdiv.s f28, f14, f29, dyn # perform operation
fdiv.s f28, f14, f29, rdn # perform operation
fdiv.s f28, f14, f29, rmm # perform operation
fdiv.s f28, f14, f29, rne # perform operation
fdiv.s f28, f14, f29, rtz # perform operation
fdiv.s f28, f14, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f14, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f14, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f14, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f14, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f14, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x1)
li x9, 0x3b21de89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f18, 0(x2) # load 0x7fbfffff from memory into f18
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
fdiv.s f9, f18, f22, dyn # perform operation
fdiv.s f9, f18, f22, rdn # perform operation
fdiv.s f9, f18, f22, rmm # perform operation
fdiv.s f9, f18, f22, rne # perform operation
fdiv.s f9, f18, f22, rtz # perform operation
fdiv.s f9, f18, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f18, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f18, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f18, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f18, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f18, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80000001)
li x1, 0xe0ea17cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f2, 0(x2) # load 0x7fbfffff from memory into f2
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f28, 0(x2) # load 0x80000001 from memory into f28
fdiv.s f1, f2, f28, dyn # perform operation
fdiv.s f1, f2, f28, rdn # perform operation
fdiv.s f1, f2, f28, rmm # perform operation
fdiv.s f1, f2, f28, rne # perform operation
fdiv.s f1, f2, f28, rtz # perform operation
fdiv.s f1, f2, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f2, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f2, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f2, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f2, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f2, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f800000)
li x11, 0x9700c895 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f23, 0(x2) # load 0x7fbfffff from memory into f23
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f26, 0(x2) # load 0x7f800000 from memory into f26
fdiv.s f11, f23, f26, dyn # perform operation
fdiv.s f11, f23, f26, rdn # perform operation
fdiv.s f11, f23, f26, rmm # perform operation
fdiv.s f11, f23, f26, rne # perform operation
fdiv.s f11, f23, f26, rtz # perform operation
fdiv.s f11, f23, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f11, f23, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f11, f23, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f11, f23, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f11, f23, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f11, f23, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xff800000)
li x13, 0x01038b31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f8, 0(x2) # load 0x7fbfffff from memory into f8
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
fdiv.s f13, f8, f1, dyn # perform operation
fdiv.s f13, f8, f1, rdn # perform operation
fdiv.s f13, f8, f1, rmm # perform operation
fdiv.s f13, f8, f1, rne # perform operation
fdiv.s f13, f8, f1, rtz # perform operation
fdiv.s f13, f8, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f8, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f8, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f8, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f8, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f8, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fc00000)
li x15, 0xf0673a09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f26, 0(x2) # load 0x7fbfffff from memory into f26
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f12, 0(x2) # load 0x7fc00000 from memory into f12
fdiv.s f15, f26, f12, dyn # perform operation
fdiv.s f15, f26, f12, rdn # perform operation
fdiv.s f15, f26, f12, rmm # perform operation
fdiv.s f15, f26, f12, rne # perform operation
fdiv.s f15, f26, f12, rtz # perform operation
fdiv.s f15, f26, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f26, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f26, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f26, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f26, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f26, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fffffff)
li x31, 0x7a95f089 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f19, 0(x2) # load 0x7fbfffff from memory into f19
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
fdiv.s f31, f19, f2, dyn # perform operation
fdiv.s f31, f19, f2, rdn # perform operation
fdiv.s f31, f19, f2, rmm # perform operation
fdiv.s f31, f19, f2, rne # perform operation
fdiv.s f31, f19, f2, rtz # perform operation
fdiv.s f31, f19, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f31, f19, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f31, f19, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f31, f19, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f31, f19, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f31, f19, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f800001)
li x10, 0x448fab47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f29, 0(x2) # load 0x7fbfffff from memory into f29
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
fdiv.s f10, f29, f30, dyn # perform operation
fdiv.s f10, f29, f30, rdn # perform operation
fdiv.s f10, f29, f30, rmm # perform operation
fdiv.s f10, f29, f30, rne # perform operation
fdiv.s f10, f29, f30, rtz # perform operation
fdiv.s f10, f29, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f10, f29, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f10, f29, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f10, f29, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f10, f29, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f10, f29, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fbfffff)
li x19, 0x38b46492 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f1, 0(x2) # load 0x7fbfffff from memory into f1
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f21, 0(x2) # load 0x7fbfffff from memory into f21
fdiv.s f19, f1, f21, dyn # perform operation
fdiv.s f19, f1, f21, rdn # perform operation
fdiv.s f19, f1, f21, rmm # perform operation
fdiv.s f19, f1, f21, rne # perform operation
fdiv.s f19, f1, f21, rtz # perform operation
fdiv.s f19, f1, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f1, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f1, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f1, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f1, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f1, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7ef8654f)
li x2, 0xb2ba15a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f9, 0(x2) # load 0x7fbfffff from memory into f9
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f27, 0(x2) # load 0x7ef8654f from memory into f27
fdiv.s f2, f9, f27, dyn # perform operation
fdiv.s f2, f9, f27, rdn # perform operation
fdiv.s f2, f9, f27, rmm # perform operation
fdiv.s f2, f9, f27, rne # perform operation
fdiv.s f2, f9, f27, rtz # perform operation
fdiv.s f2, f9, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f9, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f9, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f9, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f9, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f9, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x813d9ab0)
li x19, 0xfe8c1c0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f25, 0(x2) # load 0x7fbfffff from memory into f25
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f5, 0(x2) # load 0x813d9ab0 from memory into f5
fdiv.s f19, f25, f5, dyn # perform operation
fdiv.s f19, f25, f5, rdn # perform operation
fdiv.s f19, f25, f5, rmm # perform operation
fdiv.s f19, f25, f5, rne # perform operation
fdiv.s f19, f25, f5, rtz # perform operation
fdiv.s f19, f25, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f25, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f25, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f25, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f25, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f25, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x0)
li x27, 0xf961665f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f18, 0(x2) # load 0x7ef8654f from memory into f18
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f14, 0(x2) # load 0x00000000 from memory into f14
fdiv.s f27, f18, f14, dyn # perform operation
fdiv.s f27, f18, f14, rdn # perform operation
fdiv.s f27, f18, f14, rmm # perform operation
fdiv.s f27, f18, f14, rne # perform operation
fdiv.s f27, f18, f14, rtz # perform operation
fdiv.s f27, f18, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f18, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f18, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f18, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f18, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f18, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80000000)
li x3, 0xadb0a134 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f12, 0(x2) # load 0x7ef8654f from memory into f12
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f8, 0(x2) # load 0x80000000 from memory into f8
fdiv.s f3, f12, f8, dyn # perform operation
fdiv.s f3, f12, f8, rdn # perform operation
fdiv.s f3, f12, f8, rmm # perform operation
fdiv.s f3, f12, f8, rne # perform operation
fdiv.s f3, f12, f8, rtz # perform operation
fdiv.s f3, f12, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f12, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f12, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f12, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f12, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f12, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x3f800000)
li x13, 0x4969604a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f25, 0(x2) # load 0x7ef8654f from memory into f25
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f26, 0(x2) # load 0x3f800000 from memory into f26
fdiv.s f13, f25, f26, dyn # perform operation
fdiv.s f13, f25, f26, rdn # perform operation
fdiv.s f13, f25, f26, rmm # perform operation
fdiv.s f13, f25, f26, rne # perform operation
fdiv.s f13, f25, f26, rtz # perform operation
fdiv.s f13, f25, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f25, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f25, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f25, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f25, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f25, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xbf800000)
li x23, 0xd29181d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f27, 0(x2) # load 0x7ef8654f from memory into f27
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f6, 0(x2) # load 0xbf800000 from memory into f6
fdiv.s f23, f27, f6, dyn # perform operation
fdiv.s f23, f27, f6, rdn # perform operation
fdiv.s f23, f27, f6, rmm # perform operation
fdiv.s f23, f27, f6, rne # perform operation
fdiv.s f23, f27, f6, rtz # perform operation
fdiv.s f23, f27, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f27, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f27, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f27, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f27, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f27, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x3fc00000)
li x29, 0xb3ed43c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f1, 0(x2) # load 0x7ef8654f from memory into f1
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f14, 0(x2) # load 0x3fc00000 from memory into f14
fdiv.s f29, f1, f14, dyn # perform operation
fdiv.s f29, f1, f14, rdn # perform operation
fdiv.s f29, f1, f14, rmm # perform operation
fdiv.s f29, f1, f14, rne # perform operation
fdiv.s f29, f1, f14, rtz # perform operation
fdiv.s f29, f1, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f1, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f1, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f1, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f1, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f1, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xbfc00000)
li x26, 0x4f40ef8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f14, 0(x2) # load 0x7ef8654f from memory into f14
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f22, 0(x2) # load 0xbfc00000 from memory into f22
fdiv.s f26, f14, f22, dyn # perform operation
fdiv.s f26, f14, f22, rdn # perform operation
fdiv.s f26, f14, f22, rmm # perform operation
fdiv.s f26, f14, f22, rne # perform operation
fdiv.s f26, f14, f22, rtz # perform operation
fdiv.s f26, f14, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f14, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f14, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f14, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f14, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f14, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x40000000)
li x13, 0x4020236c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f12, 0(x2) # load 0x7ef8654f from memory into f12
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f18, 0(x2) # load 0x40000000 from memory into f18
fdiv.s f13, f12, f18, dyn # perform operation
fdiv.s f13, f12, f18, rdn # perform operation
fdiv.s f13, f12, f18, rmm # perform operation
fdiv.s f13, f12, f18, rne # perform operation
fdiv.s f13, f12, f18, rtz # perform operation
fdiv.s f13, f12, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f13, f12, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f13, f12, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f13, f12, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f13, f12, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f13, f12, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xc0000000)
li x15, 0x3bddd3e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f12, 0(x2) # load 0x7ef8654f from memory into f12
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f13, 0(x2) # load 0xc0000000 from memory into f13
fdiv.s f15, f12, f13, dyn # perform operation
fdiv.s f15, f12, f13, rdn # perform operation
fdiv.s f15, f12, f13, rmm # perform operation
fdiv.s f15, f12, f13, rne # perform operation
fdiv.s f15, f12, f13, rtz # perform operation
fdiv.s f15, f12, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f12, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f12, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f12, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f12, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f12, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x800000)
li x27, 0xb9fa728a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f7, 0(x2) # load 0x7ef8654f from memory into f7
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f15, 0(x2) # load 0x00800000 from memory into f15
fdiv.s f27, f7, f15, dyn # perform operation
fdiv.s f27, f7, f15, rdn # perform operation
fdiv.s f27, f7, f15, rmm # perform operation
fdiv.s f27, f7, f15, rne # perform operation
fdiv.s f27, f7, f15, rtz # perform operation
fdiv.s f27, f7, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f7, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f7, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f7, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f7, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f7, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80800000)
li x25, 0x22cfbe0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f11, 0(x2) # load 0x7ef8654f from memory into f11
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
fdiv.s f25, f11, f18, dyn # perform operation
fdiv.s f25, f11, f18, rdn # perform operation
fdiv.s f25, f11, f18, rmm # perform operation
fdiv.s f25, f11, f18, rne # perform operation
fdiv.s f25, f11, f18, rtz # perform operation
fdiv.s f25, f11, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f11, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f11, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f11, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f11, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f11, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f7fffff)
li x3, 0x4d02ec3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f29, 0(x2) # load 0x7ef8654f from memory into f29
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f22, 0(x2) # load 0x7f7fffff from memory into f22
fdiv.s f3, f29, f22, dyn # perform operation
fdiv.s f3, f29, f22, rdn # perform operation
fdiv.s f3, f29, f22, rmm # perform operation
fdiv.s f3, f29, f22, rne # perform operation
fdiv.s f3, f29, f22, rtz # perform operation
fdiv.s f3, f29, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f3, f29, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f3, f29, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f3, f29, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f3, f29, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f3, f29, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xff7fffff)
li x26, 0xbc62c7df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f12, 0(x2) # load 0x7ef8654f from memory into f12
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f3, 0(x2) # load 0xff7fffff from memory into f3
fdiv.s f26, f12, f3, dyn # perform operation
fdiv.s f26, f12, f3, rdn # perform operation
fdiv.s f26, f12, f3, rmm # perform operation
fdiv.s f26, f12, f3, rne # perform operation
fdiv.s f26, f12, f3, rtz # perform operation
fdiv.s f26, f12, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f12, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f12, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f12, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f12, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f12, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fffff)
li x9, 0x255b4cb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f17, 0(x2) # load 0x7ef8654f from memory into f17
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f11, 0(x2) # load 0x007fffff from memory into f11
fdiv.s f9, f17, f11, dyn # perform operation
fdiv.s f9, f17, f11, rdn # perform operation
fdiv.s f9, f17, f11, rmm # perform operation
fdiv.s f9, f17, f11, rne # perform operation
fdiv.s f9, f17, f11, rtz # perform operation
fdiv.s f9, f17, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f9, f17, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f9, f17, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f9, f17, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f9, f17, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f9, f17, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x807fffff)
li x5, 0xc73e3075 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f11, 0(x2) # load 0x807fffff from memory into f11
fdiv.s f5, f21, f11, dyn # perform operation
fdiv.s f5, f21, f11, rdn # perform operation
fdiv.s f5, f21, f11, rmm # perform operation
fdiv.s f5, f21, f11, rne # perform operation
fdiv.s f5, f21, f11, rtz # perform operation
fdiv.s f5, f21, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f21, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f21, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f21, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f21, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f21, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x400000)
li x30, 0x7135b681 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f4, 0(x2) # load 0x7ef8654f from memory into f4
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
fdiv.s f30, f4, f26, dyn # perform operation
fdiv.s f30, f4, f26, rdn # perform operation
fdiv.s f30, f4, f26, rmm # perform operation
fdiv.s f30, f4, f26, rne # perform operation
fdiv.s f30, f4, f26, rtz # perform operation
fdiv.s f30, f4, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f4, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f4, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f4, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f4, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f4, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80400000)
li x1, 0x0eedc563 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f30, 0(x2) # load 0x7ef8654f from memory into f30
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f3, 0(x2) # load 0x80400000 from memory into f3
fdiv.s f1, f30, f3, dyn # perform operation
fdiv.s f1, f30, f3, rdn # perform operation
fdiv.s f1, f30, f3, rmm # perform operation
fdiv.s f1, f30, f3, rne # perform operation
fdiv.s f1, f30, f3, rtz # perform operation
fdiv.s f1, f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f30, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x1)
li x1, 0x13910ceb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f19, 0(x2) # load 0x7ef8654f from memory into f19
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f15, 0(x2) # load 0x00000001 from memory into f15
fdiv.s f1, f19, f15, dyn # perform operation
fdiv.s f1, f19, f15, rdn # perform operation
fdiv.s f1, f19, f15, rmm # perform operation
fdiv.s f1, f19, f15, rne # perform operation
fdiv.s f1, f19, f15, rtz # perform operation
fdiv.s f1, f19, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f19, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f19, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f19, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f19, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f19, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80000001)
li x1, 0x022e45e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f22, 0(x2) # load 0x7ef8654f from memory into f22
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f30, 0(x2) # load 0x80000001 from memory into f30
fdiv.s f1, f22, f30, dyn # perform operation
fdiv.s f1, f22, f30, rdn # perform operation
fdiv.s f1, f22, f30, rmm # perform operation
fdiv.s f1, f22, f30, rne # perform operation
fdiv.s f1, f22, f30, rtz # perform operation
fdiv.s f1, f22, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f22, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f22, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f22, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f22, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f22, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f800000)
li x19, 0x746b5a4c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f10, 0(x2) # load 0x7ef8654f from memory into f10
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
fdiv.s f19, f10, f11, dyn # perform operation
fdiv.s f19, f10, f11, rdn # perform operation
fdiv.s f19, f10, f11, rmm # perform operation
fdiv.s f19, f10, f11, rne # perform operation
fdiv.s f19, f10, f11, rtz # perform operation
fdiv.s f19, f10, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f19, f10, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f19, f10, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f19, f10, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f19, f10, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f19, f10, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xff800000)
li x20, 0xb7afff06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f28, 0(x2) # load 0x7ef8654f from memory into f28
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f11, 0(x2) # load 0xff800000 from memory into f11
fdiv.s f20, f28, f11, dyn # perform operation
fdiv.s f20, f28, f11, rdn # perform operation
fdiv.s f20, f28, f11, rmm # perform operation
fdiv.s f20, f28, f11, rne # perform operation
fdiv.s f20, f28, f11, rtz # perform operation
fdiv.s f20, f28, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f20, f28, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f20, f28, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f20, f28, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f20, f28, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f20, f28, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fc00000)
li x29, 0x25279f40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f8, 0(x2) # load 0x7ef8654f from memory into f8
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f9, 0(x2) # load 0x7fc00000 from memory into f9
fdiv.s f29, f8, f9, dyn # perform operation
fdiv.s f29, f8, f9, rdn # perform operation
fdiv.s f29, f8, f9, rmm # perform operation
fdiv.s f29, f8, f9, rne # perform operation
fdiv.s f29, f8, f9, rtz # perform operation
fdiv.s f29, f8, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f8, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f8, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f8, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f8, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f8, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fffffff)
li x15, 0x0ddcf729 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f2, 0(x2) # load 0x7ef8654f from memory into f2
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f3, 0(x2) # load 0x7fffffff from memory into f3
fdiv.s f15, f2, f3, dyn # perform operation
fdiv.s f15, f2, f3, rdn # perform operation
fdiv.s f15, f2, f3, rmm # perform operation
fdiv.s f15, f2, f3, rne # perform operation
fdiv.s f15, f2, f3, rtz # perform operation
fdiv.s f15, f2, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f2, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f2, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f2, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f2, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f2, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f800001)
li x25, 0xee92050f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f28, 0(x2) # load 0x7ef8654f from memory into f28
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f9, 0(x2) # load 0x7f800001 from memory into f9
fdiv.s f25, f28, f9, dyn # perform operation
fdiv.s f25, f28, f9, rdn # perform operation
fdiv.s f25, f28, f9, rmm # perform operation
fdiv.s f25, f28, f9, rne # perform operation
fdiv.s f25, f28, f9, rtz # perform operation
fdiv.s f25, f28, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f25, f28, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f25, f28, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f25, f28, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f25, f28, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f25, f28, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fbfffff)
li x16, 0x70979de1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f1, 0(x2) # load 0x7ef8654f from memory into f1
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f24, 0(x2) # load 0x7fbfffff from memory into f24
fdiv.s f16, f1, f24, dyn # perform operation
fdiv.s f16, f1, f24, rdn # perform operation
fdiv.s f16, f1, f24, rmm # perform operation
fdiv.s f16, f1, f24, rne # perform operation
fdiv.s f16, f1, f24, rtz # perform operation
fdiv.s f16, f1, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f1, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f1, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f1, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f1, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f1, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7ef8654f)
li x15, 0xebfc05c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f19, 0(x2) # load 0x7ef8654f from memory into f19
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f30, 0(x2) # load 0x7ef8654f from memory into f30
fdiv.s f15, f19, f30, dyn # perform operation
fdiv.s f15, f19, f30, rdn # perform operation
fdiv.s f15, f19, f30, rmm # perform operation
fdiv.s f15, f19, f30, rne # perform operation
fdiv.s f15, f19, f30, rtz # perform operation
fdiv.s f15, f19, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f19, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f19, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f19, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f19, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f19, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x813d9ab0)
li x17, 0x3f029088 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f26, 0(x2) # load 0x7ef8654f from memory into f26
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f11, 0(x2) # load 0x813d9ab0 from memory into f11
fdiv.s f17, f26, f11, dyn # perform operation
fdiv.s f17, f26, f11, rdn # perform operation
fdiv.s f17, f26, f11, rmm # perform operation
fdiv.s f17, f26, f11, rne # perform operation
fdiv.s f17, f26, f11, rtz # perform operation
fdiv.s f17, f26, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f17, f26, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f17, f26, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f17, f26, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f17, f26, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f17, f26, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x0)
li x12, 0x8084123d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f26, 0(x2) # load 0x813d9ab0 from memory into f26
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f8, 0(x2) # load 0x00000000 from memory into f8
fdiv.s f12, f26, f8, dyn # perform operation
fdiv.s f12, f26, f8, rdn # perform operation
fdiv.s f12, f26, f8, rmm # perform operation
fdiv.s f12, f26, f8, rne # perform operation
fdiv.s f12, f26, f8, rtz # perform operation
fdiv.s f12, f26, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f12, f26, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f12, f26, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f12, f26, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f12, f26, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f12, f26, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80000000)
li x28, 0xacfc28b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f12, 0(x2) # load 0x80000000 from memory into f12
fdiv.s f28, f22, f12, dyn # perform operation
fdiv.s f28, f22, f12, rdn # perform operation
fdiv.s f28, f22, f12, rmm # perform operation
fdiv.s f28, f22, f12, rne # perform operation
fdiv.s f28, f22, f12, rtz # perform operation
fdiv.s f28, f22, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f28, f22, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f28, f22, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f28, f22, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f28, f22, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f28, f22, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x3f800000)
li x29, 0x06d1571b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f14, 0(x2) # load 0x813d9ab0 from memory into f14
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
fdiv.s f29, f14, f24, dyn # perform operation
fdiv.s f29, f14, f24, rdn # perform operation
fdiv.s f29, f14, f24, rmm # perform operation
fdiv.s f29, f14, f24, rne # perform operation
fdiv.s f29, f14, f24, rtz # perform operation
fdiv.s f29, f14, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f14, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f14, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f14, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f14, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f14, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xbf800000)
li x27, 0x1f4d865b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f31, 0(x2) # load 0xbf800000 from memory into f31
fdiv.s f27, f17, f31, dyn # perform operation
fdiv.s f27, f17, f31, rdn # perform operation
fdiv.s f27, f17, f31, rmm # perform operation
fdiv.s f27, f17, f31, rne # perform operation
fdiv.s f27, f17, f31, rtz # perform operation
fdiv.s f27, f17, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f27, f17, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f27, f17, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f27, f17, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f27, f17, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f27, f17, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x3fc00000)
li x15, 0xac984dbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f6, 0(x2) # load 0x813d9ab0 from memory into f6
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f24, 0(x2) # load 0x3fc00000 from memory into f24
fdiv.s f15, f6, f24, dyn # perform operation
fdiv.s f15, f6, f24, rdn # perform operation
fdiv.s f15, f6, f24, rmm # perform operation
fdiv.s f15, f6, f24, rne # perform operation
fdiv.s f15, f6, f24, rtz # perform operation
fdiv.s f15, f6, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f15, f6, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f15, f6, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f15, f6, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f15, f6, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f15, f6, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xbfc00000)
li x5, 0xdc535db1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f3, 0(x2) # load 0x813d9ab0 from memory into f3
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f1, 0(x2) # load 0xbfc00000 from memory into f1
fdiv.s f5, f3, f1, dyn # perform operation
fdiv.s f5, f3, f1, rdn # perform operation
fdiv.s f5, f3, f1, rmm # perform operation
fdiv.s f5, f3, f1, rne # perform operation
fdiv.s f5, f3, f1, rtz # perform operation
fdiv.s f5, f3, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f3, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f3, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f3, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f3, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f3, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x40000000)
li x14, 0x528be1f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f12, 0(x2) # load 0x813d9ab0 from memory into f12
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
fdiv.s f14, f12, f16, dyn # perform operation
fdiv.s f14, f12, f16, rdn # perform operation
fdiv.s f14, f12, f16, rmm # perform operation
fdiv.s f14, f12, f16, rne # perform operation
fdiv.s f14, f12, f16, rtz # perform operation
fdiv.s f14, f12, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f12, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f12, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f12, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f12, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f12, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xc0000000)
li x24, 0xe9c9bbad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f29, 0(x2) # load 0x813d9ab0 from memory into f29
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f13, 0(x2) # load 0xc0000000 from memory into f13
fdiv.s f24, f29, f13, dyn # perform operation
fdiv.s f24, f29, f13, rdn # perform operation
fdiv.s f24, f29, f13, rmm # perform operation
fdiv.s f24, f29, f13, rne # perform operation
fdiv.s f24, f29, f13, rtz # perform operation
fdiv.s f24, f29, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f24, f29, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f24, f29, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f24, f29, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f24, f29, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f24, f29, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x800000)
li x2, 0x21965e66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f1, 0(x2) # load 0x813d9ab0 from memory into f1
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f25, 0(x2) # load 0x00800000 from memory into f25
fdiv.s f2, f1, f25, dyn # perform operation
fdiv.s f2, f1, f25, rdn # perform operation
fdiv.s f2, f1, f25, rmm # perform operation
fdiv.s f2, f1, f25, rne # perform operation
fdiv.s f2, f1, f25, rtz # perform operation
fdiv.s f2, f1, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f2, f1, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f2, f1, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f2, f1, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f2, f1, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f2, f1, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80800000)
li x29, 0xf5449c5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f5, 0(x2) # load 0x813d9ab0 from memory into f5
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f12, 0(x2) # load 0x80800000 from memory into f12
fdiv.s f29, f5, f12, dyn # perform operation
fdiv.s f29, f5, f12, rdn # perform operation
fdiv.s f29, f5, f12, rmm # perform operation
fdiv.s f29, f5, f12, rne # perform operation
fdiv.s f29, f5, f12, rtz # perform operation
fdiv.s f29, f5, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f5, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f5, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f5, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f5, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f5, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f7fffff)
li x26, 0x6b4b3d00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f8, 0(x2) # load 0x813d9ab0 from memory into f8
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f12, 0(x2) # load 0x7f7fffff from memory into f12
fdiv.s f26, f8, f12, dyn # perform operation
fdiv.s f26, f8, f12, rdn # perform operation
fdiv.s f26, f8, f12, rmm # perform operation
fdiv.s f26, f8, f12, rne # perform operation
fdiv.s f26, f8, f12, rtz # perform operation
fdiv.s f26, f8, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f26, f8, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f26, f8, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f26, f8, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f26, f8, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f26, f8, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xff7fffff)
li x1, 0xc33e6d7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f12, 0(x2) # load 0x813d9ab0 from memory into f12
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f26, 0(x2) # load 0xff7fffff from memory into f26
fdiv.s f1, f12, f26, dyn # perform operation
fdiv.s f1, f12, f26, rdn # perform operation
fdiv.s f1, f12, f26, rmm # perform operation
fdiv.s f1, f12, f26, rne # perform operation
fdiv.s f1, f12, f26, rtz # perform operation
fdiv.s f1, f12, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f1, f12, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f1, f12, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f1, f12, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f1, f12, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f1, f12, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fffff)
li x16, 0x45f7d324 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f27, 0(x2) # load 0x813d9ab0 from memory into f27
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f29, 0(x2) # load 0x007fffff from memory into f29
fdiv.s f16, f27, f29, dyn # perform operation
fdiv.s f16, f27, f29, rdn # perform operation
fdiv.s f16, f27, f29, rmm # perform operation
fdiv.s f16, f27, f29, rne # perform operation
fdiv.s f16, f27, f29, rtz # perform operation
fdiv.s f16, f27, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f27, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f27, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f27, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f27, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f27, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x807fffff)
li x18, 0x0e78c6fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f23, 0(x2) # load 0x813d9ab0 from memory into f23
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f11, 0(x2) # load 0x807fffff from memory into f11
fdiv.s f18, f23, f11, dyn # perform operation
fdiv.s f18, f23, f11, rdn # perform operation
fdiv.s f18, f23, f11, rmm # perform operation
fdiv.s f18, f23, f11, rne # perform operation
fdiv.s f18, f23, f11, rtz # perform operation
fdiv.s f18, f23, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f23, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f23, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f23, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f23, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f23, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x400000)
li x21, 0xb4e28e18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f4, 0(x2) # load 0x813d9ab0 from memory into f4
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f28, 0(x2) # load 0x00400000 from memory into f28
fdiv.s f21, f4, f28, dyn # perform operation
fdiv.s f21, f4, f28, rdn # perform operation
fdiv.s f21, f4, f28, rmm # perform operation
fdiv.s f21, f4, f28, rne # perform operation
fdiv.s f21, f4, f28, rtz # perform operation
fdiv.s f21, f4, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f21, f4, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f21, f4, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f21, f4, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f21, f4, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f21, f4, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80400000)
li x16, 0xd9981cac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f6, 0(x2) # load 0x813d9ab0 from memory into f6
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f11, 0(x2) # load 0x80400000 from memory into f11
fdiv.s f16, f6, f11, dyn # perform operation
fdiv.s f16, f6, f11, rdn # perform operation
fdiv.s f16, f6, f11, rmm # perform operation
fdiv.s f16, f6, f11, rne # perform operation
fdiv.s f16, f6, f11, rtz # perform operation
fdiv.s f16, f6, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f16, f6, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f16, f6, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f16, f6, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f16, f6, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f16, f6, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x1)
li x5, 0xf7f7833d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f1, 0(x2) # load 0x813d9ab0 from memory into f1
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
fdiv.s f5, f1, f22, dyn # perform operation
fdiv.s f5, f1, f22, rdn # perform operation
fdiv.s f5, f1, f22, rmm # perform operation
fdiv.s f5, f1, f22, rne # perform operation
fdiv.s f5, f1, f22, rtz # perform operation
fdiv.s f5, f1, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f1, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f1, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f1, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f1, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f1, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80000001)
li x14, 0xf334387f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
fdiv.s f14, f13, f31, dyn # perform operation
fdiv.s f14, f13, f31, rdn # perform operation
fdiv.s f14, f13, f31, rmm # perform operation
fdiv.s f14, f13, f31, rne # perform operation
fdiv.s f14, f13, f31, rtz # perform operation
fdiv.s f14, f13, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f14, f13, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f14, f13, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f14, f13, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f14, f13, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f14, f13, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f800000)
li x23, 0x3addf3a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f25, 0(x2) # load 0x813d9ab0 from memory into f25
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f3, 0(x2) # load 0x7f800000 from memory into f3
fdiv.s f23, f25, f3, dyn # perform operation
fdiv.s f23, f25, f3, rdn # perform operation
fdiv.s f23, f25, f3, rmm # perform operation
fdiv.s f23, f25, f3, rne # perform operation
fdiv.s f23, f25, f3, rtz # perform operation
fdiv.s f23, f25, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f23, f25, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f23, f25, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f23, f25, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f23, f25, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f23, f25, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xff800000)
li x5, 0xfaa62414 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f15, 0(x2) # load 0x813d9ab0 from memory into f15
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f31, 0(x2) # load 0xff800000 from memory into f31
fdiv.s f5, f15, f31, dyn # perform operation
fdiv.s f5, f15, f31, rdn # perform operation
fdiv.s f5, f15, f31, rmm # perform operation
fdiv.s f5, f15, f31, rne # perform operation
fdiv.s f5, f15, f31, rtz # perform operation
fdiv.s f5, f15, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f5, f15, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f5, f15, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f5, f15, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f5, f15, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f5, f15, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fc00000)
li x4, 0x07cb531c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f5, 0(x2) # load 0x813d9ab0 from memory into f5
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f30, 0(x2) # load 0x7fc00000 from memory into f30
fdiv.s f4, f5, f30, dyn # perform operation
fdiv.s f4, f5, f30, rdn # perform operation
fdiv.s f4, f5, f30, rmm # perform operation
fdiv.s f4, f5, f30, rne # perform operation
fdiv.s f4, f5, f30, rtz # perform operation
fdiv.s f4, f5, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f4, f5, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f4, f5, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f4, f5, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f4, f5, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f4, f5, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fffffff)
li x29, 0x257b4a16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f4, 0(x2) # load 0x813d9ab0 from memory into f4
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f22, 0(x2) # load 0x7fffffff from memory into f22
fdiv.s f29, f4, f22, dyn # perform operation
fdiv.s f29, f4, f22, rdn # perform operation
fdiv.s f29, f4, f22, rmm # perform operation
fdiv.s f29, f4, f22, rne # perform operation
fdiv.s f29, f4, f22, rtz # perform operation
fdiv.s f29, f4, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f29, f4, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f29, f4, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f29, f4, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f29, f4, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f29, f4, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f800001)
li x18, 0x085fb871 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f4, 0(x2) # load 0x813d9ab0 from memory into f4
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f14, 0(x2) # load 0x7f800001 from memory into f14
fdiv.s f18, f4, f14, dyn # perform operation
fdiv.s f18, f4, f14, rdn # perform operation
fdiv.s f18, f4, f14, rmm # perform operation
fdiv.s f18, f4, f14, rne # perform operation
fdiv.s f18, f4, f14, rtz # perform operation
fdiv.s f18, f4, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f4, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f4, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f4, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f4, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f4, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fbfffff)
li x18, 0x8fde4bc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
fdiv.s f18, f22, f16, dyn # perform operation
fdiv.s f18, f22, f16, rdn # perform operation
fdiv.s f18, f22, f16, rmm # perform operation
fdiv.s f18, f22, f16, rne # perform operation
fdiv.s f18, f22, f16, rtz # perform operation
fdiv.s f18, f22, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f18, f22, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f18, f22, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f18, f22, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f18, f22, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f18, f22, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7ef8654f)
li x30, 0xe0eb632f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f3, 0(x2) # load 0x7ef8654f from memory into f3
fdiv.s f30, f21, f3, dyn # perform operation
fdiv.s f30, f21, f3, rdn # perform operation
fdiv.s f30, f21, f3, rmm # perform operation
fdiv.s f30, f21, f3, rne # perform operation
fdiv.s f30, f21, f3, rtz # perform operation
fdiv.s f30, f21, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f30, f21, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f30, f21, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f30, f21, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f30, f21, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f30, f21, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x813d9ab0)
li x8, 0xca22d70f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f23, 0(x2) # load 0x813d9ab0 from memory into f23
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f31, 0(x2) # load 0x813d9ab0 from memory into f31
fdiv.s f8, f23, f31, dyn # perform operation
fdiv.s f8, f23, f31, rdn # perform operation
fdiv.s f8, f23, f31, rmm # perform operation
fdiv.s f8, f23, f31, rne # perform operation
fdiv.s f8, f23, f31, rtz # perform operation
fdiv.s f8, f23, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.s f8, f23, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.s f8, f23, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.s f8, f23, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.s f8, f23, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.s f8, f23, f31 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0xef34c795 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf5408756 # load x3 with value 0xf5408756
sw x3, 0(x2) # store 0xf5408756 in memory
flw f12, 0(x2) # load 0xf5408756 from memory into f12
li x3, 0x55888f4d # load x3 with value 0x55888f4d
sw x3, 0(x2) # store 0x55888f4d in memory
flw f13, 0(x2) # load 0x55888f4d from memory into f13
fdiv.s f0, f12, f13 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x8693ab4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xda10c9ab # load x3 with value 0xda10c9ab
sw x3, 0(x2) # store 0xda10c9ab in memory
flw f10, 0(x2) # load 0xda10c9ab from memory into f10
li x3, 0x89082a61 # load x3 with value 0x89082a61
sw x3, 0(x2) # store 0x89082a61 in memory
flw f18, 0(x2) # load 0x89082a61 from memory into f18
fdiv.s f1, f10, f18 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x0090194c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5e7fb798 # load x3 with value 0x5e7fb798
sw x3, 0(x2) # store 0x5e7fb798 in memory
flw f18, 0(x2) # load 0x5e7fb798 from memory into f18
li x3, 0xaaed2f48 # load x3 with value 0xaaed2f48
sw x3, 0(x2) # store 0xaaed2f48 in memory
flw f12, 0(x2) # load 0xaaed2f48 from memory into f12
fdiv.s f2, f18, f12 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0xab1fcb00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6e4a27e8 # load x3 with value 0x6e4a27e8
sw x3, 0(x2) # store 0x6e4a27e8 in memory
flw f5, 0(x2) # load 0x6e4a27e8 from memory into f5
li x3, 0x62ee63f4 # load x3 with value 0x62ee63f4
sw x3, 0(x2) # store 0x62ee63f4 in memory
flw f18, 0(x2) # load 0x62ee63f4 from memory into f18
fdiv.s f3, f5, f18 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0xee62e8d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8259cf85 # load x3 with value 0x8259cf85
sw x3, 0(x2) # store 0x8259cf85 in memory
flw f12, 0(x2) # load 0x8259cf85 from memory into f12
li x3, 0x6215ff00 # load x3 with value 0x6215ff00
sw x3, 0(x2) # store 0x6215ff00 in memory
flw f25, 0(x2) # load 0x6215ff00 from memory into f25
fdiv.s f4, f12, f25 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0xe053c364 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc5bd815e # load x3 with value 0xc5bd815e
sw x3, 0(x2) # store 0xc5bd815e in memory
flw f14, 0(x2) # load 0xc5bd815e from memory into f14
li x3, 0xd1d125ff # load x3 with value 0xd1d125ff
sw x3, 0(x2) # store 0xd1d125ff in memory
flw f4, 0(x2) # load 0xd1d125ff from memory into f4
fdiv.s f5, f14, f4 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x346b5313 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x805596d9 # load x3 with value 0x805596d9
sw x3, 0(x2) # store 0x805596d9 in memory
flw f15, 0(x2) # load 0x805596d9 from memory into f15
li x3, 0x435fa614 # load x3 with value 0x435fa614
sw x3, 0(x2) # store 0x435fa614 in memory
flw f28, 0(x2) # load 0x435fa614 from memory into f28
fdiv.s f6, f15, f28 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x1ed8c251 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x207a0e2e # load x3 with value 0x207a0e2e
sw x3, 0(x2) # store 0x207a0e2e in memory
flw f17, 0(x2) # load 0x207a0e2e from memory into f17
li x3, 0x82fe245f # load x3 with value 0x82fe245f
sw x3, 0(x2) # store 0x82fe245f in memory
flw f2, 0(x2) # load 0x82fe245f from memory into f2
fdiv.s f7, f17, f2 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x90bfe339 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6b26b1a0 # load x3 with value 0x6b26b1a0
sw x3, 0(x2) # store 0x6b26b1a0 in memory
flw f23, 0(x2) # load 0x6b26b1a0 from memory into f23
li x3, 0x24dc8c6b # load x3 with value 0x24dc8c6b
sw x3, 0(x2) # store 0x24dc8c6b in memory
flw f8, 0(x2) # load 0x24dc8c6b from memory into f8
fdiv.s f8, f23, f8 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0xff7f8963 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5434fbfe # load x3 with value 0x5434fbfe
sw x3, 0(x2) # store 0x5434fbfe in memory
flw f3, 0(x2) # load 0x5434fbfe from memory into f3
li x3, 0x4841ce48 # load x3 with value 0x4841ce48
sw x3, 0(x2) # store 0x4841ce48 in memory
flw f29, 0(x2) # load 0x4841ce48 from memory into f29
fdiv.s f9, f3, f29 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0xfae3a985 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9e35efdc # load x3 with value 0x9e35efdc
sw x3, 0(x2) # store 0x9e35efdc in memory
flw f11, 0(x2) # load 0x9e35efdc from memory into f11
li x3, 0xa9185298 # load x3 with value 0xa9185298
sw x3, 0(x2) # store 0xa9185298 in memory
flw f27, 0(x2) # load 0xa9185298 from memory into f27
fdiv.s f10, f11, f27 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0xbae36666 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb6439b0b # load x3 with value 0xb6439b0b
sw x3, 0(x2) # store 0xb6439b0b in memory
flw f24, 0(x2) # load 0xb6439b0b from memory into f24
li x3, 0x19676b47 # load x3 with value 0x19676b47
sw x3, 0(x2) # store 0x19676b47 in memory
flw f11, 0(x2) # load 0x19676b47 from memory into f11
fdiv.s f11, f24, f11 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x6b3bc965 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0eb7139 # load x3 with value 0xc0eb7139
sw x3, 0(x2) # store 0xc0eb7139 in memory
flw f28, 0(x2) # load 0xc0eb7139 from memory into f28
li x3, 0x54c29074 # load x3 with value 0x54c29074
sw x3, 0(x2) # store 0x54c29074 in memory
flw f30, 0(x2) # load 0x54c29074 from memory into f30
fdiv.s f12, f28, f30 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0xae6b2b95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0bf0a785 # load x3 with value 0x0bf0a785
sw x3, 0(x2) # store 0x0bf0a785 in memory
flw f18, 0(x2) # load 0x0bf0a785 from memory into f18
li x3, 0xf951ec25 # load x3 with value 0xf951ec25
sw x3, 0(x2) # store 0xf951ec25 in memory
flw f30, 0(x2) # load 0xf951ec25 from memory into f30
fdiv.s f13, f18, f30 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x46289b7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1c46cd67 # load x3 with value 0x1c46cd67
sw x3, 0(x2) # store 0x1c46cd67 in memory
flw f7, 0(x2) # load 0x1c46cd67 from memory into f7
li x3, 0x4153eb90 # load x3 with value 0x4153eb90
sw x3, 0(x2) # store 0x4153eb90 in memory
flw f10, 0(x2) # load 0x4153eb90 from memory into f10
fdiv.s f14, f7, f10 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x2067c54e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2ee48ea0 # load x3 with value 0x2ee48ea0
sw x3, 0(x2) # store 0x2ee48ea0 in memory
flw f27, 0(x2) # load 0x2ee48ea0 from memory into f27
li x3, 0x6dc284a9 # load x3 with value 0x6dc284a9
sw x3, 0(x2) # store 0x6dc284a9 in memory
flw f23, 0(x2) # load 0x6dc284a9 from memory into f23
fdiv.s f15, f27, f23 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x2245ed5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00cbb463 # load x3 with value 0x00cbb463
sw x3, 0(x2) # store 0x00cbb463 in memory
flw f18, 0(x2) # load 0x00cbb463 from memory into f18
li x3, 0xa9d96c24 # load x3 with value 0xa9d96c24
sw x3, 0(x2) # store 0xa9d96c24 in memory
flw f24, 0(x2) # load 0xa9d96c24 from memory into f24
fdiv.s f16, f18, f24 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0xdd1be849 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7b5d7194 # load x3 with value 0x7b5d7194
sw x3, 0(x2) # store 0x7b5d7194 in memory
flw f21, 0(x2) # load 0x7b5d7194 from memory into f21
li x3, 0x0813c920 # load x3 with value 0x0813c920
sw x3, 0(x2) # store 0x0813c920 in memory
flw f5, 0(x2) # load 0x0813c920 from memory into f5
fdiv.s f17, f21, f5 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0xc35978f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x32df8885 # load x3 with value 0x32df8885
sw x3, 0(x2) # store 0x32df8885 in memory
flw f28, 0(x2) # load 0x32df8885 from memory into f28
li x3, 0x3e5e6402 # load x3 with value 0x3e5e6402
sw x3, 0(x2) # store 0x3e5e6402 in memory
flw f20, 0(x2) # load 0x3e5e6402 from memory into f20
fdiv.s f18, f28, f20 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x4659217d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x71b3d2a8 # load x3 with value 0x71b3d2a8
sw x3, 0(x2) # store 0x71b3d2a8 in memory
flw f12, 0(x2) # load 0x71b3d2a8 from memory into f12
li x3, 0xec0bf61e # load x3 with value 0xec0bf61e
sw x3, 0(x2) # store 0xec0bf61e in memory
flw f10, 0(x2) # load 0xec0bf61e from memory into f10
fdiv.s f19, f12, f10 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0xf96ce652 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xca675256 # load x3 with value 0xca675256
sw x3, 0(x2) # store 0xca675256 in memory
flw f14, 0(x2) # load 0xca675256 from memory into f14
li x3, 0x64f9ac36 # load x3 with value 0x64f9ac36
sw x3, 0(x2) # store 0x64f9ac36 in memory
flw f11, 0(x2) # load 0x64f9ac36 from memory into f11
fdiv.s f20, f14, f11 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0xb9256d15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9a421b8d # load x3 with value 0x9a421b8d
sw x3, 0(x2) # store 0x9a421b8d in memory
flw f23, 0(x2) # load 0x9a421b8d from memory into f23
li x3, 0x13c509a1 # load x3 with value 0x13c509a1
sw x3, 0(x2) # store 0x13c509a1 in memory
flw f18, 0(x2) # load 0x13c509a1 from memory into f18
fdiv.s f21, f23, f18 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x09623098 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6bdd2bca # load x3 with value 0x6bdd2bca
sw x3, 0(x2) # store 0x6bdd2bca in memory
flw f20, 0(x2) # load 0x6bdd2bca from memory into f20
li x3, 0x1d3c6685 # load x3 with value 0x1d3c6685
sw x3, 0(x2) # store 0x1d3c6685 in memory
flw f6, 0(x2) # load 0x1d3c6685 from memory into f6
fdiv.s f22, f20, f6 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x7e5d15db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd13f2be1 # load x3 with value 0xd13f2be1
sw x3, 0(x2) # store 0xd13f2be1 in memory
flw f27, 0(x2) # load 0xd13f2be1 from memory into f27
li x3, 0xda4c0cbc # load x3 with value 0xda4c0cbc
sw x3, 0(x2) # store 0xda4c0cbc in memory
flw f4, 0(x2) # load 0xda4c0cbc from memory into f4
fdiv.s f23, f27, f4 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0xdb9b1da2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf9d5350 # load x3 with value 0xbf9d5350
sw x3, 0(x2) # store 0xbf9d5350 in memory
flw f18, 0(x2) # load 0xbf9d5350 from memory into f18
li x3, 0x70c059c1 # load x3 with value 0x70c059c1
sw x3, 0(x2) # store 0x70c059c1 in memory
flw f12, 0(x2) # load 0x70c059c1 from memory into f12
fdiv.s f24, f18, f12 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x6507dd2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7150e68b # load x3 with value 0x7150e68b
sw x3, 0(x2) # store 0x7150e68b in memory
flw f19, 0(x2) # load 0x7150e68b from memory into f19
li x3, 0xe56ac808 # load x3 with value 0xe56ac808
sw x3, 0(x2) # store 0xe56ac808 in memory
flw f3, 0(x2) # load 0xe56ac808 from memory into f3
fdiv.s f25, f19, f3 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x6d3dcc0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe61d4ba4 # load x3 with value 0xe61d4ba4
sw x3, 0(x2) # store 0xe61d4ba4 in memory
flw f1, 0(x2) # load 0xe61d4ba4 from memory into f1
li x3, 0xc510face # load x3 with value 0xc510face
sw x3, 0(x2) # store 0xc510face in memory
flw f2, 0(x2) # load 0xc510face from memory into f2
fdiv.s f26, f1, f2 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0xc6dd3b6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x887cfc0c # load x3 with value 0x887cfc0c
sw x3, 0(x2) # store 0x887cfc0c in memory
flw f29, 0(x2) # load 0x887cfc0c from memory into f29
li x3, 0xa49a1185 # load x3 with value 0xa49a1185
sw x3, 0(x2) # store 0xa49a1185 in memory
flw f8, 0(x2) # load 0xa49a1185 from memory into f8
fdiv.s f27, f29, f8 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x36937d0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf10e8628 # load x3 with value 0xf10e8628
sw x3, 0(x2) # store 0xf10e8628 in memory
flw f3, 0(x2) # load 0xf10e8628 from memory into f3
li x3, 0xb0874ae3 # load x3 with value 0xb0874ae3
sw x3, 0(x2) # store 0xb0874ae3 in memory
flw f20, 0(x2) # load 0xb0874ae3 from memory into f20
fdiv.s f28, f3, f20 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x4d93388b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4d028583 # load x3 with value 0x4d028583
sw x3, 0(x2) # store 0x4d028583 in memory
flw f4, 0(x2) # load 0x4d028583 from memory into f4
li x3, 0x1bfadf09 # load x3 with value 0x1bfadf09
sw x3, 0(x2) # store 0x1bfadf09 in memory
flw f21, 0(x2) # load 0x1bfadf09 from memory into f21
fdiv.s f29, f4, f21 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0xf19c7fff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa17e06b9 # load x3 with value 0xa17e06b9
sw x3, 0(x2) # store 0xa17e06b9 in memory
flw f28, 0(x2) # load 0xa17e06b9 from memory into f28
li x3, 0x7e2a56a1 # load x3 with value 0x7e2a56a1
sw x3, 0(x2) # store 0x7e2a56a1 in memory
flw f14, 0(x2) # load 0x7e2a56a1 from memory into f14
fdiv.s f30, f28, f14 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0xa4dbf058 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4a7e7aec # load x3 with value 0x4a7e7aec
sw x3, 0(x2) # store 0x4a7e7aec in memory
flw f17, 0(x2) # load 0x4a7e7aec from memory into f17
li x3, 0x7e6915ca # load x3 with value 0x7e6915ca
sw x3, 0(x2) # store 0x7e6915ca in memory
flw f13, 0(x2) # load 0x7e6915ca from memory into f13
fdiv.s f31, f17, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x9, 0x23ab69f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x63703fe3 # load x3 with value 0x63703fe3
sw x3, 0(x2) # store 0x63703fe3 in memory
flw f0, 0(x2) # load 0x63703fe3 from memory into f0
li x3, 0xc8d7df36 # load x3 with value 0xc8d7df36
sw x3, 0(x2) # store 0xc8d7df36 in memory
flw f27, 0(x2) # load 0xc8d7df36 from memory into f27
fdiv.s f9, f0, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x18, 0x3cf190ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8918d009 # load x3 with value 0x8918d009
sw x3, 0(x2) # store 0x8918d009 in memory
flw f1, 0(x2) # load 0x8918d009 from memory into f1
li x3, 0x64a76e0e # load x3 with value 0x64a76e0e
sw x3, 0(x2) # store 0x64a76e0e in memory
flw f17, 0(x2) # load 0x64a76e0e from memory into f17
fdiv.s f18, f1, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x12, 0x34a88b72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6de9769e # load x3 with value 0x6de9769e
sw x3, 0(x2) # store 0x6de9769e in memory
flw f2, 0(x2) # load 0x6de9769e from memory into f2
li x3, 0x24f17420 # load x3 with value 0x24f17420
sw x3, 0(x2) # store 0x24f17420 in memory
flw f15, 0(x2) # load 0x24f17420 from memory into f15
fdiv.s f12, f2, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x14, 0x42ae461a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe9733207 # load x3 with value 0xe9733207
sw x3, 0(x2) # store 0xe9733207 in memory
flw f3, 0(x2) # load 0xe9733207 from memory into f3
li x3, 0xce977b66 # load x3 with value 0xce977b66
sw x3, 0(x2) # store 0xce977b66 in memory
flw f20, 0(x2) # load 0xce977b66 from memory into f20
fdiv.s f14, f3, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x4, 0x515e7f99 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcfc71619 # load x3 with value 0xcfc71619
sw x3, 0(x2) # store 0xcfc71619 in memory
flw f4, 0(x2) # load 0xcfc71619 from memory into f4
li x3, 0xa9758a9b # load x3 with value 0xa9758a9b
sw x3, 0(x2) # store 0xa9758a9b in memory
flw f25, 0(x2) # load 0xa9758a9b from memory into f25
fdiv.s f4, f4, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x28, 0xcb781ba6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdc324671 # load x3 with value 0xdc324671
sw x3, 0(x2) # store 0xdc324671 in memory
flw f5, 0(x2) # load 0xdc324671 from memory into f5
li x3, 0x0e558735 # load x3 with value 0x0e558735
sw x3, 0(x2) # store 0x0e558735 in memory
flw f19, 0(x2) # load 0x0e558735 from memory into f19
fdiv.s f28, f5, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x11, 0xb8cb2ea3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x275b8506 # load x3 with value 0x275b8506
sw x3, 0(x2) # store 0x275b8506 in memory
flw f6, 0(x2) # load 0x275b8506 from memory into f6
li x3, 0x6195a5ba # load x3 with value 0x6195a5ba
sw x3, 0(x2) # store 0x6195a5ba in memory
flw f12, 0(x2) # load 0x6195a5ba from memory into f12
fdiv.s f11, f6, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x16, 0xc89c9906 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdad16051 # load x3 with value 0xdad16051
sw x3, 0(x2) # store 0xdad16051 in memory
flw f7, 0(x2) # load 0xdad16051 from memory into f7
li x3, 0x0671b997 # load x3 with value 0x0671b997
sw x3, 0(x2) # store 0x0671b997 in memory
flw f15, 0(x2) # load 0x0671b997 from memory into f15
fdiv.s f16, f7, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x12, 0x163afdbc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x133c015f # load x3 with value 0x133c015f
sw x3, 0(x2) # store 0x133c015f in memory
flw f8, 0(x2) # load 0x133c015f from memory into f8
li x3, 0xb2d9dabd # load x3 with value 0xb2d9dabd
sw x3, 0(x2) # store 0xb2d9dabd in memory
flw f1, 0(x2) # load 0xb2d9dabd from memory into f1
fdiv.s f12, f8, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x5, 0x292cb38a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd2b6ddb6 # load x3 with value 0xd2b6ddb6
sw x3, 0(x2) # store 0xd2b6ddb6 in memory
flw f9, 0(x2) # load 0xd2b6ddb6 from memory into f9
li x3, 0x140c7f8c # load x3 with value 0x140c7f8c
sw x3, 0(x2) # store 0x140c7f8c in memory
flw f29, 0(x2) # load 0x140c7f8c from memory into f29
fdiv.s f5, f9, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x22, 0x02c2a85b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x17f576ea # load x3 with value 0x17f576ea
sw x3, 0(x2) # store 0x17f576ea in memory
flw f10, 0(x2) # load 0x17f576ea from memory into f10
li x3, 0xafb33470 # load x3 with value 0xafb33470
sw x3, 0(x2) # store 0xafb33470 in memory
flw f28, 0(x2) # load 0xafb33470 from memory into f28
fdiv.s f22, f10, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x17, 0x0fd3cbd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9e7e5523 # load x3 with value 0x9e7e5523
sw x3, 0(x2) # store 0x9e7e5523 in memory
flw f11, 0(x2) # load 0x9e7e5523 from memory into f11
li x3, 0x8e23a0bd # load x3 with value 0x8e23a0bd
sw x3, 0(x2) # store 0x8e23a0bd in memory
flw f12, 0(x2) # load 0x8e23a0bd from memory into f12
fdiv.s f17, f11, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x18, 0x942192a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x58f70cdb # load x3 with value 0x58f70cdb
sw x3, 0(x2) # store 0x58f70cdb in memory
flw f12, 0(x2) # load 0x58f70cdb from memory into f12
li x3, 0x316c17c3 # load x3 with value 0x316c17c3
sw x3, 0(x2) # store 0x316c17c3 in memory
flw f5, 0(x2) # load 0x316c17c3 from memory into f5
fdiv.s f18, f12, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x30, 0x878f7d84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x52320298 # load x3 with value 0x52320298
sw x3, 0(x2) # store 0x52320298 in memory
flw f13, 0(x2) # load 0x52320298 from memory into f13
li x3, 0x7e4e205d # load x3 with value 0x7e4e205d
sw x3, 0(x2) # store 0x7e4e205d in memory
flw f15, 0(x2) # load 0x7e4e205d from memory into f15
fdiv.s f30, f13, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x18, 0x164c77db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xda67dacc # load x3 with value 0xda67dacc
sw x3, 0(x2) # store 0xda67dacc in memory
flw f14, 0(x2) # load 0xda67dacc from memory into f14
li x3, 0x1e5d9b9f # load x3 with value 0x1e5d9b9f
sw x3, 0(x2) # store 0x1e5d9b9f in memory
flw f4, 0(x2) # load 0x1e5d9b9f from memory into f4
fdiv.s f18, f14, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x28, 0xca1eec6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa55a8ce6 # load x3 with value 0xa55a8ce6
sw x3, 0(x2) # store 0xa55a8ce6 in memory
flw f15, 0(x2) # load 0xa55a8ce6 from memory into f15
li x3, 0xc1144917 # load x3 with value 0xc1144917
sw x3, 0(x2) # store 0xc1144917 in memory
flw f17, 0(x2) # load 0xc1144917 from memory into f17
fdiv.s f28, f15, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x31, 0x89036cac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1d8ffd85 # load x3 with value 0x1d8ffd85
sw x3, 0(x2) # store 0x1d8ffd85 in memory
flw f16, 0(x2) # load 0x1d8ffd85 from memory into f16
li x3, 0xa314c4c1 # load x3 with value 0xa314c4c1
sw x3, 0(x2) # store 0xa314c4c1 in memory
flw f28, 0(x2) # load 0xa314c4c1 from memory into f28
fdiv.s f31, f16, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x7, 0x25b23c28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x218e5575 # load x3 with value 0x218e5575
sw x3, 0(x2) # store 0x218e5575 in memory
flw f17, 0(x2) # load 0x218e5575 from memory into f17
li x3, 0x9919c831 # load x3 with value 0x9919c831
sw x3, 0(x2) # store 0x9919c831 in memory
flw f5, 0(x2) # load 0x9919c831 from memory into f5
fdiv.s f7, f17, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x7, 0x396898ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x62c19c85 # load x3 with value 0x62c19c85
sw x3, 0(x2) # store 0x62c19c85 in memory
flw f18, 0(x2) # load 0x62c19c85 from memory into f18
li x3, 0x4073324d # load x3 with value 0x4073324d
sw x3, 0(x2) # store 0x4073324d in memory
flw f24, 0(x2) # load 0x4073324d from memory into f24
fdiv.s f7, f18, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x28, 0x4fbbd0f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb827d144 # load x3 with value 0xb827d144
sw x3, 0(x2) # store 0xb827d144 in memory
flw f19, 0(x2) # load 0xb827d144 from memory into f19
li x3, 0x2ebde428 # load x3 with value 0x2ebde428
sw x3, 0(x2) # store 0x2ebde428 in memory
flw f15, 0(x2) # load 0x2ebde428 from memory into f15
fdiv.s f28, f19, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x25, 0xb74044bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbd553dcd # load x3 with value 0xbd553dcd
sw x3, 0(x2) # store 0xbd553dcd in memory
flw f20, 0(x2) # load 0xbd553dcd from memory into f20
li x3, 0xd61c6e9e # load x3 with value 0xd61c6e9e
sw x3, 0(x2) # store 0xd61c6e9e in memory
flw f23, 0(x2) # load 0xd61c6e9e from memory into f23
fdiv.s f25, f20, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x12, 0x79542f8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x77204755 # load x3 with value 0x77204755
sw x3, 0(x2) # store 0x77204755 in memory
flw f21, 0(x2) # load 0x77204755 from memory into f21
li x3, 0x6d3120e8 # load x3 with value 0x6d3120e8
sw x3, 0(x2) # store 0x6d3120e8 in memory
flw f15, 0(x2) # load 0x6d3120e8 from memory into f15
fdiv.s f12, f21, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x3, 0x04f5c265 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9ea789bf # load x3 with value 0x9ea789bf
sw x3, 0(x2) # store 0x9ea789bf in memory
flw f22, 0(x2) # load 0x9ea789bf from memory into f22
li x3, 0x35987bfc # load x3 with value 0x35987bfc
sw x3, 0(x2) # store 0x35987bfc in memory
flw f27, 0(x2) # load 0x35987bfc from memory into f27
fdiv.s f3, f22, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x11, 0x1b535788 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5424eb9f # load x3 with value 0x5424eb9f
sw x3, 0(x2) # store 0x5424eb9f in memory
flw f23, 0(x2) # load 0x5424eb9f from memory into f23
li x3, 0x1c138398 # load x3 with value 0x1c138398
sw x3, 0(x2) # store 0x1c138398 in memory
flw f21, 0(x2) # load 0x1c138398 from memory into f21
fdiv.s f11, f23, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x13, 0x8be619b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbaf2d0a6 # load x3 with value 0xbaf2d0a6
sw x3, 0(x2) # store 0xbaf2d0a6 in memory
flw f24, 0(x2) # load 0xbaf2d0a6 from memory into f24
li x3, 0x6d00eb56 # load x3 with value 0x6d00eb56
sw x3, 0(x2) # store 0x6d00eb56 in memory
flw f31, 0(x2) # load 0x6d00eb56 from memory into f31
fdiv.s f13, f24, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x24, 0x60c7eb6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x90d5db0f # load x3 with value 0x90d5db0f
sw x3, 0(x2) # store 0x90d5db0f in memory
flw f25, 0(x2) # load 0x90d5db0f from memory into f25
li x3, 0x48dd695f # load x3 with value 0x48dd695f
sw x3, 0(x2) # store 0x48dd695f in memory
flw f14, 0(x2) # load 0x48dd695f from memory into f14
fdiv.s f24, f25, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x29, 0xc1d2acd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xed42dfe6 # load x3 with value 0xed42dfe6
sw x3, 0(x2) # store 0xed42dfe6 in memory
flw f26, 0(x2) # load 0xed42dfe6 from memory into f26
li x3, 0x34885440 # load x3 with value 0x34885440
sw x3, 0(x2) # store 0x34885440 in memory
flw f21, 0(x2) # load 0x34885440 from memory into f21
fdiv.s f29, f26, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x30, 0x618abfd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeff98241 # load x3 with value 0xeff98241
sw x3, 0(x2) # store 0xeff98241 in memory
flw f27, 0(x2) # load 0xeff98241 from memory into f27
li x3, 0xa3f4ddd7 # load x3 with value 0xa3f4ddd7
sw x3, 0(x2) # store 0xa3f4ddd7 in memory
flw f6, 0(x2) # load 0xa3f4ddd7 from memory into f6
fdiv.s f30, f27, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x4, 0x30dd9dc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x14e4e002 # load x3 with value 0x14e4e002
sw x3, 0(x2) # store 0x14e4e002 in memory
flw f28, 0(x2) # load 0x14e4e002 from memory into f28
li x3, 0x5bf4b865 # load x3 with value 0x5bf4b865
sw x3, 0(x2) # store 0x5bf4b865 in memory
flw f31, 0(x2) # load 0x5bf4b865 from memory into f31
fdiv.s f4, f28, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x19, 0x7e38f572 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6bcbe644 # load x3 with value 0x6bcbe644
sw x3, 0(x2) # store 0x6bcbe644 in memory
flw f29, 0(x2) # load 0x6bcbe644 from memory into f29
li x3, 0xd3fe3f68 # load x3 with value 0xd3fe3f68
sw x3, 0(x2) # store 0xd3fe3f68 in memory
flw f5, 0(x2) # load 0xd3fe3f68 from memory into f5
fdiv.s f19, f29, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x14, 0x250a6709 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7775917b # load x3 with value 0x7775917b
sw x3, 0(x2) # store 0x7775917b in memory
flw f30, 0(x2) # load 0x7775917b from memory into f30
li x3, 0x8ddfed5d # load x3 with value 0x8ddfed5d
sw x3, 0(x2) # store 0x8ddfed5d in memory
flw f26, 0(x2) # load 0x8ddfed5d from memory into f26
fdiv.s f14, f30, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x31, 0xaec1a075 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeee59516 # load x3 with value 0xeee59516
sw x3, 0(x2) # store 0xeee59516 in memory
flw f31, 0(x2) # load 0xeee59516 from memory into f31
li x3, 0xcd70d429 # load x3 with value 0xcd70d429
sw x3, 0(x2) # store 0xcd70d429 in memory
flw f26, 0(x2) # load 0xcd70d429 from memory into f26
fdiv.s f31, f31, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x8, 0xcf603e0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x13516db9 # load x3 with value 0x13516db9
sw x3, 0(x2) # store 0x13516db9 in memory
flw f19, 0(x2) # load 0x13516db9 from memory into f19
li x3, 0x2d7e6a38 # load x3 with value 0x2d7e6a38
sw x3, 0(x2) # store 0x2d7e6a38 in memory
flw f0, 0(x2) # load 0x2d7e6a38 from memory into f0
fdiv.s f8, f19, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x18, 0xfc8323f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5caa84e6 # load x3 with value 0x5caa84e6
sw x3, 0(x2) # store 0x5caa84e6 in memory
flw f30, 0(x2) # load 0x5caa84e6 from memory into f30
li x3, 0x16dab241 # load x3 with value 0x16dab241
sw x3, 0(x2) # store 0x16dab241 in memory
flw f1, 0(x2) # load 0x16dab241 from memory into f1
fdiv.s f18, f30, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x17, 0xe6e2d37a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3b242d21 # load x3 with value 0x3b242d21
sw x3, 0(x2) # store 0x3b242d21 in memory
flw f18, 0(x2) # load 0x3b242d21 from memory into f18
li x3, 0x557d20db # load x3 with value 0x557d20db
sw x3, 0(x2) # store 0x557d20db in memory
flw f2, 0(x2) # load 0x557d20db from memory into f2
fdiv.s f17, f18, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x3, 0x8ea3fa58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ce2f46a # load x3 with value 0x3ce2f46a
sw x3, 0(x2) # store 0x3ce2f46a in memory
flw f28, 0(x2) # load 0x3ce2f46a from memory into f28
li x3, 0x59523b79 # load x3 with value 0x59523b79
sw x3, 0(x2) # store 0x59523b79 in memory
flw f3, 0(x2) # load 0x59523b79 from memory into f3
fdiv.s f3, f28, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x1, 0x63b8e739 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa60a1f93 # load x3 with value 0xa60a1f93
sw x3, 0(x2) # store 0xa60a1f93 in memory
flw f10, 0(x2) # load 0xa60a1f93 from memory into f10
li x3, 0x1acf13f7 # load x3 with value 0x1acf13f7
sw x3, 0(x2) # store 0x1acf13f7 in memory
flw f4, 0(x2) # load 0x1acf13f7 from memory into f4
fdiv.s f1, f10, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x9, 0x50ee9312 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x90387802 # load x3 with value 0x90387802
sw x3, 0(x2) # store 0x90387802 in memory
flw f14, 0(x2) # load 0x90387802 from memory into f14
li x3, 0xa2a00ddb # load x3 with value 0xa2a00ddb
sw x3, 0(x2) # store 0xa2a00ddb in memory
flw f5, 0(x2) # load 0xa2a00ddb from memory into f5
fdiv.s f9, f14, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x6, 0xbd31c933 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x73b5ac54 # load x3 with value 0x73b5ac54
sw x3, 0(x2) # store 0x73b5ac54 in memory
flw f3, 0(x2) # load 0x73b5ac54 from memory into f3
li x3, 0x6b444706 # load x3 with value 0x6b444706
sw x3, 0(x2) # store 0x6b444706 in memory
flw f6, 0(x2) # load 0x6b444706 from memory into f6
fdiv.s f6, f3, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x8, 0xbac038e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xac6495ae # load x3 with value 0xac6495ae
sw x3, 0(x2) # store 0xac6495ae in memory
flw f16, 0(x2) # load 0xac6495ae from memory into f16
li x3, 0x1625ff4e # load x3 with value 0x1625ff4e
sw x3, 0(x2) # store 0x1625ff4e in memory
flw f7, 0(x2) # load 0x1625ff4e from memory into f7
fdiv.s f8, f16, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x5, 0x9dbdc96e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xce8f8abe # load x3 with value 0xce8f8abe
sw x3, 0(x2) # store 0xce8f8abe in memory
flw f2, 0(x2) # load 0xce8f8abe from memory into f2
li x3, 0x536f963d # load x3 with value 0x536f963d
sw x3, 0(x2) # store 0x536f963d in memory
flw f8, 0(x2) # load 0x536f963d from memory into f8
fdiv.s f5, f2, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x12, 0x59788322 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1c8611fe # load x3 with value 0x1c8611fe
sw x3, 0(x2) # store 0x1c8611fe in memory
flw f7, 0(x2) # load 0x1c8611fe from memory into f7
li x3, 0x845d82a7 # load x3 with value 0x845d82a7
sw x3, 0(x2) # store 0x845d82a7 in memory
flw f9, 0(x2) # load 0x845d82a7 from memory into f9
fdiv.s f12, f7, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x2, 0xfc6bc682 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x08bf3c31 # load x3 with value 0x08bf3c31
sw x3, 0(x2) # store 0x08bf3c31 in memory
flw f20, 0(x2) # load 0x08bf3c31 from memory into f20
li x3, 0x1821c414 # load x3 with value 0x1821c414
sw x3, 0(x2) # store 0x1821c414 in memory
flw f10, 0(x2) # load 0x1821c414 from memory into f10
fdiv.s f2, f20, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x13, 0x91566614 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4639422d # load x3 with value 0x4639422d
sw x3, 0(x2) # store 0x4639422d in memory
flw f27, 0(x2) # load 0x4639422d from memory into f27
li x3, 0xc20e1f42 # load x3 with value 0xc20e1f42
sw x3, 0(x2) # store 0xc20e1f42 in memory
flw f11, 0(x2) # load 0xc20e1f42 from memory into f11
fdiv.s f13, f27, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x26, 0xafd70c96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1f8242a3 # load x3 with value 0x1f8242a3
sw x3, 0(x2) # store 0x1f8242a3 in memory
flw f20, 0(x2) # load 0x1f8242a3 from memory into f20
li x3, 0x8a09b8a3 # load x3 with value 0x8a09b8a3
sw x3, 0(x2) # store 0x8a09b8a3 in memory
flw f12, 0(x2) # load 0x8a09b8a3 from memory into f12
fdiv.s f26, f20, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x27, 0x4791feef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x710fda1d # load x3 with value 0x710fda1d
sw x3, 0(x2) # store 0x710fda1d in memory
flw f10, 0(x2) # load 0x710fda1d from memory into f10
li x3, 0xe71003d6 # load x3 with value 0xe71003d6
sw x3, 0(x2) # store 0xe71003d6 in memory
flw f13, 0(x2) # load 0xe71003d6 from memory into f13
fdiv.s f27, f10, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x20, 0x20eea159 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7c43d323 # load x3 with value 0x7c43d323
sw x3, 0(x2) # store 0x7c43d323 in memory
flw f24, 0(x2) # load 0x7c43d323 from memory into f24
li x3, 0x1044ce22 # load x3 with value 0x1044ce22
sw x3, 0(x2) # store 0x1044ce22 in memory
flw f14, 0(x2) # load 0x1044ce22 from memory into f14
fdiv.s f20, f24, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x16, 0xbd34ac8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfb2cc35c # load x3 with value 0xfb2cc35c
sw x3, 0(x2) # store 0xfb2cc35c in memory
flw f7, 0(x2) # load 0xfb2cc35c from memory into f7
li x3, 0x37566469 # load x3 with value 0x37566469
sw x3, 0(x2) # store 0x37566469 in memory
flw f15, 0(x2) # load 0x37566469 from memory into f15
fdiv.s f16, f7, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x7, 0xd11a245a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcf507743 # load x3 with value 0xcf507743
sw x3, 0(x2) # store 0xcf507743 in memory
flw f1, 0(x2) # load 0xcf507743 from memory into f1
li x3, 0xed8e0f1a # load x3 with value 0xed8e0f1a
sw x3, 0(x2) # store 0xed8e0f1a in memory
flw f16, 0(x2) # load 0xed8e0f1a from memory into f16
fdiv.s f7, f1, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x4, 0xa21d75b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x93ee2596 # load x3 with value 0x93ee2596
sw x3, 0(x2) # store 0x93ee2596 in memory
flw f9, 0(x2) # load 0x93ee2596 from memory into f9
li x3, 0x3dd9c746 # load x3 with value 0x3dd9c746
sw x3, 0(x2) # store 0x3dd9c746 in memory
flw f17, 0(x2) # load 0x3dd9c746 from memory into f17
fdiv.s f4, f9, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x13, 0x47b3fba0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd23ff8e6 # load x3 with value 0xd23ff8e6
sw x3, 0(x2) # store 0xd23ff8e6 in memory
flw f31, 0(x2) # load 0xd23ff8e6 from memory into f31
li x3, 0xce1c24f0 # load x3 with value 0xce1c24f0
sw x3, 0(x2) # store 0xce1c24f0 in memory
flw f18, 0(x2) # load 0xce1c24f0 from memory into f18
fdiv.s f13, f31, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x15, 0x6eafe530 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd653b498 # load x3 with value 0xd653b498
sw x3, 0(x2) # store 0xd653b498 in memory
flw f18, 0(x2) # load 0xd653b498 from memory into f18
li x3, 0xfbad0d4f # load x3 with value 0xfbad0d4f
sw x3, 0(x2) # store 0xfbad0d4f in memory
flw f19, 0(x2) # load 0xfbad0d4f from memory into f19
fdiv.s f15, f18, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x9, 0x37bf1eea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x51dda897 # load x3 with value 0x51dda897
sw x3, 0(x2) # store 0x51dda897 in memory
flw f14, 0(x2) # load 0x51dda897 from memory into f14
li x3, 0x4efd686b # load x3 with value 0x4efd686b
sw x3, 0(x2) # store 0x4efd686b in memory
flw f20, 0(x2) # load 0x4efd686b from memory into f20
fdiv.s f9, f14, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x1, 0xa0d8163d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5555a710 # load x3 with value 0x5555a710
sw x3, 0(x2) # store 0x5555a710 in memory
flw f20, 0(x2) # load 0x5555a710 from memory into f20
li x3, 0x55f1661b # load x3 with value 0x55f1661b
sw x3, 0(x2) # store 0x55f1661b in memory
flw f21, 0(x2) # load 0x55f1661b from memory into f21
fdiv.s f1, f20, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x19, 0x63352c97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x290a8b48 # load x3 with value 0x290a8b48
sw x3, 0(x2) # store 0x290a8b48 in memory
flw f31, 0(x2) # load 0x290a8b48 from memory into f31
li x3, 0x3d465116 # load x3 with value 0x3d465116
sw x3, 0(x2) # store 0x3d465116 in memory
flw f22, 0(x2) # load 0x3d465116 from memory into f22
fdiv.s f19, f31, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x5, 0xd748da5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x57f0715d # load x3 with value 0x57f0715d
sw x3, 0(x2) # store 0x57f0715d in memory
flw f21, 0(x2) # load 0x57f0715d from memory into f21
li x3, 0xc92a5351 # load x3 with value 0xc92a5351
sw x3, 0(x2) # store 0xc92a5351 in memory
flw f23, 0(x2) # load 0xc92a5351 from memory into f23
fdiv.s f5, f21, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x4, 0xa3d1aad3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0da22255 # load x3 with value 0x0da22255
sw x3, 0(x2) # store 0x0da22255 in memory
flw f14, 0(x2) # load 0x0da22255 from memory into f14
li x3, 0xac8e349b # load x3 with value 0xac8e349b
sw x3, 0(x2) # store 0xac8e349b in memory
flw f24, 0(x2) # load 0xac8e349b from memory into f24
fdiv.s f4, f14, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x17, 0x14d54eb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x842b3246 # load x3 with value 0x842b3246
sw x3, 0(x2) # store 0x842b3246 in memory
flw f30, 0(x2) # load 0x842b3246 from memory into f30
li x3, 0x6b1c2b42 # load x3 with value 0x6b1c2b42
sw x3, 0(x2) # store 0x6b1c2b42 in memory
flw f25, 0(x2) # load 0x6b1c2b42 from memory into f25
fdiv.s f17, f30, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x2, 0x1f6ed848 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x22c64d53 # load x3 with value 0x22c64d53
sw x3, 0(x2) # store 0x22c64d53 in memory
flw f29, 0(x2) # load 0x22c64d53 from memory into f29
li x3, 0x02c097ef # load x3 with value 0x02c097ef
sw x3, 0(x2) # store 0x02c097ef in memory
flw f26, 0(x2) # load 0x02c097ef from memory into f26
fdiv.s f2, f29, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x16, 0x0a953160 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xce56b3e3 # load x3 with value 0xce56b3e3
sw x3, 0(x2) # store 0xce56b3e3 in memory
flw f31, 0(x2) # load 0xce56b3e3 from memory into f31
li x3, 0xb80e5eef # load x3 with value 0xb80e5eef
sw x3, 0(x2) # store 0xb80e5eef in memory
flw f27, 0(x2) # load 0xb80e5eef from memory into f27
fdiv.s f16, f31, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x28, 0xc0946cfc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff130fbc # load x3 with value 0xff130fbc
sw x3, 0(x2) # store 0xff130fbc in memory
flw f16, 0(x2) # load 0xff130fbc from memory into f16
li x3, 0x3ce24d53 # load x3 with value 0x3ce24d53
sw x3, 0(x2) # store 0x3ce24d53 in memory
flw f28, 0(x2) # load 0x3ce24d53 from memory into f28
fdiv.s f28, f16, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x18, 0x9df4dff5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6cee8cec # load x3 with value 0x6cee8cec
sw x3, 0(x2) # store 0x6cee8cec in memory
flw f20, 0(x2) # load 0x6cee8cec from memory into f20
li x3, 0x4606df15 # load x3 with value 0x4606df15
sw x3, 0(x2) # store 0x4606df15 in memory
flw f29, 0(x2) # load 0x4606df15 from memory into f29
fdiv.s f18, f20, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x10, 0x7bedec78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf7c575fb # load x3 with value 0xf7c575fb
sw x3, 0(x2) # store 0xf7c575fb in memory
flw f15, 0(x2) # load 0xf7c575fb from memory into f15
li x3, 0xac95435a # load x3 with value 0xac95435a
sw x3, 0(x2) # store 0xac95435a in memory
flw f30, 0(x2) # load 0xac95435a from memory into f30
fdiv.s f10, f15, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x15, 0x076b8f6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaee850ea # load x3 with value 0xaee850ea
sw x3, 0(x2) # store 0xaee850ea in memory
flw f29, 0(x2) # load 0xaee850ea from memory into f29
li x3, 0xbf84a353 # load x3 with value 0xbf84a353
sw x3, 0(x2) # store 0xbf84a353 in memory
flw f31, 0(x2) # load 0xbf84a353 from memory into f31
fdiv.s f15, f29, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
