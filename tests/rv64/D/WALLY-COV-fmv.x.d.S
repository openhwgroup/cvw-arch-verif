///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/D//WALLY-COV-fmv.x.d.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.697588
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
li x0, 0xb1ec071653934021 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4d4b5b1e090d6228 # load x3 with value 0x4d4b5b1e090d6228
sd x3, 0(x2) # store 0x4d4b5b1e090d6228 in memory
fld f16, 0(x2) # load 0x4d4b5b1e090d6228 from memory into f16
fmv.x.d x0, f16 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x533f39c2a0034691 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1ed24b5d8355187c # load x3 with value 0x1ed24b5d8355187c
sd x3, 0(x2) # store 0x1ed24b5d8355187c in memory
fld f14, 0(x2) # load 0x1ed24b5d8355187c from memory into f14
fmv.x.d x1, f14 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x8b727427e4894070 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0242eb41934d5bba # load x3 with value 0x0242eb41934d5bba
sd x3, 0(x2) # store 0x0242eb41934d5bba in memory
fld f8, 0(x2) # load 0x0242eb41934d5bba from memory into f8
fmv.x.d x2, f8 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xc080fa5e6da0960d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb1772cabfd941463 # load x3 with value 0xb1772cabfd941463
sd x3, 0(x2) # store 0xb1772cabfd941463 in memory
fld f11, 0(x2) # load 0xb1772cabfd941463 from memory into f11
fmv.x.d x3, f11 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x516e90450053e18c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xfb8563d375ee4030 # load x3 with value 0xfb8563d375ee4030
sd x3, 0(x2) # store 0xfb8563d375ee4030 in memory
fld f22, 0(x2) # load 0xfb8563d375ee4030 from memory into f22
fmv.x.d x4, f22 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xbade184550a22ac2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x001e4cebdcdceb9f # load x3 with value 0x001e4cebdcdceb9f
sd x3, 0(x2) # store 0x001e4cebdcdceb9f in memory
fld f2, 0(x2) # load 0x001e4cebdcdceb9f from memory into f2
fmv.x.d x5, f2 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x9b09953707e0fa1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x74cbce933d67bf60 # load x3 with value 0x74cbce933d67bf60
sd x3, 0(x2) # store 0x74cbce933d67bf60 in memory
fld f26, 0(x2) # load 0x74cbce933d67bf60 from memory into f26
fmv.x.d x6, f26 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x4732daf58e9a6dff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x491f2222f70d166d # load x3 with value 0x491f2222f70d166d
sd x3, 0(x2) # store 0x491f2222f70d166d in memory
fld f14, 0(x2) # load 0x491f2222f70d166d from memory into f14
fmv.x.d x7, f14 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x56070380e600a471 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1378e7c388e9dd6d # load x3 with value 0x1378e7c388e9dd6d
sd x3, 0(x2) # store 0x1378e7c388e9dd6d in memory
fld f20, 0(x2) # load 0x1378e7c388e9dd6d from memory into f20
fmv.x.d x8, f20 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x300ee0701af89321 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4770708699f0f153 # load x3 with value 0x4770708699f0f153
sd x3, 0(x2) # store 0x4770708699f0f153 in memory
fld f6, 0(x2) # load 0x4770708699f0f153 from memory into f6
fmv.x.d x9, f6 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x717c50d74b1f8e62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8e5e6ee388544d41 # load x3 with value 0x8e5e6ee388544d41
sd x3, 0(x2) # store 0x8e5e6ee388544d41 in memory
fld f8, 0(x2) # load 0x8e5e6ee388544d41 from memory into f8
fmv.x.d x10, f8 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xac352d4ea2aff6ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6d9bc5715eebf09e # load x3 with value 0x6d9bc5715eebf09e
sd x3, 0(x2) # store 0x6d9bc5715eebf09e in memory
fld f31, 0(x2) # load 0x6d9bc5715eebf09e from memory into f31
fmv.x.d x11, f31 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xe2aa15a29575202c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xec4ef3be35a82176 # load x3 with value 0xec4ef3be35a82176
sd x3, 0(x2) # store 0xec4ef3be35a82176 in memory
fld f27, 0(x2) # load 0xec4ef3be35a82176 from memory into f27
fmv.x.d x12, f27 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xb37e2c794d0b1034 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00e07bf940d5c7ca # load x3 with value 0x00e07bf940d5c7ca
sd x3, 0(x2) # store 0x00e07bf940d5c7ca in memory
fld f24, 0(x2) # load 0x00e07bf940d5c7ca from memory into f24
fmv.x.d x13, f24 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xb36b468e133f1c68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc86ff658943b42ad # load x3 with value 0xc86ff658943b42ad
sd x3, 0(x2) # store 0xc86ff658943b42ad in memory
fld f21, 0(x2) # load 0xc86ff658943b42ad from memory into f21
fmv.x.d x14, f21 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x82bb15ce57f5e1ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xee8f169900515206 # load x3 with value 0xee8f169900515206
sd x3, 0(x2) # store 0xee8f169900515206 in memory
fld f9, 0(x2) # load 0xee8f169900515206 from memory into f9
fmv.x.d x15, f9 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xdc7f35699a3ed11f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xdb5c2a8c5c59d841 # load x3 with value 0xdb5c2a8c5c59d841
sd x3, 0(x2) # store 0xdb5c2a8c5c59d841 in memory
fld f17, 0(x2) # load 0xdb5c2a8c5c59d841 from memory into f17
fmv.x.d x16, f17 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xa90bd28f4477cf8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe9f0e9e13aa5ea08 # load x3 with value 0xe9f0e9e13aa5ea08
sd x3, 0(x2) # store 0xe9f0e9e13aa5ea08 in memory
fld f10, 0(x2) # load 0xe9f0e9e13aa5ea08 from memory into f10
fmv.x.d x17, f10 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xcd0b11171388864a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x26aa5c183b18400b # load x3 with value 0x26aa5c183b18400b
sd x3, 0(x2) # store 0x26aa5c183b18400b in memory
fld f17, 0(x2) # load 0x26aa5c183b18400b from memory into f17
fmv.x.d x18, f17 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x5a37ed09e6b96415 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xeaba8dd2dfe5760f # load x3 with value 0xeaba8dd2dfe5760f
sd x3, 0(x2) # store 0xeaba8dd2dfe5760f in memory
fld f25, 0(x2) # load 0xeaba8dd2dfe5760f from memory into f25
fmv.x.d x19, f25 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x5e713c4f6b785db7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x785c29d79f756db4 # load x3 with value 0x785c29d79f756db4
sd x3, 0(x2) # store 0x785c29d79f756db4 in memory
fld f9, 0(x2) # load 0x785c29d79f756db4 from memory into f9
fmv.x.d x20, f9 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x4f09876169ddd7ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x75c4446d6738fc12 # load x3 with value 0x75c4446d6738fc12
sd x3, 0(x2) # store 0x75c4446d6738fc12 in memory
fld f13, 0(x2) # load 0x75c4446d6738fc12 from memory into f13
fmv.x.d x21, f13 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x886a91cd2688f4c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x720052d13a0b4d17 # load x3 with value 0x720052d13a0b4d17
sd x3, 0(x2) # store 0x720052d13a0b4d17 in memory
fld f7, 0(x2) # load 0x720052d13a0b4d17 from memory into f7
fmv.x.d x22, f7 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xddc69d24ecdc09d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xae7de35a8654c431 # load x3 with value 0xae7de35a8654c431
sd x3, 0(x2) # store 0xae7de35a8654c431 in memory
fld f9, 0(x2) # load 0xae7de35a8654c431 from memory into f9
fmv.x.d x23, f9 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xa8edd4af8b588f06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xdb1d049e07c22369 # load x3 with value 0xdb1d049e07c22369
sd x3, 0(x2) # store 0xdb1d049e07c22369 in memory
fld f8, 0(x2) # load 0xdb1d049e07c22369 from memory into f8
fmv.x.d x24, f8 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x237ff31157f58628 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa2bb65889574a9bd # load x3 with value 0xa2bb65889574a9bd
sd x3, 0(x2) # store 0xa2bb65889574a9bd in memory
fld f2, 0(x2) # load 0xa2bb65889574a9bd from memory into f2
fmv.x.d x25, f2 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x67ac504a3229416c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd183e27473fb6155 # load x3 with value 0xd183e27473fb6155
sd x3, 0(x2) # store 0xd183e27473fb6155 in memory
fld f15, 0(x2) # load 0xd183e27473fb6155 from memory into f15
fmv.x.d x26, f15 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x2bb9ecadbd84438f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xce1c4d6209b59f32 # load x3 with value 0xce1c4d6209b59f32
sd x3, 0(x2) # store 0xce1c4d6209b59f32 in memory
fld f21, 0(x2) # load 0xce1c4d6209b59f32 from memory into f21
fmv.x.d x27, f21 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xc11a18715311af87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xcc4e6bb14b2920b7 # load x3 with value 0xcc4e6bb14b2920b7
sd x3, 0(x2) # store 0xcc4e6bb14b2920b7 in memory
fld f2, 0(x2) # load 0xcc4e6bb14b2920b7 from memory into f2
fmv.x.d x28, f2 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xaf3c2c9cb2cd2c06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe7e79f6e8f01f9a7 # load x3 with value 0xe7e79f6e8f01f9a7
sd x3, 0(x2) # store 0xe7e79f6e8f01f9a7 in memory
fld f16, 0(x2) # load 0xe7e79f6e8f01f9a7 from memory into f16
fmv.x.d x29, f16 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xe8b3bc252f6dbfb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x18bb0a75a9b6d9dd # load x3 with value 0x18bb0a75a9b6d9dd
sd x3, 0(x2) # store 0x18bb0a75a9b6d9dd in memory
fld f19, 0(x2) # load 0x18bb0a75a9b6d9dd from memory into f19
fmv.x.d x30, f19 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x3f75c25759fac3f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xebe11dc921d0a6d1 # load x3 with value 0xebe11dc921d0a6d1
sd x3, 0(x2) # store 0xebe11dc921d0a6d1 in memory
fld f4, 0(x2) # load 0xebe11dc921d0a6d1 from memory into f4
fmv.x.d x31, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x24, 0x10b36c8ff3ed02eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f7, 0(x2) # load 0x0000000000000000 from memory into f7
fmv.x.d x24, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
li x5, 0x8f0c54680ccccbbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f25, 0(x2) # load 0x8000000000000000 from memory into f25
fmv.x.d x5, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
li x17, 0xea0b01f9cbde17ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f5, 0(x2) # load 0x3ff0000000000000 from memory into f5
fmv.x.d x17, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
li x14, 0x8f638a855e2308d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f13, 0(x2) # load 0xbff0000000000000 from memory into f13
fmv.x.d x14, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
li x13, 0xe8fc4f5ecd974435 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f16, 0(x2) # load 0x3ff8000000000000 from memory into f16
fmv.x.d x13, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
li x28, 0xb15a314e474ebc30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f22, 0(x2) # load 0xbff8000000000000 from memory into f22
fmv.x.d x28, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
li x27, 0x1258d99408b6e5ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f28, 0(x2) # load 0x4000000000000000 from memory into f28
fmv.x.d x27, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
li x23, 0x0d2c6963e21d4f2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f27, 0(x2) # load 0xc000000000000000 from memory into f27
fmv.x.d x23, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
li x19, 0x8bdc8e6dba6b0888 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f13, 0(x2) # load 0x0010000000000000 from memory into f13
fmv.x.d x19, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
li x8, 0x7bef8cf52bc19172 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f10, 0(x2) # load 0x8010000000000000 from memory into f10
fmv.x.d x8, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
li x18, 0xc3e737de53e9df46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f16, 0(x2) # load 0x7fefffffffffffff from memory into f16
fmv.x.d x18, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
li x5, 0xd43351df92d66b1d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f31, 0(x2) # load 0xffefffffffffffff from memory into f31
fmv.x.d x5, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
li x25, 0x8f4544214b771a70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f20, 0(x2) # load 0x000fffffffffffff from memory into f20
fmv.x.d x25, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
li x16, 0x1942847064bd5068 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f24, 0(x2) # load 0x800fffffffffffff from memory into f24
fmv.x.d x16, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
li x9, 0xc0cfd50749fc6061 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f28, 0(x2) # load 0x0008000000000000 from memory into f28
fmv.x.d x9, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
li x4, 0x2166ee49013d423b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f11, 0(x2) # load 0x8008000000000000 from memory into f11
fmv.x.d x4, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x2, 0xb274818c219a74ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f13, 0(x2) # load 0x0000000000000001 from memory into f13
fmv.x.d x2, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
li x12, 0x404585a17c6692fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f18, 0(x2) # load 0x8000000000000001 from memory into f18
fmv.x.d x12, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
li x27, 0x5e4e5a8f27e64dc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f20, 0(x2) # load 0x7ff0000000000000 from memory into f20
fmv.x.d x27, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
li x3, 0x9a50416c3c36a878 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f29, 0(x2) # load 0xfff0000000000000 from memory into f29
fmv.x.d x3, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
li x27, 0x9324f37c0c6581d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f16, 0(x2) # load 0x7ff8000000000000 from memory into f16
fmv.x.d x27, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
li x1, 0x77a2d5df684940bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f26, 0(x2) # load 0x7fffffffffffffff from memory into f26
fmv.x.d x1, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
li x1, 0xae4fed1c3cb4c6e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f7, 0(x2) # load 0x7ff0000000000001 from memory into f7
fmv.x.d x1, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
li x8, 0xf14a1561684f61dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f23, 0(x2) # load 0x7ff7ffffffffffff from memory into f23
fmv.x.d x8, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
li x22, 0x9d0482a0dc033971 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f27, 0(x2) # load 0x5a392534a57711ad from memory into f27
fmv.x.d x22, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
li x5, 0x75e25bf99f8faeca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f27, 0(x2) # load 0xa6e895993737426c from memory into f27
fmv.x.d x5, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x14, 0xec56b074f131971d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x973ddba105b78e8f # load x3 with value 0x973ddba105b78e8f
sd x3, 0(x2) # store 0x973ddba105b78e8f in memory
fld f0, 0(x2) # load 0x973ddba105b78e8f from memory into f0
fmv.x.d x14, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x18, 0x51571bfc3c8137eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbfbe7a75171bb5e1 # load x3 with value 0xbfbe7a75171bb5e1
sd x3, 0(x2) # store 0xbfbe7a75171bb5e1 in memory
fld f1, 0(x2) # load 0xbfbe7a75171bb5e1 from memory into f1
fmv.x.d x18, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x12, 0x9acec19269e0805d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x47b4f05b75d00ba0 # load x3 with value 0x47b4f05b75d00ba0
sd x3, 0(x2) # store 0x47b4f05b75d00ba0 in memory
fld f2, 0(x2) # load 0x47b4f05b75d00ba0 from memory into f2
fmv.x.d x12, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x9, 0x7d5fb4453c444553 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbb4fa8c2e0705715 # load x3 with value 0xbb4fa8c2e0705715
sd x3, 0(x2) # store 0xbb4fa8c2e0705715 in memory
fld f3, 0(x2) # load 0xbb4fa8c2e0705715 from memory into f3
fmv.x.d x9, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x11, 0x1c59cbc1d2919c03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe74f1739258da340 # load x3 with value 0xe74f1739258da340
sd x3, 0(x2) # store 0xe74f1739258da340 in memory
fld f4, 0(x2) # load 0xe74f1739258da340 from memory into f4
fmv.x.d x11, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x15, 0x559eabfc24330af2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf1774cdff3fa8a2e # load x3 with value 0xf1774cdff3fa8a2e
sd x3, 0(x2) # store 0xf1774cdff3fa8a2e in memory
fld f5, 0(x2) # load 0xf1774cdff3fa8a2e from memory into f5
fmv.x.d x15, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x8, 0x43b7f428b900e4cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x807152168583fc4f # load x3 with value 0x807152168583fc4f
sd x3, 0(x2) # store 0x807152168583fc4f in memory
fld f6, 0(x2) # load 0x807152168583fc4f from memory into f6
fmv.x.d x8, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x3, 0x443ee7c527fabb29 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd02b8cc20add5d3e # load x3 with value 0xd02b8cc20add5d3e
sd x3, 0(x2) # store 0xd02b8cc20add5d3e in memory
fld f7, 0(x2) # load 0xd02b8cc20add5d3e from memory into f7
fmv.x.d x3, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x29, 0xb85061a6c3b40ddf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe3fccbd8ee65bcba # load x3 with value 0xe3fccbd8ee65bcba
sd x3, 0(x2) # store 0xe3fccbd8ee65bcba in memory
fld f8, 0(x2) # load 0xe3fccbd8ee65bcba from memory into f8
fmv.x.d x29, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x14, 0xbdf7e20031c2c481 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x17844447066b3489 # load x3 with value 0x17844447066b3489
sd x3, 0(x2) # store 0x17844447066b3489 in memory
fld f9, 0(x2) # load 0x17844447066b3489 from memory into f9
fmv.x.d x14, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x21, 0x54858ab184a98bc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1ae7f15ec4bfe477 # load x3 with value 0x1ae7f15ec4bfe477
sd x3, 0(x2) # store 0x1ae7f15ec4bfe477 in memory
fld f10, 0(x2) # load 0x1ae7f15ec4bfe477 from memory into f10
fmv.x.d x21, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x8, 0x091e3c6a8fd4f6d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf52ac820e9b60d0d # load x3 with value 0xf52ac820e9b60d0d
sd x3, 0(x2) # store 0xf52ac820e9b60d0d in memory
fld f11, 0(x2) # load 0xf52ac820e9b60d0d from memory into f11
fmv.x.d x8, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x9, 0x28329f1c91f05c37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe444e4d27dcca00a # load x3 with value 0xe444e4d27dcca00a
sd x3, 0(x2) # store 0xe444e4d27dcca00a in memory
fld f12, 0(x2) # load 0xe444e4d27dcca00a from memory into f12
fmv.x.d x9, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x23, 0x6a08a8d6dc23d519 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x56bbaff056855428 # load x3 with value 0x56bbaff056855428
sd x3, 0(x2) # store 0x56bbaff056855428 in memory
fld f13, 0(x2) # load 0x56bbaff056855428 from memory into f13
fmv.x.d x23, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x28, 0x69ba7a899fbb9ae5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xde9b03d7674b5a8a # load x3 with value 0xde9b03d7674b5a8a
sd x3, 0(x2) # store 0xde9b03d7674b5a8a in memory
fld f14, 0(x2) # load 0xde9b03d7674b5a8a from memory into f14
fmv.x.d x28, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x24, 0xd72855e0efe78f3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xcb1b7551970c054f # load x3 with value 0xcb1b7551970c054f
sd x3, 0(x2) # store 0xcb1b7551970c054f in memory
fld f15, 0(x2) # load 0xcb1b7551970c054f from memory into f15
fmv.x.d x24, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x1, 0xc3fdb04835f9dab6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3f6d55fc88b5672a # load x3 with value 0x3f6d55fc88b5672a
sd x3, 0(x2) # store 0x3f6d55fc88b5672a in memory
fld f16, 0(x2) # load 0x3f6d55fc88b5672a from memory into f16
fmv.x.d x1, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x1, 0x66c3cb8f6aea15b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xda0958780b675d1e # load x3 with value 0xda0958780b675d1e
sd x3, 0(x2) # store 0xda0958780b675d1e in memory
fld f17, 0(x2) # load 0xda0958780b675d1e from memory into f17
fmv.x.d x1, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x11, 0xf19ae83992a22320 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2d3bb4903ba46ce5 # load x3 with value 0x2d3bb4903ba46ce5
sd x3, 0(x2) # store 0x2d3bb4903ba46ce5 in memory
fld f18, 0(x2) # load 0x2d3bb4903ba46ce5 from memory into f18
fmv.x.d x11, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x1, 0xd329fd87592902b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf2b25ebc17f11f9c # load x3 with value 0xf2b25ebc17f11f9c
sd x3, 0(x2) # store 0xf2b25ebc17f11f9c in memory
fld f19, 0(x2) # load 0xf2b25ebc17f11f9c from memory into f19
fmv.x.d x1, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x5, 0x5d5073371f18be7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x39a6e32463a707a0 # load x3 with value 0x39a6e32463a707a0
sd x3, 0(x2) # store 0x39a6e32463a707a0 in memory
fld f20, 0(x2) # load 0x39a6e32463a707a0 from memory into f20
fmv.x.d x5, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x1, 0xb7f1319fafd037af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7a1c3597b9679f98 # load x3 with value 0x7a1c3597b9679f98
sd x3, 0(x2) # store 0x7a1c3597b9679f98 in memory
fld f21, 0(x2) # load 0x7a1c3597b9679f98 from memory into f21
fmv.x.d x1, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x28, 0x2335f9f67b6da0f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8d4758f2df5dc9af # load x3 with value 0x8d4758f2df5dc9af
sd x3, 0(x2) # store 0x8d4758f2df5dc9af in memory
fld f22, 0(x2) # load 0x8d4758f2df5dc9af from memory into f22
fmv.x.d x28, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x4, 0x58316d95e220d1d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x86f0c59c2322b7fe # load x3 with value 0x86f0c59c2322b7fe
sd x3, 0(x2) # store 0x86f0c59c2322b7fe in memory
fld f23, 0(x2) # load 0x86f0c59c2322b7fe from memory into f23
fmv.x.d x4, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x15, 0xe9fe7e785ecdc7fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xdb0b067dc2898eb3 # load x3 with value 0xdb0b067dc2898eb3
sd x3, 0(x2) # store 0xdb0b067dc2898eb3 in memory
fld f24, 0(x2) # load 0xdb0b067dc2898eb3 from memory into f24
fmv.x.d x15, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x7, 0xe6184bc160fd7d04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x83304a2252aefdc1 # load x3 with value 0x83304a2252aefdc1
sd x3, 0(x2) # store 0x83304a2252aefdc1 in memory
fld f25, 0(x2) # load 0x83304a2252aefdc1 from memory into f25
fmv.x.d x7, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x28, 0xd4837a4e81c34222 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5d83508351fdf673 # load x3 with value 0x5d83508351fdf673
sd x3, 0(x2) # store 0x5d83508351fdf673 in memory
fld f26, 0(x2) # load 0x5d83508351fdf673 from memory into f26
fmv.x.d x28, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x12, 0xd1835ebf1f9809b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb84d91b6178cbf05 # load x3 with value 0xb84d91b6178cbf05
sd x3, 0(x2) # store 0xb84d91b6178cbf05 in memory
fld f27, 0(x2) # load 0xb84d91b6178cbf05 from memory into f27
fmv.x.d x12, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x9, 0x6374441eb076d816 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf5b3d22789e88ac6 # load x3 with value 0xf5b3d22789e88ac6
sd x3, 0(x2) # store 0xf5b3d22789e88ac6 in memory
fld f28, 0(x2) # load 0xf5b3d22789e88ac6 from memory into f28
fmv.x.d x9, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x1, 0x3376d474eb3b9b0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5842f4cdc6fbe152 # load x3 with value 0x5842f4cdc6fbe152
sd x3, 0(x2) # store 0x5842f4cdc6fbe152 in memory
fld f29, 0(x2) # load 0x5842f4cdc6fbe152 from memory into f29
fmv.x.d x1, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x3, 0x3e213d534d44a652 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x308bfda94d0904e6 # load x3 with value 0x308bfda94d0904e6
sd x3, 0(x2) # store 0x308bfda94d0904e6 in memory
fld f30, 0(x2) # load 0x308bfda94d0904e6 from memory into f30
fmv.x.d x3, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x1, 0x6f6195e6d27151a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc02bcef1b136de2f # load x3 with value 0xc02bcef1b136de2f
sd x3, 0(x2) # store 0xc02bcef1b136de2f in memory
fld f31, 0(x2) # load 0xc02bcef1b136de2f from memory into f31
fmv.x.d x1, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
