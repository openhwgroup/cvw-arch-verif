///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/ZfaD//WALLY-COV-fround.d.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.992122
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
fround.d f15, f31 # perform first operation
fround.d f7, f15 # perform second operation

# Testcase cmp_gpr_hazard raw test
fround.d f2, f31 # perform first operation
fround.d f7, f26 # perform second operation

# Testcase cmp_gpr_hazard waw test
fround.d f25, f16 # perform first operation
fround.d f25, f12 # perform second operation

# Testcase cmp_gpr_hazard waw test
fround.d f10, f30 # perform first operation
fround.d f10, f22 # perform second operation

# Testcase cmp_gpr_hazard war test
fround.d f9, f25 # perform first operation
fround.d f25, f30 # perform second operation

# Testcase cmp_gpr_hazard war test
fround.d f30, f25 # perform first operation
fround.d f27, f20 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0xca2c58e0bc7e1fe5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0f05f296a2b9f5f0 # load x3 with value 0x0f05f296a2b9f5f0
sd x3, 0(x2) # store 0x0f05f296a2b9f5f0 in memory
fld f0, 0(x2) # load 0x0f05f296a2b9f5f0 from memory into f0
fround.d f0, f0 # perform operation
fround.d f0, f0 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0x444834f34c78cd0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x30b4900bcd17e463 # load x3 with value 0x30b4900bcd17e463
sd x3, 0(x2) # store 0x30b4900bcd17e463 in memory
fld f1, 0(x2) # load 0x30b4900bcd17e463 from memory into f1
fround.d f1, f1 # perform operation
fround.d f1, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0x8897c5aa1b3365f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf39429d78c7788b5 # load x3 with value 0xf39429d78c7788b5
sd x3, 0(x2) # store 0xf39429d78c7788b5 in memory
fld f2, 0(x2) # load 0xf39429d78c7788b5 from memory into f2
fround.d f2, f2 # perform operation
fround.d f2, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0x64f097f30d702bf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1f1a8154bf71aceb # load x3 with value 0x1f1a8154bf71aceb
sd x3, 0(x2) # store 0x1f1a8154bf71aceb in memory
fld f3, 0(x2) # load 0x1f1a8154bf71aceb from memory into f3
fround.d f3, f3 # perform operation
fround.d f3, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0x45bbc070ecefe69d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa10a683b892f10a9 # load x3 with value 0xa10a683b892f10a9
sd x3, 0(x2) # store 0xa10a683b892f10a9 in memory
fld f4, 0(x2) # load 0xa10a683b892f10a9 from memory into f4
fround.d f4, f4 # perform operation
fround.d f4, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0x4fd93336b8a68cbb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc81957be8fda0560 # load x3 with value 0xc81957be8fda0560
sd x3, 0(x2) # store 0xc81957be8fda0560 in memory
fld f5, 0(x2) # load 0xc81957be8fda0560 from memory into f5
fround.d f5, f5 # perform operation
fround.d f5, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0x44b461485f692bd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0117ad3ea545b4d7 # load x3 with value 0x0117ad3ea545b4d7
sd x3, 0(x2) # store 0x0117ad3ea545b4d7 in memory
fld f6, 0(x2) # load 0x0117ad3ea545b4d7 from memory into f6
fround.d f6, f6 # perform operation
fround.d f6, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0x33282db5788906b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0432897faf3c5279 # load x3 with value 0x0432897faf3c5279
sd x3, 0(x2) # store 0x0432897faf3c5279 in memory
fld f7, 0(x2) # load 0x0432897faf3c5279 from memory into f7
fround.d f7, f7 # perform operation
fround.d f7, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0x065591c7e7151070 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcdae2c628b112bd9 # load x3 with value 0xcdae2c628b112bd9
sd x3, 0(x2) # store 0xcdae2c628b112bd9 in memory
fld f8, 0(x2) # load 0xcdae2c628b112bd9 from memory into f8
fround.d f8, f8 # perform operation
fround.d f8, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0xc239e4398bb9893f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd02b699c4cf53be1 # load x3 with value 0xd02b699c4cf53be1
sd x3, 0(x2) # store 0xd02b699c4cf53be1 in memory
fld f9, 0(x2) # load 0xd02b699c4cf53be1 from memory into f9
fround.d f9, f9 # perform operation
fround.d f9, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0x01d91adde35eda22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdc524de14add6086 # load x3 with value 0xdc524de14add6086
sd x3, 0(x2) # store 0xdc524de14add6086 in memory
fld f10, 0(x2) # load 0xdc524de14add6086 from memory into f10
fround.d f10, f10 # perform operation
fround.d f10, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0x837e70dda5bea509 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x393fb36d1ef1c595 # load x3 with value 0x393fb36d1ef1c595
sd x3, 0(x2) # store 0x393fb36d1ef1c595 in memory
fld f11, 0(x2) # load 0x393fb36d1ef1c595 from memory into f11
fround.d f11, f11 # perform operation
fround.d f11, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0x452d64fb7506ff56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x133b2feed33d8957 # load x3 with value 0x133b2feed33d8957
sd x3, 0(x2) # store 0x133b2feed33d8957 in memory
fld f12, 0(x2) # load 0x133b2feed33d8957 from memory into f12
fround.d f12, f12 # perform operation
fround.d f12, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0xee717feade91c130 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbbc9d82676e67122 # load x3 with value 0xbbc9d82676e67122
sd x3, 0(x2) # store 0xbbc9d82676e67122 in memory
fld f13, 0(x2) # load 0xbbc9d82676e67122 from memory into f13
fround.d f13, f13 # perform operation
fround.d f13, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0x1d2a028a67078765 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2890dc8a39b2e0dd # load x3 with value 0x2890dc8a39b2e0dd
sd x3, 0(x2) # store 0x2890dc8a39b2e0dd in memory
fld f14, 0(x2) # load 0x2890dc8a39b2e0dd from memory into f14
fround.d f14, f14 # perform operation
fround.d f14, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0x680ca4c03bc7ed91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xce6a7489a26a7f41 # load x3 with value 0xce6a7489a26a7f41
sd x3, 0(x2) # store 0xce6a7489a26a7f41 in memory
fld f15, 0(x2) # load 0xce6a7489a26a7f41 from memory into f15
fround.d f15, f15 # perform operation
fround.d f15, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0x89968fcb3c2c7a38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xac7699fcd3e41b84 # load x3 with value 0xac7699fcd3e41b84
sd x3, 0(x2) # store 0xac7699fcd3e41b84 in memory
fld f16, 0(x2) # load 0xac7699fcd3e41b84 from memory into f16
fround.d f16, f16 # perform operation
fround.d f16, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0x7b90899fde2745e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3a44247e4b98ab1f # load x3 with value 0x3a44247e4b98ab1f
sd x3, 0(x2) # store 0x3a44247e4b98ab1f in memory
fld f17, 0(x2) # load 0x3a44247e4b98ab1f from memory into f17
fround.d f17, f17 # perform operation
fround.d f17, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0xd4c666af8b791d27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00ad5614b529d67b # load x3 with value 0x00ad5614b529d67b
sd x3, 0(x2) # store 0x00ad5614b529d67b in memory
fld f18, 0(x2) # load 0x00ad5614b529d67b from memory into f18
fround.d f18, f18 # perform operation
fround.d f18, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0x0a22e0b22f4a7752 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x57de9c6fb4457b09 # load x3 with value 0x57de9c6fb4457b09
sd x3, 0(x2) # store 0x57de9c6fb4457b09 in memory
fld f19, 0(x2) # load 0x57de9c6fb4457b09 from memory into f19
fround.d f19, f19 # perform operation
fround.d f19, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0xece529b2a7c2a9ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0deb57fd37e96b38 # load x3 with value 0x0deb57fd37e96b38
sd x3, 0(x2) # store 0x0deb57fd37e96b38 in memory
fld f20, 0(x2) # load 0x0deb57fd37e96b38 from memory into f20
fround.d f20, f20 # perform operation
fround.d f20, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0xda1995e4c17fb7d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0478de505c7edc54 # load x3 with value 0x0478de505c7edc54
sd x3, 0(x2) # store 0x0478de505c7edc54 in memory
fld f21, 0(x2) # load 0x0478de505c7edc54 from memory into f21
fround.d f21, f21 # perform operation
fround.d f21, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0xfa4df1afade4416e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4d3fd8a2edd98f16 # load x3 with value 0x4d3fd8a2edd98f16
sd x3, 0(x2) # store 0x4d3fd8a2edd98f16 in memory
fld f22, 0(x2) # load 0x4d3fd8a2edd98f16 from memory into f22
fround.d f22, f22 # perform operation
fround.d f22, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0xfd3c2b7c167bf97a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5b0244a28781a42b # load x3 with value 0x5b0244a28781a42b
sd x3, 0(x2) # store 0x5b0244a28781a42b in memory
fld f23, 0(x2) # load 0x5b0244a28781a42b from memory into f23
fround.d f23, f23 # perform operation
fround.d f23, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0xfa973164ae7e1b63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3bcff711f303b6ad # load x3 with value 0x3bcff711f303b6ad
sd x3, 0(x2) # store 0x3bcff711f303b6ad in memory
fld f24, 0(x2) # load 0x3bcff711f303b6ad from memory into f24
fround.d f24, f24 # perform operation
fround.d f24, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0xdf6a9f04b64e2b85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc81ac24c8c81fc0b # load x3 with value 0xc81ac24c8c81fc0b
sd x3, 0(x2) # store 0xc81ac24c8c81fc0b in memory
fld f25, 0(x2) # load 0xc81ac24c8c81fc0b from memory into f25
fround.d f25, f25 # perform operation
fround.d f25, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0xbe28ce49cfec6df7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb23254792302f5c2 # load x3 with value 0xb23254792302f5c2
sd x3, 0(x2) # store 0xb23254792302f5c2 in memory
fld f26, 0(x2) # load 0xb23254792302f5c2 from memory into f26
fround.d f26, f26 # perform operation
fround.d f26, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0x27f8d9d246624f06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7918baf78a1f83fb # load x3 with value 0x7918baf78a1f83fb
sd x3, 0(x2) # store 0x7918baf78a1f83fb in memory
fld f27, 0(x2) # load 0x7918baf78a1f83fb from memory into f27
fround.d f27, f27 # perform operation
fround.d f27, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0x56ba5e39a9a554a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcd8e9878f5f30c92 # load x3 with value 0xcd8e9878f5f30c92
sd x3, 0(x2) # store 0xcd8e9878f5f30c92 in memory
fld f28, 0(x2) # load 0xcd8e9878f5f30c92 from memory into f28
fround.d f28, f28 # perform operation
fround.d f28, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0xcf5476cecf3e75a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2674f74dbd262604 # load x3 with value 0x2674f74dbd262604
sd x3, 0(x2) # store 0x2674f74dbd262604 in memory
fld f29, 0(x2) # load 0x2674f74dbd262604 from memory into f29
fround.d f29, f29 # perform operation
fround.d f29, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0x832b74aff42c7445 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe5270f4e6ccf971f # load x3 with value 0xe5270f4e6ccf971f
sd x3, 0(x2) # store 0xe5270f4e6ccf971f in memory
fld f30, 0(x2) # load 0xe5270f4e6ccf971f from memory into f30
fround.d f30, f30 # perform operation
fround.d f30, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0x4c704cc04d2c6600 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x20fc1f02123ccece # load x3 with value 0x20fc1f02123ccece
sd x3, 0(x2) # store 0x20fc1f02123ccece in memory
fld f31, 0(x2) # load 0x20fc1f02123ccece from memory into f31
fround.d f31, f31 # perform operation
fround.d f31, f31 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
li x0, 0x943e21e3afb5dd3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd7af571ed3bbbb94 # load x3 with value 0xd7af571ed3bbbb94
sd x3, 0(x2) # store 0xd7af571ed3bbbb94 in memory
fld f29, 0(x2) # load 0xd7af571ed3bbbb94 from memory into f29
fround.d f0, f29 # perform operation
fround.d f0, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
li x1, 0xc0773813a08e2e24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x70744bc04313a2e3 # load x3 with value 0x70744bc04313a2e3
sd x3, 0(x2) # store 0x70744bc04313a2e3 in memory
fld f2, 0(x2) # load 0x70744bc04313a2e3 from memory into f2
fround.d f1, f2 # perform operation
fround.d f1, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
li x2, 0x2ce303fc6ec46705 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb477cde0dc759a44 # load x3 with value 0xb477cde0dc759a44
sd x3, 0(x2) # store 0xb477cde0dc759a44 in memory
fld f19, 0(x2) # load 0xb477cde0dc759a44 from memory into f19
fround.d f2, f19 # perform operation
fround.d f2, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
li x3, 0x4d57cebc69ef41a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0c1118ae3dfdafa9 # load x3 with value 0x0c1118ae3dfdafa9
sd x3, 0(x2) # store 0x0c1118ae3dfdafa9 in memory
fld f30, 0(x2) # load 0x0c1118ae3dfdafa9 from memory into f30
fround.d f3, f30 # perform operation
fround.d f3, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
li x4, 0xc70e18714e4cd5db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x84b5d496e4c70651 # load x3 with value 0x84b5d496e4c70651
sd x3, 0(x2) # store 0x84b5d496e4c70651 in memory
fld f30, 0(x2) # load 0x84b5d496e4c70651 from memory into f30
fround.d f4, f30 # perform operation
fround.d f4, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
li x5, 0x60c21665bd441ca2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x19beed3d1507adac # load x3 with value 0x19beed3d1507adac
sd x3, 0(x2) # store 0x19beed3d1507adac in memory
fld f14, 0(x2) # load 0x19beed3d1507adac from memory into f14
fround.d f5, f14 # perform operation
fround.d f5, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
li x6, 0xf7db1fe410f86fe1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc3f6e7bf238991 # load x3 with value 0xbfc3f6e7bf238991
sd x3, 0(x2) # store 0xbfc3f6e7bf238991 in memory
fld f12, 0(x2) # load 0xbfc3f6e7bf238991 from memory into f12
fround.d f6, f12 # perform operation
fround.d f6, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
li x7, 0xf2257f2c5631204d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x03fd0a3e7fe7a50e # load x3 with value 0x03fd0a3e7fe7a50e
sd x3, 0(x2) # store 0x03fd0a3e7fe7a50e in memory
fld f25, 0(x2) # load 0x03fd0a3e7fe7a50e from memory into f25
fround.d f7, f25 # perform operation
fround.d f7, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
li x8, 0x9e113a62748823c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xac05a30c0271e8f0 # load x3 with value 0xac05a30c0271e8f0
sd x3, 0(x2) # store 0xac05a30c0271e8f0 in memory
fld f31, 0(x2) # load 0xac05a30c0271e8f0 from memory into f31
fround.d f8, f31 # perform operation
fround.d f8, f31 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
li x9, 0xd584dd1f4e4d211a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd6d2a4b704becf91 # load x3 with value 0xd6d2a4b704becf91
sd x3, 0(x2) # store 0xd6d2a4b704becf91 in memory
fld f10, 0(x2) # load 0xd6d2a4b704becf91 from memory into f10
fround.d f9, f10 # perform operation
fround.d f9, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
li x10, 0x592a61290d6d552b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x530e599ff55255d4 # load x3 with value 0x530e599ff55255d4
sd x3, 0(x2) # store 0x530e599ff55255d4 in memory
fld f8, 0(x2) # load 0x530e599ff55255d4 from memory into f8
fround.d f10, f8 # perform operation
fround.d f10, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
li x11, 0x9f090330b023e6d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcda793d51df65a6e # load x3 with value 0xcda793d51df65a6e
sd x3, 0(x2) # store 0xcda793d51df65a6e in memory
fld f9, 0(x2) # load 0xcda793d51df65a6e from memory into f9
fround.d f11, f9 # perform operation
fround.d f11, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
li x12, 0x52c5a46d26516316 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x174696ec2112d7cd # load x3 with value 0x174696ec2112d7cd
sd x3, 0(x2) # store 0x174696ec2112d7cd in memory
fld f7, 0(x2) # load 0x174696ec2112d7cd from memory into f7
fround.d f12, f7 # perform operation
fround.d f12, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
li x13, 0xbc5087efbfe46cd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf4c0fb4de3934ba9 # load x3 with value 0xf4c0fb4de3934ba9
sd x3, 0(x2) # store 0xf4c0fb4de3934ba9 in memory
fld f4, 0(x2) # load 0xf4c0fb4de3934ba9 from memory into f4
fround.d f13, f4 # perform operation
fround.d f13, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
li x14, 0xc9e02cec2915941b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcca08d01101dc183 # load x3 with value 0xcca08d01101dc183
sd x3, 0(x2) # store 0xcca08d01101dc183 in memory
fld f23, 0(x2) # load 0xcca08d01101dc183 from memory into f23
fround.d f14, f23 # perform operation
fround.d f14, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
li x15, 0x71d635c2b5870003 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xddd92ecda71f051b # load x3 with value 0xddd92ecda71f051b
sd x3, 0(x2) # store 0xddd92ecda71f051b in memory
fld f21, 0(x2) # load 0xddd92ecda71f051b from memory into f21
fround.d f15, f21 # perform operation
fround.d f15, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
li x16, 0x4886a3e1eb724dfe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x267d2495e6e55fe5 # load x3 with value 0x267d2495e6e55fe5
sd x3, 0(x2) # store 0x267d2495e6e55fe5 in memory
fld f27, 0(x2) # load 0x267d2495e6e55fe5 from memory into f27
fround.d f16, f27 # perform operation
fround.d f16, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
li x17, 0x6b0d486ada9da741 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb037f42669306e5e # load x3 with value 0xb037f42669306e5e
sd x3, 0(x2) # store 0xb037f42669306e5e in memory
fld f5, 0(x2) # load 0xb037f42669306e5e from memory into f5
fround.d f17, f5 # perform operation
fround.d f17, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
li x18, 0xd1b5f6c61babe55d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe4617967031c95a5 # load x3 with value 0xe4617967031c95a5
sd x3, 0(x2) # store 0xe4617967031c95a5 in memory
fld f14, 0(x2) # load 0xe4617967031c95a5 from memory into f14
fround.d f18, f14 # perform operation
fround.d f18, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
li x19, 0x7aa77d3a4b16735f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2ca8f628a70d3907 # load x3 with value 0x2ca8f628a70d3907
sd x3, 0(x2) # store 0x2ca8f628a70d3907 in memory
fld f15, 0(x2) # load 0x2ca8f628a70d3907 from memory into f15
fround.d f19, f15 # perform operation
fround.d f19, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
li x20, 0xdcc3e4372cbf7b96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x35a30f42810ea04b # load x3 with value 0x35a30f42810ea04b
sd x3, 0(x2) # store 0x35a30f42810ea04b in memory
fld f19, 0(x2) # load 0x35a30f42810ea04b from memory into f19
fround.d f20, f19 # perform operation
fround.d f20, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
li x21, 0x6a496eacaa955c67 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa63c61c7a9aa4944 # load x3 with value 0xa63c61c7a9aa4944
sd x3, 0(x2) # store 0xa63c61c7a9aa4944 in memory
fld f20, 0(x2) # load 0xa63c61c7a9aa4944 from memory into f20
fround.d f21, f20 # perform operation
fround.d f21, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
li x22, 0x3450bbeb5f801ff9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6bf4bc51a814bc85 # load x3 with value 0x6bf4bc51a814bc85
sd x3, 0(x2) # store 0x6bf4bc51a814bc85 in memory
fld f17, 0(x2) # load 0x6bf4bc51a814bc85 from memory into f17
fround.d f22, f17 # perform operation
fround.d f22, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
li x23, 0xd564254b3d128582 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbe9308e85efde8de # load x3 with value 0xbe9308e85efde8de
sd x3, 0(x2) # store 0xbe9308e85efde8de in memory
fld f2, 0(x2) # load 0xbe9308e85efde8de from memory into f2
fround.d f23, f2 # perform operation
fround.d f23, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
li x24, 0x32a0bed68c22f9ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8f17e23e242a3988 # load x3 with value 0x8f17e23e242a3988
sd x3, 0(x2) # store 0x8f17e23e242a3988 in memory
fld f14, 0(x2) # load 0x8f17e23e242a3988 from memory into f14
fround.d f24, f14 # perform operation
fround.d f24, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
li x25, 0xe7126c3872290c09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2303fc0a194ec062 # load x3 with value 0x2303fc0a194ec062
sd x3, 0(x2) # store 0x2303fc0a194ec062 in memory
fld f24, 0(x2) # load 0x2303fc0a194ec062 from memory into f24
fround.d f25, f24 # perform operation
fround.d f25, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
li x26, 0x901589b5990f4e91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2042bb534e3df399 # load x3 with value 0x2042bb534e3df399
sd x3, 0(x2) # store 0x2042bb534e3df399 in memory
fld f13, 0(x2) # load 0x2042bb534e3df399 from memory into f13
fround.d f26, f13 # perform operation
fround.d f26, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
li x27, 0x1564d8e97d30eb61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xebb56f7921bb8e12 # load x3 with value 0xebb56f7921bb8e12
sd x3, 0(x2) # store 0xebb56f7921bb8e12 in memory
fld f14, 0(x2) # load 0xebb56f7921bb8e12 from memory into f14
fround.d f27, f14 # perform operation
fround.d f27, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
li x28, 0xdb7bab07876e52d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x12e855f5d6c6b6b6 # load x3 with value 0x12e855f5d6c6b6b6
sd x3, 0(x2) # store 0x12e855f5d6c6b6b6 in memory
fld f22, 0(x2) # load 0x12e855f5d6c6b6b6 from memory into f22
fround.d f28, f22 # perform operation
fround.d f28, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
li x29, 0x067aac9a3c1a0495 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x86d3cc1ea0d676a8 # load x3 with value 0x86d3cc1ea0d676a8
sd x3, 0(x2) # store 0x86d3cc1ea0d676a8 in memory
fld f10, 0(x2) # load 0x86d3cc1ea0d676a8 from memory into f10
fround.d f29, f10 # perform operation
fround.d f29, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
li x30, 0xa9b75c972442ab7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdf0465aabb193e36 # load x3 with value 0xdf0465aabb193e36
sd x3, 0(x2) # store 0xdf0465aabb193e36 in memory
fld f1, 0(x2) # load 0xdf0465aabb193e36 from memory into f1
fround.d f30, f1 # perform operation
fround.d f30, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
li x31, 0xbd0772f16d61d656 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x92a027d52e0161dd # load x3 with value 0x92a027d52e0161dd
sd x3, 0(x2) # store 0x92a027d52e0161dd in memory
fld f10, 0(x2) # load 0x92a027d52e0161dd from memory into f10
fround.d f31, f10 # perform operation
fround.d f31, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x11, 0xf67c7194966bb367 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f8, 0(x2) # load 0x0000000000000000 from memory into f8
fround.d f11, f8 # perform operation
fround.d f11, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
li x8, 0xed8b558fab6cc95b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f2, 0(x2) # load 0x8000000000000000 from memory into f2
fround.d f8, f2 # perform operation
fround.d f8, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
li x25, 0x7603a8bfefe56181 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f5, 0(x2) # load 0x3ff0000000000000 from memory into f5
fround.d f25, f5 # perform operation
fround.d f25, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
li x18, 0x4961290902ad3bef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f12, 0(x2) # load 0xbff0000000000000 from memory into f12
fround.d f18, f12 # perform operation
fround.d f18, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
li x19, 0x2989655fbd81da62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f12, 0(x2) # load 0x3ff8000000000000 from memory into f12
fround.d f19, f12 # perform operation
fround.d f19, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
li x20, 0x372b2ea7fa9cb587 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f6, 0(x2) # load 0xbff8000000000000 from memory into f6
fround.d f20, f6 # perform operation
fround.d f20, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
li x13, 0x0702ca5983831050 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f14, 0(x2) # load 0x4000000000000000 from memory into f14
fround.d f13, f14 # perform operation
fround.d f13, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
li x26, 0x106d051028a79cb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f21, 0(x2) # load 0xc000000000000000 from memory into f21
fround.d f26, f21 # perform operation
fround.d f26, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
li x27, 0xf22d6369bde4725d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f14, 0(x2) # load 0x0010000000000000 from memory into f14
fround.d f27, f14 # perform operation
fround.d f27, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
li x3, 0xde8b1dc09b9cce54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f28, 0(x2) # load 0x8010000000000000 from memory into f28
fround.d f3, f28 # perform operation
fround.d f3, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
li x19, 0xcde88dac6aea498b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f20, 0(x2) # load 0x7fefffffffffffff from memory into f20
fround.d f19, f20 # perform operation
fround.d f19, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
li x12, 0x823b38bfb2f76e25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f29, 0(x2) # load 0xffefffffffffffff from memory into f29
fround.d f12, f29 # perform operation
fround.d f12, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
li x31, 0x71a5b0d91f743177 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f17, 0(x2) # load 0x000fffffffffffff from memory into f17
fround.d f31, f17 # perform operation
fround.d f31, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
li x29, 0x3b0bca3f5a92a24c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f19, 0(x2) # load 0x800fffffffffffff from memory into f19
fround.d f29, f19 # perform operation
fround.d f29, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
li x17, 0xc60dbb382bdff4f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f26, 0(x2) # load 0x0008000000000000 from memory into f26
fround.d f17, f26 # perform operation
fround.d f17, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
li x30, 0x4a2137c50803ae2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f10, 0(x2) # load 0x8008000000000000 from memory into f10
fround.d f30, f10 # perform operation
fround.d f30, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x25, 0xe9828b33537d70c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f11, 0(x2) # load 0x0000000000000001 from memory into f11
fround.d f25, f11 # perform operation
fround.d f25, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
li x29, 0x0a61c454f09b479a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f5, 0(x2) # load 0x8000000000000001 from memory into f5
fround.d f29, f5 # perform operation
fround.d f29, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
li x21, 0x4bc65dc97cbf1c9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f29, 0(x2) # load 0x7ff0000000000000 from memory into f29
fround.d f21, f29 # perform operation
fround.d f21, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
li x9, 0x89199a7774e351c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f27, 0(x2) # load 0xfff0000000000000 from memory into f27
fround.d f9, f27 # perform operation
fround.d f9, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
li x24, 0x082017002aa314ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f28, 0(x2) # load 0x7ff8000000000000 from memory into f28
fround.d f24, f28 # perform operation
fround.d f24, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
li x29, 0xe3fe243c70329a5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f3, 0(x2) # load 0x7fffffffffffffff from memory into f3
fround.d f29, f3 # perform operation
fround.d f29, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
li x1, 0x2ccc16bdc731c950 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f8, 0(x2) # load 0x7ff0000000000001 from memory into f8
fround.d f1, f8 # perform operation
fround.d f1, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
li x21, 0xe6105b83fb930031 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f27, 0(x2) # load 0x7ff7ffffffffffff from memory into f27
fround.d f21, f27 # perform operation
fround.d f21, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
li x6, 0xecf40c03a6ae4eb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f5, 0(x2) # load 0x5a392534a57711ad from memory into f5
fround.d f6, f5 # perform operation
fround.d f6, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
li x30, 0xc2a4fb2a1cc59675 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f28, 0(x2) # load 0xa6e895993737426c from memory into f28
fround.d f30, f28 # perform operation
fround.d f30, f28 # perform operation

# Testcase cp_frm
li x10, 0x279d72ce2ae6a90e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4d4ae33a3688e4d3 # load x3 with value 0x4d4ae33a3688e4d3
sd x3, 0(x2) # store 0x4d4ae33a3688e4d3 in memory
fld f15, 0(x2) # load 0x4d4ae33a3688e4d3 from memory into f15
fround.d f10, f15 # perform operation
fround.d f10, f15, dyn # perform operation
fround.d f10, f15, rdn # perform operation
fround.d f10, f15, rmm # perform operation
fround.d f10, f15, rne # perform operation
fround.d f10, f15, rtz # perform operation
fround.d f10, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fround.d f10, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fround.d f10, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fround.d f10, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fround.d f10, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fround.d f10, f15 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x685d724702431051 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbbb701741c87651b # load x3 with value 0xbbb701741c87651b
sd x3, 0(x2) # store 0xbbb701741c87651b in memory
fld f17, 0(x2) # load 0xbbb701741c87651b from memory into f17
fround.d f0, f17 # perform operation
fround.d f0, f17 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x8b376b25482c50a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x64a322cb5bdae5bf # load x3 with value 0x64a322cb5bdae5bf
sd x3, 0(x2) # store 0x64a322cb5bdae5bf in memory
fld f6, 0(x2) # load 0x64a322cb5bdae5bf from memory into f6
fround.d f1, f6 # perform operation
fround.d f1, f6 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x6833ac8938e7132b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x55ee2e6724f18ddf # load x3 with value 0x55ee2e6724f18ddf
sd x3, 0(x2) # store 0x55ee2e6724f18ddf in memory
fld f16, 0(x2) # load 0x55ee2e6724f18ddf from memory into f16
fround.d f2, f16 # perform operation
fround.d f2, f16 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0xcd242018f5fb3320 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8366649aa50fb3ed # load x3 with value 0x8366649aa50fb3ed
sd x3, 0(x2) # store 0x8366649aa50fb3ed in memory
fld f17, 0(x2) # load 0x8366649aa50fb3ed from memory into f17
fround.d f3, f17 # perform operation
fround.d f3, f17 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0xebac0ca15194e4e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1f7e2947ed951d7a # load x3 with value 0x1f7e2947ed951d7a
sd x3, 0(x2) # store 0x1f7e2947ed951d7a in memory
fld f23, 0(x2) # load 0x1f7e2947ed951d7a from memory into f23
fround.d f4, f23 # perform operation
fround.d f4, f23 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x5bced798fdcf087f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1a0a650f5fb9a201 # load x3 with value 0x1a0a650f5fb9a201
sd x3, 0(x2) # store 0x1a0a650f5fb9a201 in memory
fld f26, 0(x2) # load 0x1a0a650f5fb9a201 from memory into f26
fround.d f5, f26 # perform operation
fround.d f5, f26 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x86d6cb4437fb925f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x43be0ee9ded7d550 # load x3 with value 0x43be0ee9ded7d550
sd x3, 0(x2) # store 0x43be0ee9ded7d550 in memory
fld f27, 0(x2) # load 0x43be0ee9ded7d550 from memory into f27
fround.d f6, f27 # perform operation
fround.d f6, f27 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x3d4b2c86689b1df0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6bc3b40ad98fa4ca # load x3 with value 0x6bc3b40ad98fa4ca
sd x3, 0(x2) # store 0x6bc3b40ad98fa4ca in memory
fld f10, 0(x2) # load 0x6bc3b40ad98fa4ca from memory into f10
fround.d f7, f10 # perform operation
fround.d f7, f10 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0xd2503b5d4a55f69d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6a11cf40bc25a9d0 # load x3 with value 0x6a11cf40bc25a9d0
sd x3, 0(x2) # store 0x6a11cf40bc25a9d0 in memory
fld f18, 0(x2) # load 0x6a11cf40bc25a9d0 from memory into f18
fround.d f8, f18 # perform operation
fround.d f8, f18 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0xc3b53e1a3efa0ab0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8edef6b4d7dfbc88 # load x3 with value 0x8edef6b4d7dfbc88
sd x3, 0(x2) # store 0x8edef6b4d7dfbc88 in memory
fld f14, 0(x2) # load 0x8edef6b4d7dfbc88 from memory into f14
fround.d f9, f14 # perform operation
fround.d f9, f14 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x56806156f948efbc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fada2c82ca9edb1 # load x3 with value 0x7fada2c82ca9edb1
sd x3, 0(x2) # store 0x7fada2c82ca9edb1 in memory
fld f26, 0(x2) # load 0x7fada2c82ca9edb1 from memory into f26
fround.d f10, f26 # perform operation
fround.d f10, f26 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x85f015cc582616d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf221b8d9e65fa770 # load x3 with value 0xf221b8d9e65fa770
sd x3, 0(x2) # store 0xf221b8d9e65fa770 in memory
fld f21, 0(x2) # load 0xf221b8d9e65fa770 from memory into f21
fround.d f11, f21 # perform operation
fround.d f11, f21 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0xb5ca5dd02c806b11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80a755c621998fc6 # load x3 with value 0x80a755c621998fc6
sd x3, 0(x2) # store 0x80a755c621998fc6 in memory
fld f20, 0(x2) # load 0x80a755c621998fc6 from memory into f20
fround.d f12, f20 # perform operation
fround.d f12, f20 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0xba2e33e6d0f105fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5bd56cf3e80e0de3 # load x3 with value 0x5bd56cf3e80e0de3
sd x3, 0(x2) # store 0x5bd56cf3e80e0de3 in memory
fld f14, 0(x2) # load 0x5bd56cf3e80e0de3 from memory into f14
fround.d f13, f14 # perform operation
fround.d f13, f14 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0xd30bf751e40420b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4601db640ae3bd55 # load x3 with value 0x4601db640ae3bd55
sd x3, 0(x2) # store 0x4601db640ae3bd55 in memory
fld f8, 0(x2) # load 0x4601db640ae3bd55 from memory into f8
fround.d f14, f8 # perform operation
fround.d f14, f8 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x33bfcc122c37cb45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe82b584816529f12 # load x3 with value 0xe82b584816529f12
sd x3, 0(x2) # store 0xe82b584816529f12 in memory
fld f18, 0(x2) # load 0xe82b584816529f12 from memory into f18
fround.d f15, f18 # perform operation
fround.d f15, f18 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0xf11d47608c734168 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfef532f7dab89c9c # load x3 with value 0xfef532f7dab89c9c
sd x3, 0(x2) # store 0xfef532f7dab89c9c in memory
fld f13, 0(x2) # load 0xfef532f7dab89c9c from memory into f13
fround.d f16, f13 # perform operation
fround.d f16, f13 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0xd64f44608476339d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa657f26acf24752d # load x3 with value 0xa657f26acf24752d
sd x3, 0(x2) # store 0xa657f26acf24752d in memory
fld f9, 0(x2) # load 0xa657f26acf24752d from memory into f9
fround.d f17, f9 # perform operation
fround.d f17, f9 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x2e28f522b7288c70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x94f47b2fd24347aa # load x3 with value 0x94f47b2fd24347aa
sd x3, 0(x2) # store 0x94f47b2fd24347aa in memory
fld f26, 0(x2) # load 0x94f47b2fd24347aa from memory into f26
fround.d f18, f26 # perform operation
fround.d f18, f26 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x0ffdf21fb565465f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xead9f6997a941645 # load x3 with value 0xead9f6997a941645
sd x3, 0(x2) # store 0xead9f6997a941645 in memory
fld f4, 0(x2) # load 0xead9f6997a941645 from memory into f4
fround.d f19, f4 # perform operation
fround.d f19, f4 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x3460ef65ee16c7e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb212aa6c8e06bed8 # load x3 with value 0xb212aa6c8e06bed8
sd x3, 0(x2) # store 0xb212aa6c8e06bed8 in memory
fld f2, 0(x2) # load 0xb212aa6c8e06bed8 from memory into f2
fround.d f20, f2 # perform operation
fround.d f20, f2 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x3ff7b1892dde11b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xee591cda490c97cf # load x3 with value 0xee591cda490c97cf
sd x3, 0(x2) # store 0xee591cda490c97cf in memory
fld f12, 0(x2) # load 0xee591cda490c97cf from memory into f12
fround.d f21, f12 # perform operation
fround.d f21, f12 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0xccd9fc5fb0d92c5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf1bf9f141ab2510b # load x3 with value 0xf1bf9f141ab2510b
sd x3, 0(x2) # store 0xf1bf9f141ab2510b in memory
fld f16, 0(x2) # load 0xf1bf9f141ab2510b from memory into f16
fround.d f22, f16 # perform operation
fround.d f22, f16 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0xf08d3556ac3470a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcad3c8cbba19b1d7 # load x3 with value 0xcad3c8cbba19b1d7
sd x3, 0(x2) # store 0xcad3c8cbba19b1d7 in memory
fld f16, 0(x2) # load 0xcad3c8cbba19b1d7 from memory into f16
fround.d f23, f16 # perform operation
fround.d f23, f16 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x3272f910ddfa9c16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe526cdfcbc719409 # load x3 with value 0xe526cdfcbc719409
sd x3, 0(x2) # store 0xe526cdfcbc719409 in memory
fld f13, 0(x2) # load 0xe526cdfcbc719409 from memory into f13
fround.d f24, f13 # perform operation
fround.d f24, f13 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x6e1ff19d9bb506f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0667964d12e6ad61 # load x3 with value 0x0667964d12e6ad61
sd x3, 0(x2) # store 0x0667964d12e6ad61 in memory
fld f13, 0(x2) # load 0x0667964d12e6ad61 from memory into f13
fround.d f25, f13 # perform operation
fround.d f25, f13 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xc94b3b5ad875b4c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x076b4429e4edb53a # load x3 with value 0x076b4429e4edb53a
sd x3, 0(x2) # store 0x076b4429e4edb53a in memory
fld f10, 0(x2) # load 0x076b4429e4edb53a from memory into f10
fround.d f26, f10 # perform operation
fround.d f26, f10 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0xb1f9a961e446e720 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbd7ba466733b9148 # load x3 with value 0xbd7ba466733b9148
sd x3, 0(x2) # store 0xbd7ba466733b9148 in memory
fld f17, 0(x2) # load 0xbd7ba466733b9148 from memory into f17
fround.d f27, f17 # perform operation
fround.d f27, f17 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x7fd3aa121cb0f3ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x58575403b5894ba7 # load x3 with value 0x58575403b5894ba7
sd x3, 0(x2) # store 0x58575403b5894ba7 in memory
fld f4, 0(x2) # load 0x58575403b5894ba7 from memory into f4
fround.d f28, f4 # perform operation
fround.d f28, f4 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0xbc766dea10ac889e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x41ebf22f4a0d36b0 # load x3 with value 0x41ebf22f4a0d36b0
sd x3, 0(x2) # store 0x41ebf22f4a0d36b0 in memory
fld f1, 0(x2) # load 0x41ebf22f4a0d36b0 from memory into f1
fround.d f29, f1 # perform operation
fround.d f29, f1 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0xc455ee510513813e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2f3e63ef0b73f6de # load x3 with value 0x2f3e63ef0b73f6de
sd x3, 0(x2) # store 0x2f3e63ef0b73f6de in memory
fld f14, 0(x2) # load 0x2f3e63ef0b73f6de from memory into f14
fround.d f30, f14 # perform operation
fround.d f30, f14 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x7044365b1a06828f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4a02ee88b2441b4c # load x3 with value 0x4a02ee88b2441b4c
sd x3, 0(x2) # store 0x4a02ee88b2441b4c in memory
fld f11, 0(x2) # load 0x4a02ee88b2441b4c from memory into f11
fround.d f31, f11 # perform operation
fround.d f31, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x22, 0xc88a62958ad66648 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x22d58f1ec6eb6b27 # load x3 with value 0x22d58f1ec6eb6b27
sd x3, 0(x2) # store 0x22d58f1ec6eb6b27 in memory
fld f0, 0(x2) # load 0x22d58f1ec6eb6b27 from memory into f0
fround.d f22, f0 # perform operation
fround.d f22, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x17, 0x213a55e50c09d918 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd6fc7c8ff3a91323 # load x3 with value 0xd6fc7c8ff3a91323
sd x3, 0(x2) # store 0xd6fc7c8ff3a91323 in memory
fld f1, 0(x2) # load 0xd6fc7c8ff3a91323 from memory into f1
fround.d f17, f1 # perform operation
fround.d f17, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x29, 0xfab5bdcdf4117eee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x94fc358072b4ad08 # load x3 with value 0x94fc358072b4ad08
sd x3, 0(x2) # store 0x94fc358072b4ad08 in memory
fld f2, 0(x2) # load 0x94fc358072b4ad08 from memory into f2
fround.d f29, f2 # perform operation
fround.d f29, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x25, 0x37a6e62f935a30b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x986ba5d3995725dd # load x3 with value 0x986ba5d3995725dd
sd x3, 0(x2) # store 0x986ba5d3995725dd in memory
fld f3, 0(x2) # load 0x986ba5d3995725dd from memory into f3
fround.d f25, f3 # perform operation
fround.d f25, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x13, 0xdcd66fcecad8881a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x64465365e070e30d # load x3 with value 0x64465365e070e30d
sd x3, 0(x2) # store 0x64465365e070e30d in memory
fld f4, 0(x2) # load 0x64465365e070e30d from memory into f4
fround.d f13, f4 # perform operation
fround.d f13, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x10, 0x46f946c5029433a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x03b780527251b354 # load x3 with value 0x03b780527251b354
sd x3, 0(x2) # store 0x03b780527251b354 in memory
fld f5, 0(x2) # load 0x03b780527251b354 from memory into f5
fround.d f10, f5 # perform operation
fround.d f10, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x19, 0xcac2a77a10af60b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe39861128b82752d # load x3 with value 0xe39861128b82752d
sd x3, 0(x2) # store 0xe39861128b82752d in memory
fld f6, 0(x2) # load 0xe39861128b82752d from memory into f6
fround.d f19, f6 # perform operation
fround.d f19, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x10, 0xade777bb65f92dc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x24cfc8b48bdb9216 # load x3 with value 0x24cfc8b48bdb9216
sd x3, 0(x2) # store 0x24cfc8b48bdb9216 in memory
fld f7, 0(x2) # load 0x24cfc8b48bdb9216 from memory into f7
fround.d f10, f7 # perform operation
fround.d f10, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x24, 0xc5efae5760e1c71f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb2f15074b561deab # load x3 with value 0xb2f15074b561deab
sd x3, 0(x2) # store 0xb2f15074b561deab in memory
fld f8, 0(x2) # load 0xb2f15074b561deab from memory into f8
fround.d f24, f8 # perform operation
fround.d f24, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x29, 0xa22e4015dbc1c743 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x844f106bb543d15e # load x3 with value 0x844f106bb543d15e
sd x3, 0(x2) # store 0x844f106bb543d15e in memory
fld f9, 0(x2) # load 0x844f106bb543d15e from memory into f9
fround.d f29, f9 # perform operation
fround.d f29, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x29, 0x334c9a5d9e006a5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x062337c5b11dc43b # load x3 with value 0x062337c5b11dc43b
sd x3, 0(x2) # store 0x062337c5b11dc43b in memory
fld f10, 0(x2) # load 0x062337c5b11dc43b from memory into f10
fround.d f29, f10 # perform operation
fround.d f29, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x19, 0x6a4d1a95e74299ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x83696f9e600e2ff5 # load x3 with value 0x83696f9e600e2ff5
sd x3, 0(x2) # store 0x83696f9e600e2ff5 in memory
fld f11, 0(x2) # load 0x83696f9e600e2ff5 from memory into f11
fround.d f19, f11 # perform operation
fround.d f19, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x12, 0xb58b79215d70b92a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcb3c3252659c9b07 # load x3 with value 0xcb3c3252659c9b07
sd x3, 0(x2) # store 0xcb3c3252659c9b07 in memory
fld f12, 0(x2) # load 0xcb3c3252659c9b07 from memory into f12
fround.d f12, f12 # perform operation
fround.d f12, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x12, 0xa9cb28dc4d5488d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3e196cb8fac06091 # load x3 with value 0x3e196cb8fac06091
sd x3, 0(x2) # store 0x3e196cb8fac06091 in memory
fld f13, 0(x2) # load 0x3e196cb8fac06091 from memory into f13
fround.d f12, f13 # perform operation
fround.d f12, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x1, 0xe001d6fb971f3a8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1af72b4f8000c166 # load x3 with value 0x1af72b4f8000c166
sd x3, 0(x2) # store 0x1af72b4f8000c166 in memory
fld f14, 0(x2) # load 0x1af72b4f8000c166 from memory into f14
fround.d f1, f14 # perform operation
fround.d f1, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x8, 0x21a4068c18eb9a53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x092ff9dc48d3af67 # load x3 with value 0x092ff9dc48d3af67
sd x3, 0(x2) # store 0x092ff9dc48d3af67 in memory
fld f15, 0(x2) # load 0x092ff9dc48d3af67 from memory into f15
fround.d f8, f15 # perform operation
fround.d f8, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x12, 0x60260123d4f020a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7a82047970fad121 # load x3 with value 0x7a82047970fad121
sd x3, 0(x2) # store 0x7a82047970fad121 in memory
fld f16, 0(x2) # load 0x7a82047970fad121 from memory into f16
fround.d f12, f16 # perform operation
fround.d f12, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x8, 0x28987ad4f570d387 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb69e2109a2f6ffa7 # load x3 with value 0xb69e2109a2f6ffa7
sd x3, 0(x2) # store 0xb69e2109a2f6ffa7 in memory
fld f17, 0(x2) # load 0xb69e2109a2f6ffa7 from memory into f17
fround.d f8, f17 # perform operation
fround.d f8, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x6, 0x2d6acfe99399b7eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeb77dba3ae096163 # load x3 with value 0xeb77dba3ae096163
sd x3, 0(x2) # store 0xeb77dba3ae096163 in memory
fld f18, 0(x2) # load 0xeb77dba3ae096163 from memory into f18
fround.d f6, f18 # perform operation
fround.d f6, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x8, 0xc892dbc6957c49be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x654ef36cab8c0fe5 # load x3 with value 0x654ef36cab8c0fe5
sd x3, 0(x2) # store 0x654ef36cab8c0fe5 in memory
fld f19, 0(x2) # load 0x654ef36cab8c0fe5 from memory into f19
fround.d f8, f19 # perform operation
fround.d f8, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x2, 0xf443482eaad80c45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0fe55c2722e99744 # load x3 with value 0x0fe55c2722e99744
sd x3, 0(x2) # store 0x0fe55c2722e99744 in memory
fld f20, 0(x2) # load 0x0fe55c2722e99744 from memory into f20
fround.d f2, f20 # perform operation
fround.d f2, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x21, 0x4d44fe68ecb5d937 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8bf6639912cdadc0 # load x3 with value 0x8bf6639912cdadc0
sd x3, 0(x2) # store 0x8bf6639912cdadc0 in memory
fld f21, 0(x2) # load 0x8bf6639912cdadc0 from memory into f21
fround.d f21, f21 # perform operation
fround.d f21, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x18, 0x777ee365d6a0fb64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3c7820f23adab117 # load x3 with value 0x3c7820f23adab117
sd x3, 0(x2) # store 0x3c7820f23adab117 in memory
fld f22, 0(x2) # load 0x3c7820f23adab117 from memory into f22
fround.d f18, f22 # perform operation
fround.d f18, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x8, 0x3977795823272b15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2d1e7908b5f43249 # load x3 with value 0x2d1e7908b5f43249
sd x3, 0(x2) # store 0x2d1e7908b5f43249 in memory
fld f23, 0(x2) # load 0x2d1e7908b5f43249 from memory into f23
fround.d f8, f23 # perform operation
fround.d f8, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x13, 0x34dd382d226f9b1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcb7c211cb62b5483 # load x3 with value 0xcb7c211cb62b5483
sd x3, 0(x2) # store 0xcb7c211cb62b5483 in memory
fld f24, 0(x2) # load 0xcb7c211cb62b5483 from memory into f24
fround.d f13, f24 # perform operation
fround.d f13, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x6, 0x412dc227dd345728 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf67b3ebc0895f3c7 # load x3 with value 0xf67b3ebc0895f3c7
sd x3, 0(x2) # store 0xf67b3ebc0895f3c7 in memory
fld f25, 0(x2) # load 0xf67b3ebc0895f3c7 from memory into f25
fround.d f6, f25 # perform operation
fround.d f6, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x13, 0xcbf3b6969d9e08c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd175fc8492851128 # load x3 with value 0xd175fc8492851128
sd x3, 0(x2) # store 0xd175fc8492851128 in memory
fld f26, 0(x2) # load 0xd175fc8492851128 from memory into f26
fround.d f13, f26 # perform operation
fround.d f13, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x28, 0x9f528d01a408e266 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf93b676654c76e4c # load x3 with value 0xf93b676654c76e4c
sd x3, 0(x2) # store 0xf93b676654c76e4c in memory
fld f27, 0(x2) # load 0xf93b676654c76e4c from memory into f27
fround.d f28, f27 # perform operation
fround.d f28, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x29, 0xe6ea62d37e3e4594 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9af48c4a948fe9d1 # load x3 with value 0x9af48c4a948fe9d1
sd x3, 0(x2) # store 0x9af48c4a948fe9d1 in memory
fld f28, 0(x2) # load 0x9af48c4a948fe9d1 from memory into f28
fround.d f29, f28 # perform operation
fround.d f29, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x12, 0x1f91d08e5178a145 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf6fc6261f1d28a39 # load x3 with value 0xf6fc6261f1d28a39
sd x3, 0(x2) # store 0xf6fc6261f1d28a39 in memory
fld f29, 0(x2) # load 0xf6fc6261f1d28a39 from memory into f29
fround.d f12, f29 # perform operation
fround.d f12, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x3, 0x2d929d513e09b6a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x759c622d667b3aad # load x3 with value 0x759c622d667b3aad
sd x3, 0(x2) # store 0x759c622d667b3aad in memory
fld f30, 0(x2) # load 0x759c622d667b3aad from memory into f30
fround.d f3, f30 # perform operation
fround.d f3, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x23, 0x43b4c04dde3e395f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x96dc1a0686081b86 # load x3 with value 0x96dc1a0686081b86
sd x3, 0(x2) # store 0x96dc1a0686081b86 in memory
fld f31, 0(x2) # load 0x96dc1a0686081b86 from memory into f31
fround.d f23, f31 # perform operation
fround.d f23, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
