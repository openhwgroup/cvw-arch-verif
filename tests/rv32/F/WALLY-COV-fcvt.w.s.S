///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/F//WALLY-COV-fcvt.w.s.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.142633
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
li x0, 0x3e8f707e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa6460bf1 # load x3 with value 0xa6460bf1
sw x3, 0(x2) # store 0xa6460bf1 in memory
flw f31, 0(x2) # load 0xa6460bf1 from memory into f31
fcvt.w.s x0, f31 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xcb345dcd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd1b8a416 # load x3 with value 0xd1b8a416
sw x3, 0(x2) # store 0xd1b8a416 in memory
flw f22, 0(x2) # load 0xd1b8a416 from memory into f22
fcvt.w.s x1, f22 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x21a31565 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x827f04f3 # load x3 with value 0x827f04f3
sw x3, 0(x2) # store 0x827f04f3 in memory
flw f15, 0(x2) # load 0x827f04f3 from memory into f15
fcvt.w.s x2, f15 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xa59aab82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9dc78509 # load x3 with value 0x9dc78509
sw x3, 0(x2) # store 0x9dc78509 in memory
flw f21, 0(x2) # load 0x9dc78509 from memory into f21
fcvt.w.s x3, f21 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xec99d36a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf5379f04 # load x3 with value 0xf5379f04
sw x3, 0(x2) # store 0xf5379f04 in memory
flw f29, 0(x2) # load 0xf5379f04 from memory into f29
fcvt.w.s x4, f29 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x0a7dcf14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9b8d683c # load x3 with value 0x9b8d683c
sw x3, 0(x2) # store 0x9b8d683c in memory
flw f18, 0(x2) # load 0x9b8d683c from memory into f18
fcvt.w.s x5, f18 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xcd288c28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xdfe07d36 # load x3 with value 0xdfe07d36
sw x3, 0(x2) # store 0xdfe07d36 in memory
flw f8, 0(x2) # load 0xdfe07d36 from memory into f8
fcvt.w.s x6, f8 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x565023e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xac2b3324 # load x3 with value 0xac2b3324
sw x3, 0(x2) # store 0xac2b3324 in memory
flw f17, 0(x2) # load 0xac2b3324 from memory into f17
fcvt.w.s x7, f17 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x54e4f65d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe1faa44e # load x3 with value 0xe1faa44e
sw x3, 0(x2) # store 0xe1faa44e in memory
flw f9, 0(x2) # load 0xe1faa44e from memory into f9
fcvt.w.s x8, f9 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xe7439ef6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb805ba2c # load x3 with value 0xb805ba2c
sw x3, 0(x2) # store 0xb805ba2c in memory
flw f21, 0(x2) # load 0xb805ba2c from memory into f21
fcvt.w.s x9, f21 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x23eadf2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0e810dc7 # load x3 with value 0x0e810dc7
sw x3, 0(x2) # store 0x0e810dc7 in memory
flw f3, 0(x2) # load 0x0e810dc7 from memory into f3
fcvt.w.s x10, f3 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x0acab879 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x791c4f2b # load x3 with value 0x791c4f2b
sw x3, 0(x2) # store 0x791c4f2b in memory
flw f18, 0(x2) # load 0x791c4f2b from memory into f18
fcvt.w.s x11, f18 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xe6fd52cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf32a5fb2 # load x3 with value 0xf32a5fb2
sw x3, 0(x2) # store 0xf32a5fb2 in memory
flw f26, 0(x2) # load 0xf32a5fb2 from memory into f26
fcvt.w.s x12, f26 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x8e63c601 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3ce94734 # load x3 with value 0x3ce94734
sw x3, 0(x2) # store 0x3ce94734 in memory
flw f31, 0(x2) # load 0x3ce94734 from memory into f31
fcvt.w.s x13, f31 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x7a8511df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0eef267e # load x3 with value 0x0eef267e
sw x3, 0(x2) # store 0x0eef267e in memory
flw f28, 0(x2) # load 0x0eef267e from memory into f28
fcvt.w.s x14, f28 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xb813e229 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5db239b9 # load x3 with value 0x5db239b9
sw x3, 0(x2) # store 0x5db239b9 in memory
flw f29, 0(x2) # load 0x5db239b9 from memory into f29
fcvt.w.s x15, f29 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xd41017d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0d218f88 # load x3 with value 0x0d218f88
sw x3, 0(x2) # store 0x0d218f88 in memory
flw f2, 0(x2) # load 0x0d218f88 from memory into f2
fcvt.w.s x16, f2 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x3f5cca03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8ed1787a # load x3 with value 0x8ed1787a
sw x3, 0(x2) # store 0x8ed1787a in memory
flw f12, 0(x2) # load 0x8ed1787a from memory into f12
fcvt.w.s x17, f12 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xcaba76f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa7b6eb78 # load x3 with value 0xa7b6eb78
sw x3, 0(x2) # store 0xa7b6eb78 in memory
flw f18, 0(x2) # load 0xa7b6eb78 from memory into f18
fcvt.w.s x18, f18 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x1fc5f9b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x16f36377 # load x3 with value 0x16f36377
sw x3, 0(x2) # store 0x16f36377 in memory
flw f22, 0(x2) # load 0x16f36377 from memory into f22
fcvt.w.s x19, f22 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xa0bf2ec6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf24e5554 # load x3 with value 0xf24e5554
sw x3, 0(x2) # store 0xf24e5554 in memory
flw f25, 0(x2) # load 0xf24e5554 from memory into f25
fcvt.w.s x20, f25 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xd0d3d539 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4ff69f3c # load x3 with value 0x4ff69f3c
sw x3, 0(x2) # store 0x4ff69f3c in memory
flw f30, 0(x2) # load 0x4ff69f3c from memory into f30
fcvt.w.s x21, f30 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x06e019e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6b7ab567 # load x3 with value 0x6b7ab567
sw x3, 0(x2) # store 0x6b7ab567 in memory
flw f21, 0(x2) # load 0x6b7ab567 from memory into f21
fcvt.w.s x22, f21 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x1dc3bdab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc3f8e21d # load x3 with value 0xc3f8e21d
sw x3, 0(x2) # store 0xc3f8e21d in memory
flw f21, 0(x2) # load 0xc3f8e21d from memory into f21
fcvt.w.s x23, f21 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x574ef7cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd8cdff29 # load x3 with value 0xd8cdff29
sw x3, 0(x2) # store 0xd8cdff29 in memory
flw f31, 0(x2) # load 0xd8cdff29 from memory into f31
fcvt.w.s x24, f31 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x26e78d4c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x294678cb # load x3 with value 0x294678cb
sw x3, 0(x2) # store 0x294678cb in memory
flw f25, 0(x2) # load 0x294678cb from memory into f25
fcvt.w.s x25, f25 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xc31f9938 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd7155ea7 # load x3 with value 0xd7155ea7
sw x3, 0(x2) # store 0xd7155ea7 in memory
flw f10, 0(x2) # load 0xd7155ea7 from memory into f10
fcvt.w.s x26, f10 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xfb80818e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x775a8a46 # load x3 with value 0x775a8a46
sw x3, 0(x2) # store 0x775a8a46 in memory
flw f7, 0(x2) # load 0x775a8a46 from memory into f7
fcvt.w.s x27, f7 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xa3dd19ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x99659c6e # load x3 with value 0x99659c6e
sw x3, 0(x2) # store 0x99659c6e in memory
flw f9, 0(x2) # load 0x99659c6e from memory into f9
fcvt.w.s x28, f9 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x5af1e8fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x26ddf166 # load x3 with value 0x26ddf166
sw x3, 0(x2) # store 0x26ddf166 in memory
flw f14, 0(x2) # load 0x26ddf166 from memory into f14
fcvt.w.s x29, f14 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x8f02e88d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe59b39a1 # load x3 with value 0xe59b39a1
sw x3, 0(x2) # store 0xe59b39a1 in memory
flw f4, 0(x2) # load 0xe59b39a1 from memory into f4
fcvt.w.s x30, f4 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x4bce3ae2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xfe7f5f67 # load x3 with value 0xfe7f5f67
sw x3, 0(x2) # store 0xfe7f5f67 in memory
flw f15, 0(x2) # load 0xfe7f5f67 from memory into f15
fcvt.w.s x31, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x5, 0x1c4e07a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f27, 0(x2) # load 0x00000000 from memory into f27
fcvt.w.s x5, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
li x3, 0x5249c134 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f23, 0(x2) # load 0x80000000 from memory into f23
fcvt.w.s x3, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
li x13, 0xd7062b13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f12, 0(x2) # load 0x3f800000 from memory into f12
fcvt.w.s x13, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
li x11, 0x71975de5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f20, 0(x2) # load 0xbf800000 from memory into f20
fcvt.w.s x11, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
li x3, 0x36f146da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f5, 0(x2) # load 0x3fc00000 from memory into f5
fcvt.w.s x3, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
li x15, 0x5f578b0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f27, 0(x2) # load 0xbfc00000 from memory into f27
fcvt.w.s x15, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
li x26, 0x6b67a23e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f2, 0(x2) # load 0x40000000 from memory into f2
fcvt.w.s x26, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
li x15, 0x40c53e59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f2, 0(x2) # load 0xc0000000 from memory into f2
fcvt.w.s x15, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
li x5, 0x4a8b118f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
fcvt.w.s x5, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
li x1, 0xc757359a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f17, 0(x2) # load 0x80800000 from memory into f17
fcvt.w.s x1, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
li x4, 0x88d2f6aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f26, 0(x2) # load 0x7f7fffff from memory into f26
fcvt.w.s x4, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
li x11, 0x4a4da644 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f9, 0(x2) # load 0xff7fffff from memory into f9
fcvt.w.s x11, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
li x11, 0xf3a3954d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f31, 0(x2) # load 0x007fffff from memory into f31
fcvt.w.s x11, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
li x16, 0x36bcf315 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f28, 0(x2) # load 0x807fffff from memory into f28
fcvt.w.s x16, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
li x7, 0x547fb568 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f16, 0(x2) # load 0x00400000 from memory into f16
fcvt.w.s x7, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
li x7, 0x6a7a0511 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f3, 0(x2) # load 0x80400000 from memory into f3
fcvt.w.s x7, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x2, 0x6e08f2c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
fcvt.w.s x2, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
li x15, 0x5876824f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
fcvt.w.s x15, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
li x13, 0x0db6ab52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f4, 0(x2) # load 0x7f800000 from memory into f4
fcvt.w.s x13, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
li x24, 0xc6055763 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f16, 0(x2) # load 0xff800000 from memory into f16
fcvt.w.s x24, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
li x22, 0xdcb33a96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f8, 0(x2) # load 0x7fc00000 from memory into f8
fcvt.w.s x22, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
li x6, 0x2cc5c747 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f1, 0(x2) # load 0x7fffffff from memory into f1
fcvt.w.s x6, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
li x24, 0xc6d001c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
fcvt.w.s x24, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
li x3, 0x89a09f4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
fcvt.w.s x3, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
li x1, 0x58acd2c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
fcvt.w.s x1, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
li x10, 0x211b4faa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f28, 0(x2) # load 0x813d9ab0 from memory into f28
fcvt.w.s x10, f28 # perform operation

# Testcase cp_frm
li x4, 0x1346f003 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe40447cd # load x3 with value 0xe40447cd
sw x3, 0(x2) # store 0xe40447cd in memory
flw f21, 0(x2) # load 0xe40447cd from memory into f21
fcvt.w.s x4, f21, dyn # perform operation
fcvt.w.s x4, f21, rdn # perform operation
fcvt.w.s x4, f21, rmm # perform operation
fcvt.w.s x4, f21, rne # perform operation
fcvt.w.s x4, f21, rtz # perform operation
fcvt.w.s x4, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.s x4, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.s x4, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.s x4, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.s x4, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.s x4, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x5, 0x10242773 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xcc625ec2 # load x3 with value 0xcc625ec2
sw x3, 0(x2) # store 0xcc625ec2 in memory
flw f0, 0(x2) # load 0xcc625ec2 from memory into f0
fcvt.w.s x5, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x13, 0x91647c8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x30f63acd # load x3 with value 0x30f63acd
sw x3, 0(x2) # store 0x30f63acd in memory
flw f1, 0(x2) # load 0x30f63acd from memory into f1
fcvt.w.s x13, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x29, 0xb226111b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb72de6e5 # load x3 with value 0xb72de6e5
sw x3, 0(x2) # store 0xb72de6e5 in memory
flw f2, 0(x2) # load 0xb72de6e5 from memory into f2
fcvt.w.s x29, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x24, 0x548da40f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xec374758 # load x3 with value 0xec374758
sw x3, 0(x2) # store 0xec374758 in memory
flw f3, 0(x2) # load 0xec374758 from memory into f3
fcvt.w.s x24, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x14, 0x19f2f5b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5a44512d # load x3 with value 0x5a44512d
sw x3, 0(x2) # store 0x5a44512d in memory
flw f4, 0(x2) # load 0x5a44512d from memory into f4
fcvt.w.s x14, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x14, 0xda3dfc71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x43feb3f2 # load x3 with value 0x43feb3f2
sw x3, 0(x2) # store 0x43feb3f2 in memory
flw f5, 0(x2) # load 0x43feb3f2 from memory into f5
fcvt.w.s x14, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x25, 0xc6b09c1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x46cfac88 # load x3 with value 0x46cfac88
sw x3, 0(x2) # store 0x46cfac88 in memory
flw f6, 0(x2) # load 0x46cfac88 from memory into f6
fcvt.w.s x25, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x30, 0x5c3d75b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7506e24c # load x3 with value 0x7506e24c
sw x3, 0(x2) # store 0x7506e24c in memory
flw f7, 0(x2) # load 0x7506e24c from memory into f7
fcvt.w.s x30, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x15, 0xca59bf78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x496c850f # load x3 with value 0x496c850f
sw x3, 0(x2) # store 0x496c850f in memory
flw f8, 0(x2) # load 0x496c850f from memory into f8
fcvt.w.s x15, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x29, 0x111016bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2e2e198b # load x3 with value 0x2e2e198b
sw x3, 0(x2) # store 0x2e2e198b in memory
flw f9, 0(x2) # load 0x2e2e198b from memory into f9
fcvt.w.s x29, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x31, 0x1ffb290b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2a3fc474 # load x3 with value 0x2a3fc474
sw x3, 0(x2) # store 0x2a3fc474 in memory
flw f10, 0(x2) # load 0x2a3fc474 from memory into f10
fcvt.w.s x31, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x21, 0xffa7ce45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x57a76513 # load x3 with value 0x57a76513
sw x3, 0(x2) # store 0x57a76513 in memory
flw f11, 0(x2) # load 0x57a76513 from memory into f11
fcvt.w.s x21, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x15, 0x35357c76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8163bbea # load x3 with value 0x8163bbea
sw x3, 0(x2) # store 0x8163bbea in memory
flw f12, 0(x2) # load 0x8163bbea from memory into f12
fcvt.w.s x15, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x15, 0xbeb04e5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbf293b61 # load x3 with value 0xbf293b61
sw x3, 0(x2) # store 0xbf293b61 in memory
flw f13, 0(x2) # load 0xbf293b61 from memory into f13
fcvt.w.s x15, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x17, 0xc619acee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbddb6109 # load x3 with value 0xbddb6109
sw x3, 0(x2) # store 0xbddb6109 in memory
flw f14, 0(x2) # load 0xbddb6109 from memory into f14
fcvt.w.s x17, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x31, 0xdbd12e17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x41099145 # load x3 with value 0x41099145
sw x3, 0(x2) # store 0x41099145 in memory
flw f15, 0(x2) # load 0x41099145 from memory into f15
fcvt.w.s x31, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x3, 0x73833ea1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xab4ac917 # load x3 with value 0xab4ac917
sw x3, 0(x2) # store 0xab4ac917 in memory
flw f16, 0(x2) # load 0xab4ac917 from memory into f16
fcvt.w.s x3, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x16, 0xd9d79ae3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1a774064 # load x3 with value 0x1a774064
sw x3, 0(x2) # store 0x1a774064 in memory
flw f17, 0(x2) # load 0x1a774064 from memory into f17
fcvt.w.s x16, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x19, 0xababc224 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8bedb675 # load x3 with value 0x8bedb675
sw x3, 0(x2) # store 0x8bedb675 in memory
flw f18, 0(x2) # load 0x8bedb675 from memory into f18
fcvt.w.s x19, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x29, 0xc8a6f5c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x72420d96 # load x3 with value 0x72420d96
sw x3, 0(x2) # store 0x72420d96 in memory
flw f19, 0(x2) # load 0x72420d96 from memory into f19
fcvt.w.s x29, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x4, 0x6ee10b47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe9fce1cb # load x3 with value 0xe9fce1cb
sw x3, 0(x2) # store 0xe9fce1cb in memory
flw f20, 0(x2) # load 0xe9fce1cb from memory into f20
fcvt.w.s x4, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x9, 0xc646c733 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xefb74d63 # load x3 with value 0xefb74d63
sw x3, 0(x2) # store 0xefb74d63 in memory
flw f21, 0(x2) # load 0xefb74d63 from memory into f21
fcvt.w.s x9, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x16, 0x5e1705cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x39ba273c # load x3 with value 0x39ba273c
sw x3, 0(x2) # store 0x39ba273c in memory
flw f22, 0(x2) # load 0x39ba273c from memory into f22
fcvt.w.s x16, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x16, 0xd183a90a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe73fe5d3 # load x3 with value 0xe73fe5d3
sw x3, 0(x2) # store 0xe73fe5d3 in memory
flw f23, 0(x2) # load 0xe73fe5d3 from memory into f23
fcvt.w.s x16, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x26, 0xb75ce865 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x99ead5e4 # load x3 with value 0x99ead5e4
sw x3, 0(x2) # store 0x99ead5e4 in memory
flw f24, 0(x2) # load 0x99ead5e4 from memory into f24
fcvt.w.s x26, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x20, 0xfcc01093 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0d1803b7 # load x3 with value 0x0d1803b7
sw x3, 0(x2) # store 0x0d1803b7 in memory
flw f25, 0(x2) # load 0x0d1803b7 from memory into f25
fcvt.w.s x20, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x5, 0xda0372b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa1fe0d1e # load x3 with value 0xa1fe0d1e
sw x3, 0(x2) # store 0xa1fe0d1e in memory
flw f26, 0(x2) # load 0xa1fe0d1e from memory into f26
fcvt.w.s x5, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x19, 0x4be345d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf24b9f75 # load x3 with value 0xf24b9f75
sw x3, 0(x2) # store 0xf24b9f75 in memory
flw f27, 0(x2) # load 0xf24b9f75 from memory into f27
fcvt.w.s x19, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x5, 0x7b5c6a90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x392136aa # load x3 with value 0x392136aa
sw x3, 0(x2) # store 0x392136aa in memory
flw f28, 0(x2) # load 0x392136aa from memory into f28
fcvt.w.s x5, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x25, 0x9e09b7ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe1c6844d # load x3 with value 0xe1c6844d
sw x3, 0(x2) # store 0xe1c6844d in memory
flw f29, 0(x2) # load 0xe1c6844d from memory into f29
fcvt.w.s x25, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x5, 0xd3f13265 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6cb62f7a # load x3 with value 0x6cb62f7a
sw x3, 0(x2) # store 0x6cb62f7a in memory
flw f30, 0(x2) # load 0x6cb62f7a from memory into f30
fcvt.w.s x5, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x25, 0xaced61ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xeedf2716 # load x3 with value 0xeedf2716
sw x3, 0(x2) # store 0xeedf2716 in memory
flw f31, 0(x2) # load 0xeedf2716 from memory into f31
fcvt.w.s x25, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
