///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zfh//WALLY-COV-fsgnjn.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.759988
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
li x4, 0x741a1c91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f16, 0(x2) # load 0x00000000 from memory into f16
li x3, 0xfd5afbae # load x3 with value 0xfd5afbae
sw x3, 0(x2) # store 0xfd5afbae in memory
flh f28, 0(x2) # load 0xfd5afbae from memory into f28
fsgnjn.h f4, f16, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
li x9, 0xf49bf875 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
li x3, 0x368a37a1 # load x3 with value 0x368a37a1
sw x3, 0(x2) # store 0x368a37a1 in memory
flh f20, 0(x2) # load 0x368a37a1 from memory into f20
fsgnjn.h f9, f13, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
li x12, 0x7b62c52d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
li x3, 0xcb0f0f30 # load x3 with value 0xcb0f0f30
sw x3, 0(x2) # store 0xcb0f0f30 in memory
flh f14, 0(x2) # load 0xcb0f0f30 from memory into f14
fsgnjn.h f12, f24, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
li x19, 0xc209d530 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f3, 0(x2) # load 0x0000bc00 from memory into f3
li x3, 0xb8db1e87 # load x3 with value 0xb8db1e87
sw x3, 0(x2) # store 0xb8db1e87 in memory
flh f8, 0(x2) # load 0xb8db1e87 from memory into f8
fsgnjn.h f19, f3, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
li x7, 0x1b814304 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f15, 0(x2) # load 0x00003e00 from memory into f15
li x3, 0x0b564432 # load x3 with value 0x0b564432
sw x3, 0(x2) # store 0x0b564432 in memory
flh f31, 0(x2) # load 0x0b564432 from memory into f31
fsgnjn.h f7, f15, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
li x19, 0x5f6822cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f4, 0(x2) # load 0x0000be00 from memory into f4
li x3, 0xf7143b27 # load x3 with value 0xf7143b27
sw x3, 0(x2) # store 0xf7143b27 in memory
flh f10, 0(x2) # load 0xf7143b27 from memory into f10
fsgnjn.h f19, f4, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
li x25, 0xfb024b8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
li x3, 0xf993e3b0 # load x3 with value 0xf993e3b0
sw x3, 0(x2) # store 0xf993e3b0 in memory
flh f10, 0(x2) # load 0xf993e3b0 from memory into f10
fsgnjn.h f25, f28, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
li x30, 0xc09d3c49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f27, 0(x2) # load 0x0000c000 from memory into f27
li x3, 0x1cad1eff # load x3 with value 0x1cad1eff
sw x3, 0(x2) # store 0x1cad1eff in memory
flh f20, 0(x2) # load 0x1cad1eff from memory into f20
fsgnjn.h f30, f27, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
li x15, 0xd0788c67 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
li x3, 0xbd9d69e4 # load x3 with value 0xbd9d69e4
sw x3, 0(x2) # store 0xbd9d69e4 in memory
flh f9, 0(x2) # load 0xbd9d69e4 from memory into f9
fsgnjn.h f15, f13, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
li x24, 0x923252c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f13, 0(x2) # load 0x00008400 from memory into f13
li x3, 0x58693ef7 # load x3 with value 0x58693ef7
sw x3, 0(x2) # store 0x58693ef7 in memory
flh f31, 0(x2) # load 0x58693ef7 from memory into f31
fsgnjn.h f24, f13, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
li x17, 0xd3875610 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
li x3, 0x6f65e928 # load x3 with value 0x6f65e928
sw x3, 0(x2) # store 0x6f65e928 in memory
flh f4, 0(x2) # load 0x6f65e928 from memory into f4
fsgnjn.h f17, f12, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
li x27, 0x28aa4a8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f22, 0(x2) # load 0x0000fbff from memory into f22
li x3, 0x1a69ad26 # load x3 with value 0x1a69ad26
sw x3, 0(x2) # store 0x1a69ad26 in memory
flh f12, 0(x2) # load 0x1a69ad26 from memory into f12
fsgnjn.h f27, f22, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
li x15, 0x84933334 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f25, 0(x2) # load 0x000003ff from memory into f25
li x3, 0x017c1709 # load x3 with value 0x017c1709
sw x3, 0(x2) # store 0x017c1709 in memory
flh f24, 0(x2) # load 0x017c1709 from memory into f24
fsgnjn.h f15, f25, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
li x28, 0xb4129da4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f4, 0(x2) # load 0x000083ff from memory into f4
li x3, 0xa0115037 # load x3 with value 0xa0115037
sw x3, 0(x2) # store 0xa0115037 in memory
flh f13, 0(x2) # load 0xa0115037 from memory into f13
fsgnjn.h f28, f4, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
li x2, 0x8322d7ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
li x3, 0xbfa79d49 # load x3 with value 0xbfa79d49
sw x3, 0(x2) # store 0xbfa79d49 in memory
flh f23, 0(x2) # load 0xbfa79d49 from memory into f23
fsgnjn.h f2, f13, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
li x28, 0xbf9f1778 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f3, 0(x2) # load 0x00008200 from memory into f3
li x3, 0x3c947798 # load x3 with value 0x3c947798
sw x3, 0(x2) # store 0x3c947798 in memory
flh f18, 0(x2) # load 0x3c947798 from memory into f18
fsgnjn.h f28, f3, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x20, 0xcbede889 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
li x3, 0xbaa73970 # load x3 with value 0xbaa73970
sw x3, 0(x2) # store 0xbaa73970 in memory
flh f12, 0(x2) # load 0xbaa73970 from memory into f12
fsgnjn.h f20, f11, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
li x19, 0xced107ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f30, 0(x2) # load 0x00008001 from memory into f30
li x3, 0xb547b3bf # load x3 with value 0xb547b3bf
sw x3, 0(x2) # store 0xb547b3bf in memory
flh f27, 0(x2) # load 0xb547b3bf from memory into f27
fsgnjn.h f19, f30, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
li x28, 0xda001a70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f21, 0(x2) # load 0x00007c00 from memory into f21
li x3, 0xcdbed9f9 # load x3 with value 0xcdbed9f9
sw x3, 0(x2) # store 0xcdbed9f9 in memory
flh f4, 0(x2) # load 0xcdbed9f9 from memory into f4
fsgnjn.h f28, f21, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
li x25, 0x545cbb57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
li x3, 0xff5cd709 # load x3 with value 0xff5cd709
sw x3, 0(x2) # store 0xff5cd709 in memory
flh f20, 0(x2) # load 0xff5cd709 from memory into f20
fsgnjn.h f25, f28, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
li x18, 0x675dbf77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f25, 0(x2) # load 0x00007e00 from memory into f25
li x3, 0x00da76fe # load x3 with value 0x00da76fe
sw x3, 0(x2) # store 0x00da76fe in memory
flh f3, 0(x2) # load 0x00da76fe from memory into f3
fsgnjn.h f18, f25, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
li x18, 0x5e7b31e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
li x3, 0x780a1842 # load x3 with value 0x780a1842
sw x3, 0(x2) # store 0x780a1842 in memory
flh f15, 0(x2) # load 0x780a1842 from memory into f15
fsgnjn.h f18, f12, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
li x30, 0xfbb8357e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f10, 0(x2) # load 0x00007c01 from memory into f10
li x3, 0xd0ecc160 # load x3 with value 0xd0ecc160
sw x3, 0(x2) # store 0xd0ecc160 in memory
flh f11, 0(x2) # load 0xd0ecc160 from memory into f11
fsgnjn.h f30, f10, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
li x31, 0x0afb8313 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
li x3, 0xf0d2c6f2 # load x3 with value 0xf0d2c6f2
sw x3, 0(x2) # store 0xf0d2c6f2 in memory
flh f8, 0(x2) # load 0xf0d2c6f2 from memory into f8
fsgnjn.h f31, f30, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
li x12, 0x5d236297 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
li x3, 0x4896096d # load x3 with value 0x4896096d
sw x3, 0(x2) # store 0x4896096d in memory
flh f11, 0(x2) # load 0x4896096d from memory into f11
fsgnjn.h f12, f8, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
li x25, 0xe0de6997 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
li x3, 0xcadbac71 # load x3 with value 0xcadbac71
sw x3, 0(x2) # store 0xcadbac71 in memory
flh f2, 0(x2) # load 0xcadbac71 from memory into f2
fsgnjn.h f25, f6, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x18, 0x468312ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x525556a7 # load x3 with value 0x525556a7
sw x3, 0(x2) # store 0x525556a7 in memory
flh f17, 0(x2) # load 0x525556a7 from memory into f17
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f13, 0(x2) # load 0x00000000 from memory into f13
fsgnjn.h f18, f17, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000)
li x7, 0x3f70d7ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcc79bba2 # load x3 with value 0xcc79bba2
sw x3, 0(x2) # store 0xcc79bba2 in memory
flh f5, 0(x2) # load 0xcc79bba2 from memory into f5
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
fsgnjn.h f7, f5, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3c00)
li x19, 0xee2b88e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x93037f48 # load x3 with value 0x93037f48
sw x3, 0(x2) # store 0x93037f48 in memory
flh f25, 0(x2) # load 0x93037f48 from memory into f25
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f18, 0(x2) # load 0x00003c00 from memory into f18
fsgnjn.h f19, f25, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbc00)
li x16, 0x0bbe4446 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb2145261 # load x3 with value 0xb2145261
sw x3, 0(x2) # store 0xb2145261 in memory
flh f28, 0(x2) # load 0xb2145261 from memory into f28
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
fsgnjn.h f16, f28, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3e00)
li x5, 0x60312a54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x307a30fe # load x3 with value 0x307a30fe
sw x3, 0(x2) # store 0x307a30fe in memory
flh f22, 0(x2) # load 0x307a30fe from memory into f22
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f28, 0(x2) # load 0x00003e00 from memory into f28
fsgnjn.h f5, f22, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbe00)
li x30, 0x1ac05c26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9fbf45e8 # load x3 with value 0x9fbf45e8
sw x3, 0(x2) # store 0x9fbf45e8 in memory
flh f7, 0(x2) # load 0x9fbf45e8 from memory into f7
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f6, 0(x2) # load 0x0000be00 from memory into f6
fsgnjn.h f30, f7, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000)
li x31, 0x030e26eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x19c67cd6 # load x3 with value 0x19c67cd6
sw x3, 0(x2) # store 0x19c67cd6 in memory
flh f27, 0(x2) # load 0x19c67cd6 from memory into f27
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
fsgnjn.h f31, f27, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000)
li x21, 0x79bdbe5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfafdf154 # load x3 with value 0xfafdf154
sw x3, 0(x2) # store 0xfafdf154 in memory
flh f5, 0(x2) # load 0xfafdf154 from memory into f5
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f28, 0(x2) # load 0x0000c000 from memory into f28
fsgnjn.h f21, f5, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400)
li x18, 0x8b22fcc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcff23ab7 # load x3 with value 0xcff23ab7
sw x3, 0(x2) # store 0xcff23ab7 in memory
flh f17, 0(x2) # load 0xcff23ab7 from memory into f17
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
fsgnjn.h f18, f17, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8400)
li x17, 0x2643ed05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xef4002b1 # load x3 with value 0xef4002b1
sw x3, 0(x2) # store 0xef4002b1 in memory
flh f13, 0(x2) # load 0xef4002b1 from memory into f13
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f15, 0(x2) # load 0x00008400 from memory into f15
fsgnjn.h f17, f13, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7bff)
li x28, 0xff5cc9cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbae5714d # load x3 with value 0xbae5714d
sw x3, 0(x2) # store 0xbae5714d in memory
flh f5, 0(x2) # load 0xbae5714d from memory into f5
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
fsgnjn.h f28, f5, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfbff)
li x31, 0xedc3875b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf49d33b6 # load x3 with value 0xf49d33b6
sw x3, 0(x2) # store 0xf49d33b6 in memory
flh f5, 0(x2) # load 0xf49d33b6 from memory into f5
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f7, 0(x2) # load 0x0000fbff from memory into f7
fsgnjn.h f31, f5, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff)
li x18, 0xec5459a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3d333819 # load x3 with value 0x3d333819
sw x3, 0(x2) # store 0x3d333819 in memory
flh f5, 0(x2) # load 0x3d333819 from memory into f5
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f14, 0(x2) # load 0x000003ff from memory into f14
fsgnjn.h f18, f5, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x83ff)
li x21, 0x521aa272 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9900949c # load x3 with value 0x9900949c
sw x3, 0(x2) # store 0x9900949c in memory
flh f6, 0(x2) # load 0x9900949c from memory into f6
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f5, 0(x2) # load 0x000083ff from memory into f5
fsgnjn.h f21, f6, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x200)
li x29, 0x7fba7c5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0ef90598 # load x3 with value 0x0ef90598
sw x3, 0(x2) # store 0x0ef90598 in memory
flh f5, 0(x2) # load 0x0ef90598 from memory into f5
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
fsgnjn.h f29, f5, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8200)
li x17, 0xe5f9b809 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3326ebea # load x3 with value 0x3326ebea
sw x3, 0(x2) # store 0x3326ebea in memory
flh f6, 0(x2) # load 0x3326ebea from memory into f6
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
fsgnjn.h f17, f6, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x29, 0x276bc7f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x681b2908 # load x3 with value 0x681b2908
sw x3, 0(x2) # store 0x681b2908 in memory
flh f5, 0(x2) # load 0x681b2908 from memory into f5
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f22, 0(x2) # load 0x00000001 from memory into f22
fsgnjn.h f29, f5, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8001)
li x10, 0x3f04ffed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6882d445 # load x3 with value 0x6882d445
sw x3, 0(x2) # store 0x6882d445 in memory
flh f27, 0(x2) # load 0x6882d445 from memory into f27
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f8, 0(x2) # load 0x00008001 from memory into f8
fsgnjn.h f10, f27, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c00)
li x12, 0x18dc11f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1a75c870 # load x3 with value 0x1a75c870
sw x3, 0(x2) # store 0x1a75c870 in memory
flh f21, 0(x2) # load 0x1a75c870 from memory into f21
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f29, 0(x2) # load 0x00007c00 from memory into f29
fsgnjn.h f12, f21, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc00)
li x22, 0x5906a637 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0405c792 # load x3 with value 0x0405c792
sw x3, 0(x2) # store 0x0405c792 in memory
flh f7, 0(x2) # load 0x0405c792 from memory into f7
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
fsgnjn.h f22, f7, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e00)
li x28, 0x5f733073 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x02b2e223 # load x3 with value 0x02b2e223
sw x3, 0(x2) # store 0x02b2e223 in memory
flh f21, 0(x2) # load 0x02b2e223 from memory into f21
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f4, 0(x2) # load 0x00007e00 from memory into f4
fsgnjn.h f28, f21, f4 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff)
li x19, 0xf461236b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd787c165 # load x3 with value 0xd787c165
sw x3, 0(x2) # store 0xd787c165 in memory
flh f23, 0(x2) # load 0xd787c165 from memory into f23
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
fsgnjn.h f19, f23, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c01)
li x2, 0x7235981e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x91c2f8ff # load x3 with value 0x91c2f8ff
sw x3, 0(x2) # store 0x91c2f8ff in memory
flh f30, 0(x2) # load 0x91c2f8ff from memory into f30
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
fsgnjn.h f2, f30, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7dff)
li x24, 0xa11bf6ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7c7eac40 # load x3 with value 0x7c7eac40
sw x3, 0(x2) # store 0x7c7eac40 in memory
flh f13, 0(x2) # load 0x7c7eac40 from memory into f13
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f14, 0(x2) # load 0x00007dff from memory into f14
fsgnjn.h f24, f13, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x58b4)
li x2, 0x4169229c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e7c61e # load x3 with value 0xa6e7c61e
sw x3, 0(x2) # store 0xa6e7c61e in memory
flh f27, 0(x2) # load 0xa6e7c61e from memory into f27
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
fsgnjn.h f2, f27, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc93a)
li x12, 0x182eccad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcb669cdf # load x3 with value 0xcb669cdf
sw x3, 0(x2) # store 0xcb669cdf in memory
flh f21, 0(x2) # load 0xcb669cdf from memory into f21
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f9, 0(x2) # load 0x0000c93a from memory into f9
fsgnjn.h f12, f21, f9 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0xda078088 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeef8b143 # load x3 with value 0xeef8b143
sw x3, 0(x2) # store 0xeef8b143 in memory
flh f13, 0(x2) # load 0xeef8b143 from memory into f13
li x3, 0xa7323d44 # load x3 with value 0xa7323d44
sw x3, 0(x2) # store 0xa7323d44 in memory
flh f7, 0(x2) # load 0xa7323d44 from memory into f7
fsgnjn.h f0, f13, f7 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0xb1807688 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x31560f7c # load x3 with value 0x31560f7c
sw x3, 0(x2) # store 0x31560f7c in memory
flh f15, 0(x2) # load 0x31560f7c from memory into f15
li x3, 0x1eeefe98 # load x3 with value 0x1eeefe98
sw x3, 0(x2) # store 0x1eeefe98 in memory
flh f21, 0(x2) # load 0x1eeefe98 from memory into f21
fsgnjn.h f1, f15, f21 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x7339fbee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2cd35265 # load x3 with value 0x2cd35265
sw x3, 0(x2) # store 0x2cd35265 in memory
flh f26, 0(x2) # load 0x2cd35265 from memory into f26
li x3, 0x38495a60 # load x3 with value 0x38495a60
sw x3, 0(x2) # store 0x38495a60 in memory
flh f7, 0(x2) # load 0x38495a60 from memory into f7
fsgnjn.h f2, f26, f7 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x2529ba84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x42f0c70e # load x3 with value 0x42f0c70e
sw x3, 0(x2) # store 0x42f0c70e in memory
flh f4, 0(x2) # load 0x42f0c70e from memory into f4
li x3, 0xbc531b9a # load x3 with value 0xbc531b9a
sw x3, 0(x2) # store 0xbc531b9a in memory
flh f13, 0(x2) # load 0xbc531b9a from memory into f13
fsgnjn.h f3, f4, f13 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0xe8d845d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x65c64338 # load x3 with value 0x65c64338
sw x3, 0(x2) # store 0x65c64338 in memory
flh f13, 0(x2) # load 0x65c64338 from memory into f13
li x3, 0x7d98694b # load x3 with value 0x7d98694b
sw x3, 0(x2) # store 0x7d98694b in memory
flh f3, 0(x2) # load 0x7d98694b from memory into f3
fsgnjn.h f4, f13, f3 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x33b7df06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x278cdad8 # load x3 with value 0x278cdad8
sw x3, 0(x2) # store 0x278cdad8 in memory
flh f20, 0(x2) # load 0x278cdad8 from memory into f20
li x3, 0xaa5d1660 # load x3 with value 0xaa5d1660
sw x3, 0(x2) # store 0xaa5d1660 in memory
flh f21, 0(x2) # load 0xaa5d1660 from memory into f21
fsgnjn.h f5, f20, f21 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x952e95f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd5840a1f # load x3 with value 0xd5840a1f
sw x3, 0(x2) # store 0xd5840a1f in memory
flh f19, 0(x2) # load 0xd5840a1f from memory into f19
li x3, 0xc860199c # load x3 with value 0xc860199c
sw x3, 0(x2) # store 0xc860199c in memory
flh f5, 0(x2) # load 0xc860199c from memory into f5
fsgnjn.h f6, f19, f5 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0xd6a20892 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x172e20a9 # load x3 with value 0x172e20a9
sw x3, 0(x2) # store 0x172e20a9 in memory
flh f22, 0(x2) # load 0x172e20a9 from memory into f22
li x3, 0x98bdab89 # load x3 with value 0x98bdab89
sw x3, 0(x2) # store 0x98bdab89 in memory
flh f1, 0(x2) # load 0x98bdab89 from memory into f1
fsgnjn.h f7, f22, f1 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x6f66ca3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5e5b1434 # load x3 with value 0x5e5b1434
sw x3, 0(x2) # store 0x5e5b1434 in memory
flh f31, 0(x2) # load 0x5e5b1434 from memory into f31
li x3, 0xa2aa80d5 # load x3 with value 0xa2aa80d5
sw x3, 0(x2) # store 0xa2aa80d5 in memory
flh f11, 0(x2) # load 0xa2aa80d5 from memory into f11
fsgnjn.h f8, f31, f11 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x6d244019 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x936b44b8 # load x3 with value 0x936b44b8
sw x3, 0(x2) # store 0x936b44b8 in memory
flh f5, 0(x2) # load 0x936b44b8 from memory into f5
li x3, 0x420b2265 # load x3 with value 0x420b2265
sw x3, 0(x2) # store 0x420b2265 in memory
flh f23, 0(x2) # load 0x420b2265 from memory into f23
fsgnjn.h f9, f5, f23 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x309fe763 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdd9ce4da # load x3 with value 0xdd9ce4da
sw x3, 0(x2) # store 0xdd9ce4da in memory
flh f23, 0(x2) # load 0xdd9ce4da from memory into f23
li x3, 0xca195246 # load x3 with value 0xca195246
sw x3, 0(x2) # store 0xca195246 in memory
flh f8, 0(x2) # load 0xca195246 from memory into f8
fsgnjn.h f10, f23, f8 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x033d18d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x95c1b9ba # load x3 with value 0x95c1b9ba
sw x3, 0(x2) # store 0x95c1b9ba in memory
flh f26, 0(x2) # load 0x95c1b9ba from memory into f26
li x3, 0x047d22a3 # load x3 with value 0x047d22a3
sw x3, 0(x2) # store 0x047d22a3 in memory
flh f6, 0(x2) # load 0x047d22a3 from memory into f6
fsgnjn.h f11, f26, f6 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x792088b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9f6d7c3a # load x3 with value 0x9f6d7c3a
sw x3, 0(x2) # store 0x9f6d7c3a in memory
flh f8, 0(x2) # load 0x9f6d7c3a from memory into f8
li x3, 0x008c86fc # load x3 with value 0x008c86fc
sw x3, 0(x2) # store 0x008c86fc in memory
flh f26, 0(x2) # load 0x008c86fc from memory into f26
fsgnjn.h f12, f8, f26 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x8e0c6a73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa29966e2 # load x3 with value 0xa29966e2
sw x3, 0(x2) # store 0xa29966e2 in memory
flh f27, 0(x2) # load 0xa29966e2 from memory into f27
li x3, 0x9053586d # load x3 with value 0x9053586d
sw x3, 0(x2) # store 0x9053586d in memory
flh f4, 0(x2) # load 0x9053586d from memory into f4
fsgnjn.h f13, f27, f4 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x58ad5fae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf7860492 # load x3 with value 0xf7860492
sw x3, 0(x2) # store 0xf7860492 in memory
flh f22, 0(x2) # load 0xf7860492 from memory into f22
li x3, 0x6d95757c # load x3 with value 0x6d95757c
sw x3, 0(x2) # store 0x6d95757c in memory
flh f6, 0(x2) # load 0x6d95757c from memory into f6
fsgnjn.h f14, f22, f6 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x3e436ff4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaf2875b8 # load x3 with value 0xaf2875b8
sw x3, 0(x2) # store 0xaf2875b8 in memory
flh f20, 0(x2) # load 0xaf2875b8 from memory into f20
li x3, 0x1b2ed3af # load x3 with value 0x1b2ed3af
sw x3, 0(x2) # store 0x1b2ed3af in memory
flh f14, 0(x2) # load 0x1b2ed3af from memory into f14
fsgnjn.h f15, f20, f14 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0xc7ccc531 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd3215b6a # load x3 with value 0xd3215b6a
sw x3, 0(x2) # store 0xd3215b6a in memory
flh f20, 0(x2) # load 0xd3215b6a from memory into f20
li x3, 0x6decbc51 # load x3 with value 0x6decbc51
sw x3, 0(x2) # store 0x6decbc51 in memory
flh f30, 0(x2) # load 0x6decbc51 from memory into f30
fsgnjn.h f16, f20, f30 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0xcf293c97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf548ef74 # load x3 with value 0xf548ef74
sw x3, 0(x2) # store 0xf548ef74 in memory
flh f15, 0(x2) # load 0xf548ef74 from memory into f15
li x3, 0x00eb9980 # load x3 with value 0x00eb9980
sw x3, 0(x2) # store 0x00eb9980 in memory
flh f27, 0(x2) # load 0x00eb9980 from memory into f27
fsgnjn.h f17, f15, f27 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0xf5f070f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1cb712e7 # load x3 with value 0x1cb712e7
sw x3, 0(x2) # store 0x1cb712e7 in memory
flh f23, 0(x2) # load 0x1cb712e7 from memory into f23
li x3, 0xb0a5996c # load x3 with value 0xb0a5996c
sw x3, 0(x2) # store 0xb0a5996c in memory
flh f11, 0(x2) # load 0xb0a5996c from memory into f11
fsgnjn.h f18, f23, f11 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x00b3b58f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf2c6fb01 # load x3 with value 0xf2c6fb01
sw x3, 0(x2) # store 0xf2c6fb01 in memory
flh f25, 0(x2) # load 0xf2c6fb01 from memory into f25
li x3, 0x64487075 # load x3 with value 0x64487075
sw x3, 0(x2) # store 0x64487075 in memory
flh f9, 0(x2) # load 0x64487075 from memory into f9
fsgnjn.h f19, f25, f9 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x7df7115b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6ac9fef6 # load x3 with value 0x6ac9fef6
sw x3, 0(x2) # store 0x6ac9fef6 in memory
flh f9, 0(x2) # load 0x6ac9fef6 from memory into f9
li x3, 0x199b5c71 # load x3 with value 0x199b5c71
sw x3, 0(x2) # store 0x199b5c71 in memory
flh f10, 0(x2) # load 0x199b5c71 from memory into f10
fsgnjn.h f20, f9, f10 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0xa8dc576e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf9a3d414 # load x3 with value 0xf9a3d414
sw x3, 0(x2) # store 0xf9a3d414 in memory
flh f6, 0(x2) # load 0xf9a3d414 from memory into f6
li x3, 0x6e11317e # load x3 with value 0x6e11317e
sw x3, 0(x2) # store 0x6e11317e in memory
flh f17, 0(x2) # load 0x6e11317e from memory into f17
fsgnjn.h f21, f6, f17 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x89afaf03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd2539139 # load x3 with value 0xd2539139
sw x3, 0(x2) # store 0xd2539139 in memory
flh f30, 0(x2) # load 0xd2539139 from memory into f30
li x3, 0x91ba7254 # load x3 with value 0x91ba7254
sw x3, 0(x2) # store 0x91ba7254 in memory
flh f8, 0(x2) # load 0x91ba7254 from memory into f8
fsgnjn.h f22, f30, f8 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x335ac41f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6752c58a # load x3 with value 0x6752c58a
sw x3, 0(x2) # store 0x6752c58a in memory
flh f5, 0(x2) # load 0x6752c58a from memory into f5
li x3, 0xe9965225 # load x3 with value 0xe9965225
sw x3, 0(x2) # store 0xe9965225 in memory
flh f25, 0(x2) # load 0xe9965225 from memory into f25
fsgnjn.h f23, f5, f25 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x9fd22941 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x10cbb694 # load x3 with value 0x10cbb694
sw x3, 0(x2) # store 0x10cbb694 in memory
flh f27, 0(x2) # load 0x10cbb694 from memory into f27
li x3, 0x5c3ed8ef # load x3 with value 0x5c3ed8ef
sw x3, 0(x2) # store 0x5c3ed8ef in memory
flh f28, 0(x2) # load 0x5c3ed8ef from memory into f28
fsgnjn.h f24, f27, f28 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x10d9b1bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9a5c32b1 # load x3 with value 0x9a5c32b1
sw x3, 0(x2) # store 0x9a5c32b1 in memory
flh f25, 0(x2) # load 0x9a5c32b1 from memory into f25
li x3, 0x51bbebb5 # load x3 with value 0x51bbebb5
sw x3, 0(x2) # store 0x51bbebb5 in memory
flh f18, 0(x2) # load 0x51bbebb5 from memory into f18
fsgnjn.h f25, f25, f18 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xf6fb4b38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1af1dab3 # load x3 with value 0x1af1dab3
sw x3, 0(x2) # store 0x1af1dab3 in memory
flh f26, 0(x2) # load 0x1af1dab3 from memory into f26
li x3, 0x82aa94c4 # load x3 with value 0x82aa94c4
sw x3, 0(x2) # store 0x82aa94c4 in memory
flh f14, 0(x2) # load 0x82aa94c4 from memory into f14
fsgnjn.h f26, f26, f14 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x0b6f0a12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb13823d3 # load x3 with value 0xb13823d3
sw x3, 0(x2) # store 0xb13823d3 in memory
flh f29, 0(x2) # load 0xb13823d3 from memory into f29
li x3, 0x17007f76 # load x3 with value 0x17007f76
sw x3, 0(x2) # store 0x17007f76 in memory
flh f6, 0(x2) # load 0x17007f76 from memory into f6
fsgnjn.h f27, f29, f6 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0xc378267f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2b9841ef # load x3 with value 0x2b9841ef
sw x3, 0(x2) # store 0x2b9841ef in memory
flh f19, 0(x2) # load 0x2b9841ef from memory into f19
li x3, 0xefde44a0 # load x3 with value 0xefde44a0
sw x3, 0(x2) # store 0xefde44a0 in memory
flh f27, 0(x2) # load 0xefde44a0 from memory into f27
fsgnjn.h f28, f19, f27 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x68f9e489 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x52d5ed8f # load x3 with value 0x52d5ed8f
sw x3, 0(x2) # store 0x52d5ed8f in memory
flh f28, 0(x2) # load 0x52d5ed8f from memory into f28
li x3, 0xadae71de # load x3 with value 0xadae71de
sw x3, 0(x2) # store 0xadae71de in memory
flh f18, 0(x2) # load 0xadae71de from memory into f18
fsgnjn.h f29, f28, f18 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x6e3fa779 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5c0e5c54 # load x3 with value 0x5c0e5c54
sw x3, 0(x2) # store 0x5c0e5c54 in memory
flh f8, 0(x2) # load 0x5c0e5c54 from memory into f8
li x3, 0x4fc73e47 # load x3 with value 0x4fc73e47
sw x3, 0(x2) # store 0x4fc73e47 in memory
flh f4, 0(x2) # load 0x4fc73e47 from memory into f4
fsgnjn.h f30, f8, f4 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x492910f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd0e6821e # load x3 with value 0xd0e6821e
sw x3, 0(x2) # store 0xd0e6821e in memory
flh f31, 0(x2) # load 0xd0e6821e from memory into f31
li x3, 0x44c4206c # load x3 with value 0x44c4206c
sw x3, 0(x2) # store 0x44c4206c in memory
flh f18, 0(x2) # load 0x44c4206c from memory into f18
fsgnjn.h f31, f31, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x19, 0x8cf255c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa5bc86f4 # load x3 with value 0xa5bc86f4
sw x3, 0(x2) # store 0xa5bc86f4 in memory
flh f0, 0(x2) # load 0xa5bc86f4 from memory into f0
li x3, 0x24ab7566 # load x3 with value 0x24ab7566
sw x3, 0(x2) # store 0x24ab7566 in memory
flh f25, 0(x2) # load 0x24ab7566 from memory into f25
fsgnjn.h f19, f0, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x4, 0xe7a0be50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x65510d48 # load x3 with value 0x65510d48
sw x3, 0(x2) # store 0x65510d48 in memory
flh f1, 0(x2) # load 0x65510d48 from memory into f1
li x3, 0xab05d87e # load x3 with value 0xab05d87e
sw x3, 0(x2) # store 0xab05d87e in memory
flh f9, 0(x2) # load 0xab05d87e from memory into f9
fsgnjn.h f4, f1, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x17, 0x6ef7bee2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7b5406eb # load x3 with value 0x7b5406eb
sw x3, 0(x2) # store 0x7b5406eb in memory
flh f2, 0(x2) # load 0x7b5406eb from memory into f2
li x3, 0x37c0f4b8 # load x3 with value 0x37c0f4b8
sw x3, 0(x2) # store 0x37c0f4b8 in memory
flh f10, 0(x2) # load 0x37c0f4b8 from memory into f10
fsgnjn.h f17, f2, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x7, 0x37a79d28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2c3c5480 # load x3 with value 0x2c3c5480
sw x3, 0(x2) # store 0x2c3c5480 in memory
flh f3, 0(x2) # load 0x2c3c5480 from memory into f3
li x3, 0xc92d3b5b # load x3 with value 0xc92d3b5b
sw x3, 0(x2) # store 0xc92d3b5b in memory
flh f5, 0(x2) # load 0xc92d3b5b from memory into f5
fsgnjn.h f7, f3, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x10, 0xa6589903 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xce492e72 # load x3 with value 0xce492e72
sw x3, 0(x2) # store 0xce492e72 in memory
flh f4, 0(x2) # load 0xce492e72 from memory into f4
li x3, 0x07d20166 # load x3 with value 0x07d20166
sw x3, 0(x2) # store 0x07d20166 in memory
flh f19, 0(x2) # load 0x07d20166 from memory into f19
fsgnjn.h f10, f4, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x9, 0x4ef1fcda # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbe113ba1 # load x3 with value 0xbe113ba1
sw x3, 0(x2) # store 0xbe113ba1 in memory
flh f5, 0(x2) # load 0xbe113ba1 from memory into f5
li x3, 0x6ceb837e # load x3 with value 0x6ceb837e
sw x3, 0(x2) # store 0x6ceb837e in memory
flh f16, 0(x2) # load 0x6ceb837e from memory into f16
fsgnjn.h f9, f5, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x23, 0x0614397b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x418b9ec1 # load x3 with value 0x418b9ec1
sw x3, 0(x2) # store 0x418b9ec1 in memory
flh f6, 0(x2) # load 0x418b9ec1 from memory into f6
li x3, 0xb98a0d0d # load x3 with value 0xb98a0d0d
sw x3, 0(x2) # store 0xb98a0d0d in memory
flh f28, 0(x2) # load 0xb98a0d0d from memory into f28
fsgnjn.h f23, f6, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x22, 0xe9ab3f08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe550533e # load x3 with value 0xe550533e
sw x3, 0(x2) # store 0xe550533e in memory
flh f7, 0(x2) # load 0xe550533e from memory into f7
li x3, 0xcab74a9d # load x3 with value 0xcab74a9d
sw x3, 0(x2) # store 0xcab74a9d in memory
flh f21, 0(x2) # load 0xcab74a9d from memory into f21
fsgnjn.h f22, f7, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x21, 0xb519362d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8d9f1d92 # load x3 with value 0x8d9f1d92
sw x3, 0(x2) # store 0x8d9f1d92 in memory
flh f8, 0(x2) # load 0x8d9f1d92 from memory into f8
li x3, 0x532f11d0 # load x3 with value 0x532f11d0
sw x3, 0(x2) # store 0x532f11d0 in memory
flh f7, 0(x2) # load 0x532f11d0 from memory into f7
fsgnjn.h f21, f8, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x23, 0x9e4a30a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3af41412 # load x3 with value 0x3af41412
sw x3, 0(x2) # store 0x3af41412 in memory
flh f9, 0(x2) # load 0x3af41412 from memory into f9
li x3, 0xcbe02336 # load x3 with value 0xcbe02336
sw x3, 0(x2) # store 0xcbe02336 in memory
flh f27, 0(x2) # load 0xcbe02336 from memory into f27
fsgnjn.h f23, f9, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x25, 0x7cc6a06b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fb908e2 # load x3 with value 0x3fb908e2
sw x3, 0(x2) # store 0x3fb908e2 in memory
flh f10, 0(x2) # load 0x3fb908e2 from memory into f10
li x3, 0x35b7b427 # load x3 with value 0x35b7b427
sw x3, 0(x2) # store 0x35b7b427 in memory
flh f22, 0(x2) # load 0x35b7b427 from memory into f22
fsgnjn.h f25, f10, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x6, 0xb7d53475 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x42a0f3a7 # load x3 with value 0x42a0f3a7
sw x3, 0(x2) # store 0x42a0f3a7 in memory
flh f11, 0(x2) # load 0x42a0f3a7 from memory into f11
li x3, 0xa8923727 # load x3 with value 0xa8923727
sw x3, 0(x2) # store 0xa8923727 in memory
flh f4, 0(x2) # load 0xa8923727 from memory into f4
fsgnjn.h f6, f11, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x27, 0x14d771b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8ee9c259 # load x3 with value 0x8ee9c259
sw x3, 0(x2) # store 0x8ee9c259 in memory
flh f12, 0(x2) # load 0x8ee9c259 from memory into f12
li x3, 0x9c5ab997 # load x3 with value 0x9c5ab997
sw x3, 0(x2) # store 0x9c5ab997 in memory
flh f9, 0(x2) # load 0x9c5ab997 from memory into f9
fsgnjn.h f27, f12, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x1, 0x83b6a2a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2bc54f52 # load x3 with value 0x2bc54f52
sw x3, 0(x2) # store 0x2bc54f52 in memory
flh f13, 0(x2) # load 0x2bc54f52 from memory into f13
li x3, 0xa2cc3b20 # load x3 with value 0xa2cc3b20
sw x3, 0(x2) # store 0xa2cc3b20 in memory
flh f20, 0(x2) # load 0xa2cc3b20 from memory into f20
fsgnjn.h f1, f13, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x18, 0xdfe007a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0def53e0 # load x3 with value 0x0def53e0
sw x3, 0(x2) # store 0x0def53e0 in memory
flh f14, 0(x2) # load 0x0def53e0 from memory into f14
li x3, 0xc56027e1 # load x3 with value 0xc56027e1
sw x3, 0(x2) # store 0xc56027e1 in memory
flh f31, 0(x2) # load 0xc56027e1 from memory into f31
fsgnjn.h f18, f14, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x28, 0xfeef5ca1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x84cf1403 # load x3 with value 0x84cf1403
sw x3, 0(x2) # store 0x84cf1403 in memory
flh f15, 0(x2) # load 0x84cf1403 from memory into f15
li x3, 0x1eb347b2 # load x3 with value 0x1eb347b2
sw x3, 0(x2) # store 0x1eb347b2 in memory
flh f24, 0(x2) # load 0x1eb347b2 from memory into f24
fsgnjn.h f28, f15, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x1, 0xfe61cbee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x53535726 # load x3 with value 0x53535726
sw x3, 0(x2) # store 0x53535726 in memory
flh f16, 0(x2) # load 0x53535726 from memory into f16
li x3, 0x8e04fe26 # load x3 with value 0x8e04fe26
sw x3, 0(x2) # store 0x8e04fe26 in memory
flh f13, 0(x2) # load 0x8e04fe26 from memory into f13
fsgnjn.h f1, f16, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x29, 0x20747222 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4320d5e6 # load x3 with value 0x4320d5e6
sw x3, 0(x2) # store 0x4320d5e6 in memory
flh f17, 0(x2) # load 0x4320d5e6 from memory into f17
li x3, 0x9af76a66 # load x3 with value 0x9af76a66
sw x3, 0(x2) # store 0x9af76a66 in memory
flh f31, 0(x2) # load 0x9af76a66 from memory into f31
fsgnjn.h f29, f17, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x2, 0xedd7087a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc25a8e15 # load x3 with value 0xc25a8e15
sw x3, 0(x2) # store 0xc25a8e15 in memory
flh f18, 0(x2) # load 0xc25a8e15 from memory into f18
li x3, 0x8e59767f # load x3 with value 0x8e59767f
sw x3, 0(x2) # store 0x8e59767f in memory
flh f4, 0(x2) # load 0x8e59767f from memory into f4
fsgnjn.h f2, f18, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x21, 0x2c545e6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa0a6e3ba # load x3 with value 0xa0a6e3ba
sw x3, 0(x2) # store 0xa0a6e3ba in memory
flh f19, 0(x2) # load 0xa0a6e3ba from memory into f19
li x3, 0x2e018db6 # load x3 with value 0x2e018db6
sw x3, 0(x2) # store 0x2e018db6 in memory
flh f11, 0(x2) # load 0x2e018db6 from memory into f11
fsgnjn.h f21, f19, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x19, 0x786086a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x47665f3e # load x3 with value 0x47665f3e
sw x3, 0(x2) # store 0x47665f3e in memory
flh f20, 0(x2) # load 0x47665f3e from memory into f20
li x3, 0x4d1c3eee # load x3 with value 0x4d1c3eee
sw x3, 0(x2) # store 0x4d1c3eee in memory
flh f22, 0(x2) # load 0x4d1c3eee from memory into f22
fsgnjn.h f19, f20, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x17, 0x47f599a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x414e54b2 # load x3 with value 0x414e54b2
sw x3, 0(x2) # store 0x414e54b2 in memory
flh f21, 0(x2) # load 0x414e54b2 from memory into f21
li x3, 0x90178660 # load x3 with value 0x90178660
sw x3, 0(x2) # store 0x90178660 in memory
flh f11, 0(x2) # load 0x90178660 from memory into f11
fsgnjn.h f17, f21, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x5, 0x9d44dadc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x94661924 # load x3 with value 0x94661924
sw x3, 0(x2) # store 0x94661924 in memory
flh f22, 0(x2) # load 0x94661924 from memory into f22
li x3, 0xb8d097cd # load x3 with value 0xb8d097cd
sw x3, 0(x2) # store 0xb8d097cd in memory
flh f19, 0(x2) # load 0xb8d097cd from memory into f19
fsgnjn.h f5, f22, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x12, 0xe525c0e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe15988ba # load x3 with value 0xe15988ba
sw x3, 0(x2) # store 0xe15988ba in memory
flh f23, 0(x2) # load 0xe15988ba from memory into f23
li x3, 0x0e98579c # load x3 with value 0x0e98579c
sw x3, 0(x2) # store 0x0e98579c in memory
flh f22, 0(x2) # load 0x0e98579c from memory into f22
fsgnjn.h f12, f23, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x15, 0x0e5e7610 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1f29c7ca # load x3 with value 0x1f29c7ca
sw x3, 0(x2) # store 0x1f29c7ca in memory
flh f24, 0(x2) # load 0x1f29c7ca from memory into f24
li x3, 0x5b36bcca # load x3 with value 0x5b36bcca
sw x3, 0(x2) # store 0x5b36bcca in memory
flh f17, 0(x2) # load 0x5b36bcca from memory into f17
fsgnjn.h f15, f24, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x27, 0xc9cd8507 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xda49629c # load x3 with value 0xda49629c
sw x3, 0(x2) # store 0xda49629c in memory
flh f25, 0(x2) # load 0xda49629c from memory into f25
li x3, 0x7edd2b8e # load x3 with value 0x7edd2b8e
sw x3, 0(x2) # store 0x7edd2b8e in memory
flh f26, 0(x2) # load 0x7edd2b8e from memory into f26
fsgnjn.h f27, f25, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x8, 0x01e6c782 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1d17b970 # load x3 with value 0x1d17b970
sw x3, 0(x2) # store 0x1d17b970 in memory
flh f26, 0(x2) # load 0x1d17b970 from memory into f26
li x3, 0x70ebc939 # load x3 with value 0x70ebc939
sw x3, 0(x2) # store 0x70ebc939 in memory
flh f13, 0(x2) # load 0x70ebc939 from memory into f13
fsgnjn.h f8, f26, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x29, 0x86894550 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x03fb29fe # load x3 with value 0x03fb29fe
sw x3, 0(x2) # store 0x03fb29fe in memory
flh f27, 0(x2) # load 0x03fb29fe from memory into f27
li x3, 0xe0a97813 # load x3 with value 0xe0a97813
sw x3, 0(x2) # store 0xe0a97813 in memory
flh f25, 0(x2) # load 0xe0a97813 from memory into f25
fsgnjn.h f29, f27, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x9, 0x6f8f3aba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb1fd0fb7 # load x3 with value 0xb1fd0fb7
sw x3, 0(x2) # store 0xb1fd0fb7 in memory
flh f28, 0(x2) # load 0xb1fd0fb7 from memory into f28
li x3, 0x0832c933 # load x3 with value 0x0832c933
sw x3, 0(x2) # store 0x0832c933 in memory
flh f10, 0(x2) # load 0x0832c933 from memory into f10
fsgnjn.h f9, f28, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x5, 0x6442b385 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x87f1596e # load x3 with value 0x87f1596e
sw x3, 0(x2) # store 0x87f1596e in memory
flh f29, 0(x2) # load 0x87f1596e from memory into f29
li x3, 0x4a405eff # load x3 with value 0x4a405eff
sw x3, 0(x2) # store 0x4a405eff in memory
flh f8, 0(x2) # load 0x4a405eff from memory into f8
fsgnjn.h f5, f29, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x21, 0x98b18092 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5788d299 # load x3 with value 0x5788d299
sw x3, 0(x2) # store 0x5788d299 in memory
flh f30, 0(x2) # load 0x5788d299 from memory into f30
li x3, 0x74c4b5f2 # load x3 with value 0x74c4b5f2
sw x3, 0(x2) # store 0x74c4b5f2 in memory
flh f22, 0(x2) # load 0x74c4b5f2 from memory into f22
fsgnjn.h f21, f30, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x25, 0x4b566436 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1b56e2e6 # load x3 with value 0x1b56e2e6
sw x3, 0(x2) # store 0x1b56e2e6 in memory
flh f31, 0(x2) # load 0x1b56e2e6 from memory into f31
li x3, 0xadef586d # load x3 with value 0xadef586d
sw x3, 0(x2) # store 0xadef586d in memory
flh f30, 0(x2) # load 0xadef586d from memory into f30
fsgnjn.h f25, f31, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x27, 0xf69d8d04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x62753699 # load x3 with value 0x62753699
sw x3, 0(x2) # store 0x62753699 in memory
flh f6, 0(x2) # load 0x62753699 from memory into f6
li x3, 0x033ba857 # load x3 with value 0x033ba857
sw x3, 0(x2) # store 0x033ba857 in memory
flh f0, 0(x2) # load 0x033ba857 from memory into f0
fsgnjn.h f27, f6, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x15, 0xc1788b5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x423abf31 # load x3 with value 0x423abf31
sw x3, 0(x2) # store 0x423abf31 in memory
flh f14, 0(x2) # load 0x423abf31 from memory into f14
li x3, 0x76cebc9b # load x3 with value 0x76cebc9b
sw x3, 0(x2) # store 0x76cebc9b in memory
flh f1, 0(x2) # load 0x76cebc9b from memory into f1
fsgnjn.h f15, f14, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x28, 0x2aaeacba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xda752815 # load x3 with value 0xda752815
sw x3, 0(x2) # store 0xda752815 in memory
flh f13, 0(x2) # load 0xda752815 from memory into f13
li x3, 0xcf7b6e5c # load x3 with value 0xcf7b6e5c
sw x3, 0(x2) # store 0xcf7b6e5c in memory
flh f2, 0(x2) # load 0xcf7b6e5c from memory into f2
fsgnjn.h f28, f13, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x21, 0x45156819 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x93751618 # load x3 with value 0x93751618
sw x3, 0(x2) # store 0x93751618 in memory
flh f31, 0(x2) # load 0x93751618 from memory into f31
li x3, 0x9878282b # load x3 with value 0x9878282b
sw x3, 0(x2) # store 0x9878282b in memory
flh f3, 0(x2) # load 0x9878282b from memory into f3
fsgnjn.h f21, f31, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x20, 0x667c14c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x64b2f0b0 # load x3 with value 0x64b2f0b0
sw x3, 0(x2) # store 0x64b2f0b0 in memory
flh f6, 0(x2) # load 0x64b2f0b0 from memory into f6
li x3, 0x28871a3b # load x3 with value 0x28871a3b
sw x3, 0(x2) # store 0x28871a3b in memory
flh f4, 0(x2) # load 0x28871a3b from memory into f4
fsgnjn.h f20, f6, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x18, 0xb5353391 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaee86e1c # load x3 with value 0xaee86e1c
sw x3, 0(x2) # store 0xaee86e1c in memory
flh f1, 0(x2) # load 0xaee86e1c from memory into f1
li x3, 0xdeb48dac # load x3 with value 0xdeb48dac
sw x3, 0(x2) # store 0xdeb48dac in memory
flh f5, 0(x2) # load 0xdeb48dac from memory into f5
fsgnjn.h f18, f1, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x14, 0x00e5d564 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00b480ef # load x3 with value 0x00b480ef
sw x3, 0(x2) # store 0x00b480ef in memory
flh f19, 0(x2) # load 0x00b480ef from memory into f19
li x3, 0x9ba0a81e # load x3 with value 0x9ba0a81e
sw x3, 0(x2) # store 0x9ba0a81e in memory
flh f6, 0(x2) # load 0x9ba0a81e from memory into f6
fsgnjn.h f14, f19, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x14, 0xba1dd224 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc7ba4505 # load x3 with value 0xc7ba4505
sw x3, 0(x2) # store 0xc7ba4505 in memory
flh f30, 0(x2) # load 0xc7ba4505 from memory into f30
li x3, 0x5b42bc8a # load x3 with value 0x5b42bc8a
sw x3, 0(x2) # store 0x5b42bc8a in memory
flh f7, 0(x2) # load 0x5b42bc8a from memory into f7
fsgnjn.h f14, f30, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x11, 0xb62b38d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x460612b7 # load x3 with value 0x460612b7
sw x3, 0(x2) # store 0x460612b7 in memory
flh f20, 0(x2) # load 0x460612b7 from memory into f20
li x3, 0x84ac97b3 # load x3 with value 0x84ac97b3
sw x3, 0(x2) # store 0x84ac97b3 in memory
flh f8, 0(x2) # load 0x84ac97b3 from memory into f8
fsgnjn.h f11, f20, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x10, 0x72f757e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbaf7014b # load x3 with value 0xbaf7014b
sw x3, 0(x2) # store 0xbaf7014b in memory
flh f7, 0(x2) # load 0xbaf7014b from memory into f7
li x3, 0x74a2e312 # load x3 with value 0x74a2e312
sw x3, 0(x2) # store 0x74a2e312 in memory
flh f9, 0(x2) # load 0x74a2e312 from memory into f9
fsgnjn.h f10, f7, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x17, 0x6efe0d22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5989a4f6 # load x3 with value 0x5989a4f6
sw x3, 0(x2) # store 0x5989a4f6 in memory
flh f15, 0(x2) # load 0x5989a4f6 from memory into f15
li x3, 0x3b5bb2e1 # load x3 with value 0x3b5bb2e1
sw x3, 0(x2) # store 0x3b5bb2e1 in memory
flh f10, 0(x2) # load 0x3b5bb2e1 from memory into f10
fsgnjn.h f17, f15, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x9, 0xfd3cb403 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd1ff714c # load x3 with value 0xd1ff714c
sw x3, 0(x2) # store 0xd1ff714c in memory
flh f16, 0(x2) # load 0xd1ff714c from memory into f16
li x3, 0xc50c508e # load x3 with value 0xc50c508e
sw x3, 0(x2) # store 0xc50c508e in memory
flh f11, 0(x2) # load 0xc50c508e from memory into f11
fsgnjn.h f9, f16, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x6, 0x3d90fc4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x94d6ef15 # load x3 with value 0x94d6ef15
sw x3, 0(x2) # store 0x94d6ef15 in memory
flh f11, 0(x2) # load 0x94d6ef15 from memory into f11
li x3, 0x5265d7fc # load x3 with value 0x5265d7fc
sw x3, 0(x2) # store 0x5265d7fc in memory
flh f12, 0(x2) # load 0x5265d7fc from memory into f12
fsgnjn.h f6, f11, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x20, 0x5c3860d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x57d7a7c1 # load x3 with value 0x57d7a7c1
sw x3, 0(x2) # store 0x57d7a7c1 in memory
flh f5, 0(x2) # load 0x57d7a7c1 from memory into f5
li x3, 0x0e523dda # load x3 with value 0x0e523dda
sw x3, 0(x2) # store 0x0e523dda in memory
flh f13, 0(x2) # load 0x0e523dda from memory into f13
fsgnjn.h f20, f5, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x23, 0xb27bcedd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbe8e50ca # load x3 with value 0xbe8e50ca
sw x3, 0(x2) # store 0xbe8e50ca in memory
flh f2, 0(x2) # load 0xbe8e50ca from memory into f2
li x3, 0x1121274b # load x3 with value 0x1121274b
sw x3, 0(x2) # store 0x1121274b in memory
flh f14, 0(x2) # load 0x1121274b from memory into f14
fsgnjn.h f23, f2, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x12, 0xad728855 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x221dfdaa # load x3 with value 0x221dfdaa
sw x3, 0(x2) # store 0x221dfdaa in memory
flh f28, 0(x2) # load 0x221dfdaa from memory into f28
li x3, 0x4b86b111 # load x3 with value 0x4b86b111
sw x3, 0(x2) # store 0x4b86b111 in memory
flh f15, 0(x2) # load 0x4b86b111 from memory into f15
fsgnjn.h f12, f28, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x26, 0xcc9eeea8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbcf43b1f # load x3 with value 0xbcf43b1f
sw x3, 0(x2) # store 0xbcf43b1f in memory
flh f11, 0(x2) # load 0xbcf43b1f from memory into f11
li x3, 0x5c4c837b # load x3 with value 0x5c4c837b
sw x3, 0(x2) # store 0x5c4c837b in memory
flh f16, 0(x2) # load 0x5c4c837b from memory into f16
fsgnjn.h f26, f11, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x6, 0x9fd61133 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x91faa987 # load x3 with value 0x91faa987
sw x3, 0(x2) # store 0x91faa987 in memory
flh f15, 0(x2) # load 0x91faa987 from memory into f15
li x3, 0x9925239c # load x3 with value 0x9925239c
sw x3, 0(x2) # store 0x9925239c in memory
flh f17, 0(x2) # load 0x9925239c from memory into f17
fsgnjn.h f6, f15, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x14, 0x6b1444c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaeeb26be # load x3 with value 0xaeeb26be
sw x3, 0(x2) # store 0xaeeb26be in memory
flh f22, 0(x2) # load 0xaeeb26be from memory into f22
li x3, 0x6b50a0d2 # load x3 with value 0x6b50a0d2
sw x3, 0(x2) # store 0x6b50a0d2 in memory
flh f18, 0(x2) # load 0x6b50a0d2 from memory into f18
fsgnjn.h f14, f22, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x5, 0x0d83f386 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x72ee621f # load x3 with value 0x72ee621f
sw x3, 0(x2) # store 0x72ee621f in memory
flh f18, 0(x2) # load 0x72ee621f from memory into f18
li x3, 0x05b207fc # load x3 with value 0x05b207fc
sw x3, 0(x2) # store 0x05b207fc in memory
flh f19, 0(x2) # load 0x05b207fc from memory into f19
fsgnjn.h f5, f18, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x8, 0x088016f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb6cdbaba # load x3 with value 0xb6cdbaba
sw x3, 0(x2) # store 0xb6cdbaba in memory
flh f18, 0(x2) # load 0xb6cdbaba from memory into f18
li x3, 0x38723e8c # load x3 with value 0x38723e8c
sw x3, 0(x2) # store 0x38723e8c in memory
flh f20, 0(x2) # load 0x38723e8c from memory into f20
fsgnjn.h f8, f18, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x6, 0xc4583829 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb0a899d1 # load x3 with value 0xb0a899d1
sw x3, 0(x2) # store 0xb0a899d1 in memory
flh f14, 0(x2) # load 0xb0a899d1 from memory into f14
li x3, 0x1562815c # load x3 with value 0x1562815c
sw x3, 0(x2) # store 0x1562815c in memory
flh f21, 0(x2) # load 0x1562815c from memory into f21
fsgnjn.h f6, f14, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x11, 0xbf5dcf8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3247614f # load x3 with value 0x3247614f
sw x3, 0(x2) # store 0x3247614f in memory
flh f17, 0(x2) # load 0x3247614f from memory into f17
li x3, 0xce4ef298 # load x3 with value 0xce4ef298
sw x3, 0(x2) # store 0xce4ef298 in memory
flh f22, 0(x2) # load 0xce4ef298 from memory into f22
fsgnjn.h f11, f17, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x21, 0x0352e643 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x71a03694 # load x3 with value 0x71a03694
sw x3, 0(x2) # store 0x71a03694 in memory
flh f4, 0(x2) # load 0x71a03694 from memory into f4
li x3, 0xb43b3150 # load x3 with value 0xb43b3150
sw x3, 0(x2) # store 0xb43b3150 in memory
flh f23, 0(x2) # load 0xb43b3150 from memory into f23
fsgnjn.h f21, f4, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x6, 0xc04d25f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaf1e5397 # load x3 with value 0xaf1e5397
sw x3, 0(x2) # store 0xaf1e5397 in memory
flh f22, 0(x2) # load 0xaf1e5397 from memory into f22
li x3, 0x7d62818c # load x3 with value 0x7d62818c
sw x3, 0(x2) # store 0x7d62818c in memory
flh f24, 0(x2) # load 0x7d62818c from memory into f24
fsgnjn.h f6, f22, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x24, 0x25542b76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb8e7a7cd # load x3 with value 0xb8e7a7cd
sw x3, 0(x2) # store 0xb8e7a7cd in memory
flh f9, 0(x2) # load 0xb8e7a7cd from memory into f9
li x3, 0x086470b7 # load x3 with value 0x086470b7
sw x3, 0(x2) # store 0x086470b7 in memory
flh f25, 0(x2) # load 0x086470b7 from memory into f25
fsgnjn.h f24, f9, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x4, 0x0bfdfecd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfad7c81d # load x3 with value 0xfad7c81d
sw x3, 0(x2) # store 0xfad7c81d in memory
flh f5, 0(x2) # load 0xfad7c81d from memory into f5
li x3, 0xad9b8f8d # load x3 with value 0xad9b8f8d
sw x3, 0(x2) # store 0xad9b8f8d in memory
flh f26, 0(x2) # load 0xad9b8f8d from memory into f26
fsgnjn.h f4, f5, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x22, 0x116d0726 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x288d05f6 # load x3 with value 0x288d05f6
sw x3, 0(x2) # store 0x288d05f6 in memory
flh f20, 0(x2) # load 0x288d05f6 from memory into f20
li x3, 0xf890fb4c # load x3 with value 0xf890fb4c
sw x3, 0(x2) # store 0xf890fb4c in memory
flh f27, 0(x2) # load 0xf890fb4c from memory into f27
fsgnjn.h f22, f20, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x22, 0x04774ef3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfb9be632 # load x3 with value 0xfb9be632
sw x3, 0(x2) # store 0xfb9be632 in memory
flh f27, 0(x2) # load 0xfb9be632 from memory into f27
li x3, 0x46764a87 # load x3 with value 0x46764a87
sw x3, 0(x2) # store 0x46764a87 in memory
flh f28, 0(x2) # load 0x46764a87 from memory into f28
fsgnjn.h f22, f27, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x14, 0xeb1e246f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9b5b28ab # load x3 with value 0x9b5b28ab
sw x3, 0(x2) # store 0x9b5b28ab in memory
flh f3, 0(x2) # load 0x9b5b28ab from memory into f3
li x3, 0xf2da7264 # load x3 with value 0xf2da7264
sw x3, 0(x2) # store 0xf2da7264 in memory
flh f29, 0(x2) # load 0xf2da7264 from memory into f29
fsgnjn.h f14, f3, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x8, 0x500dcaba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4dc9d7c0 # load x3 with value 0x4dc9d7c0
sw x3, 0(x2) # store 0x4dc9d7c0 in memory
flh f10, 0(x2) # load 0x4dc9d7c0 from memory into f10
li x3, 0x67fa2a49 # load x3 with value 0x67fa2a49
sw x3, 0(x2) # store 0x67fa2a49 in memory
flh f30, 0(x2) # load 0x67fa2a49 from memory into f30
fsgnjn.h f8, f10, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x20, 0x1aeec1b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0e73e880 # load x3 with value 0x0e73e880
sw x3, 0(x2) # store 0x0e73e880 in memory
flh f9, 0(x2) # load 0x0e73e880 from memory into f9
li x3, 0xf433508b # load x3 with value 0xf433508b
sw x3, 0(x2) # store 0xf433508b in memory
flh f31, 0(x2) # load 0xf433508b from memory into f31
fsgnjn.h f20, f9, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
