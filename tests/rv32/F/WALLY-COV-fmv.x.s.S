///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/F//WALLY-COV-fmv.x.s.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.312135
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


# Testcase cp_rd (Test destination rd = x0)
li x0, 0xb1c0ffc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xdb0ab8ce # load x3 with value 0xdb0ab8ce
sw x3, 0(x2) # store 0xdb0ab8ce in memory
flw f20, 0(x2) # load 0xdb0ab8ce from memory into f20
fmv.x.s x0, f20 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xbb691b2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8f63d8e0 # load x3 with value 0x8f63d8e0
sw x3, 0(x2) # store 0x8f63d8e0 in memory
flw f29, 0(x2) # load 0x8f63d8e0 from memory into f29
fmv.x.s x1, f29 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x4bcd5fb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7757e805 # load x3 with value 0x7757e805
sw x3, 0(x2) # store 0x7757e805 in memory
flw f6, 0(x2) # load 0x7757e805 from memory into f6
fmv.x.s x2, f6 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xda947f33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x651eba3b # load x3 with value 0x651eba3b
sw x3, 0(x2) # store 0x651eba3b in memory
flw f1, 0(x2) # load 0x651eba3b from memory into f1
fmv.x.s x3, f1 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x56b82cd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc18d2df9 # load x3 with value 0xc18d2df9
sw x3, 0(x2) # store 0xc18d2df9 in memory
flw f3, 0(x2) # load 0xc18d2df9 from memory into f3
fmv.x.s x4, f3 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x58ba29bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc94bc69c # load x3 with value 0xc94bc69c
sw x3, 0(x2) # store 0xc94bc69c in memory
flw f27, 0(x2) # load 0xc94bc69c from memory into f27
fmv.x.s x5, f27 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x28ebd919 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x54089d47 # load x3 with value 0x54089d47
sw x3, 0(x2) # store 0x54089d47 in memory
flw f6, 0(x2) # load 0x54089d47 from memory into f6
fmv.x.s x6, f6 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x3bfb7fd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8ce8ec6e # load x3 with value 0x8ce8ec6e
sw x3, 0(x2) # store 0x8ce8ec6e in memory
flw f19, 0(x2) # load 0x8ce8ec6e from memory into f19
fmv.x.s x7, f19 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x28a7f011 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x46a5c1dd # load x3 with value 0x46a5c1dd
sw x3, 0(x2) # store 0x46a5c1dd in memory
flw f5, 0(x2) # load 0x46a5c1dd from memory into f5
fmv.x.s x8, f5 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x8ad912fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x73f313fb # load x3 with value 0x73f313fb
sw x3, 0(x2) # store 0x73f313fb in memory
flw f2, 0(x2) # load 0x73f313fb from memory into f2
fmv.x.s x9, f2 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xc5fb207e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8c00e0c9 # load x3 with value 0x8c00e0c9
sw x3, 0(x2) # store 0x8c00e0c9 in memory
flw f25, 0(x2) # load 0x8c00e0c9 from memory into f25
fmv.x.s x10, f25 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xdce022a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2b31a2c8 # load x3 with value 0x2b31a2c8
sw x3, 0(x2) # store 0x2b31a2c8 in memory
flw f31, 0(x2) # load 0x2b31a2c8 from memory into f31
fmv.x.s x11, f31 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x3df0260f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x31f72262 # load x3 with value 0x31f72262
sw x3, 0(x2) # store 0x31f72262 in memory
flw f31, 0(x2) # load 0x31f72262 from memory into f31
fmv.x.s x12, f31 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x216031de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbb0a8d50 # load x3 with value 0xbb0a8d50
sw x3, 0(x2) # store 0xbb0a8d50 in memory
flw f15, 0(x2) # load 0xbb0a8d50 from memory into f15
fmv.x.s x13, f15 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x7bee0b15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7f247c2f # load x3 with value 0x7f247c2f
sw x3, 0(x2) # store 0x7f247c2f in memory
flw f31, 0(x2) # load 0x7f247c2f from memory into f31
fmv.x.s x14, f31 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x71613fd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe4729b37 # load x3 with value 0xe4729b37
sw x3, 0(x2) # store 0xe4729b37 in memory
flw f28, 0(x2) # load 0xe4729b37 from memory into f28
fmv.x.s x15, f28 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xcecc5194 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd314ffff # load x3 with value 0xd314ffff
sw x3, 0(x2) # store 0xd314ffff in memory
flw f8, 0(x2) # load 0xd314ffff from memory into f8
fmv.x.s x16, f8 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xbbb8546c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x14459a97 # load x3 with value 0x14459a97
sw x3, 0(x2) # store 0x14459a97 in memory
flw f6, 0(x2) # load 0x14459a97 from memory into f6
fmv.x.s x17, f6 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xd4f07733 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x124c61d2 # load x3 with value 0x124c61d2
sw x3, 0(x2) # store 0x124c61d2 in memory
flw f17, 0(x2) # load 0x124c61d2 from memory into f17
fmv.x.s x18, f17 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x6233cb58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x78d20f53 # load x3 with value 0x78d20f53
sw x3, 0(x2) # store 0x78d20f53 in memory
flw f4, 0(x2) # load 0x78d20f53 from memory into f4
fmv.x.s x19, f4 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xf2805b1c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc1633591 # load x3 with value 0xc1633591
sw x3, 0(x2) # store 0xc1633591 in memory
flw f27, 0(x2) # load 0xc1633591 from memory into f27
fmv.x.s x20, f27 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xef3eea44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xda5a386e # load x3 with value 0xda5a386e
sw x3, 0(x2) # store 0xda5a386e in memory
flw f31, 0(x2) # load 0xda5a386e from memory into f31
fmv.x.s x21, f31 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x1f65d41f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x824bd78e # load x3 with value 0x824bd78e
sw x3, 0(x2) # store 0x824bd78e in memory
flw f26, 0(x2) # load 0x824bd78e from memory into f26
fmv.x.s x22, f26 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x37592a1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb9c4273f # load x3 with value 0xb9c4273f
sw x3, 0(x2) # store 0xb9c4273f in memory
flw f4, 0(x2) # load 0xb9c4273f from memory into f4
fmv.x.s x23, f4 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xed21bffc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4c121635 # load x3 with value 0x4c121635
sw x3, 0(x2) # store 0x4c121635 in memory
flw f30, 0(x2) # load 0x4c121635 from memory into f30
fmv.x.s x24, f30 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xe50f2377 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd85909a9 # load x3 with value 0xd85909a9
sw x3, 0(x2) # store 0xd85909a9 in memory
flw f15, 0(x2) # load 0xd85909a9 from memory into f15
fmv.x.s x25, f15 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xc7975500 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2a01e24e # load x3 with value 0x2a01e24e
sw x3, 0(x2) # store 0x2a01e24e in memory
flw f6, 0(x2) # load 0x2a01e24e from memory into f6
fmv.x.s x26, f6 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xe1b54e6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9e566293 # load x3 with value 0x9e566293
sw x3, 0(x2) # store 0x9e566293 in memory
flw f10, 0(x2) # load 0x9e566293 from memory into f10
fmv.x.s x27, f10 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xc4aa886f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6c1d5eb4 # load x3 with value 0x6c1d5eb4
sw x3, 0(x2) # store 0x6c1d5eb4 in memory
flw f1, 0(x2) # load 0x6c1d5eb4 from memory into f1
fmv.x.s x28, f1 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x60fa0dbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb96b79af # load x3 with value 0xb96b79af
sw x3, 0(x2) # store 0xb96b79af in memory
flw f11, 0(x2) # load 0xb96b79af from memory into f11
fmv.x.s x29, f11 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x90ad86d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xdf40c2ca # load x3 with value 0xdf40c2ca
sw x3, 0(x2) # store 0xdf40c2ca in memory
flw f19, 0(x2) # load 0xdf40c2ca from memory into f19
fmv.x.s x30, f19 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xc4fe38b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x301ca097 # load x3 with value 0x301ca097
sw x3, 0(x2) # store 0x301ca097 in memory
flw f16, 0(x2) # load 0x301ca097 from memory into f16
fmv.x.s x31, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x31, 0xd3c61118 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f6, 0(x2) # load 0x00000000 from memory into f6
fmv.x.s x31, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
li x29, 0x6c2102ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f28, 0(x2) # load 0x80000000 from memory into f28
fmv.x.s x29, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
li x14, 0xdaae8d07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f10, 0(x2) # load 0x3f800000 from memory into f10
fmv.x.s x14, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
li x29, 0xd188d14f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
fmv.x.s x29, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
li x13, 0xc8ba1780 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
fmv.x.s x13, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
li x14, 0x52483d43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
fmv.x.s x14, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
li x2, 0x185f4ab8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f22, 0(x2) # load 0x40000000 from memory into f22
fmv.x.s x2, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
li x1, 0x3a4b2248 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
fmv.x.s x1, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
li x30, 0x4fbe241a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f4, 0(x2) # load 0x00800000 from memory into f4
fmv.x.s x30, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
li x3, 0x1432bdac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f29, 0(x2) # load 0x80800000 from memory into f29
fmv.x.s x3, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
li x3, 0xd77810ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f9, 0(x2) # load 0x7f7fffff from memory into f9
fmv.x.s x3, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
li x31, 0x9a8d595c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f20, 0(x2) # load 0xff7fffff from memory into f20
fmv.x.s x31, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
li x29, 0x4b0d0c3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
fmv.x.s x29, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
li x9, 0xd99e2c51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f15, 0(x2) # load 0x807fffff from memory into f15
fmv.x.s x9, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
li x28, 0xff23fbff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f31, 0(x2) # load 0x00400000 from memory into f31
fmv.x.s x28, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
li x18, 0x55da61b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f12, 0(x2) # load 0x80400000 from memory into f12
fmv.x.s x18, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x3, 0x895b5274 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f27, 0(x2) # load 0x00000001 from memory into f27
fmv.x.s x3, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
li x3, 0xe6173f79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f5, 0(x2) # load 0x80000001 from memory into f5
fmv.x.s x3, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
li x30, 0x1192f551 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f28, 0(x2) # load 0x7f800000 from memory into f28
fmv.x.s x30, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
li x11, 0x9754606a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
fmv.x.s x11, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
li x28, 0xab19ec38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f19, 0(x2) # load 0x7fc00000 from memory into f19
fmv.x.s x28, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
li x27, 0xe5070673 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f24, 0(x2) # load 0x7fffffff from memory into f24
fmv.x.s x27, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
li x19, 0xa48a0676 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f1, 0(x2) # load 0x7f800001 from memory into f1
fmv.x.s x19, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
li x25, 0x56d6df17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f4, 0(x2) # load 0x7fbfffff from memory into f4
fmv.x.s x25, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
li x27, 0x2f10f32d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f12, 0(x2) # load 0x7ef8654f from memory into f12
fmv.x.s x27, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
li x19, 0xbd65da17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f18, 0(x2) # load 0x813d9ab0 from memory into f18
fmv.x.s x19, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x11, 0x7b1ce1dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3a075f18 # load x3 with value 0x3a075f18
sw x3, 0(x2) # store 0x3a075f18 in memory
flw f0, 0(x2) # load 0x3a075f18 from memory into f0
fmv.x.s x11, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x30, 0x68730e5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4ebda545 # load x3 with value 0x4ebda545
sw x3, 0(x2) # store 0x4ebda545 in memory
flw f1, 0(x2) # load 0x4ebda545 from memory into f1
fmv.x.s x30, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x31, 0xf5a1492a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xcbca6121 # load x3 with value 0xcbca6121
sw x3, 0(x2) # store 0xcbca6121 in memory
flw f2, 0(x2) # load 0xcbca6121 from memory into f2
fmv.x.s x31, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x29, 0x9f53383c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5c50b6ae # load x3 with value 0x5c50b6ae
sw x3, 0(x2) # store 0x5c50b6ae in memory
flw f3, 0(x2) # load 0x5c50b6ae from memory into f3
fmv.x.s x29, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x20, 0xf14759c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf8889565 # load x3 with value 0xf8889565
sw x3, 0(x2) # store 0xf8889565 in memory
flw f4, 0(x2) # load 0xf8889565 from memory into f4
fmv.x.s x20, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x15, 0x0fc78c71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc67fa92a # load x3 with value 0xc67fa92a
sw x3, 0(x2) # store 0xc67fa92a in memory
flw f5, 0(x2) # load 0xc67fa92a from memory into f5
fmv.x.s x15, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x12, 0x4c56d786 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x526eb1a8 # load x3 with value 0x526eb1a8
sw x3, 0(x2) # store 0x526eb1a8 in memory
flw f6, 0(x2) # load 0x526eb1a8 from memory into f6
fmv.x.s x12, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x14, 0x24ae2520 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbd8d40bf # load x3 with value 0xbd8d40bf
sw x3, 0(x2) # store 0xbd8d40bf in memory
flw f7, 0(x2) # load 0xbd8d40bf from memory into f7
fmv.x.s x14, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x4, 0x5e5d2dc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4eda6b39 # load x3 with value 0x4eda6b39
sw x3, 0(x2) # store 0x4eda6b39 in memory
flw f8, 0(x2) # load 0x4eda6b39 from memory into f8
fmv.x.s x4, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x24, 0x4287f2d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc89ac411 # load x3 with value 0xc89ac411
sw x3, 0(x2) # store 0xc89ac411 in memory
flw f9, 0(x2) # load 0xc89ac411 from memory into f9
fmv.x.s x24, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x30, 0x672e06fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4255e8a2 # load x3 with value 0x4255e8a2
sw x3, 0(x2) # store 0x4255e8a2 in memory
flw f10, 0(x2) # load 0x4255e8a2 from memory into f10
fmv.x.s x30, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x31, 0x20f5ccd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd3099512 # load x3 with value 0xd3099512
sw x3, 0(x2) # store 0xd3099512 in memory
flw f11, 0(x2) # load 0xd3099512 from memory into f11
fmv.x.s x31, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x12, 0xb6e741d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3ab44ae1 # load x3 with value 0x3ab44ae1
sw x3, 0(x2) # store 0x3ab44ae1 in memory
flw f12, 0(x2) # load 0x3ab44ae1 from memory into f12
fmv.x.s x12, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x19, 0x7a3421f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4f8e1db3 # load x3 with value 0x4f8e1db3
sw x3, 0(x2) # store 0x4f8e1db3 in memory
flw f13, 0(x2) # load 0x4f8e1db3 from memory into f13
fmv.x.s x19, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x1, 0xac4f4219 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x72803043 # load x3 with value 0x72803043
sw x3, 0(x2) # store 0x72803043 in memory
flw f14, 0(x2) # load 0x72803043 from memory into f14
fmv.x.s x1, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x14, 0x0119b2a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3e38ca8a # load x3 with value 0x3e38ca8a
sw x3, 0(x2) # store 0x3e38ca8a in memory
flw f15, 0(x2) # load 0x3e38ca8a from memory into f15
fmv.x.s x14, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x23, 0x27e52b0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x06fe8592 # load x3 with value 0x06fe8592
sw x3, 0(x2) # store 0x06fe8592 in memory
flw f16, 0(x2) # load 0x06fe8592 from memory into f16
fmv.x.s x23, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x14, 0x6f74f84d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x109001cc # load x3 with value 0x109001cc
sw x3, 0(x2) # store 0x109001cc in memory
flw f17, 0(x2) # load 0x109001cc from memory into f17
fmv.x.s x14, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x6, 0x8f95aa9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4af696b1 # load x3 with value 0x4af696b1
sw x3, 0(x2) # store 0x4af696b1 in memory
flw f18, 0(x2) # load 0x4af696b1 from memory into f18
fmv.x.s x6, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x2, 0x8d436e80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xfff395e8 # load x3 with value 0xfff395e8
sw x3, 0(x2) # store 0xfff395e8 in memory
flw f19, 0(x2) # load 0xfff395e8 from memory into f19
fmv.x.s x2, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x27, 0x809bd0da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8a6b03b2 # load x3 with value 0x8a6b03b2
sw x3, 0(x2) # store 0x8a6b03b2 in memory
flw f20, 0(x2) # load 0x8a6b03b2 from memory into f20
fmv.x.s x27, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x19, 0xaf89b0d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x32ff4f49 # load x3 with value 0x32ff4f49
sw x3, 0(x2) # store 0x32ff4f49 in memory
flw f21, 0(x2) # load 0x32ff4f49 from memory into f21
fmv.x.s x19, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x11, 0xb452cbe9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa1face16 # load x3 with value 0xa1face16
sw x3, 0(x2) # store 0xa1face16 in memory
flw f22, 0(x2) # load 0xa1face16 from memory into f22
fmv.x.s x11, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x6, 0x1d73249e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xea22f2fa # load x3 with value 0xea22f2fa
sw x3, 0(x2) # store 0xea22f2fa in memory
flw f23, 0(x2) # load 0xea22f2fa from memory into f23
fmv.x.s x6, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x10, 0x9b17823a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x73fa7a3c # load x3 with value 0x73fa7a3c
sw x3, 0(x2) # store 0x73fa7a3c in memory
flw f24, 0(x2) # load 0x73fa7a3c from memory into f24
fmv.x.s x10, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x12, 0xa6929330 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x07872869 # load x3 with value 0x07872869
sw x3, 0(x2) # store 0x07872869 in memory
flw f25, 0(x2) # load 0x07872869 from memory into f25
fmv.x.s x12, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x30, 0xe3221e07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5528497e # load x3 with value 0x5528497e
sw x3, 0(x2) # store 0x5528497e in memory
flw f26, 0(x2) # load 0x5528497e from memory into f26
fmv.x.s x30, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x16, 0x625ac963 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xacecc25d # load x3 with value 0xacecc25d
sw x3, 0(x2) # store 0xacecc25d in memory
flw f27, 0(x2) # load 0xacecc25d from memory into f27
fmv.x.s x16, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x10, 0x3395cdbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1bdb4bb1 # load x3 with value 0x1bdb4bb1
sw x3, 0(x2) # store 0x1bdb4bb1 in memory
flw f28, 0(x2) # load 0x1bdb4bb1 from memory into f28
fmv.x.s x10, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x25, 0x3648f4b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x42fe358b # load x3 with value 0x42fe358b
sw x3, 0(x2) # store 0x42fe358b in memory
flw f29, 0(x2) # load 0x42fe358b from memory into f29
fmv.x.s x25, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x10, 0x1297edb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb548d0e5 # load x3 with value 0xb548d0e5
sw x3, 0(x2) # store 0xb548d0e5 in memory
flw f30, 0(x2) # load 0xb548d0e5 from memory into f30
fmv.x.s x10, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x31, 0x7af95690 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1392c6b0 # load x3 with value 0x1392c6b0
sw x3, 0(x2) # store 0x1392c6b0 in memory
flw f31, 0(x2) # load 0x1392c6b0 from memory into f31
fmv.x.s x31, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
