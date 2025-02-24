///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/F//WALLY-COV-fmul.s.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.290844
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
fmul.s f6, f28, f20 # perform first operation
fmul.s f27, f6, f17 # perform second operation

# Testcase cmp_gpr_hazard raw test
fmul.s f21, f8, f12 # perform first operation
fmul.s f25, f21, f21 # perform second operation

# Testcase cmp_gpr_hazard waw test
fmul.s f29, f24, f21 # perform first operation
fmul.s f29, f29, f17 # perform second operation

# Testcase cmp_gpr_hazard waw test
fmul.s f22, f9, f29 # perform first operation
fmul.s f22, f11, f29 # perform second operation

# Testcase cmp_gpr_hazard war test
fmul.s f10, f7, f19 # perform first operation
fmul.s f7, f7, f30 # perform second operation

# Testcase cmp_gpr_hazard war test
fmul.s f29, f3, f5 # perform first operation
fmul.s f5, f27, f13 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0x9cfd8d8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x650db311 # load x3 with value 0x650db311
sw x3, 0(x2) # store 0x650db311 in memory
flw f0, 0(x2) # load 0x650db311 from memory into f0
li x3, 0x9109e652 # load x3 with value 0x9109e652
sw x3, 0(x2) # store 0x9109e652 in memory
flw f9, 0(x2) # load 0x9109e652 from memory into f9
fmul.s f0, f0, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0x7087398f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa29287f3 # load x3 with value 0xa29287f3
sw x3, 0(x2) # store 0xa29287f3 in memory
flw f1, 0(x2) # load 0xa29287f3 from memory into f1
li x3, 0xe4bbf3c3 # load x3 with value 0xe4bbf3c3
sw x3, 0(x2) # store 0xe4bbf3c3 in memory
flw f3, 0(x2) # load 0xe4bbf3c3 from memory into f3
fmul.s f1, f1, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0x12380511 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa13e92f7 # load x3 with value 0xa13e92f7
sw x3, 0(x2) # store 0xa13e92f7 in memory
flw f2, 0(x2) # load 0xa13e92f7 from memory into f2
li x3, 0x96771d3e # load x3 with value 0x96771d3e
sw x3, 0(x2) # store 0x96771d3e in memory
flw f28, 0(x2) # load 0x96771d3e from memory into f28
fmul.s f2, f2, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0x51c68a62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7e292b75 # load x3 with value 0x7e292b75
sw x3, 0(x2) # store 0x7e292b75 in memory
flw f3, 0(x2) # load 0x7e292b75 from memory into f3
li x3, 0x7b9e1aa0 # load x3 with value 0x7b9e1aa0
sw x3, 0(x2) # store 0x7b9e1aa0 in memory
flw f19, 0(x2) # load 0x7b9e1aa0 from memory into f19
fmul.s f3, f3, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0xa2551651 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a0bb073 # load x3 with value 0x5a0bb073
sw x3, 0(x2) # store 0x5a0bb073 in memory
flw f4, 0(x2) # load 0x5a0bb073 from memory into f4
li x3, 0x1ba7802d # load x3 with value 0x1ba7802d
sw x3, 0(x2) # store 0x1ba7802d in memory
flw f3, 0(x2) # load 0x1ba7802d from memory into f3
fmul.s f4, f4, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0xadfebcca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x90379342 # load x3 with value 0x90379342
sw x3, 0(x2) # store 0x90379342 in memory
flw f5, 0(x2) # load 0x90379342 from memory into f5
li x3, 0x26f0f64e # load x3 with value 0x26f0f64e
sw x3, 0(x2) # store 0x26f0f64e in memory
flw f31, 0(x2) # load 0x26f0f64e from memory into f31
fmul.s f5, f5, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0xeb14a3da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xafe4cd5e # load x3 with value 0xafe4cd5e
sw x3, 0(x2) # store 0xafe4cd5e in memory
flw f6, 0(x2) # load 0xafe4cd5e from memory into f6
li x3, 0x54bd42b8 # load x3 with value 0x54bd42b8
sw x3, 0(x2) # store 0x54bd42b8 in memory
flw f17, 0(x2) # load 0x54bd42b8 from memory into f17
fmul.s f6, f6, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0x2960ab76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5b1dda71 # load x3 with value 0x5b1dda71
sw x3, 0(x2) # store 0x5b1dda71 in memory
flw f7, 0(x2) # load 0x5b1dda71 from memory into f7
li x3, 0x1b064e78 # load x3 with value 0x1b064e78
sw x3, 0(x2) # store 0x1b064e78 in memory
flw f19, 0(x2) # load 0x1b064e78 from memory into f19
fmul.s f7, f7, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0xd19f896e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x61597ffb # load x3 with value 0x61597ffb
sw x3, 0(x2) # store 0x61597ffb in memory
flw f8, 0(x2) # load 0x61597ffb from memory into f8
li x3, 0xffd9bd4f # load x3 with value 0xffd9bd4f
sw x3, 0(x2) # store 0xffd9bd4f in memory
flw f2, 0(x2) # load 0xffd9bd4f from memory into f2
fmul.s f8, f8, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0x94671407 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6bf33998 # load x3 with value 0x6bf33998
sw x3, 0(x2) # store 0x6bf33998 in memory
flw f9, 0(x2) # load 0x6bf33998 from memory into f9
li x3, 0x97aff4e0 # load x3 with value 0x97aff4e0
sw x3, 0(x2) # store 0x97aff4e0 in memory
flw f26, 0(x2) # load 0x97aff4e0 from memory into f26
fmul.s f9, f9, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0x6edde1bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9096a22a # load x3 with value 0x9096a22a
sw x3, 0(x2) # store 0x9096a22a in memory
flw f10, 0(x2) # load 0x9096a22a from memory into f10
li x3, 0xef2dcca6 # load x3 with value 0xef2dcca6
sw x3, 0(x2) # store 0xef2dcca6 in memory
flw f1, 0(x2) # load 0xef2dcca6 from memory into f1
fmul.s f10, f10, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0xa4ea6e3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xddddff0e # load x3 with value 0xddddff0e
sw x3, 0(x2) # store 0xddddff0e in memory
flw f11, 0(x2) # load 0xddddff0e from memory into f11
li x3, 0xd72fedcd # load x3 with value 0xd72fedcd
sw x3, 0(x2) # store 0xd72fedcd in memory
flw f17, 0(x2) # load 0xd72fedcd from memory into f17
fmul.s f11, f11, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0x294431f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x86abd8c8 # load x3 with value 0x86abd8c8
sw x3, 0(x2) # store 0x86abd8c8 in memory
flw f12, 0(x2) # load 0x86abd8c8 from memory into f12
li x3, 0xe4fed6e1 # load x3 with value 0xe4fed6e1
sw x3, 0(x2) # store 0xe4fed6e1 in memory
flw f21, 0(x2) # load 0xe4fed6e1 from memory into f21
fmul.s f12, f12, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0xf8bfdde4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6623474d # load x3 with value 0x6623474d
sw x3, 0(x2) # store 0x6623474d in memory
flw f13, 0(x2) # load 0x6623474d from memory into f13
li x3, 0xc75f2c08 # load x3 with value 0xc75f2c08
sw x3, 0(x2) # store 0xc75f2c08 in memory
flw f7, 0(x2) # load 0xc75f2c08 from memory into f7
fmul.s f13, f13, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0xee431136 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9f83b6f7 # load x3 with value 0x9f83b6f7
sw x3, 0(x2) # store 0x9f83b6f7 in memory
flw f14, 0(x2) # load 0x9f83b6f7 from memory into f14
li x3, 0x336683e6 # load x3 with value 0x336683e6
sw x3, 0(x2) # store 0x336683e6 in memory
flw f18, 0(x2) # load 0x336683e6 from memory into f18
fmul.s f14, f14, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0x2691044f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6b60eeaa # load x3 with value 0x6b60eeaa
sw x3, 0(x2) # store 0x6b60eeaa in memory
flw f15, 0(x2) # load 0x6b60eeaa from memory into f15
li x3, 0x7f5c3657 # load x3 with value 0x7f5c3657
sw x3, 0(x2) # store 0x7f5c3657 in memory
flw f14, 0(x2) # load 0x7f5c3657 from memory into f14
fmul.s f15, f15, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0xad837679 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x91b80b69 # load x3 with value 0x91b80b69
sw x3, 0(x2) # store 0x91b80b69 in memory
flw f16, 0(x2) # load 0x91b80b69 from memory into f16
li x3, 0xfd2c9791 # load x3 with value 0xfd2c9791
sw x3, 0(x2) # store 0xfd2c9791 in memory
flw f1, 0(x2) # load 0xfd2c9791 from memory into f1
fmul.s f16, f16, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0x74924129 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfaf27e78 # load x3 with value 0xfaf27e78
sw x3, 0(x2) # store 0xfaf27e78 in memory
flw f17, 0(x2) # load 0xfaf27e78 from memory into f17
li x3, 0xd10a2d52 # load x3 with value 0xd10a2d52
sw x3, 0(x2) # store 0xd10a2d52 in memory
flw f24, 0(x2) # load 0xd10a2d52 from memory into f24
fmul.s f17, f17, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0x41d2f3f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5b39c0eb # load x3 with value 0x5b39c0eb
sw x3, 0(x2) # store 0x5b39c0eb in memory
flw f18, 0(x2) # load 0x5b39c0eb from memory into f18
li x3, 0x48cd18ab # load x3 with value 0x48cd18ab
sw x3, 0(x2) # store 0x48cd18ab in memory
flw f15, 0(x2) # load 0x48cd18ab from memory into f15
fmul.s f18, f18, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0x4b3e9ca2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2e63faff # load x3 with value 0x2e63faff
sw x3, 0(x2) # store 0x2e63faff in memory
flw f19, 0(x2) # load 0x2e63faff from memory into f19
li x3, 0x7dfadc0a # load x3 with value 0x7dfadc0a
sw x3, 0(x2) # store 0x7dfadc0a in memory
flw f8, 0(x2) # load 0x7dfadc0a from memory into f8
fmul.s f19, f19, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0x1829c5b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x39414566 # load x3 with value 0x39414566
sw x3, 0(x2) # store 0x39414566 in memory
flw f20, 0(x2) # load 0x39414566 from memory into f20
li x3, 0xdfac8a7e # load x3 with value 0xdfac8a7e
sw x3, 0(x2) # store 0xdfac8a7e in memory
flw f16, 0(x2) # load 0xdfac8a7e from memory into f16
fmul.s f20, f20, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0x8cb149fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdbbc3010 # load x3 with value 0xdbbc3010
sw x3, 0(x2) # store 0xdbbc3010 in memory
flw f21, 0(x2) # load 0xdbbc3010 from memory into f21
li x3, 0xf6101030 # load x3 with value 0xf6101030
sw x3, 0(x2) # store 0xf6101030 in memory
flw f13, 0(x2) # load 0xf6101030 from memory into f13
fmul.s f21, f21, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0xb212e363 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3a71bb21 # load x3 with value 0x3a71bb21
sw x3, 0(x2) # store 0x3a71bb21 in memory
flw f22, 0(x2) # load 0x3a71bb21 from memory into f22
li x3, 0xdb417b7c # load x3 with value 0xdb417b7c
sw x3, 0(x2) # store 0xdb417b7c in memory
flw f31, 0(x2) # load 0xdb417b7c from memory into f31
fmul.s f22, f22, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0xfcfe3774 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x99ed50e2 # load x3 with value 0x99ed50e2
sw x3, 0(x2) # store 0x99ed50e2 in memory
flw f23, 0(x2) # load 0x99ed50e2 from memory into f23
li x3, 0x0514160e # load x3 with value 0x0514160e
sw x3, 0(x2) # store 0x0514160e in memory
flw f27, 0(x2) # load 0x0514160e from memory into f27
fmul.s f23, f23, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0x1ef23407 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x20f04f34 # load x3 with value 0x20f04f34
sw x3, 0(x2) # store 0x20f04f34 in memory
flw f24, 0(x2) # load 0x20f04f34 from memory into f24
li x3, 0x61325fd2 # load x3 with value 0x61325fd2
sw x3, 0(x2) # store 0x61325fd2 in memory
flw f16, 0(x2) # load 0x61325fd2 from memory into f16
fmul.s f24, f24, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0x6c955e69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x635f1b5c # load x3 with value 0x635f1b5c
sw x3, 0(x2) # store 0x635f1b5c in memory
flw f25, 0(x2) # load 0x635f1b5c from memory into f25
li x3, 0xe5abe25f # load x3 with value 0xe5abe25f
sw x3, 0(x2) # store 0xe5abe25f in memory
flw f8, 0(x2) # load 0xe5abe25f from memory into f8
fmul.s f25, f25, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0xb267a591 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x565cf6f7 # load x3 with value 0x565cf6f7
sw x3, 0(x2) # store 0x565cf6f7 in memory
flw f26, 0(x2) # load 0x565cf6f7 from memory into f26
li x3, 0xbafbcdcd # load x3 with value 0xbafbcdcd
sw x3, 0(x2) # store 0xbafbcdcd in memory
flw f17, 0(x2) # load 0xbafbcdcd from memory into f17
fmul.s f26, f26, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0x033a4404 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f861d14 # load x3 with value 0x3f861d14
sw x3, 0(x2) # store 0x3f861d14 in memory
flw f27, 0(x2) # load 0x3f861d14 from memory into f27
li x3, 0x30983cc6 # load x3 with value 0x30983cc6
sw x3, 0(x2) # store 0x30983cc6 in memory
flw f29, 0(x2) # load 0x30983cc6 from memory into f29
fmul.s f27, f27, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0xb27b02d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xad465939 # load x3 with value 0xad465939
sw x3, 0(x2) # store 0xad465939 in memory
flw f28, 0(x2) # load 0xad465939 from memory into f28
li x3, 0x5a4fa94e # load x3 with value 0x5a4fa94e
sw x3, 0(x2) # store 0x5a4fa94e in memory
flw f14, 0(x2) # load 0x5a4fa94e from memory into f14
fmul.s f28, f28, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0xe9469d95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6f55fb2d # load x3 with value 0x6f55fb2d
sw x3, 0(x2) # store 0x6f55fb2d in memory
flw f29, 0(x2) # load 0x6f55fb2d from memory into f29
li x3, 0x662b5bda # load x3 with value 0x662b5bda
sw x3, 0(x2) # store 0x662b5bda in memory
flw f9, 0(x2) # load 0x662b5bda from memory into f9
fmul.s f29, f29, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0xbeff5865 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x190b8c02 # load x3 with value 0x190b8c02
sw x3, 0(x2) # store 0x190b8c02 in memory
flw f30, 0(x2) # load 0x190b8c02 from memory into f30
li x3, 0xa325b9ca # load x3 with value 0xa325b9ca
sw x3, 0(x2) # store 0xa325b9ca in memory
flw f24, 0(x2) # load 0xa325b9ca from memory into f24
fmul.s f30, f30, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0x23a88e63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb6bbb9e8 # load x3 with value 0xb6bbb9e8
sw x3, 0(x2) # store 0xb6bbb9e8 in memory
flw f31, 0(x2) # load 0xb6bbb9e8 from memory into f31
li x3, 0x24db021b # load x3 with value 0x24db021b
sw x3, 0(x2) # store 0x24db021b in memory
flw f26, 0(x2) # load 0x24db021b from memory into f26
fmul.s f31, f31, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
li x0, 0x3eab900a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x44c894b4 # load x3 with value 0x44c894b4
sw x3, 0(x2) # store 0x44c894b4 in memory
flw f25, 0(x2) # load 0x44c894b4 from memory into f25
li x3, 0x20cb08b9 # load x3 with value 0x20cb08b9
sw x3, 0(x2) # store 0x20cb08b9 in memory
flw f0, 0(x2) # load 0x20cb08b9 from memory into f0
fmul.s f0, f25, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
li x1, 0x0dcf5fc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcfce2445 # load x3 with value 0xcfce2445
sw x3, 0(x2) # store 0xcfce2445 in memory
flw f10, 0(x2) # load 0xcfce2445 from memory into f10
li x3, 0xab516c70 # load x3 with value 0xab516c70
sw x3, 0(x2) # store 0xab516c70 in memory
flw f1, 0(x2) # load 0xab516c70 from memory into f1
fmul.s f1, f10, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
li x2, 0xf3915b03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00420eb8 # load x3 with value 0x00420eb8
sw x3, 0(x2) # store 0x00420eb8 in memory
flw f30, 0(x2) # load 0x00420eb8 from memory into f30
li x3, 0x8cedacea # load x3 with value 0x8cedacea
sw x3, 0(x2) # store 0x8cedacea in memory
flw f2, 0(x2) # load 0x8cedacea from memory into f2
fmul.s f2, f30, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
li x3, 0x1a816b19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xef7560ed # load x3 with value 0xef7560ed
sw x3, 0(x2) # store 0xef7560ed in memory
flw f7, 0(x2) # load 0xef7560ed from memory into f7
li x3, 0x482b1176 # load x3 with value 0x482b1176
sw x3, 0(x2) # store 0x482b1176 in memory
flw f3, 0(x2) # load 0x482b1176 from memory into f3
fmul.s f3, f7, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
li x4, 0x5730cd6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1bc36ac5 # load x3 with value 0x1bc36ac5
sw x3, 0(x2) # store 0x1bc36ac5 in memory
flw f24, 0(x2) # load 0x1bc36ac5 from memory into f24
li x3, 0x4daf0a8f # load x3 with value 0x4daf0a8f
sw x3, 0(x2) # store 0x4daf0a8f in memory
flw f4, 0(x2) # load 0x4daf0a8f from memory into f4
fmul.s f4, f24, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
li x5, 0x9d276eff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0e4e9aaa # load x3 with value 0x0e4e9aaa
sw x3, 0(x2) # store 0x0e4e9aaa in memory
flw f14, 0(x2) # load 0x0e4e9aaa from memory into f14
li x3, 0xe3dab47e # load x3 with value 0xe3dab47e
sw x3, 0(x2) # store 0xe3dab47e in memory
flw f5, 0(x2) # load 0xe3dab47e from memory into f5
fmul.s f5, f14, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
li x6, 0x653d0e8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0c6a9e3 # load x3 with value 0xc0c6a9e3
sw x3, 0(x2) # store 0xc0c6a9e3 in memory
flw f31, 0(x2) # load 0xc0c6a9e3 from memory into f31
li x3, 0xb5f544bc # load x3 with value 0xb5f544bc
sw x3, 0(x2) # store 0xb5f544bc in memory
flw f6, 0(x2) # load 0xb5f544bc from memory into f6
fmul.s f6, f31, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
li x7, 0xcc98de62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf1ce46cb # load x3 with value 0xf1ce46cb
sw x3, 0(x2) # store 0xf1ce46cb in memory
flw f9, 0(x2) # load 0xf1ce46cb from memory into f9
li x3, 0xcec96468 # load x3 with value 0xcec96468
sw x3, 0(x2) # store 0xcec96468 in memory
flw f7, 0(x2) # load 0xcec96468 from memory into f7
fmul.s f7, f9, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
li x8, 0x1f9ff7cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x669b4034 # load x3 with value 0x669b4034
sw x3, 0(x2) # store 0x669b4034 in memory
flw f4, 0(x2) # load 0x669b4034 from memory into f4
li x3, 0x0085caf9 # load x3 with value 0x0085caf9
sw x3, 0(x2) # store 0x0085caf9 in memory
flw f8, 0(x2) # load 0x0085caf9 from memory into f8
fmul.s f8, f4, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
li x9, 0x45280669 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe2d29940 # load x3 with value 0xe2d29940
sw x3, 0(x2) # store 0xe2d29940 in memory
flw f21, 0(x2) # load 0xe2d29940 from memory into f21
li x3, 0x9a2c9215 # load x3 with value 0x9a2c9215
sw x3, 0(x2) # store 0x9a2c9215 in memory
flw f9, 0(x2) # load 0x9a2c9215 from memory into f9
fmul.s f9, f21, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
li x10, 0x408eb891 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc379831e # load x3 with value 0xc379831e
sw x3, 0(x2) # store 0xc379831e in memory
flw f20, 0(x2) # load 0xc379831e from memory into f20
li x3, 0x97fa8f8d # load x3 with value 0x97fa8f8d
sw x3, 0(x2) # store 0x97fa8f8d in memory
flw f10, 0(x2) # load 0x97fa8f8d from memory into f10
fmul.s f10, f20, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
li x11, 0x9df9d480 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x27b0e926 # load x3 with value 0x27b0e926
sw x3, 0(x2) # store 0x27b0e926 in memory
flw f11, 0(x2) # load 0x27b0e926 from memory into f11
li x3, 0x6323a6bd # load x3 with value 0x6323a6bd
sw x3, 0(x2) # store 0x6323a6bd in memory
flw f11, 0(x2) # load 0x6323a6bd from memory into f11
fmul.s f11, f11, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
li x12, 0x3a1331b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x604ab718 # load x3 with value 0x604ab718
sw x3, 0(x2) # store 0x604ab718 in memory
flw f5, 0(x2) # load 0x604ab718 from memory into f5
li x3, 0x5ee3a525 # load x3 with value 0x5ee3a525
sw x3, 0(x2) # store 0x5ee3a525 in memory
flw f12, 0(x2) # load 0x5ee3a525 from memory into f12
fmul.s f12, f5, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
li x13, 0xf4a0c6a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb4927bff # load x3 with value 0xb4927bff
sw x3, 0(x2) # store 0xb4927bff in memory
flw f18, 0(x2) # load 0xb4927bff from memory into f18
li x3, 0x59cd91ae # load x3 with value 0x59cd91ae
sw x3, 0(x2) # store 0x59cd91ae in memory
flw f13, 0(x2) # load 0x59cd91ae from memory into f13
fmul.s f13, f18, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
li x14, 0xe8c4a568 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9d2ea740 # load x3 with value 0x9d2ea740
sw x3, 0(x2) # store 0x9d2ea740 in memory
flw f18, 0(x2) # load 0x9d2ea740 from memory into f18
li x3, 0x304c4e48 # load x3 with value 0x304c4e48
sw x3, 0(x2) # store 0x304c4e48 in memory
flw f14, 0(x2) # load 0x304c4e48 from memory into f14
fmul.s f14, f18, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
li x15, 0xcb69ee43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6bbd4c30 # load x3 with value 0x6bbd4c30
sw x3, 0(x2) # store 0x6bbd4c30 in memory
flw f2, 0(x2) # load 0x6bbd4c30 from memory into f2
li x3, 0x81da315f # load x3 with value 0x81da315f
sw x3, 0(x2) # store 0x81da315f in memory
flw f15, 0(x2) # load 0x81da315f from memory into f15
fmul.s f15, f2, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
li x16, 0x8dd71fd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1b865e55 # load x3 with value 0x1b865e55
sw x3, 0(x2) # store 0x1b865e55 in memory
flw f13, 0(x2) # load 0x1b865e55 from memory into f13
li x3, 0x98826c3f # load x3 with value 0x98826c3f
sw x3, 0(x2) # store 0x98826c3f in memory
flw f16, 0(x2) # load 0x98826c3f from memory into f16
fmul.s f16, f13, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
li x17, 0x82e46895 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x97090280 # load x3 with value 0x97090280
sw x3, 0(x2) # store 0x97090280 in memory
flw f7, 0(x2) # load 0x97090280 from memory into f7
li x3, 0x0fd0843f # load x3 with value 0x0fd0843f
sw x3, 0(x2) # store 0x0fd0843f in memory
flw f17, 0(x2) # load 0x0fd0843f from memory into f17
fmul.s f17, f7, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
li x18, 0x7d0f41a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdbfb5a65 # load x3 with value 0xdbfb5a65
sw x3, 0(x2) # store 0xdbfb5a65 in memory
flw f17, 0(x2) # load 0xdbfb5a65 from memory into f17
li x3, 0x5d676e99 # load x3 with value 0x5d676e99
sw x3, 0(x2) # store 0x5d676e99 in memory
flw f18, 0(x2) # load 0x5d676e99 from memory into f18
fmul.s f18, f17, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
li x19, 0xdd1b0282 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x69dada73 # load x3 with value 0x69dada73
sw x3, 0(x2) # store 0x69dada73 in memory
flw f23, 0(x2) # load 0x69dada73 from memory into f23
li x3, 0xd00d23b3 # load x3 with value 0xd00d23b3
sw x3, 0(x2) # store 0xd00d23b3 in memory
flw f19, 0(x2) # load 0xd00d23b3 from memory into f19
fmul.s f19, f23, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
li x20, 0x10f18614 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa79469f6 # load x3 with value 0xa79469f6
sw x3, 0(x2) # store 0xa79469f6 in memory
flw f7, 0(x2) # load 0xa79469f6 from memory into f7
li x3, 0xf01d5d18 # load x3 with value 0xf01d5d18
sw x3, 0(x2) # store 0xf01d5d18 in memory
flw f20, 0(x2) # load 0xf01d5d18 from memory into f20
fmul.s f20, f7, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
li x21, 0x951e65a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb0b566d1 # load x3 with value 0xb0b566d1
sw x3, 0(x2) # store 0xb0b566d1 in memory
flw f3, 0(x2) # load 0xb0b566d1 from memory into f3
li x3, 0x27da3133 # load x3 with value 0x27da3133
sw x3, 0(x2) # store 0x27da3133 in memory
flw f21, 0(x2) # load 0x27da3133 from memory into f21
fmul.s f21, f3, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
li x22, 0x623b233e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6747af88 # load x3 with value 0x6747af88
sw x3, 0(x2) # store 0x6747af88 in memory
flw f6, 0(x2) # load 0x6747af88 from memory into f6
li x3, 0xe4ac6c6d # load x3 with value 0xe4ac6c6d
sw x3, 0(x2) # store 0xe4ac6c6d in memory
flw f22, 0(x2) # load 0xe4ac6c6d from memory into f22
fmul.s f22, f6, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
li x23, 0x0c05c5e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1264d136 # load x3 with value 0x1264d136
sw x3, 0(x2) # store 0x1264d136 in memory
flw f22, 0(x2) # load 0x1264d136 from memory into f22
li x3, 0xb0b2ae81 # load x3 with value 0xb0b2ae81
sw x3, 0(x2) # store 0xb0b2ae81 in memory
flw f23, 0(x2) # load 0xb0b2ae81 from memory into f23
fmul.s f23, f22, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
li x24, 0x9a361eb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a2f27ba # load x3 with value 0x5a2f27ba
sw x3, 0(x2) # store 0x5a2f27ba in memory
flw f25, 0(x2) # load 0x5a2f27ba from memory into f25
li x3, 0x3e2301db # load x3 with value 0x3e2301db
sw x3, 0(x2) # store 0x3e2301db in memory
flw f24, 0(x2) # load 0x3e2301db from memory into f24
fmul.s f24, f25, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
li x25, 0xc13ccd5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x14cebdef # load x3 with value 0x14cebdef
sw x3, 0(x2) # store 0x14cebdef in memory
flw f21, 0(x2) # load 0x14cebdef from memory into f21
li x3, 0x62b74c12 # load x3 with value 0x62b74c12
sw x3, 0(x2) # store 0x62b74c12 in memory
flw f25, 0(x2) # load 0x62b74c12 from memory into f25
fmul.s f25, f21, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
li x26, 0x58424e96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fac423e # load x3 with value 0x7fac423e
sw x3, 0(x2) # store 0x7fac423e in memory
flw f27, 0(x2) # load 0x7fac423e from memory into f27
li x3, 0xd75180d2 # load x3 with value 0xd75180d2
sw x3, 0(x2) # store 0xd75180d2 in memory
flw f26, 0(x2) # load 0xd75180d2 from memory into f26
fmul.s f26, f27, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
li x27, 0xaafbfa26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x146fa01b # load x3 with value 0x146fa01b
sw x3, 0(x2) # store 0x146fa01b in memory
flw f18, 0(x2) # load 0x146fa01b from memory into f18
li x3, 0xf926c6ae # load x3 with value 0xf926c6ae
sw x3, 0(x2) # store 0xf926c6ae in memory
flw f27, 0(x2) # load 0xf926c6ae from memory into f27
fmul.s f27, f18, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
li x28, 0x7ee876cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2e90f63c # load x3 with value 0x2e90f63c
sw x3, 0(x2) # store 0x2e90f63c in memory
flw f4, 0(x2) # load 0x2e90f63c from memory into f4
li x3, 0xecb2c031 # load x3 with value 0xecb2c031
sw x3, 0(x2) # store 0xecb2c031 in memory
flw f28, 0(x2) # load 0xecb2c031 from memory into f28
fmul.s f28, f4, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
li x29, 0xeb364742 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd708fa12 # load x3 with value 0xd708fa12
sw x3, 0(x2) # store 0xd708fa12 in memory
flw f4, 0(x2) # load 0xd708fa12 from memory into f4
li x3, 0xa338b6ce # load x3 with value 0xa338b6ce
sw x3, 0(x2) # store 0xa338b6ce in memory
flw f29, 0(x2) # load 0xa338b6ce from memory into f29
fmul.s f29, f4, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
li x30, 0x845fff09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7af2e9f8 # load x3 with value 0x7af2e9f8
sw x3, 0(x2) # store 0x7af2e9f8 in memory
flw f7, 0(x2) # load 0x7af2e9f8 from memory into f7
li x3, 0xa3947cb5 # load x3 with value 0xa3947cb5
sw x3, 0(x2) # store 0xa3947cb5 in memory
flw f30, 0(x2) # load 0xa3947cb5 from memory into f30
fmul.s f30, f7, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
li x31, 0xa524d195 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa94ce323 # load x3 with value 0xa94ce323
sw x3, 0(x2) # store 0xa94ce323 in memory
flw f10, 0(x2) # load 0xa94ce323 from memory into f10
li x3, 0xc0a68bf0 # load x3 with value 0xc0a68bf0
sw x3, 0(x2) # store 0xc0a68bf0 in memory
flw f31, 0(x2) # load 0xc0a68bf0 from memory into f31
fmul.s f31, f10, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x4, 0x839af437 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
li x3, 0x1a4166c0 # load x3 with value 0x1a4166c0
sw x3, 0(x2) # store 0x1a4166c0 in memory
flw f12, 0(x2) # load 0x1a4166c0 from memory into f12
fmul.s f4, f15, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
li x22, 0x31149bde # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f27, 0(x2) # load 0x80000000 from memory into f27
li x3, 0x772a577a # load x3 with value 0x772a577a
sw x3, 0(x2) # store 0x772a577a in memory
flw f13, 0(x2) # load 0x772a577a from memory into f13
fmul.s f22, f27, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
li x18, 0x8222d261 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f4, 0(x2) # load 0x3f800000 from memory into f4
li x3, 0x5b526692 # load x3 with value 0x5b526692
sw x3, 0(x2) # store 0x5b526692 in memory
flw f10, 0(x2) # load 0x5b526692 from memory into f10
fmul.s f18, f4, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
li x25, 0x597b6138 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f24, 0(x2) # load 0xbf800000 from memory into f24
li x3, 0x0c545243 # load x3 with value 0x0c545243
sw x3, 0(x2) # store 0x0c545243 in memory
flw f23, 0(x2) # load 0x0c545243 from memory into f23
fmul.s f25, f24, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
li x30, 0x993498cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f24, 0(x2) # load 0x3fc00000 from memory into f24
li x3, 0x2be3aca1 # load x3 with value 0x2be3aca1
sw x3, 0(x2) # store 0x2be3aca1 in memory
flw f6, 0(x2) # load 0x2be3aca1 from memory into f6
fmul.s f30, f24, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
li x11, 0x28f0fd8a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f24, 0(x2) # load 0xbfc00000 from memory into f24
li x3, 0x929c4cf9 # load x3 with value 0x929c4cf9
sw x3, 0(x2) # store 0x929c4cf9 in memory
flw f14, 0(x2) # load 0x929c4cf9 from memory into f14
fmul.s f11, f24, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
li x7, 0x1bcd2e0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f4, 0(x2) # load 0x40000000 from memory into f4
li x3, 0x5c0bcc56 # load x3 with value 0x5c0bcc56
sw x3, 0(x2) # store 0x5c0bcc56 in memory
flw f18, 0(x2) # load 0x5c0bcc56 from memory into f18
fmul.s f7, f4, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
li x4, 0xedcc0f87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f20, 0(x2) # load 0xc0000000 from memory into f20
li x3, 0x8ee800e9 # load x3 with value 0x8ee800e9
sw x3, 0(x2) # store 0x8ee800e9 in memory
flw f18, 0(x2) # load 0x8ee800e9 from memory into f18
fmul.s f4, f20, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
li x15, 0x34831d43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f8, 0(x2) # load 0x00800000 from memory into f8
li x3, 0x08bc2308 # load x3 with value 0x08bc2308
sw x3, 0(x2) # store 0x08bc2308 in memory
flw f21, 0(x2) # load 0x08bc2308 from memory into f21
fmul.s f15, f8, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
li x25, 0x69829495 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
li x3, 0x964a4c26 # load x3 with value 0x964a4c26
sw x3, 0(x2) # store 0x964a4c26 in memory
flw f3, 0(x2) # load 0x964a4c26 from memory into f3
fmul.s f25, f28, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
li x31, 0x0fd56a73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f5, 0(x2) # load 0x7f7fffff from memory into f5
li x3, 0xc16747c8 # load x3 with value 0xc16747c8
sw x3, 0(x2) # store 0xc16747c8 in memory
flw f14, 0(x2) # load 0xc16747c8 from memory into f14
fmul.s f31, f5, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
li x11, 0x0d401890 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f24, 0(x2) # load 0xff7fffff from memory into f24
li x3, 0x57da54e8 # load x3 with value 0x57da54e8
sw x3, 0(x2) # store 0x57da54e8 in memory
flw f14, 0(x2) # load 0x57da54e8 from memory into f14
fmul.s f11, f24, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
li x31, 0xd081668d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f1, 0(x2) # load 0x007fffff from memory into f1
li x3, 0x0e98aeba # load x3 with value 0x0e98aeba
sw x3, 0(x2) # store 0x0e98aeba in memory
flw f6, 0(x2) # load 0x0e98aeba from memory into f6
fmul.s f31, f1, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
li x18, 0x036eac45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f22, 0(x2) # load 0x807fffff from memory into f22
li x3, 0x7a133381 # load x3 with value 0x7a133381
sw x3, 0(x2) # store 0x7a133381 in memory
flw f12, 0(x2) # load 0x7a133381 from memory into f12
fmul.s f18, f22, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
li x1, 0xa69dac22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
li x3, 0x505abebe # load x3 with value 0x505abebe
sw x3, 0(x2) # store 0x505abebe in memory
flw f5, 0(x2) # load 0x505abebe from memory into f5
fmul.s f1, f26, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
li x6, 0x558ddd1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f16, 0(x2) # load 0x80400000 from memory into f16
li x3, 0x352b84df # load x3 with value 0x352b84df
sw x3, 0(x2) # store 0x352b84df in memory
flw f19, 0(x2) # load 0x352b84df from memory into f19
fmul.s f6, f16, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x31, 0x891af8b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f16, 0(x2) # load 0x00000001 from memory into f16
li x3, 0x2cd49f09 # load x3 with value 0x2cd49f09
sw x3, 0(x2) # store 0x2cd49f09 in memory
flw f9, 0(x2) # load 0x2cd49f09 from memory into f9
fmul.s f31, f16, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
li x21, 0xa2a53c30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f2, 0(x2) # load 0x80000001 from memory into f2
li x3, 0x3dc6f65a # load x3 with value 0x3dc6f65a
sw x3, 0(x2) # store 0x3dc6f65a in memory
flw f7, 0(x2) # load 0x3dc6f65a from memory into f7
fmul.s f21, f2, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
li x15, 0x352db907 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f4, 0(x2) # load 0x7f800000 from memory into f4
li x3, 0x80a47989 # load x3 with value 0x80a47989
sw x3, 0(x2) # store 0x80a47989 in memory
flw f19, 0(x2) # load 0x80a47989 from memory into f19
fmul.s f15, f4, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
li x25, 0xa84cbcad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f8, 0(x2) # load 0xff800000 from memory into f8
li x3, 0xd6be8d8c # load x3 with value 0xd6be8d8c
sw x3, 0(x2) # store 0xd6be8d8c in memory
flw f20, 0(x2) # load 0xd6be8d8c from memory into f20
fmul.s f25, f8, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
li x18, 0x1ba47155 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f28, 0(x2) # load 0x7fc00000 from memory into f28
li x3, 0xb1a920ba # load x3 with value 0xb1a920ba
sw x3, 0(x2) # store 0xb1a920ba in memory
flw f7, 0(x2) # load 0xb1a920ba from memory into f7
fmul.s f18, f28, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
li x28, 0xb130359c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
li x3, 0x383a97f1 # load x3 with value 0x383a97f1
sw x3, 0(x2) # store 0x383a97f1 in memory
flw f30, 0(x2) # load 0x383a97f1 from memory into f30
fmul.s f28, f2, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
li x3, 0xd678ab7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f4, 0(x2) # load 0x7f800001 from memory into f4
li x3, 0x7a08b1f1 # load x3 with value 0x7a08b1f1
sw x3, 0(x2) # store 0x7a08b1f1 in memory
flw f18, 0(x2) # load 0x7a08b1f1 from memory into f18
fmul.s f3, f4, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
li x8, 0x9eb72e15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f23, 0(x2) # load 0x7fbfffff from memory into f23
li x3, 0x30ed39f0 # load x3 with value 0x30ed39f0
sw x3, 0(x2) # store 0x30ed39f0 in memory
flw f27, 0(x2) # load 0x30ed39f0 from memory into f27
fmul.s f8, f23, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
li x27, 0xd9bbe7b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f19, 0(x2) # load 0x7ef8654f from memory into f19
li x3, 0xdb1f9ddd # load x3 with value 0xdb1f9ddd
sw x3, 0(x2) # store 0xdb1f9ddd in memory
flw f26, 0(x2) # load 0xdb1f9ddd from memory into f26
fmul.s f27, f19, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
li x13, 0x18ca958c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f8, 0(x2) # load 0x813d9ab0 from memory into f8
li x3, 0x823873e1 # load x3 with value 0x823873e1
sw x3, 0(x2) # store 0x823873e1 in memory
flw f11, 0(x2) # load 0x823873e1 from memory into f11
fmul.s f13, f8, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x6, 0x023546bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6d11ad15 # load x3 with value 0x6d11ad15
sw x3, 0(x2) # store 0x6d11ad15 in memory
flw f23, 0(x2) # load 0x6d11ad15 from memory into f23
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f8, 0(x2) # load 0x00000000 from memory into f8
fmul.s f6, f23, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000000)
li x24, 0x18dc64c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1ccfdf5d # load x3 with value 0x1ccfdf5d
sw x3, 0(x2) # store 0x1ccfdf5d in memory
flw f31, 0(x2) # load 0x1ccfdf5d from memory into f31
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f21, 0(x2) # load 0x80000000 from memory into f21
fmul.s f24, f31, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
li x16, 0xa53b5c0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x99bdcabf # load x3 with value 0x99bdcabf
sw x3, 0(x2) # store 0x99bdcabf in memory
flw f31, 0(x2) # load 0x99bdcabf from memory into f31
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f21, 0(x2) # load 0x3f800000 from memory into f21
fmul.s f16, f31, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbf800000)
li x25, 0xcf2578a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9e1d433e # load x3 with value 0x9e1d433e
sw x3, 0(x2) # store 0x9e1d433e in memory
flw f5, 0(x2) # load 0x9e1d433e from memory into f5
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f31, 0(x2) # load 0xbf800000 from memory into f31
fmul.s f25, f5, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3fc00000)
li x30, 0x530f0551 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf7608f2b # load x3 with value 0xf7608f2b
sw x3, 0(x2) # store 0xf7608f2b in memory
flw f27, 0(x2) # load 0xf7608f2b from memory into f27
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f23, 0(x2) # load 0x3fc00000 from memory into f23
fmul.s f30, f27, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbfc00000)
li x15, 0xe64b1be5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8a497445 # load x3 with value 0x8a497445
sw x3, 0(x2) # store 0x8a497445 in memory
flw f31, 0(x2) # load 0x8a497445 from memory into f31
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f12, 0(x2) # load 0xbfc00000 from memory into f12
fmul.s f15, f31, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x40000000)
li x6, 0x6169fae7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x462c9eb8 # load x3 with value 0x462c9eb8
sw x3, 0(x2) # store 0x462c9eb8 in memory
flw f16, 0(x2) # load 0x462c9eb8 from memory into f16
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f4, 0(x2) # load 0x40000000 from memory into f4
fmul.s f6, f16, f4 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0000000)
li x16, 0x1d92a41a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0281a230 # load x3 with value 0x0281a230
sw x3, 0(x2) # store 0x0281a230 in memory
flw f21, 0(x2) # load 0x0281a230 from memory into f21
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f4, 0(x2) # load 0xc0000000 from memory into f4
fmul.s f16, f21, f4 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800000)
li x29, 0x9e6f1b10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd1e49d83 # load x3 with value 0xd1e49d83
sw x3, 0(x2) # store 0xd1e49d83 in memory
flw f8, 0(x2) # load 0xd1e49d83 from memory into f8
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f2, 0(x2) # load 0x00800000 from memory into f2
fmul.s f29, f8, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80800000)
li x15, 0xa63bab6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x707149be # load x3 with value 0x707149be
sw x3, 0(x2) # store 0x707149be in memory
flw f16, 0(x2) # load 0x707149be from memory into f16
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f4, 0(x2) # load 0x80800000 from memory into f4
fmul.s f15, f16, f4 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f7fffff)
li x23, 0xb09518ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80d28d8b # load x3 with value 0x80d28d8b
sw x3, 0(x2) # store 0x80d28d8b in memory
flw f28, 0(x2) # load 0x80d28d8b from memory into f28
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f19, 0(x2) # load 0x7f7fffff from memory into f19
fmul.s f23, f28, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff7fffff)
li x17, 0x27c9b566 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x90e04991 # load x3 with value 0x90e04991
sw x3, 0(x2) # store 0x90e04991 in memory
flw f24, 0(x2) # load 0x90e04991 from memory into f24
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f15, 0(x2) # load 0xff7fffff from memory into f15
fmul.s f17, f24, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffff)
li x21, 0x77ddc3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1ec55804 # load x3 with value 0x1ec55804
sw x3, 0(x2) # store 0x1ec55804 in memory
flw f17, 0(x2) # load 0x1ec55804 from memory into f17
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f14, 0(x2) # load 0x007fffff from memory into f14
fmul.s f21, f17, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x807fffff)
li x21, 0x2e8739b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdd0f33a8 # load x3 with value 0xdd0f33a8
sw x3, 0(x2) # store 0xdd0f33a8 in memory
flw f27, 0(x2) # load 0xdd0f33a8 from memory into f27
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f10, 0(x2) # load 0x807fffff from memory into f10
fmul.s f21, f27, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400000)
li x5, 0x2498ebba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeb180ef9 # load x3 with value 0xeb180ef9
sw x3, 0(x2) # store 0xeb180ef9 in memory
flw f14, 0(x2) # load 0xeb180ef9 from memory into f14
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f29, 0(x2) # load 0x00400000 from memory into f29
fmul.s f5, f14, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80400000)
li x22, 0xbea0da89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x468df367 # load x3 with value 0x468df367
sw x3, 0(x2) # store 0x468df367 in memory
flw f28, 0(x2) # load 0x468df367 from memory into f28
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f10, 0(x2) # load 0x80400000 from memory into f10
fmul.s f22, f28, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x19, 0x2c540605 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf45914cc # load x3 with value 0xf45914cc
sw x3, 0(x2) # store 0xf45914cc in memory
flw f15, 0(x2) # load 0xf45914cc from memory into f15
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
fmul.s f19, f15, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000001)
li x21, 0xa0f3aefc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd9b6d4ef # load x3 with value 0xd9b6d4ef
sw x3, 0(x2) # store 0xd9b6d4ef in memory
flw f30, 0(x2) # load 0xd9b6d4ef from memory into f30
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f26, 0(x2) # load 0x80000001 from memory into f26
fmul.s f21, f30, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800000)
li x11, 0xa37cff64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc02fafe8 # load x3 with value 0xc02fafe8
sw x3, 0(x2) # store 0xc02fafe8 in memory
flw f22, 0(x2) # load 0xc02fafe8 from memory into f22
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f28, 0(x2) # load 0x7f800000 from memory into f28
fmul.s f11, f22, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff800000)
li x14, 0x9a5f7e2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd5a20666 # load x3 with value 0xd5a20666
sw x3, 0(x2) # store 0xd5a20666 in memory
flw f22, 0(x2) # load 0xd5a20666 from memory into f22
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f4, 0(x2) # load 0xff800000 from memory into f4
fmul.s f14, f22, f4 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fc00000)
li x13, 0xb4900712 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x12377118 # load x3 with value 0x12377118
sw x3, 0(x2) # store 0x12377118 in memory
flw f22, 0(x2) # load 0x12377118 from memory into f22
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
fmul.s f13, f22, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff)
li x13, 0x6099ccec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6e5f4efa # load x3 with value 0x6e5f4efa
sw x3, 0(x2) # store 0x6e5f4efa in memory
flw f9, 0(x2) # load 0x6e5f4efa from memory into f9
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
fmul.s f13, f9, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800001)
li x31, 0x531a7c82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4f2fd0ff # load x3 with value 0x4f2fd0ff
sw x3, 0(x2) # store 0x4f2fd0ff in memory
flw f14, 0(x2) # load 0x4f2fd0ff from memory into f14
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
fmul.s f31, f14, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fbfffff)
li x10, 0x7f07c008 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7a86d338 # load x3 with value 0x7a86d338
sw x3, 0(x2) # store 0x7a86d338 in memory
flw f24, 0(x2) # load 0x7a86d338 from memory into f24
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f20, 0(x2) # load 0x7fbfffff from memory into f20
fmul.s f10, f24, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ef8654f)
li x27, 0x5d8c4a93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcc351fea # load x3 with value 0xcc351fea
sw x3, 0(x2) # store 0xcc351fea in memory
flw f9, 0(x2) # load 0xcc351fea from memory into f9
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f31, 0(x2) # load 0x7ef8654f from memory into f31
fmul.s f27, f9, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x813d9ab0)
li x30, 0x70a53b9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1d70a614 # load x3 with value 0x1d70a614
sw x3, 0(x2) # store 0x1d70a614 in memory
flw f16, 0(x2) # load 0x1d70a614 from memory into f16
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
fmul.s f30, f16, f21 # perform operation

# Testcase cp_frm
li x16, 0xf947008f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x714b4482 # load x3 with value 0x714b4482
sw x3, 0(x2) # store 0x714b4482 in memory
flw f5, 0(x2) # load 0x714b4482 from memory into f5
li x3, 0x447500a5 # load x3 with value 0x447500a5
sw x3, 0(x2) # store 0x447500a5 in memory
flw f12, 0(x2) # load 0x447500a5 from memory into f12
fmul.s f16, f5, f12, dyn # perform operation
fmul.s f16, f5, f12, rdn # perform operation
fmul.s f16, f5, f12, rmm # perform operation
fmul.s f16, f5, f12, rne # perform operation
fmul.s f16, f5, f12, rtz # perform operation
fmul.s f16, f5, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f5, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f5, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f5, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f5, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f5, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
li x14, 0xcf6b807d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f27, 0(x2) # load 0x00000000 from memory into f27
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f30, 0(x2) # load 0x00000000 from memory into f30
fmul.s f14, f27, f30, dyn # perform operation
fmul.s f14, f27, f30, rdn # perform operation
fmul.s f14, f27, f30, rmm # perform operation
fmul.s f14, f27, f30, rne # perform operation
fmul.s f14, f27, f30, rtz # perform operation
fmul.s f14, f27, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f27, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f27, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f27, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f27, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f27, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80000000)
li x6, 0x8822614b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f21, 0(x2) # load 0x80000000 from memory into f21
fmul.s f6, f15, f21, dyn # perform operation
fmul.s f6, f15, f21, rdn # perform operation
fmul.s f6, f15, f21, rmm # perform operation
fmul.s f6, f15, f21, rne # perform operation
fmul.s f6, f15, f21, rtz # perform operation
fmul.s f6, f15, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f15, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f15, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f15, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f15, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f15, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3f800000)
li x21, 0x6453a3c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f25, 0(x2) # load 0x00000000 from memory into f25
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f22, 0(x2) # load 0x3f800000 from memory into f22
fmul.s f21, f25, f22, dyn # perform operation
fmul.s f21, f25, f22, rdn # perform operation
fmul.s f21, f25, f22, rmm # perform operation
fmul.s f21, f25, f22, rne # perform operation
fmul.s f21, f25, f22, rtz # perform operation
fmul.s f21, f25, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f25, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f25, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f25, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f25, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f25, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbf800000)
li x13, 0x956abcb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f16, 0(x2) # load 0xbf800000 from memory into f16
fmul.s f13, f29, f16, dyn # perform operation
fmul.s f13, f29, f16, rdn # perform operation
fmul.s f13, f29, f16, rmm # perform operation
fmul.s f13, f29, f16, rne # perform operation
fmul.s f13, f29, f16, rtz # perform operation
fmul.s f13, f29, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f29, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f29, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f29, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f29, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f29, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3fc00000)
li x19, 0x204ce354 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f26, 0(x2) # load 0x00000000 from memory into f26
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
fmul.s f19, f26, f31, dyn # perform operation
fmul.s f19, f26, f31, rdn # perform operation
fmul.s f19, f26, f31, rmm # perform operation
fmul.s f19, f26, f31, rne # perform operation
fmul.s f19, f26, f31, rtz # perform operation
fmul.s f19, f26, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f26, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f26, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f26, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f26, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f26, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbfc00000)
li x22, 0xecc1f82e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f21, 0(x2) # load 0x00000000 from memory into f21
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f9, 0(x2) # load 0xbfc00000 from memory into f9
fmul.s f22, f21, f9, dyn # perform operation
fmul.s f22, f21, f9, rdn # perform operation
fmul.s f22, f21, f9, rmm # perform operation
fmul.s f22, f21, f9, rne # perform operation
fmul.s f22, f21, f9, rtz # perform operation
fmul.s f22, f21, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f21, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f21, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f21, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f21, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f21, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x40000000)
li x31, 0x9560d803 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f11, 0(x2) # load 0x00000000 from memory into f11
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f9, 0(x2) # load 0x40000000 from memory into f9
fmul.s f31, f11, f9, dyn # perform operation
fmul.s f31, f11, f9, rdn # perform operation
fmul.s f31, f11, f9, rmm # perform operation
fmul.s f31, f11, f9, rne # perform operation
fmul.s f31, f11, f9, rtz # perform operation
fmul.s f31, f11, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f11, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f11, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f11, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f11, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f11, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc0000000)
li x6, 0x3efc8043 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
fmul.s f6, f31, f14, dyn # perform operation
fmul.s f6, f31, f14, rdn # perform operation
fmul.s f6, f31, f14, rmm # perform operation
fmul.s f6, f31, f14, rne # perform operation
fmul.s f6, f31, f14, rtz # perform operation
fmul.s f6, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f31, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x800000)
li x25, 0xc298b0c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
fmul.s f25, f13, f22, dyn # perform operation
fmul.s f25, f13, f22, rdn # perform operation
fmul.s f25, f13, f22, rmm # perform operation
fmul.s f25, f13, f22, rne # perform operation
fmul.s f25, f13, f22, rtz # perform operation
fmul.s f25, f13, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f13, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f13, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f13, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f13, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f13, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80800000)
li x12, 0xe70186d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f26, 0(x2) # load 0x00000000 from memory into f26
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f29, 0(x2) # load 0x80800000 from memory into f29
fmul.s f12, f26, f29, dyn # perform operation
fmul.s f12, f26, f29, rdn # perform operation
fmul.s f12, f26, f29, rmm # perform operation
fmul.s f12, f26, f29, rne # perform operation
fmul.s f12, f26, f29, rtz # perform operation
fmul.s f12, f26, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f26, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f26, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f26, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f26, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f26, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f7fffff)
li x17, 0x2a91f49f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f1, 0(x2) # load 0x7f7fffff from memory into f1
fmul.s f17, f13, f1, dyn # perform operation
fmul.s f17, f13, f1, rdn # perform operation
fmul.s f17, f13, f1, rmm # perform operation
fmul.s f17, f13, f1, rne # perform operation
fmul.s f17, f13, f1, rtz # perform operation
fmul.s f17, f13, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f13, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f13, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f13, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f13, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f13, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xff7fffff)
li x24, 0xa73b1ed7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f7, 0(x2) # load 0x00000000 from memory into f7
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f10, 0(x2) # load 0xff7fffff from memory into f10
fmul.s f24, f7, f10, dyn # perform operation
fmul.s f24, f7, f10, rdn # perform operation
fmul.s f24, f7, f10, rmm # perform operation
fmul.s f24, f7, f10, rne # perform operation
fmul.s f24, f7, f10, rtz # perform operation
fmul.s f24, f7, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f7, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f7, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f7, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f7, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f7, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffff)
li x30, 0x6a2af729 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f1, 0(x2) # load 0x00000000 from memory into f1
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f18, 0(x2) # load 0x007fffff from memory into f18
fmul.s f30, f1, f18, dyn # perform operation
fmul.s f30, f1, f18, rdn # perform operation
fmul.s f30, f1, f18, rmm # perform operation
fmul.s f30, f1, f18, rne # perform operation
fmul.s f30, f1, f18, rtz # perform operation
fmul.s f30, f1, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f1, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f1, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f1, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f1, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f1, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x807fffff)
li x24, 0xc637bf74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f30, 0(x2) # load 0x00000000 from memory into f30
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f31, 0(x2) # load 0x807fffff from memory into f31
fmul.s f24, f30, f31, dyn # perform operation
fmul.s f24, f30, f31, rdn # perform operation
fmul.s f24, f30, f31, rmm # perform operation
fmul.s f24, f30, f31, rne # perform operation
fmul.s f24, f30, f31, rtz # perform operation
fmul.s f24, f30, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f30, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f30, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f30, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f30, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f30, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x400000)
li x18, 0x12cfad4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f11, 0(x2) # load 0x00000000 from memory into f11
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f9, 0(x2) # load 0x00400000 from memory into f9
fmul.s f18, f11, f9, dyn # perform operation
fmul.s f18, f11, f9, rdn # perform operation
fmul.s f18, f11, f9, rmm # perform operation
fmul.s f18, f11, f9, rne # perform operation
fmul.s f18, f11, f9, rtz # perform operation
fmul.s f18, f11, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f11, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f11, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f11, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f11, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f11, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80400000)
li x28, 0x5268fb14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f24, 0(x2) # load 0x80400000 from memory into f24
fmul.s f28, f29, f24, dyn # perform operation
fmul.s f28, f29, f24, rdn # perform operation
fmul.s f28, f29, f24, rmm # perform operation
fmul.s f28, f29, f24, rne # perform operation
fmul.s f28, f29, f24, rtz # perform operation
fmul.s f28, f29, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f29, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f29, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f29, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f29, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f29, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
li x24, 0xcee44a6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f6, 0(x2) # load 0x00000000 from memory into f6
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f30, 0(x2) # load 0x00000001 from memory into f30
fmul.s f24, f6, f30, dyn # perform operation
fmul.s f24, f6, f30, rdn # perform operation
fmul.s f24, f6, f30, rmm # perform operation
fmul.s f24, f6, f30, rne # perform operation
fmul.s f24, f6, f30, rtz # perform operation
fmul.s f24, f6, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f6, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f6, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f6, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f6, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f6, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80000001)
li x14, 0x3d85eefd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f4, 0(x2) # load 0x80000001 from memory into f4
fmul.s f14, f16, f4, dyn # perform operation
fmul.s f14, f16, f4, rdn # perform operation
fmul.s f14, f16, f4, rmm # perform operation
fmul.s f14, f16, f4, rne # perform operation
fmul.s f14, f16, f4, rtz # perform operation
fmul.s f14, f16, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f16, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f16, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f16, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f16, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f16, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f800000)
li x16, 0x8f8fb691 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f12, 0(x2) # load 0x00000000 from memory into f12
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f21, 0(x2) # load 0x7f800000 from memory into f21
fmul.s f16, f12, f21, dyn # perform operation
fmul.s f16, f12, f21, rdn # perform operation
fmul.s f16, f12, f21, rmm # perform operation
fmul.s f16, f12, f21, rne # perform operation
fmul.s f16, f12, f21, rtz # perform operation
fmul.s f16, f12, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f12, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f12, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f12, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f12, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f12, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xff800000)
li x28, 0x53130853 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f22, 0(x2) # load 0x00000000 from memory into f22
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
fmul.s f28, f22, f9, dyn # perform operation
fmul.s f28, f22, f9, rdn # perform operation
fmul.s f28, f22, f9, rmm # perform operation
fmul.s f28, f22, f9, rne # perform operation
fmul.s f28, f22, f9, rtz # perform operation
fmul.s f28, f22, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f22, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f22, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f22, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f22, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f22, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fc00000)
li x16, 0x5c784ce5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f14, 0(x2) # load 0x00000000 from memory into f14
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f17, 0(x2) # load 0x7fc00000 from memory into f17
fmul.s f16, f14, f17, dyn # perform operation
fmul.s f16, f14, f17, rdn # perform operation
fmul.s f16, f14, f17, rmm # perform operation
fmul.s f16, f14, f17, rne # perform operation
fmul.s f16, f14, f17, rtz # perform operation
fmul.s f16, f14, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f14, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f14, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f14, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f14, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f14, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffffff)
li x5, 0xf2028585 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f7, 0(x2) # load 0x7fffffff from memory into f7
fmul.s f5, f15, f7, dyn # perform operation
fmul.s f5, f15, f7, rdn # perform operation
fmul.s f5, f15, f7, rmm # perform operation
fmul.s f5, f15, f7, rne # perform operation
fmul.s f5, f15, f7, rtz # perform operation
fmul.s f5, f15, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f15, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f15, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f15, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f15, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f15, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f800001)
li x27, 0x628bd70b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f13, 0(x2) # load 0x7f800001 from memory into f13
fmul.s f27, f16, f13, dyn # perform operation
fmul.s f27, f16, f13, rdn # perform operation
fmul.s f27, f16, f13, rmm # perform operation
fmul.s f27, f16, f13, rne # perform operation
fmul.s f27, f16, f13, rtz # perform operation
fmul.s f27, f16, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f16, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f16, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f16, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f16, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f16, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fbfffff)
li x13, 0xc49915a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f14, 0(x2) # load 0x7fbfffff from memory into f14
fmul.s f13, f3, f14, dyn # perform operation
fmul.s f13, f3, f14, rdn # perform operation
fmul.s f13, f3, f14, rmm # perform operation
fmul.s f13, f3, f14, rne # perform operation
fmul.s f13, f3, f14, rtz # perform operation
fmul.s f13, f3, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f3, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f3, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f3, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f3, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f3, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ef8654f)
li x11, 0xd5ad06fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f12, 0(x2) # load 0x00000000 from memory into f12
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f20, 0(x2) # load 0x7ef8654f from memory into f20
fmul.s f11, f12, f20, dyn # perform operation
fmul.s f11, f12, f20, rdn # perform operation
fmul.s f11, f12, f20, rmm # perform operation
fmul.s f11, f12, f20, rne # perform operation
fmul.s f11, f12, f20, rtz # perform operation
fmul.s f11, f12, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f12, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f12, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f12, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f12, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f12, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x813d9ab0)
li x14, 0x7de37765 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f17, 0(x2) # load 0x00000000 from memory into f17
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f5, 0(x2) # load 0x813d9ab0 from memory into f5
fmul.s f14, f17, f5, dyn # perform operation
fmul.s f14, f17, f5, rdn # perform operation
fmul.s f14, f17, f5, rmm # perform operation
fmul.s f14, f17, f5, rne # perform operation
fmul.s f14, f17, f5, rtz # perform operation
fmul.s f14, f17, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f17, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f17, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f17, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f17, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f17, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x0)
li x22, 0x14426b96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f1, 0(x2) # load 0x80000000 from memory into f1
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f20, 0(x2) # load 0x00000000 from memory into f20
fmul.s f22, f1, f20, dyn # perform operation
fmul.s f22, f1, f20, rdn # perform operation
fmul.s f22, f1, f20, rmm # perform operation
fmul.s f22, f1, f20, rne # perform operation
fmul.s f22, f1, f20, rtz # perform operation
fmul.s f22, f1, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f1, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f1, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f1, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f1, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f1, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80000000)
li x1, 0x49967e9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f12, 0(x2) # load 0x80000000 from memory into f12
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f24, 0(x2) # load 0x80000000 from memory into f24
fmul.s f1, f12, f24, dyn # perform operation
fmul.s f1, f12, f24, rdn # perform operation
fmul.s f1, f12, f24, rmm # perform operation
fmul.s f1, f12, f24, rne # perform operation
fmul.s f1, f12, f24, rtz # perform operation
fmul.s f1, f12, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f12, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f12, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f12, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f12, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f12, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x3f800000)
li x23, 0x4e816d31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f18, 0(x2) # load 0x80000000 from memory into f18
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f20, 0(x2) # load 0x3f800000 from memory into f20
fmul.s f23, f18, f20, dyn # perform operation
fmul.s f23, f18, f20, rdn # perform operation
fmul.s f23, f18, f20, rmm # perform operation
fmul.s f23, f18, f20, rne # perform operation
fmul.s f23, f18, f20, rtz # perform operation
fmul.s f23, f18, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f18, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f18, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f18, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f18, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f18, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xbf800000)
li x6, 0x4ca7aca0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f20, 0(x2) # load 0x80000000 from memory into f20
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f22, 0(x2) # load 0xbf800000 from memory into f22
fmul.s f6, f20, f22, dyn # perform operation
fmul.s f6, f20, f22, rdn # perform operation
fmul.s f6, f20, f22, rmm # perform operation
fmul.s f6, f20, f22, rne # perform operation
fmul.s f6, f20, f22, rtz # perform operation
fmul.s f6, f20, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f20, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f20, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f20, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f20, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f20, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x3fc00000)
li x20, 0x832d3840 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f24, 0(x2) # load 0x80000000 from memory into f24
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f8, 0(x2) # load 0x3fc00000 from memory into f8
fmul.s f20, f24, f8, dyn # perform operation
fmul.s f20, f24, f8, rdn # perform operation
fmul.s f20, f24, f8, rmm # perform operation
fmul.s f20, f24, f8, rne # perform operation
fmul.s f20, f24, f8, rtz # perform operation
fmul.s f20, f24, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f24, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f24, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f24, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f24, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f24, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xbfc00000)
li x17, 0xe61377b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f30, 0(x2) # load 0x80000000 from memory into f30
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
fmul.s f17, f30, f20, dyn # perform operation
fmul.s f17, f30, f20, rdn # perform operation
fmul.s f17, f30, f20, rmm # perform operation
fmul.s f17, f30, f20, rne # perform operation
fmul.s f17, f30, f20, rtz # perform operation
fmul.s f17, f30, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f30, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f30, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f30, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f30, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f30, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x40000000)
li x24, 0x5af0dc60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f19, 0(x2) # load 0x80000000 from memory into f19
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
fmul.s f24, f19, f13, dyn # perform operation
fmul.s f24, f19, f13, rdn # perform operation
fmul.s f24, f19, f13, rmm # perform operation
fmul.s f24, f19, f13, rne # perform operation
fmul.s f24, f19, f13, rtz # perform operation
fmul.s f24, f19, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f19, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f19, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f19, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f19, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f19, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xc0000000)
li x2, 0x057f22d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f14, 0(x2) # load 0x80000000 from memory into f14
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f20, 0(x2) # load 0xc0000000 from memory into f20
fmul.s f2, f14, f20, dyn # perform operation
fmul.s f2, f14, f20, rdn # perform operation
fmul.s f2, f14, f20, rmm # perform operation
fmul.s f2, f14, f20, rne # perform operation
fmul.s f2, f14, f20, rtz # perform operation
fmul.s f2, f14, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f14, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f14, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f14, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f14, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f14, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x800000)
li x1, 0x04a37e63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f29, 0(x2) # load 0x80000000 from memory into f29
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f24, 0(x2) # load 0x00800000 from memory into f24
fmul.s f1, f29, f24, dyn # perform operation
fmul.s f1, f29, f24, rdn # perform operation
fmul.s f1, f29, f24, rmm # perform operation
fmul.s f1, f29, f24, rne # perform operation
fmul.s f1, f29, f24, rtz # perform operation
fmul.s f1, f29, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f29, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f29, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f29, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f29, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f29, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80800000)
li x3, 0x9140cf25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f25, 0(x2) # load 0x80000000 from memory into f25
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f9, 0(x2) # load 0x80800000 from memory into f9
fmul.s f3, f25, f9, dyn # perform operation
fmul.s f3, f25, f9, rdn # perform operation
fmul.s f3, f25, f9, rmm # perform operation
fmul.s f3, f25, f9, rne # perform operation
fmul.s f3, f25, f9, rtz # perform operation
fmul.s f3, f25, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f25, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f25, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f25, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f25, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f25, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f7fffff)
li x10, 0xfda3c817 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f21, 0(x2) # load 0x80000000 from memory into f21
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f24, 0(x2) # load 0x7f7fffff from memory into f24
fmul.s f10, f21, f24, dyn # perform operation
fmul.s f10, f21, f24, rdn # perform operation
fmul.s f10, f21, f24, rmm # perform operation
fmul.s f10, f21, f24, rne # perform operation
fmul.s f10, f21, f24, rtz # perform operation
fmul.s f10, f21, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f21, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f21, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f21, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f21, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f21, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xff7fffff)
li x30, 0xa52e530f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f9, 0(x2) # load 0x80000000 from memory into f9
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
fmul.s f30, f9, f31, dyn # perform operation
fmul.s f30, f9, f31, rdn # perform operation
fmul.s f30, f9, f31, rmm # perform operation
fmul.s f30, f9, f31, rne # perform operation
fmul.s f30, f9, f31, rtz # perform operation
fmul.s f30, f9, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f9, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f9, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f9, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f9, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f9, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fffff)
li x12, 0x3f6a5ac4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f4, 0(x2) # load 0x80000000 from memory into f4
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f24, 0(x2) # load 0x007fffff from memory into f24
fmul.s f12, f4, f24, dyn # perform operation
fmul.s f12, f4, f24, rdn # perform operation
fmul.s f12, f4, f24, rmm # perform operation
fmul.s f12, f4, f24, rne # perform operation
fmul.s f12, f4, f24, rtz # perform operation
fmul.s f12, f4, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f4, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f4, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f4, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f4, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f4, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x807fffff)
li x31, 0x02ea4ca6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f18, 0(x2) # load 0x80000000 from memory into f18
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f15, 0(x2) # load 0x807fffff from memory into f15
fmul.s f31, f18, f15, dyn # perform operation
fmul.s f31, f18, f15, rdn # perform operation
fmul.s f31, f18, f15, rmm # perform operation
fmul.s f31, f18, f15, rne # perform operation
fmul.s f31, f18, f15, rtz # perform operation
fmul.s f31, f18, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f18, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f18, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f18, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f18, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f18, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x400000)
li x27, 0x279d118e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f31, 0(x2) # load 0x80000000 from memory into f31
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
fmul.s f27, f31, f14, dyn # perform operation
fmul.s f27, f31, f14, rdn # perform operation
fmul.s f27, f31, f14, rmm # perform operation
fmul.s f27, f31, f14, rne # perform operation
fmul.s f27, f31, f14, rtz # perform operation
fmul.s f27, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f31, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80400000)
li x31, 0x17e964e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f6, 0(x2) # load 0x80000000 from memory into f6
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f15, 0(x2) # load 0x80400000 from memory into f15
fmul.s f31, f6, f15, dyn # perform operation
fmul.s f31, f6, f15, rdn # perform operation
fmul.s f31, f6, f15, rmm # perform operation
fmul.s f31, f6, f15, rne # perform operation
fmul.s f31, f6, f15, rtz # perform operation
fmul.s f31, f6, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f6, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f6, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f6, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f6, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f6, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x1)
li x31, 0x3cde4bc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f13, 0(x2) # load 0x80000000 from memory into f13
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f26, 0(x2) # load 0x00000001 from memory into f26
fmul.s f31, f13, f26, dyn # perform operation
fmul.s f31, f13, f26, rdn # perform operation
fmul.s f31, f13, f26, rmm # perform operation
fmul.s f31, f13, f26, rne # perform operation
fmul.s f31, f13, f26, rtz # perform operation
fmul.s f31, f13, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f13, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f13, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f13, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f13, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f13, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80000001)
li x14, 0x661c174a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f15, 0(x2) # load 0x80000000 from memory into f15
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f5, 0(x2) # load 0x80000001 from memory into f5
fmul.s f14, f15, f5, dyn # perform operation
fmul.s f14, f15, f5, rdn # perform operation
fmul.s f14, f15, f5, rmm # perform operation
fmul.s f14, f15, f5, rne # perform operation
fmul.s f14, f15, f5, rtz # perform operation
fmul.s f14, f15, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f15, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f15, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f15, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f15, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f15, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f800000)
li x23, 0xf19c2431 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f11, 0(x2) # load 0x80000000 from memory into f11
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
fmul.s f23, f11, f27, dyn # perform operation
fmul.s f23, f11, f27, rdn # perform operation
fmul.s f23, f11, f27, rmm # perform operation
fmul.s f23, f11, f27, rne # perform operation
fmul.s f23, f11, f27, rtz # perform operation
fmul.s f23, f11, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f11, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f11, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f11, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f11, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f11, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xff800000)
li x11, 0x34dc9f77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f17, 0(x2) # load 0x80000000 from memory into f17
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f20, 0(x2) # load 0xff800000 from memory into f20
fmul.s f11, f17, f20, dyn # perform operation
fmul.s f11, f17, f20, rdn # perform operation
fmul.s f11, f17, f20, rmm # perform operation
fmul.s f11, f17, f20, rne # perform operation
fmul.s f11, f17, f20, rtz # perform operation
fmul.s f11, f17, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f17, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f17, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f17, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f17, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f17, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fc00000)
li x7, 0x2e8f05ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f25, 0(x2) # load 0x80000000 from memory into f25
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f2, 0(x2) # load 0x7fc00000 from memory into f2
fmul.s f7, f25, f2, dyn # perform operation
fmul.s f7, f25, f2, rdn # perform operation
fmul.s f7, f25, f2, rmm # perform operation
fmul.s f7, f25, f2, rne # perform operation
fmul.s f7, f25, f2, rtz # perform operation
fmul.s f7, f25, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f25, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f25, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f25, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f25, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f25, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fffffff)
li x20, 0x636b2f2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f15, 0(x2) # load 0x80000000 from memory into f15
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
fmul.s f20, f15, f10, dyn # perform operation
fmul.s f20, f15, f10, rdn # perform operation
fmul.s f20, f15, f10, rmm # perform operation
fmul.s f20, f15, f10, rne # perform operation
fmul.s f20, f15, f10, rtz # perform operation
fmul.s f20, f15, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f15, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f15, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f15, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f15, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f15, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f800001)
li x16, 0x1285e4dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f7, 0(x2) # load 0x80000000 from memory into f7
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f22, 0(x2) # load 0x7f800001 from memory into f22
fmul.s f16, f7, f22, dyn # perform operation
fmul.s f16, f7, f22, rdn # perform operation
fmul.s f16, f7, f22, rmm # perform operation
fmul.s f16, f7, f22, rne # perform operation
fmul.s f16, f7, f22, rtz # perform operation
fmul.s f16, f7, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f7, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f7, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f7, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f7, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f7, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fbfffff)
li x24, 0xd17ffa10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f10, 0(x2) # load 0x80000000 from memory into f10
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f8, 0(x2) # load 0x7fbfffff from memory into f8
fmul.s f24, f10, f8, dyn # perform operation
fmul.s f24, f10, f8, rdn # perform operation
fmul.s f24, f10, f8, rmm # perform operation
fmul.s f24, f10, f8, rne # perform operation
fmul.s f24, f10, f8, rtz # perform operation
fmul.s f24, f10, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f10, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f10, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f10, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f10, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f10, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7ef8654f)
li x10, 0xcebd95e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f6, 0(x2) # load 0x80000000 from memory into f6
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f19, 0(x2) # load 0x7ef8654f from memory into f19
fmul.s f10, f6, f19, dyn # perform operation
fmul.s f10, f6, f19, rdn # perform operation
fmul.s f10, f6, f19, rmm # perform operation
fmul.s f10, f6, f19, rne # perform operation
fmul.s f10, f6, f19, rtz # perform operation
fmul.s f10, f6, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f6, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f6, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f6, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f6, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f6, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x813d9ab0)
li x3, 0x26a9867e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f1, 0(x2) # load 0x80000000 from memory into f1
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f28, 0(x2) # load 0x813d9ab0 from memory into f28
fmul.s f3, f1, f28, dyn # perform operation
fmul.s f3, f1, f28, rdn # perform operation
fmul.s f3, f1, f28, rmm # perform operation
fmul.s f3, f1, f28, rne # perform operation
fmul.s f3, f1, f28, rtz # perform operation
fmul.s f3, f1, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f1, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f1, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f1, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f1, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f1, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x0)
li x16, 0x40286c26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f21, 0(x2) # load 0x00000000 from memory into f21
fmul.s f16, f11, f21, dyn # perform operation
fmul.s f16, f11, f21, rdn # perform operation
fmul.s f16, f11, f21, rmm # perform operation
fmul.s f16, f11, f21, rne # perform operation
fmul.s f16, f11, f21, rtz # perform operation
fmul.s f16, f11, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f11, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f11, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f11, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f11, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f11, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80000000)
li x21, 0x5d1c2994 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f14, 0(x2) # load 0x3f800000 from memory into f14
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f26, 0(x2) # load 0x80000000 from memory into f26
fmul.s f21, f14, f26, dyn # perform operation
fmul.s f21, f14, f26, rdn # perform operation
fmul.s f21, f14, f26, rmm # perform operation
fmul.s f21, f14, f26, rne # perform operation
fmul.s f21, f14, f26, rtz # perform operation
fmul.s f21, f14, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f14, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f14, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f14, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f14, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f14, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x3f800000)
li x2, 0x0bc79b1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f20, 0(x2) # load 0x3f800000 from memory into f20
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f30, 0(x2) # load 0x3f800000 from memory into f30
fmul.s f2, f20, f30, dyn # perform operation
fmul.s f2, f20, f30, rdn # perform operation
fmul.s f2, f20, f30, rmm # perform operation
fmul.s f2, f20, f30, rne # perform operation
fmul.s f2, f20, f30, rtz # perform operation
fmul.s f2, f20, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f20, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f20, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f20, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f20, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f20, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xbf800000)
li x16, 0xd992713c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f12, 0(x2) # load 0x3f800000 from memory into f12
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f11, 0(x2) # load 0xbf800000 from memory into f11
fmul.s f16, f12, f11, dyn # perform operation
fmul.s f16, f12, f11, rdn # perform operation
fmul.s f16, f12, f11, rmm # perform operation
fmul.s f16, f12, f11, rne # perform operation
fmul.s f16, f12, f11, rtz # perform operation
fmul.s f16, f12, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f12, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f12, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f12, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f12, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f12, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x3fc00000)
li x27, 0xde44e701 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f26, 0(x2) # load 0x3fc00000 from memory into f26
fmul.s f27, f24, f26, dyn # perform operation
fmul.s f27, f24, f26, rdn # perform operation
fmul.s f27, f24, f26, rmm # perform operation
fmul.s f27, f24, f26, rne # perform operation
fmul.s f27, f24, f26, rtz # perform operation
fmul.s f27, f24, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f24, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f24, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f24, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f24, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f24, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xbfc00000)
li x13, 0x684eb469 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f1, 0(x2) # load 0x3f800000 from memory into f1
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
fmul.s f13, f1, f29, dyn # perform operation
fmul.s f13, f1, f29, rdn # perform operation
fmul.s f13, f1, f29, rmm # perform operation
fmul.s f13, f1, f29, rne # perform operation
fmul.s f13, f1, f29, rtz # perform operation
fmul.s f13, f1, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f1, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f1, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f1, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f1, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f1, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x40000000)
li x9, 0x997bd5a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
fmul.s f9, f24, f8, dyn # perform operation
fmul.s f9, f24, f8, rdn # perform operation
fmul.s f9, f24, f8, rmm # perform operation
fmul.s f9, f24, f8, rne # perform operation
fmul.s f9, f24, f8, rtz # perform operation
fmul.s f9, f24, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f24, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f24, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f24, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f24, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f24, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xc0000000)
li x10, 0xe0490775 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f8, 0(x2) # load 0x3f800000 from memory into f8
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f15, 0(x2) # load 0xc0000000 from memory into f15
fmul.s f10, f8, f15, dyn # perform operation
fmul.s f10, f8, f15, rdn # perform operation
fmul.s f10, f8, f15, rmm # perform operation
fmul.s f10, f8, f15, rne # perform operation
fmul.s f10, f8, f15, rtz # perform operation
fmul.s f10, f8, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f8, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f8, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f8, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f8, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f8, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x800000)
li x11, 0xdf688811 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f8, 0(x2) # load 0x3f800000 from memory into f8
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
fmul.s f11, f8, f23, dyn # perform operation
fmul.s f11, f8, f23, rdn # perform operation
fmul.s f11, f8, f23, rmm # perform operation
fmul.s f11, f8, f23, rne # perform operation
fmul.s f11, f8, f23, rtz # perform operation
fmul.s f11, f8, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f8, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f8, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f8, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f8, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f8, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80800000)
li x18, 0x60921db0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
fmul.s f18, f6, f20, dyn # perform operation
fmul.s f18, f6, f20, rdn # perform operation
fmul.s f18, f6, f20, rmm # perform operation
fmul.s f18, f6, f20, rne # perform operation
fmul.s f18, f6, f20, rtz # perform operation
fmul.s f18, f6, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f6, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f6, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f6, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f6, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f6, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f7fffff)
li x11, 0x934cf27e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f30, 0(x2) # load 0x3f800000 from memory into f30
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f19, 0(x2) # load 0x7f7fffff from memory into f19
fmul.s f11, f30, f19, dyn # perform operation
fmul.s f11, f30, f19, rdn # perform operation
fmul.s f11, f30, f19, rmm # perform operation
fmul.s f11, f30, f19, rne # perform operation
fmul.s f11, f30, f19, rtz # perform operation
fmul.s f11, f30, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f30, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f30, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f30, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f30, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f30, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xff7fffff)
li x18, 0x906e800b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f4, 0(x2) # load 0x3f800000 from memory into f4
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f10, 0(x2) # load 0xff7fffff from memory into f10
fmul.s f18, f4, f10, dyn # perform operation
fmul.s f18, f4, f10, rdn # perform operation
fmul.s f18, f4, f10, rmm # perform operation
fmul.s f18, f4, f10, rne # perform operation
fmul.s f18, f4, f10, rtz # perform operation
fmul.s f18, f4, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f4, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f4, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f4, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f4, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f4, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fffff)
li x2, 0xe6bf4ff9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f28, 0(x2) # load 0x3f800000 from memory into f28
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f15, 0(x2) # load 0x007fffff from memory into f15
fmul.s f2, f28, f15, dyn # perform operation
fmul.s f2, f28, f15, rdn # perform operation
fmul.s f2, f28, f15, rmm # perform operation
fmul.s f2, f28, f15, rne # perform operation
fmul.s f2, f28, f15, rtz # perform operation
fmul.s f2, f28, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f28, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f28, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f28, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f28, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f28, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x807fffff)
li x26, 0x0546eb70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f17, 0(x2) # load 0x3f800000 from memory into f17
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f22, 0(x2) # load 0x807fffff from memory into f22
fmul.s f26, f17, f22, dyn # perform operation
fmul.s f26, f17, f22, rdn # perform operation
fmul.s f26, f17, f22, rmm # perform operation
fmul.s f26, f17, f22, rne # perform operation
fmul.s f26, f17, f22, rtz # perform operation
fmul.s f26, f17, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f17, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f17, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f17, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f17, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f17, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x400000)
li x24, 0xabd5dc75 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f9, 0(x2) # load 0x3f800000 from memory into f9
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f11, 0(x2) # load 0x00400000 from memory into f11
fmul.s f24, f9, f11, dyn # perform operation
fmul.s f24, f9, f11, rdn # perform operation
fmul.s f24, f9, f11, rmm # perform operation
fmul.s f24, f9, f11, rne # perform operation
fmul.s f24, f9, f11, rtz # perform operation
fmul.s f24, f9, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f9, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f9, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f9, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f9, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f9, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80400000)
li x4, 0xb59369a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f13, 0(x2) # load 0x80400000 from memory into f13
fmul.s f4, f24, f13, dyn # perform operation
fmul.s f4, f24, f13, rdn # perform operation
fmul.s f4, f24, f13, rmm # perform operation
fmul.s f4, f24, f13, rne # perform operation
fmul.s f4, f24, f13, rtz # perform operation
fmul.s f4, f24, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f24, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f24, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f24, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f24, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f24, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x1)
li x31, 0xa6b8eb26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f12, 0(x2) # load 0x3f800000 from memory into f12
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f18, 0(x2) # load 0x00000001 from memory into f18
fmul.s f31, f12, f18, dyn # perform operation
fmul.s f31, f12, f18, rdn # perform operation
fmul.s f31, f12, f18, rmm # perform operation
fmul.s f31, f12, f18, rne # perform operation
fmul.s f31, f12, f18, rtz # perform operation
fmul.s f31, f12, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f12, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f12, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f12, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f12, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f12, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80000001)
li x18, 0xf9cccba5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f14, 0(x2) # load 0x3f800000 from memory into f14
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f2, 0(x2) # load 0x80000001 from memory into f2
fmul.s f18, f14, f2, dyn # perform operation
fmul.s f18, f14, f2, rdn # perform operation
fmul.s f18, f14, f2, rmm # perform operation
fmul.s f18, f14, f2, rne # perform operation
fmul.s f18, f14, f2, rtz # perform operation
fmul.s f18, f14, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f14, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f14, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f14, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f14, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f14, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f800000)
li x24, 0x3305ed0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f16, 0(x2) # load 0x3f800000 from memory into f16
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f30, 0(x2) # load 0x7f800000 from memory into f30
fmul.s f24, f16, f30, dyn # perform operation
fmul.s f24, f16, f30, rdn # perform operation
fmul.s f24, f16, f30, rmm # perform operation
fmul.s f24, f16, f30, rne # perform operation
fmul.s f24, f16, f30, rtz # perform operation
fmul.s f24, f16, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f16, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f16, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f16, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f16, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f16, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xff800000)
li x10, 0xc552420d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f18, 0(x2) # load 0x3f800000 from memory into f18
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f13, 0(x2) # load 0xff800000 from memory into f13
fmul.s f10, f18, f13, dyn # perform operation
fmul.s f10, f18, f13, rdn # perform operation
fmul.s f10, f18, f13, rmm # perform operation
fmul.s f10, f18, f13, rne # perform operation
fmul.s f10, f18, f13, rtz # perform operation
fmul.s f10, f18, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f18, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f18, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f18, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f18, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f18, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fc00000)
li x25, 0x966a44d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f7, 0(x2) # load 0x3f800000 from memory into f7
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f28, 0(x2) # load 0x7fc00000 from memory into f28
fmul.s f25, f7, f28, dyn # perform operation
fmul.s f25, f7, f28, rdn # perform operation
fmul.s f25, f7, f28, rmm # perform operation
fmul.s f25, f7, f28, rne # perform operation
fmul.s f25, f7, f28, rtz # perform operation
fmul.s f25, f7, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f7, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f7, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f7, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f7, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f7, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fffffff)
li x26, 0xfdda4192 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f1, 0(x2) # load 0x3f800000 from memory into f1
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f9, 0(x2) # load 0x7fffffff from memory into f9
fmul.s f26, f1, f9, dyn # perform operation
fmul.s f26, f1, f9, rdn # perform operation
fmul.s f26, f1, f9, rmm # perform operation
fmul.s f26, f1, f9, rne # perform operation
fmul.s f26, f1, f9, rtz # perform operation
fmul.s f26, f1, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f1, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f1, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f1, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f1, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f1, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f800001)
li x6, 0x1318b2b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f28, 0(x2) # load 0x3f800000 from memory into f28
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f25, 0(x2) # load 0x7f800001 from memory into f25
fmul.s f6, f28, f25, dyn # perform operation
fmul.s f6, f28, f25, rdn # perform operation
fmul.s f6, f28, f25, rmm # perform operation
fmul.s f6, f28, f25, rne # perform operation
fmul.s f6, f28, f25, rtz # perform operation
fmul.s f6, f28, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f28, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f28, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f28, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f28, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f28, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fbfffff)
li x31, 0x5da1ed9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f8, 0(x2) # load 0x7fbfffff from memory into f8
fmul.s f31, f24, f8, dyn # perform operation
fmul.s f31, f24, f8, rdn # perform operation
fmul.s f31, f24, f8, rmm # perform operation
fmul.s f31, f24, f8, rne # perform operation
fmul.s f31, f24, f8, rtz # perform operation
fmul.s f31, f24, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f24, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f24, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f24, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f24, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f24, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7ef8654f)
li x27, 0x77dfb08d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f29, 0(x2) # load 0x7ef8654f from memory into f29
fmul.s f27, f11, f29, dyn # perform operation
fmul.s f27, f11, f29, rdn # perform operation
fmul.s f27, f11, f29, rmm # perform operation
fmul.s f27, f11, f29, rne # perform operation
fmul.s f27, f11, f29, rtz # perform operation
fmul.s f27, f11, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f11, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f11, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f11, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f11, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f11, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x813d9ab0)
li x8, 0xa45d3b71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f27, 0(x2) # load 0x3f800000 from memory into f27
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f10, 0(x2) # load 0x813d9ab0 from memory into f10
fmul.s f8, f27, f10, dyn # perform operation
fmul.s f8, f27, f10, rdn # perform operation
fmul.s f8, f27, f10, rmm # perform operation
fmul.s f8, f27, f10, rne # perform operation
fmul.s f8, f27, f10, rtz # perform operation
fmul.s f8, f27, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f27, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f27, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f27, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f27, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f27, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x0)
li x6, 0xc40fc029 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f24, 0(x2) # load 0xbf800000 from memory into f24
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
fmul.s f6, f24, f15, dyn # perform operation
fmul.s f6, f24, f15, rdn # perform operation
fmul.s f6, f24, f15, rmm # perform operation
fmul.s f6, f24, f15, rne # perform operation
fmul.s f6, f24, f15, rtz # perform operation
fmul.s f6, f24, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f24, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f24, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f24, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f24, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f24, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80000000)
li x13, 0x8cc8654f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f26, 0(x2) # load 0xbf800000 from memory into f26
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f4, 0(x2) # load 0x80000000 from memory into f4
fmul.s f13, f26, f4, dyn # perform operation
fmul.s f13, f26, f4, rdn # perform operation
fmul.s f13, f26, f4, rmm # perform operation
fmul.s f13, f26, f4, rne # perform operation
fmul.s f13, f26, f4, rtz # perform operation
fmul.s f13, f26, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f26, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f26, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f26, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f26, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f26, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x3f800000)
li x27, 0x5064c234 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f18, 0(x2) # load 0xbf800000 from memory into f18
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f25, 0(x2) # load 0x3f800000 from memory into f25
fmul.s f27, f18, f25, dyn # perform operation
fmul.s f27, f18, f25, rdn # perform operation
fmul.s f27, f18, f25, rmm # perform operation
fmul.s f27, f18, f25, rne # perform operation
fmul.s f27, f18, f25, rtz # perform operation
fmul.s f27, f18, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f18, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f18, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f18, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f18, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f18, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xbf800000)
li x29, 0x8a7bf3b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f16, 0(x2) # load 0xbf800000 from memory into f16
fmul.s f29, f17, f16, dyn # perform operation
fmul.s f29, f17, f16, rdn # perform operation
fmul.s f29, f17, f16, rmm # perform operation
fmul.s f29, f17, f16, rne # perform operation
fmul.s f29, f17, f16, rtz # perform operation
fmul.s f29, f17, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f17, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f17, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f17, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f17, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f17, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x3fc00000)
li x22, 0xbb28eeb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f26, 0(x2) # load 0x3fc00000 from memory into f26
fmul.s f22, f17, f26, dyn # perform operation
fmul.s f22, f17, f26, rdn # perform operation
fmul.s f22, f17, f26, rmm # perform operation
fmul.s f22, f17, f26, rne # perform operation
fmul.s f22, f17, f26, rtz # perform operation
fmul.s f22, f17, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f17, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f17, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f17, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f17, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f17, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xbfc00000)
li x17, 0x8c54e6ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f29, 0(x2) # load 0xbf800000 from memory into f29
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
fmul.s f17, f29, f20, dyn # perform operation
fmul.s f17, f29, f20, rdn # perform operation
fmul.s f17, f29, f20, rmm # perform operation
fmul.s f17, f29, f20, rne # perform operation
fmul.s f17, f29, f20, rtz # perform operation
fmul.s f17, f29, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f29, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f29, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f29, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f29, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f29, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x40000000)
li x13, 0xaf863422 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
fmul.s f13, f21, f24, dyn # perform operation
fmul.s f13, f21, f24, rdn # perform operation
fmul.s f13, f21, f24, rmm # perform operation
fmul.s f13, f21, f24, rne # perform operation
fmul.s f13, f21, f24, rtz # perform operation
fmul.s f13, f21, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f21, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f21, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f21, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f21, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f21, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xc0000000)
li x15, 0x434eb093 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f19, 0(x2) # load 0xbf800000 from memory into f19
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f6, 0(x2) # load 0xc0000000 from memory into f6
fmul.s f15, f19, f6, dyn # perform operation
fmul.s f15, f19, f6, rdn # perform operation
fmul.s f15, f19, f6, rmm # perform operation
fmul.s f15, f19, f6, rne # perform operation
fmul.s f15, f19, f6, rtz # perform operation
fmul.s f15, f19, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f19, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f19, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f19, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f19, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f19, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x800000)
li x16, 0xaa279a21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f20, 0(x2) # load 0x00800000 from memory into f20
fmul.s f16, f21, f20, dyn # perform operation
fmul.s f16, f21, f20, rdn # perform operation
fmul.s f16, f21, f20, rmm # perform operation
fmul.s f16, f21, f20, rne # perform operation
fmul.s f16, f21, f20, rtz # perform operation
fmul.s f16, f21, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f21, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f21, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f21, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f21, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f21, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80800000)
li x24, 0x0b261a84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f7, 0(x2) # load 0xbf800000 from memory into f7
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f16, 0(x2) # load 0x80800000 from memory into f16
fmul.s f24, f7, f16, dyn # perform operation
fmul.s f24, f7, f16, rdn # perform operation
fmul.s f24, f7, f16, rmm # perform operation
fmul.s f24, f7, f16, rne # perform operation
fmul.s f24, f7, f16, rtz # perform operation
fmul.s f24, f7, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f7, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f7, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f7, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f7, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f7, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f7fffff)
li x6, 0x6d06ab5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f14, 0(x2) # load 0xbf800000 from memory into f14
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f17, 0(x2) # load 0x7f7fffff from memory into f17
fmul.s f6, f14, f17, dyn # perform operation
fmul.s f6, f14, f17, rdn # perform operation
fmul.s f6, f14, f17, rmm # perform operation
fmul.s f6, f14, f17, rne # perform operation
fmul.s f6, f14, f17, rtz # perform operation
fmul.s f6, f14, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f14, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f14, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f14, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f14, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f14, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xff7fffff)
li x22, 0x91e11337 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f10, 0(x2) # load 0xbf800000 from memory into f10
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f25, 0(x2) # load 0xff7fffff from memory into f25
fmul.s f22, f10, f25, dyn # perform operation
fmul.s f22, f10, f25, rdn # perform operation
fmul.s f22, f10, f25, rmm # perform operation
fmul.s f22, f10, f25, rne # perform operation
fmul.s f22, f10, f25, rtz # perform operation
fmul.s f22, f10, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f10, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f10, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f10, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f10, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f10, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fffff)
li x11, 0x3010d5ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f14, 0(x2) # load 0xbf800000 from memory into f14
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f26, 0(x2) # load 0x007fffff from memory into f26
fmul.s f11, f14, f26, dyn # perform operation
fmul.s f11, f14, f26, rdn # perform operation
fmul.s f11, f14, f26, rmm # perform operation
fmul.s f11, f14, f26, rne # perform operation
fmul.s f11, f14, f26, rtz # perform operation
fmul.s f11, f14, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f14, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f14, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f14, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f14, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f14, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x807fffff)
li x16, 0xa9bca2fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f23, 0(x2) # load 0xbf800000 from memory into f23
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f6, 0(x2) # load 0x807fffff from memory into f6
fmul.s f16, f23, f6, dyn # perform operation
fmul.s f16, f23, f6, rdn # perform operation
fmul.s f16, f23, f6, rmm # perform operation
fmul.s f16, f23, f6, rne # perform operation
fmul.s f16, f23, f6, rtz # perform operation
fmul.s f16, f23, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f23, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f23, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f23, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f23, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f23, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x400000)
li x14, 0xbd329911 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f24, 0(x2) # load 0xbf800000 from memory into f24
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f20, 0(x2) # load 0x00400000 from memory into f20
fmul.s f14, f24, f20, dyn # perform operation
fmul.s f14, f24, f20, rdn # perform operation
fmul.s f14, f24, f20, rmm # perform operation
fmul.s f14, f24, f20, rne # perform operation
fmul.s f14, f24, f20, rtz # perform operation
fmul.s f14, f24, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f24, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f24, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f24, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f24, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f24, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80400000)
li x22, 0x09bf0173 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f30, 0(x2) # load 0x80400000 from memory into f30
fmul.s f22, f21, f30, dyn # perform operation
fmul.s f22, f21, f30, rdn # perform operation
fmul.s f22, f21, f30, rmm # perform operation
fmul.s f22, f21, f30, rne # perform operation
fmul.s f22, f21, f30, rtz # perform operation
fmul.s f22, f21, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f21, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f21, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f21, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f21, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f21, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x1)
li x20, 0x67e854af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f31, 0(x2) # load 0xbf800000 from memory into f31
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f18, 0(x2) # load 0x00000001 from memory into f18
fmul.s f20, f31, f18, dyn # perform operation
fmul.s f20, f31, f18, rdn # perform operation
fmul.s f20, f31, f18, rmm # perform operation
fmul.s f20, f31, f18, rne # perform operation
fmul.s f20, f31, f18, rtz # perform operation
fmul.s f20, f31, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f31, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f31, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f31, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f31, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f31, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80000001)
li x14, 0xe44b5769 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f29, 0(x2) # load 0xbf800000 from memory into f29
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f8, 0(x2) # load 0x80000001 from memory into f8
fmul.s f14, f29, f8, dyn # perform operation
fmul.s f14, f29, f8, rdn # perform operation
fmul.s f14, f29, f8, rmm # perform operation
fmul.s f14, f29, f8, rne # perform operation
fmul.s f14, f29, f8, rtz # perform operation
fmul.s f14, f29, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f29, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f29, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f29, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f29, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f29, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f800000)
li x6, 0x7ba4bcf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f24, 0(x2) # load 0xbf800000 from memory into f24
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f12, 0(x2) # load 0x7f800000 from memory into f12
fmul.s f6, f24, f12, dyn # perform operation
fmul.s f6, f24, f12, rdn # perform operation
fmul.s f6, f24, f12, rmm # perform operation
fmul.s f6, f24, f12, rne # perform operation
fmul.s f6, f24, f12, rtz # perform operation
fmul.s f6, f24, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f24, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f24, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f24, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f24, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f24, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xff800000)
li x8, 0xdf0ea269 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f26, 0(x2) # load 0xbf800000 from memory into f26
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f27, 0(x2) # load 0xff800000 from memory into f27
fmul.s f8, f26, f27, dyn # perform operation
fmul.s f8, f26, f27, rdn # perform operation
fmul.s f8, f26, f27, rmm # perform operation
fmul.s f8, f26, f27, rne # perform operation
fmul.s f8, f26, f27, rtz # perform operation
fmul.s f8, f26, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f26, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f26, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f26, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f26, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f26, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fc00000)
li x20, 0xa50a7bac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f29, 0(x2) # load 0xbf800000 from memory into f29
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
fmul.s f20, f29, f10, dyn # perform operation
fmul.s f20, f29, f10, rdn # perform operation
fmul.s f20, f29, f10, rmm # perform operation
fmul.s f20, f29, f10, rne # perform operation
fmul.s f20, f29, f10, rtz # perform operation
fmul.s f20, f29, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f29, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f29, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f29, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f29, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f29, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fffffff)
li x7, 0x53a65859 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f30, 0(x2) # load 0x7fffffff from memory into f30
fmul.s f7, f17, f30, dyn # perform operation
fmul.s f7, f17, f30, rdn # perform operation
fmul.s f7, f17, f30, rmm # perform operation
fmul.s f7, f17, f30, rne # perform operation
fmul.s f7, f17, f30, rtz # perform operation
fmul.s f7, f17, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f17, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f17, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f17, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f17, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f17, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f800001)
li x6, 0x50e44abc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f4, 0(x2) # load 0xbf800000 from memory into f4
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f20, 0(x2) # load 0x7f800001 from memory into f20
fmul.s f6, f4, f20, dyn # perform operation
fmul.s f6, f4, f20, rdn # perform operation
fmul.s f6, f4, f20, rmm # perform operation
fmul.s f6, f4, f20, rne # perform operation
fmul.s f6, f4, f20, rtz # perform operation
fmul.s f6, f4, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f4, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f4, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f4, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f4, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f4, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fbfffff)
li x12, 0xf41a76a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f17, 0(x2) # load 0x7fbfffff from memory into f17
fmul.s f12, f27, f17, dyn # perform operation
fmul.s f12, f27, f17, rdn # perform operation
fmul.s f12, f27, f17, rmm # perform operation
fmul.s f12, f27, f17, rne # perform operation
fmul.s f12, f27, f17, rtz # perform operation
fmul.s f12, f27, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f27, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f27, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f27, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f27, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f27, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7ef8654f)
li x6, 0x99a01af7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f4, 0(x2) # load 0xbf800000 from memory into f4
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f9, 0(x2) # load 0x7ef8654f from memory into f9
fmul.s f6, f4, f9, dyn # perform operation
fmul.s f6, f4, f9, rdn # perform operation
fmul.s f6, f4, f9, rmm # perform operation
fmul.s f6, f4, f9, rne # perform operation
fmul.s f6, f4, f9, rtz # perform operation
fmul.s f6, f4, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f4, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f4, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f4, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f4, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f4, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x813d9ab0)
li x13, 0xc01454cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f2, 0(x2) # load 0xbf800000 from memory into f2
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f1, 0(x2) # load 0x813d9ab0 from memory into f1
fmul.s f13, f2, f1, dyn # perform operation
fmul.s f13, f2, f1, rdn # perform operation
fmul.s f13, f2, f1, rmm # perform operation
fmul.s f13, f2, f1, rne # perform operation
fmul.s f13, f2, f1, rtz # perform operation
fmul.s f13, f2, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f2, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f2, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f2, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f2, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f2, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x0)
li x10, 0x98fc7f15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f11, 0(x2) # load 0x3fc00000 from memory into f11
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f19, 0(x2) # load 0x00000000 from memory into f19
fmul.s f10, f11, f19, dyn # perform operation
fmul.s f10, f11, f19, rdn # perform operation
fmul.s f10, f11, f19, rmm # perform operation
fmul.s f10, f11, f19, rne # perform operation
fmul.s f10, f11, f19, rtz # perform operation
fmul.s f10, f11, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f11, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f11, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f11, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f11, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f11, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80000000)
li x4, 0xa9eafbd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f29, 0(x2) # load 0x3fc00000 from memory into f29
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f22, 0(x2) # load 0x80000000 from memory into f22
fmul.s f4, f29, f22, dyn # perform operation
fmul.s f4, f29, f22, rdn # perform operation
fmul.s f4, f29, f22, rmm # perform operation
fmul.s f4, f29, f22, rne # perform operation
fmul.s f4, f29, f22, rtz # perform operation
fmul.s f4, f29, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f29, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f29, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f29, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f29, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f29, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x3f800000)
li x31, 0x999018ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f23, 0(x2) # load 0x3fc00000 from memory into f23
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f28, 0(x2) # load 0x3f800000 from memory into f28
fmul.s f31, f23, f28, dyn # perform operation
fmul.s f31, f23, f28, rdn # perform operation
fmul.s f31, f23, f28, rmm # perform operation
fmul.s f31, f23, f28, rne # perform operation
fmul.s f31, f23, f28, rtz # perform operation
fmul.s f31, f23, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f23, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f23, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f23, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f23, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f23, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xbf800000)
li x21, 0x73158dc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f3, 0(x2) # load 0x3fc00000 from memory into f3
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f2, 0(x2) # load 0xbf800000 from memory into f2
fmul.s f21, f3, f2, dyn # perform operation
fmul.s f21, f3, f2, rdn # perform operation
fmul.s f21, f3, f2, rmm # perform operation
fmul.s f21, f3, f2, rne # perform operation
fmul.s f21, f3, f2, rtz # perform operation
fmul.s f21, f3, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f3, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f3, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f3, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f3, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f3, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x3fc00000)
li x31, 0x5210e135 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f5, 0(x2) # load 0x3fc00000 from memory into f5
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f16, 0(x2) # load 0x3fc00000 from memory into f16
fmul.s f31, f5, f16, dyn # perform operation
fmul.s f31, f5, f16, rdn # perform operation
fmul.s f31, f5, f16, rmm # perform operation
fmul.s f31, f5, f16, rne # perform operation
fmul.s f31, f5, f16, rtz # perform operation
fmul.s f31, f5, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f5, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f5, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f5, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f5, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f5, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xbfc00000)
li x19, 0x37edc514 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f1, 0(x2) # load 0x3fc00000 from memory into f1
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
fmul.s f19, f1, f27, dyn # perform operation
fmul.s f19, f1, f27, rdn # perform operation
fmul.s f19, f1, f27, rmm # perform operation
fmul.s f19, f1, f27, rne # perform operation
fmul.s f19, f1, f27, rtz # perform operation
fmul.s f19, f1, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f1, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f1, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f1, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f1, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f1, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x40000000)
li x26, 0xe03ac7b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f7, 0(x2) # load 0x3fc00000 from memory into f7
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f22, 0(x2) # load 0x40000000 from memory into f22
fmul.s f26, f7, f22, dyn # perform operation
fmul.s f26, f7, f22, rdn # perform operation
fmul.s f26, f7, f22, rmm # perform operation
fmul.s f26, f7, f22, rne # perform operation
fmul.s f26, f7, f22, rtz # perform operation
fmul.s f26, f7, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f7, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f7, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f7, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f7, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f7, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xc0000000)
li x9, 0xcf8d1e2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f3, 0(x2) # load 0x3fc00000 from memory into f3
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
fmul.s f9, f3, f29, dyn # perform operation
fmul.s f9, f3, f29, rdn # perform operation
fmul.s f9, f3, f29, rmm # perform operation
fmul.s f9, f3, f29, rne # perform operation
fmul.s f9, f3, f29, rtz # perform operation
fmul.s f9, f3, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f3, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f3, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f3, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f3, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f3, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x800000)
li x27, 0xa1564a64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f22, 0(x2) # load 0x3fc00000 from memory into f22
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f5, 0(x2) # load 0x00800000 from memory into f5
fmul.s f27, f22, f5, dyn # perform operation
fmul.s f27, f22, f5, rdn # perform operation
fmul.s f27, f22, f5, rmm # perform operation
fmul.s f27, f22, f5, rne # perform operation
fmul.s f27, f22, f5, rtz # perform operation
fmul.s f27, f22, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f22, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f22, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f22, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f22, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f22, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80800000)
li x1, 0x652369be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f18, 0(x2) # load 0x3fc00000 from memory into f18
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f2, 0(x2) # load 0x80800000 from memory into f2
fmul.s f1, f18, f2, dyn # perform operation
fmul.s f1, f18, f2, rdn # perform operation
fmul.s f1, f18, f2, rmm # perform operation
fmul.s f1, f18, f2, rne # perform operation
fmul.s f1, f18, f2, rtz # perform operation
fmul.s f1, f18, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f18, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f18, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f18, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f18, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f18, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f7fffff)
li x10, 0xc8d6d3aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f16, 0(x2) # load 0x3fc00000 from memory into f16
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
fmul.s f10, f16, f3, dyn # perform operation
fmul.s f10, f16, f3, rdn # perform operation
fmul.s f10, f16, f3, rmm # perform operation
fmul.s f10, f16, f3, rne # perform operation
fmul.s f10, f16, f3, rtz # perform operation
fmul.s f10, f16, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f16, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f16, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f16, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f16, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f16, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xff7fffff)
li x29, 0xf707b8b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f7, 0(x2) # load 0xff7fffff from memory into f7
fmul.s f29, f6, f7, dyn # perform operation
fmul.s f29, f6, f7, rdn # perform operation
fmul.s f29, f6, f7, rmm # perform operation
fmul.s f29, f6, f7, rne # perform operation
fmul.s f29, f6, f7, rtz # perform operation
fmul.s f29, f6, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f6, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f6, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f6, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f6, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f6, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fffff)
li x13, 0x639bf40d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f28, 0(x2) # load 0x007fffff from memory into f28
fmul.s f13, f6, f28, dyn # perform operation
fmul.s f13, f6, f28, rdn # perform operation
fmul.s f13, f6, f28, rmm # perform operation
fmul.s f13, f6, f28, rne # perform operation
fmul.s f13, f6, f28, rtz # perform operation
fmul.s f13, f6, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f6, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f6, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f6, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f6, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f6, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x807fffff)
li x20, 0x27396621 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f30, 0(x2) # load 0x3fc00000 from memory into f30
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
fmul.s f20, f30, f3, dyn # perform operation
fmul.s f20, f30, f3, rdn # perform operation
fmul.s f20, f30, f3, rmm # perform operation
fmul.s f20, f30, f3, rne # perform operation
fmul.s f20, f30, f3, rtz # perform operation
fmul.s f20, f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f30, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x400000)
li x27, 0x18863573 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f29, 0(x2) # load 0x3fc00000 from memory into f29
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
fmul.s f27, f29, f15, dyn # perform operation
fmul.s f27, f29, f15, rdn # perform operation
fmul.s f27, f29, f15, rmm # perform operation
fmul.s f27, f29, f15, rne # perform operation
fmul.s f27, f29, f15, rtz # perform operation
fmul.s f27, f29, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f29, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f29, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f29, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f29, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f29, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80400000)
li x28, 0x33e7f4be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f22, 0(x2) # load 0x3fc00000 from memory into f22
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f26, 0(x2) # load 0x80400000 from memory into f26
fmul.s f28, f22, f26, dyn # perform operation
fmul.s f28, f22, f26, rdn # perform operation
fmul.s f28, f22, f26, rmm # perform operation
fmul.s f28, f22, f26, rne # perform operation
fmul.s f28, f22, f26, rtz # perform operation
fmul.s f28, f22, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f22, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f22, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f22, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f22, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f22, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x1)
li x23, 0xe2d59a7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f4, 0(x2) # load 0x3fc00000 from memory into f4
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f15, 0(x2) # load 0x00000001 from memory into f15
fmul.s f23, f4, f15, dyn # perform operation
fmul.s f23, f4, f15, rdn # perform operation
fmul.s f23, f4, f15, rmm # perform operation
fmul.s f23, f4, f15, rne # perform operation
fmul.s f23, f4, f15, rtz # perform operation
fmul.s f23, f4, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f4, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f4, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f4, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f4, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f4, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80000001)
li x8, 0xf4e9bc76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f9, 0(x2) # load 0x80000001 from memory into f9
fmul.s f8, f12, f9, dyn # perform operation
fmul.s f8, f12, f9, rdn # perform operation
fmul.s f8, f12, f9, rmm # perform operation
fmul.s f8, f12, f9, rne # perform operation
fmul.s f8, f12, f9, rtz # perform operation
fmul.s f8, f12, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f12, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f12, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f12, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f12, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f12, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f800000)
li x7, 0x60dc207b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f3, 0(x2) # load 0x3fc00000 from memory into f3
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f1, 0(x2) # load 0x7f800000 from memory into f1
fmul.s f7, f3, f1, dyn # perform operation
fmul.s f7, f3, f1, rdn # perform operation
fmul.s f7, f3, f1, rmm # perform operation
fmul.s f7, f3, f1, rne # perform operation
fmul.s f7, f3, f1, rtz # perform operation
fmul.s f7, f3, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f3, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f3, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f3, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f3, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f3, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xff800000)
li x22, 0x81960bbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f8, 0(x2) # load 0x3fc00000 from memory into f8
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f12, 0(x2) # load 0xff800000 from memory into f12
fmul.s f22, f8, f12, dyn # perform operation
fmul.s f22, f8, f12, rdn # perform operation
fmul.s f22, f8, f12, rmm # perform operation
fmul.s f22, f8, f12, rne # perform operation
fmul.s f22, f8, f12, rtz # perform operation
fmul.s f22, f8, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f8, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f8, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f8, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f8, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f8, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fc00000)
li x10, 0x62e83442 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
fmul.s f10, f31, f18, dyn # perform operation
fmul.s f10, f31, f18, rdn # perform operation
fmul.s f10, f31, f18, rmm # perform operation
fmul.s f10, f31, f18, rne # perform operation
fmul.s f10, f31, f18, rtz # perform operation
fmul.s f10, f31, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f31, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f31, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f31, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f31, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f31, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fffffff)
li x2, 0xf98a6139 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f17, 0(x2) # load 0x3fc00000 from memory into f17
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f30, 0(x2) # load 0x7fffffff from memory into f30
fmul.s f2, f17, f30, dyn # perform operation
fmul.s f2, f17, f30, rdn # perform operation
fmul.s f2, f17, f30, rmm # perform operation
fmul.s f2, f17, f30, rne # perform operation
fmul.s f2, f17, f30, rtz # perform operation
fmul.s f2, f17, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f17, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f17, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f17, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f17, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f17, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f800001)
li x17, 0xa109efd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f30, 0(x2) # load 0x3fc00000 from memory into f30
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
fmul.s f17, f30, f19, dyn # perform operation
fmul.s f17, f30, f19, rdn # perform operation
fmul.s f17, f30, f19, rmm # perform operation
fmul.s f17, f30, f19, rne # perform operation
fmul.s f17, f30, f19, rtz # perform operation
fmul.s f17, f30, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f30, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f30, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f30, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f30, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f30, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fbfffff)
li x30, 0x0dc1b14b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f26, 0(x2) # load 0x3fc00000 from memory into f26
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f22, 0(x2) # load 0x7fbfffff from memory into f22
fmul.s f30, f26, f22, dyn # perform operation
fmul.s f30, f26, f22, rdn # perform operation
fmul.s f30, f26, f22, rmm # perform operation
fmul.s f30, f26, f22, rne # perform operation
fmul.s f30, f26, f22, rtz # perform operation
fmul.s f30, f26, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f26, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f26, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f26, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f26, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f26, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7ef8654f)
li x8, 0xbdb99ca5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f7, 0(x2) # load 0x3fc00000 from memory into f7
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f31, 0(x2) # load 0x7ef8654f from memory into f31
fmul.s f8, f7, f31, dyn # perform operation
fmul.s f8, f7, f31, rdn # perform operation
fmul.s f8, f7, f31, rmm # perform operation
fmul.s f8, f7, f31, rne # perform operation
fmul.s f8, f7, f31, rtz # perform operation
fmul.s f8, f7, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f7, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f7, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f7, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f7, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f7, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x813d9ab0)
li x23, 0x094c125f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f1, 0(x2) # load 0x3fc00000 from memory into f1
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f4, 0(x2) # load 0x813d9ab0 from memory into f4
fmul.s f23, f1, f4, dyn # perform operation
fmul.s f23, f1, f4, rdn # perform operation
fmul.s f23, f1, f4, rmm # perform operation
fmul.s f23, f1, f4, rne # perform operation
fmul.s f23, f1, f4, rtz # perform operation
fmul.s f23, f1, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f1, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f1, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f1, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f1, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f1, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x0)
li x18, 0x1957bfdb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f9, 0(x2) # load 0xbfc00000 from memory into f9
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
fmul.s f18, f9, f15, dyn # perform operation
fmul.s f18, f9, f15, rdn # perform operation
fmul.s f18, f9, f15, rmm # perform operation
fmul.s f18, f9, f15, rne # perform operation
fmul.s f18, f9, f15, rtz # perform operation
fmul.s f18, f9, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f9, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f9, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f9, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f9, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f9, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80000000)
li x30, 0x8320e1fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f7, 0(x2) # load 0xbfc00000 from memory into f7
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f1, 0(x2) # load 0x80000000 from memory into f1
fmul.s f30, f7, f1, dyn # perform operation
fmul.s f30, f7, f1, rdn # perform operation
fmul.s f30, f7, f1, rmm # perform operation
fmul.s f30, f7, f1, rne # perform operation
fmul.s f30, f7, f1, rtz # perform operation
fmul.s f30, f7, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f7, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f7, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f7, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f7, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f7, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x3f800000)
li x15, 0xe229d889 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f23, 0(x2) # load 0xbfc00000 from memory into f23
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f7, 0(x2) # load 0x3f800000 from memory into f7
fmul.s f15, f23, f7, dyn # perform operation
fmul.s f15, f23, f7, rdn # perform operation
fmul.s f15, f23, f7, rmm # perform operation
fmul.s f15, f23, f7, rne # perform operation
fmul.s f15, f23, f7, rtz # perform operation
fmul.s f15, f23, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f23, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f23, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f23, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f23, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f23, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xbf800000)
li x10, 0xdd7d224c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f31, 0(x2) # load 0xbfc00000 from memory into f31
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f29, 0(x2) # load 0xbf800000 from memory into f29
fmul.s f10, f31, f29, dyn # perform operation
fmul.s f10, f31, f29, rdn # perform operation
fmul.s f10, f31, f29, rmm # perform operation
fmul.s f10, f31, f29, rne # perform operation
fmul.s f10, f31, f29, rtz # perform operation
fmul.s f10, f31, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f31, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f31, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f31, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f31, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f31, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x3fc00000)
li x7, 0x4711c50d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f3, 0(x2) # load 0xbfc00000 from memory into f3
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f19, 0(x2) # load 0x3fc00000 from memory into f19
fmul.s f7, f3, f19, dyn # perform operation
fmul.s f7, f3, f19, rdn # perform operation
fmul.s f7, f3, f19, rmm # perform operation
fmul.s f7, f3, f19, rne # perform operation
fmul.s f7, f3, f19, rtz # perform operation
fmul.s f7, f3, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f3, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f3, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f3, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f3, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f3, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xbfc00000)
li x27, 0x92da7b17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f21, 0(x2) # load 0xbfc00000 from memory into f21
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f26, 0(x2) # load 0xbfc00000 from memory into f26
fmul.s f27, f21, f26, dyn # perform operation
fmul.s f27, f21, f26, rdn # perform operation
fmul.s f27, f21, f26, rmm # perform operation
fmul.s f27, f21, f26, rne # perform operation
fmul.s f27, f21, f26, rtz # perform operation
fmul.s f27, f21, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f21, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f21, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f21, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f21, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f21, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x40000000)
li x23, 0xb5cedd77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f4, 0(x2) # load 0x40000000 from memory into f4
fmul.s f23, f20, f4, dyn # perform operation
fmul.s f23, f20, f4, rdn # perform operation
fmul.s f23, f20, f4, rmm # perform operation
fmul.s f23, f20, f4, rne # perform operation
fmul.s f23, f20, f4, rtz # perform operation
fmul.s f23, f20, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f20, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f20, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f20, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f20, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f20, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xc0000000)
li x3, 0xf3db04e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f18, 0(x2) # load 0xbfc00000 from memory into f18
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
fmul.s f3, f18, f29, dyn # perform operation
fmul.s f3, f18, f29, rdn # perform operation
fmul.s f3, f18, f29, rmm # perform operation
fmul.s f3, f18, f29, rne # perform operation
fmul.s f3, f18, f29, rtz # perform operation
fmul.s f3, f18, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f18, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f18, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f18, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f18, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f18, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x800000)
li x18, 0xb69980bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
fmul.s f18, f27, f7, dyn # perform operation
fmul.s f18, f27, f7, rdn # perform operation
fmul.s f18, f27, f7, rmm # perform operation
fmul.s f18, f27, f7, rne # perform operation
fmul.s f18, f27, f7, rtz # perform operation
fmul.s f18, f27, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f27, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f27, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f27, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f27, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f27, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80800000)
li x27, 0xa43f2684 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f22, 0(x2) # load 0xbfc00000 from memory into f22
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f7, 0(x2) # load 0x80800000 from memory into f7
fmul.s f27, f22, f7, dyn # perform operation
fmul.s f27, f22, f7, rdn # perform operation
fmul.s f27, f22, f7, rmm # perform operation
fmul.s f27, f22, f7, rne # perform operation
fmul.s f27, f22, f7, rtz # perform operation
fmul.s f27, f22, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f22, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f22, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f22, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f22, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f22, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f7fffff)
li x24, 0x908a15c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f22, 0(x2) # load 0x7f7fffff from memory into f22
fmul.s f24, f27, f22, dyn # perform operation
fmul.s f24, f27, f22, rdn # perform operation
fmul.s f24, f27, f22, rmm # perform operation
fmul.s f24, f27, f22, rne # perform operation
fmul.s f24, f27, f22, rtz # perform operation
fmul.s f24, f27, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f27, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f27, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f27, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f27, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f27, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xff7fffff)
li x21, 0xbb781e7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f23, 0(x2) # load 0xff7fffff from memory into f23
fmul.s f21, f16, f23, dyn # perform operation
fmul.s f21, f16, f23, rdn # perform operation
fmul.s f21, f16, f23, rmm # perform operation
fmul.s f21, f16, f23, rne # perform operation
fmul.s f21, f16, f23, rtz # perform operation
fmul.s f21, f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f16, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fffff)
li x16, 0xb8ff2636 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f12, 0(x2) # load 0xbfc00000 from memory into f12
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f29, 0(x2) # load 0x007fffff from memory into f29
fmul.s f16, f12, f29, dyn # perform operation
fmul.s f16, f12, f29, rdn # perform operation
fmul.s f16, f12, f29, rmm # perform operation
fmul.s f16, f12, f29, rne # perform operation
fmul.s f16, f12, f29, rtz # perform operation
fmul.s f16, f12, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f12, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f12, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f12, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f12, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f12, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x807fffff)
li x24, 0xbfb11a45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f15, 0(x2) # load 0xbfc00000 from memory into f15
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f31, 0(x2) # load 0x807fffff from memory into f31
fmul.s f24, f15, f31, dyn # perform operation
fmul.s f24, f15, f31, rdn # perform operation
fmul.s f24, f15, f31, rmm # perform operation
fmul.s f24, f15, f31, rne # perform operation
fmul.s f24, f15, f31, rtz # perform operation
fmul.s f24, f15, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f15, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f15, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f15, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f15, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f15, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x400000)
li x30, 0x4070b5b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f5, 0(x2) # load 0xbfc00000 from memory into f5
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f11, 0(x2) # load 0x00400000 from memory into f11
fmul.s f30, f5, f11, dyn # perform operation
fmul.s f30, f5, f11, rdn # perform operation
fmul.s f30, f5, f11, rmm # perform operation
fmul.s f30, f5, f11, rne # perform operation
fmul.s f30, f5, f11, rtz # perform operation
fmul.s f30, f5, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f5, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f5, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f5, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f5, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f5, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80400000)
li x11, 0x77b59128 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f3, 0(x2) # load 0xbfc00000 from memory into f3
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f4, 0(x2) # load 0x80400000 from memory into f4
fmul.s f11, f3, f4, dyn # perform operation
fmul.s f11, f3, f4, rdn # perform operation
fmul.s f11, f3, f4, rmm # perform operation
fmul.s f11, f3, f4, rne # perform operation
fmul.s f11, f3, f4, rtz # perform operation
fmul.s f11, f3, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f3, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f3, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f3, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f3, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f3, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x1)
li x6, 0xf9c66891 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f13, 0(x2) # load 0x00000001 from memory into f13
fmul.s f6, f16, f13, dyn # perform operation
fmul.s f6, f16, f13, rdn # perform operation
fmul.s f6, f16, f13, rmm # perform operation
fmul.s f6, f16, f13, rne # perform operation
fmul.s f6, f16, f13, rtz # perform operation
fmul.s f6, f16, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f16, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f16, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f16, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f16, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f16, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80000001)
li x21, 0xdaaf0490 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f14, 0(x2) # load 0xbfc00000 from memory into f14
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f22, 0(x2) # load 0x80000001 from memory into f22
fmul.s f21, f14, f22, dyn # perform operation
fmul.s f21, f14, f22, rdn # perform operation
fmul.s f21, f14, f22, rmm # perform operation
fmul.s f21, f14, f22, rne # perform operation
fmul.s f21, f14, f22, rtz # perform operation
fmul.s f21, f14, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f14, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f14, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f14, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f14, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f14, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f800000)
li x2, 0x0cb59a79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f13, 0(x2) # load 0xbfc00000 from memory into f13
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f24, 0(x2) # load 0x7f800000 from memory into f24
fmul.s f2, f13, f24, dyn # perform operation
fmul.s f2, f13, f24, rdn # perform operation
fmul.s f2, f13, f24, rmm # perform operation
fmul.s f2, f13, f24, rne # perform operation
fmul.s f2, f13, f24, rtz # perform operation
fmul.s f2, f13, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f13, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f13, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f13, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f13, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f13, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xff800000)
li x22, 0x864200a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f30, 0(x2) # load 0xbfc00000 from memory into f30
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f17, 0(x2) # load 0xff800000 from memory into f17
fmul.s f22, f30, f17, dyn # perform operation
fmul.s f22, f30, f17, rdn # perform operation
fmul.s f22, f30, f17, rmm # perform operation
fmul.s f22, f30, f17, rne # perform operation
fmul.s f22, f30, f17, rtz # perform operation
fmul.s f22, f30, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f30, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f30, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f30, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f30, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f30, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fc00000)
li x6, 0x8ba0f356 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f26, 0(x2) # load 0xbfc00000 from memory into f26
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f22, 0(x2) # load 0x7fc00000 from memory into f22
fmul.s f6, f26, f22, dyn # perform operation
fmul.s f6, f26, f22, rdn # perform operation
fmul.s f6, f26, f22, rmm # perform operation
fmul.s f6, f26, f22, rne # perform operation
fmul.s f6, f26, f22, rtz # perform operation
fmul.s f6, f26, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f26, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f26, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f26, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f26, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f26, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fffffff)
li x31, 0xc8a23269 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f7, 0(x2) # load 0xbfc00000 from memory into f7
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f20, 0(x2) # load 0x7fffffff from memory into f20
fmul.s f31, f7, f20, dyn # perform operation
fmul.s f31, f7, f20, rdn # perform operation
fmul.s f31, f7, f20, rmm # perform operation
fmul.s f31, f7, f20, rne # perform operation
fmul.s f31, f7, f20, rtz # perform operation
fmul.s f31, f7, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f7, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f7, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f7, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f7, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f7, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f800001)
li x13, 0x333e17d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f22, 0(x2) # load 0xbfc00000 from memory into f22
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
fmul.s f13, f22, f21, dyn # perform operation
fmul.s f13, f22, f21, rdn # perform operation
fmul.s f13, f22, f21, rmm # perform operation
fmul.s f13, f22, f21, rne # perform operation
fmul.s f13, f22, f21, rtz # perform operation
fmul.s f13, f22, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f22, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f22, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f22, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f22, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f22, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fbfffff)
li x30, 0x36cadcf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f13, 0(x2) # load 0xbfc00000 from memory into f13
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f4, 0(x2) # load 0x7fbfffff from memory into f4
fmul.s f30, f13, f4, dyn # perform operation
fmul.s f30, f13, f4, rdn # perform operation
fmul.s f30, f13, f4, rmm # perform operation
fmul.s f30, f13, f4, rne # perform operation
fmul.s f30, f13, f4, rtz # perform operation
fmul.s f30, f13, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f13, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f13, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f13, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f13, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f13, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7ef8654f)
li x18, 0x0deefa78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f12, 0(x2) # load 0x7ef8654f from memory into f12
fmul.s f18, f27, f12, dyn # perform operation
fmul.s f18, f27, f12, rdn # perform operation
fmul.s f18, f27, f12, rmm # perform operation
fmul.s f18, f27, f12, rne # perform operation
fmul.s f18, f27, f12, rtz # perform operation
fmul.s f18, f27, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f27, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f27, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f27, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f27, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f27, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x813d9ab0)
li x6, 0x5eb84ddc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f8, 0(x2) # load 0xbfc00000 from memory into f8
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f31, 0(x2) # load 0x813d9ab0 from memory into f31
fmul.s f6, f8, f31, dyn # perform operation
fmul.s f6, f8, f31, rdn # perform operation
fmul.s f6, f8, f31, rmm # perform operation
fmul.s f6, f8, f31, rne # perform operation
fmul.s f6, f8, f31, rtz # perform operation
fmul.s f6, f8, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f8, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f8, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f8, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f8, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f8, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x0)
li x7, 0x1ee91a6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f30, 0(x2) # load 0x00000000 from memory into f30
fmul.s f7, f13, f30, dyn # perform operation
fmul.s f7, f13, f30, rdn # perform operation
fmul.s f7, f13, f30, rmm # perform operation
fmul.s f7, f13, f30, rne # perform operation
fmul.s f7, f13, f30, rtz # perform operation
fmul.s f7, f13, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f13, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f13, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f13, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f13, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f13, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80000000)
li x13, 0xb19138dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f18, 0(x2) # load 0x40000000 from memory into f18
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f12, 0(x2) # load 0x80000000 from memory into f12
fmul.s f13, f18, f12, dyn # perform operation
fmul.s f13, f18, f12, rdn # perform operation
fmul.s f13, f18, f12, rmm # perform operation
fmul.s f13, f18, f12, rne # perform operation
fmul.s f13, f18, f12, rtz # perform operation
fmul.s f13, f18, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f18, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f18, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f18, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f18, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f18, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x3f800000)
li x28, 0x6d4fab7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f26, 0(x2) # load 0x40000000 from memory into f26
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f19, 0(x2) # load 0x3f800000 from memory into f19
fmul.s f28, f26, f19, dyn # perform operation
fmul.s f28, f26, f19, rdn # perform operation
fmul.s f28, f26, f19, rmm # perform operation
fmul.s f28, f26, f19, rne # perform operation
fmul.s f28, f26, f19, rtz # perform operation
fmul.s f28, f26, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f26, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f26, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f26, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f26, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f26, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xbf800000)
li x26, 0xc5bd9ff2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f14, 0(x2) # load 0x40000000 from memory into f14
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f16, 0(x2) # load 0xbf800000 from memory into f16
fmul.s f26, f14, f16, dyn # perform operation
fmul.s f26, f14, f16, rdn # perform operation
fmul.s f26, f14, f16, rmm # perform operation
fmul.s f26, f14, f16, rne # perform operation
fmul.s f26, f14, f16, rtz # perform operation
fmul.s f26, f14, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f14, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f14, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f14, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f14, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f14, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x3fc00000)
li x9, 0xd2e39e43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f21, 0(x2) # load 0x40000000 from memory into f21
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f25, 0(x2) # load 0x3fc00000 from memory into f25
fmul.s f9, f21, f25, dyn # perform operation
fmul.s f9, f21, f25, rdn # perform operation
fmul.s f9, f21, f25, rmm # perform operation
fmul.s f9, f21, f25, rne # perform operation
fmul.s f9, f21, f25, rtz # perform operation
fmul.s f9, f21, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f21, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f21, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f21, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f21, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f21, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xbfc00000)
li x21, 0x00426f4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f31, 0(x2) # load 0x40000000 from memory into f31
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
fmul.s f21, f31, f16, dyn # perform operation
fmul.s f21, f31, f16, rdn # perform operation
fmul.s f21, f31, f16, rmm # perform operation
fmul.s f21, f31, f16, rne # perform operation
fmul.s f21, f31, f16, rtz # perform operation
fmul.s f21, f31, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f31, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f31, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f31, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f31, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f31, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x40000000)
li x27, 0x4d377342 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f11, 0(x2) # load 0x40000000 from memory into f11
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f12, 0(x2) # load 0x40000000 from memory into f12
fmul.s f27, f11, f12, dyn # perform operation
fmul.s f27, f11, f12, rdn # perform operation
fmul.s f27, f11, f12, rmm # perform operation
fmul.s f27, f11, f12, rne # perform operation
fmul.s f27, f11, f12, rtz # perform operation
fmul.s f27, f11, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f11, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f11, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f11, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f11, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f11, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xc0000000)
li x24, 0x2a10816b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f20, 0(x2) # load 0x40000000 from memory into f20
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f4, 0(x2) # load 0xc0000000 from memory into f4
fmul.s f24, f20, f4, dyn # perform operation
fmul.s f24, f20, f4, rdn # perform operation
fmul.s f24, f20, f4, rmm # perform operation
fmul.s f24, f20, f4, rne # perform operation
fmul.s f24, f20, f4, rtz # perform operation
fmul.s f24, f20, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f20, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f20, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f20, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f20, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f20, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x800000)
li x30, 0x74d623eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f9, 0(x2) # load 0x40000000 from memory into f9
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
fmul.s f30, f9, f22, dyn # perform operation
fmul.s f30, f9, f22, rdn # perform operation
fmul.s f30, f9, f22, rmm # perform operation
fmul.s f30, f9, f22, rne # perform operation
fmul.s f30, f9, f22, rtz # perform operation
fmul.s f30, f9, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f9, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f9, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f9, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f9, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f9, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80800000)
li x31, 0x39acc349 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f17, 0(x2) # load 0x80800000 from memory into f17
fmul.s f31, f23, f17, dyn # perform operation
fmul.s f31, f23, f17, rdn # perform operation
fmul.s f31, f23, f17, rmm # perform operation
fmul.s f31, f23, f17, rne # perform operation
fmul.s f31, f23, f17, rtz # perform operation
fmul.s f31, f23, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f23, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f23, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f23, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f23, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f23, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f7fffff)
li x5, 0xa4e7b074 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f21, 0(x2) # load 0x7f7fffff from memory into f21
fmul.s f5, f16, f21, dyn # perform operation
fmul.s f5, f16, f21, rdn # perform operation
fmul.s f5, f16, f21, rmm # perform operation
fmul.s f5, f16, f21, rne # perform operation
fmul.s f5, f16, f21, rtz # perform operation
fmul.s f5, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f16, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xff7fffff)
li x13, 0x8300ac15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f12, 0(x2) # load 0x40000000 from memory into f12
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f3, 0(x2) # load 0xff7fffff from memory into f3
fmul.s f13, f12, f3, dyn # perform operation
fmul.s f13, f12, f3, rdn # perform operation
fmul.s f13, f12, f3, rmm # perform operation
fmul.s f13, f12, f3, rne # perform operation
fmul.s f13, f12, f3, rtz # perform operation
fmul.s f13, f12, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f12, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f12, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f12, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f12, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f12, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fffff)
li x30, 0x546d4ff6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f27, 0(x2) # load 0x40000000 from memory into f27
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f18, 0(x2) # load 0x007fffff from memory into f18
fmul.s f30, f27, f18, dyn # perform operation
fmul.s f30, f27, f18, rdn # perform operation
fmul.s f30, f27, f18, rmm # perform operation
fmul.s f30, f27, f18, rne # perform operation
fmul.s f30, f27, f18, rtz # perform operation
fmul.s f30, f27, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f27, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f27, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f27, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f27, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f27, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x807fffff)
li x5, 0x9e57a1c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f9, 0(x2) # load 0x40000000 from memory into f9
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f21, 0(x2) # load 0x807fffff from memory into f21
fmul.s f5, f9, f21, dyn # perform operation
fmul.s f5, f9, f21, rdn # perform operation
fmul.s f5, f9, f21, rmm # perform operation
fmul.s f5, f9, f21, rne # perform operation
fmul.s f5, f9, f21, rtz # perform operation
fmul.s f5, f9, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f9, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f9, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f9, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f9, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f9, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x400000)
li x14, 0xadc6c93b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f25, 0(x2) # load 0x40000000 from memory into f25
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f17, 0(x2) # load 0x00400000 from memory into f17
fmul.s f14, f25, f17, dyn # perform operation
fmul.s f14, f25, f17, rdn # perform operation
fmul.s f14, f25, f17, rmm # perform operation
fmul.s f14, f25, f17, rne # perform operation
fmul.s f14, f25, f17, rtz # perform operation
fmul.s f14, f25, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f25, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f25, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f25, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f25, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f25, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80400000)
li x22, 0x1881f4c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f21, 0(x2) # load 0x40000000 from memory into f21
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f26, 0(x2) # load 0x80400000 from memory into f26
fmul.s f22, f21, f26, dyn # perform operation
fmul.s f22, f21, f26, rdn # perform operation
fmul.s f22, f21, f26, rmm # perform operation
fmul.s f22, f21, f26, rne # perform operation
fmul.s f22, f21, f26, rtz # perform operation
fmul.s f22, f21, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f21, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f21, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f21, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f21, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f21, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x1)
li x2, 0x6edffb00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f20, 0(x2) # load 0x40000000 from memory into f20
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f30, 0(x2) # load 0x00000001 from memory into f30
fmul.s f2, f20, f30, dyn # perform operation
fmul.s f2, f20, f30, rdn # perform operation
fmul.s f2, f20, f30, rmm # perform operation
fmul.s f2, f20, f30, rne # perform operation
fmul.s f2, f20, f30, rtz # perform operation
fmul.s f2, f20, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f20, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f20, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f20, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f20, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f20, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80000001)
li x1, 0x1a6872bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f19, 0(x2) # load 0x40000000 from memory into f19
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f20, 0(x2) # load 0x80000001 from memory into f20
fmul.s f1, f19, f20, dyn # perform operation
fmul.s f1, f19, f20, rdn # perform operation
fmul.s f1, f19, f20, rmm # perform operation
fmul.s f1, f19, f20, rne # perform operation
fmul.s f1, f19, f20, rtz # perform operation
fmul.s f1, f19, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f19, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f19, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f19, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f19, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f19, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f800000)
li x24, 0x8afb024d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f1, 0(x2) # load 0x7f800000 from memory into f1
fmul.s f24, f16, f1, dyn # perform operation
fmul.s f24, f16, f1, rdn # perform operation
fmul.s f24, f16, f1, rmm # perform operation
fmul.s f24, f16, f1, rne # perform operation
fmul.s f24, f16, f1, rtz # perform operation
fmul.s f24, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f16, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xff800000)
li x20, 0x82fe1031 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f26, 0(x2) # load 0x40000000 from memory into f26
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f13, 0(x2) # load 0xff800000 from memory into f13
fmul.s f20, f26, f13, dyn # perform operation
fmul.s f20, f26, f13, rdn # perform operation
fmul.s f20, f26, f13, rmm # perform operation
fmul.s f20, f26, f13, rne # perform operation
fmul.s f20, f26, f13, rtz # perform operation
fmul.s f20, f26, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f26, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f26, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f26, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f26, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f26, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fc00000)
li x22, 0x3dc99d0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f2, 0(x2) # load 0x40000000 from memory into f2
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f1, 0(x2) # load 0x7fc00000 from memory into f1
fmul.s f22, f2, f1, dyn # perform operation
fmul.s f22, f2, f1, rdn # perform operation
fmul.s f22, f2, f1, rmm # perform operation
fmul.s f22, f2, f1, rne # perform operation
fmul.s f22, f2, f1, rtz # perform operation
fmul.s f22, f2, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f2, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f2, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f2, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f2, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f2, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fffffff)
li x5, 0xa584b534 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f21, 0(x2) # load 0x7fffffff from memory into f21
fmul.s f5, f8, f21, dyn # perform operation
fmul.s f5, f8, f21, rdn # perform operation
fmul.s f5, f8, f21, rmm # perform operation
fmul.s f5, f8, f21, rne # perform operation
fmul.s f5, f8, f21, rtz # perform operation
fmul.s f5, f8, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f8, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f8, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f8, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f8, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f8, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f800001)
li x5, 0xda60d9aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f10, 0(x2) # load 0x40000000 from memory into f10
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f20, 0(x2) # load 0x7f800001 from memory into f20
fmul.s f5, f10, f20, dyn # perform operation
fmul.s f5, f10, f20, rdn # perform operation
fmul.s f5, f10, f20, rmm # perform operation
fmul.s f5, f10, f20, rne # perform operation
fmul.s f5, f10, f20, rtz # perform operation
fmul.s f5, f10, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f10, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f10, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f10, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f10, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f10, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fbfffff)
li x3, 0x5fa46cdb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f17, 0(x2) # load 0x40000000 from memory into f17
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f19, 0(x2) # load 0x7fbfffff from memory into f19
fmul.s f3, f17, f19, dyn # perform operation
fmul.s f3, f17, f19, rdn # perform operation
fmul.s f3, f17, f19, rmm # perform operation
fmul.s f3, f17, f19, rne # perform operation
fmul.s f3, f17, f19, rtz # perform operation
fmul.s f3, f17, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f17, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f17, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f17, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f17, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f17, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7ef8654f)
li x29, 0x4816c78e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f12, 0(x2) # load 0x40000000 from memory into f12
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f25, 0(x2) # load 0x7ef8654f from memory into f25
fmul.s f29, f12, f25, dyn # perform operation
fmul.s f29, f12, f25, rdn # perform operation
fmul.s f29, f12, f25, rmm # perform operation
fmul.s f29, f12, f25, rne # perform operation
fmul.s f29, f12, f25, rtz # perform operation
fmul.s f29, f12, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f12, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f12, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f12, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f12, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f12, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x813d9ab0)
li x25, 0x8a577102 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f17, 0(x2) # load 0x40000000 from memory into f17
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f2, 0(x2) # load 0x813d9ab0 from memory into f2
fmul.s f25, f17, f2, dyn # perform operation
fmul.s f25, f17, f2, rdn # perform operation
fmul.s f25, f17, f2, rmm # perform operation
fmul.s f25, f17, f2, rne # perform operation
fmul.s f25, f17, f2, rtz # perform operation
fmul.s f25, f17, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f17, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f17, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f17, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f17, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f17, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x0)
li x8, 0x7c9d2786 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f19, 0(x2) # load 0xc0000000 from memory into f19
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f6, 0(x2) # load 0x00000000 from memory into f6
fmul.s f8, f19, f6, dyn # perform operation
fmul.s f8, f19, f6, rdn # perform operation
fmul.s f8, f19, f6, rmm # perform operation
fmul.s f8, f19, f6, rne # perform operation
fmul.s f8, f19, f6, rtz # perform operation
fmul.s f8, f19, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f19, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f19, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f19, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f19, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f19, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80000000)
li x3, 0xef520b4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f5, 0(x2) # load 0xc0000000 from memory into f5
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f23, 0(x2) # load 0x80000000 from memory into f23
fmul.s f3, f5, f23, dyn # perform operation
fmul.s f3, f5, f23, rdn # perform operation
fmul.s f3, f5, f23, rmm # perform operation
fmul.s f3, f5, f23, rne # perform operation
fmul.s f3, f5, f23, rtz # perform operation
fmul.s f3, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f5, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x3f800000)
li x21, 0xc6836f1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f1, 0(x2) # load 0x3f800000 from memory into f1
fmul.s f21, f14, f1, dyn # perform operation
fmul.s f21, f14, f1, rdn # perform operation
fmul.s f21, f14, f1, rmm # perform operation
fmul.s f21, f14, f1, rne # perform operation
fmul.s f21, f14, f1, rtz # perform operation
fmul.s f21, f14, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f14, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f14, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f14, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f14, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f14, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xbf800000)
li x5, 0x5ad22ed9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f28, 0(x2) # load 0xc0000000 from memory into f28
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
fmul.s f5, f28, f9, dyn # perform operation
fmul.s f5, f28, f9, rdn # perform operation
fmul.s f5, f28, f9, rmm # perform operation
fmul.s f5, f28, f9, rne # perform operation
fmul.s f5, f28, f9, rtz # perform operation
fmul.s f5, f28, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f28, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f28, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f28, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f28, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f28, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x3fc00000)
li x18, 0x640bbbbb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f11, 0(x2) # load 0xc0000000 from memory into f11
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
fmul.s f18, f11, f12, dyn # perform operation
fmul.s f18, f11, f12, rdn # perform operation
fmul.s f18, f11, f12, rmm # perform operation
fmul.s f18, f11, f12, rne # perform operation
fmul.s f18, f11, f12, rtz # perform operation
fmul.s f18, f11, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f11, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f11, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f11, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f11, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f11, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xbfc00000)
li x14, 0x0d14cdef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f5, 0(x2) # load 0xc0000000 from memory into f5
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f23, 0(x2) # load 0xbfc00000 from memory into f23
fmul.s f14, f5, f23, dyn # perform operation
fmul.s f14, f5, f23, rdn # perform operation
fmul.s f14, f5, f23, rmm # perform operation
fmul.s f14, f5, f23, rne # perform operation
fmul.s f14, f5, f23, rtz # perform operation
fmul.s f14, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f5, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x40000000)
li x1, 0xea1c6d73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f22, 0(x2) # load 0xc0000000 from memory into f22
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
fmul.s f1, f22, f23, dyn # perform operation
fmul.s f1, f22, f23, rdn # perform operation
fmul.s f1, f22, f23, rmm # perform operation
fmul.s f1, f22, f23, rne # perform operation
fmul.s f1, f22, f23, rtz # perform operation
fmul.s f1, f22, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f22, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f22, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f22, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f22, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f22, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xc0000000)
li x10, 0xd2ffea89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f15, 0(x2) # load 0xc0000000 from memory into f15
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f19, 0(x2) # load 0xc0000000 from memory into f19
fmul.s f10, f15, f19, dyn # perform operation
fmul.s f10, f15, f19, rdn # perform operation
fmul.s f10, f15, f19, rmm # perform operation
fmul.s f10, f15, f19, rne # perform operation
fmul.s f10, f15, f19, rtz # perform operation
fmul.s f10, f15, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f15, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f15, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f15, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f15, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f15, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x800000)
li x4, 0x3aaa7bb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
fmul.s f4, f31, f11, dyn # perform operation
fmul.s f4, f31, f11, rdn # perform operation
fmul.s f4, f31, f11, rmm # perform operation
fmul.s f4, f31, f11, rne # perform operation
fmul.s f4, f31, f11, rtz # perform operation
fmul.s f4, f31, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f31, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f31, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f31, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f31, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f31, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80800000)
li x10, 0xfa62c687 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f5, 0(x2) # load 0x80800000 from memory into f5
fmul.s f10, f29, f5, dyn # perform operation
fmul.s f10, f29, f5, rdn # perform operation
fmul.s f10, f29, f5, rmm # perform operation
fmul.s f10, f29, f5, rne # perform operation
fmul.s f10, f29, f5, rtz # perform operation
fmul.s f10, f29, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f29, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f29, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f29, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f29, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f29, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f7fffff)
li x30, 0x5637a981 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f13, 0(x2) # load 0xc0000000 from memory into f13
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
fmul.s f30, f13, f3, dyn # perform operation
fmul.s f30, f13, f3, rdn # perform operation
fmul.s f30, f13, f3, rmm # perform operation
fmul.s f30, f13, f3, rne # perform operation
fmul.s f30, f13, f3, rtz # perform operation
fmul.s f30, f13, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f13, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f13, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f13, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f13, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f13, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xff7fffff)
li x21, 0xf25669f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f18, 0(x2) # load 0xff7fffff from memory into f18
fmul.s f21, f31, f18, dyn # perform operation
fmul.s f21, f31, f18, rdn # perform operation
fmul.s f21, f31, f18, rmm # perform operation
fmul.s f21, f31, f18, rne # perform operation
fmul.s f21, f31, f18, rtz # perform operation
fmul.s f21, f31, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f31, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f31, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f31, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f31, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f31, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fffff)
li x15, 0x4f9a108e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f26, 0(x2) # load 0xc0000000 from memory into f26
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f7, 0(x2) # load 0x007fffff from memory into f7
fmul.s f15, f26, f7, dyn # perform operation
fmul.s f15, f26, f7, rdn # perform operation
fmul.s f15, f26, f7, rmm # perform operation
fmul.s f15, f26, f7, rne # perform operation
fmul.s f15, f26, f7, rtz # perform operation
fmul.s f15, f26, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f26, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f26, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f26, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f26, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f26, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x807fffff)
li x16, 0x728efc30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f9, 0(x2) # load 0xc0000000 from memory into f9
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f11, 0(x2) # load 0x807fffff from memory into f11
fmul.s f16, f9, f11, dyn # perform operation
fmul.s f16, f9, f11, rdn # perform operation
fmul.s f16, f9, f11, rmm # perform operation
fmul.s f16, f9, f11, rne # perform operation
fmul.s f16, f9, f11, rtz # perform operation
fmul.s f16, f9, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f9, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f9, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f9, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f9, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f9, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x400000)
li x10, 0xae68aa0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f12, 0(x2) # load 0xc0000000 from memory into f12
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f29, 0(x2) # load 0x00400000 from memory into f29
fmul.s f10, f12, f29, dyn # perform operation
fmul.s f10, f12, f29, rdn # perform operation
fmul.s f10, f12, f29, rmm # perform operation
fmul.s f10, f12, f29, rne # perform operation
fmul.s f10, f12, f29, rtz # perform operation
fmul.s f10, f12, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f12, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f12, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f12, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f12, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f12, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80400000)
li x12, 0x0bf4877c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f19, 0(x2) # load 0x80400000 from memory into f19
fmul.s f12, f21, f19, dyn # perform operation
fmul.s f12, f21, f19, rdn # perform operation
fmul.s f12, f21, f19, rmm # perform operation
fmul.s f12, f21, f19, rne # perform operation
fmul.s f12, f21, f19, rtz # perform operation
fmul.s f12, f21, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f21, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f21, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f21, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f21, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f21, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x1)
li x15, 0xf1579d01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f12, 0(x2) # load 0xc0000000 from memory into f12
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f17, 0(x2) # load 0x00000001 from memory into f17
fmul.s f15, f12, f17, dyn # perform operation
fmul.s f15, f12, f17, rdn # perform operation
fmul.s f15, f12, f17, rmm # perform operation
fmul.s f15, f12, f17, rne # perform operation
fmul.s f15, f12, f17, rtz # perform operation
fmul.s f15, f12, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f12, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f12, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f12, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f12, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f12, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80000001)
li x12, 0xdc4fd70e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f1, 0(x2) # load 0xc0000000 from memory into f1
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f29, 0(x2) # load 0x80000001 from memory into f29
fmul.s f12, f1, f29, dyn # perform operation
fmul.s f12, f1, f29, rdn # perform operation
fmul.s f12, f1, f29, rmm # perform operation
fmul.s f12, f1, f29, rne # perform operation
fmul.s f12, f1, f29, rtz # perform operation
fmul.s f12, f1, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f1, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f1, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f1, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f1, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f1, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f800000)
li x17, 0x09c7a174 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f16, 0(x2) # load 0xc0000000 from memory into f16
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f30, 0(x2) # load 0x7f800000 from memory into f30
fmul.s f17, f16, f30, dyn # perform operation
fmul.s f17, f16, f30, rdn # perform operation
fmul.s f17, f16, f30, rmm # perform operation
fmul.s f17, f16, f30, rne # perform operation
fmul.s f17, f16, f30, rtz # perform operation
fmul.s f17, f16, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f16, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f16, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f16, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f16, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f16, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xff800000)
li x14, 0xfe95e7a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f23, 0(x2) # load 0xc0000000 from memory into f23
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
fmul.s f14, f23, f1, dyn # perform operation
fmul.s f14, f23, f1, rdn # perform operation
fmul.s f14, f23, f1, rmm # perform operation
fmul.s f14, f23, f1, rne # perform operation
fmul.s f14, f23, f1, rtz # perform operation
fmul.s f14, f23, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f23, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f23, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f23, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f23, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f23, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fc00000)
li x15, 0x9c027f10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f9, 0(x2) # load 0xc0000000 from memory into f9
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f27, 0(x2) # load 0x7fc00000 from memory into f27
fmul.s f15, f9, f27, dyn # perform operation
fmul.s f15, f9, f27, rdn # perform operation
fmul.s f15, f9, f27, rmm # perform operation
fmul.s f15, f9, f27, rne # perform operation
fmul.s f15, f9, f27, rtz # perform operation
fmul.s f15, f9, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f9, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f9, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f9, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f9, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f9, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fffffff)
li x15, 0x6bbd0463 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
fmul.s f15, f14, f10, dyn # perform operation
fmul.s f15, f14, f10, rdn # perform operation
fmul.s f15, f14, f10, rmm # perform operation
fmul.s f15, f14, f10, rne # perform operation
fmul.s f15, f14, f10, rtz # perform operation
fmul.s f15, f14, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f14, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f14, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f14, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f14, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f14, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f800001)
li x16, 0xff217c03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f24, 0(x2) # load 0xc0000000 from memory into f24
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
fmul.s f16, f24, f5, dyn # perform operation
fmul.s f16, f24, f5, rdn # perform operation
fmul.s f16, f24, f5, rmm # perform operation
fmul.s f16, f24, f5, rne # perform operation
fmul.s f16, f24, f5, rtz # perform operation
fmul.s f16, f24, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f24, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f24, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f24, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f24, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f24, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fbfffff)
li x20, 0xf0db644d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f1, 0(x2) # load 0xc0000000 from memory into f1
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f12, 0(x2) # load 0x7fbfffff from memory into f12
fmul.s f20, f1, f12, dyn # perform operation
fmul.s f20, f1, f12, rdn # perform operation
fmul.s f20, f1, f12, rmm # perform operation
fmul.s f20, f1, f12, rne # perform operation
fmul.s f20, f1, f12, rtz # perform operation
fmul.s f20, f1, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f1, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f1, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f1, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f1, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f1, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7ef8654f)
li x18, 0x8a43d9cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f22, 0(x2) # load 0xc0000000 from memory into f22
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
fmul.s f18, f22, f13, dyn # perform operation
fmul.s f18, f22, f13, rdn # perform operation
fmul.s f18, f22, f13, rmm # perform operation
fmul.s f18, f22, f13, rne # perform operation
fmul.s f18, f22, f13, rtz # perform operation
fmul.s f18, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f22, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x813d9ab0)
li x31, 0x4a158552 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f6, 0(x2) # load 0x813d9ab0 from memory into f6
fmul.s f31, f29, f6, dyn # perform operation
fmul.s f31, f29, f6, rdn # perform operation
fmul.s f31, f29, f6, rmm # perform operation
fmul.s f31, f29, f6, rne # perform operation
fmul.s f31, f29, f6, rtz # perform operation
fmul.s f31, f29, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f29, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f29, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f29, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f29, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f29, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x0)
li x10, 0xe922ff4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f20, 0(x2) # load 0x00800000 from memory into f20
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f2, 0(x2) # load 0x00000000 from memory into f2
fmul.s f10, f20, f2, dyn # perform operation
fmul.s f10, f20, f2, rdn # perform operation
fmul.s f10, f20, f2, rmm # perform operation
fmul.s f10, f20, f2, rne # perform operation
fmul.s f10, f20, f2, rtz # perform operation
fmul.s f10, f20, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f20, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f20, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f20, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f20, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f20, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80000000)
li x28, 0xb0834405 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f4, 0(x2) # load 0x00800000 from memory into f4
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f14, 0(x2) # load 0x80000000 from memory into f14
fmul.s f28, f4, f14, dyn # perform operation
fmul.s f28, f4, f14, rdn # perform operation
fmul.s f28, f4, f14, rmm # perform operation
fmul.s f28, f4, f14, rne # perform operation
fmul.s f28, f4, f14, rtz # perform operation
fmul.s f28, f4, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f4, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f4, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f4, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f4, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f4, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x3f800000)
li x8, 0x3d71eef2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f19, 0(x2) # load 0x00800000 from memory into f19
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f23, 0(x2) # load 0x3f800000 from memory into f23
fmul.s f8, f19, f23, dyn # perform operation
fmul.s f8, f19, f23, rdn # perform operation
fmul.s f8, f19, f23, rmm # perform operation
fmul.s f8, f19, f23, rne # perform operation
fmul.s f8, f19, f23, rtz # perform operation
fmul.s f8, f19, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f19, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f19, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f19, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f19, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f19, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xbf800000)
li x14, 0xa4168660 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f31, 0(x2) # load 0xbf800000 from memory into f31
fmul.s f14, f23, f31, dyn # perform operation
fmul.s f14, f23, f31, rdn # perform operation
fmul.s f14, f23, f31, rmm # perform operation
fmul.s f14, f23, f31, rne # perform operation
fmul.s f14, f23, f31, rtz # perform operation
fmul.s f14, f23, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f23, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f23, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f23, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f23, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f23, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x3fc00000)
li x5, 0x980773c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f17, 0(x2) # load 0x00800000 from memory into f17
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f21, 0(x2) # load 0x3fc00000 from memory into f21
fmul.s f5, f17, f21, dyn # perform operation
fmul.s f5, f17, f21, rdn # perform operation
fmul.s f5, f17, f21, rmm # perform operation
fmul.s f5, f17, f21, rne # perform operation
fmul.s f5, f17, f21, rtz # perform operation
fmul.s f5, f17, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f17, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f17, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f17, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f17, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f17, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xbfc00000)
li x18, 0x08182473 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f15, 0(x2) # load 0x00800000 from memory into f15
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
fmul.s f18, f15, f20, dyn # perform operation
fmul.s f18, f15, f20, rdn # perform operation
fmul.s f18, f15, f20, rmm # perform operation
fmul.s f18, f15, f20, rne # perform operation
fmul.s f18, f15, f20, rtz # perform operation
fmul.s f18, f15, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f15, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f15, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f15, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f15, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f15, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x40000000)
li x25, 0xaa6afa90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f24, 0(x2) # load 0x00800000 from memory into f24
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f18, 0(x2) # load 0x40000000 from memory into f18
fmul.s f25, f24, f18, dyn # perform operation
fmul.s f25, f24, f18, rdn # perform operation
fmul.s f25, f24, f18, rmm # perform operation
fmul.s f25, f24, f18, rne # perform operation
fmul.s f25, f24, f18, rtz # perform operation
fmul.s f25, f24, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f24, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f24, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f24, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f24, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f24, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xc0000000)
li x19, 0x5a2d846b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f4, 0(x2) # load 0x00800000 from memory into f4
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f23, 0(x2) # load 0xc0000000 from memory into f23
fmul.s f19, f4, f23, dyn # perform operation
fmul.s f19, f4, f23, rdn # perform operation
fmul.s f19, f4, f23, rmm # perform operation
fmul.s f19, f4, f23, rne # perform operation
fmul.s f19, f4, f23, rtz # perform operation
fmul.s f19, f4, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f4, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f4, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f4, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f4, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f4, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x800000)
li x22, 0xbe3567b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f26, 0(x2) # load 0x00800000 from memory into f26
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f25, 0(x2) # load 0x00800000 from memory into f25
fmul.s f22, f26, f25, dyn # perform operation
fmul.s f22, f26, f25, rdn # perform operation
fmul.s f22, f26, f25, rmm # perform operation
fmul.s f22, f26, f25, rne # perform operation
fmul.s f22, f26, f25, rtz # perform operation
fmul.s f22, f26, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f26, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f26, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f26, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f26, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f26, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80800000)
li x1, 0x9f7336f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f2, 0(x2) # load 0x80800000 from memory into f2
fmul.s f1, f22, f2, dyn # perform operation
fmul.s f1, f22, f2, rdn # perform operation
fmul.s f1, f22, f2, rmm # perform operation
fmul.s f1, f22, f2, rne # perform operation
fmul.s f1, f22, f2, rtz # perform operation
fmul.s f1, f22, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f22, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f22, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f22, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f22, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f22, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f7fffff)
li x14, 0x0af076d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f28, 0(x2) # load 0x00800000 from memory into f28
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f19, 0(x2) # load 0x7f7fffff from memory into f19
fmul.s f14, f28, f19, dyn # perform operation
fmul.s f14, f28, f19, rdn # perform operation
fmul.s f14, f28, f19, rmm # perform operation
fmul.s f14, f28, f19, rne # perform operation
fmul.s f14, f28, f19, rtz # perform operation
fmul.s f14, f28, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f28, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f28, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f28, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f28, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f28, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xff7fffff)
li x4, 0x09c9ebaa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f31, 0(x2) # load 0x00800000 from memory into f31
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f29, 0(x2) # load 0xff7fffff from memory into f29
fmul.s f4, f31, f29, dyn # perform operation
fmul.s f4, f31, f29, rdn # perform operation
fmul.s f4, f31, f29, rmm # perform operation
fmul.s f4, f31, f29, rne # perform operation
fmul.s f4, f31, f29, rtz # perform operation
fmul.s f4, f31, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f31, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f31, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f31, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f31, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f31, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fffff)
li x19, 0xe6b15e59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f8, 0(x2) # load 0x00800000 from memory into f8
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f16, 0(x2) # load 0x007fffff from memory into f16
fmul.s f19, f8, f16, dyn # perform operation
fmul.s f19, f8, f16, rdn # perform operation
fmul.s f19, f8, f16, rmm # perform operation
fmul.s f19, f8, f16, rne # perform operation
fmul.s f19, f8, f16, rtz # perform operation
fmul.s f19, f8, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f8, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f8, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f8, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f8, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f8, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x807fffff)
li x24, 0x10fb0866 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f9, 0(x2) # load 0x00800000 from memory into f9
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f13, 0(x2) # load 0x807fffff from memory into f13
fmul.s f24, f9, f13, dyn # perform operation
fmul.s f24, f9, f13, rdn # perform operation
fmul.s f24, f9, f13, rmm # perform operation
fmul.s f24, f9, f13, rne # perform operation
fmul.s f24, f9, f13, rtz # perform operation
fmul.s f24, f9, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f9, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f9, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f9, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f9, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f9, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x400000)
li x15, 0x1a47cfda # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f22, 0(x2) # load 0x00400000 from memory into f22
fmul.s f15, f11, f22, dyn # perform operation
fmul.s f15, f11, f22, rdn # perform operation
fmul.s f15, f11, f22, rmm # perform operation
fmul.s f15, f11, f22, rne # perform operation
fmul.s f15, f11, f22, rtz # perform operation
fmul.s f15, f11, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f11, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f11, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f11, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f11, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f11, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80400000)
li x1, 0xea256d1d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f24, 0(x2) # load 0x00800000 from memory into f24
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f3, 0(x2) # load 0x80400000 from memory into f3
fmul.s f1, f24, f3, dyn # perform operation
fmul.s f1, f24, f3, rdn # perform operation
fmul.s f1, f24, f3, rmm # perform operation
fmul.s f1, f24, f3, rne # perform operation
fmul.s f1, f24, f3, rtz # perform operation
fmul.s f1, f24, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f24, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f24, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f24, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f24, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f24, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x1)
li x23, 0x3dd61fa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f29, 0(x2) # load 0x00800000 from memory into f29
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f18, 0(x2) # load 0x00000001 from memory into f18
fmul.s f23, f29, f18, dyn # perform operation
fmul.s f23, f29, f18, rdn # perform operation
fmul.s f23, f29, f18, rmm # perform operation
fmul.s f23, f29, f18, rne # perform operation
fmul.s f23, f29, f18, rtz # perform operation
fmul.s f23, f29, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f29, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f29, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f29, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f29, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f29, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80000001)
li x5, 0xa2bf97e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f10, 0(x2) # load 0x00800000 from memory into f10
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f12, 0(x2) # load 0x80000001 from memory into f12
fmul.s f5, f10, f12, dyn # perform operation
fmul.s f5, f10, f12, rdn # perform operation
fmul.s f5, f10, f12, rmm # perform operation
fmul.s f5, f10, f12, rne # perform operation
fmul.s f5, f10, f12, rtz # perform operation
fmul.s f5, f10, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f10, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f10, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f10, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f10, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f10, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f800000)
li x17, 0xf616842e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
fmul.s f17, f11, f31, dyn # perform operation
fmul.s f17, f11, f31, rdn # perform operation
fmul.s f17, f11, f31, rmm # perform operation
fmul.s f17, f11, f31, rne # perform operation
fmul.s f17, f11, f31, rtz # perform operation
fmul.s f17, f11, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f11, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f11, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f11, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f11, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f11, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xff800000)
li x18, 0x18863c68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f16, 0(x2) # load 0x00800000 from memory into f16
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f28, 0(x2) # load 0xff800000 from memory into f28
fmul.s f18, f16, f28, dyn # perform operation
fmul.s f18, f16, f28, rdn # perform operation
fmul.s f18, f16, f28, rmm # perform operation
fmul.s f18, f16, f28, rne # perform operation
fmul.s f18, f16, f28, rtz # perform operation
fmul.s f18, f16, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f16, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f16, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f16, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f16, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f16, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fc00000)
li x2, 0xcc1da2f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f31, 0(x2) # load 0x00800000 from memory into f31
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f24, 0(x2) # load 0x7fc00000 from memory into f24
fmul.s f2, f31, f24, dyn # perform operation
fmul.s f2, f31, f24, rdn # perform operation
fmul.s f2, f31, f24, rmm # perform operation
fmul.s f2, f31, f24, rne # perform operation
fmul.s f2, f31, f24, rtz # perform operation
fmul.s f2, f31, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f31, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f31, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f31, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f31, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f31, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fffffff)
li x20, 0x88e8a462 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f18, 0(x2) # load 0x00800000 from memory into f18
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f26, 0(x2) # load 0x7fffffff from memory into f26
fmul.s f20, f18, f26, dyn # perform operation
fmul.s f20, f18, f26, rdn # perform operation
fmul.s f20, f18, f26, rmm # perform operation
fmul.s f20, f18, f26, rne # perform operation
fmul.s f20, f18, f26, rtz # perform operation
fmul.s f20, f18, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f18, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f18, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f18, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f18, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f18, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f800001)
li x11, 0xfe340f78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f21, 0(x2) # load 0x00800000 from memory into f21
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f13, 0(x2) # load 0x7f800001 from memory into f13
fmul.s f11, f21, f13, dyn # perform operation
fmul.s f11, f21, f13, rdn # perform operation
fmul.s f11, f21, f13, rmm # perform operation
fmul.s f11, f21, f13, rne # perform operation
fmul.s f11, f21, f13, rtz # perform operation
fmul.s f11, f21, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f21, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f21, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f21, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f21, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f21, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fbfffff)
li x22, 0x2d9124c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f2, 0(x2) # load 0x00800000 from memory into f2
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f17, 0(x2) # load 0x7fbfffff from memory into f17
fmul.s f22, f2, f17, dyn # perform operation
fmul.s f22, f2, f17, rdn # perform operation
fmul.s f22, f2, f17, rmm # perform operation
fmul.s f22, f2, f17, rne # perform operation
fmul.s f22, f2, f17, rtz # perform operation
fmul.s f22, f2, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f2, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f2, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f2, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f2, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f2, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7ef8654f)
li x19, 0xe129979b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f25, 0(x2) # load 0x00800000 from memory into f25
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f27, 0(x2) # load 0x7ef8654f from memory into f27
fmul.s f19, f25, f27, dyn # perform operation
fmul.s f19, f25, f27, rdn # perform operation
fmul.s f19, f25, f27, rmm # perform operation
fmul.s f19, f25, f27, rne # perform operation
fmul.s f19, f25, f27, rtz # perform operation
fmul.s f19, f25, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f25, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f25, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f25, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f25, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f25, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x813d9ab0)
li x10, 0xc603f0db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f15, 0(x2) # load 0x00800000 from memory into f15
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f7, 0(x2) # load 0x813d9ab0 from memory into f7
fmul.s f10, f15, f7, dyn # perform operation
fmul.s f10, f15, f7, rdn # perform operation
fmul.s f10, f15, f7, rmm # perform operation
fmul.s f10, f15, f7, rne # perform operation
fmul.s f10, f15, f7, rtz # perform operation
fmul.s f10, f15, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f15, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f15, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f15, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f15, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f15, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x0)
li x20, 0x86dd8b33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f12, 0(x2) # load 0x80800000 from memory into f12
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
fmul.s f20, f12, f16, dyn # perform operation
fmul.s f20, f12, f16, rdn # perform operation
fmul.s f20, f12, f16, rmm # perform operation
fmul.s f20, f12, f16, rne # perform operation
fmul.s f20, f12, f16, rtz # perform operation
fmul.s f20, f12, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f12, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f12, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f12, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f12, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f12, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80000000)
li x20, 0x11385402 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f8, 0(x2) # load 0x80000000 from memory into f8
fmul.s f20, f23, f8, dyn # perform operation
fmul.s f20, f23, f8, rdn # perform operation
fmul.s f20, f23, f8, rmm # perform operation
fmul.s f20, f23, f8, rne # perform operation
fmul.s f20, f23, f8, rtz # perform operation
fmul.s f20, f23, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f23, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f23, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f23, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f23, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f23, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x3f800000)
li x9, 0xa2d33dc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f13, 0(x2) # load 0x80800000 from memory into f13
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f7, 0(x2) # load 0x3f800000 from memory into f7
fmul.s f9, f13, f7, dyn # perform operation
fmul.s f9, f13, f7, rdn # perform operation
fmul.s f9, f13, f7, rmm # perform operation
fmul.s f9, f13, f7, rne # perform operation
fmul.s f9, f13, f7, rtz # perform operation
fmul.s f9, f13, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f13, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f13, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f13, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f13, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f13, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xbf800000)
li x3, 0xc746b53e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f25, 0(x2) # load 0x80800000 from memory into f25
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f8, 0(x2) # load 0xbf800000 from memory into f8
fmul.s f3, f25, f8, dyn # perform operation
fmul.s f3, f25, f8, rdn # perform operation
fmul.s f3, f25, f8, rmm # perform operation
fmul.s f3, f25, f8, rne # perform operation
fmul.s f3, f25, f8, rtz # perform operation
fmul.s f3, f25, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f25, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f25, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f25, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f25, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f25, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x3fc00000)
li x5, 0x19600348 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f4, 0(x2) # load 0x80800000 from memory into f4
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
fmul.s f5, f4, f13, dyn # perform operation
fmul.s f5, f4, f13, rdn # perform operation
fmul.s f5, f4, f13, rmm # perform operation
fmul.s f5, f4, f13, rne # perform operation
fmul.s f5, f4, f13, rtz # perform operation
fmul.s f5, f4, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f4, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f4, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f4, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f4, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f4, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xbfc00000)
li x24, 0xb3b6da3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f19, 0(x2) # load 0x80800000 from memory into f19
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f5, 0(x2) # load 0xbfc00000 from memory into f5
fmul.s f24, f19, f5, dyn # perform operation
fmul.s f24, f19, f5, rdn # perform operation
fmul.s f24, f19, f5, rmm # perform operation
fmul.s f24, f19, f5, rne # perform operation
fmul.s f24, f19, f5, rtz # perform operation
fmul.s f24, f19, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f19, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f19, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f19, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f19, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f19, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x40000000)
li x20, 0x281e85a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f15, 0(x2) # load 0x80800000 from memory into f15
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
fmul.s f20, f15, f8, dyn # perform operation
fmul.s f20, f15, f8, rdn # perform operation
fmul.s f20, f15, f8, rmm # perform operation
fmul.s f20, f15, f8, rne # perform operation
fmul.s f20, f15, f8, rtz # perform operation
fmul.s f20, f15, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f15, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f15, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f15, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f15, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f15, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xc0000000)
li x22, 0x8b7ce4a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f25, 0(x2) # load 0x80800000 from memory into f25
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f18, 0(x2) # load 0xc0000000 from memory into f18
fmul.s f22, f25, f18, dyn # perform operation
fmul.s f22, f25, f18, rdn # perform operation
fmul.s f22, f25, f18, rmm # perform operation
fmul.s f22, f25, f18, rne # perform operation
fmul.s f22, f25, f18, rtz # perform operation
fmul.s f22, f25, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f25, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f25, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f25, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f25, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f25, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x800000)
li x20, 0x55e8e316 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f16, 0(x2) # load 0x80800000 from memory into f16
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f29, 0(x2) # load 0x00800000 from memory into f29
fmul.s f20, f16, f29, dyn # perform operation
fmul.s f20, f16, f29, rdn # perform operation
fmul.s f20, f16, f29, rmm # perform operation
fmul.s f20, f16, f29, rne # perform operation
fmul.s f20, f16, f29, rtz # perform operation
fmul.s f20, f16, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f16, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f16, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f16, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f16, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f16, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80800000)
li x11, 0x00edafa5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f19, 0(x2) # load 0x80800000 from memory into f19
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f21, 0(x2) # load 0x80800000 from memory into f21
fmul.s f11, f19, f21, dyn # perform operation
fmul.s f11, f19, f21, rdn # perform operation
fmul.s f11, f19, f21, rmm # perform operation
fmul.s f11, f19, f21, rne # perform operation
fmul.s f11, f19, f21, rtz # perform operation
fmul.s f11, f19, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f19, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f19, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f19, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f19, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f19, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f7fffff)
li x20, 0x39c76ac2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f12, 0(x2) # load 0x80800000 from memory into f12
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
fmul.s f20, f12, f29, dyn # perform operation
fmul.s f20, f12, f29, rdn # perform operation
fmul.s f20, f12, f29, rmm # perform operation
fmul.s f20, f12, f29, rne # perform operation
fmul.s f20, f12, f29, rtz # perform operation
fmul.s f20, f12, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f12, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f12, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f12, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f12, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f12, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xff7fffff)
li x9, 0xcd4ce660 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f13, 0(x2) # load 0x80800000 from memory into f13
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f28, 0(x2) # load 0xff7fffff from memory into f28
fmul.s f9, f13, f28, dyn # perform operation
fmul.s f9, f13, f28, rdn # perform operation
fmul.s f9, f13, f28, rmm # perform operation
fmul.s f9, f13, f28, rne # perform operation
fmul.s f9, f13, f28, rtz # perform operation
fmul.s f9, f13, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f13, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f13, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f13, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f13, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f13, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fffff)
li x4, 0x80c413e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f25, 0(x2) # load 0x80800000 from memory into f25
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f3, 0(x2) # load 0x007fffff from memory into f3
fmul.s f4, f25, f3, dyn # perform operation
fmul.s f4, f25, f3, rdn # perform operation
fmul.s f4, f25, f3, rmm # perform operation
fmul.s f4, f25, f3, rne # perform operation
fmul.s f4, f25, f3, rtz # perform operation
fmul.s f4, f25, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f25, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f25, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f25, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f25, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f25, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x807fffff)
li x24, 0xdcf4e0d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f11, 0(x2) # load 0x80800000 from memory into f11
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f12, 0(x2) # load 0x807fffff from memory into f12
fmul.s f24, f11, f12, dyn # perform operation
fmul.s f24, f11, f12, rdn # perform operation
fmul.s f24, f11, f12, rmm # perform operation
fmul.s f24, f11, f12, rne # perform operation
fmul.s f24, f11, f12, rtz # perform operation
fmul.s f24, f11, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f11, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f11, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f11, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f11, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f11, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x400000)
li x21, 0x90ea202a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f12, 0(x2) # load 0x80800000 from memory into f12
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f30, 0(x2) # load 0x00400000 from memory into f30
fmul.s f21, f12, f30, dyn # perform operation
fmul.s f21, f12, f30, rdn # perform operation
fmul.s f21, f12, f30, rmm # perform operation
fmul.s f21, f12, f30, rne # perform operation
fmul.s f21, f12, f30, rtz # perform operation
fmul.s f21, f12, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f12, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f12, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f12, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f12, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f12, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80400000)
li x30, 0x5725814e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f14, 0(x2) # load 0x80800000 from memory into f14
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f31, 0(x2) # load 0x80400000 from memory into f31
fmul.s f30, f14, f31, dyn # perform operation
fmul.s f30, f14, f31, rdn # perform operation
fmul.s f30, f14, f31, rmm # perform operation
fmul.s f30, f14, f31, rne # perform operation
fmul.s f30, f14, f31, rtz # perform operation
fmul.s f30, f14, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f14, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f14, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f14, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f14, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f14, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x1)
li x15, 0x75dbc769 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f30, 0(x2) # load 0x80800000 from memory into f30
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f7, 0(x2) # load 0x00000001 from memory into f7
fmul.s f15, f30, f7, dyn # perform operation
fmul.s f15, f30, f7, rdn # perform operation
fmul.s f15, f30, f7, rmm # perform operation
fmul.s f15, f30, f7, rne # perform operation
fmul.s f15, f30, f7, rtz # perform operation
fmul.s f15, f30, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f30, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f30, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f30, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f30, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f30, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80000001)
li x5, 0x0e97091b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f20, 0(x2) # load 0x80000001 from memory into f20
fmul.s f5, f28, f20, dyn # perform operation
fmul.s f5, f28, f20, rdn # perform operation
fmul.s f5, f28, f20, rmm # perform operation
fmul.s f5, f28, f20, rne # perform operation
fmul.s f5, f28, f20, rtz # perform operation
fmul.s f5, f28, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f28, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f28, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f28, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f28, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f28, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f800000)
li x29, 0xe1857e5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f17, 0(x2) # load 0x80800000 from memory into f17
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f22, 0(x2) # load 0x7f800000 from memory into f22
fmul.s f29, f17, f22, dyn # perform operation
fmul.s f29, f17, f22, rdn # perform operation
fmul.s f29, f17, f22, rmm # perform operation
fmul.s f29, f17, f22, rne # perform operation
fmul.s f29, f17, f22, rtz # perform operation
fmul.s f29, f17, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f17, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f17, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f17, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f17, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f17, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xff800000)
li x18, 0x9699695c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f2, 0(x2) # load 0x80800000 from memory into f2
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f17, 0(x2) # load 0xff800000 from memory into f17
fmul.s f18, f2, f17, dyn # perform operation
fmul.s f18, f2, f17, rdn # perform operation
fmul.s f18, f2, f17, rmm # perform operation
fmul.s f18, f2, f17, rne # perform operation
fmul.s f18, f2, f17, rtz # perform operation
fmul.s f18, f2, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f2, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f2, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f2, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f2, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f2, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fc00000)
li x6, 0x8844d7de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f30, 0(x2) # load 0x80800000 from memory into f30
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f22, 0(x2) # load 0x7fc00000 from memory into f22
fmul.s f6, f30, f22, dyn # perform operation
fmul.s f6, f30, f22, rdn # perform operation
fmul.s f6, f30, f22, rmm # perform operation
fmul.s f6, f30, f22, rne # perform operation
fmul.s f6, f30, f22, rtz # perform operation
fmul.s f6, f30, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f30, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f30, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f30, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f30, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f30, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fffffff)
li x24, 0xa80d2558 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f4, 0(x2) # load 0x7fffffff from memory into f4
fmul.s f24, f23, f4, dyn # perform operation
fmul.s f24, f23, f4, rdn # perform operation
fmul.s f24, f23, f4, rmm # perform operation
fmul.s f24, f23, f4, rne # perform operation
fmul.s f24, f23, f4, rtz # perform operation
fmul.s f24, f23, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f23, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f23, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f23, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f23, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f23, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f800001)
li x15, 0x757a89ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f3, 0(x2) # load 0x80800000 from memory into f3
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f24, 0(x2) # load 0x7f800001 from memory into f24
fmul.s f15, f3, f24, dyn # perform operation
fmul.s f15, f3, f24, rdn # perform operation
fmul.s f15, f3, f24, rmm # perform operation
fmul.s f15, f3, f24, rne # perform operation
fmul.s f15, f3, f24, rtz # perform operation
fmul.s f15, f3, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f3, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f3, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f3, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f3, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f3, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fbfffff)
li x6, 0xc0093992 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f9, 0(x2) # load 0x80800000 from memory into f9
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f21, 0(x2) # load 0x7fbfffff from memory into f21
fmul.s f6, f9, f21, dyn # perform operation
fmul.s f6, f9, f21, rdn # perform operation
fmul.s f6, f9, f21, rmm # perform operation
fmul.s f6, f9, f21, rne # perform operation
fmul.s f6, f9, f21, rtz # perform operation
fmul.s f6, f9, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f9, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f9, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f9, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f9, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f9, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7ef8654f)
li x29, 0x6309306a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f28, 0(x2) # load 0x7ef8654f from memory into f28
fmul.s f29, f10, f28, dyn # perform operation
fmul.s f29, f10, f28, rdn # perform operation
fmul.s f29, f10, f28, rmm # perform operation
fmul.s f29, f10, f28, rne # perform operation
fmul.s f29, f10, f28, rtz # perform operation
fmul.s f29, f10, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f10, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f10, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f10, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f10, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f10, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x813d9ab0)
li x7, 0xc7b50e7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f23, 0(x2) # load 0x813d9ab0 from memory into f23
fmul.s f7, f18, f23, dyn # perform operation
fmul.s f7, f18, f23, rdn # perform operation
fmul.s f7, f18, f23, rmm # perform operation
fmul.s f7, f18, f23, rne # perform operation
fmul.s f7, f18, f23, rtz # perform operation
fmul.s f7, f18, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f18, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f18, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f18, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f18, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f18, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x0)
li x12, 0xfb0a5e84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f17, 0(x2) # load 0x7f7fffff from memory into f17
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f20, 0(x2) # load 0x00000000 from memory into f20
fmul.s f12, f17, f20, dyn # perform operation
fmul.s f12, f17, f20, rdn # perform operation
fmul.s f12, f17, f20, rmm # perform operation
fmul.s f12, f17, f20, rne # perform operation
fmul.s f12, f17, f20, rtz # perform operation
fmul.s f12, f17, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f17, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f17, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f17, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f17, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f17, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80000000)
li x9, 0x4c69696d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f25, 0(x2) # load 0x7f7fffff from memory into f25
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f24, 0(x2) # load 0x80000000 from memory into f24
fmul.s f9, f25, f24, dyn # perform operation
fmul.s f9, f25, f24, rdn # perform operation
fmul.s f9, f25, f24, rmm # perform operation
fmul.s f9, f25, f24, rne # perform operation
fmul.s f9, f25, f24, rtz # perform operation
fmul.s f9, f25, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f25, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f25, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f25, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f25, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f25, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x3f800000)
li x22, 0xe4fce078 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f14, 0(x2) # load 0x7f7fffff from memory into f14
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f31, 0(x2) # load 0x3f800000 from memory into f31
fmul.s f22, f14, f31, dyn # perform operation
fmul.s f22, f14, f31, rdn # perform operation
fmul.s f22, f14, f31, rmm # perform operation
fmul.s f22, f14, f31, rne # perform operation
fmul.s f22, f14, f31, rtz # perform operation
fmul.s f22, f14, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f14, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f14, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f14, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f14, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f14, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xbf800000)
li x20, 0x24d4ec03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f4, 0(x2) # load 0x7f7fffff from memory into f4
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
fmul.s f20, f4, f9, dyn # perform operation
fmul.s f20, f4, f9, rdn # perform operation
fmul.s f20, f4, f9, rmm # perform operation
fmul.s f20, f4, f9, rne # perform operation
fmul.s f20, f4, f9, rtz # perform operation
fmul.s f20, f4, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f4, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f4, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f4, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f4, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f4, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x3fc00000)
li x8, 0xf6908de7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f25, 0(x2) # load 0x7f7fffff from memory into f25
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f4, 0(x2) # load 0x3fc00000 from memory into f4
fmul.s f8, f25, f4, dyn # perform operation
fmul.s f8, f25, f4, rdn # perform operation
fmul.s f8, f25, f4, rmm # perform operation
fmul.s f8, f25, f4, rne # perform operation
fmul.s f8, f25, f4, rtz # perform operation
fmul.s f8, f25, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f25, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f25, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f25, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f25, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f25, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xbfc00000)
li x21, 0x4748a595 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
fmul.s f21, f29, f28, dyn # perform operation
fmul.s f21, f29, f28, rdn # perform operation
fmul.s f21, f29, f28, rmm # perform operation
fmul.s f21, f29, f28, rne # perform operation
fmul.s f21, f29, f28, rtz # perform operation
fmul.s f21, f29, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f29, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f29, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f29, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f29, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f29, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x40000000)
li x4, 0x1d092bc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f19, 0(x2) # load 0x7f7fffff from memory into f19
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f11, 0(x2) # load 0x40000000 from memory into f11
fmul.s f4, f19, f11, dyn # perform operation
fmul.s f4, f19, f11, rdn # perform operation
fmul.s f4, f19, f11, rmm # perform operation
fmul.s f4, f19, f11, rne # perform operation
fmul.s f4, f19, f11, rtz # perform operation
fmul.s f4, f19, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f19, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f19, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f19, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f19, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f19, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xc0000000)
li x11, 0x382a24a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f2, 0(x2) # load 0x7f7fffff from memory into f2
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
fmul.s f11, f2, f14, dyn # perform operation
fmul.s f11, f2, f14, rdn # perform operation
fmul.s f11, f2, f14, rmm # perform operation
fmul.s f11, f2, f14, rne # perform operation
fmul.s f11, f2, f14, rtz # perform operation
fmul.s f11, f2, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f2, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f2, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f2, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f2, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f2, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x800000)
li x24, 0xf7e0f5ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f9, 0(x2) # load 0x7f7fffff from memory into f9
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f31, 0(x2) # load 0x00800000 from memory into f31
fmul.s f24, f9, f31, dyn # perform operation
fmul.s f24, f9, f31, rdn # perform operation
fmul.s f24, f9, f31, rmm # perform operation
fmul.s f24, f9, f31, rne # perform operation
fmul.s f24, f9, f31, rtz # perform operation
fmul.s f24, f9, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f9, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f9, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f9, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f9, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f9, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80800000)
li x21, 0x143eb463 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f25, 0(x2) # load 0x80800000 from memory into f25
fmul.s f21, f3, f25, dyn # perform operation
fmul.s f21, f3, f25, rdn # perform operation
fmul.s f21, f3, f25, rmm # perform operation
fmul.s f21, f3, f25, rne # perform operation
fmul.s f21, f3, f25, rtz # perform operation
fmul.s f21, f3, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f3, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f3, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f3, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f3, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f3, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f7fffff)
li x1, 0x114e5e6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f31, 0(x2) # load 0x7f7fffff from memory into f31
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
fmul.s f1, f31, f29, dyn # perform operation
fmul.s f1, f31, f29, rdn # perform operation
fmul.s f1, f31, f29, rmm # perform operation
fmul.s f1, f31, f29, rne # perform operation
fmul.s f1, f31, f29, rtz # perform operation
fmul.s f1, f31, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f31, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f31, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f31, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f31, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f31, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xff7fffff)
li x12, 0xb688221e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f21, 0(x2) # load 0x7f7fffff from memory into f21
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f28, 0(x2) # load 0xff7fffff from memory into f28
fmul.s f12, f21, f28, dyn # perform operation
fmul.s f12, f21, f28, rdn # perform operation
fmul.s f12, f21, f28, rmm # perform operation
fmul.s f12, f21, f28, rne # perform operation
fmul.s f12, f21, f28, rtz # perform operation
fmul.s f12, f21, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f21, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f21, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f21, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f21, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f21, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fffff)
li x25, 0xa4520d4c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f19, 0(x2) # load 0x7f7fffff from memory into f19
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f1, 0(x2) # load 0x007fffff from memory into f1
fmul.s f25, f19, f1, dyn # perform operation
fmul.s f25, f19, f1, rdn # perform operation
fmul.s f25, f19, f1, rmm # perform operation
fmul.s f25, f19, f1, rne # perform operation
fmul.s f25, f19, f1, rtz # perform operation
fmul.s f25, f19, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f19, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f19, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f19, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f19, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f19, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x807fffff)
li x31, 0xb169a0db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f18, 0(x2) # load 0x7f7fffff from memory into f18
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f19, 0(x2) # load 0x807fffff from memory into f19
fmul.s f31, f18, f19, dyn # perform operation
fmul.s f31, f18, f19, rdn # perform operation
fmul.s f31, f18, f19, rmm # perform operation
fmul.s f31, f18, f19, rne # perform operation
fmul.s f31, f18, f19, rtz # perform operation
fmul.s f31, f18, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f18, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f18, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f18, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f18, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f18, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x400000)
li x8, 0x2ead52d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f17, 0(x2) # load 0x7f7fffff from memory into f17
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f9, 0(x2) # load 0x00400000 from memory into f9
fmul.s f8, f17, f9, dyn # perform operation
fmul.s f8, f17, f9, rdn # perform operation
fmul.s f8, f17, f9, rmm # perform operation
fmul.s f8, f17, f9, rne # perform operation
fmul.s f8, f17, f9, rtz # perform operation
fmul.s f8, f17, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f17, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f17, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f17, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f17, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f17, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80400000)
li x4, 0x81c65969 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f19, 0(x2) # load 0x7f7fffff from memory into f19
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f9, 0(x2) # load 0x80400000 from memory into f9
fmul.s f4, f19, f9, dyn # perform operation
fmul.s f4, f19, f9, rdn # perform operation
fmul.s f4, f19, f9, rmm # perform operation
fmul.s f4, f19, f9, rne # perform operation
fmul.s f4, f19, f9, rtz # perform operation
fmul.s f4, f19, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f19, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f19, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f19, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f19, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f19, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x1)
li x3, 0xba038fd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f12, 0(x2) # load 0x7f7fffff from memory into f12
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f21, 0(x2) # load 0x00000001 from memory into f21
fmul.s f3, f12, f21, dyn # perform operation
fmul.s f3, f12, f21, rdn # perform operation
fmul.s f3, f12, f21, rmm # perform operation
fmul.s f3, f12, f21, rne # perform operation
fmul.s f3, f12, f21, rtz # perform operation
fmul.s f3, f12, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f12, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f12, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f12, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f12, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f12, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80000001)
li x15, 0xbc72b8db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f21, 0(x2) # load 0x7f7fffff from memory into f21
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
fmul.s f15, f21, f18, dyn # perform operation
fmul.s f15, f21, f18, rdn # perform operation
fmul.s f15, f21, f18, rmm # perform operation
fmul.s f15, f21, f18, rne # perform operation
fmul.s f15, f21, f18, rtz # perform operation
fmul.s f15, f21, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f21, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f21, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f21, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f21, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f21, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f800000)
li x14, 0x720577b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f4, 0(x2) # load 0x7f7fffff from memory into f4
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f6, 0(x2) # load 0x7f800000 from memory into f6
fmul.s f14, f4, f6, dyn # perform operation
fmul.s f14, f4, f6, rdn # perform operation
fmul.s f14, f4, f6, rmm # perform operation
fmul.s f14, f4, f6, rne # perform operation
fmul.s f14, f4, f6, rtz # perform operation
fmul.s f14, f4, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f4, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f4, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f4, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f4, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f4, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xff800000)
li x3, 0x2adcc14c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f22, 0(x2) # load 0xff800000 from memory into f22
fmul.s f3, f15, f22, dyn # perform operation
fmul.s f3, f15, f22, rdn # perform operation
fmul.s f3, f15, f22, rmm # perform operation
fmul.s f3, f15, f22, rne # perform operation
fmul.s f3, f15, f22, rtz # perform operation
fmul.s f3, f15, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f15, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f15, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f15, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f15, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f15, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fc00000)
li x2, 0xfd05a89e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f5, 0(x2) # load 0x7fc00000 from memory into f5
fmul.s f2, f6, f5, dyn # perform operation
fmul.s f2, f6, f5, rdn # perform operation
fmul.s f2, f6, f5, rmm # perform operation
fmul.s f2, f6, f5, rne # perform operation
fmul.s f2, f6, f5, rtz # perform operation
fmul.s f2, f6, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f6, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f6, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f6, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f6, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f6, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fffffff)
li x29, 0x4fedb3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f17, 0(x2) # load 0x7f7fffff from memory into f17
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
fmul.s f29, f17, f5, dyn # perform operation
fmul.s f29, f17, f5, rdn # perform operation
fmul.s f29, f17, f5, rmm # perform operation
fmul.s f29, f17, f5, rne # perform operation
fmul.s f29, f17, f5, rtz # perform operation
fmul.s f29, f17, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f17, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f17, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f17, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f17, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f17, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f800001)
li x20, 0x1f35d302 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f10, 0(x2) # load 0x7f7fffff from memory into f10
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
fmul.s f20, f10, f27, dyn # perform operation
fmul.s f20, f10, f27, rdn # perform operation
fmul.s f20, f10, f27, rmm # perform operation
fmul.s f20, f10, f27, rne # perform operation
fmul.s f20, f10, f27, rtz # perform operation
fmul.s f20, f10, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f10, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f10, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f10, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f10, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f10, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fbfffff)
li x10, 0x79ec5566 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f18, 0(x2) # load 0x7f7fffff from memory into f18
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
fmul.s f10, f18, f28, dyn # perform operation
fmul.s f10, f18, f28, rdn # perform operation
fmul.s f10, f18, f28, rmm # perform operation
fmul.s f10, f18, f28, rne # perform operation
fmul.s f10, f18, f28, rtz # perform operation
fmul.s f10, f18, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f18, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f18, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f18, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f18, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f18, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7ef8654f)
li x8, 0x2dfba766 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f27, 0(x2) # load 0x7f7fffff from memory into f27
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f1, 0(x2) # load 0x7ef8654f from memory into f1
fmul.s f8, f27, f1, dyn # perform operation
fmul.s f8, f27, f1, rdn # perform operation
fmul.s f8, f27, f1, rmm # perform operation
fmul.s f8, f27, f1, rne # perform operation
fmul.s f8, f27, f1, rtz # perform operation
fmul.s f8, f27, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f27, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f27, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f27, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f27, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f27, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x813d9ab0)
li x6, 0x4d179c90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f24, 0(x2) # load 0x7f7fffff from memory into f24
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
fmul.s f6, f24, f17, dyn # perform operation
fmul.s f6, f24, f17, rdn # perform operation
fmul.s f6, f24, f17, rmm # perform operation
fmul.s f6, f24, f17, rne # perform operation
fmul.s f6, f24, f17, rtz # perform operation
fmul.s f6, f24, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f24, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f24, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f24, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f24, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f24, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x0)
li x25, 0x28ad9302 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f23, 0(x2) # load 0xff7fffff from memory into f23
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f12, 0(x2) # load 0x00000000 from memory into f12
fmul.s f25, f23, f12, dyn # perform operation
fmul.s f25, f23, f12, rdn # perform operation
fmul.s f25, f23, f12, rmm # perform operation
fmul.s f25, f23, f12, rne # perform operation
fmul.s f25, f23, f12, rtz # perform operation
fmul.s f25, f23, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f23, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f23, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f23, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f23, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f23, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80000000)
li x26, 0x6ad707eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f9, 0(x2) # load 0xff7fffff from memory into f9
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f14, 0(x2) # load 0x80000000 from memory into f14
fmul.s f26, f9, f14, dyn # perform operation
fmul.s f26, f9, f14, rdn # perform operation
fmul.s f26, f9, f14, rmm # perform operation
fmul.s f26, f9, f14, rne # perform operation
fmul.s f26, f9, f14, rtz # perform operation
fmul.s f26, f9, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f9, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f9, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f9, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f9, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f9, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x3f800000)
li x28, 0x672f5a24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f6, 0(x2) # load 0xff7fffff from memory into f6
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f8, 0(x2) # load 0x3f800000 from memory into f8
fmul.s f28, f6, f8, dyn # perform operation
fmul.s f28, f6, f8, rdn # perform operation
fmul.s f28, f6, f8, rmm # perform operation
fmul.s f28, f6, f8, rne # perform operation
fmul.s f28, f6, f8, rtz # perform operation
fmul.s f28, f6, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f6, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f6, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f6, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f6, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f6, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xbf800000)
li x27, 0x0cf95ff7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f26, 0(x2) # load 0xff7fffff from memory into f26
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f25, 0(x2) # load 0xbf800000 from memory into f25
fmul.s f27, f26, f25, dyn # perform operation
fmul.s f27, f26, f25, rdn # perform operation
fmul.s f27, f26, f25, rmm # perform operation
fmul.s f27, f26, f25, rne # perform operation
fmul.s f27, f26, f25, rtz # perform operation
fmul.s f27, f26, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f26, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f26, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f26, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f26, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f26, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x3fc00000)
li x15, 0x8c79bb7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f13, 0(x2) # load 0xff7fffff from memory into f13
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
fmul.s f15, f13, f12, dyn # perform operation
fmul.s f15, f13, f12, rdn # perform operation
fmul.s f15, f13, f12, rmm # perform operation
fmul.s f15, f13, f12, rne # perform operation
fmul.s f15, f13, f12, rtz # perform operation
fmul.s f15, f13, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f13, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f13, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f13, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f13, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f13, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xbfc00000)
li x13, 0x95061b2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f7, 0(x2) # load 0xff7fffff from memory into f7
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f17, 0(x2) # load 0xbfc00000 from memory into f17
fmul.s f13, f7, f17, dyn # perform operation
fmul.s f13, f7, f17, rdn # perform operation
fmul.s f13, f7, f17, rmm # perform operation
fmul.s f13, f7, f17, rne # perform operation
fmul.s f13, f7, f17, rtz # perform operation
fmul.s f13, f7, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f7, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f7, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f7, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f7, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f7, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x40000000)
li x19, 0x226576b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f13, 0(x2) # load 0xff7fffff from memory into f13
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f10, 0(x2) # load 0x40000000 from memory into f10
fmul.s f19, f13, f10, dyn # perform operation
fmul.s f19, f13, f10, rdn # perform operation
fmul.s f19, f13, f10, rmm # perform operation
fmul.s f19, f13, f10, rne # perform operation
fmul.s f19, f13, f10, rtz # perform operation
fmul.s f19, f13, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f13, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f13, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f13, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f13, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f13, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xc0000000)
li x22, 0x4d05cd11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f13, 0(x2) # load 0xff7fffff from memory into f13
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f9, 0(x2) # load 0xc0000000 from memory into f9
fmul.s f22, f13, f9, dyn # perform operation
fmul.s f22, f13, f9, rdn # perform operation
fmul.s f22, f13, f9, rmm # perform operation
fmul.s f22, f13, f9, rne # perform operation
fmul.s f22, f13, f9, rtz # perform operation
fmul.s f22, f13, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f13, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f13, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f13, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f13, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f13, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x800000)
li x21, 0xd1156f59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f14, 0(x2) # load 0xff7fffff from memory into f14
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f9, 0(x2) # load 0x00800000 from memory into f9
fmul.s f21, f14, f9, dyn # perform operation
fmul.s f21, f14, f9, rdn # perform operation
fmul.s f21, f14, f9, rmm # perform operation
fmul.s f21, f14, f9, rne # perform operation
fmul.s f21, f14, f9, rtz # perform operation
fmul.s f21, f14, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f14, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f14, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f14, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f14, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f14, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80800000)
li x6, 0x35a2dd43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f20, 0(x2) # load 0xff7fffff from memory into f20
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
fmul.s f6, f20, f28, dyn # perform operation
fmul.s f6, f20, f28, rdn # perform operation
fmul.s f6, f20, f28, rmm # perform operation
fmul.s f6, f20, f28, rne # perform operation
fmul.s f6, f20, f28, rtz # perform operation
fmul.s f6, f20, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f20, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f20, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f20, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f20, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f20, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f7fffff)
li x3, 0xb6c015a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f1, 0(x2) # load 0xff7fffff from memory into f1
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f23, 0(x2) # load 0x7f7fffff from memory into f23
fmul.s f3, f1, f23, dyn # perform operation
fmul.s f3, f1, f23, rdn # perform operation
fmul.s f3, f1, f23, rmm # perform operation
fmul.s f3, f1, f23, rne # perform operation
fmul.s f3, f1, f23, rtz # perform operation
fmul.s f3, f1, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f1, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f1, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f1, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f1, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f1, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xff7fffff)
li x6, 0xecbc380e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f26, 0(x2) # load 0xff7fffff from memory into f26
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f2, 0(x2) # load 0xff7fffff from memory into f2
fmul.s f6, f26, f2, dyn # perform operation
fmul.s f6, f26, f2, rdn # perform operation
fmul.s f6, f26, f2, rmm # perform operation
fmul.s f6, f26, f2, rne # perform operation
fmul.s f6, f26, f2, rtz # perform operation
fmul.s f6, f26, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f26, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f26, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f26, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f26, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f26, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fffff)
li x24, 0x5b3f5215 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f27, 0(x2) # load 0xff7fffff from memory into f27
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f8, 0(x2) # load 0x007fffff from memory into f8
fmul.s f24, f27, f8, dyn # perform operation
fmul.s f24, f27, f8, rdn # perform operation
fmul.s f24, f27, f8, rmm # perform operation
fmul.s f24, f27, f8, rne # perform operation
fmul.s f24, f27, f8, rtz # perform operation
fmul.s f24, f27, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f27, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f27, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f27, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f27, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f27, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x807fffff)
li x3, 0x31e53c2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f29, 0(x2) # load 0xff7fffff from memory into f29
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f6, 0(x2) # load 0x807fffff from memory into f6
fmul.s f3, f29, f6, dyn # perform operation
fmul.s f3, f29, f6, rdn # perform operation
fmul.s f3, f29, f6, rmm # perform operation
fmul.s f3, f29, f6, rne # perform operation
fmul.s f3, f29, f6, rtz # perform operation
fmul.s f3, f29, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f29, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f29, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f29, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f29, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f29, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x400000)
li x21, 0x3e22b603 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f4, 0(x2) # load 0xff7fffff from memory into f4
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f20, 0(x2) # load 0x00400000 from memory into f20
fmul.s f21, f4, f20, dyn # perform operation
fmul.s f21, f4, f20, rdn # perform operation
fmul.s f21, f4, f20, rmm # perform operation
fmul.s f21, f4, f20, rne # perform operation
fmul.s f21, f4, f20, rtz # perform operation
fmul.s f21, f4, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f4, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f4, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f4, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f4, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f4, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80400000)
li x11, 0xac1d03bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f20, 0(x2) # load 0xff7fffff from memory into f20
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f31, 0(x2) # load 0x80400000 from memory into f31
fmul.s f11, f20, f31, dyn # perform operation
fmul.s f11, f20, f31, rdn # perform operation
fmul.s f11, f20, f31, rmm # perform operation
fmul.s f11, f20, f31, rne # perform operation
fmul.s f11, f20, f31, rtz # perform operation
fmul.s f11, f20, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f20, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f20, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f20, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f20, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f20, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x1)
li x14, 0xa9b806ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f13, 0(x2) # load 0xff7fffff from memory into f13
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f9, 0(x2) # load 0x00000001 from memory into f9
fmul.s f14, f13, f9, dyn # perform operation
fmul.s f14, f13, f9, rdn # perform operation
fmul.s f14, f13, f9, rmm # perform operation
fmul.s f14, f13, f9, rne # perform operation
fmul.s f14, f13, f9, rtz # perform operation
fmul.s f14, f13, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f13, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f13, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f13, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f13, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f13, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80000001)
li x14, 0x17cfe8eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f30, 0(x2) # load 0xff7fffff from memory into f30
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f24, 0(x2) # load 0x80000001 from memory into f24
fmul.s f14, f30, f24, dyn # perform operation
fmul.s f14, f30, f24, rdn # perform operation
fmul.s f14, f30, f24, rmm # perform operation
fmul.s f14, f30, f24, rne # perform operation
fmul.s f14, f30, f24, rtz # perform operation
fmul.s f14, f30, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f30, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f30, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f30, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f30, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f30, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f800000)
li x27, 0x06c17ed9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f29, 0(x2) # load 0xff7fffff from memory into f29
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f10, 0(x2) # load 0x7f800000 from memory into f10
fmul.s f27, f29, f10, dyn # perform operation
fmul.s f27, f29, f10, rdn # perform operation
fmul.s f27, f29, f10, rmm # perform operation
fmul.s f27, f29, f10, rne # perform operation
fmul.s f27, f29, f10, rtz # perform operation
fmul.s f27, f29, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f29, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f29, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f29, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f29, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f29, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xff800000)
li x14, 0x2203067d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f29, 0(x2) # load 0xff7fffff from memory into f29
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f20, 0(x2) # load 0xff800000 from memory into f20
fmul.s f14, f29, f20, dyn # perform operation
fmul.s f14, f29, f20, rdn # perform operation
fmul.s f14, f29, f20, rmm # perform operation
fmul.s f14, f29, f20, rne # perform operation
fmul.s f14, f29, f20, rtz # perform operation
fmul.s f14, f29, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f29, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f29, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f29, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f29, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f29, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fc00000)
li x29, 0x9599b86d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f6, 0(x2) # load 0xff7fffff from memory into f6
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f4, 0(x2) # load 0x7fc00000 from memory into f4
fmul.s f29, f6, f4, dyn # perform operation
fmul.s f29, f6, f4, rdn # perform operation
fmul.s f29, f6, f4, rmm # perform operation
fmul.s f29, f6, f4, rne # perform operation
fmul.s f29, f6, f4, rtz # perform operation
fmul.s f29, f6, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f6, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f6, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f6, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f6, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f6, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fffffff)
li x14, 0xfd56fb45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f24, 0(x2) # load 0xff7fffff from memory into f24
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f23, 0(x2) # load 0x7fffffff from memory into f23
fmul.s f14, f24, f23, dyn # perform operation
fmul.s f14, f24, f23, rdn # perform operation
fmul.s f14, f24, f23, rmm # perform operation
fmul.s f14, f24, f23, rne # perform operation
fmul.s f14, f24, f23, rtz # perform operation
fmul.s f14, f24, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f24, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f24, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f24, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f24, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f24, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f800001)
li x2, 0x2362366a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f8, 0(x2) # load 0x7f800001 from memory into f8
fmul.s f2, f11, f8, dyn # perform operation
fmul.s f2, f11, f8, rdn # perform operation
fmul.s f2, f11, f8, rmm # perform operation
fmul.s f2, f11, f8, rne # perform operation
fmul.s f2, f11, f8, rtz # perform operation
fmul.s f2, f11, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f11, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f11, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f11, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f11, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f11, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fbfffff)
li x21, 0x0b9e6350 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f7, 0(x2) # load 0xff7fffff from memory into f7
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f22, 0(x2) # load 0x7fbfffff from memory into f22
fmul.s f21, f7, f22, dyn # perform operation
fmul.s f21, f7, f22, rdn # perform operation
fmul.s f21, f7, f22, rmm # perform operation
fmul.s f21, f7, f22, rne # perform operation
fmul.s f21, f7, f22, rtz # perform operation
fmul.s f21, f7, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f7, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f7, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f7, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f7, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f7, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7ef8654f)
li x1, 0x2ae82ed2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f6, 0(x2) # load 0xff7fffff from memory into f6
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f9, 0(x2) # load 0x7ef8654f from memory into f9
fmul.s f1, f6, f9, dyn # perform operation
fmul.s f1, f6, f9, rdn # perform operation
fmul.s f1, f6, f9, rmm # perform operation
fmul.s f1, f6, f9, rne # perform operation
fmul.s f1, f6, f9, rtz # perform operation
fmul.s f1, f6, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f6, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f6, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f6, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f6, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f6, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x813d9ab0)
li x27, 0x5d366609 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f29, 0(x2) # load 0xff7fffff from memory into f29
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f25, 0(x2) # load 0x813d9ab0 from memory into f25
fmul.s f27, f29, f25, dyn # perform operation
fmul.s f27, f29, f25, rdn # perform operation
fmul.s f27, f29, f25, rmm # perform operation
fmul.s f27, f29, f25, rne # perform operation
fmul.s f27, f29, f25, rtz # perform operation
fmul.s f27, f29, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f29, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f29, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f29, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f29, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f29, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x0)
li x8, 0x4512480b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f20, 0(x2) # load 0x007fffff from memory into f20
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f10, 0(x2) # load 0x00000000 from memory into f10
fmul.s f8, f20, f10, dyn # perform operation
fmul.s f8, f20, f10, rdn # perform operation
fmul.s f8, f20, f10, rmm # perform operation
fmul.s f8, f20, f10, rne # perform operation
fmul.s f8, f20, f10, rtz # perform operation
fmul.s f8, f20, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f20, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f20, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f20, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f20, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f20, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80000000)
li x18, 0x44507290 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f26, 0(x2) # load 0x007fffff from memory into f26
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f12, 0(x2) # load 0x80000000 from memory into f12
fmul.s f18, f26, f12, dyn # perform operation
fmul.s f18, f26, f12, rdn # perform operation
fmul.s f18, f26, f12, rmm # perform operation
fmul.s f18, f26, f12, rne # perform operation
fmul.s f18, f26, f12, rtz # perform operation
fmul.s f18, f26, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f26, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f26, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f26, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f26, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f26, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x3f800000)
li x11, 0x7eaf41c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f25, 0(x2) # load 0x007fffff from memory into f25
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
fmul.s f11, f25, f6, dyn # perform operation
fmul.s f11, f25, f6, rdn # perform operation
fmul.s f11, f25, f6, rmm # perform operation
fmul.s f11, f25, f6, rne # perform operation
fmul.s f11, f25, f6, rtz # perform operation
fmul.s f11, f25, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f25, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f25, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f25, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f25, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f25, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xbf800000)
li x24, 0x8e4bce11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f7, 0(x2) # load 0x007fffff from memory into f7
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f20, 0(x2) # load 0xbf800000 from memory into f20
fmul.s f24, f7, f20, dyn # perform operation
fmul.s f24, f7, f20, rdn # perform operation
fmul.s f24, f7, f20, rmm # perform operation
fmul.s f24, f7, f20, rne # perform operation
fmul.s f24, f7, f20, rtz # perform operation
fmul.s f24, f7, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f7, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f7, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f7, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f7, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f7, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x3fc00000)
li x5, 0x65a7c2df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f21, 0(x2) # load 0x007fffff from memory into f21
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f2, 0(x2) # load 0x3fc00000 from memory into f2
fmul.s f5, f21, f2, dyn # perform operation
fmul.s f5, f21, f2, rdn # perform operation
fmul.s f5, f21, f2, rmm # perform operation
fmul.s f5, f21, f2, rne # perform operation
fmul.s f5, f21, f2, rtz # perform operation
fmul.s f5, f21, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f21, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f21, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f21, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f21, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f21, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xbfc00000)
li x19, 0x73d35ebc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f26, 0(x2) # load 0x007fffff from memory into f26
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f10, 0(x2) # load 0xbfc00000 from memory into f10
fmul.s f19, f26, f10, dyn # perform operation
fmul.s f19, f26, f10, rdn # perform operation
fmul.s f19, f26, f10, rmm # perform operation
fmul.s f19, f26, f10, rne # perform operation
fmul.s f19, f26, f10, rtz # perform operation
fmul.s f19, f26, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f26, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f26, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f26, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f26, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f26, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x40000000)
li x12, 0x4190881a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f7, 0(x2) # load 0x007fffff from memory into f7
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f21, 0(x2) # load 0x40000000 from memory into f21
fmul.s f12, f7, f21, dyn # perform operation
fmul.s f12, f7, f21, rdn # perform operation
fmul.s f12, f7, f21, rmm # perform operation
fmul.s f12, f7, f21, rne # perform operation
fmul.s f12, f7, f21, rtz # perform operation
fmul.s f12, f7, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f7, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f7, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f7, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f7, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f7, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xc0000000)
li x16, 0xc2b2581d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f27, 0(x2) # load 0x007fffff from memory into f27
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f12, 0(x2) # load 0xc0000000 from memory into f12
fmul.s f16, f27, f12, dyn # perform operation
fmul.s f16, f27, f12, rdn # perform operation
fmul.s f16, f27, f12, rmm # perform operation
fmul.s f16, f27, f12, rne # perform operation
fmul.s f16, f27, f12, rtz # perform operation
fmul.s f16, f27, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f27, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f27, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f27, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f27, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f27, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x800000)
li x11, 0x27bf0140 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f31, 0(x2) # load 0x007fffff from memory into f31
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f1, 0(x2) # load 0x00800000 from memory into f1
fmul.s f11, f31, f1, dyn # perform operation
fmul.s f11, f31, f1, rdn # perform operation
fmul.s f11, f31, f1, rmm # perform operation
fmul.s f11, f31, f1, rne # perform operation
fmul.s f11, f31, f1, rtz # perform operation
fmul.s f11, f31, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f31, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f31, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f31, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f31, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f31, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80800000)
li x8, 0x9d75c674 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f14, 0(x2) # load 0x007fffff from memory into f14
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
fmul.s f8, f14, f23, dyn # perform operation
fmul.s f8, f14, f23, rdn # perform operation
fmul.s f8, f14, f23, rmm # perform operation
fmul.s f8, f14, f23, rne # perform operation
fmul.s f8, f14, f23, rtz # perform operation
fmul.s f8, f14, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f14, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f14, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f14, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f14, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f14, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f7fffff)
li x22, 0x99da2209 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f30, 0(x2) # load 0x7f7fffff from memory into f30
fmul.s f22, f17, f30, dyn # perform operation
fmul.s f22, f17, f30, rdn # perform operation
fmul.s f22, f17, f30, rmm # perform operation
fmul.s f22, f17, f30, rne # perform operation
fmul.s f22, f17, f30, rtz # perform operation
fmul.s f22, f17, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f17, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f17, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f17, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f17, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f17, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xff7fffff)
li x17, 0x103e0fe2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f14, 0(x2) # load 0x007fffff from memory into f14
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f2, 0(x2) # load 0xff7fffff from memory into f2
fmul.s f17, f14, f2, dyn # perform operation
fmul.s f17, f14, f2, rdn # perform operation
fmul.s f17, f14, f2, rmm # perform operation
fmul.s f17, f14, f2, rne # perform operation
fmul.s f17, f14, f2, rtz # perform operation
fmul.s f17, f14, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f14, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f14, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f14, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f14, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f14, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fffff)
li x17, 0x46ee04e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f5, 0(x2) # load 0x007fffff from memory into f5
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
fmul.s f17, f5, f10, dyn # perform operation
fmul.s f17, f5, f10, rdn # perform operation
fmul.s f17, f5, f10, rmm # perform operation
fmul.s f17, f5, f10, rne # perform operation
fmul.s f17, f5, f10, rtz # perform operation
fmul.s f17, f5, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f5, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f5, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f5, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f5, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f5, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x807fffff)
li x9, 0xc85df7d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f30, 0(x2) # load 0x007fffff from memory into f30
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f27, 0(x2) # load 0x807fffff from memory into f27
fmul.s f9, f30, f27, dyn # perform operation
fmul.s f9, f30, f27, rdn # perform operation
fmul.s f9, f30, f27, rmm # perform operation
fmul.s f9, f30, f27, rne # perform operation
fmul.s f9, f30, f27, rtz # perform operation
fmul.s f9, f30, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f30, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f30, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f30, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f30, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f30, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x400000)
li x23, 0xfcdb0413 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f17, 0(x2) # load 0x00400000 from memory into f17
fmul.s f23, f12, f17, dyn # perform operation
fmul.s f23, f12, f17, rdn # perform operation
fmul.s f23, f12, f17, rmm # perform operation
fmul.s f23, f12, f17, rne # perform operation
fmul.s f23, f12, f17, rtz # perform operation
fmul.s f23, f12, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f12, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f12, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f12, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f12, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f12, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80400000)
li x29, 0x4286cca9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f16, 0(x2) # load 0x007fffff from memory into f16
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f30, 0(x2) # load 0x80400000 from memory into f30
fmul.s f29, f16, f30, dyn # perform operation
fmul.s f29, f16, f30, rdn # perform operation
fmul.s f29, f16, f30, rmm # perform operation
fmul.s f29, f16, f30, rne # perform operation
fmul.s f29, f16, f30, rtz # perform operation
fmul.s f29, f16, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f16, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f16, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f16, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f16, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f16, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x1)
li x5, 0x03e0c3ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f6, 0(x2) # load 0x007fffff from memory into f6
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f17, 0(x2) # load 0x00000001 from memory into f17
fmul.s f5, f6, f17, dyn # perform operation
fmul.s f5, f6, f17, rdn # perform operation
fmul.s f5, f6, f17, rmm # perform operation
fmul.s f5, f6, f17, rne # perform operation
fmul.s f5, f6, f17, rtz # perform operation
fmul.s f5, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f6, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80000001)
li x19, 0x0657385f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f31, 0(x2) # load 0x007fffff from memory into f31
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f11, 0(x2) # load 0x80000001 from memory into f11
fmul.s f19, f31, f11, dyn # perform operation
fmul.s f19, f31, f11, rdn # perform operation
fmul.s f19, f31, f11, rmm # perform operation
fmul.s f19, f31, f11, rne # perform operation
fmul.s f19, f31, f11, rtz # perform operation
fmul.s f19, f31, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f31, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f31, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f31, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f31, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f31, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f800000)
li x5, 0xee7a946c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f2, 0(x2) # load 0x007fffff from memory into f2
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f20, 0(x2) # load 0x7f800000 from memory into f20
fmul.s f5, f2, f20, dyn # perform operation
fmul.s f5, f2, f20, rdn # perform operation
fmul.s f5, f2, f20, rmm # perform operation
fmul.s f5, f2, f20, rne # perform operation
fmul.s f5, f2, f20, rtz # perform operation
fmul.s f5, f2, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f2, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f2, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f2, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f2, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f2, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xff800000)
li x28, 0xe0b959a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f27, 0(x2) # load 0xff800000 from memory into f27
fmul.s f28, f12, f27, dyn # perform operation
fmul.s f28, f12, f27, rdn # perform operation
fmul.s f28, f12, f27, rmm # perform operation
fmul.s f28, f12, f27, rne # perform operation
fmul.s f28, f12, f27, rtz # perform operation
fmul.s f28, f12, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f12, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f12, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f12, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f12, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f12, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fc00000)
li x29, 0x41c607c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f18, 0(x2) # load 0x007fffff from memory into f18
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f16, 0(x2) # load 0x7fc00000 from memory into f16
fmul.s f29, f18, f16, dyn # perform operation
fmul.s f29, f18, f16, rdn # perform operation
fmul.s f29, f18, f16, rmm # perform operation
fmul.s f29, f18, f16, rne # perform operation
fmul.s f29, f18, f16, rtz # perform operation
fmul.s f29, f18, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f18, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f18, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f18, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f18, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f18, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fffffff)
li x5, 0xd78109da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f16, 0(x2) # load 0x007fffff from memory into f16
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f7, 0(x2) # load 0x7fffffff from memory into f7
fmul.s f5, f16, f7, dyn # perform operation
fmul.s f5, f16, f7, rdn # perform operation
fmul.s f5, f16, f7, rmm # perform operation
fmul.s f5, f16, f7, rne # perform operation
fmul.s f5, f16, f7, rtz # perform operation
fmul.s f5, f16, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f16, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f16, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f16, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f16, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f16, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f800001)
li x5, 0xe6530548 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f23, 0(x2) # load 0x007fffff from memory into f23
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
fmul.s f5, f23, f19, dyn # perform operation
fmul.s f5, f23, f19, rdn # perform operation
fmul.s f5, f23, f19, rmm # perform operation
fmul.s f5, f23, f19, rne # perform operation
fmul.s f5, f23, f19, rtz # perform operation
fmul.s f5, f23, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f23, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f23, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f23, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f23, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f23, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fbfffff)
li x10, 0xd166bb0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f24, 0(x2) # load 0x7fbfffff from memory into f24
fmul.s f10, f12, f24, dyn # perform operation
fmul.s f10, f12, f24, rdn # perform operation
fmul.s f10, f12, f24, rmm # perform operation
fmul.s f10, f12, f24, rne # perform operation
fmul.s f10, f12, f24, rtz # perform operation
fmul.s f10, f12, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f12, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f12, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f12, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f12, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f12, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7ef8654f)
li x4, 0xc9eeef4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f2, 0(x2) # load 0x007fffff from memory into f2
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f27, 0(x2) # load 0x7ef8654f from memory into f27
fmul.s f4, f2, f27, dyn # perform operation
fmul.s f4, f2, f27, rdn # perform operation
fmul.s f4, f2, f27, rmm # perform operation
fmul.s f4, f2, f27, rne # perform operation
fmul.s f4, f2, f27, rtz # perform operation
fmul.s f4, f2, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f2, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f2, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f2, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f2, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f2, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x813d9ab0)
li x29, 0x022777a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f10, 0(x2) # load 0x813d9ab0 from memory into f10
fmul.s f29, f12, f10, dyn # perform operation
fmul.s f29, f12, f10, rdn # perform operation
fmul.s f29, f12, f10, rmm # perform operation
fmul.s f29, f12, f10, rne # perform operation
fmul.s f29, f12, f10, rtz # perform operation
fmul.s f29, f12, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f12, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f12, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f12, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f12, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f12, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x0)
li x12, 0x89b33de3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f14, 0(x2) # load 0x00000000 from memory into f14
fmul.s f12, f3, f14, dyn # perform operation
fmul.s f12, f3, f14, rdn # perform operation
fmul.s f12, f3, f14, rmm # perform operation
fmul.s f12, f3, f14, rne # perform operation
fmul.s f12, f3, f14, rtz # perform operation
fmul.s f12, f3, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f3, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f3, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f3, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f3, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f3, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80000000)
li x20, 0x2ef693c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f9, 0(x2) # load 0x807fffff from memory into f9
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f8, 0(x2) # load 0x80000000 from memory into f8
fmul.s f20, f9, f8, dyn # perform operation
fmul.s f20, f9, f8, rdn # perform operation
fmul.s f20, f9, f8, rmm # perform operation
fmul.s f20, f9, f8, rne # perform operation
fmul.s f20, f9, f8, rtz # perform operation
fmul.s f20, f9, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f9, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f9, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f9, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f9, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f9, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x3f800000)
li x21, 0xf5ab286e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f22, 0(x2) # load 0x807fffff from memory into f22
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f25, 0(x2) # load 0x3f800000 from memory into f25
fmul.s f21, f22, f25, dyn # perform operation
fmul.s f21, f22, f25, rdn # perform operation
fmul.s f21, f22, f25, rmm # perform operation
fmul.s f21, f22, f25, rne # perform operation
fmul.s f21, f22, f25, rtz # perform operation
fmul.s f21, f22, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f22, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f22, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f22, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f22, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f22, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xbf800000)
li x25, 0x338d53cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f28, 0(x2) # load 0x807fffff from memory into f28
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
fmul.s f25, f28, f17, dyn # perform operation
fmul.s f25, f28, f17, rdn # perform operation
fmul.s f25, f28, f17, rmm # perform operation
fmul.s f25, f28, f17, rne # perform operation
fmul.s f25, f28, f17, rtz # perform operation
fmul.s f25, f28, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f28, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f28, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f28, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f28, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f28, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x3fc00000)
li x31, 0xcd5ead62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f20, 0(x2) # load 0x807fffff from memory into f20
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f14, 0(x2) # load 0x3fc00000 from memory into f14
fmul.s f31, f20, f14, dyn # perform operation
fmul.s f31, f20, f14, rdn # perform operation
fmul.s f31, f20, f14, rmm # perform operation
fmul.s f31, f20, f14, rne # perform operation
fmul.s f31, f20, f14, rtz # perform operation
fmul.s f31, f20, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f20, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f20, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f20, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f20, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f20, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xbfc00000)
li x13, 0x5b4d5bab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f16, 0(x2) # load 0x807fffff from memory into f16
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f21, 0(x2) # load 0xbfc00000 from memory into f21
fmul.s f13, f16, f21, dyn # perform operation
fmul.s f13, f16, f21, rdn # perform operation
fmul.s f13, f16, f21, rmm # perform operation
fmul.s f13, f16, f21, rne # perform operation
fmul.s f13, f16, f21, rtz # perform operation
fmul.s f13, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f16, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x40000000)
li x1, 0xb17cb15c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f19, 0(x2) # load 0x807fffff from memory into f19
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f4, 0(x2) # load 0x40000000 from memory into f4
fmul.s f1, f19, f4, dyn # perform operation
fmul.s f1, f19, f4, rdn # perform operation
fmul.s f1, f19, f4, rmm # perform operation
fmul.s f1, f19, f4, rne # perform operation
fmul.s f1, f19, f4, rtz # perform operation
fmul.s f1, f19, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f19, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f19, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f19, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f19, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f19, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xc0000000)
li x13, 0x27340474 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f28, 0(x2) # load 0x807fffff from memory into f28
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f9, 0(x2) # load 0xc0000000 from memory into f9
fmul.s f13, f28, f9, dyn # perform operation
fmul.s f13, f28, f9, rdn # perform operation
fmul.s f13, f28, f9, rmm # perform operation
fmul.s f13, f28, f9, rne # perform operation
fmul.s f13, f28, f9, rtz # perform operation
fmul.s f13, f28, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f28, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f28, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f28, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f28, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f28, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x800000)
li x13, 0xe243464f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f24, 0(x2) # load 0x00800000 from memory into f24
fmul.s f13, f23, f24, dyn # perform operation
fmul.s f13, f23, f24, rdn # perform operation
fmul.s f13, f23, f24, rmm # perform operation
fmul.s f13, f23, f24, rne # perform operation
fmul.s f13, f23, f24, rtz # perform operation
fmul.s f13, f23, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f23, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f23, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f23, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f23, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f23, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80800000)
li x23, 0x86e60f95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f9, 0(x2) # load 0x807fffff from memory into f9
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f14, 0(x2) # load 0x80800000 from memory into f14
fmul.s f23, f9, f14, dyn # perform operation
fmul.s f23, f9, f14, rdn # perform operation
fmul.s f23, f9, f14, rmm # perform operation
fmul.s f23, f9, f14, rne # perform operation
fmul.s f23, f9, f14, rtz # perform operation
fmul.s f23, f9, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f9, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f9, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f9, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f9, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f9, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f7fffff)
li x5, 0x2a62b353 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f29, 0(x2) # load 0x807fffff from memory into f29
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f25, 0(x2) # load 0x7f7fffff from memory into f25
fmul.s f5, f29, f25, dyn # perform operation
fmul.s f5, f29, f25, rdn # perform operation
fmul.s f5, f29, f25, rmm # perform operation
fmul.s f5, f29, f25, rne # perform operation
fmul.s f5, f29, f25, rtz # perform operation
fmul.s f5, f29, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f29, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f29, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f29, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f29, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f29, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xff7fffff)
li x20, 0xf2a5db89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f5, 0(x2) # load 0x807fffff from memory into f5
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f16, 0(x2) # load 0xff7fffff from memory into f16
fmul.s f20, f5, f16, dyn # perform operation
fmul.s f20, f5, f16, rdn # perform operation
fmul.s f20, f5, f16, rmm # perform operation
fmul.s f20, f5, f16, rne # perform operation
fmul.s f20, f5, f16, rtz # perform operation
fmul.s f20, f5, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f5, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f5, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f5, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f5, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f5, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fffff)
li x11, 0xaef7f1f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f13, 0(x2) # load 0x807fffff from memory into f13
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
fmul.s f11, f13, f10, dyn # perform operation
fmul.s f11, f13, f10, rdn # perform operation
fmul.s f11, f13, f10, rmm # perform operation
fmul.s f11, f13, f10, rne # perform operation
fmul.s f11, f13, f10, rtz # perform operation
fmul.s f11, f13, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f13, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f13, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f13, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f13, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f13, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x807fffff)
li x19, 0x2cc6196e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f20, 0(x2) # load 0x807fffff from memory into f20
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f5, 0(x2) # load 0x807fffff from memory into f5
fmul.s f19, f20, f5, dyn # perform operation
fmul.s f19, f20, f5, rdn # perform operation
fmul.s f19, f20, f5, rmm # perform operation
fmul.s f19, f20, f5, rne # perform operation
fmul.s f19, f20, f5, rtz # perform operation
fmul.s f19, f20, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f20, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f20, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f20, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f20, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f20, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x400000)
li x1, 0x7959eebd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f10, 0(x2) # load 0x807fffff from memory into f10
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f20, 0(x2) # load 0x00400000 from memory into f20
fmul.s f1, f10, f20, dyn # perform operation
fmul.s f1, f10, f20, rdn # perform operation
fmul.s f1, f10, f20, rmm # perform operation
fmul.s f1, f10, f20, rne # perform operation
fmul.s f1, f10, f20, rtz # perform operation
fmul.s f1, f10, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f10, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f10, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f10, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f10, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f10, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80400000)
li x24, 0xf0bd4431 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f22, 0(x2) # load 0x807fffff from memory into f22
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f15, 0(x2) # load 0x80400000 from memory into f15
fmul.s f24, f22, f15, dyn # perform operation
fmul.s f24, f22, f15, rdn # perform operation
fmul.s f24, f22, f15, rmm # perform operation
fmul.s f24, f22, f15, rne # perform operation
fmul.s f24, f22, f15, rtz # perform operation
fmul.s f24, f22, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f22, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f22, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f22, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f22, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f22, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x1)
li x12, 0x389f729f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f20, 0(x2) # load 0x807fffff from memory into f20
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f13, 0(x2) # load 0x00000001 from memory into f13
fmul.s f12, f20, f13, dyn # perform operation
fmul.s f12, f20, f13, rdn # perform operation
fmul.s f12, f20, f13, rmm # perform operation
fmul.s f12, f20, f13, rne # perform operation
fmul.s f12, f20, f13, rtz # perform operation
fmul.s f12, f20, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f20, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f20, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f20, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f20, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f20, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80000001)
li x30, 0x6f20b076 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f10, 0(x2) # load 0x807fffff from memory into f10
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f14, 0(x2) # load 0x80000001 from memory into f14
fmul.s f30, f10, f14, dyn # perform operation
fmul.s f30, f10, f14, rdn # perform operation
fmul.s f30, f10, f14, rmm # perform operation
fmul.s f30, f10, f14, rne # perform operation
fmul.s f30, f10, f14, rtz # perform operation
fmul.s f30, f10, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f10, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f10, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f10, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f10, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f10, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f800000)
li x27, 0xe3d19a91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f26, 0(x2) # load 0x807fffff from memory into f26
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f24, 0(x2) # load 0x7f800000 from memory into f24
fmul.s f27, f26, f24, dyn # perform operation
fmul.s f27, f26, f24, rdn # perform operation
fmul.s f27, f26, f24, rmm # perform operation
fmul.s f27, f26, f24, rne # perform operation
fmul.s f27, f26, f24, rtz # perform operation
fmul.s f27, f26, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f26, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f26, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f26, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f26, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f26, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xff800000)
li x16, 0x3d2b14db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f18, 0(x2) # load 0x807fffff from memory into f18
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
fmul.s f16, f18, f14, dyn # perform operation
fmul.s f16, f18, f14, rdn # perform operation
fmul.s f16, f18, f14, rmm # perform operation
fmul.s f16, f18, f14, rne # perform operation
fmul.s f16, f18, f14, rtz # perform operation
fmul.s f16, f18, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f18, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f18, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f18, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f18, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f18, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fc00000)
li x4, 0x29021b07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f24, 0(x2) # load 0x807fffff from memory into f24
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f21, 0(x2) # load 0x7fc00000 from memory into f21
fmul.s f4, f24, f21, dyn # perform operation
fmul.s f4, f24, f21, rdn # perform operation
fmul.s f4, f24, f21, rmm # perform operation
fmul.s f4, f24, f21, rne # perform operation
fmul.s f4, f24, f21, rtz # perform operation
fmul.s f4, f24, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f24, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f24, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f24, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f24, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f24, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fffffff)
li x4, 0x54ce7e72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f28, 0(x2) # load 0x807fffff from memory into f28
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
fmul.s f4, f28, f19, dyn # perform operation
fmul.s f4, f28, f19, rdn # perform operation
fmul.s f4, f28, f19, rmm # perform operation
fmul.s f4, f28, f19, rne # perform operation
fmul.s f4, f28, f19, rtz # perform operation
fmul.s f4, f28, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f28, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f28, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f28, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f28, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f28, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f800001)
li x4, 0x41e9da5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f30, 0(x2) # load 0x807fffff from memory into f30
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f16, 0(x2) # load 0x7f800001 from memory into f16
fmul.s f4, f30, f16, dyn # perform operation
fmul.s f4, f30, f16, rdn # perform operation
fmul.s f4, f30, f16, rmm # perform operation
fmul.s f4, f30, f16, rne # perform operation
fmul.s f4, f30, f16, rtz # perform operation
fmul.s f4, f30, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f30, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f30, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f30, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f30, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f30, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fbfffff)
li x28, 0x4f6eb7d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f6, 0(x2) # load 0x807fffff from memory into f6
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
fmul.s f28, f6, f31, dyn # perform operation
fmul.s f28, f6, f31, rdn # perform operation
fmul.s f28, f6, f31, rmm # perform operation
fmul.s f28, f6, f31, rne # perform operation
fmul.s f28, f6, f31, rtz # perform operation
fmul.s f28, f6, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f6, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f6, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f6, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f6, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f6, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7ef8654f)
li x21, 0xdffaf7fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f14, 0(x2) # load 0x807fffff from memory into f14
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f3, 0(x2) # load 0x7ef8654f from memory into f3
fmul.s f21, f14, f3, dyn # perform operation
fmul.s f21, f14, f3, rdn # perform operation
fmul.s f21, f14, f3, rmm # perform operation
fmul.s f21, f14, f3, rne # perform operation
fmul.s f21, f14, f3, rtz # perform operation
fmul.s f21, f14, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f14, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f14, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f14, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f14, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f14, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x813d9ab0)
li x3, 0x3c7a41b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f24, 0(x2) # load 0x807fffff from memory into f24
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f31, 0(x2) # load 0x813d9ab0 from memory into f31
fmul.s f3, f24, f31, dyn # perform operation
fmul.s f3, f24, f31, rdn # perform operation
fmul.s f3, f24, f31, rmm # perform operation
fmul.s f3, f24, f31, rne # perform operation
fmul.s f3, f24, f31, rtz # perform operation
fmul.s f3, f24, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f24, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f24, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f24, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f24, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f24, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x0)
li x21, 0x568fd025 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f4, 0(x2) # load 0x00400000 from memory into f4
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f14, 0(x2) # load 0x00000000 from memory into f14
fmul.s f21, f4, f14, dyn # perform operation
fmul.s f21, f4, f14, rdn # perform operation
fmul.s f21, f4, f14, rmm # perform operation
fmul.s f21, f4, f14, rne # perform operation
fmul.s f21, f4, f14, rtz # perform operation
fmul.s f21, f4, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f4, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f4, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f4, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f4, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f4, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80000000)
li x15, 0x2d844105 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f1, 0(x2) # load 0x00400000 from memory into f1
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f24, 0(x2) # load 0x80000000 from memory into f24
fmul.s f15, f1, f24, dyn # perform operation
fmul.s f15, f1, f24, rdn # perform operation
fmul.s f15, f1, f24, rmm # perform operation
fmul.s f15, f1, f24, rne # perform operation
fmul.s f15, f1, f24, rtz # perform operation
fmul.s f15, f1, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f1, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f1, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f1, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f1, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f1, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x3f800000)
li x23, 0x3d0e5701 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f10, 0(x2) # load 0x00400000 from memory into f10
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f20, 0(x2) # load 0x3f800000 from memory into f20
fmul.s f23, f10, f20, dyn # perform operation
fmul.s f23, f10, f20, rdn # perform operation
fmul.s f23, f10, f20, rmm # perform operation
fmul.s f23, f10, f20, rne # perform operation
fmul.s f23, f10, f20, rtz # perform operation
fmul.s f23, f10, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f10, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f10, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f10, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f10, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f10, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xbf800000)
li x17, 0xf38f94e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f23, 0(x2) # load 0x00400000 from memory into f23
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f24, 0(x2) # load 0xbf800000 from memory into f24
fmul.s f17, f23, f24, dyn # perform operation
fmul.s f17, f23, f24, rdn # perform operation
fmul.s f17, f23, f24, rmm # perform operation
fmul.s f17, f23, f24, rne # perform operation
fmul.s f17, f23, f24, rtz # perform operation
fmul.s f17, f23, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f23, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f23, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f23, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f23, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f23, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x3fc00000)
li x31, 0xc05e8db0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f9, 0(x2) # load 0x00400000 from memory into f9
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
fmul.s f31, f9, f6, dyn # perform operation
fmul.s f31, f9, f6, rdn # perform operation
fmul.s f31, f9, f6, rmm # perform operation
fmul.s f31, f9, f6, rne # perform operation
fmul.s f31, f9, f6, rtz # perform operation
fmul.s f31, f9, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f9, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f9, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f9, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f9, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f9, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xbfc00000)
li x8, 0x7ea5ca4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f31, 0(x2) # load 0xbfc00000 from memory into f31
fmul.s f8, f25, f31, dyn # perform operation
fmul.s f8, f25, f31, rdn # perform operation
fmul.s f8, f25, f31, rmm # perform operation
fmul.s f8, f25, f31, rne # perform operation
fmul.s f8, f25, f31, rtz # perform operation
fmul.s f8, f25, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f25, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f25, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f25, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f25, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f25, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x40000000)
li x23, 0x239922c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f13, 0(x2) # load 0x00400000 from memory into f13
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f1, 0(x2) # load 0x40000000 from memory into f1
fmul.s f23, f13, f1, dyn # perform operation
fmul.s f23, f13, f1, rdn # perform operation
fmul.s f23, f13, f1, rmm # perform operation
fmul.s f23, f13, f1, rne # perform operation
fmul.s f23, f13, f1, rtz # perform operation
fmul.s f23, f13, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f13, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f13, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f13, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f13, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f13, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xc0000000)
li x9, 0xa6ad2f73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f30, 0(x2) # load 0x00400000 from memory into f30
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f19, 0(x2) # load 0xc0000000 from memory into f19
fmul.s f9, f30, f19, dyn # perform operation
fmul.s f9, f30, f19, rdn # perform operation
fmul.s f9, f30, f19, rmm # perform operation
fmul.s f9, f30, f19, rne # perform operation
fmul.s f9, f30, f19, rtz # perform operation
fmul.s f9, f30, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f30, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f30, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f30, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f30, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f30, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x800000)
li x28, 0xa85690ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
fmul.s f28, f25, f23, dyn # perform operation
fmul.s f28, f25, f23, rdn # perform operation
fmul.s f28, f25, f23, rmm # perform operation
fmul.s f28, f25, f23, rne # perform operation
fmul.s f28, f25, f23, rtz # perform operation
fmul.s f28, f25, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f25, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f25, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f25, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f25, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f25, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80800000)
li x3, 0x9445d52d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f19, 0(x2) # load 0x00400000 from memory into f19
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f5, 0(x2) # load 0x80800000 from memory into f5
fmul.s f3, f19, f5, dyn # perform operation
fmul.s f3, f19, f5, rdn # perform operation
fmul.s f3, f19, f5, rmm # perform operation
fmul.s f3, f19, f5, rne # perform operation
fmul.s f3, f19, f5, rtz # perform operation
fmul.s f3, f19, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f19, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f19, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f19, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f19, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f19, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f7fffff)
li x30, 0x1afef2ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f24, 0(x2) # load 0x00400000 from memory into f24
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f2, 0(x2) # load 0x7f7fffff from memory into f2
fmul.s f30, f24, f2, dyn # perform operation
fmul.s f30, f24, f2, rdn # perform operation
fmul.s f30, f24, f2, rmm # perform operation
fmul.s f30, f24, f2, rne # perform operation
fmul.s f30, f24, f2, rtz # perform operation
fmul.s f30, f24, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f24, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f24, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f24, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f24, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f24, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xff7fffff)
li x21, 0x647d3ce6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f22, 0(x2) # load 0x00400000 from memory into f22
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
fmul.s f21, f22, f12, dyn # perform operation
fmul.s f21, f22, f12, rdn # perform operation
fmul.s f21, f22, f12, rmm # perform operation
fmul.s f21, f22, f12, rne # perform operation
fmul.s f21, f22, f12, rtz # perform operation
fmul.s f21, f22, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f22, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f22, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f22, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f22, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f22, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fffff)
li x31, 0x9ce6a43f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
fmul.s f31, f21, f12, dyn # perform operation
fmul.s f31, f21, f12, rdn # perform operation
fmul.s f31, f21, f12, rmm # perform operation
fmul.s f31, f21, f12, rne # perform operation
fmul.s f31, f21, f12, rtz # perform operation
fmul.s f31, f21, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f21, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f21, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f21, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f21, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f21, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x807fffff)
li x12, 0xda99f2af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f24, 0(x2) # load 0x00400000 from memory into f24
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f20, 0(x2) # load 0x807fffff from memory into f20
fmul.s f12, f24, f20, dyn # perform operation
fmul.s f12, f24, f20, rdn # perform operation
fmul.s f12, f24, f20, rmm # perform operation
fmul.s f12, f24, f20, rne # perform operation
fmul.s f12, f24, f20, rtz # perform operation
fmul.s f12, f24, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f24, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f24, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f24, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f24, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f24, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x400000)
li x31, 0x179b6a0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f1, 0(x2) # load 0x00400000 from memory into f1
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f3, 0(x2) # load 0x00400000 from memory into f3
fmul.s f31, f1, f3, dyn # perform operation
fmul.s f31, f1, f3, rdn # perform operation
fmul.s f31, f1, f3, rmm # perform operation
fmul.s f31, f1, f3, rne # perform operation
fmul.s f31, f1, f3, rtz # perform operation
fmul.s f31, f1, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f1, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f1, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f1, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f1, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f1, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80400000)
li x11, 0x56157ac1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f18, 0(x2) # load 0x00400000 from memory into f18
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
fmul.s f11, f18, f29, dyn # perform operation
fmul.s f11, f18, f29, rdn # perform operation
fmul.s f11, f18, f29, rmm # perform operation
fmul.s f11, f18, f29, rne # perform operation
fmul.s f11, f18, f29, rtz # perform operation
fmul.s f11, f18, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f18, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f18, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f18, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f18, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f18, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x1)
li x30, 0xcac93fff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f18, 0(x2) # load 0x00400000 from memory into f18
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f7, 0(x2) # load 0x00000001 from memory into f7
fmul.s f30, f18, f7, dyn # perform operation
fmul.s f30, f18, f7, rdn # perform operation
fmul.s f30, f18, f7, rmm # perform operation
fmul.s f30, f18, f7, rne # perform operation
fmul.s f30, f18, f7, rtz # perform operation
fmul.s f30, f18, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f18, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f18, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f18, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f18, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f18, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80000001)
li x1, 0xa4755024 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f21, 0(x2) # load 0x80000001 from memory into f21
fmul.s f1, f26, f21, dyn # perform operation
fmul.s f1, f26, f21, rdn # perform operation
fmul.s f1, f26, f21, rmm # perform operation
fmul.s f1, f26, f21, rne # perform operation
fmul.s f1, f26, f21, rtz # perform operation
fmul.s f1, f26, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f26, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f26, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f26, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f26, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f26, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f800000)
li x2, 0x783b89b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f5, 0(x2) # load 0x00400000 from memory into f5
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f9, 0(x2) # load 0x7f800000 from memory into f9
fmul.s f2, f5, f9, dyn # perform operation
fmul.s f2, f5, f9, rdn # perform operation
fmul.s f2, f5, f9, rmm # perform operation
fmul.s f2, f5, f9, rne # perform operation
fmul.s f2, f5, f9, rtz # perform operation
fmul.s f2, f5, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f5, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f5, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f5, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f5, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f5, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xff800000)
li x12, 0xf99db087 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f19, 0(x2) # load 0xff800000 from memory into f19
fmul.s f12, f21, f19, dyn # perform operation
fmul.s f12, f21, f19, rdn # perform operation
fmul.s f12, f21, f19, rmm # perform operation
fmul.s f12, f21, f19, rne # perform operation
fmul.s f12, f21, f19, rtz # perform operation
fmul.s f12, f21, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f21, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f21, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f21, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f21, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f21, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fc00000)
li x28, 0xf1cfce6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f1, 0(x2) # load 0x7fc00000 from memory into f1
fmul.s f28, f12, f1, dyn # perform operation
fmul.s f28, f12, f1, rdn # perform operation
fmul.s f28, f12, f1, rmm # perform operation
fmul.s f28, f12, f1, rne # perform operation
fmul.s f28, f12, f1, rtz # perform operation
fmul.s f28, f12, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f12, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f12, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f12, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f12, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f12, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fffffff)
li x28, 0xfc25422f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f20, 0(x2) # load 0x00400000 from memory into f20
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f8, 0(x2) # load 0x7fffffff from memory into f8
fmul.s f28, f20, f8, dyn # perform operation
fmul.s f28, f20, f8, rdn # perform operation
fmul.s f28, f20, f8, rmm # perform operation
fmul.s f28, f20, f8, rne # perform operation
fmul.s f28, f20, f8, rtz # perform operation
fmul.s f28, f20, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f20, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f20, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f20, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f20, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f20, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f800001)
li x3, 0x2122ab5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f28, 0(x2) # load 0x00400000 from memory into f28
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
fmul.s f3, f28, f21, dyn # perform operation
fmul.s f3, f28, f21, rdn # perform operation
fmul.s f3, f28, f21, rmm # perform operation
fmul.s f3, f28, f21, rne # perform operation
fmul.s f3, f28, f21, rtz # perform operation
fmul.s f3, f28, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f28, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f28, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f28, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f28, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f28, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fbfffff)
li x28, 0x78de93f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
fmul.s f28, f26, f16, dyn # perform operation
fmul.s f28, f26, f16, rdn # perform operation
fmul.s f28, f26, f16, rmm # perform operation
fmul.s f28, f26, f16, rne # perform operation
fmul.s f28, f26, f16, rtz # perform operation
fmul.s f28, f26, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f26, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f26, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f26, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f26, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f26, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7ef8654f)
li x20, 0x1e8fdc16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f29, 0(x2) # load 0x00400000 from memory into f29
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f24, 0(x2) # load 0x7ef8654f from memory into f24
fmul.s f20, f29, f24, dyn # perform operation
fmul.s f20, f29, f24, rdn # perform operation
fmul.s f20, f29, f24, rmm # perform operation
fmul.s f20, f29, f24, rne # perform operation
fmul.s f20, f29, f24, rtz # perform operation
fmul.s f20, f29, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f29, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f29, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f29, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f29, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f29, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x813d9ab0)
li x30, 0x4693f89e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f23, 0(x2) # load 0x00400000 from memory into f23
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f9, 0(x2) # load 0x813d9ab0 from memory into f9
fmul.s f30, f23, f9, dyn # perform operation
fmul.s f30, f23, f9, rdn # perform operation
fmul.s f30, f23, f9, rmm # perform operation
fmul.s f30, f23, f9, rne # perform operation
fmul.s f30, f23, f9, rtz # perform operation
fmul.s f30, f23, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f23, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f23, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f23, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f23, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f23, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x0)
li x17, 0x1941c2e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f21, 0(x2) # load 0x80400000 from memory into f21
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f19, 0(x2) # load 0x00000000 from memory into f19
fmul.s f17, f21, f19, dyn # perform operation
fmul.s f17, f21, f19, rdn # perform operation
fmul.s f17, f21, f19, rmm # perform operation
fmul.s f17, f21, f19, rne # perform operation
fmul.s f17, f21, f19, rtz # perform operation
fmul.s f17, f21, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f21, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f21, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f21, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f21, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f21, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80000000)
li x13, 0xd4916e2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f31, 0(x2) # load 0x80400000 from memory into f31
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f9, 0(x2) # load 0x80000000 from memory into f9
fmul.s f13, f31, f9, dyn # perform operation
fmul.s f13, f31, f9, rdn # perform operation
fmul.s f13, f31, f9, rmm # perform operation
fmul.s f13, f31, f9, rne # perform operation
fmul.s f13, f31, f9, rtz # perform operation
fmul.s f13, f31, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f31, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f31, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f31, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f31, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f31, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x3f800000)
li x20, 0xd0ccd88e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f9, 0(x2) # load 0x80400000 from memory into f9
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f19, 0(x2) # load 0x3f800000 from memory into f19
fmul.s f20, f9, f19, dyn # perform operation
fmul.s f20, f9, f19, rdn # perform operation
fmul.s f20, f9, f19, rmm # perform operation
fmul.s f20, f9, f19, rne # perform operation
fmul.s f20, f9, f19, rtz # perform operation
fmul.s f20, f9, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f9, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f9, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f9, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f9, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f9, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xbf800000)
li x8, 0x8f039056 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f14, 0(x2) # load 0x80400000 from memory into f14
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f19, 0(x2) # load 0xbf800000 from memory into f19
fmul.s f8, f14, f19, dyn # perform operation
fmul.s f8, f14, f19, rdn # perform operation
fmul.s f8, f14, f19, rmm # perform operation
fmul.s f8, f14, f19, rne # perform operation
fmul.s f8, f14, f19, rtz # perform operation
fmul.s f8, f14, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f14, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f14, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f14, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f14, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f14, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x3fc00000)
li x25, 0x95dfc05f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f5, 0(x2) # load 0x80400000 from memory into f5
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f20, 0(x2) # load 0x3fc00000 from memory into f20
fmul.s f25, f5, f20, dyn # perform operation
fmul.s f25, f5, f20, rdn # perform operation
fmul.s f25, f5, f20, rmm # perform operation
fmul.s f25, f5, f20, rne # perform operation
fmul.s f25, f5, f20, rtz # perform operation
fmul.s f25, f5, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f5, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f5, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f5, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f5, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f5, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xbfc00000)
li x5, 0x251fe6a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f8, 0(x2) # load 0x80400000 from memory into f8
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
fmul.s f5, f8, f16, dyn # perform operation
fmul.s f5, f8, f16, rdn # perform operation
fmul.s f5, f8, f16, rmm # perform operation
fmul.s f5, f8, f16, rne # perform operation
fmul.s f5, f8, f16, rtz # perform operation
fmul.s f5, f8, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f8, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f8, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f8, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f8, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f8, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x40000000)
li x12, 0x089feeaa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f17, 0(x2) # load 0x80400000 from memory into f17
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
fmul.s f12, f17, f8, dyn # perform operation
fmul.s f12, f17, f8, rdn # perform operation
fmul.s f12, f17, f8, rmm # perform operation
fmul.s f12, f17, f8, rne # perform operation
fmul.s f12, f17, f8, rtz # perform operation
fmul.s f12, f17, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f17, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f17, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f17, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f17, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f17, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xc0000000)
li x4, 0x4aaa1052 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f22, 0(x2) # load 0x80400000 from memory into f22
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f6, 0(x2) # load 0xc0000000 from memory into f6
fmul.s f4, f22, f6, dyn # perform operation
fmul.s f4, f22, f6, rdn # perform operation
fmul.s f4, f22, f6, rmm # perform operation
fmul.s f4, f22, f6, rne # perform operation
fmul.s f4, f22, f6, rtz # perform operation
fmul.s f4, f22, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f22, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f22, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f22, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f22, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f22, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x800000)
li x20, 0x3a4789c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f23, 0(x2) # load 0x80400000 from memory into f23
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
fmul.s f20, f23, f7, dyn # perform operation
fmul.s f20, f23, f7, rdn # perform operation
fmul.s f20, f23, f7, rmm # perform operation
fmul.s f20, f23, f7, rne # perform operation
fmul.s f20, f23, f7, rtz # perform operation
fmul.s f20, f23, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f23, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f23, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f23, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f23, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f23, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80800000)
li x10, 0x0af7ced0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f25, 0(x2) # load 0x80400000 from memory into f25
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f5, 0(x2) # load 0x80800000 from memory into f5
fmul.s f10, f25, f5, dyn # perform operation
fmul.s f10, f25, f5, rdn # perform operation
fmul.s f10, f25, f5, rmm # perform operation
fmul.s f10, f25, f5, rne # perform operation
fmul.s f10, f25, f5, rtz # perform operation
fmul.s f10, f25, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f25, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f25, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f25, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f25, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f25, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f7fffff)
li x27, 0x36708727 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f24, 0(x2) # load 0x80400000 from memory into f24
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
fmul.s f27, f24, f15, dyn # perform operation
fmul.s f27, f24, f15, rdn # perform operation
fmul.s f27, f24, f15, rmm # perform operation
fmul.s f27, f24, f15, rne # perform operation
fmul.s f27, f24, f15, rtz # perform operation
fmul.s f27, f24, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f24, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f24, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f24, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f24, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f24, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xff7fffff)
li x25, 0x7a9eaea5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f2, 0(x2) # load 0x80400000 from memory into f2
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f9, 0(x2) # load 0xff7fffff from memory into f9
fmul.s f25, f2, f9, dyn # perform operation
fmul.s f25, f2, f9, rdn # perform operation
fmul.s f25, f2, f9, rmm # perform operation
fmul.s f25, f2, f9, rne # perform operation
fmul.s f25, f2, f9, rtz # perform operation
fmul.s f25, f2, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f2, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f2, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f2, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f2, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f2, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fffff)
li x28, 0x8578b843 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f20, 0(x2) # load 0x80400000 from memory into f20
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f4, 0(x2) # load 0x007fffff from memory into f4
fmul.s f28, f20, f4, dyn # perform operation
fmul.s f28, f20, f4, rdn # perform operation
fmul.s f28, f20, f4, rmm # perform operation
fmul.s f28, f20, f4, rne # perform operation
fmul.s f28, f20, f4, rtz # perform operation
fmul.s f28, f20, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f20, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f20, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f20, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f20, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f20, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x807fffff)
li x27, 0xc8458bdd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f10, 0(x2) # load 0x80400000 from memory into f10
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f4, 0(x2) # load 0x807fffff from memory into f4
fmul.s f27, f10, f4, dyn # perform operation
fmul.s f27, f10, f4, rdn # perform operation
fmul.s f27, f10, f4, rmm # perform operation
fmul.s f27, f10, f4, rne # perform operation
fmul.s f27, f10, f4, rtz # perform operation
fmul.s f27, f10, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f10, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f10, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f10, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f10, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f10, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x400000)
li x23, 0x49d148e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f24, 0(x2) # load 0x80400000 from memory into f24
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f20, 0(x2) # load 0x00400000 from memory into f20
fmul.s f23, f24, f20, dyn # perform operation
fmul.s f23, f24, f20, rdn # perform operation
fmul.s f23, f24, f20, rmm # perform operation
fmul.s f23, f24, f20, rne # perform operation
fmul.s f23, f24, f20, rtz # perform operation
fmul.s f23, f24, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f24, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f24, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f24, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f24, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f24, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80400000)
li x31, 0x6ac08204 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f5, 0(x2) # load 0x80400000 from memory into f5
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f10, 0(x2) # load 0x80400000 from memory into f10
fmul.s f31, f5, f10, dyn # perform operation
fmul.s f31, f5, f10, rdn # perform operation
fmul.s f31, f5, f10, rmm # perform operation
fmul.s f31, f5, f10, rne # perform operation
fmul.s f31, f5, f10, rtz # perform operation
fmul.s f31, f5, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f5, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f5, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f5, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f5, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f5, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x1)
li x16, 0x0d2e4a90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f23, 0(x2) # load 0x80400000 from memory into f23
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f30, 0(x2) # load 0x00000001 from memory into f30
fmul.s f16, f23, f30, dyn # perform operation
fmul.s f16, f23, f30, rdn # perform operation
fmul.s f16, f23, f30, rmm # perform operation
fmul.s f16, f23, f30, rne # perform operation
fmul.s f16, f23, f30, rtz # perform operation
fmul.s f16, f23, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f23, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f23, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f23, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f23, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f23, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80000001)
li x6, 0x6bb2a6bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f17, 0(x2) # load 0x80400000 from memory into f17
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
fmul.s f6, f17, f27, dyn # perform operation
fmul.s f6, f17, f27, rdn # perform operation
fmul.s f6, f17, f27, rmm # perform operation
fmul.s f6, f17, f27, rne # perform operation
fmul.s f6, f17, f27, rtz # perform operation
fmul.s f6, f17, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f17, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f17, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f17, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f17, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f17, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f800000)
li x19, 0xb64398a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f14, 0(x2) # load 0x80400000 from memory into f14
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
fmul.s f19, f14, f7, dyn # perform operation
fmul.s f19, f14, f7, rdn # perform operation
fmul.s f19, f14, f7, rmm # perform operation
fmul.s f19, f14, f7, rne # perform operation
fmul.s f19, f14, f7, rtz # perform operation
fmul.s f19, f14, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f14, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f14, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f14, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f14, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f14, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xff800000)
li x1, 0xbf58ba3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f23, 0(x2) # load 0xff800000 from memory into f23
fmul.s f1, f29, f23, dyn # perform operation
fmul.s f1, f29, f23, rdn # perform operation
fmul.s f1, f29, f23, rmm # perform operation
fmul.s f1, f29, f23, rne # perform operation
fmul.s f1, f29, f23, rtz # perform operation
fmul.s f1, f29, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f29, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f29, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f29, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f29, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f29, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fc00000)
li x30, 0xbe2c63d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f11, 0(x2) # load 0x80400000 from memory into f11
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f20, 0(x2) # load 0x7fc00000 from memory into f20
fmul.s f30, f11, f20, dyn # perform operation
fmul.s f30, f11, f20, rdn # perform operation
fmul.s f30, f11, f20, rmm # perform operation
fmul.s f30, f11, f20, rne # perform operation
fmul.s f30, f11, f20, rtz # perform operation
fmul.s f30, f11, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f11, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f11, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f11, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f11, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f11, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fffffff)
li x16, 0xcb6891b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f26, 0(x2) # load 0x80400000 from memory into f26
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f28, 0(x2) # load 0x7fffffff from memory into f28
fmul.s f16, f26, f28, dyn # perform operation
fmul.s f16, f26, f28, rdn # perform operation
fmul.s f16, f26, f28, rmm # perform operation
fmul.s f16, f26, f28, rne # perform operation
fmul.s f16, f26, f28, rtz # perform operation
fmul.s f16, f26, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f26, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f26, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f26, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f26, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f26, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f800001)
li x26, 0x5faf99e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f12, 0(x2) # load 0x80400000 from memory into f12
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
fmul.s f26, f12, f27, dyn # perform operation
fmul.s f26, f12, f27, rdn # perform operation
fmul.s f26, f12, f27, rmm # perform operation
fmul.s f26, f12, f27, rne # perform operation
fmul.s f26, f12, f27, rtz # perform operation
fmul.s f26, f12, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f12, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f12, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f12, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f12, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f12, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fbfffff)
li x18, 0x40a6c311 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f11, 0(x2) # load 0x80400000 from memory into f11
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f9, 0(x2) # load 0x7fbfffff from memory into f9
fmul.s f18, f11, f9, dyn # perform operation
fmul.s f18, f11, f9, rdn # perform operation
fmul.s f18, f11, f9, rmm # perform operation
fmul.s f18, f11, f9, rne # perform operation
fmul.s f18, f11, f9, rtz # perform operation
fmul.s f18, f11, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f11, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f11, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f11, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f11, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f11, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7ef8654f)
li x30, 0x3402c518 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f1, 0(x2) # load 0x80400000 from memory into f1
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f31, 0(x2) # load 0x7ef8654f from memory into f31
fmul.s f30, f1, f31, dyn # perform operation
fmul.s f30, f1, f31, rdn # perform operation
fmul.s f30, f1, f31, rmm # perform operation
fmul.s f30, f1, f31, rne # perform operation
fmul.s f30, f1, f31, rtz # perform operation
fmul.s f30, f1, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f1, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f1, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f1, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f1, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f1, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x813d9ab0)
li x9, 0x91117303 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f11, 0(x2) # load 0x80400000 from memory into f11
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f12, 0(x2) # load 0x813d9ab0 from memory into f12
fmul.s f9, f11, f12, dyn # perform operation
fmul.s f9, f11, f12, rdn # perform operation
fmul.s f9, f11, f12, rmm # perform operation
fmul.s f9, f11, f12, rne # perform operation
fmul.s f9, f11, f12, rtz # perform operation
fmul.s f9, f11, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f11, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f11, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f11, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f11, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f11, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
li x6, 0xa184a2a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f16, 0(x2) # load 0x00000001 from memory into f16
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f14, 0(x2) # load 0x00000000 from memory into f14
fmul.s f6, f16, f14, dyn # perform operation
fmul.s f6, f16, f14, rdn # perform operation
fmul.s f6, f16, f14, rmm # perform operation
fmul.s f6, f16, f14, rne # perform operation
fmul.s f6, f16, f14, rtz # perform operation
fmul.s f6, f16, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f16, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f16, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f16, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f16, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f16, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80000000)
li x3, 0xccead05f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f18, 0(x2) # load 0x00000001 from memory into f18
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f7, 0(x2) # load 0x80000000 from memory into f7
fmul.s f3, f18, f7, dyn # perform operation
fmul.s f3, f18, f7, rdn # perform operation
fmul.s f3, f18, f7, rmm # perform operation
fmul.s f3, f18, f7, rne # perform operation
fmul.s f3, f18, f7, rtz # perform operation
fmul.s f3, f18, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f18, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f18, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f18, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f18, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f18, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3f800000)
li x23, 0x27115c06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f14, 0(x2) # load 0x00000001 from memory into f14
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f29, 0(x2) # load 0x3f800000 from memory into f29
fmul.s f23, f14, f29, dyn # perform operation
fmul.s f23, f14, f29, rdn # perform operation
fmul.s f23, f14, f29, rmm # perform operation
fmul.s f23, f14, f29, rne # perform operation
fmul.s f23, f14, f29, rtz # perform operation
fmul.s f23, f14, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f14, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f14, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f14, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f14, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f14, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbf800000)
li x28, 0x41eaa0f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f21, 0(x2) # load 0x00000001 from memory into f21
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f3, 0(x2) # load 0xbf800000 from memory into f3
fmul.s f28, f21, f3, dyn # perform operation
fmul.s f28, f21, f3, rdn # perform operation
fmul.s f28, f21, f3, rmm # perform operation
fmul.s f28, f21, f3, rne # perform operation
fmul.s f28, f21, f3, rtz # perform operation
fmul.s f28, f21, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f21, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f21, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f21, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f21, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f21, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3fc00000)
li x11, 0x88441fe5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f23, 0(x2) # load 0x3fc00000 from memory into f23
fmul.s f11, f3, f23, dyn # perform operation
fmul.s f11, f3, f23, rdn # perform operation
fmul.s f11, f3, f23, rmm # perform operation
fmul.s f11, f3, f23, rne # perform operation
fmul.s f11, f3, f23, rtz # perform operation
fmul.s f11, f3, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f3, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f3, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f3, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f3, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f3, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbfc00000)
li x4, 0xcc3124c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f10, 0(x2) # load 0xbfc00000 from memory into f10
fmul.s f4, f2, f10, dyn # perform operation
fmul.s f4, f2, f10, rdn # perform operation
fmul.s f4, f2, f10, rmm # perform operation
fmul.s f4, f2, f10, rne # perform operation
fmul.s f4, f2, f10, rtz # perform operation
fmul.s f4, f2, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f2, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f2, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f2, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f2, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f2, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x40000000)
li x4, 0x8fad62fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f30, 0(x2) # load 0x00000001 from memory into f30
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f15, 0(x2) # load 0x40000000 from memory into f15
fmul.s f4, f30, f15, dyn # perform operation
fmul.s f4, f30, f15, rdn # perform operation
fmul.s f4, f30, f15, rmm # perform operation
fmul.s f4, f30, f15, rne # perform operation
fmul.s f4, f30, f15, rtz # perform operation
fmul.s f4, f30, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f30, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f30, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f30, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f30, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f30, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc0000000)
li x4, 0x0643acc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f28, 0(x2) # load 0x00000001 from memory into f28
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f22, 0(x2) # load 0xc0000000 from memory into f22
fmul.s f4, f28, f22, dyn # perform operation
fmul.s f4, f28, f22, rdn # perform operation
fmul.s f4, f28, f22, rmm # perform operation
fmul.s f4, f28, f22, rne # perform operation
fmul.s f4, f28, f22, rtz # perform operation
fmul.s f4, f28, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f28, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f28, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f28, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f28, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f28, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x800000)
li x18, 0x4d77816e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f11, 0(x2) # load 0x00000001 from memory into f11
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
fmul.s f18, f11, f14, dyn # perform operation
fmul.s f18, f11, f14, rdn # perform operation
fmul.s f18, f11, f14, rmm # perform operation
fmul.s f18, f11, f14, rne # perform operation
fmul.s f18, f11, f14, rtz # perform operation
fmul.s f18, f11, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f11, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f11, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f11, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f11, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f11, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80800000)
li x27, 0xc354c3fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f16, 0(x2) # load 0x00000001 from memory into f16
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f2, 0(x2) # load 0x80800000 from memory into f2
fmul.s f27, f16, f2, dyn # perform operation
fmul.s f27, f16, f2, rdn # perform operation
fmul.s f27, f16, f2, rmm # perform operation
fmul.s f27, f16, f2, rne # perform operation
fmul.s f27, f16, f2, rtz # perform operation
fmul.s f27, f16, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f16, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f16, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f16, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f16, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f16, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f7fffff)
li x16, 0x5d9c3e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f26, 0(x2) # load 0x7f7fffff from memory into f26
fmul.s f16, f3, f26, dyn # perform operation
fmul.s f16, f3, f26, rdn # perform operation
fmul.s f16, f3, f26, rmm # perform operation
fmul.s f16, f3, f26, rne # perform operation
fmul.s f16, f3, f26, rtz # perform operation
fmul.s f16, f3, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f3, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f3, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f3, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f3, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f3, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xff7fffff)
li x10, 0xc463409a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f30, 0(x2) # load 0x00000001 from memory into f30
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f28, 0(x2) # load 0xff7fffff from memory into f28
fmul.s f10, f30, f28, dyn # perform operation
fmul.s f10, f30, f28, rdn # perform operation
fmul.s f10, f30, f28, rmm # perform operation
fmul.s f10, f30, f28, rne # perform operation
fmul.s f10, f30, f28, rtz # perform operation
fmul.s f10, f30, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f30, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f30, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f30, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f30, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f30, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffff)
li x25, 0x338ec23f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f24, 0(x2) # load 0x00000001 from memory into f24
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f19, 0(x2) # load 0x007fffff from memory into f19
fmul.s f25, f24, f19, dyn # perform operation
fmul.s f25, f24, f19, rdn # perform operation
fmul.s f25, f24, f19, rmm # perform operation
fmul.s f25, f24, f19, rne # perform operation
fmul.s f25, f24, f19, rtz # perform operation
fmul.s f25, f24, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f24, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f24, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f24, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f24, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f24, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x807fffff)
li x7, 0x4eed5c42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f27, 0(x2) # load 0x00000001 from memory into f27
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f6, 0(x2) # load 0x807fffff from memory into f6
fmul.s f7, f27, f6, dyn # perform operation
fmul.s f7, f27, f6, rdn # perform operation
fmul.s f7, f27, f6, rmm # perform operation
fmul.s f7, f27, f6, rne # perform operation
fmul.s f7, f27, f6, rtz # perform operation
fmul.s f7, f27, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f27, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f27, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f27, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f27, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f27, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x400000)
li x30, 0xc3b09d85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f24, 0(x2) # load 0x00000001 from memory into f24
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f19, 0(x2) # load 0x00400000 from memory into f19
fmul.s f30, f24, f19, dyn # perform operation
fmul.s f30, f24, f19, rdn # perform operation
fmul.s f30, f24, f19, rmm # perform operation
fmul.s f30, f24, f19, rne # perform operation
fmul.s f30, f24, f19, rtz # perform operation
fmul.s f30, f24, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f24, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f24, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f24, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f24, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f24, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80400000)
li x10, 0x2caa9348 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f31, 0(x2) # load 0x00000001 from memory into f31
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f11, 0(x2) # load 0x80400000 from memory into f11
fmul.s f10, f31, f11, dyn # perform operation
fmul.s f10, f31, f11, rdn # perform operation
fmul.s f10, f31, f11, rmm # perform operation
fmul.s f10, f31, f11, rne # perform operation
fmul.s f10, f31, f11, rtz # perform operation
fmul.s f10, f31, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f31, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f31, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f31, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f31, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f31, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
li x18, 0xa2ac1ae8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f4, 0(x2) # load 0x00000001 from memory into f4
fmul.s f18, f2, f4, dyn # perform operation
fmul.s f18, f2, f4, rdn # perform operation
fmul.s f18, f2, f4, rmm # perform operation
fmul.s f18, f2, f4, rne # perform operation
fmul.s f18, f2, f4, rtz # perform operation
fmul.s f18, f2, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f2, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f2, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f2, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f2, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f2, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80000001)
li x17, 0xd8203ac7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f23, 0(x2) # load 0x00000001 from memory into f23
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
fmul.s f17, f23, f27, dyn # perform operation
fmul.s f17, f23, f27, rdn # perform operation
fmul.s f17, f23, f27, rmm # perform operation
fmul.s f17, f23, f27, rne # perform operation
fmul.s f17, f23, f27, rtz # perform operation
fmul.s f17, f23, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f23, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f23, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f23, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f23, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f23, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f800000)
li x2, 0xa760d103 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f14, 0(x2) # load 0x00000001 from memory into f14
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
fmul.s f2, f14, f11, dyn # perform operation
fmul.s f2, f14, f11, rdn # perform operation
fmul.s f2, f14, f11, rmm # perform operation
fmul.s f2, f14, f11, rne # perform operation
fmul.s f2, f14, f11, rtz # perform operation
fmul.s f2, f14, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f14, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f14, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f14, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f14, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f14, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xff800000)
li x16, 0xd4b9c491 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f25, 0(x2) # load 0x00000001 from memory into f25
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f19, 0(x2) # load 0xff800000 from memory into f19
fmul.s f16, f25, f19, dyn # perform operation
fmul.s f16, f25, f19, rdn # perform operation
fmul.s f16, f25, f19, rmm # perform operation
fmul.s f16, f25, f19, rne # perform operation
fmul.s f16, f25, f19, rtz # perform operation
fmul.s f16, f25, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f25, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f25, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f25, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f25, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f25, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fc00000)
li x27, 0x7536ea4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f28, 0(x2) # load 0x00000001 from memory into f28
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f25, 0(x2) # load 0x7fc00000 from memory into f25
fmul.s f27, f28, f25, dyn # perform operation
fmul.s f27, f28, f25, rdn # perform operation
fmul.s f27, f28, f25, rmm # perform operation
fmul.s f27, f28, f25, rne # perform operation
fmul.s f27, f28, f25, rtz # perform operation
fmul.s f27, f28, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f28, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f28, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f28, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f28, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f28, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffffff)
li x7, 0x7568a63e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f22, 0(x2) # load 0x7fffffff from memory into f22
fmul.s f7, f5, f22, dyn # perform operation
fmul.s f7, f5, f22, rdn # perform operation
fmul.s f7, f5, f22, rmm # perform operation
fmul.s f7, f5, f22, rne # perform operation
fmul.s f7, f5, f22, rtz # perform operation
fmul.s f7, f5, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f5, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f5, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f5, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f5, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f5, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f800001)
li x12, 0xbd83e63d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f30, 0(x2) # load 0x00000001 from memory into f30
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f1, 0(x2) # load 0x7f800001 from memory into f1
fmul.s f12, f30, f1, dyn # perform operation
fmul.s f12, f30, f1, rdn # perform operation
fmul.s f12, f30, f1, rmm # perform operation
fmul.s f12, f30, f1, rne # perform operation
fmul.s f12, f30, f1, rtz # perform operation
fmul.s f12, f30, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f30, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f30, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f30, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f30, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f30, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fbfffff)
li x22, 0xb87e5b18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f18, 0(x2) # load 0x00000001 from memory into f18
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f2, 0(x2) # load 0x7fbfffff from memory into f2
fmul.s f22, f18, f2, dyn # perform operation
fmul.s f22, f18, f2, rdn # perform operation
fmul.s f22, f18, f2, rmm # perform operation
fmul.s f22, f18, f2, rne # perform operation
fmul.s f22, f18, f2, rtz # perform operation
fmul.s f22, f18, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f18, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f18, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f18, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f18, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f18, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ef8654f)
li x6, 0xeb7d3c37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f26, 0(x2) # load 0x00000001 from memory into f26
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f1, 0(x2) # load 0x7ef8654f from memory into f1
fmul.s f6, f26, f1, dyn # perform operation
fmul.s f6, f26, f1, rdn # perform operation
fmul.s f6, f26, f1, rmm # perform operation
fmul.s f6, f26, f1, rne # perform operation
fmul.s f6, f26, f1, rtz # perform operation
fmul.s f6, f26, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f26, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f26, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f26, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f26, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f26, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x813d9ab0)
li x8, 0x1c06aec3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f13, 0(x2) # load 0x00000001 from memory into f13
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f16, 0(x2) # load 0x813d9ab0 from memory into f16
fmul.s f8, f13, f16, dyn # perform operation
fmul.s f8, f13, f16, rdn # perform operation
fmul.s f8, f13, f16, rmm # perform operation
fmul.s f8, f13, f16, rne # perform operation
fmul.s f8, f13, f16, rtz # perform operation
fmul.s f8, f13, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f13, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f13, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f13, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f13, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f13, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x0)
li x31, 0x49393820 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
fmul.s f31, f7, f3, dyn # perform operation
fmul.s f31, f7, f3, rdn # perform operation
fmul.s f31, f7, f3, rmm # perform operation
fmul.s f31, f7, f3, rne # perform operation
fmul.s f31, f7, f3, rtz # perform operation
fmul.s f31, f7, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f7, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f7, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f7, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f7, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f7, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80000000)
li x4, 0xc5eeb62d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f22, 0(x2) # load 0x80000001 from memory into f22
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f2, 0(x2) # load 0x80000000 from memory into f2
fmul.s f4, f22, f2, dyn # perform operation
fmul.s f4, f22, f2, rdn # perform operation
fmul.s f4, f22, f2, rmm # perform operation
fmul.s f4, f22, f2, rne # perform operation
fmul.s f4, f22, f2, rtz # perform operation
fmul.s f4, f22, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f22, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f22, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f22, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f22, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f22, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x3f800000)
li x15, 0x72d3f044 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f28, 0(x2) # load 0x80000001 from memory into f28
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f14, 0(x2) # load 0x3f800000 from memory into f14
fmul.s f15, f28, f14, dyn # perform operation
fmul.s f15, f28, f14, rdn # perform operation
fmul.s f15, f28, f14, rmm # perform operation
fmul.s f15, f28, f14, rne # perform operation
fmul.s f15, f28, f14, rtz # perform operation
fmul.s f15, f28, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f28, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f28, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f28, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f28, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f28, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xbf800000)
li x4, 0xec33f834 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f2, 0(x2) # load 0x80000001 from memory into f2
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f15, 0(x2) # load 0xbf800000 from memory into f15
fmul.s f4, f2, f15, dyn # perform operation
fmul.s f4, f2, f15, rdn # perform operation
fmul.s f4, f2, f15, rmm # perform operation
fmul.s f4, f2, f15, rne # perform operation
fmul.s f4, f2, f15, rtz # perform operation
fmul.s f4, f2, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f2, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f2, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f2, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f2, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f2, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x3fc00000)
li x14, 0xa0f705e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f19, 0(x2) # load 0x80000001 from memory into f19
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
fmul.s f14, f19, f31, dyn # perform operation
fmul.s f14, f19, f31, rdn # perform operation
fmul.s f14, f19, f31, rmm # perform operation
fmul.s f14, f19, f31, rne # perform operation
fmul.s f14, f19, f31, rtz # perform operation
fmul.s f14, f19, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f19, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f19, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f19, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f19, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f19, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xbfc00000)
li x31, 0xd10c4650 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f24, 0(x2) # load 0x80000001 from memory into f24
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f21, 0(x2) # load 0xbfc00000 from memory into f21
fmul.s f31, f24, f21, dyn # perform operation
fmul.s f31, f24, f21, rdn # perform operation
fmul.s f31, f24, f21, rmm # perform operation
fmul.s f31, f24, f21, rne # perform operation
fmul.s f31, f24, f21, rtz # perform operation
fmul.s f31, f24, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f24, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f24, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f24, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f24, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f24, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x40000000)
li x11, 0x22d8380b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f19, 0(x2) # load 0x80000001 from memory into f19
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f29, 0(x2) # load 0x40000000 from memory into f29
fmul.s f11, f19, f29, dyn # perform operation
fmul.s f11, f19, f29, rdn # perform operation
fmul.s f11, f19, f29, rmm # perform operation
fmul.s f11, f19, f29, rne # perform operation
fmul.s f11, f19, f29, rtz # perform operation
fmul.s f11, f19, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f19, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f19, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f19, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f19, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f19, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xc0000000)
li x24, 0x7d33c14d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f25, 0(x2) # load 0x80000001 from memory into f25
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f27, 0(x2) # load 0xc0000000 from memory into f27
fmul.s f24, f25, f27, dyn # perform operation
fmul.s f24, f25, f27, rdn # perform operation
fmul.s f24, f25, f27, rmm # perform operation
fmul.s f24, f25, f27, rne # perform operation
fmul.s f24, f25, f27, rtz # perform operation
fmul.s f24, f25, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f25, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f25, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f25, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f25, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f25, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x800000)
li x28, 0xf152550a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f2, 0(x2) # load 0x00800000 from memory into f2
fmul.s f28, f31, f2, dyn # perform operation
fmul.s f28, f31, f2, rdn # perform operation
fmul.s f28, f31, f2, rmm # perform operation
fmul.s f28, f31, f2, rne # perform operation
fmul.s f28, f31, f2, rtz # perform operation
fmul.s f28, f31, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f31, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f31, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f31, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f31, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f31, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80800000)
li x27, 0x94d99765 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f12, 0(x2) # load 0x80000001 from memory into f12
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f30, 0(x2) # load 0x80800000 from memory into f30
fmul.s f27, f12, f30, dyn # perform operation
fmul.s f27, f12, f30, rdn # perform operation
fmul.s f27, f12, f30, rmm # perform operation
fmul.s f27, f12, f30, rne # perform operation
fmul.s f27, f12, f30, rtz # perform operation
fmul.s f27, f12, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f12, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f12, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f12, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f12, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f12, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f7fffff)
li x3, 0x1b04b513 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f23, 0(x2) # load 0x7f7fffff from memory into f23
fmul.s f3, f31, f23, dyn # perform operation
fmul.s f3, f31, f23, rdn # perform operation
fmul.s f3, f31, f23, rmm # perform operation
fmul.s f3, f31, f23, rne # perform operation
fmul.s f3, f31, f23, rtz # perform operation
fmul.s f3, f31, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f31, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f31, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f31, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f31, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f31, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xff7fffff)
li x18, 0xeb9131c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f15, 0(x2) # load 0x80000001 from memory into f15
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f3, 0(x2) # load 0xff7fffff from memory into f3
fmul.s f18, f15, f3, dyn # perform operation
fmul.s f18, f15, f3, rdn # perform operation
fmul.s f18, f15, f3, rmm # perform operation
fmul.s f18, f15, f3, rne # perform operation
fmul.s f18, f15, f3, rtz # perform operation
fmul.s f18, f15, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f15, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f15, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f15, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f15, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f15, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fffff)
li x30, 0x61b5b98b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f26, 0(x2) # load 0x80000001 from memory into f26
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f31, 0(x2) # load 0x007fffff from memory into f31
fmul.s f30, f26, f31, dyn # perform operation
fmul.s f30, f26, f31, rdn # perform operation
fmul.s f30, f26, f31, rmm # perform operation
fmul.s f30, f26, f31, rne # perform operation
fmul.s f30, f26, f31, rtz # perform operation
fmul.s f30, f26, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f26, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f26, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f26, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f26, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f26, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x807fffff)
li x19, 0x47e13a9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f29, 0(x2) # load 0x80000001 from memory into f29
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f5, 0(x2) # load 0x807fffff from memory into f5
fmul.s f19, f29, f5, dyn # perform operation
fmul.s f19, f29, f5, rdn # perform operation
fmul.s f19, f29, f5, rmm # perform operation
fmul.s f19, f29, f5, rne # perform operation
fmul.s f19, f29, f5, rtz # perform operation
fmul.s f19, f29, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f29, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f29, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f29, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f29, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f29, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x400000)
li x7, 0x7310520b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f26, 0(x2) # load 0x80000001 from memory into f26
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f16, 0(x2) # load 0x00400000 from memory into f16
fmul.s f7, f26, f16, dyn # perform operation
fmul.s f7, f26, f16, rdn # perform operation
fmul.s f7, f26, f16, rmm # perform operation
fmul.s f7, f26, f16, rne # perform operation
fmul.s f7, f26, f16, rtz # perform operation
fmul.s f7, f26, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f26, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f26, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f26, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f26, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f26, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80400000)
li x28, 0xa4cf1c56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f4, 0(x2) # load 0x80000001 from memory into f4
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f10, 0(x2) # load 0x80400000 from memory into f10
fmul.s f28, f4, f10, dyn # perform operation
fmul.s f28, f4, f10, rdn # perform operation
fmul.s f28, f4, f10, rmm # perform operation
fmul.s f28, f4, f10, rne # perform operation
fmul.s f28, f4, f10, rtz # perform operation
fmul.s f28, f4, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f4, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f4, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f4, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f4, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f4, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x1)
li x7, 0x0b10e1a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f5, 0(x2) # load 0x80000001 from memory into f5
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f17, 0(x2) # load 0x00000001 from memory into f17
fmul.s f7, f5, f17, dyn # perform operation
fmul.s f7, f5, f17, rdn # perform operation
fmul.s f7, f5, f17, rmm # perform operation
fmul.s f7, f5, f17, rne # perform operation
fmul.s f7, f5, f17, rtz # perform operation
fmul.s f7, f5, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f5, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f5, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f5, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f5, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f5, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80000001)
li x27, 0x5ba6919e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f2, 0(x2) # load 0x80000001 from memory into f2
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
fmul.s f27, f2, f31, dyn # perform operation
fmul.s f27, f2, f31, rdn # perform operation
fmul.s f27, f2, f31, rmm # perform operation
fmul.s f27, f2, f31, rne # perform operation
fmul.s f27, f2, f31, rtz # perform operation
fmul.s f27, f2, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f2, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f2, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f2, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f2, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f2, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f800000)
li x6, 0xe4467f46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f12, 0(x2) # load 0x80000001 from memory into f12
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f3, 0(x2) # load 0x7f800000 from memory into f3
fmul.s f6, f12, f3, dyn # perform operation
fmul.s f6, f12, f3, rdn # perform operation
fmul.s f6, f12, f3, rmm # perform operation
fmul.s f6, f12, f3, rne # perform operation
fmul.s f6, f12, f3, rtz # perform operation
fmul.s f6, f12, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f12, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f12, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f12, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f12, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f12, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xff800000)
li x4, 0x064c421c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f21, 0(x2) # load 0x80000001 from memory into f21
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f8, 0(x2) # load 0xff800000 from memory into f8
fmul.s f4, f21, f8, dyn # perform operation
fmul.s f4, f21, f8, rdn # perform operation
fmul.s f4, f21, f8, rmm # perform operation
fmul.s f4, f21, f8, rne # perform operation
fmul.s f4, f21, f8, rtz # perform operation
fmul.s f4, f21, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f21, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f21, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f21, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f21, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f21, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fc00000)
li x12, 0x4c197eb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f5, 0(x2) # load 0x80000001 from memory into f5
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f3, 0(x2) # load 0x7fc00000 from memory into f3
fmul.s f12, f5, f3, dyn # perform operation
fmul.s f12, f5, f3, rdn # perform operation
fmul.s f12, f5, f3, rmm # perform operation
fmul.s f12, f5, f3, rne # perform operation
fmul.s f12, f5, f3, rtz # perform operation
fmul.s f12, f5, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f5, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f5, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f5, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f5, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f5, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fffffff)
li x26, 0x564221a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f22, 0(x2) # load 0x7fffffff from memory into f22
fmul.s f26, f18, f22, dyn # perform operation
fmul.s f26, f18, f22, rdn # perform operation
fmul.s f26, f18, f22, rmm # perform operation
fmul.s f26, f18, f22, rne # perform operation
fmul.s f26, f18, f22, rtz # perform operation
fmul.s f26, f18, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f18, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f18, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f18, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f18, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f18, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f800001)
li x10, 0xd390cc4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f6, 0(x2) # load 0x80000001 from memory into f6
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f26, 0(x2) # load 0x7f800001 from memory into f26
fmul.s f10, f6, f26, dyn # perform operation
fmul.s f10, f6, f26, rdn # perform operation
fmul.s f10, f6, f26, rmm # perform operation
fmul.s f10, f6, f26, rne # perform operation
fmul.s f10, f6, f26, rtz # perform operation
fmul.s f10, f6, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f6, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f6, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f6, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f6, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f6, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fbfffff)
li x4, 0x4ea05326 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f30, 0(x2) # load 0x80000001 from memory into f30
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f21, 0(x2) # load 0x7fbfffff from memory into f21
fmul.s f4, f30, f21, dyn # perform operation
fmul.s f4, f30, f21, rdn # perform operation
fmul.s f4, f30, f21, rmm # perform operation
fmul.s f4, f30, f21, rne # perform operation
fmul.s f4, f30, f21, rtz # perform operation
fmul.s f4, f30, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f30, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f30, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f30, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f30, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f30, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7ef8654f)
li x30, 0xacc43cac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f25, 0(x2) # load 0x80000001 from memory into f25
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f29, 0(x2) # load 0x7ef8654f from memory into f29
fmul.s f30, f25, f29, dyn # perform operation
fmul.s f30, f25, f29, rdn # perform operation
fmul.s f30, f25, f29, rmm # perform operation
fmul.s f30, f25, f29, rne # perform operation
fmul.s f30, f25, f29, rtz # perform operation
fmul.s f30, f25, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f25, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f25, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f25, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f25, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f25, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x813d9ab0)
li x19, 0xc00b3eca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f13, 0(x2) # load 0x80000001 from memory into f13
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f20, 0(x2) # load 0x813d9ab0 from memory into f20
fmul.s f19, f13, f20, dyn # perform operation
fmul.s f19, f13, f20, rdn # perform operation
fmul.s f19, f13, f20, rmm # perform operation
fmul.s f19, f13, f20, rne # perform operation
fmul.s f19, f13, f20, rtz # perform operation
fmul.s f19, f13, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f13, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f13, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f13, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f13, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f13, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x0)
li x16, 0xa71be017 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f25, 0(x2) # load 0x7f800000 from memory into f25
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
fmul.s f16, f25, f29, dyn # perform operation
fmul.s f16, f25, f29, rdn # perform operation
fmul.s f16, f25, f29, rmm # perform operation
fmul.s f16, f25, f29, rne # perform operation
fmul.s f16, f25, f29, rtz # perform operation
fmul.s f16, f25, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f25, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f25, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f25, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f25, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f25, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80000000)
li x20, 0x313aeb6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f22, 0(x2) # load 0x7f800000 from memory into f22
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f13, 0(x2) # load 0x80000000 from memory into f13
fmul.s f20, f22, f13, dyn # perform operation
fmul.s f20, f22, f13, rdn # perform operation
fmul.s f20, f22, f13, rmm # perform operation
fmul.s f20, f22, f13, rne # perform operation
fmul.s f20, f22, f13, rtz # perform operation
fmul.s f20, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f22, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x3f800000)
li x13, 0x843aa18e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f20, 0(x2) # load 0x7f800000 from memory into f20
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f26, 0(x2) # load 0x3f800000 from memory into f26
fmul.s f13, f20, f26, dyn # perform operation
fmul.s f13, f20, f26, rdn # perform operation
fmul.s f13, f20, f26, rmm # perform operation
fmul.s f13, f20, f26, rne # perform operation
fmul.s f13, f20, f26, rtz # perform operation
fmul.s f13, f20, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f20, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f20, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f20, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f20, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f20, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xbf800000)
li x26, 0x6eb1af38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f18, 0(x2) # load 0x7f800000 from memory into f18
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f1, 0(x2) # load 0xbf800000 from memory into f1
fmul.s f26, f18, f1, dyn # perform operation
fmul.s f26, f18, f1, rdn # perform operation
fmul.s f26, f18, f1, rmm # perform operation
fmul.s f26, f18, f1, rne # perform operation
fmul.s f26, f18, f1, rtz # perform operation
fmul.s f26, f18, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f18, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f18, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f18, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f18, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f18, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x3fc00000)
li x18, 0xa5055ea7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f25, 0(x2) # load 0x7f800000 from memory into f25
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f10, 0(x2) # load 0x3fc00000 from memory into f10
fmul.s f18, f25, f10, dyn # perform operation
fmul.s f18, f25, f10, rdn # perform operation
fmul.s f18, f25, f10, rmm # perform operation
fmul.s f18, f25, f10, rne # perform operation
fmul.s f18, f25, f10, rtz # perform operation
fmul.s f18, f25, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f25, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f25, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f25, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f25, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f25, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xbfc00000)
li x15, 0x8828ba80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f28, 0(x2) # load 0x7f800000 from memory into f28
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f8, 0(x2) # load 0xbfc00000 from memory into f8
fmul.s f15, f28, f8, dyn # perform operation
fmul.s f15, f28, f8, rdn # perform operation
fmul.s f15, f28, f8, rmm # perform operation
fmul.s f15, f28, f8, rne # perform operation
fmul.s f15, f28, f8, rtz # perform operation
fmul.s f15, f28, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f28, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f28, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f28, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f28, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f28, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x40000000)
li x16, 0x7d91b06c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f20, 0(x2) # load 0x7f800000 from memory into f20
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f27, 0(x2) # load 0x40000000 from memory into f27
fmul.s f16, f20, f27, dyn # perform operation
fmul.s f16, f20, f27, rdn # perform operation
fmul.s f16, f20, f27, rmm # perform operation
fmul.s f16, f20, f27, rne # perform operation
fmul.s f16, f20, f27, rtz # perform operation
fmul.s f16, f20, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f20, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f20, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f20, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f20, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f20, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xc0000000)
li x12, 0x2042e837 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f19, 0(x2) # load 0x7f800000 from memory into f19
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f22, 0(x2) # load 0xc0000000 from memory into f22
fmul.s f12, f19, f22, dyn # perform operation
fmul.s f12, f19, f22, rdn # perform operation
fmul.s f12, f19, f22, rmm # perform operation
fmul.s f12, f19, f22, rne # perform operation
fmul.s f12, f19, f22, rtz # perform operation
fmul.s f12, f19, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f19, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f19, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f19, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f19, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f19, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x800000)
li x18, 0x835f4829 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f13, 0(x2) # load 0x7f800000 from memory into f13
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f25, 0(x2) # load 0x00800000 from memory into f25
fmul.s f18, f13, f25, dyn # perform operation
fmul.s f18, f13, f25, rdn # perform operation
fmul.s f18, f13, f25, rmm # perform operation
fmul.s f18, f13, f25, rne # perform operation
fmul.s f18, f13, f25, rtz # perform operation
fmul.s f18, f13, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f13, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f13, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f13, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f13, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f13, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80800000)
li x10, 0xfafff32f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f15, 0(x2) # load 0x7f800000 from memory into f15
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f16, 0(x2) # load 0x80800000 from memory into f16
fmul.s f10, f15, f16, dyn # perform operation
fmul.s f10, f15, f16, rdn # perform operation
fmul.s f10, f15, f16, rmm # perform operation
fmul.s f10, f15, f16, rne # perform operation
fmul.s f10, f15, f16, rtz # perform operation
fmul.s f10, f15, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f15, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f15, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f15, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f15, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f15, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f7fffff)
li x16, 0x57f1334f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f5, 0(x2) # load 0x7f800000 from memory into f5
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f17, 0(x2) # load 0x7f7fffff from memory into f17
fmul.s f16, f5, f17, dyn # perform operation
fmul.s f16, f5, f17, rdn # perform operation
fmul.s f16, f5, f17, rmm # perform operation
fmul.s f16, f5, f17, rne # perform operation
fmul.s f16, f5, f17, rtz # perform operation
fmul.s f16, f5, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f5, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f5, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f5, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f5, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f5, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xff7fffff)
li x24, 0x552a2fa8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f27, 0(x2) # load 0xff7fffff from memory into f27
fmul.s f24, f31, f27, dyn # perform operation
fmul.s f24, f31, f27, rdn # perform operation
fmul.s f24, f31, f27, rmm # perform operation
fmul.s f24, f31, f27, rne # perform operation
fmul.s f24, f31, f27, rtz # perform operation
fmul.s f24, f31, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f31, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f31, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f31, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f31, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f31, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fffff)
li x30, 0x018c3a0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f19, 0(x2) # load 0x7f800000 from memory into f19
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f16, 0(x2) # load 0x007fffff from memory into f16
fmul.s f30, f19, f16, dyn # perform operation
fmul.s f30, f19, f16, rdn # perform operation
fmul.s f30, f19, f16, rmm # perform operation
fmul.s f30, f19, f16, rne # perform operation
fmul.s f30, f19, f16, rtz # perform operation
fmul.s f30, f19, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f19, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f19, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f19, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f19, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f19, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x807fffff)
li x16, 0x8449b369 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f19, 0(x2) # load 0x7f800000 from memory into f19
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f7, 0(x2) # load 0x807fffff from memory into f7
fmul.s f16, f19, f7, dyn # perform operation
fmul.s f16, f19, f7, rdn # perform operation
fmul.s f16, f19, f7, rmm # perform operation
fmul.s f16, f19, f7, rne # perform operation
fmul.s f16, f19, f7, rtz # perform operation
fmul.s f16, f19, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f19, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f19, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f19, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f19, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f19, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x400000)
li x20, 0x5eee0d27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f10, 0(x2) # load 0x7f800000 from memory into f10
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f6, 0(x2) # load 0x00400000 from memory into f6
fmul.s f20, f10, f6, dyn # perform operation
fmul.s f20, f10, f6, rdn # perform operation
fmul.s f20, f10, f6, rmm # perform operation
fmul.s f20, f10, f6, rne # perform operation
fmul.s f20, f10, f6, rtz # perform operation
fmul.s f20, f10, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f10, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f10, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f10, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f10, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f10, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80400000)
li x9, 0xef520712 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f18, 0(x2) # load 0x7f800000 from memory into f18
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f23, 0(x2) # load 0x80400000 from memory into f23
fmul.s f9, f18, f23, dyn # perform operation
fmul.s f9, f18, f23, rdn # perform operation
fmul.s f9, f18, f23, rmm # perform operation
fmul.s f9, f18, f23, rne # perform operation
fmul.s f9, f18, f23, rtz # perform operation
fmul.s f9, f18, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f18, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f18, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f18, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f18, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f18, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x1)
li x23, 0x9732de64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f25, 0(x2) # load 0x7f800000 from memory into f25
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f16, 0(x2) # load 0x00000001 from memory into f16
fmul.s f23, f25, f16, dyn # perform operation
fmul.s f23, f25, f16, rdn # perform operation
fmul.s f23, f25, f16, rmm # perform operation
fmul.s f23, f25, f16, rne # perform operation
fmul.s f23, f25, f16, rtz # perform operation
fmul.s f23, f25, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f25, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f25, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f25, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f25, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f25, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80000001)
li x6, 0xe0bc7590 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f22, 0(x2) # load 0x7f800000 from memory into f22
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f13, 0(x2) # load 0x80000001 from memory into f13
fmul.s f6, f22, f13, dyn # perform operation
fmul.s f6, f22, f13, rdn # perform operation
fmul.s f6, f22, f13, rmm # perform operation
fmul.s f6, f22, f13, rne # perform operation
fmul.s f6, f22, f13, rtz # perform operation
fmul.s f6, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f22, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f800000)
li x8, 0xca5ccd62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f24, 0(x2) # load 0x7f800000 from memory into f24
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f3, 0(x2) # load 0x7f800000 from memory into f3
fmul.s f8, f24, f3, dyn # perform operation
fmul.s f8, f24, f3, rdn # perform operation
fmul.s f8, f24, f3, rmm # perform operation
fmul.s f8, f24, f3, rne # perform operation
fmul.s f8, f24, f3, rtz # perform operation
fmul.s f8, f24, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f24, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f24, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f24, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f24, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f24, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xff800000)
li x22, 0xd31cfa1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f8, 0(x2) # load 0x7f800000 from memory into f8
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f4, 0(x2) # load 0xff800000 from memory into f4
fmul.s f22, f8, f4, dyn # perform operation
fmul.s f22, f8, f4, rdn # perform operation
fmul.s f22, f8, f4, rmm # perform operation
fmul.s f22, f8, f4, rne # perform operation
fmul.s f22, f8, f4, rtz # perform operation
fmul.s f22, f8, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f8, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f8, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f8, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f8, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f8, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fc00000)
li x27, 0x5e7407b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f28, 0(x2) # load 0x7f800000 from memory into f28
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f16, 0(x2) # load 0x7fc00000 from memory into f16
fmul.s f27, f28, f16, dyn # perform operation
fmul.s f27, f28, f16, rdn # perform operation
fmul.s f27, f28, f16, rmm # perform operation
fmul.s f27, f28, f16, rne # perform operation
fmul.s f27, f28, f16, rtz # perform operation
fmul.s f27, f28, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f28, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f28, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f28, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f28, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f28, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fffffff)
li x8, 0x5672ddb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f29, 0(x2) # load 0x7f800000 from memory into f29
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
fmul.s f8, f29, f5, dyn # perform operation
fmul.s f8, f29, f5, rdn # perform operation
fmul.s f8, f29, f5, rmm # perform operation
fmul.s f8, f29, f5, rne # perform operation
fmul.s f8, f29, f5, rtz # perform operation
fmul.s f8, f29, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f8, f29, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f8, f29, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f8, f29, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f8, f29, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f8, f29, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f800001)
li x17, 0x4ed38258 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f25, 0(x2) # load 0x7f800000 from memory into f25
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f2, 0(x2) # load 0x7f800001 from memory into f2
fmul.s f17, f25, f2, dyn # perform operation
fmul.s f17, f25, f2, rdn # perform operation
fmul.s f17, f25, f2, rmm # perform operation
fmul.s f17, f25, f2, rne # perform operation
fmul.s f17, f25, f2, rtz # perform operation
fmul.s f17, f25, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f25, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f25, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f25, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f25, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f25, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fbfffff)
li x15, 0x8aaf4b70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f22, 0(x2) # load 0x7f800000 from memory into f22
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f18, 0(x2) # load 0x7fbfffff from memory into f18
fmul.s f15, f22, f18, dyn # perform operation
fmul.s f15, f22, f18, rdn # perform operation
fmul.s f15, f22, f18, rmm # perform operation
fmul.s f15, f22, f18, rne # perform operation
fmul.s f15, f22, f18, rtz # perform operation
fmul.s f15, f22, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f22, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f22, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f22, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f22, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f22, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7ef8654f)
li x27, 0x19eb6347 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f20, 0(x2) # load 0x7f800000 from memory into f20
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f28, 0(x2) # load 0x7ef8654f from memory into f28
fmul.s f27, f20, f28, dyn # perform operation
fmul.s f27, f20, f28, rdn # perform operation
fmul.s f27, f20, f28, rmm # perform operation
fmul.s f27, f20, f28, rne # perform operation
fmul.s f27, f20, f28, rtz # perform operation
fmul.s f27, f20, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f20, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f20, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f20, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f20, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f20, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x813d9ab0)
li x27, 0xa23494c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f10, 0(x2) # load 0x7f800000 from memory into f10
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f2, 0(x2) # load 0x813d9ab0 from memory into f2
fmul.s f27, f10, f2, dyn # perform operation
fmul.s f27, f10, f2, rdn # perform operation
fmul.s f27, f10, f2, rmm # perform operation
fmul.s f27, f10, f2, rne # perform operation
fmul.s f27, f10, f2, rtz # perform operation
fmul.s f27, f10, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f10, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f10, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f10, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f10, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f10, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x0)
li x5, 0x10488e36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f12, 0(x2) # load 0xff800000 from memory into f12
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
fmul.s f5, f12, f13, dyn # perform operation
fmul.s f5, f12, f13, rdn # perform operation
fmul.s f5, f12, f13, rmm # perform operation
fmul.s f5, f12, f13, rne # perform operation
fmul.s f5, f12, f13, rtz # perform operation
fmul.s f5, f12, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f12, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f12, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f12, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f12, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f12, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80000000)
li x23, 0xa648c487 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f29, 0(x2) # load 0xff800000 from memory into f29
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f28, 0(x2) # load 0x80000000 from memory into f28
fmul.s f23, f29, f28, dyn # perform operation
fmul.s f23, f29, f28, rdn # perform operation
fmul.s f23, f29, f28, rmm # perform operation
fmul.s f23, f29, f28, rne # perform operation
fmul.s f23, f29, f28, rtz # perform operation
fmul.s f23, f29, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f29, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f29, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f29, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f29, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f29, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x3f800000)
li x24, 0x1e09eb7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f4, 0(x2) # load 0xff800000 from memory into f4
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f19, 0(x2) # load 0x3f800000 from memory into f19
fmul.s f24, f4, f19, dyn # perform operation
fmul.s f24, f4, f19, rdn # perform operation
fmul.s f24, f4, f19, rmm # perform operation
fmul.s f24, f4, f19, rne # perform operation
fmul.s f24, f4, f19, rtz # perform operation
fmul.s f24, f4, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f4, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f4, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f4, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f4, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f4, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xbf800000)
li x20, 0x0f229381 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f18, 0(x2) # load 0xff800000 from memory into f18
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f16, 0(x2) # load 0xbf800000 from memory into f16
fmul.s f20, f18, f16, dyn # perform operation
fmul.s f20, f18, f16, rdn # perform operation
fmul.s f20, f18, f16, rmm # perform operation
fmul.s f20, f18, f16, rne # perform operation
fmul.s f20, f18, f16, rtz # perform operation
fmul.s f20, f18, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f18, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f18, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f18, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f18, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f18, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x3fc00000)
li x21, 0x3c530eeb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f16, 0(x2) # load 0xff800000 from memory into f16
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f19, 0(x2) # load 0x3fc00000 from memory into f19
fmul.s f21, f16, f19, dyn # perform operation
fmul.s f21, f16, f19, rdn # perform operation
fmul.s f21, f16, f19, rmm # perform operation
fmul.s f21, f16, f19, rne # perform operation
fmul.s f21, f16, f19, rtz # perform operation
fmul.s f21, f16, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f21, f16, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f21, f16, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f21, f16, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f21, f16, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f21, f16, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xbfc00000)
li x22, 0xb3982d7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f15, 0(x2) # load 0xff800000 from memory into f15
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
fmul.s f22, f15, f27, dyn # perform operation
fmul.s f22, f15, f27, rdn # perform operation
fmul.s f22, f15, f27, rmm # perform operation
fmul.s f22, f15, f27, rne # perform operation
fmul.s f22, f15, f27, rtz # perform operation
fmul.s f22, f15, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f15, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f15, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f15, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f15, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f15, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x40000000)
li x17, 0x11bd5a49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f16, 0(x2) # load 0xff800000 from memory into f16
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f31, 0(x2) # load 0x40000000 from memory into f31
fmul.s f17, f16, f31, dyn # perform operation
fmul.s f17, f16, f31, rdn # perform operation
fmul.s f17, f16, f31, rmm # perform operation
fmul.s f17, f16, f31, rne # perform operation
fmul.s f17, f16, f31, rtz # perform operation
fmul.s f17, f16, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f16, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f16, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f16, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f16, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f16, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xc0000000)
li x9, 0xa22ee8e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f25, 0(x2) # load 0xff800000 from memory into f25
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f2, 0(x2) # load 0xc0000000 from memory into f2
fmul.s f9, f25, f2, dyn # perform operation
fmul.s f9, f25, f2, rdn # perform operation
fmul.s f9, f25, f2, rmm # perform operation
fmul.s f9, f25, f2, rne # perform operation
fmul.s f9, f25, f2, rtz # perform operation
fmul.s f9, f25, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f25, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f25, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f25, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f25, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f25, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x800000)
li x4, 0xeb5816a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f5, 0(x2) # load 0xff800000 from memory into f5
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
fmul.s f4, f5, f14, dyn # perform operation
fmul.s f4, f5, f14, rdn # perform operation
fmul.s f4, f5, f14, rmm # perform operation
fmul.s f4, f5, f14, rne # perform operation
fmul.s f4, f5, f14, rtz # perform operation
fmul.s f4, f5, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f5, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f5, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f5, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f5, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f5, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80800000)
li x20, 0xb53f9c33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f26, 0(x2) # load 0xff800000 from memory into f26
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f12, 0(x2) # load 0x80800000 from memory into f12
fmul.s f20, f26, f12, dyn # perform operation
fmul.s f20, f26, f12, rdn # perform operation
fmul.s f20, f26, f12, rmm # perform operation
fmul.s f20, f26, f12, rne # perform operation
fmul.s f20, f26, f12, rtz # perform operation
fmul.s f20, f26, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f26, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f26, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f26, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f26, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f26, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f7fffff)
li x22, 0xe5bcd4bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f20, 0(x2) # load 0xff800000 from memory into f20
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f14, 0(x2) # load 0x7f7fffff from memory into f14
fmul.s f22, f20, f14, dyn # perform operation
fmul.s f22, f20, f14, rdn # perform operation
fmul.s f22, f20, f14, rmm # perform operation
fmul.s f22, f20, f14, rne # perform operation
fmul.s f22, f20, f14, rtz # perform operation
fmul.s f22, f20, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f20, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f20, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f20, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f20, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f20, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xff7fffff)
li x24, 0x3e7cfb7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f19, 0(x2) # load 0xff800000 from memory into f19
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f9, 0(x2) # load 0xff7fffff from memory into f9
fmul.s f24, f19, f9, dyn # perform operation
fmul.s f24, f19, f9, rdn # perform operation
fmul.s f24, f19, f9, rmm # perform operation
fmul.s f24, f19, f9, rne # perform operation
fmul.s f24, f19, f9, rtz # perform operation
fmul.s f24, f19, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f19, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f19, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f19, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f19, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f19, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fffff)
li x30, 0x35c77729 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f6, 0(x2) # load 0xff800000 from memory into f6
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f22, 0(x2) # load 0x007fffff from memory into f22
fmul.s f30, f6, f22, dyn # perform operation
fmul.s f30, f6, f22, rdn # perform operation
fmul.s f30, f6, f22, rmm # perform operation
fmul.s f30, f6, f22, rne # perform operation
fmul.s f30, f6, f22, rtz # perform operation
fmul.s f30, f6, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f6, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f6, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f6, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f6, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f6, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x807fffff)
li x26, 0x4a502d9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f3, 0(x2) # load 0xff800000 from memory into f3
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f8, 0(x2) # load 0x807fffff from memory into f8
fmul.s f26, f3, f8, dyn # perform operation
fmul.s f26, f3, f8, rdn # perform operation
fmul.s f26, f3, f8, rmm # perform operation
fmul.s f26, f3, f8, rne # perform operation
fmul.s f26, f3, f8, rtz # perform operation
fmul.s f26, f3, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f3, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f3, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f3, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f3, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f3, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x400000)
li x15, 0xae43143b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f18, 0(x2) # load 0xff800000 from memory into f18
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f17, 0(x2) # load 0x00400000 from memory into f17
fmul.s f15, f18, f17, dyn # perform operation
fmul.s f15, f18, f17, rdn # perform operation
fmul.s f15, f18, f17, rmm # perform operation
fmul.s f15, f18, f17, rne # perform operation
fmul.s f15, f18, f17, rtz # perform operation
fmul.s f15, f18, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f18, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f18, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f18, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f18, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f18, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80400000)
li x5, 0x19cf6919 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f11, 0(x2) # load 0x80400000 from memory into f11
fmul.s f5, f9, f11, dyn # perform operation
fmul.s f5, f9, f11, rdn # perform operation
fmul.s f5, f9, f11, rmm # perform operation
fmul.s f5, f9, f11, rne # perform operation
fmul.s f5, f9, f11, rtz # perform operation
fmul.s f5, f9, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f9, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f9, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f9, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f9, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f9, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x1)
li x25, 0x50ec10eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f31, 0(x2) # load 0xff800000 from memory into f31
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f11, 0(x2) # load 0x00000001 from memory into f11
fmul.s f25, f31, f11, dyn # perform operation
fmul.s f25, f31, f11, rdn # perform operation
fmul.s f25, f31, f11, rmm # perform operation
fmul.s f25, f31, f11, rne # perform operation
fmul.s f25, f31, f11, rtz # perform operation
fmul.s f25, f31, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f31, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f31, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f31, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f31, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f31, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80000001)
li x1, 0xad9f90bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f28, 0(x2) # load 0xff800000 from memory into f28
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f25, 0(x2) # load 0x80000001 from memory into f25
fmul.s f1, f28, f25, dyn # perform operation
fmul.s f1, f28, f25, rdn # perform operation
fmul.s f1, f28, f25, rmm # perform operation
fmul.s f1, f28, f25, rne # perform operation
fmul.s f1, f28, f25, rtz # perform operation
fmul.s f1, f28, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f28, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f28, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f28, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f28, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f28, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f800000)
li x28, 0x4271ccbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f13, 0(x2) # load 0xff800000 from memory into f13
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
fmul.s f28, f13, f31, dyn # perform operation
fmul.s f28, f13, f31, rdn # perform operation
fmul.s f28, f13, f31, rmm # perform operation
fmul.s f28, f13, f31, rne # perform operation
fmul.s f28, f13, f31, rtz # perform operation
fmul.s f28, f13, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f13, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f13, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f13, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f13, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f13, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xff800000)
li x22, 0x24c0ab5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f16, 0(x2) # load 0xff800000 from memory into f16
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f15, 0(x2) # load 0xff800000 from memory into f15
fmul.s f22, f16, f15, dyn # perform operation
fmul.s f22, f16, f15, rdn # perform operation
fmul.s f22, f16, f15, rmm # perform operation
fmul.s f22, f16, f15, rne # perform operation
fmul.s f22, f16, f15, rtz # perform operation
fmul.s f22, f16, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f16, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f16, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f16, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f16, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f16, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fc00000)
li x23, 0xc0525192 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f28, 0(x2) # load 0xff800000 from memory into f28
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f25, 0(x2) # load 0x7fc00000 from memory into f25
fmul.s f23, f28, f25, dyn # perform operation
fmul.s f23, f28, f25, rdn # perform operation
fmul.s f23, f28, f25, rmm # perform operation
fmul.s f23, f28, f25, rne # perform operation
fmul.s f23, f28, f25, rtz # perform operation
fmul.s f23, f28, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f28, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f28, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f28, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f28, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f28, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fffffff)
li x26, 0x4a4c59e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f3, 0(x2) # load 0xff800000 from memory into f3
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f27, 0(x2) # load 0x7fffffff from memory into f27
fmul.s f26, f3, f27, dyn # perform operation
fmul.s f26, f3, f27, rdn # perform operation
fmul.s f26, f3, f27, rmm # perform operation
fmul.s f26, f3, f27, rne # perform operation
fmul.s f26, f3, f27, rtz # perform operation
fmul.s f26, f3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f3, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f3, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f3, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f3, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f3, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f800001)
li x31, 0x1400e2bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f18, 0(x2) # load 0xff800000 from memory into f18
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f28, 0(x2) # load 0x7f800001 from memory into f28
fmul.s f31, f18, f28, dyn # perform operation
fmul.s f31, f18, f28, rdn # perform operation
fmul.s f31, f18, f28, rmm # perform operation
fmul.s f31, f18, f28, rne # perform operation
fmul.s f31, f18, f28, rtz # perform operation
fmul.s f31, f18, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f18, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f18, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f18, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f18, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f18, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fbfffff)
li x14, 0xf903ec51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f7, 0(x2) # load 0xff800000 from memory into f7
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f23, 0(x2) # load 0x7fbfffff from memory into f23
fmul.s f14, f7, f23, dyn # perform operation
fmul.s f14, f7, f23, rdn # perform operation
fmul.s f14, f7, f23, rmm # perform operation
fmul.s f14, f7, f23, rne # perform operation
fmul.s f14, f7, f23, rtz # perform operation
fmul.s f14, f7, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f7, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f7, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f7, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f7, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f7, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7ef8654f)
li x17, 0x8f1efc85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f25, 0(x2) # load 0x7ef8654f from memory into f25
fmul.s f17, f30, f25, dyn # perform operation
fmul.s f17, f30, f25, rdn # perform operation
fmul.s f17, f30, f25, rmm # perform operation
fmul.s f17, f30, f25, rne # perform operation
fmul.s f17, f30, f25, rtz # perform operation
fmul.s f17, f30, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f30, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f30, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f30, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f30, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f30, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x813d9ab0)
li x18, 0x1973f32f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f8, 0(x2) # load 0xff800000 from memory into f8
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
fmul.s f18, f8, f22, dyn # perform operation
fmul.s f18, f8, f22, rdn # perform operation
fmul.s f18, f8, f22, rmm # perform operation
fmul.s f18, f8, f22, rne # perform operation
fmul.s f18, f8, f22, rtz # perform operation
fmul.s f18, f8, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f8, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f8, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f8, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f8, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f8, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x0)
li x9, 0xcc49e57c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f7, 0(x2) # load 0x00000000 from memory into f7
fmul.s f9, f10, f7, dyn # perform operation
fmul.s f9, f10, f7, rdn # perform operation
fmul.s f9, f10, f7, rmm # perform operation
fmul.s f9, f10, f7, rne # perform operation
fmul.s f9, f10, f7, rtz # perform operation
fmul.s f9, f10, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f10, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f10, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f10, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f10, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f10, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80000000)
li x2, 0xe10d7920 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f27, 0(x2) # load 0x7fc00000 from memory into f27
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f15, 0(x2) # load 0x80000000 from memory into f15
fmul.s f2, f27, f15, dyn # perform operation
fmul.s f2, f27, f15, rdn # perform operation
fmul.s f2, f27, f15, rmm # perform operation
fmul.s f2, f27, f15, rne # perform operation
fmul.s f2, f27, f15, rtz # perform operation
fmul.s f2, f27, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f27, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f27, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f27, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f27, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f27, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x3f800000)
li x14, 0x7a1b7ddf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f17, 0(x2) # load 0x7fc00000 from memory into f17
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f28, 0(x2) # load 0x3f800000 from memory into f28
fmul.s f14, f17, f28, dyn # perform operation
fmul.s f14, f17, f28, rdn # perform operation
fmul.s f14, f17, f28, rmm # perform operation
fmul.s f14, f17, f28, rne # perform operation
fmul.s f14, f17, f28, rtz # perform operation
fmul.s f14, f17, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f17, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f17, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f17, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f17, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f17, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xbf800000)
li x3, 0x06e53783 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f23, 0(x2) # load 0x7fc00000 from memory into f23
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f4, 0(x2) # load 0xbf800000 from memory into f4
fmul.s f3, f23, f4, dyn # perform operation
fmul.s f3, f23, f4, rdn # perform operation
fmul.s f3, f23, f4, rmm # perform operation
fmul.s f3, f23, f4, rne # perform operation
fmul.s f3, f23, f4, rtz # perform operation
fmul.s f3, f23, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f23, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f23, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f23, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f23, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f23, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x3fc00000)
li x10, 0x646abe2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
fmul.s f10, f18, f6, dyn # perform operation
fmul.s f10, f18, f6, rdn # perform operation
fmul.s f10, f18, f6, rmm # perform operation
fmul.s f10, f18, f6, rne # perform operation
fmul.s f10, f18, f6, rtz # perform operation
fmul.s f10, f18, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f18, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f18, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f18, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f18, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f18, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xbfc00000)
li x15, 0x94a52431 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f26, 0(x2) # load 0xbfc00000 from memory into f26
fmul.s f15, f10, f26, dyn # perform operation
fmul.s f15, f10, f26, rdn # perform operation
fmul.s f15, f10, f26, rmm # perform operation
fmul.s f15, f10, f26, rne # perform operation
fmul.s f15, f10, f26, rtz # perform operation
fmul.s f15, f10, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f10, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f10, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f10, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f10, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f10, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x40000000)
li x22, 0xb6b5f85f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f5, 0(x2) # load 0x7fc00000 from memory into f5
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f28, 0(x2) # load 0x40000000 from memory into f28
fmul.s f22, f5, f28, dyn # perform operation
fmul.s f22, f5, f28, rdn # perform operation
fmul.s f22, f5, f28, rmm # perform operation
fmul.s f22, f5, f28, rne # perform operation
fmul.s f22, f5, f28, rtz # perform operation
fmul.s f22, f5, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f5, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f5, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f5, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f5, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f5, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xc0000000)
li x9, 0x49884a69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f14, 0(x2) # load 0x7fc00000 from memory into f14
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f3, 0(x2) # load 0xc0000000 from memory into f3
fmul.s f9, f14, f3, dyn # perform operation
fmul.s f9, f14, f3, rdn # perform operation
fmul.s f9, f14, f3, rmm # perform operation
fmul.s f9, f14, f3, rne # perform operation
fmul.s f9, f14, f3, rtz # perform operation
fmul.s f9, f14, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f14, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f14, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f14, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f14, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f14, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x800000)
li x20, 0xcc51c394 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f31, 0(x2) # load 0x7fc00000 from memory into f31
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f8, 0(x2) # load 0x00800000 from memory into f8
fmul.s f20, f31, f8, dyn # perform operation
fmul.s f20, f31, f8, rdn # perform operation
fmul.s f20, f31, f8, rmm # perform operation
fmul.s f20, f31, f8, rne # perform operation
fmul.s f20, f31, f8, rtz # perform operation
fmul.s f20, f31, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f31, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f31, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f31, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f31, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f31, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80800000)
li x1, 0xcfdfae3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f13, 0(x2) # load 0x7fc00000 from memory into f13
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f26, 0(x2) # load 0x80800000 from memory into f26
fmul.s f1, f13, f26, dyn # perform operation
fmul.s f1, f13, f26, rdn # perform operation
fmul.s f1, f13, f26, rmm # perform operation
fmul.s f1, f13, f26, rne # perform operation
fmul.s f1, f13, f26, rtz # perform operation
fmul.s f1, f13, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f13, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f13, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f13, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f13, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f13, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f7fffff)
li x18, 0x91b3736e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f15, 0(x2) # load 0x7fc00000 from memory into f15
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f9, 0(x2) # load 0x7f7fffff from memory into f9
fmul.s f18, f15, f9, dyn # perform operation
fmul.s f18, f15, f9, rdn # perform operation
fmul.s f18, f15, f9, rmm # perform operation
fmul.s f18, f15, f9, rne # perform operation
fmul.s f18, f15, f9, rtz # perform operation
fmul.s f18, f15, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f15, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f15, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f15, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f15, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f15, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xff7fffff)
li x10, 0x70630ea8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f13, 0(x2) # load 0xff7fffff from memory into f13
fmul.s f10, f7, f13, dyn # perform operation
fmul.s f10, f7, f13, rdn # perform operation
fmul.s f10, f7, f13, rmm # perform operation
fmul.s f10, f7, f13, rne # perform operation
fmul.s f10, f7, f13, rtz # perform operation
fmul.s f10, f7, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f7, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f7, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f7, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f7, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f7, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fffff)
li x14, 0x4c515811 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f6, 0(x2) # load 0x7fc00000 from memory into f6
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f23, 0(x2) # load 0x007fffff from memory into f23
fmul.s f14, f6, f23, dyn # perform operation
fmul.s f14, f6, f23, rdn # perform operation
fmul.s f14, f6, f23, rmm # perform operation
fmul.s f14, f6, f23, rne # perform operation
fmul.s f14, f6, f23, rtz # perform operation
fmul.s f14, f6, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f6, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f6, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f6, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f6, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f6, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x807fffff)
li x23, 0xd7f9329c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f5, 0(x2) # load 0x7fc00000 from memory into f5
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f19, 0(x2) # load 0x807fffff from memory into f19
fmul.s f23, f5, f19, dyn # perform operation
fmul.s f23, f5, f19, rdn # perform operation
fmul.s f23, f5, f19, rmm # perform operation
fmul.s f23, f5, f19, rne # perform operation
fmul.s f23, f5, f19, rtz # perform operation
fmul.s f23, f5, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f5, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f5, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f5, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f5, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f5, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x400000)
li x20, 0xb17de4ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f28, 0(x2) # load 0x7fc00000 from memory into f28
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f19, 0(x2) # load 0x00400000 from memory into f19
fmul.s f20, f28, f19, dyn # perform operation
fmul.s f20, f28, f19, rdn # perform operation
fmul.s f20, f28, f19, rmm # perform operation
fmul.s f20, f28, f19, rne # perform operation
fmul.s f20, f28, f19, rtz # perform operation
fmul.s f20, f28, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f28, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f28, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f28, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f28, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f28, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80400000)
li x25, 0x0f2a2afe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f4, 0(x2) # load 0x7fc00000 from memory into f4
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f27, 0(x2) # load 0x80400000 from memory into f27
fmul.s f25, f4, f27, dyn # perform operation
fmul.s f25, f4, f27, rdn # perform operation
fmul.s f25, f4, f27, rmm # perform operation
fmul.s f25, f4, f27, rne # perform operation
fmul.s f25, f4, f27, rtz # perform operation
fmul.s f25, f4, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f4, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f4, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f4, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f4, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f4, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x1)
li x22, 0x017dafec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f8, 0(x2) # load 0x7fc00000 from memory into f8
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f27, 0(x2) # load 0x00000001 from memory into f27
fmul.s f22, f8, f27, dyn # perform operation
fmul.s f22, f8, f27, rdn # perform operation
fmul.s f22, f8, f27, rmm # perform operation
fmul.s f22, f8, f27, rne # perform operation
fmul.s f22, f8, f27, rtz # perform operation
fmul.s f22, f8, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f8, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f8, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f8, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f8, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f8, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80000001)
li x1, 0x03e75516 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f3, 0(x2) # load 0x7fc00000 from memory into f3
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f5, 0(x2) # load 0x80000001 from memory into f5
fmul.s f1, f3, f5, dyn # perform operation
fmul.s f1, f3, f5, rdn # perform operation
fmul.s f1, f3, f5, rmm # perform operation
fmul.s f1, f3, f5, rne # perform operation
fmul.s f1, f3, f5, rtz # perform operation
fmul.s f1, f3, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f3, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f3, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f3, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f3, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f3, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f800000)
li x17, 0xef21a83c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f26, 0(x2) # load 0x7fc00000 from memory into f26
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f29, 0(x2) # load 0x7f800000 from memory into f29
fmul.s f17, f26, f29, dyn # perform operation
fmul.s f17, f26, f29, rdn # perform operation
fmul.s f17, f26, f29, rmm # perform operation
fmul.s f17, f26, f29, rne # perform operation
fmul.s f17, f26, f29, rtz # perform operation
fmul.s f17, f26, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f26, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f26, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f26, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f26, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f26, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xff800000)
li x20, 0xc5330f22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f17, 0(x2) # load 0x7fc00000 from memory into f17
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f11, 0(x2) # load 0xff800000 from memory into f11
fmul.s f20, f17, f11, dyn # perform operation
fmul.s f20, f17, f11, rdn # perform operation
fmul.s f20, f17, f11, rmm # perform operation
fmul.s f20, f17, f11, rne # perform operation
fmul.s f20, f17, f11, rtz # perform operation
fmul.s f20, f17, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f17, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f17, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f17, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f17, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f17, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fc00000)
li x24, 0xa3c06ba2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f25, 0(x2) # load 0x7fc00000 from memory into f25
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f1, 0(x2) # load 0x7fc00000 from memory into f1
fmul.s f24, f25, f1, dyn # perform operation
fmul.s f24, f25, f1, rdn # perform operation
fmul.s f24, f25, f1, rmm # perform operation
fmul.s f24, f25, f1, rne # perform operation
fmul.s f24, f25, f1, rtz # perform operation
fmul.s f24, f25, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f25, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f25, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f25, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f25, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f25, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fffffff)
li x31, 0x9e906501 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f11, 0(x2) # load 0x7fc00000 from memory into f11
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f28, 0(x2) # load 0x7fffffff from memory into f28
fmul.s f31, f11, f28, dyn # perform operation
fmul.s f31, f11, f28, rdn # perform operation
fmul.s f31, f11, f28, rmm # perform operation
fmul.s f31, f11, f28, rne # perform operation
fmul.s f31, f11, f28, rtz # perform operation
fmul.s f31, f11, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f11, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f11, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f11, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f11, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f11, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f800001)
li x16, 0x554b5d07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f30, 0(x2) # load 0x7fc00000 from memory into f30
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f9, 0(x2) # load 0x7f800001 from memory into f9
fmul.s f16, f30, f9, dyn # perform operation
fmul.s f16, f30, f9, rdn # perform operation
fmul.s f16, f30, f9, rmm # perform operation
fmul.s f16, f30, f9, rne # perform operation
fmul.s f16, f30, f9, rtz # perform operation
fmul.s f16, f30, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f30, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f30, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f30, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f30, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f30, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fbfffff)
li x25, 0xc36786f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f24, 0(x2) # load 0x7fc00000 from memory into f24
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
fmul.s f25, f24, f31, dyn # perform operation
fmul.s f25, f24, f31, rdn # perform operation
fmul.s f25, f24, f31, rmm # perform operation
fmul.s f25, f24, f31, rne # perform operation
fmul.s f25, f24, f31, rtz # perform operation
fmul.s f25, f24, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f24, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f24, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f24, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f24, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f24, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7ef8654f)
li x31, 0xc602346f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f30, 0(x2) # load 0x7fc00000 from memory into f30
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f11, 0(x2) # load 0x7ef8654f from memory into f11
fmul.s f31, f30, f11, dyn # perform operation
fmul.s f31, f30, f11, rdn # perform operation
fmul.s f31, f30, f11, rmm # perform operation
fmul.s f31, f30, f11, rne # perform operation
fmul.s f31, f30, f11, rtz # perform operation
fmul.s f31, f30, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f30, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f30, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f30, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f30, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f30, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x813d9ab0)
li x17, 0xa973d078 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f24, 0(x2) # load 0x7fc00000 from memory into f24
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f20, 0(x2) # load 0x813d9ab0 from memory into f20
fmul.s f17, f24, f20, dyn # perform operation
fmul.s f17, f24, f20, rdn # perform operation
fmul.s f17, f24, f20, rmm # perform operation
fmul.s f17, f24, f20, rne # perform operation
fmul.s f17, f24, f20, rtz # perform operation
fmul.s f17, f24, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f24, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f24, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f24, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f24, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f24, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x0)
li x4, 0x61b0a88f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f20, 0(x2) # load 0x7fffffff from memory into f20
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f7, 0(x2) # load 0x00000000 from memory into f7
fmul.s f4, f20, f7, dyn # perform operation
fmul.s f4, f20, f7, rdn # perform operation
fmul.s f4, f20, f7, rmm # perform operation
fmul.s f4, f20, f7, rne # perform operation
fmul.s f4, f20, f7, rtz # perform operation
fmul.s f4, f20, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f20, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f20, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f20, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f20, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f20, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80000000)
li x27, 0xb07e3da2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f24, 0(x2) # load 0x7fffffff from memory into f24
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f31, 0(x2) # load 0x80000000 from memory into f31
fmul.s f27, f24, f31, dyn # perform operation
fmul.s f27, f24, f31, rdn # perform operation
fmul.s f27, f24, f31, rmm # perform operation
fmul.s f27, f24, f31, rne # perform operation
fmul.s f27, f24, f31, rtz # perform operation
fmul.s f27, f24, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f24, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f24, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f24, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f24, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f24, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x3f800000)
li x12, 0x8d84dc5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f25, 0(x2) # load 0x3f800000 from memory into f25
fmul.s f12, f2, f25, dyn # perform operation
fmul.s f12, f2, f25, rdn # perform operation
fmul.s f12, f2, f25, rmm # perform operation
fmul.s f12, f2, f25, rne # perform operation
fmul.s f12, f2, f25, rtz # perform operation
fmul.s f12, f2, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f2, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f2, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f2, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f2, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f2, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xbf800000)
li x17, 0xe60b323e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f3, 0(x2) # load 0x7fffffff from memory into f3
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f14, 0(x2) # load 0xbf800000 from memory into f14
fmul.s f17, f3, f14, dyn # perform operation
fmul.s f17, f3, f14, rdn # perform operation
fmul.s f17, f3, f14, rmm # perform operation
fmul.s f17, f3, f14, rne # perform operation
fmul.s f17, f3, f14, rtz # perform operation
fmul.s f17, f3, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f3, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f3, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f3, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f3, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f3, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x3fc00000)
li x13, 0x297b6bfe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f15, 0(x2) # load 0x7fffffff from memory into f15
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
fmul.s f13, f15, f12, dyn # perform operation
fmul.s f13, f15, f12, rdn # perform operation
fmul.s f13, f15, f12, rmm # perform operation
fmul.s f13, f15, f12, rne # perform operation
fmul.s f13, f15, f12, rtz # perform operation
fmul.s f13, f15, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f15, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f15, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f15, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f15, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f15, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xbfc00000)
li x5, 0x417fd77b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f24, 0(x2) # load 0xbfc00000 from memory into f24
fmul.s f5, f12, f24, dyn # perform operation
fmul.s f5, f12, f24, rdn # perform operation
fmul.s f5, f12, f24, rmm # perform operation
fmul.s f5, f12, f24, rne # perform operation
fmul.s f5, f12, f24, rtz # perform operation
fmul.s f5, f12, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f12, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f12, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f12, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f12, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f12, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x40000000)
li x28, 0x8fc97ca9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f17, 0(x2) # load 0x7fffffff from memory into f17
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f15, 0(x2) # load 0x40000000 from memory into f15
fmul.s f28, f17, f15, dyn # perform operation
fmul.s f28, f17, f15, rdn # perform operation
fmul.s f28, f17, f15, rmm # perform operation
fmul.s f28, f17, f15, rne # perform operation
fmul.s f28, f17, f15, rtz # perform operation
fmul.s f28, f17, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f17, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f17, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f17, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f17, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f17, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xc0000000)
li x15, 0x2a9000dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f26, 0(x2) # load 0x7fffffff from memory into f26
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f3, 0(x2) # load 0xc0000000 from memory into f3
fmul.s f15, f26, f3, dyn # perform operation
fmul.s f15, f26, f3, rdn # perform operation
fmul.s f15, f26, f3, rmm # perform operation
fmul.s f15, f26, f3, rne # perform operation
fmul.s f15, f26, f3, rtz # perform operation
fmul.s f15, f26, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f26, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f26, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f26, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f26, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f26, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x800000)
li x15, 0x7eb75e2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f4, 0(x2) # load 0x7fffffff from memory into f4
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f13, 0(x2) # load 0x00800000 from memory into f13
fmul.s f15, f4, f13, dyn # perform operation
fmul.s f15, f4, f13, rdn # perform operation
fmul.s f15, f4, f13, rmm # perform operation
fmul.s f15, f4, f13, rne # perform operation
fmul.s f15, f4, f13, rtz # perform operation
fmul.s f15, f4, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f4, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f4, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f4, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f4, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f4, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80800000)
li x28, 0x5a77a67b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f11, 0(x2) # load 0x7fffffff from memory into f11
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f21, 0(x2) # load 0x80800000 from memory into f21
fmul.s f28, f11, f21, dyn # perform operation
fmul.s f28, f11, f21, rdn # perform operation
fmul.s f28, f11, f21, rmm # perform operation
fmul.s f28, f11, f21, rne # perform operation
fmul.s f28, f11, f21, rtz # perform operation
fmul.s f28, f11, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f11, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f11, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f11, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f11, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f11, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f7fffff)
li x1, 0x178dfc05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f31, 0(x2) # load 0x7f7fffff from memory into f31
fmul.s f1, f2, f31, dyn # perform operation
fmul.s f1, f2, f31, rdn # perform operation
fmul.s f1, f2, f31, rmm # perform operation
fmul.s f1, f2, f31, rne # perform operation
fmul.s f1, f2, f31, rtz # perform operation
fmul.s f1, f2, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f2, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f2, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f2, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f2, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f2, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xff7fffff)
li x31, 0x3bcc060e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f6, 0(x2) # load 0x7fffffff from memory into f6
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f19, 0(x2) # load 0xff7fffff from memory into f19
fmul.s f31, f6, f19, dyn # perform operation
fmul.s f31, f6, f19, rdn # perform operation
fmul.s f31, f6, f19, rmm # perform operation
fmul.s f31, f6, f19, rne # perform operation
fmul.s f31, f6, f19, rtz # perform operation
fmul.s f31, f6, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f6, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f6, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f6, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f6, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f6, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fffff)
li x12, 0xf42bcab8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f17, 0(x2) # load 0x7fffffff from memory into f17
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f7, 0(x2) # load 0x007fffff from memory into f7
fmul.s f12, f17, f7, dyn # perform operation
fmul.s f12, f17, f7, rdn # perform operation
fmul.s f12, f17, f7, rmm # perform operation
fmul.s f12, f17, f7, rne # perform operation
fmul.s f12, f17, f7, rtz # perform operation
fmul.s f12, f17, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f17, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f17, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f17, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f17, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f17, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x807fffff)
li x30, 0x166153fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f27, 0(x2) # load 0x7fffffff from memory into f27
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f18, 0(x2) # load 0x807fffff from memory into f18
fmul.s f30, f27, f18, dyn # perform operation
fmul.s f30, f27, f18, rdn # perform operation
fmul.s f30, f27, f18, rmm # perform operation
fmul.s f30, f27, f18, rne # perform operation
fmul.s f30, f27, f18, rtz # perform operation
fmul.s f30, f27, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f27, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f27, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f27, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f27, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f27, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x400000)
li x2, 0xea7c03db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
fmul.s f2, f5, f15, dyn # perform operation
fmul.s f2, f5, f15, rdn # perform operation
fmul.s f2, f5, f15, rmm # perform operation
fmul.s f2, f5, f15, rne # perform operation
fmul.s f2, f5, f15, rtz # perform operation
fmul.s f2, f5, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f5, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f5, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f5, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f5, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f5, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80400000)
li x25, 0x95c09ca1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f13, 0(x2) # load 0x7fffffff from memory into f13
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f27, 0(x2) # load 0x80400000 from memory into f27
fmul.s f25, f13, f27, dyn # perform operation
fmul.s f25, f13, f27, rdn # perform operation
fmul.s f25, f13, f27, rmm # perform operation
fmul.s f25, f13, f27, rne # perform operation
fmul.s f25, f13, f27, rtz # perform operation
fmul.s f25, f13, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f13, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f13, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f13, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f13, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f13, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x1)
li x2, 0xd062147d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f20, 0(x2) # load 0x00000001 from memory into f20
fmul.s f2, f19, f20, dyn # perform operation
fmul.s f2, f19, f20, rdn # perform operation
fmul.s f2, f19, f20, rmm # perform operation
fmul.s f2, f19, f20, rne # perform operation
fmul.s f2, f19, f20, rtz # perform operation
fmul.s f2, f19, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f19, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f19, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f19, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f19, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f19, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80000001)
li x1, 0x9c4f48c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f29, 0(x2) # load 0x7fffffff from memory into f29
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f19, 0(x2) # load 0x80000001 from memory into f19
fmul.s f1, f29, f19, dyn # perform operation
fmul.s f1, f29, f19, rdn # perform operation
fmul.s f1, f29, f19, rmm # perform operation
fmul.s f1, f29, f19, rne # perform operation
fmul.s f1, f29, f19, rtz # perform operation
fmul.s f1, f29, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f29, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f29, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f29, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f29, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f29, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f800000)
li x12, 0xe1869745 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f13, 0(x2) # load 0x7f800000 from memory into f13
fmul.s f12, f19, f13, dyn # perform operation
fmul.s f12, f19, f13, rdn # perform operation
fmul.s f12, f19, f13, rmm # perform operation
fmul.s f12, f19, f13, rne # perform operation
fmul.s f12, f19, f13, rtz # perform operation
fmul.s f12, f19, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f19, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f19, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f19, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f19, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f19, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xff800000)
li x26, 0xf228f85c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f6, 0(x2) # load 0x7fffffff from memory into f6
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
fmul.s f26, f6, f1, dyn # perform operation
fmul.s f26, f6, f1, rdn # perform operation
fmul.s f26, f6, f1, rmm # perform operation
fmul.s f26, f6, f1, rne # perform operation
fmul.s f26, f6, f1, rtz # perform operation
fmul.s f26, f6, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f6, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f6, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f6, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f6, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f6, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fc00000)
li x10, 0x287e4cc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f29, 0(x2) # load 0x7fffffff from memory into f29
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f19, 0(x2) # load 0x7fc00000 from memory into f19
fmul.s f10, f29, f19, dyn # perform operation
fmul.s f10, f29, f19, rdn # perform operation
fmul.s f10, f29, f19, rmm # perform operation
fmul.s f10, f29, f19, rne # perform operation
fmul.s f10, f29, f19, rtz # perform operation
fmul.s f10, f29, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f29, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f29, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f29, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f29, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f29, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fffffff)
li x9, 0x44eac592 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f31, 0(x2) # load 0x7fffffff from memory into f31
fmul.s f9, f10, f31, dyn # perform operation
fmul.s f9, f10, f31, rdn # perform operation
fmul.s f9, f10, f31, rmm # perform operation
fmul.s f9, f10, f31, rne # perform operation
fmul.s f9, f10, f31, rtz # perform operation
fmul.s f9, f10, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f10, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f10, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f10, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f10, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f10, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f800001)
li x5, 0x23a95b06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f26, 0(x2) # load 0x7fffffff from memory into f26
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f10, 0(x2) # load 0x7f800001 from memory into f10
fmul.s f5, f26, f10, dyn # perform operation
fmul.s f5, f26, f10, rdn # perform operation
fmul.s f5, f26, f10, rmm # perform operation
fmul.s f5, f26, f10, rne # perform operation
fmul.s f5, f26, f10, rtz # perform operation
fmul.s f5, f26, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f26, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f26, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f26, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f26, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f26, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fbfffff)
li x19, 0x5b08f014 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f16, 0(x2) # load 0x7fffffff from memory into f16
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f21, 0(x2) # load 0x7fbfffff from memory into f21
fmul.s f19, f16, f21, dyn # perform operation
fmul.s f19, f16, f21, rdn # perform operation
fmul.s f19, f16, f21, rmm # perform operation
fmul.s f19, f16, f21, rne # perform operation
fmul.s f19, f16, f21, rtz # perform operation
fmul.s f19, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f16, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7ef8654f)
li x4, 0x8d2ffc96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f29, 0(x2) # load 0x7ef8654f from memory into f29
fmul.s f4, f5, f29, dyn # perform operation
fmul.s f4, f5, f29, rdn # perform operation
fmul.s f4, f5, f29, rmm # perform operation
fmul.s f4, f5, f29, rne # perform operation
fmul.s f4, f5, f29, rtz # perform operation
fmul.s f4, f5, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f5, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f5, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f5, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f5, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f5, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x813d9ab0)
li x20, 0x5d8c0037 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f28, 0(x2) # load 0x7fffffff from memory into f28
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f31, 0(x2) # load 0x813d9ab0 from memory into f31
fmul.s f20, f28, f31, dyn # perform operation
fmul.s f20, f28, f31, rdn # perform operation
fmul.s f20, f28, f31, rmm # perform operation
fmul.s f20, f28, f31, rne # perform operation
fmul.s f20, f28, f31, rtz # perform operation
fmul.s f20, f28, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f28, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f28, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f28, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f28, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f28, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x0)
li x10, 0xd7d6aeb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f25, 0(x2) # load 0x7f800001 from memory into f25
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f12, 0(x2) # load 0x00000000 from memory into f12
fmul.s f10, f25, f12, dyn # perform operation
fmul.s f10, f25, f12, rdn # perform operation
fmul.s f10, f25, f12, rmm # perform operation
fmul.s f10, f25, f12, rne # perform operation
fmul.s f10, f25, f12, rtz # perform operation
fmul.s f10, f25, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f25, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f25, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f25, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f25, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f25, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80000000)
li x12, 0xc5c13c40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f22, 0(x2) # load 0x7f800001 from memory into f22
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f13, 0(x2) # load 0x80000000 from memory into f13
fmul.s f12, f22, f13, dyn # perform operation
fmul.s f12, f22, f13, rdn # perform operation
fmul.s f12, f22, f13, rmm # perform operation
fmul.s f12, f22, f13, rne # perform operation
fmul.s f12, f22, f13, rtz # perform operation
fmul.s f12, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f22, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x3f800000)
li x22, 0xba7fd417 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f12, 0(x2) # load 0x7f800001 from memory into f12
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f18, 0(x2) # load 0x3f800000 from memory into f18
fmul.s f22, f12, f18, dyn # perform operation
fmul.s f22, f12, f18, rdn # perform operation
fmul.s f22, f12, f18, rmm # perform operation
fmul.s f22, f12, f18, rne # perform operation
fmul.s f22, f12, f18, rtz # perform operation
fmul.s f22, f12, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f12, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f12, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f12, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f12, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f12, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xbf800000)
li x31, 0x53d22236 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f1, 0(x2) # load 0x7f800001 from memory into f1
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f7, 0(x2) # load 0xbf800000 from memory into f7
fmul.s f31, f1, f7, dyn # perform operation
fmul.s f31, f1, f7, rdn # perform operation
fmul.s f31, f1, f7, rmm # perform operation
fmul.s f31, f1, f7, rne # perform operation
fmul.s f31, f1, f7, rtz # perform operation
fmul.s f31, f1, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f1, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f1, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f1, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f1, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f1, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x3fc00000)
li x28, 0xfadcd9d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f4, 0(x2) # load 0x7f800001 from memory into f4
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f14, 0(x2) # load 0x3fc00000 from memory into f14
fmul.s f28, f4, f14, dyn # perform operation
fmul.s f28, f4, f14, rdn # perform operation
fmul.s f28, f4, f14, rmm # perform operation
fmul.s f28, f4, f14, rne # perform operation
fmul.s f28, f4, f14, rtz # perform operation
fmul.s f28, f4, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f4, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f4, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f4, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f4, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f4, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xbfc00000)
li x18, 0xf1e4c0e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f24, 0(x2) # load 0x7f800001 from memory into f24
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
fmul.s f18, f24, f16, dyn # perform operation
fmul.s f18, f24, f16, rdn # perform operation
fmul.s f18, f24, f16, rmm # perform operation
fmul.s f18, f24, f16, rne # perform operation
fmul.s f18, f24, f16, rtz # perform operation
fmul.s f18, f24, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f24, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f24, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f24, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f24, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f24, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x40000000)
li x16, 0x38d92495 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f20, 0(x2) # load 0x7f800001 from memory into f20
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f7, 0(x2) # load 0x40000000 from memory into f7
fmul.s f16, f20, f7, dyn # perform operation
fmul.s f16, f20, f7, rdn # perform operation
fmul.s f16, f20, f7, rmm # perform operation
fmul.s f16, f20, f7, rne # perform operation
fmul.s f16, f20, f7, rtz # perform operation
fmul.s f16, f20, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f20, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f20, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f20, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f20, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f20, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xc0000000)
li x9, 0x671823e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
fmul.s f9, f21, f29, dyn # perform operation
fmul.s f9, f21, f29, rdn # perform operation
fmul.s f9, f21, f29, rmm # perform operation
fmul.s f9, f21, f29, rne # perform operation
fmul.s f9, f21, f29, rtz # perform operation
fmul.s f9, f21, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f21, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f21, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f21, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f21, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f21, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x800000)
li x1, 0x706a343e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f25, 0(x2) # load 0x00800000 from memory into f25
fmul.s f1, f19, f25, dyn # perform operation
fmul.s f1, f19, f25, rdn # perform operation
fmul.s f1, f19, f25, rmm # perform operation
fmul.s f1, f19, f25, rne # perform operation
fmul.s f1, f19, f25, rtz # perform operation
fmul.s f1, f19, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f19, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f19, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f19, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f19, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f19, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80800000)
li x11, 0x390a142a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f31, 0(x2) # load 0x7f800001 from memory into f31
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f22, 0(x2) # load 0x80800000 from memory into f22
fmul.s f11, f31, f22, dyn # perform operation
fmul.s f11, f31, f22, rdn # perform operation
fmul.s f11, f31, f22, rmm # perform operation
fmul.s f11, f31, f22, rne # perform operation
fmul.s f11, f31, f22, rtz # perform operation
fmul.s f11, f31, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f31, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f31, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f31, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f31, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f31, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f7fffff)
li x7, 0xe1d122cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f29, 0(x2) # load 0x7f800001 from memory into f29
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f20, 0(x2) # load 0x7f7fffff from memory into f20
fmul.s f7, f29, f20, dyn # perform operation
fmul.s f7, f29, f20, rdn # perform operation
fmul.s f7, f29, f20, rmm # perform operation
fmul.s f7, f29, f20, rne # perform operation
fmul.s f7, f29, f20, rtz # perform operation
fmul.s f7, f29, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f29, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f29, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f29, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f29, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f29, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xff7fffff)
li x20, 0x18a760ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f3, 0(x2) # load 0x7f800001 from memory into f3
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
fmul.s f20, f3, f11, dyn # perform operation
fmul.s f20, f3, f11, rdn # perform operation
fmul.s f20, f3, f11, rmm # perform operation
fmul.s f20, f3, f11, rne # perform operation
fmul.s f20, f3, f11, rtz # perform operation
fmul.s f20, f3, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f3, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f3, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f3, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f3, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f3, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fffff)
li x9, 0xd3d36c9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f11, 0(x2) # load 0x7f800001 from memory into f11
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f13, 0(x2) # load 0x007fffff from memory into f13
fmul.s f9, f11, f13, dyn # perform operation
fmul.s f9, f11, f13, rdn # perform operation
fmul.s f9, f11, f13, rmm # perform operation
fmul.s f9, f11, f13, rne # perform operation
fmul.s f9, f11, f13, rtz # perform operation
fmul.s f9, f11, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f11, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f11, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f11, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f11, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f11, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x807fffff)
li x12, 0x0327cef7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f3, 0(x2) # load 0x7f800001 from memory into f3
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f31, 0(x2) # load 0x807fffff from memory into f31
fmul.s f12, f3, f31, dyn # perform operation
fmul.s f12, f3, f31, rdn # perform operation
fmul.s f12, f3, f31, rmm # perform operation
fmul.s f12, f3, f31, rne # perform operation
fmul.s f12, f3, f31, rtz # perform operation
fmul.s f12, f3, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f12, f3, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f12, f3, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f12, f3, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f12, f3, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f12, f3, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x400000)
li x9, 0xe22c433a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f3, 0(x2) # load 0x7f800001 from memory into f3
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f11, 0(x2) # load 0x00400000 from memory into f11
fmul.s f9, f3, f11, dyn # perform operation
fmul.s f9, f3, f11, rdn # perform operation
fmul.s f9, f3, f11, rmm # perform operation
fmul.s f9, f3, f11, rne # perform operation
fmul.s f9, f3, f11, rtz # perform operation
fmul.s f9, f3, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f3, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f3, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f3, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f3, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f3, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80400000)
li x9, 0xba015867 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f20, 0(x2) # load 0x7f800001 from memory into f20
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f26, 0(x2) # load 0x80400000 from memory into f26
fmul.s f9, f20, f26, dyn # perform operation
fmul.s f9, f20, f26, rdn # perform operation
fmul.s f9, f20, f26, rmm # perform operation
fmul.s f9, f20, f26, rne # perform operation
fmul.s f9, f20, f26, rtz # perform operation
fmul.s f9, f20, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f20, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f20, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f20, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f20, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f20, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x1)
li x25, 0xf2330f60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
fmul.s f25, f27, f2, dyn # perform operation
fmul.s f25, f27, f2, rdn # perform operation
fmul.s f25, f27, f2, rmm # perform operation
fmul.s f25, f27, f2, rne # perform operation
fmul.s f25, f27, f2, rtz # perform operation
fmul.s f25, f27, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f27, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f27, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f27, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f27, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f27, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80000001)
li x25, 0xafb95288 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f26, 0(x2) # load 0x7f800001 from memory into f26
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f20, 0(x2) # load 0x80000001 from memory into f20
fmul.s f25, f26, f20, dyn # perform operation
fmul.s f25, f26, f20, rdn # perform operation
fmul.s f25, f26, f20, rmm # perform operation
fmul.s f25, f26, f20, rne # perform operation
fmul.s f25, f26, f20, rtz # perform operation
fmul.s f25, f26, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f26, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f26, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f26, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f26, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f26, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f800000)
li x2, 0xd77cbc49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f15, 0(x2) # load 0x7f800000 from memory into f15
fmul.s f2, f21, f15, dyn # perform operation
fmul.s f2, f21, f15, rdn # perform operation
fmul.s f2, f21, f15, rmm # perform operation
fmul.s f2, f21, f15, rne # perform operation
fmul.s f2, f21, f15, rtz # perform operation
fmul.s f2, f21, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f21, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f21, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f21, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f21, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f21, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xff800000)
li x3, 0xcb0e1a84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f8, 0(x2) # load 0x7f800001 from memory into f8
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f15, 0(x2) # load 0xff800000 from memory into f15
fmul.s f3, f8, f15, dyn # perform operation
fmul.s f3, f8, f15, rdn # perform operation
fmul.s f3, f8, f15, rmm # perform operation
fmul.s f3, f8, f15, rne # perform operation
fmul.s f3, f8, f15, rtz # perform operation
fmul.s f3, f8, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f8, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f8, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f8, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f8, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f8, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fc00000)
li x15, 0x2a62559b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f18, 0(x2) # load 0x7f800001 from memory into f18
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
fmul.s f15, f18, f10, dyn # perform operation
fmul.s f15, f18, f10, rdn # perform operation
fmul.s f15, f18, f10, rmm # perform operation
fmul.s f15, f18, f10, rne # perform operation
fmul.s f15, f18, f10, rtz # perform operation
fmul.s f15, f18, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f18, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f18, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f18, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f18, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f18, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fffffff)
li x11, 0x73713b47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f25, 0(x2) # load 0x7f800001 from memory into f25
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f14, 0(x2) # load 0x7fffffff from memory into f14
fmul.s f11, f25, f14, dyn # perform operation
fmul.s f11, f25, f14, rdn # perform operation
fmul.s f11, f25, f14, rmm # perform operation
fmul.s f11, f25, f14, rne # perform operation
fmul.s f11, f25, f14, rtz # perform operation
fmul.s f11, f25, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f25, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f25, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f25, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f25, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f25, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f800001)
li x16, 0x6dc58fdf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f17, 0(x2) # load 0x7f800001 from memory into f17
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
fmul.s f16, f17, f7, dyn # perform operation
fmul.s f16, f17, f7, rdn # perform operation
fmul.s f16, f17, f7, rmm # perform operation
fmul.s f16, f17, f7, rne # perform operation
fmul.s f16, f17, f7, rtz # perform operation
fmul.s f16, f17, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f17, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f17, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f17, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f17, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f17, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fbfffff)
li x13, 0x19068434 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f11, 0(x2) # load 0x7f800001 from memory into f11
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f8, 0(x2) # load 0x7fbfffff from memory into f8
fmul.s f13, f11, f8, dyn # perform operation
fmul.s f13, f11, f8, rdn # perform operation
fmul.s f13, f11, f8, rmm # perform operation
fmul.s f13, f11, f8, rne # perform operation
fmul.s f13, f11, f8, rtz # perform operation
fmul.s f13, f11, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f11, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f11, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f11, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f11, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f11, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7ef8654f)
li x23, 0x62f9cee4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f12, 0(x2) # load 0x7f800001 from memory into f12
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
fmul.s f23, f12, f16, dyn # perform operation
fmul.s f23, f12, f16, rdn # perform operation
fmul.s f23, f12, f16, rmm # perform operation
fmul.s f23, f12, f16, rne # perform operation
fmul.s f23, f12, f16, rtz # perform operation
fmul.s f23, f12, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f12, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f12, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f12, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f12, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f12, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x813d9ab0)
li x28, 0x84c1144c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f10, 0(x2) # load 0x7f800001 from memory into f10
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f16, 0(x2) # load 0x813d9ab0 from memory into f16
fmul.s f28, f10, f16, dyn # perform operation
fmul.s f28, f10, f16, rdn # perform operation
fmul.s f28, f10, f16, rmm # perform operation
fmul.s f28, f10, f16, rne # perform operation
fmul.s f28, f10, f16, rtz # perform operation
fmul.s f28, f10, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f10, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f10, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f10, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f10, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f10, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x0)
li x1, 0x8728bf3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f17, 0(x2) # load 0x7fbfffff from memory into f17
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
fmul.s f1, f17, f13, dyn # perform operation
fmul.s f1, f17, f13, rdn # perform operation
fmul.s f1, f17, f13, rmm # perform operation
fmul.s f1, f17, f13, rne # perform operation
fmul.s f1, f17, f13, rtz # perform operation
fmul.s f1, f17, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f17, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f17, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f17, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f17, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f17, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80000000)
li x28, 0x46287dbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f7, 0(x2) # load 0x7fbfffff from memory into f7
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f2, 0(x2) # load 0x80000000 from memory into f2
fmul.s f28, f7, f2, dyn # perform operation
fmul.s f28, f7, f2, rdn # perform operation
fmul.s f28, f7, f2, rmm # perform operation
fmul.s f28, f7, f2, rne # perform operation
fmul.s f28, f7, f2, rtz # perform operation
fmul.s f28, f7, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f7, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f7, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f7, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f7, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f7, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x3f800000)
li x20, 0xf9afaa5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f13, 0(x2) # load 0x7fbfffff from memory into f13
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
fmul.s f20, f13, f24, dyn # perform operation
fmul.s f20, f13, f24, rdn # perform operation
fmul.s f20, f13, f24, rmm # perform operation
fmul.s f20, f13, f24, rne # perform operation
fmul.s f20, f13, f24, rtz # perform operation
fmul.s f20, f13, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f13, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f13, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f13, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f13, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f13, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xbf800000)
li x23, 0xbd8d479e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f13, 0(x2) # load 0x7fbfffff from memory into f13
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f6, 0(x2) # load 0xbf800000 from memory into f6
fmul.s f23, f13, f6, dyn # perform operation
fmul.s f23, f13, f6, rdn # perform operation
fmul.s f23, f13, f6, rmm # perform operation
fmul.s f23, f13, f6, rne # perform operation
fmul.s f23, f13, f6, rtz # perform operation
fmul.s f23, f13, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f23, f13, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f23, f13, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f23, f13, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f23, f13, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f23, f13, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x3fc00000)
li x19, 0xea5e747c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f10, 0(x2) # load 0x7fbfffff from memory into f10
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f8, 0(x2) # load 0x3fc00000 from memory into f8
fmul.s f19, f10, f8, dyn # perform operation
fmul.s f19, f10, f8, rdn # perform operation
fmul.s f19, f10, f8, rmm # perform operation
fmul.s f19, f10, f8, rne # perform operation
fmul.s f19, f10, f8, rtz # perform operation
fmul.s f19, f10, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f10, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f10, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f10, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f10, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f10, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xbfc00000)
li x3, 0x9f47bbbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f24, 0(x2) # load 0x7fbfffff from memory into f24
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f9, 0(x2) # load 0xbfc00000 from memory into f9
fmul.s f3, f24, f9, dyn # perform operation
fmul.s f3, f24, f9, rdn # perform operation
fmul.s f3, f24, f9, rmm # perform operation
fmul.s f3, f24, f9, rne # perform operation
fmul.s f3, f24, f9, rtz # perform operation
fmul.s f3, f24, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f24, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f24, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f24, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f24, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f24, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x40000000)
li x9, 0xcaf7d503 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f24, 0(x2) # load 0x7fbfffff from memory into f24
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f25, 0(x2) # load 0x40000000 from memory into f25
fmul.s f9, f24, f25, dyn # perform operation
fmul.s f9, f24, f25, rdn # perform operation
fmul.s f9, f24, f25, rmm # perform operation
fmul.s f9, f24, f25, rne # perform operation
fmul.s f9, f24, f25, rtz # perform operation
fmul.s f9, f24, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f24, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f24, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f24, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f24, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f24, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xc0000000)
li x29, 0xe84234e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f12, 0(x2) # load 0x7fbfffff from memory into f12
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f24, 0(x2) # load 0xc0000000 from memory into f24
fmul.s f29, f12, f24, dyn # perform operation
fmul.s f29, f12, f24, rdn # perform operation
fmul.s f29, f12, f24, rmm # perform operation
fmul.s f29, f12, f24, rne # perform operation
fmul.s f29, f12, f24, rtz # perform operation
fmul.s f29, f12, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f12, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f12, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f12, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f12, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f12, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x800000)
li x11, 0xd5498492 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f24, 0(x2) # load 0x7fbfffff from memory into f24
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f29, 0(x2) # load 0x00800000 from memory into f29
fmul.s f11, f24, f29, dyn # perform operation
fmul.s f11, f24, f29, rdn # perform operation
fmul.s f11, f24, f29, rmm # perform operation
fmul.s f11, f24, f29, rne # perform operation
fmul.s f11, f24, f29, rtz # perform operation
fmul.s f11, f24, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f24, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f24, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f24, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f24, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f24, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80800000)
li x28, 0x0c0d2f25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f23, 0(x2) # load 0x7fbfffff from memory into f23
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
fmul.s f28, f23, f10, dyn # perform operation
fmul.s f28, f23, f10, rdn # perform operation
fmul.s f28, f23, f10, rmm # perform operation
fmul.s f28, f23, f10, rne # perform operation
fmul.s f28, f23, f10, rtz # perform operation
fmul.s f28, f23, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f23, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f23, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f23, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f23, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f23, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f7fffff)
li x26, 0x58f6f504 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f6, 0(x2) # load 0x7fbfffff from memory into f6
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f9, 0(x2) # load 0x7f7fffff from memory into f9
fmul.s f26, f6, f9, dyn # perform operation
fmul.s f26, f6, f9, rdn # perform operation
fmul.s f26, f6, f9, rmm # perform operation
fmul.s f26, f6, f9, rne # perform operation
fmul.s f26, f6, f9, rtz # perform operation
fmul.s f26, f6, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f6, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f6, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f6, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f6, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f6, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xff7fffff)
li x13, 0xd16d23f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f24, 0(x2) # load 0x7fbfffff from memory into f24
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f27, 0(x2) # load 0xff7fffff from memory into f27
fmul.s f13, f24, f27, dyn # perform operation
fmul.s f13, f24, f27, rdn # perform operation
fmul.s f13, f24, f27, rmm # perform operation
fmul.s f13, f24, f27, rne # perform operation
fmul.s f13, f24, f27, rtz # perform operation
fmul.s f13, f24, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f24, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f24, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f24, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f24, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f24, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fffff)
li x13, 0xb24f5d0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f10, 0(x2) # load 0x7fbfffff from memory into f10
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f1, 0(x2) # load 0x007fffff from memory into f1
fmul.s f13, f10, f1, dyn # perform operation
fmul.s f13, f10, f1, rdn # perform operation
fmul.s f13, f10, f1, rmm # perform operation
fmul.s f13, f10, f1, rne # perform operation
fmul.s f13, f10, f1, rtz # perform operation
fmul.s f13, f10, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f10, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f10, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f10, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f10, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f10, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x807fffff)
li x4, 0x5ad29fca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f15, 0(x2) # load 0x807fffff from memory into f15
fmul.s f4, f28, f15, dyn # perform operation
fmul.s f4, f28, f15, rdn # perform operation
fmul.s f4, f28, f15, rmm # perform operation
fmul.s f4, f28, f15, rne # perform operation
fmul.s f4, f28, f15, rtz # perform operation
fmul.s f4, f28, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f28, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f28, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f28, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f28, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f28, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x400000)
li x2, 0x01becef3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f11, 0(x2) # load 0x7fbfffff from memory into f11
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
fmul.s f2, f11, f26, dyn # perform operation
fmul.s f2, f11, f26, rdn # perform operation
fmul.s f2, f11, f26, rmm # perform operation
fmul.s f2, f11, f26, rne # perform operation
fmul.s f2, f11, f26, rtz # perform operation
fmul.s f2, f11, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f11, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f11, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f11, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f11, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f11, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80400000)
li x10, 0x9f38fcf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f12, 0(x2) # load 0x80400000 from memory into f12
fmul.s f10, f28, f12, dyn # perform operation
fmul.s f10, f28, f12, rdn # perform operation
fmul.s f10, f28, f12, rmm # perform operation
fmul.s f10, f28, f12, rne # perform operation
fmul.s f10, f28, f12, rtz # perform operation
fmul.s f10, f28, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f10, f28, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f10, f28, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f10, f28, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f10, f28, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f10, f28, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x1)
li x27, 0xfa322323 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f19, 0(x2) # load 0x7fbfffff from memory into f19
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
fmul.s f27, f19, f3, dyn # perform operation
fmul.s f27, f19, f3, rdn # perform operation
fmul.s f27, f19, f3, rmm # perform operation
fmul.s f27, f19, f3, rne # perform operation
fmul.s f27, f19, f3, rtz # perform operation
fmul.s f27, f19, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f27, f19, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f27, f19, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f27, f19, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f27, f19, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f27, f19, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80000001)
li x25, 0x9da9529a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f28, 0(x2) # load 0x7fbfffff from memory into f28
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f23, 0(x2) # load 0x80000001 from memory into f23
fmul.s f25, f28, f23, dyn # perform operation
fmul.s f25, f28, f23, rdn # perform operation
fmul.s f25, f28, f23, rmm # perform operation
fmul.s f25, f28, f23, rne # perform operation
fmul.s f25, f28, f23, rtz # perform operation
fmul.s f25, f28, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f28, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f28, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f28, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f28, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f28, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f800000)
li x18, 0x7800291c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f6, 0(x2) # load 0x7fbfffff from memory into f6
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f16, 0(x2) # load 0x7f800000 from memory into f16
fmul.s f18, f6, f16, dyn # perform operation
fmul.s f18, f6, f16, rdn # perform operation
fmul.s f18, f6, f16, rmm # perform operation
fmul.s f18, f6, f16, rne # perform operation
fmul.s f18, f6, f16, rtz # perform operation
fmul.s f18, f6, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f6, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f6, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f6, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f6, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f6, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xff800000)
li x24, 0xe8838814 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f20, 0(x2) # load 0x7fbfffff from memory into f20
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f10, 0(x2) # load 0xff800000 from memory into f10
fmul.s f24, f20, f10, dyn # perform operation
fmul.s f24, f20, f10, rdn # perform operation
fmul.s f24, f20, f10, rmm # perform operation
fmul.s f24, f20, f10, rne # perform operation
fmul.s f24, f20, f10, rtz # perform operation
fmul.s f24, f20, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f20, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f20, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f20, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f20, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f20, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fc00000)
li x1, 0xf16bed81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f30, 0(x2) # load 0x7fbfffff from memory into f30
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f3, 0(x2) # load 0x7fc00000 from memory into f3
fmul.s f1, f30, f3, dyn # perform operation
fmul.s f1, f30, f3, rdn # perform operation
fmul.s f1, f30, f3, rmm # perform operation
fmul.s f1, f30, f3, rne # perform operation
fmul.s f1, f30, f3, rtz # perform operation
fmul.s f1, f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f30, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fffffff)
li x24, 0x76194f7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f19, 0(x2) # load 0x7fbfffff from memory into f19
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
fmul.s f24, f19, f10, dyn # perform operation
fmul.s f24, f19, f10, rdn # perform operation
fmul.s f24, f19, f10, rmm # perform operation
fmul.s f24, f19, f10, rne # perform operation
fmul.s f24, f19, f10, rtz # perform operation
fmul.s f24, f19, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f19, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f19, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f19, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f19, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f19, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f800001)
li x30, 0x39c262a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f20, 0(x2) # load 0x7fbfffff from memory into f20
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f31, 0(x2) # load 0x7f800001 from memory into f31
fmul.s f30, f20, f31, dyn # perform operation
fmul.s f30, f20, f31, rdn # perform operation
fmul.s f30, f20, f31, rmm # perform operation
fmul.s f30, f20, f31, rne # perform operation
fmul.s f30, f20, f31, rtz # perform operation
fmul.s f30, f20, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f30, f20, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f30, f20, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f30, f20, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f30, f20, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f30, f20, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fbfffff)
li x31, 0xdf74c09a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f25, 0(x2) # load 0x7fbfffff from memory into f25
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f12, 0(x2) # load 0x7fbfffff from memory into f12
fmul.s f31, f25, f12, dyn # perform operation
fmul.s f31, f25, f12, rdn # perform operation
fmul.s f31, f25, f12, rmm # perform operation
fmul.s f31, f25, f12, rne # perform operation
fmul.s f31, f25, f12, rtz # perform operation
fmul.s f31, f25, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f25, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f25, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f25, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f25, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f25, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7ef8654f)
li x7, 0xe3eb8533 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f1, 0(x2) # load 0x7ef8654f from memory into f1
fmul.s f7, f31, f1, dyn # perform operation
fmul.s f7, f31, f1, rdn # perform operation
fmul.s f7, f31, f1, rmm # perform operation
fmul.s f7, f31, f1, rne # perform operation
fmul.s f7, f31, f1, rtz # perform operation
fmul.s f7, f31, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f31, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f31, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f31, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f31, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f31, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x813d9ab0)
li x14, 0xa53d776a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
fmul.s f14, f15, f13, dyn # perform operation
fmul.s f14, f15, f13, rdn # perform operation
fmul.s f14, f15, f13, rmm # perform operation
fmul.s f14, f15, f13, rne # perform operation
fmul.s f14, f15, f13, rtz # perform operation
fmul.s f14, f15, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f15, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f15, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f15, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f15, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f15, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x0)
li x1, 0x3a1330e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f19, 0(x2) # load 0x7ef8654f from memory into f19
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f5, 0(x2) # load 0x00000000 from memory into f5
fmul.s f1, f19, f5, dyn # perform operation
fmul.s f1, f19, f5, rdn # perform operation
fmul.s f1, f19, f5, rmm # perform operation
fmul.s f1, f19, f5, rne # perform operation
fmul.s f1, f19, f5, rtz # perform operation
fmul.s f1, f19, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f19, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f19, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f19, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f19, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f19, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80000000)
li x5, 0x835248f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f7, 0(x2) # load 0x7ef8654f from memory into f7
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f6, 0(x2) # load 0x80000000 from memory into f6
fmul.s f5, f7, f6, dyn # perform operation
fmul.s f5, f7, f6, rdn # perform operation
fmul.s f5, f7, f6, rmm # perform operation
fmul.s f5, f7, f6, rne # perform operation
fmul.s f5, f7, f6, rtz # perform operation
fmul.s f5, f7, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f7, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f7, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f7, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f7, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f7, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x3f800000)
li x26, 0x5181deee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f22, 0(x2) # load 0x7ef8654f from memory into f22
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f16, 0(x2) # load 0x3f800000 from memory into f16
fmul.s f26, f22, f16, dyn # perform operation
fmul.s f26, f22, f16, rdn # perform operation
fmul.s f26, f22, f16, rmm # perform operation
fmul.s f26, f22, f16, rne # perform operation
fmul.s f26, f22, f16, rtz # perform operation
fmul.s f26, f22, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f22, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f22, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f22, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f22, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f22, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xbf800000)
li x1, 0x482007c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
fmul.s f1, f16, f9, dyn # perform operation
fmul.s f1, f16, f9, rdn # perform operation
fmul.s f1, f16, f9, rmm # perform operation
fmul.s f1, f16, f9, rne # perform operation
fmul.s f1, f16, f9, rtz # perform operation
fmul.s f1, f16, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f16, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f16, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f16, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f16, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f16, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x3fc00000)
li x16, 0x9fa3dc0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f27, 0(x2) # load 0x7ef8654f from memory into f27
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f23, 0(x2) # load 0x3fc00000 from memory into f23
fmul.s f16, f27, f23, dyn # perform operation
fmul.s f16, f27, f23, rdn # perform operation
fmul.s f16, f27, f23, rmm # perform operation
fmul.s f16, f27, f23, rne # perform operation
fmul.s f16, f27, f23, rtz # perform operation
fmul.s f16, f27, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f16, f27, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f16, f27, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f16, f27, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f16, f27, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f16, f27, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xbfc00000)
li x9, 0xc57422c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f4, 0(x2) # load 0x7ef8654f from memory into f4
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f6, 0(x2) # load 0xbfc00000 from memory into f6
fmul.s f9, f4, f6, dyn # perform operation
fmul.s f9, f4, f6, rdn # perform operation
fmul.s f9, f4, f6, rmm # perform operation
fmul.s f9, f4, f6, rne # perform operation
fmul.s f9, f4, f6, rtz # perform operation
fmul.s f9, f4, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f4, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f4, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f4, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f4, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f4, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x40000000)
li x26, 0x37fff0ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f27, 0(x2) # load 0x7ef8654f from memory into f27
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f11, 0(x2) # load 0x40000000 from memory into f11
fmul.s f26, f27, f11, dyn # perform operation
fmul.s f26, f27, f11, rdn # perform operation
fmul.s f26, f27, f11, rmm # perform operation
fmul.s f26, f27, f11, rne # perform operation
fmul.s f26, f27, f11, rtz # perform operation
fmul.s f26, f27, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f27, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f27, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f27, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f27, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f27, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xc0000000)
li x6, 0xde27e8a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f30, 0(x2) # load 0x7ef8654f from memory into f30
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f5, 0(x2) # load 0xc0000000 from memory into f5
fmul.s f6, f30, f5, dyn # perform operation
fmul.s f6, f30, f5, rdn # perform operation
fmul.s f6, f30, f5, rmm # perform operation
fmul.s f6, f30, f5, rne # perform operation
fmul.s f6, f30, f5, rtz # perform operation
fmul.s f6, f30, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f30, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f30, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f30, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f30, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f30, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x800000)
li x5, 0xf5cc0ac9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f31, 0(x2) # load 0x7ef8654f from memory into f31
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f9, 0(x2) # load 0x00800000 from memory into f9
fmul.s f5, f31, f9, dyn # perform operation
fmul.s f5, f31, f9, rdn # perform operation
fmul.s f5, f31, f9, rmm # perform operation
fmul.s f5, f31, f9, rne # perform operation
fmul.s f5, f31, f9, rtz # perform operation
fmul.s f5, f31, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f5, f31, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f5, f31, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f5, f31, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f5, f31, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f5, f31, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80800000)
li x13, 0x956b51a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f18, 0(x2) # load 0x7ef8654f from memory into f18
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f15, 0(x2) # load 0x80800000 from memory into f15
fmul.s f13, f18, f15, dyn # perform operation
fmul.s f13, f18, f15, rdn # perform operation
fmul.s f13, f18, f15, rmm # perform operation
fmul.s f13, f18, f15, rne # perform operation
fmul.s f13, f18, f15, rtz # perform operation
fmul.s f13, f18, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f18, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f18, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f18, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f18, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f18, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f7fffff)
li x6, 0x7feeb844 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f10, 0(x2) # load 0x7ef8654f from memory into f10
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f24, 0(x2) # load 0x7f7fffff from memory into f24
fmul.s f6, f10, f24, dyn # perform operation
fmul.s f6, f10, f24, rdn # perform operation
fmul.s f6, f10, f24, rmm # perform operation
fmul.s f6, f10, f24, rne # perform operation
fmul.s f6, f10, f24, rtz # perform operation
fmul.s f6, f10, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f10, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f10, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f10, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f10, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f10, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xff7fffff)
li x18, 0x15e9263d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f17, 0(x2) # load 0xff7fffff from memory into f17
fmul.s f18, f21, f17, dyn # perform operation
fmul.s f18, f21, f17, rdn # perform operation
fmul.s f18, f21, f17, rmm # perform operation
fmul.s f18, f21, f17, rne # perform operation
fmul.s f18, f21, f17, rtz # perform operation
fmul.s f18, f21, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f18, f21, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f18, f21, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f18, f21, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f18, f21, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f18, f21, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fffff)
li x25, 0x7469763a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f8, 0(x2) # load 0x007fffff from memory into f8
fmul.s f25, f16, f8, dyn # perform operation
fmul.s f25, f16, f8, rdn # perform operation
fmul.s f25, f16, f8, rmm # perform operation
fmul.s f25, f16, f8, rne # perform operation
fmul.s f25, f16, f8, rtz # perform operation
fmul.s f25, f16, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f16, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f16, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f16, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f16, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f16, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x807fffff)
li x3, 0x0f5f2e79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f8, 0(x2) # load 0x7ef8654f from memory into f8
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f19, 0(x2) # load 0x807fffff from memory into f19
fmul.s f3, f8, f19, dyn # perform operation
fmul.s f3, f8, f19, rdn # perform operation
fmul.s f3, f8, f19, rmm # perform operation
fmul.s f3, f8, f19, rne # perform operation
fmul.s f3, f8, f19, rtz # perform operation
fmul.s f3, f8, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f8, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f8, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f8, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f8, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f8, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x400000)
li x24, 0x8d7d4262 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f31, 0(x2) # load 0x7ef8654f from memory into f31
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
fmul.s f24, f31, f14, dyn # perform operation
fmul.s f24, f31, f14, rdn # perform operation
fmul.s f24, f31, f14, rmm # perform operation
fmul.s f24, f31, f14, rne # perform operation
fmul.s f24, f31, f14, rtz # perform operation
fmul.s f24, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f31, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80400000)
li x17, 0xe7782d82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f20, 0(x2) # load 0x7ef8654f from memory into f20
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f13, 0(x2) # load 0x80400000 from memory into f13
fmul.s f17, f20, f13, dyn # perform operation
fmul.s f17, f20, f13, rdn # perform operation
fmul.s f17, f20, f13, rmm # perform operation
fmul.s f17, f20, f13, rne # perform operation
fmul.s f17, f20, f13, rtz # perform operation
fmul.s f17, f20, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f20, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f20, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f20, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f20, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f20, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x1)
li x20, 0xc5e11a81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f18, 0(x2) # load 0x7ef8654f from memory into f18
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f1, 0(x2) # load 0x00000001 from memory into f1
fmul.s f20, f18, f1, dyn # perform operation
fmul.s f20, f18, f1, rdn # perform operation
fmul.s f20, f18, f1, rmm # perform operation
fmul.s f20, f18, f1, rne # perform operation
fmul.s f20, f18, f1, rtz # perform operation
fmul.s f20, f18, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f18, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f18, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f18, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f18, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f18, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80000001)
li x9, 0x4f9a697a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f30, 0(x2) # load 0x7ef8654f from memory into f30
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f22, 0(x2) # load 0x80000001 from memory into f22
fmul.s f9, f30, f22, dyn # perform operation
fmul.s f9, f30, f22, rdn # perform operation
fmul.s f9, f30, f22, rmm # perform operation
fmul.s f9, f30, f22, rne # perform operation
fmul.s f9, f30, f22, rtz # perform operation
fmul.s f9, f30, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f30, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f30, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f30, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f30, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f30, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f800000)
li x15, 0xca7161d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f14, 0(x2) # load 0x7ef8654f from memory into f14
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f23, 0(x2) # load 0x7f800000 from memory into f23
fmul.s f15, f14, f23, dyn # perform operation
fmul.s f15, f14, f23, rdn # perform operation
fmul.s f15, f14, f23, rmm # perform operation
fmul.s f15, f14, f23, rne # perform operation
fmul.s f15, f14, f23, rtz # perform operation
fmul.s f15, f14, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f14, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f14, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f14, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f14, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f14, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xff800000)
li x9, 0x4ef55751 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f2, 0(x2) # load 0x7ef8654f from memory into f2
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f17, 0(x2) # load 0xff800000 from memory into f17
fmul.s f9, f2, f17, dyn # perform operation
fmul.s f9, f2, f17, rdn # perform operation
fmul.s f9, f2, f17, rmm # perform operation
fmul.s f9, f2, f17, rne # perform operation
fmul.s f9, f2, f17, rtz # perform operation
fmul.s f9, f2, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f9, f2, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f9, f2, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f9, f2, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f9, f2, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f9, f2, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fc00000)
li x11, 0x16c35725 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f30, 0(x2) # load 0x7ef8654f from memory into f30
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f17, 0(x2) # load 0x7fc00000 from memory into f17
fmul.s f11, f30, f17, dyn # perform operation
fmul.s f11, f30, f17, rdn # perform operation
fmul.s f11, f30, f17, rmm # perform operation
fmul.s f11, f30, f17, rne # perform operation
fmul.s f11, f30, f17, rtz # perform operation
fmul.s f11, f30, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f11, f30, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f11, f30, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f11, f30, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f11, f30, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f11, f30, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fffffff)
li x28, 0xf9d72a92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f31, 0(x2) # load 0x7ef8654f from memory into f31
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f9, 0(x2) # load 0x7fffffff from memory into f9
fmul.s f28, f31, f9, dyn # perform operation
fmul.s f28, f31, f9, rdn # perform operation
fmul.s f28, f31, f9, rmm # perform operation
fmul.s f28, f31, f9, rne # perform operation
fmul.s f28, f31, f9, rtz # perform operation
fmul.s f28, f31, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f31, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f31, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f31, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f31, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f31, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f800001)
li x26, 0xf73bbf80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f29, 0(x2) # load 0x7ef8654f from memory into f29
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
fmul.s f26, f29, f21, dyn # perform operation
fmul.s f26, f29, f21, rdn # perform operation
fmul.s f26, f29, f21, rmm # perform operation
fmul.s f26, f29, f21, rne # perform operation
fmul.s f26, f29, f21, rtz # perform operation
fmul.s f26, f29, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f29, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f29, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f29, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f29, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f29, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fbfffff)
li x17, 0x4d36d98d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f10, 0(x2) # load 0x7ef8654f from memory into f10
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f3, 0(x2) # load 0x7fbfffff from memory into f3
fmul.s f17, f10, f3, dyn # perform operation
fmul.s f17, f10, f3, rdn # perform operation
fmul.s f17, f10, f3, rmm # perform operation
fmul.s f17, f10, f3, rne # perform operation
fmul.s f17, f10, f3, rtz # perform operation
fmul.s f17, f10, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f10, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f10, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f10, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f10, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f10, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7ef8654f)
li x22, 0x0f6ec125 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f27, 0(x2) # load 0x7ef8654f from memory into f27
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f6, 0(x2) # load 0x7ef8654f from memory into f6
fmul.s f22, f27, f6, dyn # perform operation
fmul.s f22, f27, f6, rdn # perform operation
fmul.s f22, f27, f6, rmm # perform operation
fmul.s f22, f27, f6, rne # perform operation
fmul.s f22, f27, f6, rtz # perform operation
fmul.s f22, f27, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f22, f27, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f22, f27, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f22, f27, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f22, f27, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f22, f27, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x813d9ab0)
li x17, 0x95be9e28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f25, 0(x2) # load 0x7ef8654f from memory into f25
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f2, 0(x2) # load 0x813d9ab0 from memory into f2
fmul.s f17, f25, f2, dyn # perform operation
fmul.s f17, f25, f2, rdn # perform operation
fmul.s f17, f25, f2, rmm # perform operation
fmul.s f17, f25, f2, rne # perform operation
fmul.s f17, f25, f2, rtz # perform operation
fmul.s f17, f25, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f25, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f25, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f25, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f25, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f25, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x0)
li x15, 0xf7a126f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f5, 0(x2) # load 0x00000000 from memory into f5
fmul.s f15, f17, f5, dyn # perform operation
fmul.s f15, f17, f5, rdn # perform operation
fmul.s f15, f17, f5, rmm # perform operation
fmul.s f15, f17, f5, rne # perform operation
fmul.s f15, f17, f5, rtz # perform operation
fmul.s f15, f17, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f17, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f17, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f17, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f17, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f17, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80000000)
li x7, 0x5299083b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f6, 0(x2) # load 0x813d9ab0 from memory into f6
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f26, 0(x2) # load 0x80000000 from memory into f26
fmul.s f7, f6, f26, dyn # perform operation
fmul.s f7, f6, f26, rdn # perform operation
fmul.s f7, f6, f26, rmm # perform operation
fmul.s f7, f6, f26, rne # perform operation
fmul.s f7, f6, f26, rtz # perform operation
fmul.s f7, f6, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f6, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f6, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f6, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f6, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f6, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x3f800000)
li x17, 0x418b7007 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f14, 0(x2) # load 0x813d9ab0 from memory into f14
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f5, 0(x2) # load 0x3f800000 from memory into f5
fmul.s f17, f14, f5, dyn # perform operation
fmul.s f17, f14, f5, rdn # perform operation
fmul.s f17, f14, f5, rmm # perform operation
fmul.s f17, f14, f5, rne # perform operation
fmul.s f17, f14, f5, rtz # perform operation
fmul.s f17, f14, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f14, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f14, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f14, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f14, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f14, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xbf800000)
li x31, 0x1ce7c748 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f8, 0(x2) # load 0x813d9ab0 from memory into f8
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f18, 0(x2) # load 0xbf800000 from memory into f18
fmul.s f31, f8, f18, dyn # perform operation
fmul.s f31, f8, f18, rdn # perform operation
fmul.s f31, f8, f18, rmm # perform operation
fmul.s f31, f8, f18, rne # perform operation
fmul.s f31, f8, f18, rtz # perform operation
fmul.s f31, f8, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f8, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f8, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f8, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f8, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f8, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x3fc00000)
li x3, 0x0cd78219 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f18, 0(x2) # load 0x3fc00000 from memory into f18
fmul.s f3, f17, f18, dyn # perform operation
fmul.s f3, f17, f18, rdn # perform operation
fmul.s f3, f17, f18, rmm # perform operation
fmul.s f3, f17, f18, rne # perform operation
fmul.s f3, f17, f18, rtz # perform operation
fmul.s f3, f17, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f3, f17, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f3, f17, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f3, f17, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f3, f17, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f3, f17, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xbfc00000)
li x14, 0x5a9c286d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f6, 0(x2) # load 0x813d9ab0 from memory into f6
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f22, 0(x2) # load 0xbfc00000 from memory into f22
fmul.s f14, f6, f22, dyn # perform operation
fmul.s f14, f6, f22, rdn # perform operation
fmul.s f14, f6, f22, rmm # perform operation
fmul.s f14, f6, f22, rne # perform operation
fmul.s f14, f6, f22, rtz # perform operation
fmul.s f14, f6, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f14, f6, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f14, f6, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f14, f6, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f14, f6, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f14, f6, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x40000000)
li x20, 0xdba64b98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f18, 0(x2) # load 0x813d9ab0 from memory into f18
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
fmul.s f20, f18, f24, dyn # perform operation
fmul.s f20, f18, f24, rdn # perform operation
fmul.s f20, f18, f24, rmm # perform operation
fmul.s f20, f18, f24, rne # perform operation
fmul.s f20, f18, f24, rtz # perform operation
fmul.s f20, f18, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f18, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f18, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f18, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f18, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f18, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xc0000000)
li x1, 0x76bec45b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f6, 0(x2) # load 0x813d9ab0 from memory into f6
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
fmul.s f1, f6, f31, dyn # perform operation
fmul.s f1, f6, f31, rdn # perform operation
fmul.s f1, f6, f31, rmm # perform operation
fmul.s f1, f6, f31, rne # perform operation
fmul.s f1, f6, f31, rtz # perform operation
fmul.s f1, f6, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f1, f6, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f1, f6, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f1, f6, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f1, f6, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f1, f6, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x800000)
li x2, 0xa7d1674d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f17, 0(x2) # load 0x00800000 from memory into f17
fmul.s f2, f22, f17, dyn # perform operation
fmul.s f2, f22, f17, rdn # perform operation
fmul.s f2, f22, f17, rmm # perform operation
fmul.s f2, f22, f17, rne # perform operation
fmul.s f2, f22, f17, rtz # perform operation
fmul.s f2, f22, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f22, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f22, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f22, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f22, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f22, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80800000)
li x4, 0x410b5c08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f2, 0(x2) # load 0x80800000 from memory into f2
fmul.s f4, f21, f2, dyn # perform operation
fmul.s f4, f21, f2, rdn # perform operation
fmul.s f4, f21, f2, rmm # perform operation
fmul.s f4, f21, f2, rne # perform operation
fmul.s f4, f21, f2, rtz # perform operation
fmul.s f4, f21, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f4, f21, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f4, f21, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f4, f21, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f4, f21, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f4, f21, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f7fffff)
li x28, 0xd85c4cc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f23, 0(x2) # load 0x813d9ab0 from memory into f23
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
fmul.s f28, f23, f6, dyn # perform operation
fmul.s f28, f23, f6, rdn # perform operation
fmul.s f28, f23, f6, rmm # perform operation
fmul.s f28, f23, f6, rne # perform operation
fmul.s f28, f23, f6, rtz # perform operation
fmul.s f28, f23, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f28, f23, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f28, f23, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f28, f23, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f28, f23, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f28, f23, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xff7fffff)
li x13, 0x9c0c59c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f1, 0(x2) # load 0x813d9ab0 from memory into f1
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f5, 0(x2) # load 0xff7fffff from memory into f5
fmul.s f13, f1, f5, dyn # perform operation
fmul.s f13, f1, f5, rdn # perform operation
fmul.s f13, f1, f5, rmm # perform operation
fmul.s f13, f1, f5, rne # perform operation
fmul.s f13, f1, f5, rtz # perform operation
fmul.s f13, f1, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f13, f1, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f13, f1, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f13, f1, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f13, f1, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f13, f1, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fffff)
li x7, 0x3aa144b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f25, 0(x2) # load 0x813d9ab0 from memory into f25
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f22, 0(x2) # load 0x007fffff from memory into f22
fmul.s f7, f25, f22, dyn # perform operation
fmul.s f7, f25, f22, rdn # perform operation
fmul.s f7, f25, f22, rmm # perform operation
fmul.s f7, f25, f22, rne # perform operation
fmul.s f7, f25, f22, rtz # perform operation
fmul.s f7, f25, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f25, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f25, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f25, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f25, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f25, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x807fffff)
li x15, 0xec451327 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f28, 0(x2) # load 0x813d9ab0 from memory into f28
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
fmul.s f15, f28, f3, dyn # perform operation
fmul.s f15, f28, f3, rdn # perform operation
fmul.s f15, f28, f3, rmm # perform operation
fmul.s f15, f28, f3, rne # perform operation
fmul.s f15, f28, f3, rtz # perform operation
fmul.s f15, f28, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f15, f28, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f15, f28, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f15, f28, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f15, f28, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f15, f28, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x400000)
li x31, 0x119f2bd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f10, 0(x2) # load 0x813d9ab0 from memory into f10
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f16, 0(x2) # load 0x00400000 from memory into f16
fmul.s f31, f10, f16, dyn # perform operation
fmul.s f31, f10, f16, rdn # perform operation
fmul.s f31, f10, f16, rmm # perform operation
fmul.s f31, f10, f16, rne # perform operation
fmul.s f31, f10, f16, rtz # perform operation
fmul.s f31, f10, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f31, f10, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f31, f10, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f31, f10, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f31, f10, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f31, f10, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80400000)
li x2, 0x2742c9dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f24, 0(x2) # load 0x80400000 from memory into f24
fmul.s f2, f13, f24, dyn # perform operation
fmul.s f2, f13, f24, rdn # perform operation
fmul.s f2, f13, f24, rmm # perform operation
fmul.s f2, f13, f24, rne # perform operation
fmul.s f2, f13, f24, rtz # perform operation
fmul.s f2, f13, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f13, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f13, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f13, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f13, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f13, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x1)
li x29, 0x0fd9bf67 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f20, 0(x2) # load 0x813d9ab0 from memory into f20
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
fmul.s f29, f20, f19, dyn # perform operation
fmul.s f29, f20, f19, rdn # perform operation
fmul.s f29, f20, f19, rmm # perform operation
fmul.s f29, f20, f19, rne # perform operation
fmul.s f29, f20, f19, rtz # perform operation
fmul.s f29, f20, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f29, f20, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f29, f20, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f29, f20, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f29, f20, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f29, f20, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80000001)
li x2, 0xa5413ec1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f19, 0(x2) # load 0x813d9ab0 from memory into f19
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
fmul.s f2, f19, f27, dyn # perform operation
fmul.s f2, f19, f27, rdn # perform operation
fmul.s f2, f19, f27, rmm # perform operation
fmul.s f2, f19, f27, rne # perform operation
fmul.s f2, f19, f27, rtz # perform operation
fmul.s f2, f19, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f2, f19, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f2, f19, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f2, f19, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f2, f19, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f2, f19, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f800000)
li x19, 0x2a0a8739 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f5, 0(x2) # load 0x813d9ab0 from memory into f5
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f15, 0(x2) # load 0x7f800000 from memory into f15
fmul.s f19, f5, f15, dyn # perform operation
fmul.s f19, f5, f15, rdn # perform operation
fmul.s f19, f5, f15, rmm # perform operation
fmul.s f19, f5, f15, rne # perform operation
fmul.s f19, f5, f15, rtz # perform operation
fmul.s f19, f5, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f19, f5, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f19, f5, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f19, f5, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f19, f5, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f19, f5, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xff800000)
li x17, 0xf4047783 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f14, 0(x2) # load 0x813d9ab0 from memory into f14
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f6, 0(x2) # load 0xff800000 from memory into f6
fmul.s f17, f14, f6, dyn # perform operation
fmul.s f17, f14, f6, rdn # perform operation
fmul.s f17, f14, f6, rmm # perform operation
fmul.s f17, f14, f6, rne # perform operation
fmul.s f17, f14, f6, rtz # perform operation
fmul.s f17, f14, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f17, f14, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f17, f14, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f17, f14, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f17, f14, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f17, f14, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fc00000)
li x6, 0x855ccc51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f16, 0(x2) # load 0x813d9ab0 from memory into f16
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f23, 0(x2) # load 0x7fc00000 from memory into f23
fmul.s f6, f16, f23, dyn # perform operation
fmul.s f6, f16, f23, rdn # perform operation
fmul.s f6, f16, f23, rmm # perform operation
fmul.s f6, f16, f23, rne # perform operation
fmul.s f6, f16, f23, rtz # perform operation
fmul.s f6, f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f6, f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f6, f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f6, f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f6, f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f6, f16, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fffffff)
li x20, 0x3ed81d09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f11, 0(x2) # load 0x813d9ab0 from memory into f11
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
fmul.s f20, f11, f5, dyn # perform operation
fmul.s f20, f11, f5, rdn # perform operation
fmul.s f20, f11, f5, rmm # perform operation
fmul.s f20, f11, f5, rne # perform operation
fmul.s f20, f11, f5, rtz # perform operation
fmul.s f20, f11, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f20, f11, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f20, f11, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f20, f11, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f20, f11, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f20, f11, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f800001)
li x26, 0x1092c20c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f7, 0(x2) # load 0x813d9ab0 from memory into f7
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f3, 0(x2) # load 0x7f800001 from memory into f3
fmul.s f26, f7, f3, dyn # perform operation
fmul.s f26, f7, f3, rdn # perform operation
fmul.s f26, f7, f3, rmm # perform operation
fmul.s f26, f7, f3, rne # perform operation
fmul.s f26, f7, f3, rtz # perform operation
fmul.s f26, f7, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f26, f7, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f26, f7, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f26, f7, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f26, f7, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f26, f7, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fbfffff)
li x24, 0x563a72ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f19, 0(x2) # load 0x7fbfffff from memory into f19
fmul.s f24, f21, f19, dyn # perform operation
fmul.s f24, f21, f19, rdn # perform operation
fmul.s f24, f21, f19, rmm # perform operation
fmul.s f24, f21, f19, rne # perform operation
fmul.s f24, f21, f19, rtz # perform operation
fmul.s f24, f21, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f24, f21, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f24, f21, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f24, f21, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f24, f21, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f24, f21, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7ef8654f)
li x7, 0x5101f1dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f28, 0(x2) # load 0x813d9ab0 from memory into f28
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f17, 0(x2) # load 0x7ef8654f from memory into f17
fmul.s f7, f28, f17, dyn # perform operation
fmul.s f7, f28, f17, rdn # perform operation
fmul.s f7, f28, f17, rmm # perform operation
fmul.s f7, f28, f17, rne # perform operation
fmul.s f7, f28, f17, rtz # perform operation
fmul.s f7, f28, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f7, f28, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f7, f28, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f7, f28, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f7, f28, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f7, f28, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x813d9ab0)
li x25, 0x14589ab9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f7, 0(x2) # load 0x813d9ab0 from memory into f7
fmul.s f25, f22, f7, dyn # perform operation
fmul.s f25, f22, f7, rdn # perform operation
fmul.s f25, f22, f7, rmm # perform operation
fmul.s f25, f22, f7, rne # perform operation
fmul.s f25, f22, f7, rtz # perform operation
fmul.s f25, f22, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.s f25, f22, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.s f25, f22, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.s f25, f22, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.s f25, f22, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.s f25, f22, f7 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x4246d051 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x048d2d2c # load x3 with value 0x048d2d2c
sw x3, 0(x2) # store 0x048d2d2c in memory
flw f26, 0(x2) # load 0x048d2d2c from memory into f26
li x3, 0x1e7fb79c # load x3 with value 0x1e7fb79c
sw x3, 0(x2) # store 0x1e7fb79c in memory
flw f16, 0(x2) # load 0x1e7fb79c from memory into f16
fmul.s f0, f26, f16 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0xb4f6d3f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5bbc1fea # load x3 with value 0x5bbc1fea
sw x3, 0(x2) # store 0x5bbc1fea in memory
flw f20, 0(x2) # load 0x5bbc1fea from memory into f20
li x3, 0x63bc8204 # load x3 with value 0x63bc8204
sw x3, 0(x2) # store 0x63bc8204 in memory
flw f10, 0(x2) # load 0x63bc8204 from memory into f10
fmul.s f1, f20, f10 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0xe5d3126d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcf9fbfe1 # load x3 with value 0xcf9fbfe1
sw x3, 0(x2) # store 0xcf9fbfe1 in memory
flw f24, 0(x2) # load 0xcf9fbfe1 from memory into f24
li x3, 0x718f8c63 # load x3 with value 0x718f8c63
sw x3, 0(x2) # store 0x718f8c63 in memory
flw f2, 0(x2) # load 0x718f8c63 from memory into f2
fmul.s f2, f24, f2 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x99ae0136 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x264eb24c # load x3 with value 0x264eb24c
sw x3, 0(x2) # store 0x264eb24c in memory
flw f2, 0(x2) # load 0x264eb24c from memory into f2
li x3, 0x548262fc # load x3 with value 0x548262fc
sw x3, 0(x2) # store 0x548262fc in memory
flw f4, 0(x2) # load 0x548262fc from memory into f4
fmul.s f3, f2, f4 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x651038a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x026d6603 # load x3 with value 0x026d6603
sw x3, 0(x2) # store 0x026d6603 in memory
flw f8, 0(x2) # load 0x026d6603 from memory into f8
li x3, 0xbb212e63 # load x3 with value 0xbb212e63
sw x3, 0(x2) # store 0xbb212e63 in memory
flw f12, 0(x2) # load 0xbb212e63 from memory into f12
fmul.s f4, f8, f12 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0xeceeabcd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x39345d58 # load x3 with value 0x39345d58
sw x3, 0(x2) # store 0x39345d58 in memory
flw f31, 0(x2) # load 0x39345d58 from memory into f31
li x3, 0x0dcccd24 # load x3 with value 0x0dcccd24
sw x3, 0(x2) # store 0x0dcccd24 in memory
flw f14, 0(x2) # load 0x0dcccd24 from memory into f14
fmul.s f5, f31, f14 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0xcac36082 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbffa1865 # load x3 with value 0xbffa1865
sw x3, 0(x2) # store 0xbffa1865 in memory
flw f22, 0(x2) # load 0xbffa1865 from memory into f22
li x3, 0xf1a0ee65 # load x3 with value 0xf1a0ee65
sw x3, 0(x2) # store 0xf1a0ee65 in memory
flw f15, 0(x2) # load 0xf1a0ee65 from memory into f15
fmul.s f6, f22, f15 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0xe1bc46c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfbb1a8cb # load x3 with value 0xfbb1a8cb
sw x3, 0(x2) # store 0xfbb1a8cb in memory
flw f8, 0(x2) # load 0xfbb1a8cb from memory into f8
li x3, 0xe1a93abd # load x3 with value 0xe1a93abd
sw x3, 0(x2) # store 0xe1a93abd in memory
flw f13, 0(x2) # load 0xe1a93abd from memory into f13
fmul.s f7, f8, f13 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x7c5b66f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4742b435 # load x3 with value 0x4742b435
sw x3, 0(x2) # store 0x4742b435 in memory
flw f5, 0(x2) # load 0x4742b435 from memory into f5
li x3, 0x5522aba6 # load x3 with value 0x5522aba6
sw x3, 0(x2) # store 0x5522aba6 in memory
flw f13, 0(x2) # load 0x5522aba6 from memory into f13
fmul.s f8, f5, f13 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x6f0674ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4a0ed1bd # load x3 with value 0x4a0ed1bd
sw x3, 0(x2) # store 0x4a0ed1bd in memory
flw f31, 0(x2) # load 0x4a0ed1bd from memory into f31
li x3, 0x0114c20c # load x3 with value 0x0114c20c
sw x3, 0(x2) # store 0x0114c20c in memory
flw f27, 0(x2) # load 0x0114c20c from memory into f27
fmul.s f9, f31, f27 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x94ba734f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb5a31de1 # load x3 with value 0xb5a31de1
sw x3, 0(x2) # store 0xb5a31de1 in memory
flw f19, 0(x2) # load 0xb5a31de1 from memory into f19
li x3, 0xa882edbd # load x3 with value 0xa882edbd
sw x3, 0(x2) # store 0xa882edbd in memory
flw f24, 0(x2) # load 0xa882edbd from memory into f24
fmul.s f10, f19, f24 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x85d25f20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf3f57d21 # load x3 with value 0xf3f57d21
sw x3, 0(x2) # store 0xf3f57d21 in memory
flw f6, 0(x2) # load 0xf3f57d21 from memory into f6
li x3, 0x7bf680c8 # load x3 with value 0x7bf680c8
sw x3, 0(x2) # store 0x7bf680c8 in memory
flw f7, 0(x2) # load 0x7bf680c8 from memory into f7
fmul.s f11, f6, f7 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x9b068253 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x79f5932a # load x3 with value 0x79f5932a
sw x3, 0(x2) # store 0x79f5932a in memory
flw f12, 0(x2) # load 0x79f5932a from memory into f12
li x3, 0x77fcf0a2 # load x3 with value 0x77fcf0a2
sw x3, 0(x2) # store 0x77fcf0a2 in memory
flw f3, 0(x2) # load 0x77fcf0a2 from memory into f3
fmul.s f12, f12, f3 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0xa66946e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x36cd173d # load x3 with value 0x36cd173d
sw x3, 0(x2) # store 0x36cd173d in memory
flw f31, 0(x2) # load 0x36cd173d from memory into f31
li x3, 0x4dd40623 # load x3 with value 0x4dd40623
sw x3, 0(x2) # store 0x4dd40623 in memory
flw f10, 0(x2) # load 0x4dd40623 from memory into f10
fmul.s f13, f31, f10 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0xdf3f9a27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x11dce811 # load x3 with value 0x11dce811
sw x3, 0(x2) # store 0x11dce811 in memory
flw f23, 0(x2) # load 0x11dce811 from memory into f23
li x3, 0xe6bc3b58 # load x3 with value 0xe6bc3b58
sw x3, 0(x2) # store 0xe6bc3b58 in memory
flw f22, 0(x2) # load 0xe6bc3b58 from memory into f22
fmul.s f14, f23, f22 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x11b6e4a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6e8fa456 # load x3 with value 0x6e8fa456
sw x3, 0(x2) # store 0x6e8fa456 in memory
flw f23, 0(x2) # load 0x6e8fa456 from memory into f23
li x3, 0xb44b7f64 # load x3 with value 0xb44b7f64
sw x3, 0(x2) # store 0xb44b7f64 in memory
flw f13, 0(x2) # load 0xb44b7f64 from memory into f13
fmul.s f15, f23, f13 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x27809669 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x61a4127b # load x3 with value 0x61a4127b
sw x3, 0(x2) # store 0x61a4127b in memory
flw f17, 0(x2) # load 0x61a4127b from memory into f17
li x3, 0xca4c9c29 # load x3 with value 0xca4c9c29
sw x3, 0(x2) # store 0xca4c9c29 in memory
flw f20, 0(x2) # load 0xca4c9c29 from memory into f20
fmul.s f16, f17, f20 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x456245a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2e548c86 # load x3 with value 0x2e548c86
sw x3, 0(x2) # store 0x2e548c86 in memory
flw f14, 0(x2) # load 0x2e548c86 from memory into f14
li x3, 0xe0595a41 # load x3 with value 0xe0595a41
sw x3, 0(x2) # store 0xe0595a41 in memory
flw f17, 0(x2) # load 0xe0595a41 from memory into f17
fmul.s f17, f14, f17 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0xc906c207 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbde9794d # load x3 with value 0xbde9794d
sw x3, 0(x2) # store 0xbde9794d in memory
flw f16, 0(x2) # load 0xbde9794d from memory into f16
li x3, 0xf16b162d # load x3 with value 0xf16b162d
sw x3, 0(x2) # store 0xf16b162d in memory
flw f6, 0(x2) # load 0xf16b162d from memory into f6
fmul.s f18, f16, f6 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x2d7086c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc658d7a6 # load x3 with value 0xc658d7a6
sw x3, 0(x2) # store 0xc658d7a6 in memory
flw f9, 0(x2) # load 0xc658d7a6 from memory into f9
li x3, 0x445f6229 # load x3 with value 0x445f6229
sw x3, 0(x2) # store 0x445f6229 in memory
flw f4, 0(x2) # load 0x445f6229 from memory into f4
fmul.s f19, f9, f4 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x101a9cfe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4115fa59 # load x3 with value 0x4115fa59
sw x3, 0(x2) # store 0x4115fa59 in memory
flw f23, 0(x2) # load 0x4115fa59 from memory into f23
li x3, 0xc2f1b467 # load x3 with value 0xc2f1b467
sw x3, 0(x2) # store 0xc2f1b467 in memory
flw f18, 0(x2) # load 0xc2f1b467 from memory into f18
fmul.s f20, f23, f18 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0xc34bbd6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2adfe67f # load x3 with value 0x2adfe67f
sw x3, 0(x2) # store 0x2adfe67f in memory
flw f22, 0(x2) # load 0x2adfe67f from memory into f22
li x3, 0x6eca3ac7 # load x3 with value 0x6eca3ac7
sw x3, 0(x2) # store 0x6eca3ac7 in memory
flw f25, 0(x2) # load 0x6eca3ac7 from memory into f25
fmul.s f21, f22, f25 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x6e48b6da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x67690390 # load x3 with value 0x67690390
sw x3, 0(x2) # store 0x67690390 in memory
flw f20, 0(x2) # load 0x67690390 from memory into f20
li x3, 0xbcecae86 # load x3 with value 0xbcecae86
sw x3, 0(x2) # store 0xbcecae86 in memory
flw f7, 0(x2) # load 0xbcecae86 from memory into f7
fmul.s f22, f20, f7 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0xf73b7483 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc19bca1d # load x3 with value 0xc19bca1d
sw x3, 0(x2) # store 0xc19bca1d in memory
flw f20, 0(x2) # load 0xc19bca1d from memory into f20
li x3, 0xbb97a4cf # load x3 with value 0xbb97a4cf
sw x3, 0(x2) # store 0xbb97a4cf in memory
flw f21, 0(x2) # load 0xbb97a4cf from memory into f21
fmul.s f23, f20, f21 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x197db7e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf93343dd # load x3 with value 0xf93343dd
sw x3, 0(x2) # store 0xf93343dd in memory
flw f26, 0(x2) # load 0xf93343dd from memory into f26
li x3, 0x0ee8c7fe # load x3 with value 0x0ee8c7fe
sw x3, 0(x2) # store 0x0ee8c7fe in memory
flw f25, 0(x2) # load 0x0ee8c7fe from memory into f25
fmul.s f24, f26, f25 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x84939ded # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc3f9a9e0 # load x3 with value 0xc3f9a9e0
sw x3, 0(x2) # store 0xc3f9a9e0 in memory
flw f2, 0(x2) # load 0xc3f9a9e0 from memory into f2
li x3, 0xc1b603cf # load x3 with value 0xc1b603cf
sw x3, 0(x2) # store 0xc1b603cf in memory
flw f6, 0(x2) # load 0xc1b603cf from memory into f6
fmul.s f25, f2, f6 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xbf352037 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x93a5f02d # load x3 with value 0x93a5f02d
sw x3, 0(x2) # store 0x93a5f02d in memory
flw f8, 0(x2) # load 0x93a5f02d from memory into f8
li x3, 0x954c8561 # load x3 with value 0x954c8561
sw x3, 0(x2) # store 0x954c8561 in memory
flw f2, 0(x2) # load 0x954c8561 from memory into f2
fmul.s f26, f8, f2 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0xb7cedd11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0c97e3cb # load x3 with value 0x0c97e3cb
sw x3, 0(x2) # store 0x0c97e3cb in memory
flw f31, 0(x2) # load 0x0c97e3cb from memory into f31
li x3, 0x59571328 # load x3 with value 0x59571328
sw x3, 0(x2) # store 0x59571328 in memory
flw f1, 0(x2) # load 0x59571328 from memory into f1
fmul.s f27, f31, f1 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x3e8b6734 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0b004b13 # load x3 with value 0x0b004b13
sw x3, 0(x2) # store 0x0b004b13 in memory
flw f12, 0(x2) # load 0x0b004b13 from memory into f12
li x3, 0x87cdc2f9 # load x3 with value 0x87cdc2f9
sw x3, 0(x2) # store 0x87cdc2f9 in memory
flw f20, 0(x2) # load 0x87cdc2f9 from memory into f20
fmul.s f28, f12, f20 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0xb27deac3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x973b4df7 # load x3 with value 0x973b4df7
sw x3, 0(x2) # store 0x973b4df7 in memory
flw f20, 0(x2) # load 0x973b4df7 from memory into f20
li x3, 0xcd9abc07 # load x3 with value 0xcd9abc07
sw x3, 0(x2) # store 0xcd9abc07 in memory
flw f27, 0(x2) # load 0xcd9abc07 from memory into f27
fmul.s f29, f20, f27 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x0cfac502 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x37cb1236 # load x3 with value 0x37cb1236
sw x3, 0(x2) # store 0x37cb1236 in memory
flw f24, 0(x2) # load 0x37cb1236 from memory into f24
li x3, 0x500a005f # load x3 with value 0x500a005f
sw x3, 0(x2) # store 0x500a005f in memory
flw f16, 0(x2) # load 0x500a005f from memory into f16
fmul.s f30, f24, f16 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x34e9feeb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1b4e23b0 # load x3 with value 0x1b4e23b0
sw x3, 0(x2) # store 0x1b4e23b0 in memory
flw f30, 0(x2) # load 0x1b4e23b0 from memory into f30
li x3, 0xc4392403 # load x3 with value 0xc4392403
sw x3, 0(x2) # store 0xc4392403 in memory
flw f29, 0(x2) # load 0xc4392403 from memory into f29
fmul.s f31, f30, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x3, 0x1f52476d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf7b6d7b6 # load x3 with value 0xf7b6d7b6
sw x3, 0(x2) # store 0xf7b6d7b6 in memory
flw f0, 0(x2) # load 0xf7b6d7b6 from memory into f0
li x3, 0x22277ac8 # load x3 with value 0x22277ac8
sw x3, 0(x2) # store 0x22277ac8 in memory
flw f20, 0(x2) # load 0x22277ac8 from memory into f20
fmul.s f3, f0, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x5, 0x4490eb77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa375939b # load x3 with value 0xa375939b
sw x3, 0(x2) # store 0xa375939b in memory
flw f1, 0(x2) # load 0xa375939b from memory into f1
li x3, 0x59e4b9ba # load x3 with value 0x59e4b9ba
sw x3, 0(x2) # store 0x59e4b9ba in memory
flw f21, 0(x2) # load 0x59e4b9ba from memory into f21
fmul.s f5, f1, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x2, 0x5584e6f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x17356e7b # load x3 with value 0x17356e7b
sw x3, 0(x2) # store 0x17356e7b in memory
flw f2, 0(x2) # load 0x17356e7b from memory into f2
li x3, 0x6d1b3929 # load x3 with value 0x6d1b3929
sw x3, 0(x2) # store 0x6d1b3929 in memory
flw f1, 0(x2) # load 0x6d1b3929 from memory into f1
fmul.s f2, f2, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x26, 0x32de0cc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf89c9ec2 # load x3 with value 0xf89c9ec2
sw x3, 0(x2) # store 0xf89c9ec2 in memory
flw f3, 0(x2) # load 0xf89c9ec2 from memory into f3
li x3, 0x43e9d609 # load x3 with value 0x43e9d609
sw x3, 0(x2) # store 0x43e9d609 in memory
flw f10, 0(x2) # load 0x43e9d609 from memory into f10
fmul.s f26, f3, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x2, 0xf7cb18c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x81a75b0a # load x3 with value 0x81a75b0a
sw x3, 0(x2) # store 0x81a75b0a in memory
flw f4, 0(x2) # load 0x81a75b0a from memory into f4
li x3, 0x2d7a5680 # load x3 with value 0x2d7a5680
sw x3, 0(x2) # store 0x2d7a5680 in memory
flw f18, 0(x2) # load 0x2d7a5680 from memory into f18
fmul.s f2, f4, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x3, 0x3108c73a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5e8219d9 # load x3 with value 0x5e8219d9
sw x3, 0(x2) # store 0x5e8219d9 in memory
flw f5, 0(x2) # load 0x5e8219d9 from memory into f5
li x3, 0x2c92e74c # load x3 with value 0x2c92e74c
sw x3, 0(x2) # store 0x2c92e74c in memory
flw f7, 0(x2) # load 0x2c92e74c from memory into f7
fmul.s f3, f5, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x30, 0x5cd885f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xec9eed34 # load x3 with value 0xec9eed34
sw x3, 0(x2) # store 0xec9eed34 in memory
flw f6, 0(x2) # load 0xec9eed34 from memory into f6
li x3, 0xd00fe7f0 # load x3 with value 0xd00fe7f0
sw x3, 0(x2) # store 0xd00fe7f0 in memory
flw f28, 0(x2) # load 0xd00fe7f0 from memory into f28
fmul.s f30, f6, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x6, 0x24154cc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbdf19743 # load x3 with value 0xbdf19743
sw x3, 0(x2) # store 0xbdf19743 in memory
flw f7, 0(x2) # load 0xbdf19743 from memory into f7
li x3, 0xdd2e2a04 # load x3 with value 0xdd2e2a04
sw x3, 0(x2) # store 0xdd2e2a04 in memory
flw f24, 0(x2) # load 0xdd2e2a04 from memory into f24
fmul.s f6, f7, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x6, 0xab9c9950 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x50727778 # load x3 with value 0x50727778
sw x3, 0(x2) # store 0x50727778 in memory
flw f8, 0(x2) # load 0x50727778 from memory into f8
li x3, 0x78871865 # load x3 with value 0x78871865
sw x3, 0(x2) # store 0x78871865 in memory
flw f19, 0(x2) # load 0x78871865 from memory into f19
fmul.s f6, f8, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x18, 0x2c6af50d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf66bec9a # load x3 with value 0xf66bec9a
sw x3, 0(x2) # store 0xf66bec9a in memory
flw f9, 0(x2) # load 0xf66bec9a from memory into f9
li x3, 0x179525da # load x3 with value 0x179525da
sw x3, 0(x2) # store 0x179525da in memory
flw f25, 0(x2) # load 0x179525da from memory into f25
fmul.s f18, f9, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x21, 0x9b61c484 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x663506d4 # load x3 with value 0x663506d4
sw x3, 0(x2) # store 0x663506d4 in memory
flw f10, 0(x2) # load 0x663506d4 from memory into f10
li x3, 0x463557a5 # load x3 with value 0x463557a5
sw x3, 0(x2) # store 0x463557a5 in memory
flw f29, 0(x2) # load 0x463557a5 from memory into f29
fmul.s f21, f10, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x26, 0x6c483f6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xee3794c0 # load x3 with value 0xee3794c0
sw x3, 0(x2) # store 0xee3794c0 in memory
flw f11, 0(x2) # load 0xee3794c0 from memory into f11
li x3, 0xb284fee2 # load x3 with value 0xb284fee2
sw x3, 0(x2) # store 0xb284fee2 in memory
flw f25, 0(x2) # load 0xb284fee2 from memory into f25
fmul.s f26, f11, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x2, 0x0bb03271 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf6b05ec7 # load x3 with value 0xf6b05ec7
sw x3, 0(x2) # store 0xf6b05ec7 in memory
flw f12, 0(x2) # load 0xf6b05ec7 from memory into f12
li x3, 0xdc35400b # load x3 with value 0xdc35400b
sw x3, 0(x2) # store 0xdc35400b in memory
flw f19, 0(x2) # load 0xdc35400b from memory into f19
fmul.s f2, f12, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x11, 0x6178489c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x174e057a # load x3 with value 0x174e057a
sw x3, 0(x2) # store 0x174e057a in memory
flw f13, 0(x2) # load 0x174e057a from memory into f13
li x3, 0xc6fb724f # load x3 with value 0xc6fb724f
sw x3, 0(x2) # store 0xc6fb724f in memory
flw f15, 0(x2) # load 0xc6fb724f from memory into f15
fmul.s f11, f13, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x20, 0xb80ffd68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xde77848a # load x3 with value 0xde77848a
sw x3, 0(x2) # store 0xde77848a in memory
flw f14, 0(x2) # load 0xde77848a from memory into f14
li x3, 0x372c7ab4 # load x3 with value 0x372c7ab4
sw x3, 0(x2) # store 0x372c7ab4 in memory
flw f31, 0(x2) # load 0x372c7ab4 from memory into f31
fmul.s f20, f14, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x3, 0x5760d141 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9bd41d55 # load x3 with value 0x9bd41d55
sw x3, 0(x2) # store 0x9bd41d55 in memory
flw f15, 0(x2) # load 0x9bd41d55 from memory into f15
li x3, 0x7d67d418 # load x3 with value 0x7d67d418
sw x3, 0(x2) # store 0x7d67d418 in memory
flw f16, 0(x2) # load 0x7d67d418 from memory into f16
fmul.s f3, f15, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x17, 0x6ada6a7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x24c77d57 # load x3 with value 0x24c77d57
sw x3, 0(x2) # store 0x24c77d57 in memory
flw f16, 0(x2) # load 0x24c77d57 from memory into f16
li x3, 0xa2151fc1 # load x3 with value 0xa2151fc1
sw x3, 0(x2) # store 0xa2151fc1 in memory
flw f20, 0(x2) # load 0xa2151fc1 from memory into f20
fmul.s f17, f16, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x25, 0x949f3289 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x20ed3907 # load x3 with value 0x20ed3907
sw x3, 0(x2) # store 0x20ed3907 in memory
flw f17, 0(x2) # load 0x20ed3907 from memory into f17
li x3, 0x3c0c59ce # load x3 with value 0x3c0c59ce
sw x3, 0(x2) # store 0x3c0c59ce in memory
flw f1, 0(x2) # load 0x3c0c59ce from memory into f1
fmul.s f25, f17, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x20, 0xb7314e6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb05ab652 # load x3 with value 0xb05ab652
sw x3, 0(x2) # store 0xb05ab652 in memory
flw f18, 0(x2) # load 0xb05ab652 from memory into f18
li x3, 0xefe9849d # load x3 with value 0xefe9849d
sw x3, 0(x2) # store 0xefe9849d in memory
flw f28, 0(x2) # load 0xefe9849d from memory into f28
fmul.s f20, f18, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x11, 0x709782a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x580217cc # load x3 with value 0x580217cc
sw x3, 0(x2) # store 0x580217cc in memory
flw f19, 0(x2) # load 0x580217cc from memory into f19
li x3, 0x49135ebf # load x3 with value 0x49135ebf
sw x3, 0(x2) # store 0x49135ebf in memory
flw f24, 0(x2) # load 0x49135ebf from memory into f24
fmul.s f11, f19, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x28, 0x17e4613c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x31d5ebcf # load x3 with value 0x31d5ebcf
sw x3, 0(x2) # store 0x31d5ebcf in memory
flw f20, 0(x2) # load 0x31d5ebcf from memory into f20
li x3, 0xb1337d1d # load x3 with value 0xb1337d1d
sw x3, 0(x2) # store 0xb1337d1d in memory
flw f5, 0(x2) # load 0xb1337d1d from memory into f5
fmul.s f28, f20, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x14, 0x0764bf85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf4e84f8e # load x3 with value 0xf4e84f8e
sw x3, 0(x2) # store 0xf4e84f8e in memory
flw f21, 0(x2) # load 0xf4e84f8e from memory into f21
li x3, 0xf5a2b345 # load x3 with value 0xf5a2b345
sw x3, 0(x2) # store 0xf5a2b345 in memory
flw f17, 0(x2) # load 0xf5a2b345 from memory into f17
fmul.s f14, f21, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x12, 0xcbc88e93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x39d127f9 # load x3 with value 0x39d127f9
sw x3, 0(x2) # store 0x39d127f9 in memory
flw f22, 0(x2) # load 0x39d127f9 from memory into f22
li x3, 0xaaab0676 # load x3 with value 0xaaab0676
sw x3, 0(x2) # store 0xaaab0676 in memory
flw f18, 0(x2) # load 0xaaab0676 from memory into f18
fmul.s f12, f22, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x28, 0xe363f3c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x24e3232d # load x3 with value 0x24e3232d
sw x3, 0(x2) # store 0x24e3232d in memory
flw f23, 0(x2) # load 0x24e3232d from memory into f23
li x3, 0x2f52fa32 # load x3 with value 0x2f52fa32
sw x3, 0(x2) # store 0x2f52fa32 in memory
flw f9, 0(x2) # load 0x2f52fa32 from memory into f9
fmul.s f28, f23, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x3, 0xb2808f98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8d899c27 # load x3 with value 0x8d899c27
sw x3, 0(x2) # store 0x8d899c27 in memory
flw f24, 0(x2) # load 0x8d899c27 from memory into f24
li x3, 0xa3690243 # load x3 with value 0xa3690243
sw x3, 0(x2) # store 0xa3690243 in memory
flw f18, 0(x2) # load 0xa3690243 from memory into f18
fmul.s f3, f24, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x4, 0x218e3be1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf88c7ecb # load x3 with value 0xf88c7ecb
sw x3, 0(x2) # store 0xf88c7ecb in memory
flw f25, 0(x2) # load 0xf88c7ecb from memory into f25
li x3, 0x362765af # load x3 with value 0x362765af
sw x3, 0(x2) # store 0x362765af in memory
flw f23, 0(x2) # load 0x362765af from memory into f23
fmul.s f4, f25, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x3, 0x1dd0bec6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x242228ad # load x3 with value 0x242228ad
sw x3, 0(x2) # store 0x242228ad in memory
flw f26, 0(x2) # load 0x242228ad from memory into f26
li x3, 0x379ffd8c # load x3 with value 0x379ffd8c
sw x3, 0(x2) # store 0x379ffd8c in memory
flw f2, 0(x2) # load 0x379ffd8c from memory into f2
fmul.s f3, f26, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x31, 0x50eabd55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3a7806f5 # load x3 with value 0x3a7806f5
sw x3, 0(x2) # store 0x3a7806f5 in memory
flw f27, 0(x2) # load 0x3a7806f5 from memory into f27
li x3, 0x7986e1d0 # load x3 with value 0x7986e1d0
sw x3, 0(x2) # store 0x7986e1d0 in memory
flw f30, 0(x2) # load 0x7986e1d0 from memory into f30
fmul.s f31, f27, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x24, 0x9616a636 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1f4d7ab0 # load x3 with value 0x1f4d7ab0
sw x3, 0(x2) # store 0x1f4d7ab0 in memory
flw f28, 0(x2) # load 0x1f4d7ab0 from memory into f28
li x3, 0xd2dc1d83 # load x3 with value 0xd2dc1d83
sw x3, 0(x2) # store 0xd2dc1d83 in memory
flw f5, 0(x2) # load 0xd2dc1d83 from memory into f5
fmul.s f24, f28, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x24, 0xd37fb6bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeca51b3e # load x3 with value 0xeca51b3e
sw x3, 0(x2) # store 0xeca51b3e in memory
flw f29, 0(x2) # load 0xeca51b3e from memory into f29
li x3, 0x49886e03 # load x3 with value 0x49886e03
sw x3, 0(x2) # store 0x49886e03 in memory
flw f4, 0(x2) # load 0x49886e03 from memory into f4
fmul.s f24, f29, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x24, 0x238bd96a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x25ae8abb # load x3 with value 0x25ae8abb
sw x3, 0(x2) # store 0x25ae8abb in memory
flw f30, 0(x2) # load 0x25ae8abb from memory into f30
li x3, 0xc91364db # load x3 with value 0xc91364db
sw x3, 0(x2) # store 0xc91364db in memory
flw f6, 0(x2) # load 0xc91364db from memory into f6
fmul.s f24, f30, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x19, 0x34c162f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc810a6c3 # load x3 with value 0xc810a6c3
sw x3, 0(x2) # store 0xc810a6c3 in memory
flw f31, 0(x2) # load 0xc810a6c3 from memory into f31
li x3, 0x08e0ef62 # load x3 with value 0x08e0ef62
sw x3, 0(x2) # store 0x08e0ef62 in memory
flw f3, 0(x2) # load 0x08e0ef62 from memory into f3
fmul.s f19, f31, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x1, 0x712e9456 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc8d2e22d # load x3 with value 0xc8d2e22d
sw x3, 0(x2) # store 0xc8d2e22d in memory
flw f28, 0(x2) # load 0xc8d2e22d from memory into f28
li x3, 0x61711ea2 # load x3 with value 0x61711ea2
sw x3, 0(x2) # store 0x61711ea2 in memory
flw f0, 0(x2) # load 0x61711ea2 from memory into f0
fmul.s f1, f28, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x20, 0xdb0d57ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x23f733f9 # load x3 with value 0x23f733f9
sw x3, 0(x2) # store 0x23f733f9 in memory
flw f8, 0(x2) # load 0x23f733f9 from memory into f8
li x3, 0xf4f7eb6e # load x3 with value 0xf4f7eb6e
sw x3, 0(x2) # store 0xf4f7eb6e in memory
flw f1, 0(x2) # load 0xf4f7eb6e from memory into f1
fmul.s f20, f8, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x22, 0x05fc56ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7544ca4e # load x3 with value 0x7544ca4e
sw x3, 0(x2) # store 0x7544ca4e in memory
flw f24, 0(x2) # load 0x7544ca4e from memory into f24
li x3, 0x75ba6302 # load x3 with value 0x75ba6302
sw x3, 0(x2) # store 0x75ba6302 in memory
flw f2, 0(x2) # load 0x75ba6302 from memory into f2
fmul.s f22, f24, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x28, 0x1943440d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4e65f570 # load x3 with value 0x4e65f570
sw x3, 0(x2) # store 0x4e65f570 in memory
flw f25, 0(x2) # load 0x4e65f570 from memory into f25
li x3, 0x38beec2f # load x3 with value 0x38beec2f
sw x3, 0(x2) # store 0x38beec2f in memory
flw f3, 0(x2) # load 0x38beec2f from memory into f3
fmul.s f28, f25, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x23, 0xb7aaff38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x411efea4 # load x3 with value 0x411efea4
sw x3, 0(x2) # store 0x411efea4 in memory
flw f28, 0(x2) # load 0x411efea4 from memory into f28
li x3, 0x6335f75d # load x3 with value 0x6335f75d
sw x3, 0(x2) # store 0x6335f75d in memory
flw f4, 0(x2) # load 0x6335f75d from memory into f4
fmul.s f23, f28, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x16, 0x32a58e34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe857031f # load x3 with value 0xe857031f
sw x3, 0(x2) # store 0xe857031f in memory
flw f14, 0(x2) # load 0xe857031f from memory into f14
li x3, 0xb67cea57 # load x3 with value 0xb67cea57
sw x3, 0(x2) # store 0xb67cea57 in memory
flw f5, 0(x2) # load 0xb67cea57 from memory into f5
fmul.s f16, f14, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x4, 0xb844ab5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc61485ac # load x3 with value 0xc61485ac
sw x3, 0(x2) # store 0xc61485ac in memory
flw f23, 0(x2) # load 0xc61485ac from memory into f23
li x3, 0xb15c9e5e # load x3 with value 0xb15c9e5e
sw x3, 0(x2) # store 0xb15c9e5e in memory
flw f6, 0(x2) # load 0xb15c9e5e from memory into f6
fmul.s f4, f23, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x3, 0x20677ca1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe565f12b # load x3 with value 0xe565f12b
sw x3, 0(x2) # store 0xe565f12b in memory
flw f8, 0(x2) # load 0xe565f12b from memory into f8
li x3, 0xc2bb837f # load x3 with value 0xc2bb837f
sw x3, 0(x2) # store 0xc2bb837f in memory
flw f7, 0(x2) # load 0xc2bb837f from memory into f7
fmul.s f3, f8, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x6, 0x51b48be9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbd445354 # load x3 with value 0xbd445354
sw x3, 0(x2) # store 0xbd445354 in memory
flw f17, 0(x2) # load 0xbd445354 from memory into f17
li x3, 0x7e73d91c # load x3 with value 0x7e73d91c
sw x3, 0(x2) # store 0x7e73d91c in memory
flw f8, 0(x2) # load 0x7e73d91c from memory into f8
fmul.s f6, f17, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x22, 0xe7f0a792 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5adc0f1a # load x3 with value 0x5adc0f1a
sw x3, 0(x2) # store 0x5adc0f1a in memory
flw f2, 0(x2) # load 0x5adc0f1a from memory into f2
li x3, 0xf352500b # load x3 with value 0xf352500b
sw x3, 0(x2) # store 0xf352500b in memory
flw f9, 0(x2) # load 0xf352500b from memory into f9
fmul.s f22, f2, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x4, 0x3ebca4a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x28eb7af7 # load x3 with value 0x28eb7af7
sw x3, 0(x2) # store 0x28eb7af7 in memory
flw f24, 0(x2) # load 0x28eb7af7 from memory into f24
li x3, 0x4e462541 # load x3 with value 0x4e462541
sw x3, 0(x2) # store 0x4e462541 in memory
flw f10, 0(x2) # load 0x4e462541 from memory into f10
fmul.s f4, f24, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x2, 0x05ddaa00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x445a097a # load x3 with value 0x445a097a
sw x3, 0(x2) # store 0x445a097a in memory
flw f27, 0(x2) # load 0x445a097a from memory into f27
li x3, 0xe71ec16d # load x3 with value 0xe71ec16d
sw x3, 0(x2) # store 0xe71ec16d in memory
flw f11, 0(x2) # load 0xe71ec16d from memory into f11
fmul.s f2, f27, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x14, 0xd025badc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffa8cf0b # load x3 with value 0xffa8cf0b
sw x3, 0(x2) # store 0xffa8cf0b in memory
flw f13, 0(x2) # load 0xffa8cf0b from memory into f13
li x3, 0xcf2f0f4a # load x3 with value 0xcf2f0f4a
sw x3, 0(x2) # store 0xcf2f0f4a in memory
flw f12, 0(x2) # load 0xcf2f0f4a from memory into f12
fmul.s f14, f13, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x29, 0x5b19e635 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x92e8bbf1 # load x3 with value 0x92e8bbf1
sw x3, 0(x2) # store 0x92e8bbf1 in memory
flw f17, 0(x2) # load 0x92e8bbf1 from memory into f17
li x3, 0x6e1021f0 # load x3 with value 0x6e1021f0
sw x3, 0(x2) # store 0x6e1021f0 in memory
flw f13, 0(x2) # load 0x6e1021f0 from memory into f13
fmul.s f29, f17, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x20, 0x53451c05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x34e83625 # load x3 with value 0x34e83625
sw x3, 0(x2) # store 0x34e83625 in memory
flw f24, 0(x2) # load 0x34e83625 from memory into f24
li x3, 0x9cd19704 # load x3 with value 0x9cd19704
sw x3, 0(x2) # store 0x9cd19704 in memory
flw f14, 0(x2) # load 0x9cd19704 from memory into f14
fmul.s f20, f24, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x14, 0xd9e36a45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xab6f0e6f # load x3 with value 0xab6f0e6f
sw x3, 0(x2) # store 0xab6f0e6f in memory
flw f2, 0(x2) # load 0xab6f0e6f from memory into f2
li x3, 0xe038f0bd # load x3 with value 0xe038f0bd
sw x3, 0(x2) # store 0xe038f0bd in memory
flw f15, 0(x2) # load 0xe038f0bd from memory into f15
fmul.s f14, f2, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x8, 0x67e27d58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x47e6e674 # load x3 with value 0x47e6e674
sw x3, 0(x2) # store 0x47e6e674 in memory
flw f2, 0(x2) # load 0x47e6e674 from memory into f2
li x3, 0xb93c5c32 # load x3 with value 0xb93c5c32
sw x3, 0(x2) # store 0xb93c5c32 in memory
flw f16, 0(x2) # load 0xb93c5c32 from memory into f16
fmul.s f8, f2, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x26, 0xdc123da4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9887818f # load x3 with value 0x9887818f
sw x3, 0(x2) # store 0x9887818f in memory
flw f25, 0(x2) # load 0x9887818f from memory into f25
li x3, 0x6ff9fb42 # load x3 with value 0x6ff9fb42
sw x3, 0(x2) # store 0x6ff9fb42 in memory
flw f17, 0(x2) # load 0x6ff9fb42 from memory into f17
fmul.s f26, f25, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x23, 0x20c1e6fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd3babb5b # load x3 with value 0xd3babb5b
sw x3, 0(x2) # store 0xd3babb5b in memory
flw f11, 0(x2) # load 0xd3babb5b from memory into f11
li x3, 0xc78d9a3c # load x3 with value 0xc78d9a3c
sw x3, 0(x2) # store 0xc78d9a3c in memory
flw f18, 0(x2) # load 0xc78d9a3c from memory into f18
fmul.s f23, f11, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x23, 0x64197ce6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe210e1cf # load x3 with value 0xe210e1cf
sw x3, 0(x2) # store 0xe210e1cf in memory
flw f7, 0(x2) # load 0xe210e1cf from memory into f7
li x3, 0xf224ca5a # load x3 with value 0xf224ca5a
sw x3, 0(x2) # store 0xf224ca5a in memory
flw f19, 0(x2) # load 0xf224ca5a from memory into f19
fmul.s f23, f7, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x16, 0x0e997922 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x92531089 # load x3 with value 0x92531089
sw x3, 0(x2) # store 0x92531089 in memory
flw f11, 0(x2) # load 0x92531089 from memory into f11
li x3, 0x5bebed3c # load x3 with value 0x5bebed3c
sw x3, 0(x2) # store 0x5bebed3c in memory
flw f20, 0(x2) # load 0x5bebed3c from memory into f20
fmul.s f16, f11, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x11, 0xd1a0e23c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8bbda291 # load x3 with value 0x8bbda291
sw x3, 0(x2) # store 0x8bbda291 in memory
flw f29, 0(x2) # load 0x8bbda291 from memory into f29
li x3, 0x4a1d5e08 # load x3 with value 0x4a1d5e08
sw x3, 0(x2) # store 0x4a1d5e08 in memory
flw f21, 0(x2) # load 0x4a1d5e08 from memory into f21
fmul.s f11, f29, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x9, 0xf8d81e33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6b9b625a # load x3 with value 0x6b9b625a
sw x3, 0(x2) # store 0x6b9b625a in memory
flw f31, 0(x2) # load 0x6b9b625a from memory into f31
li x3, 0x01827bef # load x3 with value 0x01827bef
sw x3, 0(x2) # store 0x01827bef in memory
flw f22, 0(x2) # load 0x01827bef from memory into f22
fmul.s f9, f31, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x12, 0x7ba5bbbb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6328ee81 # load x3 with value 0x6328ee81
sw x3, 0(x2) # store 0x6328ee81 in memory
flw f28, 0(x2) # load 0x6328ee81 from memory into f28
li x3, 0x497bcc31 # load x3 with value 0x497bcc31
sw x3, 0(x2) # store 0x497bcc31 in memory
flw f23, 0(x2) # load 0x497bcc31 from memory into f23
fmul.s f12, f28, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x31, 0x78599721 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2c1c2d30 # load x3 with value 0x2c1c2d30
sw x3, 0(x2) # store 0x2c1c2d30 in memory
flw f13, 0(x2) # load 0x2c1c2d30 from memory into f13
li x3, 0xe6364580 # load x3 with value 0xe6364580
sw x3, 0(x2) # store 0xe6364580 in memory
flw f24, 0(x2) # load 0xe6364580 from memory into f24
fmul.s f31, f13, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x16, 0xd8577cee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x508d5347 # load x3 with value 0x508d5347
sw x3, 0(x2) # store 0x508d5347 in memory
flw f27, 0(x2) # load 0x508d5347 from memory into f27
li x3, 0x24136308 # load x3 with value 0x24136308
sw x3, 0(x2) # store 0x24136308 in memory
flw f25, 0(x2) # load 0x24136308 from memory into f25
fmul.s f16, f27, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x6, 0xee00e110 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4436952d # load x3 with value 0x4436952d
sw x3, 0(x2) # store 0x4436952d in memory
flw f31, 0(x2) # load 0x4436952d from memory into f31
li x3, 0x55be5097 # load x3 with value 0x55be5097
sw x3, 0(x2) # store 0x55be5097 in memory
flw f26, 0(x2) # load 0x55be5097 from memory into f26
fmul.s f6, f31, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x8, 0xb53052ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6655239c # load x3 with value 0x6655239c
sw x3, 0(x2) # store 0x6655239c in memory
flw f21, 0(x2) # load 0x6655239c from memory into f21
li x3, 0xcc68fa2a # load x3 with value 0xcc68fa2a
sw x3, 0(x2) # store 0xcc68fa2a in memory
flw f27, 0(x2) # load 0xcc68fa2a from memory into f27
fmul.s f8, f21, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x27, 0x58a7b5f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x29dc20bd # load x3 with value 0x29dc20bd
sw x3, 0(x2) # store 0x29dc20bd in memory
flw f24, 0(x2) # load 0x29dc20bd from memory into f24
li x3, 0xd78d9f85 # load x3 with value 0xd78d9f85
sw x3, 0(x2) # store 0xd78d9f85 in memory
flw f28, 0(x2) # load 0xd78d9f85 from memory into f28
fmul.s f27, f24, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x5, 0x641b8bf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd47334b0 # load x3 with value 0xd47334b0
sw x3, 0(x2) # store 0xd47334b0 in memory
flw f24, 0(x2) # load 0xd47334b0 from memory into f24
li x3, 0x8ece7805 # load x3 with value 0x8ece7805
sw x3, 0(x2) # store 0x8ece7805 in memory
flw f29, 0(x2) # load 0x8ece7805 from memory into f29
fmul.s f5, f24, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x16, 0xd42126be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x27c9ae82 # load x3 with value 0x27c9ae82
sw x3, 0(x2) # store 0x27c9ae82 in memory
flw f19, 0(x2) # load 0x27c9ae82 from memory into f19
li x3, 0x03229234 # load x3 with value 0x03229234
sw x3, 0(x2) # store 0x03229234 in memory
flw f30, 0(x2) # load 0x03229234 from memory into f30
fmul.s f16, f19, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x25, 0x92a5624f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8311c93c # load x3 with value 0x8311c93c
sw x3, 0(x2) # store 0x8311c93c in memory
flw f5, 0(x2) # load 0x8311c93c from memory into f5
li x3, 0x019d6ac0 # load x3 with value 0x019d6ac0
sw x3, 0(x2) # store 0x019d6ac0 in memory
flw f31, 0(x2) # load 0x019d6ac0 from memory into f31
fmul.s f25, f5, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
