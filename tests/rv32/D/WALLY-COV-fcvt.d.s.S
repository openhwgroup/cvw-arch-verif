///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/D//WALLY-COV-fcvt.d.s.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.850643
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
li x30, 0x9ffb5fe5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sw x3, 0(x2) # store 0x0000000000000000 in memory
flw f8, 0(x2) # load 0x0000000000000000 from memory into f8
fcvt.d.s f30, f8 # perform operation
fcvt.d.s f30, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
li x1, 0xfc751813 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000080000000 # load x3 with value 0x0000000080000000
sw x3, 0(x2) # store 0x0000000080000000 in memory
flw f3, 0(x2) # load 0x0000000080000000 from memory into f3
fcvt.d.s f1, f3 # perform operation
fcvt.d.s f1, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
li x1, 0xb8c80982 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sw x3, 0(x2) # store 0x000000003f800000 in memory
flw f31, 0(x2) # load 0x000000003f800000 from memory into f31
fcvt.d.s f1, f31 # perform operation
fcvt.d.s f1, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
li x31, 0x184266fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000bf800000 # load x3 with value 0x00000000bf800000
sw x3, 0(x2) # store 0x00000000bf800000 in memory
flw f16, 0(x2) # load 0x00000000bf800000 from memory into f16
fcvt.d.s f31, f16 # perform operation
fcvt.d.s f31, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
li x11, 0xe469a8f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000003fc00000 # load x3 with value 0x000000003fc00000
sw x3, 0(x2) # store 0x000000003fc00000 in memory
flw f9, 0(x2) # load 0x000000003fc00000 from memory into f9
fcvt.d.s f11, f9 # perform operation
fcvt.d.s f11, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
li x26, 0xb907bae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000bfc00000 # load x3 with value 0x00000000bfc00000
sw x3, 0(x2) # store 0x00000000bfc00000 in memory
flw f21, 0(x2) # load 0x00000000bfc00000 from memory into f21
fcvt.d.s f26, f21 # perform operation
fcvt.d.s f26, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
li x3, 0x7c5ff4a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000040000000 # load x3 with value 0x0000000040000000
sw x3, 0(x2) # store 0x0000000040000000 in memory
flw f10, 0(x2) # load 0x0000000040000000 from memory into f10
fcvt.d.s f3, f10 # perform operation
fcvt.d.s f3, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
li x23, 0xd05d914a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000c0000000 # load x3 with value 0x00000000c0000000
sw x3, 0(x2) # store 0x00000000c0000000 in memory
flw f22, 0(x2) # load 0x00000000c0000000 from memory into f22
fcvt.d.s f23, f22 # perform operation
fcvt.d.s f23, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
li x15, 0x3b06a512 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000800000 # load x3 with value 0x0000000000800000
sw x3, 0(x2) # store 0x0000000000800000 in memory
flw f26, 0(x2) # load 0x0000000000800000 from memory into f26
fcvt.d.s f15, f26 # perform operation
fcvt.d.s f15, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
li x16, 0x9850bf6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000080800000 # load x3 with value 0x0000000080800000
sw x3, 0(x2) # store 0x0000000080800000 in memory
flw f17, 0(x2) # load 0x0000000080800000 from memory into f17
fcvt.d.s f16, f17 # perform operation
fcvt.d.s f16, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
li x17, 0x7568be4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000007f7fffff # load x3 with value 0x000000007f7fffff
sw x3, 0(x2) # store 0x000000007f7fffff in memory
flw f2, 0(x2) # load 0x000000007f7fffff from memory into f2
fcvt.d.s f17, f2 # perform operation
fcvt.d.s f17, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
li x15, 0x6c2d8d72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000ff7fffff # load x3 with value 0x00000000ff7fffff
sw x3, 0(x2) # store 0x00000000ff7fffff in memory
flw f10, 0(x2) # load 0x00000000ff7fffff from memory into f10
fcvt.d.s f15, f10 # perform operation
fcvt.d.s f15, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
li x16, 0x4b27c2ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000007fffff # load x3 with value 0x00000000007fffff
sw x3, 0(x2) # store 0x00000000007fffff in memory
flw f8, 0(x2) # load 0x00000000007fffff from memory into f8
fcvt.d.s f16, f8 # perform operation
fcvt.d.s f16, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
li x7, 0x5f0c3d6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000807fffff # load x3 with value 0x00000000807fffff
sw x3, 0(x2) # store 0x00000000807fffff in memory
flw f11, 0(x2) # load 0x00000000807fffff from memory into f11
fcvt.d.s f7, f11 # perform operation
fcvt.d.s f7, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
li x12, 0x3ae29ca5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000400000 # load x3 with value 0x0000000000400000
sw x3, 0(x2) # store 0x0000000000400000 in memory
flw f25, 0(x2) # load 0x0000000000400000 from memory into f25
fcvt.d.s f12, f25 # perform operation
fcvt.d.s f12, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
li x5, 0x2a39b7c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000080400000 # load x3 with value 0x0000000080400000
sw x3, 0(x2) # store 0x0000000080400000 in memory
flw f16, 0(x2) # load 0x0000000080400000 from memory into f16
fcvt.d.s f5, f16 # perform operation
fcvt.d.s f5, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x21, 0x8f97a7dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sw x3, 0(x2) # store 0x0000000000000001 in memory
flw f11, 0(x2) # load 0x0000000000000001 from memory into f11
fcvt.d.s f21, f11 # perform operation
fcvt.d.s f21, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
li x21, 0xdab5f058 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000080000001 # load x3 with value 0x0000000080000001
sw x3, 0(x2) # store 0x0000000080000001 in memory
flw f2, 0(x2) # load 0x0000000080000001 from memory into f2
fcvt.d.s f21, f2 # perform operation
fcvt.d.s f21, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
li x16, 0x7d3c6960 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000007f800000 # load x3 with value 0x000000007f800000
sw x3, 0(x2) # store 0x000000007f800000 in memory
flw f21, 0(x2) # load 0x000000007f800000 from memory into f21
fcvt.d.s f16, f21 # perform operation
fcvt.d.s f16, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
li x20, 0x49b7ce34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000ff800000 # load x3 with value 0x00000000ff800000
sw x3, 0(x2) # store 0x00000000ff800000 in memory
flw f30, 0(x2) # load 0x00000000ff800000 from memory into f30
fcvt.d.s f20, f30 # perform operation
fcvt.d.s f20, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
li x3, 0xac61ba9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000007fc00000 # load x3 with value 0x000000007fc00000
sw x3, 0(x2) # store 0x000000007fc00000 in memory
flw f9, 0(x2) # load 0x000000007fc00000 from memory into f9
fcvt.d.s f3, f9 # perform operation
fcvt.d.s f3, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
li x26, 0x8bdd4b05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000007fffffff # load x3 with value 0x000000007fffffff
sw x3, 0(x2) # store 0x000000007fffffff in memory
flw f2, 0(x2) # load 0x000000007fffffff from memory into f2
fcvt.d.s f26, f2 # perform operation
fcvt.d.s f26, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
li x5, 0x762d9845 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000007f800001 # load x3 with value 0x000000007f800001
sw x3, 0(x2) # store 0x000000007f800001 in memory
flw f6, 0(x2) # load 0x000000007f800001 from memory into f6
fcvt.d.s f5, f6 # perform operation
fcvt.d.s f5, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
li x7, 0x3358cea3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000007fbfffff # load x3 with value 0x000000007fbfffff
sw x3, 0(x2) # store 0x000000007fbfffff in memory
flw f22, 0(x2) # load 0x000000007fbfffff from memory into f22
fcvt.d.s f7, f22 # perform operation
fcvt.d.s f7, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
li x26, 0x693e13a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000007ef8654f # load x3 with value 0x000000007ef8654f
sw x3, 0(x2) # store 0x000000007ef8654f in memory
flw f8, 0(x2) # load 0x000000007ef8654f from memory into f8
fcvt.d.s f26, f8 # perform operation
fcvt.d.s f26, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
li x10, 0x0a8d2d98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000813d9ab0 # load x3 with value 0x00000000813d9ab0
sw x3, 0(x2) # store 0x00000000813d9ab0 in memory
flw f21, 0(x2) # load 0x00000000813d9ab0 from memory into f21
fcvt.d.s f10, f21 # perform operation
fcvt.d.s f10, f21 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0xf45378ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000007d5c15dc # load x3 with value 0x000000007d5c15dc
sw x3, 0(x2) # store 0x000000007d5c15dc in memory
flw f31, 0(x2) # load 0x000000007d5c15dc from memory into f31
fcvt.d.s f0, f31 # perform operation
fcvt.d.s f0, f31 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x1a1d45e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000c6c9f42b # load x3 with value 0x00000000c6c9f42b
sw x3, 0(x2) # store 0x00000000c6c9f42b in memory
flw f31, 0(x2) # load 0x00000000c6c9f42b from memory into f31
fcvt.d.s f1, f31 # perform operation
fcvt.d.s f1, f31 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x277dcb64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000004a0d422 # load x3 with value 0x0000000004a0d422
sw x3, 0(x2) # store 0x0000000004a0d422 in memory
flw f17, 0(x2) # load 0x0000000004a0d422 from memory into f17
fcvt.d.s f2, f17 # perform operation
fcvt.d.s f2, f17 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0xb22e01d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000089d368d5 # load x3 with value 0x0000000089d368d5
sw x3, 0(x2) # store 0x0000000089d368d5 in memory
flw f27, 0(x2) # load 0x0000000089d368d5 from memory into f27
fcvt.d.s f3, f27 # perform operation
fcvt.d.s f3, f27 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0xfc7ad221 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000068a5a217 # load x3 with value 0x0000000068a5a217
sw x3, 0(x2) # store 0x0000000068a5a217 in memory
flw f30, 0(x2) # load 0x0000000068a5a217 from memory into f30
fcvt.d.s f4, f30 # perform operation
fcvt.d.s f4, f30 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0xbf316cc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000e2836cac # load x3 with value 0x00000000e2836cac
sw x3, 0(x2) # store 0x00000000e2836cac in memory
flw f18, 0(x2) # load 0x00000000e2836cac from memory into f18
fcvt.d.s f5, f18 # perform operation
fcvt.d.s f5, f18 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x0271c657 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000004734ba99 # load x3 with value 0x000000004734ba99
sw x3, 0(x2) # store 0x000000004734ba99 in memory
flw f24, 0(x2) # load 0x000000004734ba99 from memory into f24
fcvt.d.s f6, f24 # perform operation
fcvt.d.s f6, f24 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x6673689d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000005748eecf # load x3 with value 0x000000005748eecf
sw x3, 0(x2) # store 0x000000005748eecf in memory
flw f12, 0(x2) # load 0x000000005748eecf from memory into f12
fcvt.d.s f7, f12 # perform operation
fcvt.d.s f7, f12 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0xa48eef7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000fe80f0e9 # load x3 with value 0x00000000fe80f0e9
sw x3, 0(x2) # store 0x00000000fe80f0e9 in memory
flw f12, 0(x2) # load 0x00000000fe80f0e9 from memory into f12
fcvt.d.s f8, f12 # perform operation
fcvt.d.s f8, f12 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0xc812d82b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000004c7f7406 # load x3 with value 0x000000004c7f7406
sw x3, 0(x2) # store 0x000000004c7f7406 in memory
flw f4, 0(x2) # load 0x000000004c7f7406 from memory into f4
fcvt.d.s f9, f4 # perform operation
fcvt.d.s f9, f4 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x2f968e2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000008a0d1f7a # load x3 with value 0x000000008a0d1f7a
sw x3, 0(x2) # store 0x000000008a0d1f7a in memory
flw f20, 0(x2) # load 0x000000008a0d1f7a from memory into f20
fcvt.d.s f10, f20 # perform operation
fcvt.d.s f10, f20 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x19d4285a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000a95cf445 # load x3 with value 0x00000000a95cf445
sw x3, 0(x2) # store 0x00000000a95cf445 in memory
flw f10, 0(x2) # load 0x00000000a95cf445 from memory into f10
fcvt.d.s f11, f10 # perform operation
fcvt.d.s f11, f10 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x2488bccc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000006cb2991a # load x3 with value 0x000000006cb2991a
sw x3, 0(x2) # store 0x000000006cb2991a in memory
flw f23, 0(x2) # load 0x000000006cb2991a from memory into f23
fcvt.d.s f12, f23 # perform operation
fcvt.d.s f12, f23 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0xa7f53cac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000009b95bce8 # load x3 with value 0x000000009b95bce8
sw x3, 0(x2) # store 0x000000009b95bce8 in memory
flw f26, 0(x2) # load 0x000000009b95bce8 from memory into f26
fcvt.d.s f13, f26 # perform operation
fcvt.d.s f13, f26 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x08571dc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000091f74ca # load x3 with value 0x00000000091f74ca
sw x3, 0(x2) # store 0x00000000091f74ca in memory
flw f25, 0(x2) # load 0x00000000091f74ca from memory into f25
fcvt.d.s f14, f25 # perform operation
fcvt.d.s f14, f25 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x6fcb4e71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000bed0bab2 # load x3 with value 0x00000000bed0bab2
sw x3, 0(x2) # store 0x00000000bed0bab2 in memory
flw f3, 0(x2) # load 0x00000000bed0bab2 from memory into f3
fcvt.d.s f15, f3 # perform operation
fcvt.d.s f15, f3 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0xf5aa91c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000bf775f5b # load x3 with value 0x00000000bf775f5b
sw x3, 0(x2) # store 0x00000000bf775f5b in memory
flw f28, 0(x2) # load 0x00000000bf775f5b from memory into f28
fcvt.d.s f16, f28 # perform operation
fcvt.d.s f16, f28 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0xb7dcb85f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000069154ca0 # load x3 with value 0x0000000069154ca0
sw x3, 0(x2) # store 0x0000000069154ca0 in memory
flw f2, 0(x2) # load 0x0000000069154ca0 from memory into f2
fcvt.d.s f17, f2 # perform operation
fcvt.d.s f17, f2 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x38ceca2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000070ff81c # load x3 with value 0x00000000070ff81c
sw x3, 0(x2) # store 0x00000000070ff81c in memory
flw f22, 0(x2) # load 0x00000000070ff81c from memory into f22
fcvt.d.s f18, f22 # perform operation
fcvt.d.s f18, f22 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x772fb719 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000009a0d1949 # load x3 with value 0x000000009a0d1949
sw x3, 0(x2) # store 0x000000009a0d1949 in memory
flw f12, 0(x2) # load 0x000000009a0d1949 from memory into f12
fcvt.d.s f19, f12 # perform operation
fcvt.d.s f19, f12 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0xd47fd9b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000087301ab9 # load x3 with value 0x0000000087301ab9
sw x3, 0(x2) # store 0x0000000087301ab9 in memory
flw f24, 0(x2) # load 0x0000000087301ab9 from memory into f24
fcvt.d.s f20, f24 # perform operation
fcvt.d.s f20, f24 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x12414fbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000004513a3a3 # load x3 with value 0x000000004513a3a3
sw x3, 0(x2) # store 0x000000004513a3a3 in memory
flw f9, 0(x2) # load 0x000000004513a3a3 from memory into f9
fcvt.d.s f21, f9 # perform operation
fcvt.d.s f21, f9 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x78312793 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000036ae5c85 # load x3 with value 0x0000000036ae5c85
sw x3, 0(x2) # store 0x0000000036ae5c85 in memory
flw f9, 0(x2) # load 0x0000000036ae5c85 from memory into f9
fcvt.d.s f22, f9 # perform operation
fcvt.d.s f22, f9 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x5726b285 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000007af9adc9 # load x3 with value 0x000000007af9adc9
sw x3, 0(x2) # store 0x000000007af9adc9 in memory
flw f19, 0(x2) # load 0x000000007af9adc9 from memory into f19
fcvt.d.s f23, f19 # perform operation
fcvt.d.s f23, f19 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0xc40a7950 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000d788d5d9 # load x3 with value 0x00000000d788d5d9
sw x3, 0(x2) # store 0x00000000d788d5d9 in memory
flw f21, 0(x2) # load 0x00000000d788d5d9 from memory into f21
fcvt.d.s f24, f21 # perform operation
fcvt.d.s f24, f21 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0xcaaaf5c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000087901f91 # load x3 with value 0x0000000087901f91
sw x3, 0(x2) # store 0x0000000087901f91 in memory
flw f31, 0(x2) # load 0x0000000087901f91 from memory into f31
fcvt.d.s f25, f31 # perform operation
fcvt.d.s f25, f31 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xb1d2f445 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000030c61366 # load x3 with value 0x0000000030c61366
sw x3, 0(x2) # store 0x0000000030c61366 in memory
flw f25, 0(x2) # load 0x0000000030c61366 from memory into f25
fcvt.d.s f26, f25 # perform operation
fcvt.d.s f26, f25 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x4f477e7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000009a21de48 # load x3 with value 0x000000009a21de48
sw x3, 0(x2) # store 0x000000009a21de48 in memory
flw f19, 0(x2) # load 0x000000009a21de48 from memory into f19
fcvt.d.s f27, f19 # perform operation
fcvt.d.s f27, f19 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x19583995 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000003695b689 # load x3 with value 0x000000003695b689
sw x3, 0(x2) # store 0x000000003695b689 in memory
flw f30, 0(x2) # load 0x000000003695b689 from memory into f30
fcvt.d.s f28, f30 # perform operation
fcvt.d.s f28, f30 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x840eec7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000eb007ea9 # load x3 with value 0x00000000eb007ea9
sw x3, 0(x2) # store 0x00000000eb007ea9 in memory
flw f16, 0(x2) # load 0x00000000eb007ea9 from memory into f16
fcvt.d.s f29, f16 # perform operation
fcvt.d.s f29, f16 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x4acbb2cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000d1a85fc8 # load x3 with value 0x00000000d1a85fc8
sw x3, 0(x2) # store 0x00000000d1a85fc8 in memory
flw f10, 0(x2) # load 0x00000000d1a85fc8 from memory into f10
fcvt.d.s f30, f10 # perform operation
fcvt.d.s f30, f10 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0xfb54ee53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000008526b466 # load x3 with value 0x000000008526b466
sw x3, 0(x2) # store 0x000000008526b466 in memory
flw f19, 0(x2) # load 0x000000008526b466 from memory into f19
fcvt.d.s f31, f19 # perform operation
fcvt.d.s f31, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x9, 0x5399bf88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000ddda0a28 # load x3 with value 0x00000000ddda0a28
sw x3, 0(x2) # store 0x00000000ddda0a28 in memory
flw f0, 0(x2) # load 0x00000000ddda0a28 from memory into f0
fcvt.d.s f9, f0 # perform operation
fcvt.d.s f9, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x10, 0xa46ef6e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000008b4879a5 # load x3 with value 0x000000008b4879a5
sw x3, 0(x2) # store 0x000000008b4879a5 in memory
flw f1, 0(x2) # load 0x000000008b4879a5 from memory into f1
fcvt.d.s f10, f1 # perform operation
fcvt.d.s f10, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x15, 0xae358b02 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000ceaac358 # load x3 with value 0x00000000ceaac358
sw x3, 0(x2) # store 0x00000000ceaac358 in memory
flw f2, 0(x2) # load 0x00000000ceaac358 from memory into f2
fcvt.d.s f15, f2 # perform operation
fcvt.d.s f15, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x2, 0xfe9c5232 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000006915b48 # load x3 with value 0x0000000006915b48
sw x3, 0(x2) # store 0x0000000006915b48 in memory
flw f3, 0(x2) # load 0x0000000006915b48 from memory into f3
fcvt.d.s f2, f3 # perform operation
fcvt.d.s f2, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x18, 0x9ae40464 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000004860dac1 # load x3 with value 0x000000004860dac1
sw x3, 0(x2) # store 0x000000004860dac1 in memory
flw f4, 0(x2) # load 0x000000004860dac1 from memory into f4
fcvt.d.s f18, f4 # perform operation
fcvt.d.s f18, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x22, 0x3dd3df96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000220bf384 # load x3 with value 0x00000000220bf384
sw x3, 0(x2) # store 0x00000000220bf384 in memory
flw f5, 0(x2) # load 0x00000000220bf384 from memory into f5
fcvt.d.s f22, f5 # perform operation
fcvt.d.s f22, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x6, 0x906a9b8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000c22b9a75 # load x3 with value 0x00000000c22b9a75
sw x3, 0(x2) # store 0x00000000c22b9a75 in memory
flw f6, 0(x2) # load 0x00000000c22b9a75 from memory into f6
fcvt.d.s f6, f6 # perform operation
fcvt.d.s f6, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x11, 0xf4c9316f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000bc87553f # load x3 with value 0x00000000bc87553f
sw x3, 0(x2) # store 0x00000000bc87553f in memory
flw f7, 0(x2) # load 0x00000000bc87553f from memory into f7
fcvt.d.s f11, f7 # perform operation
fcvt.d.s f11, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x2, 0xcab8a024 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000b3981d42 # load x3 with value 0x00000000b3981d42
sw x3, 0(x2) # store 0x00000000b3981d42 in memory
flw f8, 0(x2) # load 0x00000000b3981d42 from memory into f8
fcvt.d.s f2, f8 # perform operation
fcvt.d.s f2, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x22, 0xcc2965a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000921b64cb # load x3 with value 0x00000000921b64cb
sw x3, 0(x2) # store 0x00000000921b64cb in memory
flw f9, 0(x2) # load 0x00000000921b64cb from memory into f9
fcvt.d.s f22, f9 # perform operation
fcvt.d.s f22, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x25, 0x21bdfc64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000026e7e972 # load x3 with value 0x0000000026e7e972
sw x3, 0(x2) # store 0x0000000026e7e972 in memory
flw f10, 0(x2) # load 0x0000000026e7e972 from memory into f10
fcvt.d.s f25, f10 # perform operation
fcvt.d.s f25, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x1, 0x40c8a70e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000003c9b3a8 # load x3 with value 0x0000000003c9b3a8
sw x3, 0(x2) # store 0x0000000003c9b3a8 in memory
flw f11, 0(x2) # load 0x0000000003c9b3a8 from memory into f11
fcvt.d.s f1, f11 # perform operation
fcvt.d.s f1, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x25, 0x880256ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000309d4641 # load x3 with value 0x00000000309d4641
sw x3, 0(x2) # store 0x00000000309d4641 in memory
flw f12, 0(x2) # load 0x00000000309d4641 from memory into f12
fcvt.d.s f25, f12 # perform operation
fcvt.d.s f25, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x15, 0xee99516b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000006ce7b31a # load x3 with value 0x000000006ce7b31a
sw x3, 0(x2) # store 0x000000006ce7b31a in memory
flw f13, 0(x2) # load 0x000000006ce7b31a from memory into f13
fcvt.d.s f15, f13 # perform operation
fcvt.d.s f15, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x31, 0x7e4c56ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000e8fbe6cd # load x3 with value 0x00000000e8fbe6cd
sw x3, 0(x2) # store 0x00000000e8fbe6cd in memory
flw f14, 0(x2) # load 0x00000000e8fbe6cd from memory into f14
fcvt.d.s f31, f14 # perform operation
fcvt.d.s f31, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x2, 0x33ab5918 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000005ef35961 # load x3 with value 0x000000005ef35961
sw x3, 0(x2) # store 0x000000005ef35961 in memory
flw f15, 0(x2) # load 0x000000005ef35961 from memory into f15
fcvt.d.s f2, f15 # perform operation
fcvt.d.s f2, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x22, 0xa24927cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000487fdb27 # load x3 with value 0x00000000487fdb27
sw x3, 0(x2) # store 0x00000000487fdb27 in memory
flw f16, 0(x2) # load 0x00000000487fdb27 from memory into f16
fcvt.d.s f22, f16 # perform operation
fcvt.d.s f22, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x28, 0x371cfb87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000836d1fde # load x3 with value 0x00000000836d1fde
sw x3, 0(x2) # store 0x00000000836d1fde in memory
flw f17, 0(x2) # load 0x00000000836d1fde from memory into f17
fcvt.d.s f28, f17 # perform operation
fcvt.d.s f28, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x27, 0x1328d1f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000373f2ec0 # load x3 with value 0x00000000373f2ec0
sw x3, 0(x2) # store 0x00000000373f2ec0 in memory
flw f18, 0(x2) # load 0x00000000373f2ec0 from memory into f18
fcvt.d.s f27, f18 # perform operation
fcvt.d.s f27, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x31, 0x25903272 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000026e691c3 # load x3 with value 0x0000000026e691c3
sw x3, 0(x2) # store 0x0000000026e691c3 in memory
flw f19, 0(x2) # load 0x0000000026e691c3 from memory into f19
fcvt.d.s f31, f19 # perform operation
fcvt.d.s f31, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x12, 0x0d651b22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000000bb694cb # load x3 with value 0x000000000bb694cb
sw x3, 0(x2) # store 0x000000000bb694cb in memory
flw f20, 0(x2) # load 0x000000000bb694cb from memory into f20
fcvt.d.s f12, f20 # perform operation
fcvt.d.s f12, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x8, 0x26599c44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000a7fa2be1 # load x3 with value 0x00000000a7fa2be1
sw x3, 0(x2) # store 0x00000000a7fa2be1 in memory
flw f21, 0(x2) # load 0x00000000a7fa2be1 from memory into f21
fcvt.d.s f8, f21 # perform operation
fcvt.d.s f8, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x30, 0xbf8c239d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000fd15e23e # load x3 with value 0x00000000fd15e23e
sw x3, 0(x2) # store 0x00000000fd15e23e in memory
flw f22, 0(x2) # load 0x00000000fd15e23e from memory into f22
fcvt.d.s f30, f22 # perform operation
fcvt.d.s f30, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x14, 0x82a199d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000006c3f1598 # load x3 with value 0x000000006c3f1598
sw x3, 0(x2) # store 0x000000006c3f1598 in memory
flw f23, 0(x2) # load 0x000000006c3f1598 from memory into f23
fcvt.d.s f14, f23 # perform operation
fcvt.d.s f14, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x27, 0x8b712bfe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000f33e3114 # load x3 with value 0x00000000f33e3114
sw x3, 0(x2) # store 0x00000000f33e3114 in memory
flw f24, 0(x2) # load 0x00000000f33e3114 from memory into f24
fcvt.d.s f27, f24 # perform operation
fcvt.d.s f27, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x23, 0xdb15e1f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000a430cbab # load x3 with value 0x00000000a430cbab
sw x3, 0(x2) # store 0x00000000a430cbab in memory
flw f25, 0(x2) # load 0x00000000a430cbab from memory into f25
fcvt.d.s f23, f25 # perform operation
fcvt.d.s f23, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x5, 0xfed2e33f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000ae3b54b7 # load x3 with value 0x00000000ae3b54b7
sw x3, 0(x2) # store 0x00000000ae3b54b7 in memory
flw f26, 0(x2) # load 0x00000000ae3b54b7 from memory into f26
fcvt.d.s f5, f26 # perform operation
fcvt.d.s f5, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x5, 0x7e2dbeb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000006808635c # load x3 with value 0x000000006808635c
sw x3, 0(x2) # store 0x000000006808635c in memory
flw f27, 0(x2) # load 0x000000006808635c from memory into f27
fcvt.d.s f5, f27 # perform operation
fcvt.d.s f5, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x6, 0x4bc9b93f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000007b742aa # load x3 with value 0x0000000007b742aa
sw x3, 0(x2) # store 0x0000000007b742aa in memory
flw f28, 0(x2) # load 0x0000000007b742aa from memory into f28
fcvt.d.s f6, f28 # perform operation
fcvt.d.s f6, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x5, 0x1b526806 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000710d9514 # load x3 with value 0x00000000710d9514
sw x3, 0(x2) # store 0x00000000710d9514 in memory
flw f29, 0(x2) # load 0x00000000710d9514 from memory into f29
fcvt.d.s f5, f29 # perform operation
fcvt.d.s f5, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x24, 0x103e31ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000007d52c7a0 # load x3 with value 0x000000007d52c7a0
sw x3, 0(x2) # store 0x000000007d52c7a0 in memory
flw f30, 0(x2) # load 0x000000007d52c7a0 from memory into f30
fcvt.d.s f24, f30 # perform operation
fcvt.d.s f24, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x25, 0xaaa9a099 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000000002aad0a1f # load x3 with value 0x000000002aad0a1f
sw x3, 0(x2) # store 0x000000002aad0a1f in memory
flw f31, 0(x2) # load 0x000000002aad0a1f from memory into f31
fcvt.d.s f25, f31 # perform operation
fcvt.d.s f25, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
