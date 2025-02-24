///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zfh//WALLY-COV-fmv.x.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.715961
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
li x0, 0x341545fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd0d29948 # load x3 with value 0xd0d29948
sw x3, 0(x2) # store 0xd0d29948 in memory
flh f30, 0(x2) # load 0xd0d29948 from memory into f30
fmv.x.h x0, f30 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x07dbb63a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x93a67a2f # load x3 with value 0x93a67a2f
sw x3, 0(x2) # store 0x93a67a2f in memory
flh f21, 0(x2) # load 0x93a67a2f from memory into f21
fmv.x.h x1, f21 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x575b25ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb698beb9 # load x3 with value 0xb698beb9
sw x3, 0(x2) # store 0xb698beb9 in memory
flh f5, 0(x2) # load 0xb698beb9 from memory into f5
fmv.x.h x2, f5 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x03dc1d33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x78b0a2fd # load x3 with value 0x78b0a2fd
sw x3, 0(x2) # store 0x78b0a2fd in memory
flh f19, 0(x2) # load 0x78b0a2fd from memory into f19
fmv.x.h x3, f19 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xfa0d0944 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8ae34dcf # load x3 with value 0x8ae34dcf
sw x3, 0(x2) # store 0x8ae34dcf in memory
flh f22, 0(x2) # load 0x8ae34dcf from memory into f22
fmv.x.h x4, f22 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xbb5e67db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x059af458 # load x3 with value 0x059af458
sw x3, 0(x2) # store 0x059af458 in memory
flh f11, 0(x2) # load 0x059af458 from memory into f11
fmv.x.h x5, f11 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x30fd3285 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd72d7b74 # load x3 with value 0xd72d7b74
sw x3, 0(x2) # store 0xd72d7b74 in memory
flh f17, 0(x2) # load 0xd72d7b74 from memory into f17
fmv.x.h x6, f17 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xf4ab7297 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x92a55b40 # load x3 with value 0x92a55b40
sw x3, 0(x2) # store 0x92a55b40 in memory
flh f3, 0(x2) # load 0x92a55b40 from memory into f3
fmv.x.h x7, f3 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x65c33480 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x859c3a0d # load x3 with value 0x859c3a0d
sw x3, 0(x2) # store 0x859c3a0d in memory
flh f8, 0(x2) # load 0x859c3a0d from memory into f8
fmv.x.h x8, f8 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x71c589af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2f2a89e0 # load x3 with value 0x2f2a89e0
sw x3, 0(x2) # store 0x2f2a89e0 in memory
flh f23, 0(x2) # load 0x2f2a89e0 from memory into f23
fmv.x.h x9, f23 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xbbbdb83d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe8eee3e6 # load x3 with value 0xe8eee3e6
sw x3, 0(x2) # store 0xe8eee3e6 in memory
flh f21, 0(x2) # load 0xe8eee3e6 from memory into f21
fmv.x.h x10, f21 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x0150dbb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbcc47d05 # load x3 with value 0xbcc47d05
sw x3, 0(x2) # store 0xbcc47d05 in memory
flh f4, 0(x2) # load 0xbcc47d05 from memory into f4
fmv.x.h x11, f4 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xde84c165 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0e69a7f8 # load x3 with value 0x0e69a7f8
sw x3, 0(x2) # store 0x0e69a7f8 in memory
flh f30, 0(x2) # load 0x0e69a7f8 from memory into f30
fmv.x.h x12, f30 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xf8e85d92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3fe8bfb8 # load x3 with value 0x3fe8bfb8
sw x3, 0(x2) # store 0x3fe8bfb8 in memory
flh f30, 0(x2) # load 0x3fe8bfb8 from memory into f30
fmv.x.h x13, f30 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xc85e3a12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3a7e8eb3 # load x3 with value 0x3a7e8eb3
sw x3, 0(x2) # store 0x3a7e8eb3 in memory
flh f7, 0(x2) # load 0x3a7e8eb3 from memory into f7
fmv.x.h x14, f7 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xd6ee3cb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9d959696 # load x3 with value 0x9d959696
sw x3, 0(x2) # store 0x9d959696 in memory
flh f15, 0(x2) # load 0x9d959696 from memory into f15
fmv.x.h x15, f15 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x07a6ff8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0dcb893d # load x3 with value 0x0dcb893d
sw x3, 0(x2) # store 0x0dcb893d in memory
flh f24, 0(x2) # load 0x0dcb893d from memory into f24
fmv.x.h x16, f24 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x2a10b4c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x38144369 # load x3 with value 0x38144369
sw x3, 0(x2) # store 0x38144369 in memory
flh f28, 0(x2) # load 0x38144369 from memory into f28
fmv.x.h x17, f28 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x9a18db0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2b908342 # load x3 with value 0x2b908342
sw x3, 0(x2) # store 0x2b908342 in memory
flh f11, 0(x2) # load 0x2b908342 from memory into f11
fmv.x.h x18, f11 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x415d7ecb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x989e4710 # load x3 with value 0x989e4710
sw x3, 0(x2) # store 0x989e4710 in memory
flh f21, 0(x2) # load 0x989e4710 from memory into f21
fmv.x.h x19, f21 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x0f505a0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x45c8eab9 # load x3 with value 0x45c8eab9
sw x3, 0(x2) # store 0x45c8eab9 in memory
flh f28, 0(x2) # load 0x45c8eab9 from memory into f28
fmv.x.h x20, f28 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xfd1d6434 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa1e136a5 # load x3 with value 0xa1e136a5
sw x3, 0(x2) # store 0xa1e136a5 in memory
flh f12, 0(x2) # load 0xa1e136a5 from memory into f12
fmv.x.h x21, f12 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x1864c309 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x458335b9 # load x3 with value 0x458335b9
sw x3, 0(x2) # store 0x458335b9 in memory
flh f18, 0(x2) # load 0x458335b9 from memory into f18
fmv.x.h x22, f18 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xc295275e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa0332a2d # load x3 with value 0xa0332a2d
sw x3, 0(x2) # store 0xa0332a2d in memory
flh f6, 0(x2) # load 0xa0332a2d from memory into f6
fmv.x.h x23, f6 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x9041bae1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe7da67e9 # load x3 with value 0xe7da67e9
sw x3, 0(x2) # store 0xe7da67e9 in memory
flh f22, 0(x2) # load 0xe7da67e9 from memory into f22
fmv.x.h x24, f22 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x43fedc32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4a9c9ee7 # load x3 with value 0x4a9c9ee7
sw x3, 0(x2) # store 0x4a9c9ee7 in memory
flh f3, 0(x2) # load 0x4a9c9ee7 from memory into f3
fmv.x.h x25, f3 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xf7255f45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3fdc9cc9 # load x3 with value 0x3fdc9cc9
sw x3, 0(x2) # store 0x3fdc9cc9 in memory
flh f6, 0(x2) # load 0x3fdc9cc9 from memory into f6
fmv.x.h x26, f6 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x96a3581e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x86b20c01 # load x3 with value 0x86b20c01
sw x3, 0(x2) # store 0x86b20c01 in memory
flh f8, 0(x2) # load 0x86b20c01 from memory into f8
fmv.x.h x27, f8 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x2bafe2d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x690726c1 # load x3 with value 0x690726c1
sw x3, 0(x2) # store 0x690726c1 in memory
flh f22, 0(x2) # load 0x690726c1 from memory into f22
fmv.x.h x28, f22 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x5a1ed159 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x91297e14 # load x3 with value 0x91297e14
sw x3, 0(x2) # store 0x91297e14 in memory
flh f8, 0(x2) # load 0x91297e14 from memory into f8
fmv.x.h x29, f8 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x9624487d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xac02db2d # load x3 with value 0xac02db2d
sw x3, 0(x2) # store 0xac02db2d in memory
flh f21, 0(x2) # load 0xac02db2d from memory into f21
fmv.x.h x30, f21 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x524aaf2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe7088609 # load x3 with value 0xe7088609
sw x3, 0(x2) # store 0xe7088609 in memory
flh f30, 0(x2) # load 0xe7088609 from memory into f30
fmv.x.h x31, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x1, 0x421f608e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
fmv.x.h x1, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
li x23, 0x4b6a4cb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f5, 0(x2) # load 0x00008000 from memory into f5
fmv.x.h x23, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
li x15, 0xca46cb73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
fmv.x.h x15, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
li x24, 0xc87338bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f23, 0(x2) # load 0x0000bc00 from memory into f23
fmv.x.h x24, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
li x8, 0xe29e20bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f30, 0(x2) # load 0x00003e00 from memory into f30
fmv.x.h x8, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
li x26, 0x84e16854 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f25, 0(x2) # load 0x0000be00 from memory into f25
fmv.x.h x26, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
li x1, 0x7bfcbd48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
fmv.x.h x1, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
li x12, 0xf2bb531b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f7, 0(x2) # load 0x0000c000 from memory into f7
fmv.x.h x12, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
li x1, 0xe372758b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
fmv.x.h x1, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
li x8, 0x6dd72433 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
fmv.x.h x8, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
li x19, 0x573ecca0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f13, 0(x2) # load 0x00007bff from memory into f13
fmv.x.h x19, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
li x10, 0x0bfec8e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
fmv.x.h x10, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
li x5, 0x33db5615 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f9, 0(x2) # load 0x000003ff from memory into f9
fmv.x.h x5, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
li x6, 0x1f967383 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
fmv.x.h x6, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
li x28, 0x2e797807 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
fmv.x.h x28, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
li x9, 0x373874c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
fmv.x.h x9, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x7, 0xd0d072be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
fmv.x.h x7, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
li x23, 0xcba430f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f29, 0(x2) # load 0x00008001 from memory into f29
fmv.x.h x23, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
li x5, 0xd6c538fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f13, 0(x2) # load 0x00007c00 from memory into f13
fmv.x.h x5, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
li x18, 0x36080c52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
fmv.x.h x18, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
li x10, 0xff4ec10a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
fmv.x.h x10, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
li x8, 0x577ce8f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f16, 0(x2) # load 0x00007fff from memory into f16
fmv.x.h x8, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
li x6, 0x1391f60a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f7, 0(x2) # load 0x00007c01 from memory into f7
fmv.x.h x6, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
li x5, 0x60bf567e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f27, 0(x2) # load 0x00007dff from memory into f27
fmv.x.h x5, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
li x15, 0x2a4db8aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f31, 0(x2) # load 0x000058b4 from memory into f31
fmv.x.h x15, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
li x13, 0x7b01f2cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f4, 0(x2) # load 0x0000c93a from memory into f4
fmv.x.h x13, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x17, 0xc195af98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x018e13cb # load x3 with value 0x018e13cb
sw x3, 0(x2) # store 0x018e13cb in memory
flh f0, 0(x2) # load 0x018e13cb from memory into f0
fmv.x.h x17, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x15, 0x7a7a95e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd0a9bfec # load x3 with value 0xd0a9bfec
sw x3, 0(x2) # store 0xd0a9bfec in memory
flh f1, 0(x2) # load 0xd0a9bfec from memory into f1
fmv.x.h x15, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x31, 0x30c2b1c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe3e64f64 # load x3 with value 0xe3e64f64
sw x3, 0(x2) # store 0xe3e64f64 in memory
flh f2, 0(x2) # load 0xe3e64f64 from memory into f2
fmv.x.h x31, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x29, 0xb68dda3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0765bcdd # load x3 with value 0x0765bcdd
sw x3, 0(x2) # store 0x0765bcdd in memory
flh f3, 0(x2) # load 0x0765bcdd from memory into f3
fmv.x.h x29, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x26, 0xe8297096 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd0ffb388 # load x3 with value 0xd0ffb388
sw x3, 0(x2) # store 0xd0ffb388 in memory
flh f4, 0(x2) # load 0xd0ffb388 from memory into f4
fmv.x.h x26, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x2, 0xbb8e1d32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbb4136cf # load x3 with value 0xbb4136cf
sw x3, 0(x2) # store 0xbb4136cf in memory
flh f5, 0(x2) # load 0xbb4136cf from memory into f5
fmv.x.h x2, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x1, 0x078e1fcf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x14bdbacc # load x3 with value 0x14bdbacc
sw x3, 0(x2) # store 0x14bdbacc in memory
flh f6, 0(x2) # load 0x14bdbacc from memory into f6
fmv.x.h x1, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x20, 0x79db3eb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7149d571 # load x3 with value 0x7149d571
sw x3, 0(x2) # store 0x7149d571 in memory
flh f7, 0(x2) # load 0x7149d571 from memory into f7
fmv.x.h x20, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x22, 0x5c98187e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9cc4c769 # load x3 with value 0x9cc4c769
sw x3, 0(x2) # store 0x9cc4c769 in memory
flh f8, 0(x2) # load 0x9cc4c769 from memory into f8
fmv.x.h x22, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x18, 0xf77c859b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8482c30a # load x3 with value 0x8482c30a
sw x3, 0(x2) # store 0x8482c30a in memory
flh f9, 0(x2) # load 0x8482c30a from memory into f9
fmv.x.h x18, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x15, 0x8afc46ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x54707d4f # load x3 with value 0x54707d4f
sw x3, 0(x2) # store 0x54707d4f in memory
flh f10, 0(x2) # load 0x54707d4f from memory into f10
fmv.x.h x15, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x12, 0x532e3ca6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x634ef5a0 # load x3 with value 0x634ef5a0
sw x3, 0(x2) # store 0x634ef5a0 in memory
flh f11, 0(x2) # load 0x634ef5a0 from memory into f11
fmv.x.h x12, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x13, 0x3010046a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x018266f2 # load x3 with value 0x018266f2
sw x3, 0(x2) # store 0x018266f2 in memory
flh f12, 0(x2) # load 0x018266f2 from memory into f12
fmv.x.h x13, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x5, 0xa689308c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf226816c # load x3 with value 0xf226816c
sw x3, 0(x2) # store 0xf226816c in memory
flh f13, 0(x2) # load 0xf226816c from memory into f13
fmv.x.h x5, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x31, 0x7c080741 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb2d96ba7 # load x3 with value 0xb2d96ba7
sw x3, 0(x2) # store 0xb2d96ba7 in memory
flh f14, 0(x2) # load 0xb2d96ba7 from memory into f14
fmv.x.h x31, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x23, 0xdf010e80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa6779664 # load x3 with value 0xa6779664
sw x3, 0(x2) # store 0xa6779664 in memory
flh f15, 0(x2) # load 0xa6779664 from memory into f15
fmv.x.h x23, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x19, 0xca3639a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xead7eff1 # load x3 with value 0xead7eff1
sw x3, 0(x2) # store 0xead7eff1 in memory
flh f16, 0(x2) # load 0xead7eff1 from memory into f16
fmv.x.h x19, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x12, 0xf5d7727b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x776951d2 # load x3 with value 0x776951d2
sw x3, 0(x2) # store 0x776951d2 in memory
flh f17, 0(x2) # load 0x776951d2 from memory into f17
fmv.x.h x12, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x19, 0x1ab759f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbe6b9278 # load x3 with value 0xbe6b9278
sw x3, 0(x2) # store 0xbe6b9278 in memory
flh f18, 0(x2) # load 0xbe6b9278 from memory into f18
fmv.x.h x19, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x14, 0xfecac0ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbc7bd052 # load x3 with value 0xbc7bd052
sw x3, 0(x2) # store 0xbc7bd052 in memory
flh f19, 0(x2) # load 0xbc7bd052 from memory into f19
fmv.x.h x14, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x2, 0xff7c68fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5c007205 # load x3 with value 0x5c007205
sw x3, 0(x2) # store 0x5c007205 in memory
flh f20, 0(x2) # load 0x5c007205 from memory into f20
fmv.x.h x2, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x7, 0x1b72cf13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x42984b28 # load x3 with value 0x42984b28
sw x3, 0(x2) # store 0x42984b28 in memory
flh f21, 0(x2) # load 0x42984b28 from memory into f21
fmv.x.h x7, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x5, 0x85591595 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x048aaa03 # load x3 with value 0x048aaa03
sw x3, 0(x2) # store 0x048aaa03 in memory
flh f22, 0(x2) # load 0x048aaa03 from memory into f22
fmv.x.h x5, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x30, 0x8268cdf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd2f28db2 # load x3 with value 0xd2f28db2
sw x3, 0(x2) # store 0xd2f28db2 in memory
flh f23, 0(x2) # load 0xd2f28db2 from memory into f23
fmv.x.h x30, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x17, 0x5de2befc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9836d1a3 # load x3 with value 0x9836d1a3
sw x3, 0(x2) # store 0x9836d1a3 in memory
flh f24, 0(x2) # load 0x9836d1a3 from memory into f24
fmv.x.h x17, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x14, 0xd87c912d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9f11a509 # load x3 with value 0x9f11a509
sw x3, 0(x2) # store 0x9f11a509 in memory
flh f25, 0(x2) # load 0x9f11a509 from memory into f25
fmv.x.h x14, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x12, 0xc20d554e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2986ea6a # load x3 with value 0x2986ea6a
sw x3, 0(x2) # store 0x2986ea6a in memory
flh f26, 0(x2) # load 0x2986ea6a from memory into f26
fmv.x.h x12, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x16, 0x9e30fd92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe819a464 # load x3 with value 0xe819a464
sw x3, 0(x2) # store 0xe819a464 in memory
flh f27, 0(x2) # load 0xe819a464 from memory into f27
fmv.x.h x16, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x22, 0xcab1660f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9727366d # load x3 with value 0x9727366d
sw x3, 0(x2) # store 0x9727366d in memory
flh f28, 0(x2) # load 0x9727366d from memory into f28
fmv.x.h x22, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x22, 0xa3df55a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2cdc29fc # load x3 with value 0x2cdc29fc
sw x3, 0(x2) # store 0x2cdc29fc in memory
flh f29, 0(x2) # load 0x2cdc29fc from memory into f29
fmv.x.h x22, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x2, 0x600eb89e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x65339d53 # load x3 with value 0x65339d53
sw x3, 0(x2) # store 0x65339d53 in memory
flh f30, 0(x2) # load 0x65339d53 from memory into f30
fmv.x.h x2, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x20, 0x539a52a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd7cb2b43 # load x3 with value 0xd7cb2b43
sw x3, 0(x2) # store 0xd7cb2b43 in memory
flh f31, 0(x2) # load 0xd7cb2b43 from memory into f31
fmv.x.h x20, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
