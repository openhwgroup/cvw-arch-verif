///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zfh//WALLY-COV-fcvt.h.s.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.040552
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


# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x16, 0xf5c14dc98c086e7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f10, 0(x2) # load 0x00000000 from memory into f10
fcvt.h.s f16, f10 # perform operation
fcvt.h.s f16, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
li x25, 0x8ac838296fa9426a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f30, 0(x2) # load 0x80000000 from memory into f30
fcvt.h.s f25, f30 # perform operation
fcvt.h.s f25, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
li x22, 0x6863635f6b4138a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f8, 0(x2) # load 0x3f800000 from memory into f8
fcvt.h.s f22, f8 # perform operation
fcvt.h.s f22, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
li x4, 0xdbfd223dd8328c21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f29, 0(x2) # load 0xbf800000 from memory into f29
fcvt.h.s f4, f29 # perform operation
fcvt.h.s f4, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
li x14, 0xc0d06bdc60bb3787 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
fcvt.h.s f14, f31 # perform operation
fcvt.h.s f14, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
li x12, 0x88c83e663ff953e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f22, 0(x2) # load 0xbfc00000 from memory into f22
fcvt.h.s f12, f22 # perform operation
fcvt.h.s f12, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
li x7, 0x512700cf3c5d0a99 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
fcvt.h.s f7, f13 # perform operation
fcvt.h.s f7, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
li x9, 0xd65e5710d48c6ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f1, 0(x2) # load 0xc0000000 from memory into f1
fcvt.h.s f9, f1 # perform operation
fcvt.h.s f9, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
li x20, 0xcaf794a849806414 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f28, 0(x2) # load 0x00800000 from memory into f28
fcvt.h.s f20, f28 # perform operation
fcvt.h.s f20, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
li x16, 0x9e905c5f49c32e4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f29, 0(x2) # load 0x80800000 from memory into f29
fcvt.h.s f16, f29 # perform operation
fcvt.h.s f16, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
li x16, 0x0022551973673e4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f1, 0(x2) # load 0x7f7fffff from memory into f1
fcvt.h.s f16, f1 # perform operation
fcvt.h.s f16, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
li x22, 0xce5118e8d9bc8889 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f27, 0(x2) # load 0xff7fffff from memory into f27
fcvt.h.s f22, f27 # perform operation
fcvt.h.s f22, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
li x16, 0x56a674d8917132ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f11, 0(x2) # load 0x007fffff from memory into f11
fcvt.h.s f16, f11 # perform operation
fcvt.h.s f16, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
li x13, 0x9a514536ede7f7c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
fcvt.h.s f13, f2 # perform operation
fcvt.h.s f13, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
li x24, 0x1a855923bf588fb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f13, 0(x2) # load 0x00400000 from memory into f13
fcvt.h.s f24, f13 # perform operation
fcvt.h.s f24, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
li x1, 0x3bc2761a3931fc26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f4, 0(x2) # load 0x80400000 from memory into f4
fcvt.h.s f1, f4 # perform operation
fcvt.h.s f1, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x30, 0xc3f0290109cb166d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f27, 0(x2) # load 0x00000001 from memory into f27
fcvt.h.s f30, f27 # perform operation
fcvt.h.s f30, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
li x9, 0xf858de2d0fdff82b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f12, 0(x2) # load 0x80000001 from memory into f12
fcvt.h.s f9, f12 # perform operation
fcvt.h.s f9, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
li x21, 0x5caf157bf50d0fc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f14, 0(x2) # load 0x7f800000 from memory into f14
fcvt.h.s f21, f14 # perform operation
fcvt.h.s f21, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
li x13, 0xaed23c39c6550e0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f12, 0(x2) # load 0xff800000 from memory into f12
fcvt.h.s f13, f12 # perform operation
fcvt.h.s f13, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
li x2, 0x99d1de01ff6279cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f17, 0(x2) # load 0x7fc00000 from memory into f17
fcvt.h.s f2, f17 # perform operation
fcvt.h.s f2, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
li x8, 0x59ac081dd991566b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f13, 0(x2) # load 0x7fffffff from memory into f13
fcvt.h.s f8, f13 # perform operation
fcvt.h.s f8, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
li x16, 0xa190a2e125e546dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f28, 0(x2) # load 0x7f800001 from memory into f28
fcvt.h.s f16, f28 # perform operation
fcvt.h.s f16, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
li x25, 0xeb2d1d80bf682508 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f13, 0(x2) # load 0x7fbfffff from memory into f13
fcvt.h.s f25, f13 # perform operation
fcvt.h.s f25, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
li x26, 0xa7fa294435cd83d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f10, 0(x2) # load 0x7ef8654f from memory into f10
fcvt.h.s f26, f10 # perform operation
fcvt.h.s f26, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
li x17, 0x4d300f460f0a7b3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f5, 0(x2) # load 0x813d9ab0 from memory into f5
fcvt.h.s f17, f5 # perform operation
fcvt.h.s f17, f5 # perform operation

# Testcase cp_frm
li x21, 0x5e581b345ab79349 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xedae49e1e06ce8fd # load x3 with value 0xedae49e1e06ce8fd
sw x3, 0(x2) # store 0xedae49e1e06ce8fd in memory
flw f20, 0(x2) # load 0xedae49e1e06ce8fd from memory into f20
fcvt.h.s f21, f20 # perform operation
fcvt.h.s f21, f20, dyn # perform operation
fcvt.h.s f21, f20, rdn # perform operation
fcvt.h.s f21, f20, rmm # perform operation
fcvt.h.s f21, f20, rne # perform operation
fcvt.h.s f21, f20, rtz # perform operation
fcvt.h.s f21, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.s f21, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.s f21, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.s f21, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.s f21, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.s f21, f20 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0xe9b9838be1e58f35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf00edc2ee7812d92 # load x3 with value 0xf00edc2ee7812d92
sw x3, 0(x2) # store 0xf00edc2ee7812d92 in memory
flw f6, 0(x2) # load 0xf00edc2ee7812d92 from memory into f6
fcvt.h.s f0, f6 # perform operation
fcvt.h.s f0, f6 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x0d4af9f80c25610e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x41bd71f7c7fe6458 # load x3 with value 0x41bd71f7c7fe6458
sw x3, 0(x2) # store 0x41bd71f7c7fe6458 in memory
flw f5, 0(x2) # load 0x41bd71f7c7fe6458 from memory into f5
fcvt.h.s f1, f5 # perform operation
fcvt.h.s f1, f5 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0xe045f78c4ce323a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbb11ea03b5be9fc # load x3 with value 0xbb11ea03b5be9fc
sw x3, 0(x2) # store 0xbb11ea03b5be9fc in memory
flw f21, 0(x2) # load 0xbb11ea03b5be9fc from memory into f21
fcvt.h.s f2, f21 # perform operation
fcvt.h.s f2, f21 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x9aa8aeabea8923da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa41e18685f52e3d6 # load x3 with value 0xa41e18685f52e3d6
sw x3, 0(x2) # store 0xa41e18685f52e3d6 in memory
flw f19, 0(x2) # load 0xa41e18685f52e3d6 from memory into f19
fcvt.h.s f3, f19 # perform operation
fcvt.h.s f3, f19 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x10a50c624b6ae00d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2eac27261763dfb8 # load x3 with value 0x2eac27261763dfb8
sw x3, 0(x2) # store 0x2eac27261763dfb8 in memory
flw f22, 0(x2) # load 0x2eac27261763dfb8 from memory into f22
fcvt.h.s f4, f22 # perform operation
fcvt.h.s f4, f22 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x8f234dc2d6873d62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd256e4fcb0e11600 # load x3 with value 0xd256e4fcb0e11600
sw x3, 0(x2) # store 0xd256e4fcb0e11600 in memory
flw f31, 0(x2) # load 0xd256e4fcb0e11600 from memory into f31
fcvt.h.s f5, f31 # perform operation
fcvt.h.s f5, f31 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x9d00da26280dd449 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2d86f60df443a5f5 # load x3 with value 0x2d86f60df443a5f5
sw x3, 0(x2) # store 0x2d86f60df443a5f5 in memory
flw f25, 0(x2) # load 0x2d86f60df443a5f5 from memory into f25
fcvt.h.s f6, f25 # perform operation
fcvt.h.s f6, f25 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0xf718f923785e5780 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf5f3c27cac1fc83d # load x3 with value 0xf5f3c27cac1fc83d
sw x3, 0(x2) # store 0xf5f3c27cac1fc83d in memory
flw f20, 0(x2) # load 0xf5f3c27cac1fc83d from memory into f20
fcvt.h.s f7, f20 # perform operation
fcvt.h.s f7, f20 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x7e5d4d339acdf7a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x91c4884485318eb4 # load x3 with value 0x91c4884485318eb4
sw x3, 0(x2) # store 0x91c4884485318eb4 in memory
flw f24, 0(x2) # load 0x91c4884485318eb4 from memory into f24
fcvt.h.s f8, f24 # perform operation
fcvt.h.s f8, f24 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0xa2ca25c2cfc972f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd48f58fee578adfd # load x3 with value 0xd48f58fee578adfd
sw x3, 0(x2) # store 0xd48f58fee578adfd in memory
flw f8, 0(x2) # load 0xd48f58fee578adfd from memory into f8
fcvt.h.s f9, f8 # perform operation
fcvt.h.s f9, f8 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x7b118c09c93bf716 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x22b5812329ed3fa1 # load x3 with value 0x22b5812329ed3fa1
sw x3, 0(x2) # store 0x22b5812329ed3fa1 in memory
flw f9, 0(x2) # load 0x22b5812329ed3fa1 from memory into f9
fcvt.h.s f10, f9 # perform operation
fcvt.h.s f10, f9 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0xeee95772cb39834e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x848bca500013e397 # load x3 with value 0x848bca500013e397
sw x3, 0(x2) # store 0x848bca500013e397 in memory
flw f8, 0(x2) # load 0x848bca500013e397 from memory into f8
fcvt.h.s f11, f8 # perform operation
fcvt.h.s f11, f8 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x29a6a3fc2120cd8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf28d11e24dd2d27a # load x3 with value 0xf28d11e24dd2d27a
sw x3, 0(x2) # store 0xf28d11e24dd2d27a in memory
flw f18, 0(x2) # load 0xf28d11e24dd2d27a from memory into f18
fcvt.h.s f12, f18 # perform operation
fcvt.h.s f12, f18 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x59507e93b9ab426e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe3aaa641e2863b23 # load x3 with value 0xe3aaa641e2863b23
sw x3, 0(x2) # store 0xe3aaa641e2863b23 in memory
flw f7, 0(x2) # load 0xe3aaa641e2863b23 from memory into f7
fcvt.h.s f13, f7 # perform operation
fcvt.h.s f13, f7 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x217e79bf8f3a7cab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x31968d5b6effbab1 # load x3 with value 0x31968d5b6effbab1
sw x3, 0(x2) # store 0x31968d5b6effbab1 in memory
flw f3, 0(x2) # load 0x31968d5b6effbab1 from memory into f3
fcvt.h.s f14, f3 # perform operation
fcvt.h.s f14, f3 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x6b832111201dc0e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6e76aa4ed463b571 # load x3 with value 0x6e76aa4ed463b571
sw x3, 0(x2) # store 0x6e76aa4ed463b571 in memory
flw f15, 0(x2) # load 0x6e76aa4ed463b571 from memory into f15
fcvt.h.s f15, f15 # perform operation
fcvt.h.s f15, f15 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x41b637ba337a40c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x65f7584c592560df # load x3 with value 0x65f7584c592560df
sw x3, 0(x2) # store 0x65f7584c592560df in memory
flw f28, 0(x2) # load 0x65f7584c592560df from memory into f28
fcvt.h.s f16, f28 # perform operation
fcvt.h.s f16, f28 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x5ad39c2160ebd5f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x69e6e5ef062e02ac # load x3 with value 0x69e6e5ef062e02ac
sw x3, 0(x2) # store 0x69e6e5ef062e02ac in memory
flw f24, 0(x2) # load 0x69e6e5ef062e02ac from memory into f24
fcvt.h.s f17, f24 # perform operation
fcvt.h.s f17, f24 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x07643f8b9f621db7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd6bee1a5acb13a81 # load x3 with value 0xd6bee1a5acb13a81
sw x3, 0(x2) # store 0xd6bee1a5acb13a81 in memory
flw f3, 0(x2) # load 0xd6bee1a5acb13a81 from memory into f3
fcvt.h.s f18, f3 # perform operation
fcvt.h.s f18, f3 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0xca7a9ec909e6b9d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x37b4d281c28be979 # load x3 with value 0x37b4d281c28be979
sw x3, 0(x2) # store 0x37b4d281c28be979 in memory
flw f4, 0(x2) # load 0x37b4d281c28be979 from memory into f4
fcvt.h.s f19, f4 # perform operation
fcvt.h.s f19, f4 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x3a7d9ad4b6083479 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa64114f1a6181869 # load x3 with value 0xa64114f1a6181869
sw x3, 0(x2) # store 0xa64114f1a6181869 in memory
flw f14, 0(x2) # load 0xa64114f1a6181869 from memory into f14
fcvt.h.s f20, f14 # perform operation
fcvt.h.s f20, f14 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0xdda9559ecf795377 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x30c44f5d12b39a3a # load x3 with value 0x30c44f5d12b39a3a
sw x3, 0(x2) # store 0x30c44f5d12b39a3a in memory
flw f13, 0(x2) # load 0x30c44f5d12b39a3a from memory into f13
fcvt.h.s f21, f13 # perform operation
fcvt.h.s f21, f13 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x605322449e1fa9d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4514837c7842cb01 # load x3 with value 0x4514837c7842cb01
sw x3, 0(x2) # store 0x4514837c7842cb01 in memory
flw f21, 0(x2) # load 0x4514837c7842cb01 from memory into f21
fcvt.h.s f22, f21 # perform operation
fcvt.h.s f22, f21 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x31ffd079610608c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf3e02ab818f200b4 # load x3 with value 0xf3e02ab818f200b4
sw x3, 0(x2) # store 0xf3e02ab818f200b4 in memory
flw f17, 0(x2) # load 0xf3e02ab818f200b4 from memory into f17
fcvt.h.s f23, f17 # perform operation
fcvt.h.s f23, f17 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0xe200b2e76c009ad7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9700dc878498ef11 # load x3 with value 0x9700dc878498ef11
sw x3, 0(x2) # store 0x9700dc878498ef11 in memory
flw f27, 0(x2) # load 0x9700dc878498ef11 from memory into f27
fcvt.h.s f24, f27 # perform operation
fcvt.h.s f24, f27 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x930146db54b5fdb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x58fca345fb2eebfb # load x3 with value 0x58fca345fb2eebfb
sw x3, 0(x2) # store 0x58fca345fb2eebfb in memory
flw f16, 0(x2) # load 0x58fca345fb2eebfb from memory into f16
fcvt.h.s f25, f16 # perform operation
fcvt.h.s f25, f16 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x34f8ce065a80c6e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc1ea2f98578be703 # load x3 with value 0xc1ea2f98578be703
sw x3, 0(x2) # store 0xc1ea2f98578be703 in memory
flw f21, 0(x2) # load 0xc1ea2f98578be703 from memory into f21
fcvt.h.s f26, f21 # perform operation
fcvt.h.s f26, f21 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0xf9dddb6a7abe020f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf688a822ae40b14f # load x3 with value 0xf688a822ae40b14f
sw x3, 0(x2) # store 0xf688a822ae40b14f in memory
flw f26, 0(x2) # load 0xf688a822ae40b14f from memory into f26
fcvt.h.s f27, f26 # perform operation
fcvt.h.s f27, f26 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0xd65432554e02bd8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xef47176deb4ad22a # load x3 with value 0xef47176deb4ad22a
sw x3, 0(x2) # store 0xef47176deb4ad22a in memory
flw f28, 0(x2) # load 0xef47176deb4ad22a from memory into f28
fcvt.h.s f28, f28 # perform operation
fcvt.h.s f28, f28 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x61223477d02f0ed7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2c63588d1bb37baa # load x3 with value 0x2c63588d1bb37baa
sw x3, 0(x2) # store 0x2c63588d1bb37baa in memory
flw f19, 0(x2) # load 0x2c63588d1bb37baa from memory into f19
fcvt.h.s f29, f19 # perform operation
fcvt.h.s f29, f19 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0xb03256328c0b68a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x597279807d88b99a # load x3 with value 0x597279807d88b99a
sw x3, 0(x2) # store 0x597279807d88b99a in memory
flw f23, 0(x2) # load 0x597279807d88b99a from memory into f23
fcvt.h.s f30, f23 # perform operation
fcvt.h.s f30, f23 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0xcb46eb45cc3d5739 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1a9914ff5754ddb # load x3 with value 0x1a9914ff5754ddb
sw x3, 0(x2) # store 0x1a9914ff5754ddb in memory
flw f27, 0(x2) # load 0x1a9914ff5754ddb from memory into f27
fcvt.h.s f31, f27 # perform operation
fcvt.h.s f31, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x29, 0x5c0bd9feb5711b26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7316fbf94301e8cd # load x3 with value 0x7316fbf94301e8cd
sw x3, 0(x2) # store 0x7316fbf94301e8cd in memory
flw f0, 0(x2) # load 0x7316fbf94301e8cd from memory into f0
fcvt.h.s f29, f0 # perform operation
fcvt.h.s f29, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x22, 0xab0df9e2b0db2e48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9d4a9f372d89c914 # load x3 with value 0x9d4a9f372d89c914
sw x3, 0(x2) # store 0x9d4a9f372d89c914 in memory
flw f1, 0(x2) # load 0x9d4a9f372d89c914 from memory into f1
fcvt.h.s f22, f1 # perform operation
fcvt.h.s f22, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x8, 0xe7e339cf39df767f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc3a39071a0f04519 # load x3 with value 0xc3a39071a0f04519
sw x3, 0(x2) # store 0xc3a39071a0f04519 in memory
flw f2, 0(x2) # load 0xc3a39071a0f04519 from memory into f2
fcvt.h.s f8, f2 # perform operation
fcvt.h.s f8, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x25, 0x20c6a227933a6954 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x37b1d8dfc7f70e42 # load x3 with value 0x37b1d8dfc7f70e42
sw x3, 0(x2) # store 0x37b1d8dfc7f70e42 in memory
flw f3, 0(x2) # load 0x37b1d8dfc7f70e42 from memory into f3
fcvt.h.s f25, f3 # perform operation
fcvt.h.s f25, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x31, 0x56f4d7a28d7a84cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x51c8ffe14d378d8c # load x3 with value 0x51c8ffe14d378d8c
sw x3, 0(x2) # store 0x51c8ffe14d378d8c in memory
flw f4, 0(x2) # load 0x51c8ffe14d378d8c from memory into f4
fcvt.h.s f31, f4 # perform operation
fcvt.h.s f31, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x22, 0x76cd3c64fe70789d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdfb67d8af58f2891 # load x3 with value 0xdfb67d8af58f2891
sw x3, 0(x2) # store 0xdfb67d8af58f2891 in memory
flw f5, 0(x2) # load 0xdfb67d8af58f2891 from memory into f5
fcvt.h.s f22, f5 # perform operation
fcvt.h.s f22, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x19, 0x06d874a7766e162e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x49e1a551c4ea56b3 # load x3 with value 0x49e1a551c4ea56b3
sw x3, 0(x2) # store 0x49e1a551c4ea56b3 in memory
flw f6, 0(x2) # load 0x49e1a551c4ea56b3 from memory into f6
fcvt.h.s f19, f6 # perform operation
fcvt.h.s f19, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x19, 0xb4b9f8ba45c4c012 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3957259b50ca03c1 # load x3 with value 0x3957259b50ca03c1
sw x3, 0(x2) # store 0x3957259b50ca03c1 in memory
flw f7, 0(x2) # load 0x3957259b50ca03c1 from memory into f7
fcvt.h.s f19, f7 # perform operation
fcvt.h.s f19, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x16, 0x37ea4941d53cea0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x21b3d1638ce9a550 # load x3 with value 0x21b3d1638ce9a550
sw x3, 0(x2) # store 0x21b3d1638ce9a550 in memory
flw f8, 0(x2) # load 0x21b3d1638ce9a550 from memory into f8
fcvt.h.s f16, f8 # perform operation
fcvt.h.s f16, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x19, 0x6b890e14cd1d34cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x421e494a30986f80 # load x3 with value 0x421e494a30986f80
sw x3, 0(x2) # store 0x421e494a30986f80 in memory
flw f9, 0(x2) # load 0x421e494a30986f80 from memory into f9
fcvt.h.s f19, f9 # perform operation
fcvt.h.s f19, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x11, 0x7c59a1f5a5d399cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe901c62b4e63901f # load x3 with value 0xe901c62b4e63901f
sw x3, 0(x2) # store 0xe901c62b4e63901f in memory
flw f10, 0(x2) # load 0xe901c62b4e63901f from memory into f10
fcvt.h.s f11, f10 # perform operation
fcvt.h.s f11, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x17, 0x559f838711e55c9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x103f25c9422213d5 # load x3 with value 0x103f25c9422213d5
sw x3, 0(x2) # store 0x103f25c9422213d5 in memory
flw f11, 0(x2) # load 0x103f25c9422213d5 from memory into f11
fcvt.h.s f17, f11 # perform operation
fcvt.h.s f17, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x17, 0xfa1b165449b6e2b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x801fda2da27a9868 # load x3 with value 0x801fda2da27a9868
sw x3, 0(x2) # store 0x801fda2da27a9868 in memory
flw f12, 0(x2) # load 0x801fda2da27a9868 from memory into f12
fcvt.h.s f17, f12 # perform operation
fcvt.h.s f17, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x20, 0x2fe18d7873edff9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe23a127940fda1b8 # load x3 with value 0xe23a127940fda1b8
sw x3, 0(x2) # store 0xe23a127940fda1b8 in memory
flw f13, 0(x2) # load 0xe23a127940fda1b8 from memory into f13
fcvt.h.s f20, f13 # perform operation
fcvt.h.s f20, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x23, 0x9a97cd17abb24620 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfc8415315e3a78bf # load x3 with value 0xfc8415315e3a78bf
sw x3, 0(x2) # store 0xfc8415315e3a78bf in memory
flw f14, 0(x2) # load 0xfc8415315e3a78bf from memory into f14
fcvt.h.s f23, f14 # perform operation
fcvt.h.s f23, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x3, 0x91a4e08264a32c59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xde199cb746f741f9 # load x3 with value 0xde199cb746f741f9
sw x3, 0(x2) # store 0xde199cb746f741f9 in memory
flw f15, 0(x2) # load 0xde199cb746f741f9 from memory into f15
fcvt.h.s f3, f15 # perform operation
fcvt.h.s f3, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x7, 0x7280c59466a601c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe8200e516db1523d # load x3 with value 0xe8200e516db1523d
sw x3, 0(x2) # store 0xe8200e516db1523d in memory
flw f16, 0(x2) # load 0xe8200e516db1523d from memory into f16
fcvt.h.s f7, f16 # perform operation
fcvt.h.s f7, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x21, 0x33fc87af10f5ff2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfb4ef6d43df01f49 # load x3 with value 0xfb4ef6d43df01f49
sw x3, 0(x2) # store 0xfb4ef6d43df01f49 in memory
flw f17, 0(x2) # load 0xfb4ef6d43df01f49 from memory into f17
fcvt.h.s f21, f17 # perform operation
fcvt.h.s f21, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x4, 0x9627fe6146c585ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x36d93fe6c62773b2 # load x3 with value 0x36d93fe6c62773b2
sw x3, 0(x2) # store 0x36d93fe6c62773b2 in memory
flw f18, 0(x2) # load 0x36d93fe6c62773b2 from memory into f18
fcvt.h.s f4, f18 # perform operation
fcvt.h.s f4, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x26, 0x9b650149797f9b36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1bc66c5aa89edc9e # load x3 with value 0x1bc66c5aa89edc9e
sw x3, 0(x2) # store 0x1bc66c5aa89edc9e in memory
flw f19, 0(x2) # load 0x1bc66c5aa89edc9e from memory into f19
fcvt.h.s f26, f19 # perform operation
fcvt.h.s f26, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x21, 0x6c98a8bc10fef0bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc1b22bebbe08e1e3 # load x3 with value 0xc1b22bebbe08e1e3
sw x3, 0(x2) # store 0xc1b22bebbe08e1e3 in memory
flw f20, 0(x2) # load 0xc1b22bebbe08e1e3 from memory into f20
fcvt.h.s f21, f20 # perform operation
fcvt.h.s f21, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x15, 0x6f9204fa0e736c46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7b5e76bc6907864d # load x3 with value 0x7b5e76bc6907864d
sw x3, 0(x2) # store 0x7b5e76bc6907864d in memory
flw f21, 0(x2) # load 0x7b5e76bc6907864d from memory into f21
fcvt.h.s f15, f21 # perform operation
fcvt.h.s f15, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x6, 0xe52d199e8643acc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7a27c298e7d64977 # load x3 with value 0x7a27c298e7d64977
sw x3, 0(x2) # store 0x7a27c298e7d64977 in memory
flw f22, 0(x2) # load 0x7a27c298e7d64977 from memory into f22
fcvt.h.s f6, f22 # perform operation
fcvt.h.s f6, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x15, 0xf767822ea0017bf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8d5b80158234c2c9 # load x3 with value 0x8d5b80158234c2c9
sw x3, 0(x2) # store 0x8d5b80158234c2c9 in memory
flw f23, 0(x2) # load 0x8d5b80158234c2c9 from memory into f23
fcvt.h.s f15, f23 # perform operation
fcvt.h.s f15, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x29, 0xe14a802e28d87d70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd88c993d6d506135 # load x3 with value 0xd88c993d6d506135
sw x3, 0(x2) # store 0xd88c993d6d506135 in memory
flw f24, 0(x2) # load 0xd88c993d6d506135 from memory into f24
fcvt.h.s f29, f24 # perform operation
fcvt.h.s f29, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x28, 0x90a2b2beab8263bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x54b3c144991712a6 # load x3 with value 0x54b3c144991712a6
sw x3, 0(x2) # store 0x54b3c144991712a6 in memory
flw f25, 0(x2) # load 0x54b3c144991712a6 from memory into f25
fcvt.h.s f28, f25 # perform operation
fcvt.h.s f28, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x19, 0x6b4fef6fbcc1221b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x43363ce2f6e29d1e # load x3 with value 0x43363ce2f6e29d1e
sw x3, 0(x2) # store 0x43363ce2f6e29d1e in memory
flw f26, 0(x2) # load 0x43363ce2f6e29d1e from memory into f26
fcvt.h.s f19, f26 # perform operation
fcvt.h.s f19, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x13, 0xec3dded00512c143 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x48f47778d347df20 # load x3 with value 0x48f47778d347df20
sw x3, 0(x2) # store 0x48f47778d347df20 in memory
flw f27, 0(x2) # load 0x48f47778d347df20 from memory into f27
fcvt.h.s f13, f27 # perform operation
fcvt.h.s f13, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x26, 0xea7aa0bb8f3ace40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7db65f1968ab9b24 # load x3 with value 0x7db65f1968ab9b24
sw x3, 0(x2) # store 0x7db65f1968ab9b24 in memory
flw f28, 0(x2) # load 0x7db65f1968ab9b24 from memory into f28
fcvt.h.s f26, f28 # perform operation
fcvt.h.s f26, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x13, 0x68850b63a8cb2b24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x799415eeddf9a4b2 # load x3 with value 0x799415eeddf9a4b2
sw x3, 0(x2) # store 0x799415eeddf9a4b2 in memory
flw f29, 0(x2) # load 0x799415eeddf9a4b2 from memory into f29
fcvt.h.s f13, f29 # perform operation
fcvt.h.s f13, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x19, 0x6cbb447f78153ffb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6efcd44b45f25704 # load x3 with value 0x6efcd44b45f25704
sw x3, 0(x2) # store 0x6efcd44b45f25704 in memory
flw f30, 0(x2) # load 0x6efcd44b45f25704 from memory into f30
fcvt.h.s f19, f30 # perform operation
fcvt.h.s f19, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x20, 0x12d5def3ff8c915a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x49bb8f8226c3c301 # load x3 with value 0x49bb8f8226c3c301
sw x3, 0(x2) # store 0x49bb8f8226c3c301 in memory
flw f31, 0(x2) # load 0x49bb8f8226c3c301 from memory into f31
fcvt.h.s f20, f31 # perform operation
fcvt.h.s f20, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
