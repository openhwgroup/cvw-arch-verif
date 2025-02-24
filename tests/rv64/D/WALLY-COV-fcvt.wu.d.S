///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/D//WALLY-COV-fcvt.wu.d.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.510972
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
li x0, 0x0a277a44275eacb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xed1426d197e77d63 # load x3 with value 0xed1426d197e77d63
sd x3, 0(x2) # store 0xed1426d197e77d63 in memory
fld f15, 0(x2) # load 0xed1426d197e77d63 from memory into f15
fcvt.wu.d x0, f15 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xf75485ba87fe4f6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x609d56f1a86629e0 # load x3 with value 0x609d56f1a86629e0
sd x3, 0(x2) # store 0x609d56f1a86629e0 in memory
fld f9, 0(x2) # load 0x609d56f1a86629e0 from memory into f9
fcvt.wu.d x1, f9 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xf6a6525e0f0f4217 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x689028c1622ca0a6 # load x3 with value 0x689028c1622ca0a6
sd x3, 0(x2) # store 0x689028c1622ca0a6 in memory
fld f26, 0(x2) # load 0x689028c1622ca0a6 from memory into f26
fcvt.wu.d x2, f26 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x29a0d071d71ec39a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x208f32ea050d2398 # load x3 with value 0x208f32ea050d2398
sd x3, 0(x2) # store 0x208f32ea050d2398 in memory
fld f9, 0(x2) # load 0x208f32ea050d2398 from memory into f9
fcvt.wu.d x3, f9 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x66513feb08ddc8ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6ba445382dcd4f0c # load x3 with value 0x6ba445382dcd4f0c
sd x3, 0(x2) # store 0x6ba445382dcd4f0c in memory
fld f14, 0(x2) # load 0x6ba445382dcd4f0c from memory into f14
fcvt.wu.d x4, f14 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x68ba8586eb03c984 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4cc810f8d2a733bb # load x3 with value 0x4cc810f8d2a733bb
sd x3, 0(x2) # store 0x4cc810f8d2a733bb in memory
fld f11, 0(x2) # load 0x4cc810f8d2a733bb from memory into f11
fcvt.wu.d x5, f11 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x327515144387f6c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x47ef5fe55b3cbf3e # load x3 with value 0x47ef5fe55b3cbf3e
sd x3, 0(x2) # store 0x47ef5fe55b3cbf3e in memory
fld f6, 0(x2) # load 0x47ef5fe55b3cbf3e from memory into f6
fcvt.wu.d x6, f6 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x37d693848d5be085 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd9d82f048f184d54 # load x3 with value 0xd9d82f048f184d54
sd x3, 0(x2) # store 0xd9d82f048f184d54 in memory
fld f5, 0(x2) # load 0xd9d82f048f184d54 from memory into f5
fcvt.wu.d x7, f5 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x106da1f893b5dbf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x31a8398bffde0224 # load x3 with value 0x31a8398bffde0224
sd x3, 0(x2) # store 0x31a8398bffde0224 in memory
fld f3, 0(x2) # load 0x31a8398bffde0224 from memory into f3
fcvt.wu.d x8, f3 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x8bcce5ac8b7e5023 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8272d5ef705f6579 # load x3 with value 0x8272d5ef705f6579
sd x3, 0(x2) # store 0x8272d5ef705f6579 in memory
fld f29, 0(x2) # load 0x8272d5ef705f6579 from memory into f29
fcvt.wu.d x9, f29 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x143eeb6519b4698c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x39e2a110a6cbdebc # load x3 with value 0x39e2a110a6cbdebc
sd x3, 0(x2) # store 0x39e2a110a6cbdebc in memory
fld f9, 0(x2) # load 0x39e2a110a6cbdebc from memory into f9
fcvt.wu.d x10, f9 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x95dc1b8d1ae3bd53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe102b56b35d50a4a # load x3 with value 0xe102b56b35d50a4a
sd x3, 0(x2) # store 0xe102b56b35d50a4a in memory
fld f5, 0(x2) # load 0xe102b56b35d50a4a from memory into f5
fcvt.wu.d x11, f5 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xc493c16d78c7b023 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x582dc6aed3376b43 # load x3 with value 0x582dc6aed3376b43
sd x3, 0(x2) # store 0x582dc6aed3376b43 in memory
fld f26, 0(x2) # load 0x582dc6aed3376b43 from memory into f26
fcvt.wu.d x12, f26 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x7c29a6196b7fc86a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x17fae4996f870688 # load x3 with value 0x17fae4996f870688
sd x3, 0(x2) # store 0x17fae4996f870688 in memory
fld f22, 0(x2) # load 0x17fae4996f870688 from memory into f22
fcvt.wu.d x13, f22 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x673eff301c5c8032 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2426cfa33051a8c4 # load x3 with value 0x2426cfa33051a8c4
sd x3, 0(x2) # store 0x2426cfa33051a8c4 in memory
fld f5, 0(x2) # load 0x2426cfa33051a8c4 from memory into f5
fcvt.wu.d x14, f5 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x3239a2f703d3605e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xad0097850668c106 # load x3 with value 0xad0097850668c106
sd x3, 0(x2) # store 0xad0097850668c106 in memory
fld f25, 0(x2) # load 0xad0097850668c106 from memory into f25
fcvt.wu.d x15, f25 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x493fedf80484a7c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x51361f2a13b442e9 # load x3 with value 0x51361f2a13b442e9
sd x3, 0(x2) # store 0x51361f2a13b442e9 in memory
fld f15, 0(x2) # load 0x51361f2a13b442e9 from memory into f15
fcvt.wu.d x16, f15 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xd6085d75fe254259 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2305d2143d4e8e55 # load x3 with value 0x2305d2143d4e8e55
sd x3, 0(x2) # store 0x2305d2143d4e8e55 in memory
fld f5, 0(x2) # load 0x2305d2143d4e8e55 from memory into f5
fcvt.wu.d x17, f5 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xf551251ebd0c1c8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x86d0557f75aedab7 # load x3 with value 0x86d0557f75aedab7
sd x3, 0(x2) # store 0x86d0557f75aedab7 in memory
fld f31, 0(x2) # load 0x86d0557f75aedab7 from memory into f31
fcvt.wu.d x18, f31 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xe3846197f563d691 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x94419e3dbc5f7655 # load x3 with value 0x94419e3dbc5f7655
sd x3, 0(x2) # store 0x94419e3dbc5f7655 in memory
fld f28, 0(x2) # load 0x94419e3dbc5f7655 from memory into f28
fcvt.wu.d x19, f28 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xda6459a448ff1ad2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xec905771f2693a45 # load x3 with value 0xec905771f2693a45
sd x3, 0(x2) # store 0xec905771f2693a45 in memory
fld f13, 0(x2) # load 0xec905771f2693a45 from memory into f13
fcvt.wu.d x20, f13 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x3cbeb64bb47467fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9d3f6d49c458c969 # load x3 with value 0x9d3f6d49c458c969
sd x3, 0(x2) # store 0x9d3f6d49c458c969 in memory
fld f13, 0(x2) # load 0x9d3f6d49c458c969 from memory into f13
fcvt.wu.d x21, f13 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xfb072db1b1f0c9d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9e130906148270c8 # load x3 with value 0x9e130906148270c8
sd x3, 0(x2) # store 0x9e130906148270c8 in memory
fld f2, 0(x2) # load 0x9e130906148270c8 from memory into f2
fcvt.wu.d x22, f2 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x45c889def9ccb3e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4194bf99e36cae1a # load x3 with value 0x4194bf99e36cae1a
sd x3, 0(x2) # store 0x4194bf99e36cae1a in memory
fld f9, 0(x2) # load 0x4194bf99e36cae1a from memory into f9
fcvt.wu.d x23, f9 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x787811608168f95a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3dfdb2971a030460 # load x3 with value 0x3dfdb2971a030460
sd x3, 0(x2) # store 0x3dfdb2971a030460 in memory
fld f28, 0(x2) # load 0x3dfdb2971a030460 from memory into f28
fcvt.wu.d x24, f28 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x93857a40c8c90ca8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x340e3ce4c7f11b21 # load x3 with value 0x340e3ce4c7f11b21
sd x3, 0(x2) # store 0x340e3ce4c7f11b21 in memory
fld f23, 0(x2) # load 0x340e3ce4c7f11b21 from memory into f23
fcvt.wu.d x25, f23 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xeb752cd31fb6bf83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5286fb73ee1b83cd # load x3 with value 0x5286fb73ee1b83cd
sd x3, 0(x2) # store 0x5286fb73ee1b83cd in memory
fld f3, 0(x2) # load 0x5286fb73ee1b83cd from memory into f3
fcvt.wu.d x26, f3 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x49c5604d8ddcc336 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3a83a17c2916a73b # load x3 with value 0x3a83a17c2916a73b
sd x3, 0(x2) # store 0x3a83a17c2916a73b in memory
fld f2, 0(x2) # load 0x3a83a17c2916a73b from memory into f2
fcvt.wu.d x27, f2 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x6aa08b8af1281d85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc630b0508d5d594d # load x3 with value 0xc630b0508d5d594d
sd x3, 0(x2) # store 0xc630b0508d5d594d in memory
fld f16, 0(x2) # load 0xc630b0508d5d594d from memory into f16
fcvt.wu.d x28, f16 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xd22aa7478f45e36a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xce3c912b05587b2a # load x3 with value 0xce3c912b05587b2a
sd x3, 0(x2) # store 0xce3c912b05587b2a in memory
fld f10, 0(x2) # load 0xce3c912b05587b2a from memory into f10
fcvt.wu.d x29, f10 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x8861853d1676ff5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x058021b7149a5f2e # load x3 with value 0x058021b7149a5f2e
sd x3, 0(x2) # store 0x058021b7149a5f2e in memory
fld f10, 0(x2) # load 0x058021b7149a5f2e from memory into f10
fcvt.wu.d x30, f10 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x5a742c0784f81a85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xac30b3ab232649fb # load x3 with value 0xac30b3ab232649fb
sd x3, 0(x2) # store 0xac30b3ab232649fb in memory
fld f14, 0(x2) # load 0xac30b3ab232649fb from memory into f14
fcvt.wu.d x31, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x22, 0x081977324b5f4799 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f24, 0(x2) # load 0x0000000000000000 from memory into f24
fcvt.wu.d x22, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
li x22, 0xb2b9cae980698254 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f27, 0(x2) # load 0x8000000000000000 from memory into f27
fcvt.wu.d x22, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
li x26, 0x8d700f2afa8ea1cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f11, 0(x2) # load 0x3ff0000000000000 from memory into f11
fcvt.wu.d x26, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
li x19, 0x383b44743fa600c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f27, 0(x2) # load 0xbff0000000000000 from memory into f27
fcvt.wu.d x19, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
li x24, 0xb8f727b25af2ad80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f29, 0(x2) # load 0x3ff8000000000000 from memory into f29
fcvt.wu.d x24, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
li x12, 0xf4c1d8353167c1ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f10, 0(x2) # load 0xbff8000000000000 from memory into f10
fcvt.wu.d x12, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
li x20, 0x88c73f4c1a4187bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f11, 0(x2) # load 0x4000000000000000 from memory into f11
fcvt.wu.d x20, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
li x27, 0xfa686b601fc77eaf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f26, 0(x2) # load 0xc000000000000000 from memory into f26
fcvt.wu.d x27, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
li x9, 0xef4209d7dcdecf5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f3, 0(x2) # load 0x0010000000000000 from memory into f3
fcvt.wu.d x9, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
li x5, 0x749facb6273fb84d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f25, 0(x2) # load 0x8010000000000000 from memory into f25
fcvt.wu.d x5, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
li x24, 0x610c6fd9d8c2e369 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f27, 0(x2) # load 0x7fefffffffffffff from memory into f27
fcvt.wu.d x24, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
li x16, 0xd46a5e2240f5122d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f4, 0(x2) # load 0xffefffffffffffff from memory into f4
fcvt.wu.d x16, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
li x13, 0xd47f8b9b51fc3ddc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f27, 0(x2) # load 0x000fffffffffffff from memory into f27
fcvt.wu.d x13, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
li x30, 0xec2e85b27718e35c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f17, 0(x2) # load 0x800fffffffffffff from memory into f17
fcvt.wu.d x30, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
li x27, 0x9ca8a1fc558e39a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f24, 0(x2) # load 0x0008000000000000 from memory into f24
fcvt.wu.d x27, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
li x3, 0x96a8e8ac22185201 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f29, 0(x2) # load 0x8008000000000000 from memory into f29
fcvt.wu.d x3, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x21, 0xf8761bdb09255db3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f2, 0(x2) # load 0x0000000000000001 from memory into f2
fcvt.wu.d x21, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
li x21, 0x3996e67b24cf3dfd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f31, 0(x2) # load 0x8000000000000001 from memory into f31
fcvt.wu.d x21, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
li x30, 0xa5063267a9965fba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f20, 0(x2) # load 0x7ff0000000000000 from memory into f20
fcvt.wu.d x30, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
li x19, 0x49d8aa1e26765b5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f16, 0(x2) # load 0xfff0000000000000 from memory into f16
fcvt.wu.d x19, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
li x5, 0x893ae1642321bfc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f28, 0(x2) # load 0x7ff8000000000000 from memory into f28
fcvt.wu.d x5, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
li x20, 0x48867dd556f4880f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f11, 0(x2) # load 0x7fffffffffffffff from memory into f11
fcvt.wu.d x20, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
li x6, 0x62074aae0e18640d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f5, 0(x2) # load 0x7ff0000000000001 from memory into f5
fcvt.wu.d x6, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
li x12, 0x3d224da2243dcdd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f10, 0(x2) # load 0x7ff7ffffffffffff from memory into f10
fcvt.wu.d x12, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
li x27, 0x77493d8f06f757a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f29, 0(x2) # load 0x5a392534a57711ad from memory into f29
fcvt.wu.d x27, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
li x30, 0x9825ba3cf4333af1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f25, 0(x2) # load 0xa6e895993737426c from memory into f25
fcvt.wu.d x30, f25 # perform operation

# Testcase cp_frm
li x27, 0x9f5a56ba6423e6af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3c3de698f4ef5f99 # load x3 with value 0x3c3de698f4ef5f99
sd x3, 0(x2) # store 0x3c3de698f4ef5f99 in memory
fld f2, 0(x2) # load 0x3c3de698f4ef5f99 from memory into f2
fcvt.wu.d x27, f2, dyn # perform operation
fcvt.wu.d x27, f2, rdn # perform operation
fcvt.wu.d x27, f2, rmm # perform operation
fcvt.wu.d x27, f2, rne # perform operation
fcvt.wu.d x27, f2, rtz # perform operation
fcvt.wu.d x27, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x27, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x27, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x27, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x27, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x27, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x31, 0xad10bb6fbec88889 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8931ed04d1336108 # load x3 with value 0x8931ed04d1336108
sd x3, 0(x2) # store 0x8931ed04d1336108 in memory
fld f0, 0(x2) # load 0x8931ed04d1336108 from memory into f0
fcvt.wu.d x31, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x21, 0xa0a7270046ac6cf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa15d8aca9c51c999 # load x3 with value 0xa15d8aca9c51c999
sd x3, 0(x2) # store 0xa15d8aca9c51c999 in memory
fld f1, 0(x2) # load 0xa15d8aca9c51c999 from memory into f1
fcvt.wu.d x21, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x14, 0x833c22d1188bf0b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xeda08a4e15f83f41 # load x3 with value 0xeda08a4e15f83f41
sd x3, 0(x2) # store 0xeda08a4e15f83f41 in memory
fld f2, 0(x2) # load 0xeda08a4e15f83f41 from memory into f2
fcvt.wu.d x14, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x26, 0x555c2306044abd5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x325e05154fdfa6de # load x3 with value 0x325e05154fdfa6de
sd x3, 0(x2) # store 0x325e05154fdfa6de in memory
fld f3, 0(x2) # load 0x325e05154fdfa6de from memory into f3
fcvt.wu.d x26, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x17, 0x4d4e34c7cc1a2274 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5263a633e5f6c53b # load x3 with value 0x5263a633e5f6c53b
sd x3, 0(x2) # store 0x5263a633e5f6c53b in memory
fld f4, 0(x2) # load 0x5263a633e5f6c53b from memory into f4
fcvt.wu.d x17, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x12, 0x604ba6cfd1d21461 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x33514f1c0332a020 # load x3 with value 0x33514f1c0332a020
sd x3, 0(x2) # store 0x33514f1c0332a020 in memory
fld f5, 0(x2) # load 0x33514f1c0332a020 from memory into f5
fcvt.wu.d x12, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x18, 0x464741372ac8b41f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xdc25655dd244a547 # load x3 with value 0xdc25655dd244a547
sd x3, 0(x2) # store 0xdc25655dd244a547 in memory
fld f6, 0(x2) # load 0xdc25655dd244a547 from memory into f6
fcvt.wu.d x18, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x7, 0xd2dd6233560bfaa2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe11b7460fdfe7c52 # load x3 with value 0xe11b7460fdfe7c52
sd x3, 0(x2) # store 0xe11b7460fdfe7c52 in memory
fld f7, 0(x2) # load 0xe11b7460fdfe7c52 from memory into f7
fcvt.wu.d x7, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x3, 0x877e8b0156d87fd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2a3d1ae9a3d6050d # load x3 with value 0x2a3d1ae9a3d6050d
sd x3, 0(x2) # store 0x2a3d1ae9a3d6050d in memory
fld f8, 0(x2) # load 0x2a3d1ae9a3d6050d from memory into f8
fcvt.wu.d x3, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x11, 0xc36ea0e593b5963a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8960df6637fa778e # load x3 with value 0x8960df6637fa778e
sd x3, 0(x2) # store 0x8960df6637fa778e in memory
fld f9, 0(x2) # load 0x8960df6637fa778e from memory into f9
fcvt.wu.d x11, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x12, 0xb440c40300326f28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5e397853dc59409f # load x3 with value 0x5e397853dc59409f
sd x3, 0(x2) # store 0x5e397853dc59409f in memory
fld f10, 0(x2) # load 0x5e397853dc59409f from memory into f10
fcvt.wu.d x12, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x17, 0x3a75545c4d6c3b24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xfedbd1643d50521b # load x3 with value 0xfedbd1643d50521b
sd x3, 0(x2) # store 0xfedbd1643d50521b in memory
fld f11, 0(x2) # load 0xfedbd1643d50521b from memory into f11
fcvt.wu.d x17, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x1, 0xb5d3de0c9590db27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xfaec8215f708d49c # load x3 with value 0xfaec8215f708d49c
sd x3, 0(x2) # store 0xfaec8215f708d49c in memory
fld f12, 0(x2) # load 0xfaec8215f708d49c from memory into f12
fcvt.wu.d x1, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x25, 0x98a21f6cdb910eea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5f66c63a9fe0565c # load x3 with value 0x5f66c63a9fe0565c
sd x3, 0(x2) # store 0x5f66c63a9fe0565c in memory
fld f13, 0(x2) # load 0x5f66c63a9fe0565c from memory into f13
fcvt.wu.d x25, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x8, 0xb8631489c8d75b97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0e6d5308dfaea3ee # load x3 with value 0x0e6d5308dfaea3ee
sd x3, 0(x2) # store 0x0e6d5308dfaea3ee in memory
fld f14, 0(x2) # load 0x0e6d5308dfaea3ee from memory into f14
fcvt.wu.d x8, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x7, 0x1c4d80314258f1de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6058bba176cd1e35 # load x3 with value 0x6058bba176cd1e35
sd x3, 0(x2) # store 0x6058bba176cd1e35 in memory
fld f15, 0(x2) # load 0x6058bba176cd1e35 from memory into f15
fcvt.wu.d x7, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x17, 0xf2f440ad4e7567a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe82759c85d2140a4 # load x3 with value 0xe82759c85d2140a4
sd x3, 0(x2) # store 0xe82759c85d2140a4 in memory
fld f16, 0(x2) # load 0xe82759c85d2140a4 from memory into f16
fcvt.wu.d x17, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x14, 0xddf4a2466b9bd486 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x68a4c73f1b212dce # load x3 with value 0x68a4c73f1b212dce
sd x3, 0(x2) # store 0x68a4c73f1b212dce in memory
fld f17, 0(x2) # load 0x68a4c73f1b212dce from memory into f17
fcvt.wu.d x14, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x2, 0x61c8c7e787545a5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbc4fcb85fc80e5cb # load x3 with value 0xbc4fcb85fc80e5cb
sd x3, 0(x2) # store 0xbc4fcb85fc80e5cb in memory
fld f18, 0(x2) # load 0xbc4fcb85fc80e5cb from memory into f18
fcvt.wu.d x2, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x11, 0x193b7bfa02df5ce9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x22e1352640036602 # load x3 with value 0x22e1352640036602
sd x3, 0(x2) # store 0x22e1352640036602 in memory
fld f19, 0(x2) # load 0x22e1352640036602 from memory into f19
fcvt.wu.d x11, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x13, 0x948c46edb393bfce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xfe4923e5bd1a48a8 # load x3 with value 0xfe4923e5bd1a48a8
sd x3, 0(x2) # store 0xfe4923e5bd1a48a8 in memory
fld f20, 0(x2) # load 0xfe4923e5bd1a48a8 from memory into f20
fcvt.wu.d x13, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x7, 0x1f13b48d734bba33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7170fb08873600f6 # load x3 with value 0x7170fb08873600f6
sd x3, 0(x2) # store 0x7170fb08873600f6 in memory
fld f21, 0(x2) # load 0x7170fb08873600f6 from memory into f21
fcvt.wu.d x7, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x4, 0x0ed788561e810bbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd2847576028fd173 # load x3 with value 0xd2847576028fd173
sd x3, 0(x2) # store 0xd2847576028fd173 in memory
fld f22, 0(x2) # load 0xd2847576028fd173 from memory into f22
fcvt.wu.d x4, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x20, 0xca479806f3ec0d8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xfd952a63a475c735 # load x3 with value 0xfd952a63a475c735
sd x3, 0(x2) # store 0xfd952a63a475c735 in memory
fld f23, 0(x2) # load 0xfd952a63a475c735 from memory into f23
fcvt.wu.d x20, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x17, 0x7a9ca244e666de6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc89f94a9ce7dfd4d # load x3 with value 0xc89f94a9ce7dfd4d
sd x3, 0(x2) # store 0xc89f94a9ce7dfd4d in memory
fld f24, 0(x2) # load 0xc89f94a9ce7dfd4d from memory into f24
fcvt.wu.d x17, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x22, 0x6d24de4907953d22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9cce24744f532551 # load x3 with value 0x9cce24744f532551
sd x3, 0(x2) # store 0x9cce24744f532551 in memory
fld f25, 0(x2) # load 0x9cce24744f532551 from memory into f25
fcvt.wu.d x22, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x12, 0xeff5c19026dfecce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8bf54740750125ff # load x3 with value 0x8bf54740750125ff
sd x3, 0(x2) # store 0x8bf54740750125ff in memory
fld f26, 0(x2) # load 0x8bf54740750125ff from memory into f26
fcvt.wu.d x12, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x18, 0xeeab26dd5ad14e9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x313b72e6291a9b4a # load x3 with value 0x313b72e6291a9b4a
sd x3, 0(x2) # store 0x313b72e6291a9b4a in memory
fld f27, 0(x2) # load 0x313b72e6291a9b4a from memory into f27
fcvt.wu.d x18, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x25, 0x1f200d5e125c48eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xaac904134cfb0b60 # load x3 with value 0xaac904134cfb0b60
sd x3, 0(x2) # store 0xaac904134cfb0b60 in memory
fld f28, 0(x2) # load 0xaac904134cfb0b60 from memory into f28
fcvt.wu.d x25, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x25, 0xf63f96fa268a41dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xfd79f4e9f30a5b80 # load x3 with value 0xfd79f4e9f30a5b80
sd x3, 0(x2) # store 0xfd79f4e9f30a5b80 in memory
fld f29, 0(x2) # load 0xfd79f4e9f30a5b80 from memory into f29
fcvt.wu.d x25, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x31, 0x388b9137f33ad4e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x582826cd4c2d91f3 # load x3 with value 0x582826cd4c2d91f3
sd x3, 0(x2) # store 0x582826cd4c2d91f3 in memory
fld f30, 0(x2) # load 0x582826cd4c2d91f3 from memory into f30
fcvt.wu.d x31, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x18, 0xd39acb2f1e1e451e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x297eb0921d07a0b9 # load x3 with value 0x297eb0921d07a0b9
sd x3, 0(x2) # store 0x297eb0921d07a0b9 in memory
fld f31, 0(x2) # load 0x297eb0921d07a0b9 from memory into f31
fcvt.wu.d x18, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
