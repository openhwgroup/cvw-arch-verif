///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zfh//WALLY-COV-fmax.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.134772
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
fmax.h f8, f2, f29 # perform first operation
fmax.h f5, f8, f1 # perform second operation

# Testcase cmp_gpr_hazard raw test
fmax.h f19, f27, f26 # perform first operation
fmax.h f4, f16, f19 # perform second operation

# Testcase cmp_gpr_hazard waw test
fmax.h f28, f26, f25 # perform first operation
fmax.h f28, f2, f17 # perform second operation

# Testcase cmp_gpr_hazard waw test
fmax.h f19, f4, f18 # perform first operation
fmax.h f19, f29, f22 # perform second operation

# Testcase cmp_gpr_hazard war test
fmax.h f3, f5, f10 # perform first operation
fmax.h f5, f1, f19 # perform second operation

# Testcase cmp_gpr_hazard war test
fmax.h f13, f15, f2 # perform first operation
fmax.h f2, f16, f5 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0x40bc60519d47b3b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x34eb61ffd7405d71 # load x3 with value 0x34eb61ffd7405d71
sw x3, 0(x2) # store 0x34eb61ffd7405d71 in memory
flh f0, 0(x2) # load 0x34eb61ffd7405d71 from memory into f0
li x3, 0xd780ac89735e074 # load x3 with value 0xd780ac89735e074
sw x3, 0(x2) # store 0xd780ac89735e074 in memory
flh f31, 0(x2) # load 0xd780ac89735e074 from memory into f31
fmax.h f0, f0, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0xe93fd13f6d8d01ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb1277bc8858f71b1 # load x3 with value 0xb1277bc8858f71b1
sw x3, 0(x2) # store 0xb1277bc8858f71b1 in memory
flh f1, 0(x2) # load 0xb1277bc8858f71b1 from memory into f1
li x3, 0x484216911d6cd534 # load x3 with value 0x484216911d6cd534
sw x3, 0(x2) # store 0x484216911d6cd534 in memory
flh f13, 0(x2) # load 0x484216911d6cd534 from memory into f13
fmax.h f1, f1, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0xb35ace879fa92ee6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3c66cc920ffa8e07 # load x3 with value 0x3c66cc920ffa8e07
sw x3, 0(x2) # store 0x3c66cc920ffa8e07 in memory
flh f2, 0(x2) # load 0x3c66cc920ffa8e07 from memory into f2
li x3, 0x290270d3a7330699 # load x3 with value 0x290270d3a7330699
sw x3, 0(x2) # store 0x290270d3a7330699 in memory
flh f31, 0(x2) # load 0x290270d3a7330699 from memory into f31
fmax.h f2, f2, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0x865d535592bfd192 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3c03135e743cdba4 # load x3 with value 0x3c03135e743cdba4
sw x3, 0(x2) # store 0x3c03135e743cdba4 in memory
flh f3, 0(x2) # load 0x3c03135e743cdba4 from memory into f3
li x3, 0x798f78c8be6aabf6 # load x3 with value 0x798f78c8be6aabf6
sw x3, 0(x2) # store 0x798f78c8be6aabf6 in memory
flh f28, 0(x2) # load 0x798f78c8be6aabf6 from memory into f28
fmax.h f3, f3, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0xa522084d659b9dde # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3cf7701a59d84ea3 # load x3 with value 0x3cf7701a59d84ea3
sw x3, 0(x2) # store 0x3cf7701a59d84ea3 in memory
flh f4, 0(x2) # load 0x3cf7701a59d84ea3 from memory into f4
li x3, 0xf6faf9b70dfdf6f3 # load x3 with value 0xf6faf9b70dfdf6f3
sw x3, 0(x2) # store 0xf6faf9b70dfdf6f3 in memory
flh f6, 0(x2) # load 0xf6faf9b70dfdf6f3 from memory into f6
fmax.h f4, f4, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0xf5a67e0e09f9285e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7c69cba7e4406453 # load x3 with value 0x7c69cba7e4406453
sw x3, 0(x2) # store 0x7c69cba7e4406453 in memory
flh f5, 0(x2) # load 0x7c69cba7e4406453 from memory into f5
li x3, 0x1560d0e53bad0c4a # load x3 with value 0x1560d0e53bad0c4a
sw x3, 0(x2) # store 0x1560d0e53bad0c4a in memory
flh f29, 0(x2) # load 0x1560d0e53bad0c4a from memory into f29
fmax.h f5, f5, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0xdd81ae9f7b1fec57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4f8557a2bf476d0e # load x3 with value 0x4f8557a2bf476d0e
sw x3, 0(x2) # store 0x4f8557a2bf476d0e in memory
flh f6, 0(x2) # load 0x4f8557a2bf476d0e from memory into f6
li x3, 0xa067a5e659f9ab7 # load x3 with value 0xa067a5e659f9ab7
sw x3, 0(x2) # store 0xa067a5e659f9ab7 in memory
flh f12, 0(x2) # load 0xa067a5e659f9ab7 from memory into f12
fmax.h f6, f6, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0x76111807a34a7cce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2bc98ca2331d1c51 # load x3 with value 0x2bc98ca2331d1c51
sw x3, 0(x2) # store 0x2bc98ca2331d1c51 in memory
flh f7, 0(x2) # load 0x2bc98ca2331d1c51 from memory into f7
li x3, 0x99082f270b867ea3 # load x3 with value 0x99082f270b867ea3
sw x3, 0(x2) # store 0x99082f270b867ea3 in memory
flh f28, 0(x2) # load 0x99082f270b867ea3 from memory into f28
fmax.h f7, f7, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0x5debdf7e2bdb9c46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa9bc0cad928e7164 # load x3 with value 0xa9bc0cad928e7164
sw x3, 0(x2) # store 0xa9bc0cad928e7164 in memory
flh f8, 0(x2) # load 0xa9bc0cad928e7164 from memory into f8
li x3, 0x2c7e8c3ab9cca541 # load x3 with value 0x2c7e8c3ab9cca541
sw x3, 0(x2) # store 0x2c7e8c3ab9cca541 in memory
flh f6, 0(x2) # load 0x2c7e8c3ab9cca541 from memory into f6
fmax.h f8, f8, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0x663406ce9f3bb207 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb39708bc26148c0b # load x3 with value 0xb39708bc26148c0b
sw x3, 0(x2) # store 0xb39708bc26148c0b in memory
flh f9, 0(x2) # load 0xb39708bc26148c0b from memory into f9
li x3, 0x98863de3e45abe79 # load x3 with value 0x98863de3e45abe79
sw x3, 0(x2) # store 0x98863de3e45abe79 in memory
flh f26, 0(x2) # load 0x98863de3e45abe79 from memory into f26
fmax.h f9, f9, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0xa844062fcb3e5e1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x79266a421d2e5059 # load x3 with value 0x79266a421d2e5059
sw x3, 0(x2) # store 0x79266a421d2e5059 in memory
flh f10, 0(x2) # load 0x79266a421d2e5059 from memory into f10
li x3, 0x53dcf3f0d70e3f02 # load x3 with value 0x53dcf3f0d70e3f02
sw x3, 0(x2) # store 0x53dcf3f0d70e3f02 in memory
flh f31, 0(x2) # load 0x53dcf3f0d70e3f02 from memory into f31
fmax.h f10, f10, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0xe1f6b77e6e7c8b7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc7fb04c216b67b04 # load x3 with value 0xc7fb04c216b67b04
sw x3, 0(x2) # store 0xc7fb04c216b67b04 in memory
flh f11, 0(x2) # load 0xc7fb04c216b67b04 from memory into f11
li x3, 0xf6466e81a6049c42 # load x3 with value 0xf6466e81a6049c42
sw x3, 0(x2) # store 0xf6466e81a6049c42 in memory
flh f1, 0(x2) # load 0xf6466e81a6049c42 from memory into f1
fmax.h f11, f11, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0x1c4c106966d726da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc98435cbde711a34 # load x3 with value 0xc98435cbde711a34
sw x3, 0(x2) # store 0xc98435cbde711a34 in memory
flh f12, 0(x2) # load 0xc98435cbde711a34 from memory into f12
li x3, 0x717e2f5997196759 # load x3 with value 0x717e2f5997196759
sw x3, 0(x2) # store 0x717e2f5997196759 in memory
flh f6, 0(x2) # load 0x717e2f5997196759 from memory into f6
fmax.h f12, f12, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0xb7fbed5a5f1bbb20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xed8d77609a49203c # load x3 with value 0xed8d77609a49203c
sw x3, 0(x2) # store 0xed8d77609a49203c in memory
flh f13, 0(x2) # load 0xed8d77609a49203c from memory into f13
li x3, 0x82da57901d628c3f # load x3 with value 0x82da57901d628c3f
sw x3, 0(x2) # store 0x82da57901d628c3f in memory
flh f11, 0(x2) # load 0x82da57901d628c3f from memory into f11
fmax.h f13, f13, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0x5d985848966fec06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xee682b2799d8fa80 # load x3 with value 0xee682b2799d8fa80
sw x3, 0(x2) # store 0xee682b2799d8fa80 in memory
flh f14, 0(x2) # load 0xee682b2799d8fa80 from memory into f14
li x3, 0x6ece724af77f5d08 # load x3 with value 0x6ece724af77f5d08
sw x3, 0(x2) # store 0x6ece724af77f5d08 in memory
flh f24, 0(x2) # load 0x6ece724af77f5d08 from memory into f24
fmax.h f14, f14, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0x78c21fc51bb00b7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x891bf230cbfe36bd # load x3 with value 0x891bf230cbfe36bd
sw x3, 0(x2) # store 0x891bf230cbfe36bd in memory
flh f15, 0(x2) # load 0x891bf230cbfe36bd from memory into f15
li x3, 0xb427110d54b1bb16 # load x3 with value 0xb427110d54b1bb16
sw x3, 0(x2) # store 0xb427110d54b1bb16 in memory
flh f7, 0(x2) # load 0xb427110d54b1bb16 from memory into f7
fmax.h f15, f15, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0x2547b398cd246428 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x49c67cbed176b401 # load x3 with value 0x49c67cbed176b401
sw x3, 0(x2) # store 0x49c67cbed176b401 in memory
flh f16, 0(x2) # load 0x49c67cbed176b401 from memory into f16
li x3, 0xc68a2f97e9b32 # load x3 with value 0xc68a2f97e9b32
sw x3, 0(x2) # store 0xc68a2f97e9b32 in memory
flh f29, 0(x2) # load 0xc68a2f97e9b32 from memory into f29
fmax.h f16, f16, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0x7d967f1b06194e33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x467cb44737e71427 # load x3 with value 0x467cb44737e71427
sw x3, 0(x2) # store 0x467cb44737e71427 in memory
flh f17, 0(x2) # load 0x467cb44737e71427 from memory into f17
li x3, 0xf8c245b5f1cfb08f # load x3 with value 0xf8c245b5f1cfb08f
sw x3, 0(x2) # store 0xf8c245b5f1cfb08f in memory
flh f12, 0(x2) # load 0xf8c245b5f1cfb08f from memory into f12
fmax.h f17, f17, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0xb7b3acc223881990 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x85969c166d041e05 # load x3 with value 0x85969c166d041e05
sw x3, 0(x2) # store 0x85969c166d041e05 in memory
flh f18, 0(x2) # load 0x85969c166d041e05 from memory into f18
li x3, 0x5c5624ae0b3c6a15 # load x3 with value 0x5c5624ae0b3c6a15
sw x3, 0(x2) # store 0x5c5624ae0b3c6a15 in memory
flh f15, 0(x2) # load 0x5c5624ae0b3c6a15 from memory into f15
fmax.h f18, f18, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0xce015b210c84dfbc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x75fd8b2d553bcd5d # load x3 with value 0x75fd8b2d553bcd5d
sw x3, 0(x2) # store 0x75fd8b2d553bcd5d in memory
flh f19, 0(x2) # load 0x75fd8b2d553bcd5d from memory into f19
li x3, 0xae7e96a428f8f2f3 # load x3 with value 0xae7e96a428f8f2f3
sw x3, 0(x2) # store 0xae7e96a428f8f2f3 in memory
flh f1, 0(x2) # load 0xae7e96a428f8f2f3 from memory into f1
fmax.h f19, f19, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0xc354415903dc3ea2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe3919a74e81b29 # load x3 with value 0xe3919a74e81b29
sw x3, 0(x2) # store 0xe3919a74e81b29 in memory
flh f20, 0(x2) # load 0xe3919a74e81b29 from memory into f20
li x3, 0x9c4220ce174cf175 # load x3 with value 0x9c4220ce174cf175
sw x3, 0(x2) # store 0x9c4220ce174cf175 in memory
flh f18, 0(x2) # load 0x9c4220ce174cf175 from memory into f18
fmax.h f20, f20, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0x8c00d1da323402c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x48b71f8c1f3ce8ea # load x3 with value 0x48b71f8c1f3ce8ea
sw x3, 0(x2) # store 0x48b71f8c1f3ce8ea in memory
flh f21, 0(x2) # load 0x48b71f8c1f3ce8ea from memory into f21
li x3, 0xd263cfc6a5aaa296 # load x3 with value 0xd263cfc6a5aaa296
sw x3, 0(x2) # store 0xd263cfc6a5aaa296 in memory
flh f17, 0(x2) # load 0xd263cfc6a5aaa296 from memory into f17
fmax.h f21, f21, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0x699a600b64f27778 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x842510faca40adee # load x3 with value 0x842510faca40adee
sw x3, 0(x2) # store 0x842510faca40adee in memory
flh f22, 0(x2) # load 0x842510faca40adee from memory into f22
li x3, 0x5e39b276d4f6e898 # load x3 with value 0x5e39b276d4f6e898
sw x3, 0(x2) # store 0x5e39b276d4f6e898 in memory
flh f30, 0(x2) # load 0x5e39b276d4f6e898 from memory into f30
fmax.h f22, f22, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0x7d772992fc04fd73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8cb013c49f3fae36 # load x3 with value 0x8cb013c49f3fae36
sw x3, 0(x2) # store 0x8cb013c49f3fae36 in memory
flh f23, 0(x2) # load 0x8cb013c49f3fae36 from memory into f23
li x3, 0x9bdd3af371a9787 # load x3 with value 0x9bdd3af371a9787
sw x3, 0(x2) # store 0x9bdd3af371a9787 in memory
flh f31, 0(x2) # load 0x9bdd3af371a9787 from memory into f31
fmax.h f23, f23, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0xa97ae9a49c173a0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7d981b7131c09f2b # load x3 with value 0x7d981b7131c09f2b
sw x3, 0(x2) # store 0x7d981b7131c09f2b in memory
flh f24, 0(x2) # load 0x7d981b7131c09f2b from memory into f24
li x3, 0xd7c1f1cbb685dd1 # load x3 with value 0xd7c1f1cbb685dd1
sw x3, 0(x2) # store 0xd7c1f1cbb685dd1 in memory
flh f19, 0(x2) # load 0xd7c1f1cbb685dd1 from memory into f19
fmax.h f24, f24, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0x53c0d59c1b140f95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x532c053222cce9da # load x3 with value 0x532c053222cce9da
sw x3, 0(x2) # store 0x532c053222cce9da in memory
flh f25, 0(x2) # load 0x532c053222cce9da from memory into f25
li x3, 0xfad45728f840bfb0 # load x3 with value 0xfad45728f840bfb0
sw x3, 0(x2) # store 0xfad45728f840bfb0 in memory
flh f20, 0(x2) # load 0xfad45728f840bfb0 from memory into f20
fmax.h f25, f25, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0x7baabdf1c095a823 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb455c224d01cfa34 # load x3 with value 0xb455c224d01cfa34
sw x3, 0(x2) # store 0xb455c224d01cfa34 in memory
flh f26, 0(x2) # load 0xb455c224d01cfa34 from memory into f26
li x3, 0xf9087815fd251962 # load x3 with value 0xf9087815fd251962
sw x3, 0(x2) # store 0xf9087815fd251962 in memory
flh f13, 0(x2) # load 0xf9087815fd251962 from memory into f13
fmax.h f26, f26, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0x15e4a9f954837950 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa7c5b0aa302b822a # load x3 with value 0xa7c5b0aa302b822a
sw x3, 0(x2) # store 0xa7c5b0aa302b822a in memory
flh f27, 0(x2) # load 0xa7c5b0aa302b822a from memory into f27
li x3, 0xcdf4d113f70d67b6 # load x3 with value 0xcdf4d113f70d67b6
sw x3, 0(x2) # store 0xcdf4d113f70d67b6 in memory
flh f25, 0(x2) # load 0xcdf4d113f70d67b6 from memory into f25
fmax.h f27, f27, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0xe6a95dd147d3d577 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1e1a6a5a5c372f34 # load x3 with value 0x1e1a6a5a5c372f34
sw x3, 0(x2) # store 0x1e1a6a5a5c372f34 in memory
flh f28, 0(x2) # load 0x1e1a6a5a5c372f34 from memory into f28
li x3, 0x68d0766c21f6930d # load x3 with value 0x68d0766c21f6930d
sw x3, 0(x2) # store 0x68d0766c21f6930d in memory
flh f13, 0(x2) # load 0x68d0766c21f6930d from memory into f13
fmax.h f28, f28, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0xf796b5fce4a6000c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x53dd991d04f2470b # load x3 with value 0x53dd991d04f2470b
sw x3, 0(x2) # store 0x53dd991d04f2470b in memory
flh f29, 0(x2) # load 0x53dd991d04f2470b from memory into f29
li x3, 0x86c3dd13dbe19b12 # load x3 with value 0x86c3dd13dbe19b12
sw x3, 0(x2) # store 0x86c3dd13dbe19b12 in memory
flh f27, 0(x2) # load 0x86c3dd13dbe19b12 from memory into f27
fmax.h f29, f29, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0xfc2b399688009dea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xccc20278efe25579 # load x3 with value 0xccc20278efe25579
sw x3, 0(x2) # store 0xccc20278efe25579 in memory
flh f30, 0(x2) # load 0xccc20278efe25579 from memory into f30
li x3, 0x879f84346dfb4f11 # load x3 with value 0x879f84346dfb4f11
sw x3, 0(x2) # store 0x879f84346dfb4f11 in memory
flh f23, 0(x2) # load 0x879f84346dfb4f11 from memory into f23
fmax.h f30, f30, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0x917ae2bd1d56b173 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x15602c1b18237d81 # load x3 with value 0x15602c1b18237d81
sw x3, 0(x2) # store 0x15602c1b18237d81 in memory
flh f31, 0(x2) # load 0x15602c1b18237d81 from memory into f31
li x3, 0xcb4b3633bfe00819 # load x3 with value 0xcb4b3633bfe00819
sw x3, 0(x2) # store 0xcb4b3633bfe00819 in memory
flh f11, 0(x2) # load 0xcb4b3633bfe00819 from memory into f11
fmax.h f31, f31, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
li x0, 0x822abc0c3f690895 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe8fcdbda61491d5e # load x3 with value 0xe8fcdbda61491d5e
sw x3, 0(x2) # store 0xe8fcdbda61491d5e in memory
flh f4, 0(x2) # load 0xe8fcdbda61491d5e from memory into f4
li x3, 0xdb144ee9e3d0dfbf # load x3 with value 0xdb144ee9e3d0dfbf
sw x3, 0(x2) # store 0xdb144ee9e3d0dfbf in memory
flh f0, 0(x2) # load 0xdb144ee9e3d0dfbf from memory into f0
fmax.h f0, f4, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
li x1, 0xb970a95326e1db53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x206e4b55b831920d # load x3 with value 0x206e4b55b831920d
sw x3, 0(x2) # store 0x206e4b55b831920d in memory
flh f18, 0(x2) # load 0x206e4b55b831920d from memory into f18
li x3, 0xc98ca2ebb8c99a3b # load x3 with value 0xc98ca2ebb8c99a3b
sw x3, 0(x2) # store 0xc98ca2ebb8c99a3b in memory
flh f1, 0(x2) # load 0xc98ca2ebb8c99a3b from memory into f1
fmax.h f1, f18, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
li x2, 0x83461af20da21a98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa4b42323ae2c13b3 # load x3 with value 0xa4b42323ae2c13b3
sw x3, 0(x2) # store 0xa4b42323ae2c13b3 in memory
flh f12, 0(x2) # load 0xa4b42323ae2c13b3 from memory into f12
li x3, 0xfb5ad334e5b6c053 # load x3 with value 0xfb5ad334e5b6c053
sw x3, 0(x2) # store 0xfb5ad334e5b6c053 in memory
flh f2, 0(x2) # load 0xfb5ad334e5b6c053 from memory into f2
fmax.h f2, f12, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
li x3, 0x1c8b59f2b17dcd81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2c60610a84d7b6d # load x3 with value 0x2c60610a84d7b6d
sw x3, 0(x2) # store 0x2c60610a84d7b6d in memory
flh f5, 0(x2) # load 0x2c60610a84d7b6d from memory into f5
li x3, 0xc9062660cfda3e00 # load x3 with value 0xc9062660cfda3e00
sw x3, 0(x2) # store 0xc9062660cfda3e00 in memory
flh f3, 0(x2) # load 0xc9062660cfda3e00 from memory into f3
fmax.h f3, f5, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
li x4, 0xd0f3f69aacd8a33a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x73c53a915737ff0d # load x3 with value 0x73c53a915737ff0d
sw x3, 0(x2) # store 0x73c53a915737ff0d in memory
flh f17, 0(x2) # load 0x73c53a915737ff0d from memory into f17
li x3, 0xa5f9ff5a91b067c # load x3 with value 0xa5f9ff5a91b067c
sw x3, 0(x2) # store 0xa5f9ff5a91b067c in memory
flh f4, 0(x2) # load 0xa5f9ff5a91b067c from memory into f4
fmax.h f4, f17, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
li x5, 0x407ff8789c0c1209 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x35e33a6e406074ee # load x3 with value 0x35e33a6e406074ee
sw x3, 0(x2) # store 0x35e33a6e406074ee in memory
flh f9, 0(x2) # load 0x35e33a6e406074ee from memory into f9
li x3, 0xe8ad19c4766fe43e # load x3 with value 0xe8ad19c4766fe43e
sw x3, 0(x2) # store 0xe8ad19c4766fe43e in memory
flh f5, 0(x2) # load 0xe8ad19c4766fe43e from memory into f5
fmax.h f5, f9, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
li x6, 0x854ce2f1fff5365a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7e38fb55b9daa553 # load x3 with value 0x7e38fb55b9daa553
sw x3, 0(x2) # store 0x7e38fb55b9daa553 in memory
flh f4, 0(x2) # load 0x7e38fb55b9daa553 from memory into f4
li x3, 0xa784114bd96c4982 # load x3 with value 0xa784114bd96c4982
sw x3, 0(x2) # store 0xa784114bd96c4982 in memory
flh f6, 0(x2) # load 0xa784114bd96c4982 from memory into f6
fmax.h f6, f4, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
li x7, 0x037c3415623f11b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x463b8be639e5abc7 # load x3 with value 0x463b8be639e5abc7
sw x3, 0(x2) # store 0x463b8be639e5abc7 in memory
flh f11, 0(x2) # load 0x463b8be639e5abc7 from memory into f11
li x3, 0x3d4c79bef0691ba # load x3 with value 0x3d4c79bef0691ba
sw x3, 0(x2) # store 0x3d4c79bef0691ba in memory
flh f7, 0(x2) # load 0x3d4c79bef0691ba from memory into f7
fmax.h f7, f11, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
li x8, 0x1fae03722ea3bece # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x724fe56f7a8fa70a # load x3 with value 0x724fe56f7a8fa70a
sw x3, 0(x2) # store 0x724fe56f7a8fa70a in memory
flh f3, 0(x2) # load 0x724fe56f7a8fa70a from memory into f3
li x3, 0x6fc10dc193d1abbe # load x3 with value 0x6fc10dc193d1abbe
sw x3, 0(x2) # store 0x6fc10dc193d1abbe in memory
flh f8, 0(x2) # load 0x6fc10dc193d1abbe from memory into f8
fmax.h f8, f3, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
li x9, 0xe696d13908ec491a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5c72f2dd2ca1b641 # load x3 with value 0x5c72f2dd2ca1b641
sw x3, 0(x2) # store 0x5c72f2dd2ca1b641 in memory
flh f24, 0(x2) # load 0x5c72f2dd2ca1b641 from memory into f24
li x3, 0xd467fff6539ef015 # load x3 with value 0xd467fff6539ef015
sw x3, 0(x2) # store 0xd467fff6539ef015 in memory
flh f9, 0(x2) # load 0xd467fff6539ef015 from memory into f9
fmax.h f9, f24, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
li x10, 0x3f0fd28b7e8e0140 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3eeb8ebd5ccafafe # load x3 with value 0x3eeb8ebd5ccafafe
sw x3, 0(x2) # store 0x3eeb8ebd5ccafafe in memory
flh f24, 0(x2) # load 0x3eeb8ebd5ccafafe from memory into f24
li x3, 0xacead3eaf2cb7fb5 # load x3 with value 0xacead3eaf2cb7fb5
sw x3, 0(x2) # store 0xacead3eaf2cb7fb5 in memory
flh f10, 0(x2) # load 0xacead3eaf2cb7fb5 from memory into f10
fmax.h f10, f24, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
li x11, 0x2a300cdae216dd37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5dab925b7692c4a0 # load x3 with value 0x5dab925b7692c4a0
sw x3, 0(x2) # store 0x5dab925b7692c4a0 in memory
flh f18, 0(x2) # load 0x5dab925b7692c4a0 from memory into f18
li x3, 0xcd29be5f8345acc # load x3 with value 0xcd29be5f8345acc
sw x3, 0(x2) # store 0xcd29be5f8345acc in memory
flh f11, 0(x2) # load 0xcd29be5f8345acc from memory into f11
fmax.h f11, f18, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
li x12, 0x36e323d86aaddf34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6c342f142ae12b2d # load x3 with value 0x6c342f142ae12b2d
sw x3, 0(x2) # store 0x6c342f142ae12b2d in memory
flh f12, 0(x2) # load 0x6c342f142ae12b2d from memory into f12
li x3, 0x885904994e541257 # load x3 with value 0x885904994e541257
sw x3, 0(x2) # store 0x885904994e541257 in memory
flh f12, 0(x2) # load 0x885904994e541257 from memory into f12
fmax.h f12, f12, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
li x13, 0x07f59361817c26d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7d4749aead71e51e # load x3 with value 0x7d4749aead71e51e
sw x3, 0(x2) # store 0x7d4749aead71e51e in memory
flh f12, 0(x2) # load 0x7d4749aead71e51e from memory into f12
li x3, 0x8d2e3c9eef74f20b # load x3 with value 0x8d2e3c9eef74f20b
sw x3, 0(x2) # store 0x8d2e3c9eef74f20b in memory
flh f13, 0(x2) # load 0x8d2e3c9eef74f20b from memory into f13
fmax.h f13, f12, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
li x14, 0x637cb6e27a112ad4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x38d9342a53ba53d # load x3 with value 0x38d9342a53ba53d
sw x3, 0(x2) # store 0x38d9342a53ba53d in memory
flh f10, 0(x2) # load 0x38d9342a53ba53d from memory into f10
li x3, 0xbe29801f8eeffda0 # load x3 with value 0xbe29801f8eeffda0
sw x3, 0(x2) # store 0xbe29801f8eeffda0 in memory
flh f14, 0(x2) # load 0xbe29801f8eeffda0 from memory into f14
fmax.h f14, f10, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
li x15, 0x44183589cd9f0ad0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x21291e00f900a2ca # load x3 with value 0x21291e00f900a2ca
sw x3, 0(x2) # store 0x21291e00f900a2ca in memory
flh f6, 0(x2) # load 0x21291e00f900a2ca from memory into f6
li x3, 0xae3dea3514d57adb # load x3 with value 0xae3dea3514d57adb
sw x3, 0(x2) # store 0xae3dea3514d57adb in memory
flh f15, 0(x2) # load 0xae3dea3514d57adb from memory into f15
fmax.h f15, f6, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
li x16, 0x2326d9edb751061d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x66014d5787af4893 # load x3 with value 0x66014d5787af4893
sw x3, 0(x2) # store 0x66014d5787af4893 in memory
flh f7, 0(x2) # load 0x66014d5787af4893 from memory into f7
li x3, 0x3619f3876fa3da18 # load x3 with value 0x3619f3876fa3da18
sw x3, 0(x2) # store 0x3619f3876fa3da18 in memory
flh f16, 0(x2) # load 0x3619f3876fa3da18 from memory into f16
fmax.h f16, f7, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
li x17, 0xbac8bc2d103363e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb265c61865c544ac # load x3 with value 0xb265c61865c544ac
sw x3, 0(x2) # store 0xb265c61865c544ac in memory
flh f30, 0(x2) # load 0xb265c61865c544ac from memory into f30
li x3, 0xc591922f383bb1ca # load x3 with value 0xc591922f383bb1ca
sw x3, 0(x2) # store 0xc591922f383bb1ca in memory
flh f17, 0(x2) # load 0xc591922f383bb1ca from memory into f17
fmax.h f17, f30, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
li x18, 0x952e6726e3579ad5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x28b4dec58d127e81 # load x3 with value 0x28b4dec58d127e81
sw x3, 0(x2) # store 0x28b4dec58d127e81 in memory
flh f24, 0(x2) # load 0x28b4dec58d127e81 from memory into f24
li x3, 0x2f5e01790f5ede70 # load x3 with value 0x2f5e01790f5ede70
sw x3, 0(x2) # store 0x2f5e01790f5ede70 in memory
flh f18, 0(x2) # load 0x2f5e01790f5ede70 from memory into f18
fmax.h f18, f24, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
li x19, 0xbaf9382b2e293f89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x96e57c2ce15f2598 # load x3 with value 0x96e57c2ce15f2598
sw x3, 0(x2) # store 0x96e57c2ce15f2598 in memory
flh f7, 0(x2) # load 0x96e57c2ce15f2598 from memory into f7
li x3, 0x831d23c0d740f1cc # load x3 with value 0x831d23c0d740f1cc
sw x3, 0(x2) # store 0x831d23c0d740f1cc in memory
flh f19, 0(x2) # load 0x831d23c0d740f1cc from memory into f19
fmax.h f19, f7, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
li x20, 0xdea79f872146746e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x60e690966891d0d8 # load x3 with value 0x60e690966891d0d8
sw x3, 0(x2) # store 0x60e690966891d0d8 in memory
flh f14, 0(x2) # load 0x60e690966891d0d8 from memory into f14
li x3, 0xa58ecf6eeb90eec # load x3 with value 0xa58ecf6eeb90eec
sw x3, 0(x2) # store 0xa58ecf6eeb90eec in memory
flh f20, 0(x2) # load 0xa58ecf6eeb90eec from memory into f20
fmax.h f20, f14, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
li x21, 0x0e20d628dead470d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x434a1a5d02ce99cf # load x3 with value 0x434a1a5d02ce99cf
sw x3, 0(x2) # store 0x434a1a5d02ce99cf in memory
flh f31, 0(x2) # load 0x434a1a5d02ce99cf from memory into f31
li x3, 0x4689e8c701aad14c # load x3 with value 0x4689e8c701aad14c
sw x3, 0(x2) # store 0x4689e8c701aad14c in memory
flh f21, 0(x2) # load 0x4689e8c701aad14c from memory into f21
fmax.h f21, f31, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
li x22, 0x63fb6c38ef63bfa8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xecf317cb070cc775 # load x3 with value 0xecf317cb070cc775
sw x3, 0(x2) # store 0xecf317cb070cc775 in memory
flh f15, 0(x2) # load 0xecf317cb070cc775 from memory into f15
li x3, 0xc6aa9d63501978c # load x3 with value 0xc6aa9d63501978c
sw x3, 0(x2) # store 0xc6aa9d63501978c in memory
flh f22, 0(x2) # load 0xc6aa9d63501978c from memory into f22
fmax.h f22, f15, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
li x23, 0xe1ceb03cc88a67ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7124dd1c5b42f79f # load x3 with value 0x7124dd1c5b42f79f
sw x3, 0(x2) # store 0x7124dd1c5b42f79f in memory
flh f8, 0(x2) # load 0x7124dd1c5b42f79f from memory into f8
li x3, 0xbffbdc12a3c0e7aa # load x3 with value 0xbffbdc12a3c0e7aa
sw x3, 0(x2) # store 0xbffbdc12a3c0e7aa in memory
flh f23, 0(x2) # load 0xbffbdc12a3c0e7aa from memory into f23
fmax.h f23, f8, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
li x24, 0x3b65842749653c4c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6942fa8da9e2fce1 # load x3 with value 0x6942fa8da9e2fce1
sw x3, 0(x2) # store 0x6942fa8da9e2fce1 in memory
flh f14, 0(x2) # load 0x6942fa8da9e2fce1 from memory into f14
li x3, 0x89db86a9d0d5fd23 # load x3 with value 0x89db86a9d0d5fd23
sw x3, 0(x2) # store 0x89db86a9d0d5fd23 in memory
flh f24, 0(x2) # load 0x89db86a9d0d5fd23 from memory into f24
fmax.h f24, f14, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
li x25, 0x44b9aa8023e73c95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7de69a0bb6079605 # load x3 with value 0x7de69a0bb6079605
sw x3, 0(x2) # store 0x7de69a0bb6079605 in memory
flh f20, 0(x2) # load 0x7de69a0bb6079605 from memory into f20
li x3, 0x95fe1b20b2e523e1 # load x3 with value 0x95fe1b20b2e523e1
sw x3, 0(x2) # store 0x95fe1b20b2e523e1 in memory
flh f25, 0(x2) # load 0x95fe1b20b2e523e1 from memory into f25
fmax.h f25, f20, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
li x26, 0x90b0082056f84beb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x113b9643799eabb9 # load x3 with value 0x113b9643799eabb9
sw x3, 0(x2) # store 0x113b9643799eabb9 in memory
flh f16, 0(x2) # load 0x113b9643799eabb9 from memory into f16
li x3, 0xb5d039425bf9a30f # load x3 with value 0xb5d039425bf9a30f
sw x3, 0(x2) # store 0xb5d039425bf9a30f in memory
flh f26, 0(x2) # load 0xb5d039425bf9a30f from memory into f26
fmax.h f26, f16, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
li x27, 0xfe2bd1ca6193f923 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x72421355fff1a3c2 # load x3 with value 0x72421355fff1a3c2
sw x3, 0(x2) # store 0x72421355fff1a3c2 in memory
flh f18, 0(x2) # load 0x72421355fff1a3c2 from memory into f18
li x3, 0x59d13d0eb52a7afa # load x3 with value 0x59d13d0eb52a7afa
sw x3, 0(x2) # store 0x59d13d0eb52a7afa in memory
flh f27, 0(x2) # load 0x59d13d0eb52a7afa from memory into f27
fmax.h f27, f18, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
li x28, 0xcd6af540d63fe7c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf94f476c748f4689 # load x3 with value 0xf94f476c748f4689
sw x3, 0(x2) # store 0xf94f476c748f4689 in memory
flh f22, 0(x2) # load 0xf94f476c748f4689 from memory into f22
li x3, 0x186280d63feee3f # load x3 with value 0x186280d63feee3f
sw x3, 0(x2) # store 0x186280d63feee3f in memory
flh f28, 0(x2) # load 0x186280d63feee3f from memory into f28
fmax.h f28, f22, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
li x29, 0xe240a6d046b3c8c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe47c4b8905e128f4 # load x3 with value 0xe47c4b8905e128f4
sw x3, 0(x2) # store 0xe47c4b8905e128f4 in memory
flh f14, 0(x2) # load 0xe47c4b8905e128f4 from memory into f14
li x3, 0x5a650f3ff32d2414 # load x3 with value 0x5a650f3ff32d2414
sw x3, 0(x2) # store 0x5a650f3ff32d2414 in memory
flh f29, 0(x2) # load 0x5a650f3ff32d2414 from memory into f29
fmax.h f29, f14, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
li x30, 0x5c0ce5f81e0b18ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf6be8fb346cf2ab # load x3 with value 0xf6be8fb346cf2ab
sw x3, 0(x2) # store 0xf6be8fb346cf2ab in memory
flh f20, 0(x2) # load 0xf6be8fb346cf2ab from memory into f20
li x3, 0xe113935e84c3e21a # load x3 with value 0xe113935e84c3e21a
sw x3, 0(x2) # store 0xe113935e84c3e21a in memory
flh f30, 0(x2) # load 0xe113935e84c3e21a from memory into f30
fmax.h f30, f20, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
li x31, 0x0e3cca71dd6dbe3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe9e4388267d1090a # load x3 with value 0xe9e4388267d1090a
sw x3, 0(x2) # store 0xe9e4388267d1090a in memory
flh f14, 0(x2) # load 0xe9e4388267d1090a from memory into f14
li x3, 0x534c948d01bcb53d # load x3 with value 0x534c948d01bcb53d
sw x3, 0(x2) # store 0x534c948d01bcb53d in memory
flh f31, 0(x2) # load 0x534c948d01bcb53d from memory into f31
fmax.h f31, f14, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x20, 0xa8620b835443456a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f17, 0(x2) # load 0x00000000 from memory into f17
li x3, 0xebc38abf4d76deb9 # load x3 with value 0xebc38abf4d76deb9
sw x3, 0(x2) # store 0xebc38abf4d76deb9 in memory
flh f24, 0(x2) # load 0xebc38abf4d76deb9 from memory into f24
fmax.h f20, f17, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
li x4, 0x9491eeea3e5e0ad2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
li x3, 0xeaf45c7338180330 # load x3 with value 0xeaf45c7338180330
sw x3, 0(x2) # store 0xeaf45c7338180330 in memory
flh f2, 0(x2) # load 0xeaf45c7338180330 from memory into f2
fmax.h f4, f11, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
li x22, 0x7714c7c85cdddc8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f26, 0(x2) # load 0x00003c00 from memory into f26
li x3, 0x5ea8f47e464693e2 # load x3 with value 0x5ea8f47e464693e2
sw x3, 0(x2) # store 0x5ea8f47e464693e2 in memory
flh f28, 0(x2) # load 0x5ea8f47e464693e2 from memory into f28
fmax.h f22, f26, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
li x24, 0x4d141d88772064d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f27, 0(x2) # load 0x0000bc00 from memory into f27
li x3, 0xea922f700a7dd46f # load x3 with value 0xea922f700a7dd46f
sw x3, 0(x2) # store 0xea922f700a7dd46f in memory
flh f25, 0(x2) # load 0xea922f700a7dd46f from memory into f25
fmax.h f24, f27, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
li x3, 0xa48e4571342728c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f4, 0(x2) # load 0x00003e00 from memory into f4
li x3, 0xb2be2d5e5d79c9b4 # load x3 with value 0xb2be2d5e5d79c9b4
sw x3, 0(x2) # store 0xb2be2d5e5d79c9b4 in memory
flh f18, 0(x2) # load 0xb2be2d5e5d79c9b4 from memory into f18
fmax.h f3, f4, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
li x17, 0xd29e14597d9810a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
li x3, 0xcb922f67ddf4b725 # load x3 with value 0xcb922f67ddf4b725
sw x3, 0(x2) # store 0xcb922f67ddf4b725 in memory
flh f29, 0(x2) # load 0xcb922f67ddf4b725 from memory into f29
fmax.h f17, f5, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
li x30, 0xdb684f05e7263e90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
li x3, 0xdf0149c21dfcfce8 # load x3 with value 0xdf0149c21dfcfce8
sw x3, 0(x2) # store 0xdf0149c21dfcfce8 in memory
flh f17, 0(x2) # load 0xdf0149c21dfcfce8 from memory into f17
fmax.h f30, f29, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
li x20, 0x842fec4c980e9200 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f8, 0(x2) # load 0x0000c000 from memory into f8
li x3, 0xfff939b1d25adce7 # load x3 with value 0xfff939b1d25adce7
sw x3, 0(x2) # store 0xfff939b1d25adce7 in memory
flh f22, 0(x2) # load 0xfff939b1d25adce7 from memory into f22
fmax.h f20, f8, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
li x22, 0x4739cfd0d73b20c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f9, 0(x2) # load 0x00000400 from memory into f9
li x3, 0xaa9cda427e6f6ab2 # load x3 with value 0xaa9cda427e6f6ab2
sw x3, 0(x2) # store 0xaa9cda427e6f6ab2 in memory
flh f5, 0(x2) # load 0xaa9cda427e6f6ab2 from memory into f5
fmax.h f22, f9, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
li x8, 0xb430ded383b928b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
li x3, 0x245970ecfb9d5096 # load x3 with value 0x245970ecfb9d5096
sw x3, 0(x2) # store 0x245970ecfb9d5096 in memory
flh f19, 0(x2) # load 0x245970ecfb9d5096 from memory into f19
fmax.h f8, f18, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
li x12, 0xb3969ec378837803 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
li x3, 0x14c198900355504b # load x3 with value 0x14c198900355504b
sw x3, 0(x2) # store 0x14c198900355504b in memory
flh f7, 0(x2) # load 0x14c198900355504b from memory into f7
fmax.h f12, f21, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
li x3, 0xe833be71d5fd0410 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f22, 0(x2) # load 0x0000fbff from memory into f22
li x3, 0x5e454fabcfd62f30 # load x3 with value 0x5e454fabcfd62f30
sw x3, 0(x2) # store 0x5e454fabcfd62f30 in memory
flh f20, 0(x2) # load 0x5e454fabcfd62f30 from memory into f20
fmax.h f3, f22, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
li x20, 0xc113fc681e045647 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f19, 0(x2) # load 0x000003ff from memory into f19
li x3, 0xcc51ba2be3159008 # load x3 with value 0xcc51ba2be3159008
sw x3, 0(x2) # store 0xcc51ba2be3159008 in memory
flh f23, 0(x2) # load 0xcc51ba2be3159008 from memory into f23
fmax.h f20, f19, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
li x26, 0x527a59617fcf4f05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
li x3, 0xc39bdacf274d9493 # load x3 with value 0xc39bdacf274d9493
sw x3, 0(x2) # store 0xc39bdacf274d9493 in memory
flh f10, 0(x2) # load 0xc39bdacf274d9493 from memory into f10
fmax.h f26, f14, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
li x25, 0x7b25f68a5217b291 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f28, 0(x2) # load 0x00000200 from memory into f28
li x3, 0x19d7ff15c17c6d5c # load x3 with value 0x19d7ff15c17c6d5c
sw x3, 0(x2) # store 0x19d7ff15c17c6d5c in memory
flh f8, 0(x2) # load 0x19d7ff15c17c6d5c from memory into f8
fmax.h f25, f28, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
li x5, 0xa121420e72581447 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
li x3, 0xb363bdf28948ec9a # load x3 with value 0xb363bdf28948ec9a
sw x3, 0(x2) # store 0xb363bdf28948ec9a in memory
flh f25, 0(x2) # load 0xb363bdf28948ec9a from memory into f25
fmax.h f5, f17, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x10, 0xfb5cba938b235c40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
li x3, 0xb137eb34e0f9379e # load x3 with value 0xb137eb34e0f9379e
sw x3, 0(x2) # store 0xb137eb34e0f9379e in memory
flh f11, 0(x2) # load 0xb137eb34e0f9379e from memory into f11
fmax.h f10, f26, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
li x10, 0xa7dff392cbbe3ac1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f4, 0(x2) # load 0x00008001 from memory into f4
li x3, 0x6e656474615bb4b7 # load x3 with value 0x6e656474615bb4b7
sw x3, 0(x2) # store 0x6e656474615bb4b7 in memory
flh f6, 0(x2) # load 0x6e656474615bb4b7 from memory into f6
fmax.h f10, f4, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
li x22, 0x9c5e34408f7f3a70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
li x3, 0x228bc73b9155b8b2 # load x3 with value 0x228bc73b9155b8b2
sw x3, 0(x2) # store 0x228bc73b9155b8b2 in memory
flh f20, 0(x2) # load 0x228bc73b9155b8b2 from memory into f20
fmax.h f22, f7, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
li x21, 0x49ff263c755247b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
li x3, 0x41e66427c5053d32 # load x3 with value 0x41e66427c5053d32
sw x3, 0(x2) # store 0x41e66427c5053d32 in memory
flh f19, 0(x2) # load 0x41e66427c5053d32 from memory into f19
fmax.h f21, f11, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
li x21, 0x4eb2f6f5b6be4cbc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f27, 0(x2) # load 0x00007e00 from memory into f27
li x3, 0xa5f275aff959b7e6 # load x3 with value 0xa5f275aff959b7e6
sw x3, 0(x2) # store 0xa5f275aff959b7e6 in memory
flh f4, 0(x2) # load 0xa5f275aff959b7e6 from memory into f4
fmax.h f21, f27, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
li x9, 0x885e840ecc6debe7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
li x3, 0xdfebbec2bd66e32e # load x3 with value 0xdfebbec2bd66e32e
sw x3, 0(x2) # store 0xdfebbec2bd66e32e in memory
flh f17, 0(x2) # load 0xdfebbec2bd66e32e from memory into f17
fmax.h f9, f8, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
li x27, 0xbfc8258e42db9e75 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
li x3, 0x70b7952f63e129b0 # load x3 with value 0x70b7952f63e129b0
sw x3, 0(x2) # store 0x70b7952f63e129b0 in memory
flh f15, 0(x2) # load 0x70b7952f63e129b0 from memory into f15
fmax.h f27, f31, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
li x15, 0x9a942e2b11c30716 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f25, 0(x2) # load 0x00007dff from memory into f25
li x3, 0x3b60c8f5a1139d50 # load x3 with value 0x3b60c8f5a1139d50
sw x3, 0(x2) # store 0x3b60c8f5a1139d50 in memory
flh f29, 0(x2) # load 0x3b60c8f5a1139d50 from memory into f29
fmax.h f15, f25, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
li x18, 0xeb20a3720e6d69c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f5, 0(x2) # load 0x000058b4 from memory into f5
li x3, 0xfb21949017805187 # load x3 with value 0xfb21949017805187
sw x3, 0(x2) # store 0xfb21949017805187 in memory
flh f2, 0(x2) # load 0xfb21949017805187 from memory into f2
fmax.h f18, f5, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
li x22, 0x45a168130fb4c248 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
li x3, 0xee27ea7524765d4a # load x3 with value 0xee27ea7524765d4a
sw x3, 0(x2) # store 0xee27ea7524765d4a in memory
flh f10, 0(x2) # load 0xee27ea7524765d4a from memory into f10
fmax.h f22, f30, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x4, 0xde48ed4f63c4fe3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1188b836b3f4ad25 # load x3 with value 0x1188b836b3f4ad25
sw x3, 0(x2) # store 0x1188b836b3f4ad25 in memory
flh f31, 0(x2) # load 0x1188b836b3f4ad25 from memory into f31
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f11, 0(x2) # load 0x00000000 from memory into f11
fmax.h f4, f31, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000)
li x25, 0x55fa180029282839 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1545d1c6d34ebeae # load x3 with value 0x1545d1c6d34ebeae
sw x3, 0(x2) # store 0x1545d1c6d34ebeae in memory
flh f8, 0(x2) # load 0x1545d1c6d34ebeae from memory into f8
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f24, 0(x2) # load 0x00008000 from memory into f24
fmax.h f25, f8, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3c00)
li x25, 0x23b19b1b9a84d434 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xde38efd93f4b4a80 # load x3 with value 0xde38efd93f4b4a80
sw x3, 0(x2) # store 0xde38efd93f4b4a80 in memory
flh f24, 0(x2) # load 0xde38efd93f4b4a80 from memory into f24
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
fmax.h f25, f24, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbc00)
li x5, 0xd4da4b42966df07b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcb5416cf48991c92 # load x3 with value 0xcb5416cf48991c92
sw x3, 0(x2) # store 0xcb5416cf48991c92 in memory
flh f17, 0(x2) # load 0xcb5416cf48991c92 from memory into f17
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f3, 0(x2) # load 0x0000bc00 from memory into f3
fmax.h f5, f17, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3e00)
li x18, 0x08ee6fec6a62b397 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x41bbecd7ca4ca848 # load x3 with value 0x41bbecd7ca4ca848
sw x3, 0(x2) # store 0x41bbecd7ca4ca848 in memory
flh f16, 0(x2) # load 0x41bbecd7ca4ca848 from memory into f16
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f26, 0(x2) # load 0x00003e00 from memory into f26
fmax.h f18, f16, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbe00)
li x3, 0xe0a0d80f2e401136 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf0de002c7a1fff78 # load x3 with value 0xf0de002c7a1fff78
sw x3, 0(x2) # store 0xf0de002c7a1fff78 in memory
flh f13, 0(x2) # load 0xf0de002c7a1fff78 from memory into f13
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f29, 0(x2) # load 0x0000be00 from memory into f29
fmax.h f3, f13, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000)
li x13, 0x5bb3afa79b5dd386 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1e726e5497f2a09c # load x3 with value 0x1e726e5497f2a09c
sw x3, 0(x2) # store 0x1e726e5497f2a09c in memory
flh f23, 0(x2) # load 0x1e726e5497f2a09c from memory into f23
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
fmax.h f13, f23, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000)
li x1, 0x8c54531de648aff1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6322205f8eec95b6 # load x3 with value 0x6322205f8eec95b6
sw x3, 0(x2) # store 0x6322205f8eec95b6 in memory
flh f22, 0(x2) # load 0x6322205f8eec95b6 from memory into f22
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
fmax.h f1, f22, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400)
li x19, 0x92697b8eafbacf04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x370fa1fca454dd8f # load x3 with value 0x370fa1fca454dd8f
sw x3, 0(x2) # store 0x370fa1fca454dd8f in memory
flh f13, 0(x2) # load 0x370fa1fca454dd8f from memory into f13
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f10, 0(x2) # load 0x00000400 from memory into f10
fmax.h f19, f13, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8400)
li x29, 0xc605bfb8b006396f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2bc9ce25cb83aac5 # load x3 with value 0x2bc9ce25cb83aac5
sw x3, 0(x2) # store 0x2bc9ce25cb83aac5 in memory
flh f6, 0(x2) # load 0x2bc9ce25cb83aac5 from memory into f6
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f5, 0(x2) # load 0x00008400 from memory into f5
fmax.h f29, f6, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7bff)
li x28, 0xa103e4e0235bfc13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x38ddca85d3142566 # load x3 with value 0x38ddca85d3142566
sw x3, 0(x2) # store 0x38ddca85d3142566 in memory
flh f5, 0(x2) # load 0x38ddca85d3142566 from memory into f5
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
fmax.h f28, f5, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfbff)
li x5, 0x1ae9fa353310c8c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3e5293520e68a327 # load x3 with value 0x3e5293520e68a327
sw x3, 0(x2) # store 0x3e5293520e68a327 in memory
flh f15, 0(x2) # load 0x3e5293520e68a327 from memory into f15
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
fmax.h f5, f15, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff)
li x17, 0x508d6348266c78b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9cbed48a2239ef2c # load x3 with value 0x9cbed48a2239ef2c
sw x3, 0(x2) # store 0x9cbed48a2239ef2c in memory
flh f22, 0(x2) # load 0x9cbed48a2239ef2c from memory into f22
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f10, 0(x2) # load 0x000003ff from memory into f10
fmax.h f17, f22, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x83ff)
li x21, 0x0fb86b220301b80f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x35137d70c924c213 # load x3 with value 0x35137d70c924c213
sw x3, 0(x2) # store 0x35137d70c924c213 in memory
flh f28, 0(x2) # load 0x35137d70c924c213 from memory into f28
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
fmax.h f21, f28, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x200)
li x24, 0x0ed50ac4fbdd9069 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x858ef2b96ed984d6 # load x3 with value 0x858ef2b96ed984d6
sw x3, 0(x2) # store 0x858ef2b96ed984d6 in memory
flh f27, 0(x2) # load 0x858ef2b96ed984d6 from memory into f27
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
fmax.h f24, f27, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8200)
li x16, 0x69024395cefa1be6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x335d37ef517cc29f # load x3 with value 0x335d37ef517cc29f
sw x3, 0(x2) # store 0x335d37ef517cc29f in memory
flh f1, 0(x2) # load 0x335d37ef517cc29f from memory into f1
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f18, 0(x2) # load 0x00008200 from memory into f18
fmax.h f16, f1, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x14, 0x6b160cc5328e77ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcd11c64743440c73 # load x3 with value 0xcd11c64743440c73
sw x3, 0(x2) # store 0xcd11c64743440c73 in memory
flh f20, 0(x2) # load 0xcd11c64743440c73 from memory into f20
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f30, 0(x2) # load 0x00000001 from memory into f30
fmax.h f14, f20, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8001)
li x11, 0x976d5957152a3150 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x17c7a7bb968b50b1 # load x3 with value 0x17c7a7bb968b50b1
sw x3, 0(x2) # store 0x17c7a7bb968b50b1 in memory
flh f17, 0(x2) # load 0x17c7a7bb968b50b1 from memory into f17
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f22, 0(x2) # load 0x00008001 from memory into f22
fmax.h f11, f17, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c00)
li x30, 0xbaf4dd5fbcbfb40c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe8cdaef7cbf73d61 # load x3 with value 0xe8cdaef7cbf73d61
sw x3, 0(x2) # store 0xe8cdaef7cbf73d61 in memory
flh f10, 0(x2) # load 0xe8cdaef7cbf73d61 from memory into f10
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f23, 0(x2) # load 0x00007c00 from memory into f23
fmax.h f30, f10, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc00)
li x9, 0x39744e885c865fea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9e596ef3a34ede80 # load x3 with value 0x9e596ef3a34ede80
sw x3, 0(x2) # store 0x9e596ef3a34ede80 in memory
flh f5, 0(x2) # load 0x9e596ef3a34ede80 from memory into f5
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f20, 0(x2) # load 0x0000fc00 from memory into f20
fmax.h f9, f5, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e00)
li x11, 0x9dbad1f6fec12f5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbdf868c11d537903 # load x3 with value 0xbdf868c11d537903
sw x3, 0(x2) # store 0xbdf868c11d537903 in memory
flh f6, 0(x2) # load 0xbdf868c11d537903 from memory into f6
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
fmax.h f11, f6, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff)
li x26, 0xbcf7af2a3a7911bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7d38163d5053ae98 # load x3 with value 0x7d38163d5053ae98
sw x3, 0(x2) # store 0x7d38163d5053ae98 in memory
flh f23, 0(x2) # load 0x7d38163d5053ae98 from memory into f23
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
fmax.h f26, f23, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c01)
li x11, 0x349a50e0675e678d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x586a345344116abf # load x3 with value 0x586a345344116abf
sw x3, 0(x2) # store 0x586a345344116abf in memory
flh f16, 0(x2) # load 0x586a345344116abf from memory into f16
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f24, 0(x2) # load 0x00007c01 from memory into f24
fmax.h f11, f16, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7dff)
li x1, 0x9cd5fc3e6659e171 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x35bbc374d4243a18 # load x3 with value 0x35bbc374d4243a18
sw x3, 0(x2) # store 0x35bbc374d4243a18 in memory
flh f18, 0(x2) # load 0x35bbc374d4243a18 from memory into f18
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f25, 0(x2) # load 0x00007dff from memory into f25
fmax.h f1, f18, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x58b4)
li x20, 0xef45547eabacc8c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb56e4074b292c3c0 # load x3 with value 0xb56e4074b292c3c0
sw x3, 0(x2) # store 0xb56e4074b292c3c0 in memory
flh f24, 0(x2) # load 0xb56e4074b292c3c0 from memory into f24
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f4, 0(x2) # load 0x000058b4 from memory into f4
fmax.h f20, f24, f4 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc93a)
li x27, 0x81bc1d584b00f69d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5640581ca6951e8a # load x3 with value 0x5640581ca6951e8a
sw x3, 0(x2) # store 0x5640581ca6951e8a in memory
flh f18, 0(x2) # load 0x5640581ca6951e8a from memory into f18
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f8, 0(x2) # load 0x0000c93a from memory into f8
fmax.h f27, f18, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
li x22, 0xddc5faaccb55d8a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f17, 0(x2) # load 0x00000000 from memory into f17
fmax.h f22, f10, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000)
li x10, 0xbb660094805fe54d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f11, 0(x2) # load 0x00000000 from memory into f11
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
fmax.h f10, f11, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3c00)
li x19, 0xdf59dfe0b6cc868b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f26, 0(x2) # load 0x00003c00 from memory into f26
fmax.h f19, f25, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbc00)
li x29, 0x1b0576721bb23a7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f4, 0(x2) # load 0x00000000 from memory into f4
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
fmax.h f29, f4, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3e00)
li x27, 0x9a82db5e22dbe0ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f2, 0(x2) # load 0x00003e00 from memory into f2
fmax.h f27, f25, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbe00)
li x6, 0x6a9fa7e4a30949f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f15, 0(x2) # load 0x00000000 from memory into f15
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f30, 0(x2) # load 0x0000be00 from memory into f30
fmax.h f6, f15, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x4000)
li x31, 0x5356eb386ed10b9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f13, 0(x2) # load 0x00004000 from memory into f13
fmax.h f31, f25, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc000)
li x23, 0x67f67044d27d20c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f3, 0(x2) # load 0x00000000 from memory into f3
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
fmax.h f23, f3, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x400)
li x20, 0x6cbf01a9f8bfe1b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f3, 0(x2) # load 0x00000400 from memory into f3
fmax.h f20, f12, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8400)
li x3, 0x14e6f7e9979fe561 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
fmax.h f3, f29, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7bff)
li x24, 0x10fdb18e2cae76ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f17, 0(x2) # load 0x00000000 from memory into f17
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f4, 0(x2) # load 0x00007bff from memory into f4
fmax.h f24, f17, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfbff)
li x3, 0x00913595fe273efd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f4, 0(x2) # load 0x00000000 from memory into f4
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
fmax.h f3, f4, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3ff)
li x30, 0xd99fb0cc0a5967ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f11, 0(x2) # load 0x00000000 from memory into f11
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f20, 0(x2) # load 0x000003ff from memory into f20
fmax.h f30, f11, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x83ff)
li x25, 0xbc9f58f84bff044a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f5, 0(x2) # load 0x00000000 from memory into f5
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f31, 0(x2) # load 0x000083ff from memory into f31
fmax.h f25, f5, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x200)
li x20, 0x52248123d2e2d1f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f29, 0(x2) # load 0x00000200 from memory into f29
fmax.h f20, f10, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8200)
li x20, 0x2e134cb7dae6405c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f26, 0(x2) # load 0x00008200 from memory into f26
fmax.h f20, f10, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
li x3, 0xa79af9179cab49c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f15, 0(x2) # load 0x00000000 from memory into f15
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
fmax.h f3, f15, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8001)
li x1, 0xd15490cf05c0dd3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f3, 0(x2) # load 0x00008001 from memory into f3
fmax.h f1, f2, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7c00)
li x19, 0xd28fde45573c7b5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f9, 0(x2) # load 0x00000000 from memory into f9
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
fmax.h f19, f9, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfc00)
li x24, 0x1ff9d8732212a01f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
fmax.h f24, f31, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7e00)
li x30, 0xa303e249b5dc1606 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f22, 0(x2) # load 0x00007e00 from memory into f22
fmax.h f30, f12, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fff)
li x9, 0x320d0fe27098123e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f5, 0(x2) # load 0x00007fff from memory into f5
fmax.h f9, f29, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7c01)
li x14, 0x726576a30d35d983 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f20, 0(x2) # load 0x00007c01 from memory into f20
fmax.h f14, f31, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7dff)
li x22, 0xfac6f6431086dd0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f9, 0(x2) # load 0x00007dff from memory into f9
fmax.h f22, f14, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x58b4)
li x24, 0x31dcbf6a210a2fe1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
fmax.h f24, f10, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc93a)
li x16, 0x79d1c2b048495b68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f20, 0(x2) # load 0x00000000 from memory into f20
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f13, 0(x2) # load 0x0000c93a from memory into f13
fmax.h f16, f20, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x0)
li x5, 0x1c1ea463ee6d13dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f11, 0(x2) # load 0x00000000 from memory into f11
fmax.h f5, f31, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8000)
li x18, 0x0b6afc54318abcf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f30, 0(x2) # load 0x00008000 from memory into f30
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f8, 0(x2) # load 0x00008000 from memory into f8
fmax.h f18, f30, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3c00)
li x5, 0x21f67109ba38dae0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f20, 0(x2) # load 0x00008000 from memory into f20
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
fmax.h f5, f20, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xbc00)
li x15, 0xab68985458c9060a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f30, 0(x2) # load 0x00008000 from memory into f30
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
fmax.h f15, f30, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3e00)
li x20, 0x9c0e2625558c5ace # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
fmax.h f20, f3, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xbe00)
li x31, 0x4fa95063ad495582 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
fmax.h f31, f7, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x4000)
li x31, 0x2902568ad2e22895 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f17, 0(x2) # load 0x00004000 from memory into f17
fmax.h f31, f26, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xc000)
li x2, 0xdc3a456923e43afc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f31, 0(x2) # load 0x0000c000 from memory into f31
fmax.h f2, f10, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x400)
li x24, 0xd69e0157c8b53df6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f9, 0(x2) # load 0x00008000 from memory into f9
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
fmax.h f24, f9, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8400)
li x3, 0xb813b7c261fefd9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f4, 0(x2) # load 0x00008000 from memory into f4
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f12, 0(x2) # load 0x00008400 from memory into f12
fmax.h f3, f4, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7bff)
li x10, 0xa6e55b2f1661adf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
fmax.h f10, f13, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfbff)
li x3, 0xa9d550a24ff1f4f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f9, 0(x2) # load 0x00008000 from memory into f9
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f25, 0(x2) # load 0x0000fbff from memory into f25
fmax.h f3, f9, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3ff)
li x31, 0xd08bf79e8976e197 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f18, 0(x2) # load 0x00008000 from memory into f18
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f22, 0(x2) # load 0x000003ff from memory into f22
fmax.h f31, f18, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x83ff)
li x17, 0x2dab16f6f5d56ea1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f5, 0(x2) # load 0x00008000 from memory into f5
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f30, 0(x2) # load 0x000083ff from memory into f30
fmax.h f17, f5, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x200)
li x6, 0xf30c18aa81dd925e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f1, 0(x2) # load 0x00000200 from memory into f1
fmax.h f6, f11, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8200)
li x3, 0x45dd03f491ca7e61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f16, 0(x2) # load 0x00008000 from memory into f16
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f28, 0(x2) # load 0x00008200 from memory into f28
fmax.h f3, f16, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x1)
li x21, 0xfda322af362bbbae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f4, 0(x2) # load 0x00008000 from memory into f4
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
fmax.h f21, f4, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8001)
li x23, 0x42216cee8a6460c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f9, 0(x2) # load 0x00008001 from memory into f9
fmax.h f23, f11, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7c00)
li x1, 0xd9cbc190e8d66bca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f28, 0(x2) # load 0x00008000 from memory into f28
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
fmax.h f1, f28, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfc00)
li x25, 0x60aebec073326592 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f5, 0(x2) # load 0x00008000 from memory into f5
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f4, 0(x2) # load 0x0000fc00 from memory into f4
fmax.h f25, f5, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7e00)
li x13, 0xbb33c077545a9244 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f22, 0(x2) # load 0x00008000 from memory into f22
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
fmax.h f13, f22, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7fff)
li x24, 0x0f4a0dbc8573021b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
fmax.h f24, f26, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7c01)
li x10, 0x398afaa7f6d5448e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f2, 0(x2) # load 0x00007c01 from memory into f2
fmax.h f10, f13, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7dff)
li x7, 0xc3ed6b7952e1e668 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
fmax.h f7, f11, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x58b4)
li x12, 0x10d021765a09b68e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f15, 0(x2) # load 0x000058b4 from memory into f15
fmax.h f12, f13, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xc93a)
li x11, 0x0a8213517efa0312 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f15, 0(x2) # load 0x00008000 from memory into f15
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
fmax.h f11, f15, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x0)
li x10, 0x29022e86a24f6b61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f6, 0(x2) # load 0x00003c00 from memory into f6
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f24, 0(x2) # load 0x00000000 from memory into f24
fmax.h f10, f6, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8000)
li x13, 0x228d46fdbc672ae8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f11, 0(x2) # load 0x00003c00 from memory into f11
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f19, 0(x2) # load 0x00008000 from memory into f19
fmax.h f13, f11, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3c00)
li x8, 0x640848edbfe58a5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f29, 0(x2) # load 0x00003c00 from memory into f29
fmax.h f8, f30, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xbc00)
li x6, 0xbf7e7bf40037a58e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f10, 0(x2) # load 0x00003c00 from memory into f10
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
fmax.h f6, f10, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3e00)
li x24, 0x47e8851ed0bb0f1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f21, 0(x2) # load 0x00003e00 from memory into f21
fmax.h f24, f17, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xbe00)
li x2, 0x87266b186c2a528e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f8, 0(x2) # load 0x00003c00 from memory into f8
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
fmax.h f2, f8, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x4000)
li x10, 0xc8f808ab50459f13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
fmax.h f10, f24, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xc000)
li x18, 0x5e9ecf62b9415a46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f2, 0(x2) # load 0x00003c00 from memory into f2
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f28, 0(x2) # load 0x0000c000 from memory into f28
fmax.h f18, f2, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x400)
li x20, 0x7d023523dc44c3d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f10, 0(x2) # load 0x00003c00 from memory into f10
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
fmax.h f20, f10, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8400)
li x30, 0x1b18fc05cc979a22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f23, 0(x2) # load 0x00008400 from memory into f23
fmax.h f30, f24, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7bff)
li x8, 0x67bb97f92fb8975c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f29, 0(x2) # load 0x00003c00 from memory into f29
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f25, 0(x2) # load 0x00007bff from memory into f25
fmax.h f8, f29, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfbff)
li x4, 0xe6178ec5a9da6292 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f15, 0(x2) # load 0x0000fbff from memory into f15
fmax.h f4, f21, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3ff)
li x27, 0x272ae7f466fb9db9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f11, 0(x2) # load 0x00003c00 from memory into f11
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f4, 0(x2) # load 0x000003ff from memory into f4
fmax.h f27, f11, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x83ff)
li x15, 0xd53ef29a4dc9fc0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
fmax.h f15, f24, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x200)
li x2, 0x594a99d42f842036 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
fmax.h f2, f17, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8200)
li x17, 0xc54e32326ed20a40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f13, 0(x2) # load 0x00008200 from memory into f13
fmax.h f17, f15, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x1)
li x8, 0x303934a8adc6d558 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f3, 0(x2) # load 0x00000001 from memory into f3
fmax.h f8, f24, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8001)
li x7, 0x7e2170b66b611f6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f2, 0(x2) # load 0x00003c00 from memory into f2
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
fmax.h f7, f2, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7c00)
li x10, 0x2cbed6adb77fc21c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f25, 0(x2) # load 0x00003c00 from memory into f25
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f30, 0(x2) # load 0x00007c00 from memory into f30
fmax.h f10, f25, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfc00)
li x12, 0x18e68586f86af0e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
fmax.h f12, f15, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7e00)
li x2, 0xf5cc6a93b1c0943f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f18, 0(x2) # load 0x00007e00 from memory into f18
fmax.h f2, f28, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7fff)
li x6, 0x00c458ef3f268824 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f1, 0(x2) # load 0x00007fff from memory into f1
fmax.h f6, f28, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7c01)
li x25, 0x9977703e46345d2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f18, 0(x2) # load 0x00003c00 from memory into f18
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
fmax.h f25, f18, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7dff)
li x7, 0x8e6691f6f81a5fd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f11, 0(x2) # load 0x00003c00 from memory into f11
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f28, 0(x2) # load 0x00007dff from memory into f28
fmax.h f7, f11, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x58b4)
li x13, 0x97fdf6fe65931fbc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f5, 0(x2) # load 0x000058b4 from memory into f5
fmax.h f13, f21, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xc93a)
li x10, 0x26ad66b5d1ae45ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f13, 0(x2) # load 0x00003c00 from memory into f13
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f14, 0(x2) # load 0x0000c93a from memory into f14
fmax.h f10, f13, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x0)
li x16, 0x49d24dcd1ac87fbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f27, 0(x2) # load 0x0000bc00 from memory into f27
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f4, 0(x2) # load 0x00000000 from memory into f4
fmax.h f16, f27, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8000)
li x25, 0x7d8fc7737b9d87a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f4, 0(x2) # load 0x0000bc00 from memory into f4
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f19, 0(x2) # load 0x00008000 from memory into f19
fmax.h f25, f4, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3c00)
li x28, 0x6801f7797273feb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f3, 0(x2) # load 0x0000bc00 from memory into f3
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f8, 0(x2) # load 0x00003c00 from memory into f8
fmax.h f28, f3, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xbc00)
li x17, 0x51e7fddf3f66040e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
fmax.h f17, f5, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3e00)
li x12, 0xbfc8658619f56630 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f25, 0(x2) # load 0x0000bc00 from memory into f25
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f28, 0(x2) # load 0x00003e00 from memory into f28
fmax.h f12, f25, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xbe00)
li x16, 0x14d4225847fef2d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f20, 0(x2) # load 0x0000bc00 from memory into f20
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
fmax.h f16, f20, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x4000)
li x8, 0x6c64b7d7b782de24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
fmax.h f8, f24, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xc000)
li x5, 0x8306da2977fa5693 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f22, 0(x2) # load 0x0000bc00 from memory into f22
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f15, 0(x2) # load 0x0000c000 from memory into f15
fmax.h f5, f22, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x400)
li x26, 0xf8584e6a97d7de26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
fmax.h f26, f16, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8400)
li x14, 0x316f6665c4e4347e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f9, 0(x2) # load 0x0000bc00 from memory into f9
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f10, 0(x2) # load 0x00008400 from memory into f10
fmax.h f14, f9, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7bff)
li x31, 0x7fcb374c00260aab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
fmax.h f31, f16, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfbff)
li x5, 0x4863257f111f3fb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f3, 0(x2) # load 0x0000fbff from memory into f3
fmax.h f5, f28, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3ff)
li x25, 0xfb89c26f8dc128c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f26, 0(x2) # load 0x000003ff from memory into f26
fmax.h f25, f18, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x83ff)
li x20, 0x7cf794806a272a3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
fmax.h f20, f21, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x200)
li x12, 0xb9342bd57c2b85ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f23, 0(x2) # load 0x0000bc00 from memory into f23
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f2, 0(x2) # load 0x00000200 from memory into f2
fmax.h f12, f23, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8200)
li x18, 0x78489cfc651aa1aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f4, 0(x2) # load 0x0000bc00 from memory into f4
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f30, 0(x2) # load 0x00008200 from memory into f30
fmax.h f18, f4, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x1)
li x26, 0x5cc459a413099a18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f13, 0(x2) # load 0x0000bc00 from memory into f13
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f10, 0(x2) # load 0x00000001 from memory into f10
fmax.h f26, f13, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8001)
li x15, 0xedb2eff1560651d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f19, 0(x2) # load 0x0000bc00 from memory into f19
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f30, 0(x2) # load 0x00008001 from memory into f30
fmax.h f15, f19, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7c00)
li x29, 0x16dd976e04d62d79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f17, 0(x2) # load 0x0000bc00 from memory into f17
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f20, 0(x2) # load 0x00007c00 from memory into f20
fmax.h f29, f17, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfc00)
li x7, 0x3e1df1dcb9ef1f7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f9, 0(x2) # load 0x0000fc00 from memory into f9
fmax.h f7, f14, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7e00)
li x16, 0x05eaa1bee3faccd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f4, 0(x2) # load 0x00007e00 from memory into f4
fmax.h f16, f18, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7fff)
li x18, 0xd00a38bb68ac16c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f26, 0(x2) # load 0x00007fff from memory into f26
fmax.h f18, f5, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7c01)
li x9, 0xab8d64aa12bf340c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f23, 0(x2) # load 0x00007c01 from memory into f23
fmax.h f9, f16, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7dff)
li x18, 0x5d935bd5ee743139 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f25, 0(x2) # load 0x00007dff from memory into f25
fmax.h f18, f28, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x58b4)
li x9, 0x374194c4ea308eb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f23, 0(x2) # load 0x0000bc00 from memory into f23
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
fmax.h f9, f23, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xc93a)
li x30, 0x0edf063d6b5b239f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f25, 0(x2) # load 0x0000bc00 from memory into f25
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f19, 0(x2) # load 0x0000c93a from memory into f19
fmax.h f30, f25, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x0)
li x28, 0x99bdf786cdc6dc66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f8, 0(x2) # load 0x00003e00 from memory into f8
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f13, 0(x2) # load 0x00000000 from memory into f13
fmax.h f28, f8, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8000)
li x22, 0xd4283e2fa1d3429c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f29, 0(x2) # load 0x00008000 from memory into f29
fmax.h f22, f12, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3c00)
li x29, 0x2135650be81c844e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f1, 0(x2) # load 0x00003c00 from memory into f1
fmax.h f29, f17, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xbc00)
li x17, 0x5328c18d21c82a50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f30, 0(x2) # load 0x00003e00 from memory into f30
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f2, 0(x2) # load 0x0000bc00 from memory into f2
fmax.h f17, f30, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3e00)
li x26, 0x788cc49aff9fbff0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f24, 0(x2) # load 0x00003e00 from memory into f24
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f14, 0(x2) # load 0x00003e00 from memory into f14
fmax.h f26, f24, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xbe00)
li x26, 0x2f982ea9279d211d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f24, 0(x2) # load 0x00003e00 from memory into f24
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f21, 0(x2) # load 0x0000be00 from memory into f21
fmax.h f26, f24, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x4000)
li x24, 0x3cae5b596773e568 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f20, 0(x2) # load 0x00003e00 from memory into f20
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
fmax.h f24, f20, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xc000)
li x31, 0x971b1385ecf742ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
fmax.h f31, f7, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x400)
li x2, 0x074c01a08892a1d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f11, 0(x2) # load 0x00003e00 from memory into f11
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
fmax.h f2, f11, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8400)
li x26, 0x2a3bb6aaf1c472f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f16, 0(x2) # load 0x00003e00 from memory into f16
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f14, 0(x2) # load 0x00008400 from memory into f14
fmax.h f26, f16, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7bff)
li x15, 0x2da69e4470c9ae6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f27, 0(x2) # load 0x00007bff from memory into f27
fmax.h f15, f17, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfbff)
li x12, 0x0443950210a268d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f9, 0(x2) # load 0x00003e00 from memory into f9
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f13, 0(x2) # load 0x0000fbff from memory into f13
fmax.h f12, f9, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3ff)
li x3, 0xf809f95e62901d5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f4, 0(x2) # load 0x00003e00 from memory into f4
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
fmax.h f3, f4, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x83ff)
li x31, 0x035fb54208be33a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f24, 0(x2) # load 0x00003e00 from memory into f24
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f3, 0(x2) # load 0x000083ff from memory into f3
fmax.h f31, f24, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x200)
li x18, 0xd44dd64ee3247e67 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f19, 0(x2) # load 0x00003e00 from memory into f19
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f30, 0(x2) # load 0x00000200 from memory into f30
fmax.h f18, f19, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8200)
li x18, 0x33360e5d648d98e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f14, 0(x2) # load 0x00003e00 from memory into f14
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
fmax.h f18, f14, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x1)
li x5, 0x06dfb1bc32ec3945 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
fmax.h f5, f13, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8001)
li x11, 0x4080e2dd688ec988 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f3, 0(x2) # load 0x00003e00 from memory into f3
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f13, 0(x2) # load 0x00008001 from memory into f13
fmax.h f11, f3, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7c00)
li x20, 0xbd727851bc5a5d90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
fmax.h f20, f7, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfc00)
li x1, 0x3fd115f5d08d21a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f30, 0(x2) # load 0x00003e00 from memory into f30
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f16, 0(x2) # load 0x0000fc00 from memory into f16
fmax.h f1, f30, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7e00)
li x23, 0x333155d8f04d3ecb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f30, 0(x2) # load 0x00003e00 from memory into f30
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
fmax.h f23, f30, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7fff)
li x3, 0xab7d8802e6fa2b25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f31, 0(x2) # load 0x00007fff from memory into f31
fmax.h f3, f17, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7c01)
li x6, 0x6f615cbab7c91525 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f5, 0(x2) # load 0x00007c01 from memory into f5
fmax.h f6, f17, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7dff)
li x6, 0x2481eb3059f58615 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f31, 0(x2) # load 0x00003e00 from memory into f31
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f29, 0(x2) # load 0x00007dff from memory into f29
fmax.h f6, f31, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x58b4)
li x22, 0xc6620ca8405dc229 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f1, 0(x2) # load 0x000058b4 from memory into f1
fmax.h f22, f29, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xc93a)
li x30, 0xe3a190d67d5a870a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f21, 0(x2) # load 0x00003e00 from memory into f21
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
fmax.h f30, f21, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x0)
li x23, 0x73bcfeb2ecaffb12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f30, 0(x2) # load 0x0000be00 from memory into f30
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
fmax.h f23, f30, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8000)
li x16, 0x3fca9c9cbedf62c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f5, 0(x2) # load 0x00008000 from memory into f5
fmax.h f16, f18, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3c00)
li x14, 0x778351d6de740317 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
fmax.h f14, f20, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xbc00)
li x31, 0x3223096d780b3c3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f25, 0(x2) # load 0x0000be00 from memory into f25
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f9, 0(x2) # load 0x0000bc00 from memory into f9
fmax.h f31, f25, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3e00)
li x26, 0xc49cdb0295d93e70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f25, 0(x2) # load 0x00003e00 from memory into f25
fmax.h f26, f5, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xbe00)
li x15, 0xe9ca227a608db8d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f9, 0(x2) # load 0x0000be00 from memory into f9
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
fmax.h f15, f9, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x4000)
li x3, 0x1a926a453c546147 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f24, 0(x2) # load 0x0000be00 from memory into f24
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
fmax.h f3, f24, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xc000)
li x13, 0x2b0b6b1969a7ba08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f30, 0(x2) # load 0x0000be00 from memory into f30
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f10, 0(x2) # load 0x0000c000 from memory into f10
fmax.h f13, f30, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x400)
li x12, 0x6d6b2101d73b177f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f3, 0(x2) # load 0x0000be00 from memory into f3
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
fmax.h f12, f3, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8400)
li x5, 0x90c4666ba0b40cdd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f30, 0(x2) # load 0x00008400 from memory into f30
fmax.h f5, f15, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7bff)
li x23, 0xa7a6dd48c6f488af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f4, 0(x2) # load 0x0000be00 from memory into f4
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f25, 0(x2) # load 0x00007bff from memory into f25
fmax.h f23, f4, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfbff)
li x7, 0x6f7c367e9960486b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
fmax.h f7, f23, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3ff)
li x31, 0x698b0f58fdf29562 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f16, 0(x2) # load 0x000003ff from memory into f16
fmax.h f31, f5, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x83ff)
li x2, 0xa841aa6ca6361d1c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f29, 0(x2) # load 0x0000be00 from memory into f29
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f25, 0(x2) # load 0x000083ff from memory into f25
fmax.h f2, f29, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x200)
li x6, 0x23ef53591dcc0fa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f30, 0(x2) # load 0x0000be00 from memory into f30
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f23, 0(x2) # load 0x00000200 from memory into f23
fmax.h f6, f30, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8200)
li x21, 0x355aef9479bf50b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f10, 0(x2) # load 0x0000be00 from memory into f10
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f19, 0(x2) # load 0x00008200 from memory into f19
fmax.h f21, f10, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x1)
li x21, 0xce00bb8562abea34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f4, 0(x2) # load 0x0000be00 from memory into f4
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
fmax.h f21, f4, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8001)
li x16, 0x37ac2911e1d3e28d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f19, 0(x2) # load 0x0000be00 from memory into f19
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f21, 0(x2) # load 0x00008001 from memory into f21
fmax.h f16, f19, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7c00)
li x22, 0x70ea99f4593b50d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f7, 0(x2) # load 0x0000be00 from memory into f7
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f21, 0(x2) # load 0x00007c00 from memory into f21
fmax.h f22, f7, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfc00)
li x16, 0xd79fe3732e677422 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f22, 0(x2) # load 0x0000be00 from memory into f22
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f7, 0(x2) # load 0x0000fc00 from memory into f7
fmax.h f16, f22, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7e00)
li x19, 0xf29f1d490505fb7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f26, 0(x2) # load 0x00007e00 from memory into f26
fmax.h f19, f27, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7fff)
li x28, 0x7e5a9f3de55708f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f21, 0(x2) # load 0x00007fff from memory into f21
fmax.h f28, f8, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7c01)
li x26, 0x64040c85f80fc370 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f4, 0(x2) # load 0x0000be00 from memory into f4
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f8, 0(x2) # load 0x00007c01 from memory into f8
fmax.h f26, f4, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7dff)
li x12, 0x56b84e62f804e6bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
fmax.h f12, f31, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x58b4)
li x25, 0xee702da74f764e43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
fmax.h f25, f20, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xc93a)
li x10, 0x815eabb88b64592e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f11, 0(x2) # load 0x0000be00 from memory into f11
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
fmax.h f10, f11, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x0)
li x28, 0x90243ea5c22e9cbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f16, 0(x2) # load 0x00000000 from memory into f16
fmax.h f28, f27, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8000)
li x26, 0xe8a2144e38e0f91a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f24, 0(x2) # load 0x00004000 from memory into f24
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
fmax.h f26, f24, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3c00)
li x11, 0xef603e5de988fb61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f13, 0(x2) # load 0x00004000 from memory into f13
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
fmax.h f11, f13, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xbc00)
li x15, 0x17797d8a2d4ac665 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
fmax.h f15, f28, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3e00)
li x28, 0x7f36c0976aa88ca6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f8, 0(x2) # load 0x00004000 from memory into f8
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f14, 0(x2) # load 0x00003e00 from memory into f14
fmax.h f28, f8, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xbe00)
li x31, 0x7901823a80047d8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
fmax.h f31, f2, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x4000)
li x13, 0x3a81768fff4934bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f12, 0(x2) # load 0x00004000 from memory into f12
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
fmax.h f13, f12, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xc000)
li x4, 0x0f9041873c97971e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f3, 0(x2) # load 0x00004000 from memory into f3
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f8, 0(x2) # load 0x0000c000 from memory into f8
fmax.h f4, f3, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x400)
li x11, 0x390df73348bb6bf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f5, 0(x2) # load 0x00000400 from memory into f5
fmax.h f11, f23, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8400)
li x22, 0x1c71cdada35e2459 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f13, 0(x2) # load 0x00004000 from memory into f13
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
fmax.h f22, f13, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7bff)
li x13, 0xb0a3175ff0aa09f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f18, 0(x2) # load 0x00004000 from memory into f18
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
fmax.h f13, f18, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfbff)
li x20, 0xbc2693b02d200a6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f24, 0(x2) # load 0x0000fbff from memory into f24
fmax.h f20, f28, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3ff)
li x7, 0x24cdc6bf7b4e9b6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f13, 0(x2) # load 0x000003ff from memory into f13
fmax.h f7, f21, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x83ff)
li x28, 0x9427853d51ef4b48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f24, 0(x2) # load 0x00004000 from memory into f24
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f2, 0(x2) # load 0x000083ff from memory into f2
fmax.h f28, f24, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x200)
li x23, 0x492202517d0efe0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f17, 0(x2) # load 0x00004000 from memory into f17
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f4, 0(x2) # load 0x00000200 from memory into f4
fmax.h f23, f17, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8200)
li x3, 0xc87ac3ad8edf6114 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f15, 0(x2) # load 0x00004000 from memory into f15
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f29, 0(x2) # load 0x00008200 from memory into f29
fmax.h f3, f15, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x1)
li x16, 0x3e1c4f86dc89676a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f18, 0(x2) # load 0x00004000 from memory into f18
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f9, 0(x2) # load 0x00000001 from memory into f9
fmax.h f16, f18, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8001)
li x26, 0x625e5553a621e669 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f25, 0(x2) # load 0x00008001 from memory into f25
fmax.h f26, f2, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7c00)
li x3, 0x8bad634dc56ccd1c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f30, 0(x2) # load 0x00007c00 from memory into f30
fmax.h f3, f9, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfc00)
li x2, 0x7e1662dd6970a415 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f13, 0(x2) # load 0x00004000 from memory into f13
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f19, 0(x2) # load 0x0000fc00 from memory into f19
fmax.h f2, f13, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7e00)
li x27, 0xb0a32c6925fa812f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f20, 0(x2) # load 0x00007e00 from memory into f20
fmax.h f27, f6, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7fff)
li x26, 0x872b57495e5ef4e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f31, 0(x2) # load 0x00004000 from memory into f31
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f11, 0(x2) # load 0x00007fff from memory into f11
fmax.h f26, f31, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7c01)
li x16, 0xbf05045fea39a9df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
fmax.h f16, f25, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7dff)
li x25, 0x10d091a013e56b62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f15, 0(x2) # load 0x00007dff from memory into f15
fmax.h f25, f2, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x58b4)
li x3, 0xb6a96d969959452f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f16, 0(x2) # load 0x00004000 from memory into f16
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f6, 0(x2) # load 0x000058b4 from memory into f6
fmax.h f3, f16, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xc93a)
li x13, 0x5023d1707e6687a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f10, 0(x2) # load 0x00004000 from memory into f10
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f29, 0(x2) # load 0x0000c93a from memory into f29
fmax.h f13, f10, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x0)
li x7, 0x68ed6ddc48f5fee6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f22, 0(x2) # load 0x0000c000 from memory into f22
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f20, 0(x2) # load 0x00000000 from memory into f20
fmax.h f7, f22, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8000)
li x14, 0xfc2e59b7c445d407 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
fmax.h f14, f9, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3c00)
li x2, 0x38b7c5bf1c2066e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f14, 0(x2) # load 0x0000c000 from memory into f14
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
fmax.h f2, f14, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xbc00)
li x31, 0xb8e3822c92633a0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f20, 0(x2) # load 0x0000bc00 from memory into f20
fmax.h f31, f23, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3e00)
li x18, 0xb9e3ec1896bdeadd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f2, 0(x2) # load 0x00003e00 from memory into f2
fmax.h f18, f21, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xbe00)
li x7, 0x657028086e3db4f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f8, 0(x2) # load 0x0000c000 from memory into f8
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f9, 0(x2) # load 0x0000be00 from memory into f9
fmax.h f7, f8, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x4000)
li x5, 0x1ae50a9099637214 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f19, 0(x2) # load 0x0000c000 from memory into f19
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
fmax.h f5, f19, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xc000)
li x3, 0xa457ef2f725dcb42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f20, 0(x2) # load 0x0000c000 from memory into f20
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f15, 0(x2) # load 0x0000c000 from memory into f15
fmax.h f3, f20, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x400)
li x16, 0x569da8d9edc0e700 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f27, 0(x2) # load 0x0000c000 from memory into f27
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f22, 0(x2) # load 0x00000400 from memory into f22
fmax.h f16, f27, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8400)
li x21, 0x9ce8908c11e3ecab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f11, 0(x2) # load 0x0000c000 from memory into f11
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
fmax.h f21, f11, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7bff)
li x28, 0x9ff12314bb063927 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f11, 0(x2) # load 0x0000c000 from memory into f11
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f31, 0(x2) # load 0x00007bff from memory into f31
fmax.h f28, f11, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfbff)
li x20, 0xb11d5e1e38726469 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f15, 0(x2) # load 0x0000c000 from memory into f15
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
fmax.h f20, f15, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3ff)
li x23, 0x3ef679816eb45765 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f7, 0(x2) # load 0x0000c000 from memory into f7
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f1, 0(x2) # load 0x000003ff from memory into f1
fmax.h f23, f7, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x83ff)
li x30, 0xdca60c65b6b9a9ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f4, 0(x2) # load 0x0000c000 from memory into f4
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
fmax.h f30, f4, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x200)
li x15, 0x02e2fe0e25786976 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f11, 0(x2) # load 0x00000200 from memory into f11
fmax.h f15, f23, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8200)
li x24, 0x398a5300811e49e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f30, 0(x2) # load 0x0000c000 from memory into f30
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f21, 0(x2) # load 0x00008200 from memory into f21
fmax.h f24, f30, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x1)
li x29, 0x683bae43e50b1f99 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f15, 0(x2) # load 0x0000c000 from memory into f15
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
fmax.h f29, f15, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8001)
li x22, 0x0258fae5cfdb9e3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f14, 0(x2) # load 0x0000c000 from memory into f14
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
fmax.h f22, f14, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7c00)
li x23, 0xff83f0754ba6f125 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f15, 0(x2) # load 0x0000c000 from memory into f15
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f30, 0(x2) # load 0x00007c00 from memory into f30
fmax.h f23, f15, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfc00)
li x29, 0x9fd8aae410e77cdd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
fmax.h f29, f24, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7e00)
li x23, 0x1a97f4b6fa2d0ab9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f29, 0(x2) # load 0x0000c000 from memory into f29
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f18, 0(x2) # load 0x00007e00 from memory into f18
fmax.h f23, f29, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7fff)
li x4, 0xbcfa4f272bd0aca8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
fmax.h f4, f25, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7c01)
li x23, 0x0e3c64a4a2bb96f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f19, 0(x2) # load 0x0000c000 from memory into f19
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f22, 0(x2) # load 0x00007c01 from memory into f22
fmax.h f23, f19, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7dff)
li x8, 0x8f4b511a86ca78f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f27, 0(x2) # load 0x0000c000 from memory into f27
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
fmax.h f8, f27, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x58b4)
li x31, 0x79eab2712bc7a4e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f13, 0(x2) # load 0x0000c000 from memory into f13
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f20, 0(x2) # load 0x000058b4 from memory into f20
fmax.h f31, f13, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xc93a)
li x12, 0xb2a102bcc6ccef27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f10, 0(x2) # load 0x0000c000 from memory into f10
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f9, 0(x2) # load 0x0000c93a from memory into f9
fmax.h f12, f10, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x0)
li x30, 0xdedff9fcb64cb26e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f7, 0(x2) # load 0x00000000 from memory into f7
fmax.h f30, f18, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8000)
li x1, 0xf1f28456d17df619 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f25, 0(x2) # load 0x00000400 from memory into f25
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
fmax.h f1, f25, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3c00)
li x29, 0x5dc221c4247a8dee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f1, 0(x2) # load 0x00003c00 from memory into f1
fmax.h f29, f30, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xbc00)
li x18, 0xe6e7c53709e2ef64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f22, 0(x2) # load 0x00000400 from memory into f22
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
fmax.h f18, f22, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3e00)
li x10, 0x27c689a2e1d0aa9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f11, 0(x2) # load 0x00000400 from memory into f11
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
fmax.h f10, f11, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xbe00)
li x9, 0x90e38ab0b9bfed27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f28, 0(x2) # load 0x00000400 from memory into f28
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
fmax.h f9, f28, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x4000)
li x14, 0x1705c7115845e29b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f9, 0(x2) # load 0x00000400 from memory into f9
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f4, 0(x2) # load 0x00004000 from memory into f4
fmax.h f14, f9, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xc000)
li x16, 0x5e008c557702a72c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f19, 0(x2) # load 0x0000c000 from memory into f19
fmax.h f16, f29, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x400)
li x28, 0x13e717551330a126 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f27, 0(x2) # load 0x00000400 from memory into f27
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
fmax.h f28, f27, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8400)
li x23, 0xb97abd2678eb52a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f27, 0(x2) # load 0x00000400 from memory into f27
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
fmax.h f23, f27, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7bff)
li x23, 0x94c8b2c4dbfa2ec4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f27, 0(x2) # load 0x00000400 from memory into f27
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f9, 0(x2) # load 0x00007bff from memory into f9
fmax.h f23, f27, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfbff)
li x3, 0x03159ccac372bf5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f20, 0(x2) # load 0x0000fbff from memory into f20
fmax.h f3, f13, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3ff)
li x12, 0xfcc467152a254d4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f25, 0(x2) # load 0x000003ff from memory into f25
fmax.h f12, f7, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x83ff)
li x18, 0xddf45a0d8e945e6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
fmax.h f18, f7, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x200)
li x18, 0xb69f3b9d376c9bba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f9, 0(x2) # load 0x00000400 from memory into f9
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f2, 0(x2) # load 0x00000200 from memory into f2
fmax.h f18, f9, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8200)
li x22, 0x19cc0a7c5e33ac78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f11, 0(x2) # load 0x00000400 from memory into f11
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
fmax.h f22, f11, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x1)
li x29, 0x7911398fc3ef671c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
fmax.h f29, f8, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8001)
li x6, 0x4495433307a0f202 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f31, 0(x2) # load 0x00000400 from memory into f31
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
fmax.h f6, f31, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7c00)
li x19, 0x8b58f8272636b396 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f25, 0(x2) # load 0x00000400 from memory into f25
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f5, 0(x2) # load 0x00007c00 from memory into f5
fmax.h f19, f25, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfc00)
li x29, 0xc790f9ca78a9fdf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f17, 0(x2) # load 0x00000400 from memory into f17
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
fmax.h f29, f17, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7e00)
li x12, 0xa6b8eb52ae47e526 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f10, 0(x2) # load 0x00000400 from memory into f10
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
fmax.h f12, f10, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7fff)
li x14, 0xb1764e2cfad64684 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f16, 0(x2) # load 0x00007fff from memory into f16
fmax.h f14, f30, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7c01)
li x30, 0xed6bc478bc5c3d0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
fmax.h f30, f20, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7dff)
li x9, 0x09b5bbf04f60167f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f1, 0(x2) # load 0x00000400 from memory into f1
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
fmax.h f9, f1, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x58b4)
li x30, 0x40b74fbc00809bba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f2, 0(x2) # load 0x000058b4 from memory into f2
fmax.h f30, f7, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xc93a)
li x1, 0x760a48b056e26b10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f13, 0(x2) # load 0x0000c93a from memory into f13
fmax.h f1, f23, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x0)
li x7, 0x9e5ede6e3455c5b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f10, 0(x2) # load 0x00008400 from memory into f10
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
fmax.h f7, f10, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8000)
li x7, 0x013317e25082edc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f28, 0(x2) # load 0x00008400 from memory into f28
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
fmax.h f7, f28, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3c00)
li x6, 0x5b250f0f6a1f89a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f28, 0(x2) # load 0x00008400 from memory into f28
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
fmax.h f6, f28, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xbc00)
li x19, 0x4506efb47aca5854 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f23, 0(x2) # load 0x0000bc00 from memory into f23
fmax.h f19, f1, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3e00)
li x30, 0x14c7e97289667809 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f10, 0(x2) # load 0x00008400 from memory into f10
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
fmax.h f30, f10, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xbe00)
li x17, 0x5969a2b93360f9ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f12, 0(x2) # load 0x00008400 from memory into f12
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f19, 0(x2) # load 0x0000be00 from memory into f19
fmax.h f17, f12, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x4000)
li x26, 0xcfb9133007527fed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f30, 0(x2) # load 0x00008400 from memory into f30
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
fmax.h f26, f30, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xc000)
li x12, 0xd7951952ee74267f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
fmax.h f12, f6, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x400)
li x27, 0x2506b1a83ff1f83c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f14, 0(x2) # load 0x00008400 from memory into f14
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
fmax.h f27, f14, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8400)
li x21, 0x1060527abdf311db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f4, 0(x2) # load 0x00008400 from memory into f4
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
fmax.h f21, f4, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7bff)
li x5, 0x917ff3474a36de12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f31, 0(x2) # load 0x00008400 from memory into f31
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f27, 0(x2) # load 0x00007bff from memory into f27
fmax.h f5, f31, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfbff)
li x9, 0x0a6b2ced4c9953fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f20, 0(x2) # load 0x00008400 from memory into f20
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
fmax.h f9, f20, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3ff)
li x31, 0x14e5e93a203885b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f5, 0(x2) # load 0x00008400 from memory into f5
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f15, 0(x2) # load 0x000003ff from memory into f15
fmax.h f31, f5, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x83ff)
li x23, 0xb438ecaed9f30c60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f4, 0(x2) # load 0x00008400 from memory into f4
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
fmax.h f23, f4, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x200)
li x11, 0xf8455f47ac3595ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f2, 0(x2) # load 0x00008400 from memory into f2
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
fmax.h f11, f2, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8200)
li x12, 0x7b5ece73afab073f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f31, 0(x2) # load 0x00008400 from memory into f31
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f9, 0(x2) # load 0x00008200 from memory into f9
fmax.h f12, f31, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x1)
li x30, 0x5219560546a2e9b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f2, 0(x2) # load 0x00008400 from memory into f2
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f7, 0(x2) # load 0x00000001 from memory into f7
fmax.h f30, f2, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8001)
li x4, 0x18ddf6df528c8fef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f16, 0(x2) # load 0x00008001 from memory into f16
fmax.h f4, f7, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7c00)
li x13, 0xc820f95e1244a93f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f17, 0(x2) # load 0x00008400 from memory into f17
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
fmax.h f13, f17, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfc00)
li x24, 0xc2cf9436d4dbb077 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
fmax.h f24, f29, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7e00)
li x14, 0xe76f2a4181047a67 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f27, 0(x2) # load 0x00007e00 from memory into f27
fmax.h f14, f21, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7fff)
li x3, 0x364b3debc2e0b008 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f4, 0(x2) # load 0x00007fff from memory into f4
fmax.h f3, f24, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7c01)
li x18, 0xe068a97c72f0f704 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f10, 0(x2) # load 0x00008400 from memory into f10
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f5, 0(x2) # load 0x00007c01 from memory into f5
fmax.h f18, f10, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7dff)
li x17, 0x65aa1da3a45f64d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f31, 0(x2) # load 0x00007dff from memory into f31
fmax.h f17, f26, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x58b4)
li x12, 0x4225cd04a8695b31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f20, 0(x2) # load 0x00008400 from memory into f20
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f14, 0(x2) # load 0x000058b4 from memory into f14
fmax.h f12, f20, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xc93a)
li x26, 0xe5b25f63730722f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f8, 0(x2) # load 0x0000c93a from memory into f8
fmax.h f26, f1, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x0)
li x3, 0x7b685911fd8a1167 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f11, 0(x2) # load 0x00007bff from memory into f11
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f5, 0(x2) # load 0x00000000 from memory into f5
fmax.h f3, f11, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8000)
li x25, 0xa7a363f380e8f8ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f30, 0(x2) # load 0x00008000 from memory into f30
fmax.h f25, f1, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3c00)
li x16, 0x10a674b9827d7475 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f28, 0(x2) # load 0x00007bff from memory into f28
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f29, 0(x2) # load 0x00003c00 from memory into f29
fmax.h f16, f28, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xbc00)
li x9, 0x11507b1f00ab61a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f27, 0(x2) # load 0x00007bff from memory into f27
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
fmax.h f9, f27, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3e00)
li x2, 0x2f7d0c6f28eeebd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
fmax.h f2, f12, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xbe00)
li x28, 0xa289f0d4e6f2cab3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f20, 0(x2) # load 0x00007bff from memory into f20
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f13, 0(x2) # load 0x0000be00 from memory into f13
fmax.h f28, f20, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x4000)
li x1, 0x6aa400659f6a9dbc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f5, 0(x2) # load 0x00004000 from memory into f5
fmax.h f1, f16, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xc000)
li x19, 0x80e94cc27d60fdeb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f7, 0(x2) # load 0x00007bff from memory into f7
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f31, 0(x2) # load 0x0000c000 from memory into f31
fmax.h f19, f7, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x400)
li x24, 0x666fe12333fb4c82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f9, 0(x2) # load 0x00007bff from memory into f9
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f3, 0(x2) # load 0x00000400 from memory into f3
fmax.h f24, f9, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8400)
li x16, 0xf63d7bea5c41aac7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f9, 0(x2) # load 0x00007bff from memory into f9
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
fmax.h f16, f9, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7bff)
li x7, 0xce4bdc97d1b27a98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f23, 0(x2) # load 0x00007bff from memory into f23
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f3, 0(x2) # load 0x00007bff from memory into f3
fmax.h f7, f23, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfbff)
li x24, 0xa8cdeb858e002045 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f4, 0(x2) # load 0x00007bff from memory into f4
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f8, 0(x2) # load 0x0000fbff from memory into f8
fmax.h f24, f4, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3ff)
li x31, 0x2a980a880a47d415 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f11, 0(x2) # load 0x00007bff from memory into f11
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
fmax.h f31, f11, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x83ff)
li x19, 0x4d9d71a5c6790bf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f13, 0(x2) # load 0x00007bff from memory into f13
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
fmax.h f19, f13, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x200)
li x12, 0xd91d75320c1b422a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f27, 0(x2) # load 0x00000200 from memory into f27
fmax.h f12, f18, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8200)
li x19, 0xabc5ee7b4e772f40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f9, 0(x2) # load 0x00008200 from memory into f9
fmax.h f19, f21, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x1)
li x20, 0xbf3a32a601f1962f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f31, 0(x2) # load 0x00007bff from memory into f31
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f25, 0(x2) # load 0x00000001 from memory into f25
fmax.h f20, f31, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8001)
li x17, 0x048affcab490432f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
fmax.h f17, f2, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7c00)
li x24, 0xb861d6608b0a5917 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f9, 0(x2) # load 0x00007bff from memory into f9
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
fmax.h f24, f9, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfc00)
li x26, 0x4fbe9eb8ab8c69ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f16, 0(x2) # load 0x0000fc00 from memory into f16
fmax.h f26, f24, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7e00)
li x15, 0x779f9110eebb69af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f9, 0(x2) # load 0x00007bff from memory into f9
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f5, 0(x2) # load 0x00007e00 from memory into f5
fmax.h f15, f9, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7fff)
li x25, 0x441972e907a5b7be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
fmax.h f25, f16, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7c01)
li x30, 0x93ef586bb308ca7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f22, 0(x2) # load 0x00007c01 from memory into f22
fmax.h f30, f6, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7dff)
li x24, 0xc6c80ecfc113df0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f12, 0(x2) # load 0x00007dff from memory into f12
fmax.h f24, f18, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x58b4)
li x30, 0xed6f8c36d3b9a0e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f28, 0(x2) # load 0x00007bff from memory into f28
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
fmax.h f30, f28, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xc93a)
li x11, 0xd3162bda522d53da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f28, 0(x2) # load 0x0000c93a from memory into f28
fmax.h f11, f2, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x0)
li x14, 0x320a3c7123fd07c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f6, 0(x2) # load 0x0000fbff from memory into f6
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f3, 0(x2) # load 0x00000000 from memory into f3
fmax.h f14, f6, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8000)
li x21, 0x9d51a203cce24b45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f8, 0(x2) # load 0x0000fbff from memory into f8
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f18, 0(x2) # load 0x00008000 from memory into f18
fmax.h f21, f8, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3c00)
li x4, 0x6fbc1a907917877c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f11, 0(x2) # load 0x00003c00 from memory into f11
fmax.h f4, f27, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xbc00)
li x20, 0x7c138d3c66e1075c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
fmax.h f20, f14, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3e00)
li x3, 0x247a613176fee3d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f13, 0(x2) # load 0x0000fbff from memory into f13
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f27, 0(x2) # load 0x00003e00 from memory into f27
fmax.h f3, f13, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xbe00)
li x17, 0xd05a52d781714aa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f9, 0(x2) # load 0x0000fbff from memory into f9
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
fmax.h f17, f9, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x4000)
li x13, 0x689ac34740ecedad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f26, 0(x2) # load 0x0000fbff from memory into f26
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
fmax.h f13, f26, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xc000)
li x9, 0xc04bc0700ed0e642 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f6, 0(x2) # load 0x0000fbff from memory into f6
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f28, 0(x2) # load 0x0000c000 from memory into f28
fmax.h f9, f6, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x400)
li x8, 0x51b85f288770f6db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
fmax.h f8, f14, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8400)
li x28, 0x530b5f66dfd6cdaa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f9, 0(x2) # load 0x0000fbff from memory into f9
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
fmax.h f28, f9, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7bff)
li x27, 0x43a2f2d1563dc1d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f15, 0(x2) # load 0x0000fbff from memory into f15
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f7, 0(x2) # load 0x00007bff from memory into f7
fmax.h f27, f15, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfbff)
li x28, 0x42b28e488e850c20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f1, 0(x2) # load 0x0000fbff from memory into f1
fmax.h f28, f11, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3ff)
li x29, 0x3d043d35d2f7cba2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f3, 0(x2) # load 0x000003ff from memory into f3
fmax.h f29, f31, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x83ff)
li x2, 0x1e710bd832cace2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f10, 0(x2) # load 0x0000fbff from memory into f10
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
fmax.h f2, f10, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x200)
li x15, 0x9d6ff06d9e2f162d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f19, 0(x2) # load 0x0000fbff from memory into f19
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f7, 0(x2) # load 0x00000200 from memory into f7
fmax.h f15, f19, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8200)
li x21, 0xf8a0b51daa70c6f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f24, 0(x2) # load 0x0000fbff from memory into f24
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
fmax.h f21, f24, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x1)
li x4, 0x54df4c63e6fd650c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f1, 0(x2) # load 0x0000fbff from memory into f1
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f6, 0(x2) # load 0x00000001 from memory into f6
fmax.h f4, f1, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8001)
li x4, 0x029f65cafcf9c194 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
fmax.h f4, f12, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7c00)
li x17, 0x859d35d1df2e32a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f10, 0(x2) # load 0x0000fbff from memory into f10
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
fmax.h f17, f10, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfc00)
li x15, 0xe3968a8b0c302c97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f4, 0(x2) # load 0x0000fbff from memory into f4
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
fmax.h f15, f4, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7e00)
li x16, 0xed64c545885c4e0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f4, 0(x2) # load 0x0000fbff from memory into f4
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
fmax.h f16, f4, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7fff)
li x8, 0x5b786b4536fd6679 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f22, 0(x2) # load 0x0000fbff from memory into f22
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
fmax.h f8, f22, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7c01)
li x6, 0x6f88c73659fd22a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f30, 0(x2) # load 0x0000fbff from memory into f30
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f1, 0(x2) # load 0x00007c01 from memory into f1
fmax.h f6, f30, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7dff)
li x23, 0x6958239201a84197 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f10, 0(x2) # load 0x0000fbff from memory into f10
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f13, 0(x2) # load 0x00007dff from memory into f13
fmax.h f23, f10, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x58b4)
li x30, 0x6d6240da1efeab7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f10, 0(x2) # load 0x0000fbff from memory into f10
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
fmax.h f30, f10, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xc93a)
li x12, 0xb3b101f11b646016 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
fmax.h f12, f2, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x0)
li x7, 0x42a9d6ab38cb3dc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f18, 0(x2) # load 0x000003ff from memory into f18
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f20, 0(x2) # load 0x00000000 from memory into f20
fmax.h f7, f18, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8000)
li x26, 0xfa9aab2675251bfb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f25, 0(x2) # load 0x00008000 from memory into f25
fmax.h f26, f12, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3c00)
li x20, 0x02bb9392e42a83ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f30, 0(x2) # load 0x000003ff from memory into f30
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f14, 0(x2) # load 0x00003c00 from memory into f14
fmax.h f20, f30, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xbc00)
li x31, 0x1d9fe2f154f869e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f29, 0(x2) # load 0x000003ff from memory into f29
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f19, 0(x2) # load 0x0000bc00 from memory into f19
fmax.h f31, f29, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3e00)
li x5, 0x00914426215faf7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f14, 0(x2) # load 0x00003e00 from memory into f14
fmax.h f5, f21, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xbe00)
li x8, 0xf06ef1337f795802 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f13, 0(x2) # load 0x0000be00 from memory into f13
fmax.h f8, f23, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x4000)
li x1, 0x08412b0a84184255 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f15, 0(x2) # load 0x000003ff from memory into f15
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
fmax.h f1, f15, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xc000)
li x31, 0x3b2fe30503817921 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f30, 0(x2) # load 0x000003ff from memory into f30
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f29, 0(x2) # load 0x0000c000 from memory into f29
fmax.h f31, f30, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x400)
li x4, 0xff8a4469872211af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f28, 0(x2) # load 0x000003ff from memory into f28
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
fmax.h f4, f28, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8400)
li x21, 0xee2d35133f1f232d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f14, 0(x2) # load 0x000003ff from memory into f14
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f10, 0(x2) # load 0x00008400 from memory into f10
fmax.h f21, f14, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7bff)
li x27, 0x358cb5b3b610c417 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f10, 0(x2) # load 0x000003ff from memory into f10
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
fmax.h f27, f10, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfbff)
li x30, 0xe36566d1ea72b048 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f18, 0(x2) # load 0x000003ff from memory into f18
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f7, 0(x2) # load 0x0000fbff from memory into f7
fmax.h f30, f18, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3ff)
li x10, 0xcdd8206a8bccee33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f26, 0(x2) # load 0x000003ff from memory into f26
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f25, 0(x2) # load 0x000003ff from memory into f25
fmax.h f10, f26, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x83ff)
li x20, 0x11d8aa39c4dd3143 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f9, 0(x2) # load 0x000083ff from memory into f9
fmax.h f20, f6, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x200)
li x9, 0x219a7c887b77fd64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f11, 0(x2) # load 0x000003ff from memory into f11
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f20, 0(x2) # load 0x00000200 from memory into f20
fmax.h f9, f11, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8200)
li x9, 0x0bebeb4ed582e160 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f31, 0(x2) # load 0x00008200 from memory into f31
fmax.h f9, f17, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x1)
li x17, 0x6a747cd58a6d7f2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f8, 0(x2) # load 0x000003ff from memory into f8
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f12, 0(x2) # load 0x00000001 from memory into f12
fmax.h f17, f8, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8001)
li x19, 0x5f5f9cb337730e31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f16, 0(x2) # load 0x000003ff from memory into f16
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
fmax.h f19, f16, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7c00)
li x10, 0x72a372ed08f5e1c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f3, 0(x2) # load 0x000003ff from memory into f3
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
fmax.h f10, f3, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfc00)
li x4, 0x26911d237b997c0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f22, 0(x2) # load 0x000003ff from memory into f22
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
fmax.h f4, f22, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7e00)
li x9, 0xecefe5b3b2392c18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
fmax.h f9, f2, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7fff)
li x12, 0x7637c6d9a8e5762e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f26, 0(x2) # load 0x00007fff from memory into f26
fmax.h f12, f17, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7c01)
li x15, 0x31b5ce9d7cca36ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f18, 0(x2) # load 0x000003ff from memory into f18
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
fmax.h f15, f18, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7dff)
li x25, 0x369c5cf0bcbe57da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f3, 0(x2) # load 0x000003ff from memory into f3
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f28, 0(x2) # load 0x00007dff from memory into f28
fmax.h f25, f3, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x58b4)
li x28, 0x02366684f0a1b36e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f24, 0(x2) # load 0x000003ff from memory into f24
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
fmax.h f28, f24, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xc93a)
li x16, 0xf7c8c53264a523d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f23, 0(x2) # load 0x0000c93a from memory into f23
fmax.h f16, f6, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x0)
li x8, 0x1b4fdddeeb0b5840 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
fmax.h f8, f20, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8000)
li x21, 0x2cc78794c5def578 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f24, 0(x2) # load 0x000083ff from memory into f24
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f9, 0(x2) # load 0x00008000 from memory into f9
fmax.h f21, f24, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3c00)
li x9, 0x8f626b2970e37f55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f31, 0(x2) # load 0x00003c00 from memory into f31
fmax.h f9, f18, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xbc00)
li x13, 0x30f47db05bdf31a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f3, 0(x2) # load 0x0000bc00 from memory into f3
fmax.h f13, f29, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3e00)
li x16, 0x2d547f0645797d06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f11, 0(x2) # load 0x00003e00 from memory into f11
fmax.h f16, f14, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xbe00)
li x1, 0x841136a6121525a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
fmax.h f1, f29, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x4000)
li x19, 0x141bbf647d8f9924 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f16, 0(x2) # load 0x00004000 from memory into f16
fmax.h f19, f11, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xc000)
li x15, 0x325db04829225afe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f19, 0(x2) # load 0x000083ff from memory into f19
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
fmax.h f15, f19, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x400)
li x8, 0x53d5da45f79caee7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f2, 0(x2) # load 0x000083ff from memory into f2
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f31, 0(x2) # load 0x00000400 from memory into f31
fmax.h f8, f2, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8400)
li x17, 0xd7c0ddeddb2dd44f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
fmax.h f17, f23, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7bff)
li x2, 0x9d3ef3d4e5dbf4ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
fmax.h f2, f11, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfbff)
li x2, 0xbea2a420909c27ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f21, 0(x2) # load 0x000083ff from memory into f21
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f24, 0(x2) # load 0x0000fbff from memory into f24
fmax.h f2, f21, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3ff)
li x8, 0x75827b7d4c77d7b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f28, 0(x2) # load 0x000083ff from memory into f28
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f22, 0(x2) # load 0x000003ff from memory into f22
fmax.h f8, f28, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x83ff)
li x19, 0xe14b593f3e216443 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f7, 0(x2) # load 0x000083ff from memory into f7
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
fmax.h f19, f7, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x200)
li x10, 0x917f97956f0a7dc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
fmax.h f10, f22, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8200)
li x7, 0xf63efa0e92803289 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f11, 0(x2) # load 0x00008200 from memory into f11
fmax.h f7, f29, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x1)
li x27, 0x73979256b2842980 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f18, 0(x2) # load 0x00000001 from memory into f18
fmax.h f27, f16, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8001)
li x12, 0xd146a255337c6add # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f19, 0(x2) # load 0x00008001 from memory into f19
fmax.h f12, f20, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7c00)
li x17, 0xacdf963d809ee954 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f26, 0(x2) # load 0x000083ff from memory into f26
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f3, 0(x2) # load 0x00007c00 from memory into f3
fmax.h f17, f26, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfc00)
li x12, 0x2b7bf8d5e7c7c616 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f9, 0(x2) # load 0x000083ff from memory into f9
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f10, 0(x2) # load 0x0000fc00 from memory into f10
fmax.h f12, f9, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7e00)
li x6, 0xc3d41e4ce39247de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f24, 0(x2) # load 0x000083ff from memory into f24
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f16, 0(x2) # load 0x00007e00 from memory into f16
fmax.h f6, f24, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7fff)
li x16, 0xc354c19d46a17f89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f3, 0(x2) # load 0x00007fff from memory into f3
fmax.h f16, f14, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7c01)
li x5, 0xf8d1a1c00de5341a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
fmax.h f5, f18, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7dff)
li x2, 0x7b6f631699263b29 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f31, 0(x2) # load 0x000083ff from memory into f31
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f28, 0(x2) # load 0x00007dff from memory into f28
fmax.h f2, f31, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x58b4)
li x14, 0xe7c7e796799fb48c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
fmax.h f14, f23, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xc93a)
li x18, 0xe0ebb876559220c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f4, 0(x2) # load 0x000083ff from memory into f4
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f23, 0(x2) # load 0x0000c93a from memory into f23
fmax.h f18, f4, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x0)
li x25, 0xb1dc49065257be90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
fmax.h f25, f15, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8000)
li x1, 0x71bb913a7ef9e159 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f9, 0(x2) # load 0x00008000 from memory into f9
fmax.h f1, f19, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3c00)
li x27, 0x426a006682d845db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f31, 0(x2) # load 0x00000200 from memory into f31
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f6, 0(x2) # load 0x00003c00 from memory into f6
fmax.h f27, f31, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xbc00)
li x13, 0x0f97c31049df9410 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f8, 0(x2) # load 0x00000200 from memory into f8
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f19, 0(x2) # load 0x0000bc00 from memory into f19
fmax.h f13, f8, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3e00)
li x31, 0xa9d6219a418c548d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
fmax.h f31, f19, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xbe00)
li x24, 0x6a191b4d6e0bc0e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f8, 0(x2) # load 0x00000200 from memory into f8
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
fmax.h f24, f8, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x4000)
li x22, 0xc22ec26da1bd6872 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
fmax.h f22, f9, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xc000)
li x23, 0xbe46d00fe18c9906 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f26, 0(x2) # load 0x00000200 from memory into f26
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f8, 0(x2) # load 0x0000c000 from memory into f8
fmax.h f23, f26, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x400)
li x17, 0xaff7ba8747d6b61a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f20, 0(x2) # load 0x00000200 from memory into f20
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
fmax.h f17, f20, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8400)
li x16, 0xa3005109276b7cd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f30, 0(x2) # load 0x00008400 from memory into f30
fmax.h f16, f15, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7bff)
li x3, 0xac9f64436234a4dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
fmax.h f3, f25, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfbff)
li x8, 0x286e305eb30c83bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f28, 0(x2) # load 0x00000200 from memory into f28
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f24, 0(x2) # load 0x0000fbff from memory into f24
fmax.h f8, f28, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3ff)
li x25, 0x3c4041e904f12459 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f27, 0(x2) # load 0x00000200 from memory into f27
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
fmax.h f25, f27, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x83ff)
li x22, 0xc8c58b422a685e13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f31, 0(x2) # load 0x00000200 from memory into f31
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
fmax.h f22, f31, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x200)
li x12, 0x6eb4776f96626606 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
fmax.h f12, f5, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8200)
li x14, 0x0a2c34f52ef0075d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f20, 0(x2) # load 0x00000200 from memory into f20
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
fmax.h f14, f20, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x1)
li x27, 0xe8fb8e61efbd7dbc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f29, 0(x2) # load 0x00000200 from memory into f29
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f22, 0(x2) # load 0x00000001 from memory into f22
fmax.h f27, f29, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8001)
li x26, 0xe8bd1ef29d8373f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f17, 0(x2) # load 0x00000200 from memory into f17
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
fmax.h f26, f17, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7c00)
li x7, 0x1d95e76090c71197 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
fmax.h f7, f9, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfc00)
li x31, 0xdfcfe3474e48abe0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f14, 0(x2) # load 0x00000200 from memory into f14
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
fmax.h f31, f14, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7e00)
li x1, 0xd71de97cf404eb90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f7, 0(x2) # load 0x00000200 from memory into f7
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f28, 0(x2) # load 0x00007e00 from memory into f28
fmax.h f1, f7, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7fff)
li x12, 0x7a3ceba71735fc36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f18, 0(x2) # load 0x00000200 from memory into f18
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
fmax.h f12, f18, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7c01)
li x6, 0xfcc800dd948106ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f31, 0(x2) # load 0x00000200 from memory into f31
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f4, 0(x2) # load 0x00007c01 from memory into f4
fmax.h f6, f31, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7dff)
li x19, 0x63efd385f824e2e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f11, 0(x2) # load 0x00000200 from memory into f11
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f31, 0(x2) # load 0x00007dff from memory into f31
fmax.h f19, f11, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x58b4)
li x11, 0xa06db44ebf1b9450 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f6, 0(x2) # load 0x00000200 from memory into f6
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f27, 0(x2) # load 0x000058b4 from memory into f27
fmax.h f11, f6, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xc93a)
li x27, 0x104409adb170739b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f11, 0(x2) # load 0x0000c93a from memory into f11
fmax.h f27, f19, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x0)
li x9, 0xea8ffa68e1d092b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f27, 0(x2) # load 0x00008200 from memory into f27
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f8, 0(x2) # load 0x00000000 from memory into f8
fmax.h f9, f27, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8000)
li x3, 0x15ec1d0852c5f6a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f23, 0(x2) # load 0x00008000 from memory into f23
fmax.h f3, f15, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3c00)
li x13, 0x16d6c584a8093b24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f10, 0(x2) # load 0x00003c00 from memory into f10
fmax.h f13, f23, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xbc00)
li x26, 0x7dab041ee5b051d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f25, 0(x2) # load 0x0000bc00 from memory into f25
fmax.h f26, f17, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3e00)
li x27, 0xd4b213ae66514c19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f2, 0(x2) # load 0x00003e00 from memory into f2
fmax.h f27, f10, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xbe00)
li x16, 0xccd60a7091c92655 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f30, 0(x2) # load 0x00008200 from memory into f30
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f11, 0(x2) # load 0x0000be00 from memory into f11
fmax.h f16, f30, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x4000)
li x26, 0x54f920a3a91d04bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f22, 0(x2) # load 0x00008200 from memory into f22
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
fmax.h f26, f22, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xc000)
li x27, 0x746baf4c3d6e4c23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
fmax.h f27, f2, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x400)
li x29, 0xb1f3a31c534d7cc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
fmax.h f29, f25, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8400)
li x27, 0x997b82011faa64ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f12, 0(x2) # load 0x00008400 from memory into f12
fmax.h f27, f20, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7bff)
li x20, 0x464a8bc95a94df01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f8, 0(x2) # load 0x00008200 from memory into f8
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f25, 0(x2) # load 0x00007bff from memory into f25
fmax.h f20, f8, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfbff)
li x26, 0xa4dd5cd42de9335d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f27, 0(x2) # load 0x00008200 from memory into f27
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f30, 0(x2) # load 0x0000fbff from memory into f30
fmax.h f26, f27, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3ff)
li x13, 0xdf189abe7d7bbb52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f9, 0(x2) # load 0x000003ff from memory into f9
fmax.h f13, f1, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x83ff)
li x26, 0x2f448a66d9d9987b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f18, 0(x2) # load 0x00008200 from memory into f18
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
fmax.h f26, f18, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x200)
li x13, 0x4940008810c6ad8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f12, 0(x2) # load 0x00008200 from memory into f12
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
fmax.h f13, f12, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8200)
li x17, 0xfd548800d545b146 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f5, 0(x2) # load 0x00008200 from memory into f5
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f13, 0(x2) # load 0x00008200 from memory into f13
fmax.h f17, f5, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x1)
li x31, 0x540c5ccbe2c32f0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
fmax.h f31, f1, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8001)
li x23, 0x053b1fce8673abab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f20, 0(x2) # load 0x00008001 from memory into f20
fmax.h f23, f2, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7c00)
li x27, 0xb441513fb79776ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f13, 0(x2) # load 0x00008200 from memory into f13
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
fmax.h f27, f13, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfc00)
li x8, 0x9e4bf7efdbb5ad43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f22, 0(x2) # load 0x00008200 from memory into f22
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
fmax.h f8, f22, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7e00)
li x26, 0xdaf3839d288956e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f22, 0(x2) # load 0x00008200 from memory into f22
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
fmax.h f26, f22, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7fff)
li x23, 0xbf7879a247258f7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f5, 0(x2) # load 0x00008200 from memory into f5
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
fmax.h f23, f5, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7c01)
li x24, 0x892f5e399e59dc0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f28, 0(x2) # load 0x00008200 from memory into f28
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f4, 0(x2) # load 0x00007c01 from memory into f4
fmax.h f24, f28, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7dff)
li x10, 0xbb5857b9c2400752 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f4, 0(x2) # load 0x00008200 from memory into f4
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
fmax.h f10, f4, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x58b4)
li x27, 0x51a52d042b27beae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f31, 0(x2) # load 0x000058b4 from memory into f31
fmax.h f27, f17, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xc93a)
li x6, 0x8613f5604e8ff85f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f5, 0(x2) # load 0x0000c93a from memory into f5
fmax.h f6, f10, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
li x2, 0x75ee5daa86651176 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f3, 0(x2) # load 0x00000001 from memory into f3
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f7, 0(x2) # load 0x00000000 from memory into f7
fmax.h f2, f3, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000)
li x2, 0xcb1169aca2781092 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f10, 0(x2) # load 0x00000001 from memory into f10
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
fmax.h f2, f10, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3c00)
li x7, 0x5a090c63d0e8ceaf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f28, 0(x2) # load 0x00000001 from memory into f28
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f4, 0(x2) # load 0x00003c00 from memory into f4
fmax.h f7, f28, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbc00)
li x3, 0x55dceba5ea380040 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f10, 0(x2) # load 0x00000001 from memory into f10
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f29, 0(x2) # load 0x0000bc00 from memory into f29
fmax.h f3, f10, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3e00)
li x30, 0x4d21504bc5491653 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f23, 0(x2) # load 0x00000001 from memory into f23
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f3, 0(x2) # load 0x00003e00 from memory into f3
fmax.h f30, f23, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbe00)
li x4, 0x8987d4415f5a7d8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f10, 0(x2) # load 0x00000001 from memory into f10
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f25, 0(x2) # load 0x0000be00 from memory into f25
fmax.h f4, f10, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x4000)
li x7, 0x30fc34b16f0fec9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f15, 0(x2) # load 0x00000001 from memory into f15
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
fmax.h f7, f15, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc000)
li x31, 0x61512ca55bf7705d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f23, 0(x2) # load 0x00000001 from memory into f23
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f13, 0(x2) # load 0x0000c000 from memory into f13
fmax.h f31, f23, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x400)
li x14, 0x2ec585b35d8c8c46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f1, 0(x2) # load 0x00000001 from memory into f1
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f27, 0(x2) # load 0x00000400 from memory into f27
fmax.h f14, f1, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8400)
li x20, 0x3567642aa4f8e686 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f5, 0(x2) # load 0x00000001 from memory into f5
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f17, 0(x2) # load 0x00008400 from memory into f17
fmax.h f20, f5, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7bff)
li x30, 0x27ee2de79c797c87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f19, 0(x2) # load 0x00007bff from memory into f19
fmax.h f30, f21, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfbff)
li x9, 0x4090cb5aaac28a01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f5, 0(x2) # load 0x0000fbff from memory into f5
fmax.h f9, f31, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3ff)
li x13, 0x4bacca6bf16e49ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f7, 0(x2) # load 0x000003ff from memory into f7
fmax.h f13, f11, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x83ff)
li x26, 0xf03623ef9d214d22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f2, 0(x2) # load 0x00000001 from memory into f2
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
fmax.h f26, f2, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x200)
li x30, 0xf6d1ba9e3d5d34d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f23, 0(x2) # load 0x00000001 from memory into f23
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f12, 0(x2) # load 0x00000200 from memory into f12
fmax.h f30, f23, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8200)
li x30, 0x759d185c6c8699a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f9, 0(x2) # load 0x00008200 from memory into f9
fmax.h f30, f20, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
li x6, 0xacbe7edb5b047ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f30, 0(x2) # load 0x00000001 from memory into f30
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f7, 0(x2) # load 0x00000001 from memory into f7
fmax.h f6, f30, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8001)
li x29, 0x289c4c6001298fb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
fmax.h f29, f31, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7c00)
li x18, 0xd4c0dcf4123b9bca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
fmax.h f18, f24, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfc00)
li x27, 0x7370b117df3f2282 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f5, 0(x2) # load 0x00000001 from memory into f5
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
fmax.h f27, f5, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7e00)
li x18, 0x73195ba0639b15a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f4, 0(x2) # load 0x00000001 from memory into f4
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f23, 0(x2) # load 0x00007e00 from memory into f23
fmax.h f18, f4, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fff)
li x30, 0x30b11a25580d3786 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
fmax.h f30, f16, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7c01)
li x10, 0xf7564d9ea6fb9a75 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f15, 0(x2) # load 0x00000001 from memory into f15
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f20, 0(x2) # load 0x00007c01 from memory into f20
fmax.h f10, f15, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7dff)
li x5, 0xab2128d48e942aae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f26, 0(x2) # load 0x00007dff from memory into f26
fmax.h f5, f31, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x58b4)
li x30, 0x517fe24dde091fb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f22, 0(x2) # load 0x00000001 from memory into f22
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f27, 0(x2) # load 0x000058b4 from memory into f27
fmax.h f30, f22, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc93a)
li x11, 0x6d4e9e748efc68c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
fmax.h f11, f14, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x0)
li x17, 0x09a494a5390e9b41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f4, 0(x2) # load 0x00008001 from memory into f4
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f28, 0(x2) # load 0x00000000 from memory into f28
fmax.h f17, f4, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8000)
li x22, 0x4d864fa846b6ddd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f29, 0(x2) # load 0x00008001 from memory into f29
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
fmax.h f22, f29, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3c00)
li x4, 0xbb6391a02533072d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f20, 0(x2) # load 0x00008001 from memory into f20
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
fmax.h f4, f20, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xbc00)
li x2, 0x564dccd8411bf926 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f17, 0(x2) # load 0x00008001 from memory into f17
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f27, 0(x2) # load 0x0000bc00 from memory into f27
fmax.h f2, f17, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3e00)
li x21, 0xa72e015fa77d18d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f27, 0(x2) # load 0x00008001 from memory into f27
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f3, 0(x2) # load 0x00003e00 from memory into f3
fmax.h f21, f27, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xbe00)
li x18, 0x7eedfed1df88aa47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f11, 0(x2) # load 0x0000be00 from memory into f11
fmax.h f18, f7, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x4000)
li x27, 0xce5507a51b490a74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
fmax.h f27, f31, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xc000)
li x10, 0x5198ccc9635a1029 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f22, 0(x2) # load 0x0000c000 from memory into f22
fmax.h f10, f24, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x400)
li x28, 0xfc125131d32dd243 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
fmax.h f28, f24, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8400)
li x4, 0xe13b9d95ff15486c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f27, 0(x2) # load 0x00008001 from memory into f27
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f17, 0(x2) # load 0x00008400 from memory into f17
fmax.h f4, f27, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7bff)
li x16, 0xfcc80210fa9c1552 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f28, 0(x2) # load 0x00008001 from memory into f28
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
fmax.h f16, f28, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfbff)
li x12, 0x356780b95a9da334 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f8, 0(x2) # load 0x00008001 from memory into f8
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
fmax.h f12, f8, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3ff)
li x6, 0xec42a9fd25afec39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f19, 0(x2) # load 0x00008001 from memory into f19
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f3, 0(x2) # load 0x000003ff from memory into f3
fmax.h f6, f19, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x83ff)
li x16, 0x1214810492c8dcea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f20, 0(x2) # load 0x00008001 from memory into f20
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f3, 0(x2) # load 0x000083ff from memory into f3
fmax.h f16, f20, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x200)
li x4, 0xe236e611f0c00db6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f8, 0(x2) # load 0x00008001 from memory into f8
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
fmax.h f4, f8, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8200)
li x31, 0x0867ec1924a5bec3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
fmax.h f31, f5, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x1)
li x15, 0xe06f97be5af26ec8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f13, 0(x2) # load 0x00000001 from memory into f13
fmax.h f15, f7, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8001)
li x11, 0x6cac23f5bb3328eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f25, 0(x2) # load 0x00008001 from memory into f25
fmax.h f11, f23, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7c00)
li x2, 0x65822916dcfb793d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f27, 0(x2) # load 0x00007c00 from memory into f27
fmax.h f2, f7, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfc00)
li x29, 0x27ea127345d3d6bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
fmax.h f29, f24, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7e00)
li x6, 0x6ce5d73ea6f2bb21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f29, 0(x2) # load 0x00008001 from memory into f29
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
fmax.h f6, f29, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7fff)
li x26, 0x06c9a7d6c9342a58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
fmax.h f26, f11, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7c01)
li x29, 0x848ccdae09b6ddee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f9, 0(x2) # load 0x00008001 from memory into f9
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
fmax.h f29, f9, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7dff)
li x28, 0x7c75ab1de2089417 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f9, 0(x2) # load 0x00007dff from memory into f9
fmax.h f28, f31, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x58b4)
li x8, 0x5f57c4af2b14b5ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f31, 0(x2) # load 0x000058b4 from memory into f31
fmax.h f8, f11, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xc93a)
li x16, 0x1edf75f8dbc94742 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f8, 0(x2) # load 0x00008001 from memory into f8
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f28, 0(x2) # load 0x0000c93a from memory into f28
fmax.h f16, f8, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x0)
li x9, 0x979ff4bc8b633ab1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f24, 0(x2) # load 0x00000000 from memory into f24
fmax.h f9, f2, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8000)
li x9, 0x7240101655ba44fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
fmax.h f9, f1, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3c00)
li x7, 0x0998254b92af7c74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f29, 0(x2) # load 0x00007c00 from memory into f29
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f2, 0(x2) # load 0x00003c00 from memory into f2
fmax.h f7, f29, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xbc00)
li x24, 0x261a020489ab210a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
fmax.h f24, f2, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3e00)
li x16, 0x82627f86c0ad3199 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f15, 0(x2) # load 0x00003e00 from memory into f15
fmax.h f16, f7, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xbe00)
li x4, 0xe9e7ea1f98e3abde # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f23, 0(x2) # load 0x00007c00 from memory into f23
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f7, 0(x2) # load 0x0000be00 from memory into f7
fmax.h f4, f23, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x4000)
li x18, 0x9a0d8fed533dfbd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f4, 0(x2) # load 0x00004000 from memory into f4
fmax.h f18, f16, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xc000)
li x29, 0x675391db8490a8a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f5, 0(x2) # load 0x00007c00 from memory into f5
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
fmax.h f29, f5, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x400)
li x27, 0xae0b569a95398d51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f29, 0(x2) # load 0x00007c00 from memory into f29
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
fmax.h f27, f29, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8400)
li x28, 0x5e9400806f82b291 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f2, 0(x2) # load 0x00008400 from memory into f2
fmax.h f28, f7, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7bff)
li x10, 0x450119f4b4ea05b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f23, 0(x2) # load 0x00007bff from memory into f23
fmax.h f10, f7, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfbff)
li x4, 0x05122e03a6472bfb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f5, 0(x2) # load 0x00007c00 from memory into f5
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f3, 0(x2) # load 0x0000fbff from memory into f3
fmax.h f4, f5, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3ff)
li x28, 0x80beca5ddadc3941 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f18, 0(x2) # load 0x00007c00 from memory into f18
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f31, 0(x2) # load 0x000003ff from memory into f31
fmax.h f28, f18, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x83ff)
li x13, 0x1d73869782f68a1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f23, 0(x2) # load 0x00007c00 from memory into f23
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
fmax.h f13, f23, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x200)
li x26, 0xeb8582a28d8a04b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f23, 0(x2) # load 0x00007c00 from memory into f23
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
fmax.h f26, f23, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8200)
li x24, 0xd6d639d82e34c95d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f30, 0(x2) # load 0x00007c00 from memory into f30
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f12, 0(x2) # load 0x00008200 from memory into f12
fmax.h f24, f30, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x1)
li x29, 0xe6e587a3bce62fbc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f15, 0(x2) # load 0x00000001 from memory into f15
fmax.h f29, f11, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8001)
li x8, 0x0677d5441193689e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f16, 0(x2) # load 0x00008001 from memory into f16
fmax.h f8, f1, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7c00)
li x6, 0x4c61f7155e15c044 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f3, 0(x2) # load 0x00007c00 from memory into f3
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f9, 0(x2) # load 0x00007c00 from memory into f9
fmax.h f6, f3, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfc00)
li x25, 0x2e4c5fa0a1387c65 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f12, 0(x2) # load 0x00007c00 from memory into f12
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f17, 0(x2) # load 0x0000fc00 from memory into f17
fmax.h f25, f12, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7e00)
li x12, 0xc1795c667659fed4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f4, 0(x2) # load 0x00007c00 from memory into f4
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f1, 0(x2) # load 0x00007e00 from memory into f1
fmax.h f12, f4, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7fff)
li x24, 0xc602724e775f2078 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f26, 0(x2) # load 0x00007c00 from memory into f26
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
fmax.h f24, f26, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7c01)
li x7, 0xe888219eaaaddfbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f25, 0(x2) # load 0x00007c00 from memory into f25
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
fmax.h f7, f25, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7dff)
li x1, 0x71c0190175f3705b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f9, 0(x2) # load 0x00007c00 from memory into f9
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f6, 0(x2) # load 0x00007dff from memory into f6
fmax.h f1, f9, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x58b4)
li x10, 0xbce4b414ab64fc7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f31, 0(x2) # load 0x00007c00 from memory into f31
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f12, 0(x2) # load 0x000058b4 from memory into f12
fmax.h f10, f31, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xc93a)
li x13, 0x52bd88ef14b1a487 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f20, 0(x2) # load 0x00007c00 from memory into f20
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f8, 0(x2) # load 0x0000c93a from memory into f8
fmax.h f13, f20, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x0)
li x30, 0x046ccc933af3cc46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f16, 0(x2) # load 0x0000fc00 from memory into f16
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
fmax.h f30, f16, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8000)
li x27, 0x908aa65146eadef2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
fmax.h f27, f26, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3c00)
li x27, 0x55023e20c3d64509 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f19, 0(x2) # load 0x0000fc00 from memory into f19
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f6, 0(x2) # load 0x00003c00 from memory into f6
fmax.h f27, f19, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xbc00)
li x18, 0xec6256885cfb192a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f10, 0(x2) # load 0x0000fc00 from memory into f10
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f19, 0(x2) # load 0x0000bc00 from memory into f19
fmax.h f18, f10, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3e00)
li x25, 0x9ebd2ca6135baaa8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f18, 0(x2) # load 0x0000fc00 from memory into f18
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f26, 0(x2) # load 0x00003e00 from memory into f26
fmax.h f25, f18, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xbe00)
li x23, 0x94e1efcfa9765aaa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f29, 0(x2) # load 0x0000fc00 from memory into f29
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
fmax.h f23, f29, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x4000)
li x13, 0xdd480aafb477a7aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
fmax.h f13, f3, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xc000)
li x26, 0x2a0aaae10e37b8da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f2, 0(x2) # load 0x0000fc00 from memory into f2
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
fmax.h f26, f2, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x400)
li x24, 0xd1c43ddaf91dd6f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
fmax.h f24, f26, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8400)
li x18, 0x770f4d0f05075839 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
fmax.h f18, f23, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7bff)
li x7, 0x03a14cbe31ee11d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f10, 0(x2) # load 0x0000fc00 from memory into f10
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f14, 0(x2) # load 0x00007bff from memory into f14
fmax.h f7, f10, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfbff)
li x14, 0x7ffafb3379429d9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f21, 0(x2) # load 0x0000fc00 from memory into f21
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f29, 0(x2) # load 0x0000fbff from memory into f29
fmax.h f14, f21, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3ff)
li x6, 0xcbdae75a5ce2fedf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f7, 0(x2) # load 0x0000fc00 from memory into f7
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f14, 0(x2) # load 0x000003ff from memory into f14
fmax.h f6, f7, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x83ff)
li x12, 0xd35989c63b7c516f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
fmax.h f12, f3, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x200)
li x24, 0x46333a2b8e84d68f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f2, 0(x2) # load 0x0000fc00 from memory into f2
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
fmax.h f24, f2, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8200)
li x12, 0x31be431d1572b37d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f21, 0(x2) # load 0x0000fc00 from memory into f21
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
fmax.h f12, f21, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x1)
li x13, 0x6f2bd111114616a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f25, 0(x2) # load 0x0000fc00 from memory into f25
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f5, 0(x2) # load 0x00000001 from memory into f5
fmax.h f13, f25, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8001)
li x4, 0x56bf1535993a782d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f3, 0(x2) # load 0x00008001 from memory into f3
fmax.h f4, f8, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7c00)
li x5, 0x0e8b9b5cb7ca998f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f25, 0(x2) # load 0x00007c00 from memory into f25
fmax.h f5, f11, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfc00)
li x20, 0xedaf2db3917bc0ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f4, 0(x2) # load 0x0000fc00 from memory into f4
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
fmax.h f20, f4, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7e00)
li x8, 0x6b0f7308ba93e681 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f18, 0(x2) # load 0x00007e00 from memory into f18
fmax.h f8, f3, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7fff)
li x30, 0x8a6c786357bb4903 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
fmax.h f30, f8, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7c01)
li x16, 0x8cfa8db1d89bec52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f20, 0(x2) # load 0x00007c01 from memory into f20
fmax.h f16, f14, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7dff)
li x2, 0xcef340faf1848dca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f6, 0(x2) # load 0x0000fc00 from memory into f6
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f14, 0(x2) # load 0x00007dff from memory into f14
fmax.h f2, f6, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x58b4)
li x22, 0x7dd7cfd6967a8b6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f2, 0(x2) # load 0x000058b4 from memory into f2
fmax.h f22, f28, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xc93a)
li x31, 0x52880be14d3665ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f29, 0(x2) # load 0x0000fc00 from memory into f29
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f15, 0(x2) # load 0x0000c93a from memory into f15
fmax.h f31, f29, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x0)
li x31, 0x4f0768ac2b2b82df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f17, 0(x2) # load 0x00007e00 from memory into f17
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f7, 0(x2) # load 0x00000000 from memory into f7
fmax.h f31, f17, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8000)
li x25, 0x248ca9bae52a2e95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f11, 0(x2) # load 0x00007e00 from memory into f11
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
fmax.h f25, f11, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3c00)
li x24, 0x620a96767e13bb33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f17, 0(x2) # load 0x00007e00 from memory into f17
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
fmax.h f24, f17, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xbc00)
li x29, 0x72d3d0cf0b28f19f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f28, 0(x2) # load 0x00007e00 from memory into f28
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f17, 0(x2) # load 0x0000bc00 from memory into f17
fmax.h f29, f28, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3e00)
li x2, 0xfb277da3b88140a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f18, 0(x2) # load 0x00007e00 from memory into f18
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f4, 0(x2) # load 0x00003e00 from memory into f4
fmax.h f2, f18, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xbe00)
li x2, 0x39a85c878623ac3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f21, 0(x2) # load 0x0000be00 from memory into f21
fmax.h f2, f19, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x4000)
li x20, 0x2cd9fc696a77820a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f1, 0(x2) # load 0x00004000 from memory into f1
fmax.h f20, f8, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xc000)
li x23, 0x774806ace2a0a214 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f20, 0(x2) # load 0x0000c000 from memory into f20
fmax.h f23, f3, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x400)
li x23, 0xfe13d5e7968c8c70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f17, 0(x2) # load 0x00007e00 from memory into f17
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f4, 0(x2) # load 0x00000400 from memory into f4
fmax.h f23, f17, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8400)
li x28, 0x3c6902104c4bc82d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
fmax.h f28, f8, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7bff)
li x28, 0x081721b77be69e75 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
fmax.h f28, f19, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfbff)
li x13, 0xf9f16973804530d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f17, 0(x2) # load 0x00007e00 from memory into f17
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
fmax.h f13, f17, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3ff)
li x9, 0xaa9c0f3366f0b449 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f18, 0(x2) # load 0x000003ff from memory into f18
fmax.h f9, f2, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x83ff)
li x29, 0x9349244fb943b03d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f6, 0(x2) # load 0x00007e00 from memory into f6
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
fmax.h f29, f6, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x200)
li x9, 0x165c44d09aab8eb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
fmax.h f9, f10, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8200)
li x20, 0x612087f403c21e1c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f26, 0(x2) # load 0x00007e00 from memory into f26
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
fmax.h f20, f26, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x1)
li x12, 0x13d3c4d262022ed0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f27, 0(x2) # load 0x00007e00 from memory into f27
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f23, 0(x2) # load 0x00000001 from memory into f23
fmax.h f12, f27, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8001)
li x26, 0x75c7abeb10b8d943 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f24, 0(x2) # load 0x00007e00 from memory into f24
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f20, 0(x2) # load 0x00008001 from memory into f20
fmax.h f26, f24, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7c00)
li x12, 0xf1a7288abdd80de5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f27, 0(x2) # load 0x00007e00 from memory into f27
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f3, 0(x2) # load 0x00007c00 from memory into f3
fmax.h f12, f27, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfc00)
li x21, 0xcc8fb5965187646d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f7, 0(x2) # load 0x00007e00 from memory into f7
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f19, 0(x2) # load 0x0000fc00 from memory into f19
fmax.h f21, f7, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7e00)
li x3, 0xf9a86e12b68156cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f12, 0(x2) # load 0x00007e00 from memory into f12
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
fmax.h f3, f12, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7fff)
li x10, 0x32b4a579f007e144 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f21, 0(x2) # load 0x00007fff from memory into f21
fmax.h f10, f14, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7c01)
li x11, 0x5f47a1fc5b1ead7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
fmax.h f11, f30, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7dff)
li x21, 0xc0ba9c3e4d5b79ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f13, 0(x2) # load 0x00007e00 from memory into f13
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
fmax.h f21, f13, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x58b4)
li x26, 0x4349c7b846f070b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f4, 0(x2) # load 0x000058b4 from memory into f4
fmax.h f26, f8, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xc93a)
li x23, 0x156d33b401d46c19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
fmax.h f23, f10, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x0)
li x20, 0x913d4c3a6755fa79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f16, 0(x2) # load 0x00000000 from memory into f16
fmax.h f20, f30, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8000)
li x9, 0xf79f8fb40ffb3686 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f30, 0(x2) # load 0x00008000 from memory into f30
fmax.h f9, f10, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3c00)
li x6, 0xa19f1d6cbc8cb7e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f31, 0(x2) # load 0x00007fff from memory into f31
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f12, 0(x2) # load 0x00003c00 from memory into f12
fmax.h f6, f31, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xbc00)
li x6, 0x8415403e4b13c6eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f13, 0(x2) # load 0x0000bc00 from memory into f13
fmax.h f6, f25, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3e00)
li x21, 0x317131426a65f7f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f3, 0(x2) # load 0x00007fff from memory into f3
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f8, 0(x2) # load 0x00003e00 from memory into f8
fmax.h f21, f3, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xbe00)
li x29, 0xf13a098c3ad27c3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f15, 0(x2) # load 0x00007fff from memory into f15
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
fmax.h f29, f15, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x4000)
li x18, 0x838c74ce7e850185 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f15, 0(x2) # load 0x00007fff from memory into f15
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f4, 0(x2) # load 0x00004000 from memory into f4
fmax.h f18, f15, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xc000)
li x26, 0xb68b632b3fd833d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f5, 0(x2) # load 0x00007fff from memory into f5
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
fmax.h f26, f5, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x400)
li x14, 0xd2906e85c6a3e58d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f25, 0(x2) # load 0x00000400 from memory into f25
fmax.h f14, f10, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8400)
li x14, 0x144c408c925a6af9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f22, 0(x2) # load 0x00008400 from memory into f22
fmax.h f14, f25, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7bff)
li x2, 0x25fddab36feac472 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f14, 0(x2) # load 0x00007bff from memory into f14
fmax.h f2, f12, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfbff)
li x10, 0x1fba5f0a29e74be8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
fmax.h f10, f12, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3ff)
li x25, 0x32462f631dd3e12d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f1, 0(x2) # load 0x00007fff from memory into f1
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f14, 0(x2) # load 0x000003ff from memory into f14
fmax.h f25, f1, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x83ff)
li x1, 0xab2d8047d28828bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
fmax.h f1, f2, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x200)
li x17, 0x2a2b961eed019bea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f1, 0(x2) # load 0x00007fff from memory into f1
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
fmax.h f17, f1, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8200)
li x21, 0xe8f841d963718f1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f29, 0(x2) # load 0x00008200 from memory into f29
fmax.h f21, f25, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x1)
li x8, 0xad174829b16906de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f26, 0(x2) # load 0x00007fff from memory into f26
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f29, 0(x2) # load 0x00000001 from memory into f29
fmax.h f8, f26, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8001)
li x11, 0x41ff9d5c95bef3c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f3, 0(x2) # load 0x00007fff from memory into f3
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
fmax.h f11, f3, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7c00)
li x2, 0x3ca22130d3d9600e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f10, 0(x2) # load 0x00007c00 from memory into f10
fmax.h f2, f24, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfc00)
li x9, 0x7cadcb2c797e29b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f1, 0(x2) # load 0x00007fff from memory into f1
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
fmax.h f9, f1, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7e00)
li x7, 0xcee1370f18e25f2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f22, 0(x2) # load 0x00007fff from memory into f22
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
fmax.h f7, f22, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7fff)
li x17, 0x175dfe7842c1506f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f3, 0(x2) # load 0x00007fff from memory into f3
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
fmax.h f17, f3, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7c01)
li x4, 0x5d8fafd1877bfdc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
fmax.h f4, f30, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7dff)
li x18, 0x3ad58f3b9189eb86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f14, 0(x2) # load 0x00007fff from memory into f14
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f16, 0(x2) # load 0x00007dff from memory into f16
fmax.h f18, f14, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x58b4)
li x20, 0x4de7fa271d6ae8e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f16, 0(x2) # load 0x00007fff from memory into f16
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
fmax.h f20, f16, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xc93a)
li x1, 0x9276d214ec55f0cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f15, 0(x2) # load 0x00007fff from memory into f15
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
fmax.h f1, f15, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x0)
li x15, 0x3c7e2ecdc28b2eed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f30, 0(x2) # load 0x00007c01 from memory into f30
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
fmax.h f15, f30, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8000)
li x15, 0xba369f0b9197d3aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f22, 0(x2) # load 0x00007c01 from memory into f22
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f20, 0(x2) # load 0x00008000 from memory into f20
fmax.h f15, f22, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3c00)
li x24, 0xf4fc222960c32f4c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f6, 0(x2) # load 0x00003c00 from memory into f6
fmax.h f24, f3, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xbc00)
li x22, 0x3981b53d31cecec5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f7, 0(x2) # load 0x00007c01 from memory into f7
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f19, 0(x2) # load 0x0000bc00 from memory into f19
fmax.h f22, f7, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3e00)
li x2, 0xce9b86ce4629d2bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f21, 0(x2) # load 0x00007c01 from memory into f21
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f27, 0(x2) # load 0x00003e00 from memory into f27
fmax.h f2, f21, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xbe00)
li x23, 0xb19bcb6f6e18f3a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f4, 0(x2) # load 0x0000be00 from memory into f4
fmax.h f23, f28, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x4000)
li x28, 0xd7b8b123162d0fe0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f24, 0(x2) # load 0x00007c01 from memory into f24
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
fmax.h f28, f24, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xc000)
li x4, 0x788c3de395bf1915 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
fmax.h f4, f6, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x400)
li x9, 0xb3768e3785232481 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f15, 0(x2) # load 0x00007c01 from memory into f15
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f3, 0(x2) # load 0x00000400 from memory into f3
fmax.h f9, f15, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8400)
li x27, 0xaa1ae59454056ac1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f31, 0(x2) # load 0x00008400 from memory into f31
fmax.h f27, f17, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7bff)
li x11, 0x8d2cb29089ab7143 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f22, 0(x2) # load 0x00007c01 from memory into f22
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
fmax.h f11, f22, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfbff)
li x12, 0xf21349ce008cf0ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f4, 0(x2) # load 0x00007c01 from memory into f4
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
fmax.h f12, f4, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3ff)
li x7, 0xa05fda388d0fdfec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
fmax.h f7, f28, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x83ff)
li x22, 0xaa868026a603ad8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
fmax.h f22, f12, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x200)
li x4, 0xe3021bf3be963dfc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f23, 0(x2) # load 0x00007c01 from memory into f23
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f2, 0(x2) # load 0x00000200 from memory into f2
fmax.h f4, f23, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8200)
li x8, 0x1346fdcc222aa3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f20, 0(x2) # load 0x00007c01 from memory into f20
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f18, 0(x2) # load 0x00008200 from memory into f18
fmax.h f8, f20, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x1)
li x8, 0x8f9cc7614000ae8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f30, 0(x2) # load 0x00007c01 from memory into f30
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f1, 0(x2) # load 0x00000001 from memory into f1
fmax.h f8, f30, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8001)
li x9, 0x4ea7275f37c26257 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f29, 0(x2) # load 0x00007c01 from memory into f29
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f22, 0(x2) # load 0x00008001 from memory into f22
fmax.h f9, f29, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7c00)
li x12, 0x5d4ad8345365f2d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
fmax.h f12, f17, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfc00)
li x6, 0xa721d31fd0c5c578 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f29, 0(x2) # load 0x00007c01 from memory into f29
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
fmax.h f6, f29, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7e00)
li x13, 0xa8e886a38fa64087 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
fmax.h f13, f3, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7fff)
li x31, 0xe202ee5c0c5df72e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f5, 0(x2) # load 0x00007c01 from memory into f5
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f21, 0(x2) # load 0x00007fff from memory into f21
fmax.h f31, f5, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7c01)
li x12, 0x2bf6edbd36807eae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f7, 0(x2) # load 0x00007c01 from memory into f7
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f23, 0(x2) # load 0x00007c01 from memory into f23
fmax.h f12, f7, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7dff)
li x21, 0x2bfda4fbe244379c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f7, 0(x2) # load 0x00007c01 from memory into f7
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
fmax.h f21, f7, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x58b4)
li x26, 0x9df46c58dbfdad55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f2, 0(x2) # load 0x000058b4 from memory into f2
fmax.h f26, f25, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xc93a)
li x10, 0x67b09ac53bd3d4d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
fmax.h f10, f13, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x0)
li x9, 0x83bbed81e73c9454 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f14, 0(x2) # load 0x00007dff from memory into f14
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
fmax.h f9, f14, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8000)
li x13, 0xbb129c78c9718937 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f22, 0(x2) # load 0x00007dff from memory into f22
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f5, 0(x2) # load 0x00008000 from memory into f5
fmax.h f13, f22, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3c00)
li x19, 0xe6bf466e5e5cb8b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f29, 0(x2) # load 0x00007dff from memory into f29
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f8, 0(x2) # load 0x00003c00 from memory into f8
fmax.h f19, f29, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xbc00)
li x25, 0xeaa4fbf88a2cc3c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f31, 0(x2) # load 0x00007dff from memory into f31
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f11, 0(x2) # load 0x0000bc00 from memory into f11
fmax.h f25, f31, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3e00)
li x24, 0xfd967153e6e1a4cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
fmax.h f24, f20, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xbe00)
li x24, 0x62138f4e2a769c31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f22, 0(x2) # load 0x00007dff from memory into f22
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
fmax.h f24, f22, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x4000)
li x13, 0xbf409fffa265d47b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f12, 0(x2) # load 0x00007dff from memory into f12
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f11, 0(x2) # load 0x00004000 from memory into f11
fmax.h f13, f12, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xc000)
li x8, 0xcefc0378917d019a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f12, 0(x2) # load 0x00007dff from memory into f12
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
fmax.h f8, f12, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x400)
li x25, 0x2f3a9968cf14506e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f3, 0(x2) # load 0x00007dff from memory into f3
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
fmax.h f25, f3, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8400)
li x23, 0xfa88ab116da49908 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f28, 0(x2) # load 0x00007dff from memory into f28
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f14, 0(x2) # load 0x00008400 from memory into f14
fmax.h f23, f28, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7bff)
li x28, 0xf4a98f568c28f2a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
fmax.h f28, f24, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfbff)
li x24, 0x324697edc68f1408 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f20, 0(x2) # load 0x0000fbff from memory into f20
fmax.h f24, f30, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3ff)
li x1, 0xc4e190983d194040 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f22, 0(x2) # load 0x00007dff from memory into f22
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f31, 0(x2) # load 0x000003ff from memory into f31
fmax.h f1, f22, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x83ff)
li x10, 0x14b3f46e2059ba51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f31, 0(x2) # load 0x00007dff from memory into f31
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f5, 0(x2) # load 0x000083ff from memory into f5
fmax.h f10, f31, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x200)
li x23, 0x442be4d421c1bd24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f25, 0(x2) # load 0x00007dff from memory into f25
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f20, 0(x2) # load 0x00000200 from memory into f20
fmax.h f23, f25, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8200)
li x20, 0x07c6c7a556d6ca00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f2, 0(x2) # load 0x00007dff from memory into f2
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f8, 0(x2) # load 0x00008200 from memory into f8
fmax.h f20, f2, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x1)
li x22, 0xd41b44781edc82ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f17, 0(x2) # load 0x00007dff from memory into f17
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f4, 0(x2) # load 0x00000001 from memory into f4
fmax.h f22, f17, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8001)
li x4, 0xb6881699ad32f30d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f26, 0(x2) # load 0x00007dff from memory into f26
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
fmax.h f4, f26, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7c00)
li x20, 0x01688ac9b9d8e52c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f18, 0(x2) # load 0x00007dff from memory into f18
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
fmax.h f20, f18, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfc00)
li x30, 0xff956c1b51938380 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f18, 0(x2) # load 0x00007dff from memory into f18
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f7, 0(x2) # load 0x0000fc00 from memory into f7
fmax.h f30, f18, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7e00)
li x19, 0x75d635913982e6d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f8, 0(x2) # load 0x00007dff from memory into f8
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f22, 0(x2) # load 0x00007e00 from memory into f22
fmax.h f19, f8, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7fff)
li x24, 0xe694f0a17aaf83d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f16, 0(x2) # load 0x00007dff from memory into f16
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f15, 0(x2) # load 0x00007fff from memory into f15
fmax.h f24, f16, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7c01)
li x23, 0x83c75f6427daacd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f24, 0(x2) # load 0x00007c01 from memory into f24
fmax.h f23, f5, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7dff)
li x12, 0x2eeec25e36704adf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f6, 0(x2) # load 0x00007dff from memory into f6
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f26, 0(x2) # load 0x00007dff from memory into f26
fmax.h f12, f6, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x58b4)
li x16, 0x6e38cd5b43d1a300 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f29, 0(x2) # load 0x000058b4 from memory into f29
fmax.h f16, f5, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xc93a)
li x21, 0xc3d3516a1e727634 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f28, 0(x2) # load 0x00007dff from memory into f28
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
fmax.h f21, f28, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x0)
li x19, 0xb3fe037a1bb97a80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f22, 0(x2) # load 0x000058b4 from memory into f22
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f4, 0(x2) # load 0x00000000 from memory into f4
fmax.h f19, f22, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8000)
li x2, 0xd15fe3332240e3b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f12, 0(x2) # load 0x000058b4 from memory into f12
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
fmax.h f2, f12, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3c00)
li x3, 0x7f9d79b94778254a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f19, 0(x2) # load 0x000058b4 from memory into f19
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
fmax.h f3, f19, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xbc00)
li x19, 0x7fa2feafdc31ce1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f6, 0(x2) # load 0x000058b4 from memory into f6
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f13, 0(x2) # load 0x0000bc00 from memory into f13
fmax.h f19, f6, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3e00)
li x20, 0x7455927b8ba8c847 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
fmax.h f20, f11, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xbe00)
li x14, 0x84b2eba32884a932 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
fmax.h f14, f13, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x4000)
li x18, 0xd5f5a78202233180 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f4, 0(x2) # load 0x000058b4 from memory into f4
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f15, 0(x2) # load 0x00004000 from memory into f15
fmax.h f18, f4, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xc000)
li x12, 0x5baa6c9ed3ce5f0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f14, 0(x2) # load 0x000058b4 from memory into f14
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
fmax.h f12, f14, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x400)
li x20, 0x1b78a16d12684a9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f19, 0(x2) # load 0x00000400 from memory into f19
fmax.h f20, f17, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8400)
li x21, 0x57867061629ecbad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
fmax.h f21, f10, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7bff)
li x15, 0x04e16366a2b9f66b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f22, 0(x2) # load 0x00007bff from memory into f22
fmax.h f15, f18, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfbff)
li x24, 0x2772ec5855308455 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f15, 0(x2) # load 0x000058b4 from memory into f15
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
fmax.h f24, f15, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3ff)
li x27, 0xb6635f44b3d3f4d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f20, 0(x2) # load 0x000003ff from memory into f20
fmax.h f27, f18, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x83ff)
li x8, 0x4fcc94bd6996b028 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f27, 0(x2) # load 0x000083ff from memory into f27
fmax.h f8, f18, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x200)
li x5, 0x2748315e30beea44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f27, 0(x2) # load 0x000058b4 from memory into f27
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f6, 0(x2) # load 0x00000200 from memory into f6
fmax.h f5, f27, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8200)
li x20, 0xb8f9c0d61c7b9035 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f12, 0(x2) # load 0x00008200 from memory into f12
fmax.h f20, f23, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x1)
li x7, 0x05365a6cee926dea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f14, 0(x2) # load 0x000058b4 from memory into f14
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f9, 0(x2) # load 0x00000001 from memory into f9
fmax.h f7, f14, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8001)
li x1, 0xe092c05296ac7ea0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
fmax.h f1, f24, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7c00)
li x1, 0x89efbb3ebc1ce025 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f31, 0(x2) # load 0x000058b4 from memory into f31
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f13, 0(x2) # load 0x00007c00 from memory into f13
fmax.h f1, f31, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfc00)
li x1, 0xef6aab22ebaf5473 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
fmax.h f1, f10, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7e00)
li x12, 0xf18ccd52ebcf66db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f19, 0(x2) # load 0x000058b4 from memory into f19
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f17, 0(x2) # load 0x00007e00 from memory into f17
fmax.h f12, f19, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7fff)
li x13, 0xe8eb7a10001599c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f19, 0(x2) # load 0x00007fff from memory into f19
fmax.h f13, f17, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7c01)
li x4, 0xb02feba97e0607ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f25, 0(x2) # load 0x000058b4 from memory into f25
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f19, 0(x2) # load 0x00007c01 from memory into f19
fmax.h f4, f25, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7dff)
li x26, 0x44d76e872b9f7f36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f1, 0(x2) # load 0x00007dff from memory into f1
fmax.h f26, f23, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x58b4)
li x14, 0x2ea05d3dca755843 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f22, 0(x2) # load 0x000058b4 from memory into f22
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
fmax.h f14, f22, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xc93a)
li x18, 0x23aa51fe8a29aa19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f25, 0(x2) # load 0x0000c93a from memory into f25
fmax.h f18, f11, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x0)
li x7, 0x463f4d452e5e3d6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f27, 0(x2) # load 0x0000c93a from memory into f27
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f26, 0(x2) # load 0x00000000 from memory into f26
fmax.h f7, f27, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8000)
li x8, 0xbc7961431b53931a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f24, 0(x2) # load 0x0000c93a from memory into f24
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
fmax.h f8, f24, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3c00)
li x26, 0x842935517295f6a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f14, 0(x2) # load 0x0000c93a from memory into f14
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
fmax.h f26, f14, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xbc00)
li x8, 0x6a0d7e86d60b55cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
fmax.h f8, f18, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3e00)
li x25, 0xfe32cceef4bf9107 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f14, 0(x2) # load 0x0000c93a from memory into f14
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f31, 0(x2) # load 0x00003e00 from memory into f31
fmax.h f25, f14, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xbe00)
li x27, 0x7f64b0dbbe442ee1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f1, 0(x2) # load 0x0000c93a from memory into f1
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
fmax.h f27, f1, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x4000)
li x17, 0x6bb05c0427f2667d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
fmax.h f17, f26, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xc000)
li x12, 0xafc2168736e08255 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
fmax.h f12, f17, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x400)
li x1, 0xf6246ededf4743b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f23, 0(x2) # load 0x0000c93a from memory into f23
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f15, 0(x2) # load 0x00000400 from memory into f15
fmax.h f1, f23, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8400)
li x7, 0xdbeffd3e90738e9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f8, 0(x2) # load 0x0000c93a from memory into f8
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
fmax.h f7, f8, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7bff)
li x14, 0x3198793eb84c8c8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f3, 0(x2) # load 0x0000c93a from memory into f3
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f25, 0(x2) # load 0x00007bff from memory into f25
fmax.h f14, f3, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfbff)
li x29, 0x2b9223c86e6678c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f6, 0(x2) # load 0x0000fbff from memory into f6
fmax.h f29, f21, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3ff)
li x16, 0x73b970701513d14a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f5, 0(x2) # load 0x0000c93a from memory into f5
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f1, 0(x2) # load 0x000003ff from memory into f1
fmax.h f16, f5, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x83ff)
li x16, 0x3e04d9c8c8b6b07a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f31, 0(x2) # load 0x0000c93a from memory into f31
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
fmax.h f16, f31, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x200)
li x23, 0x5c7f84eb293124c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f8, 0(x2) # load 0x0000c93a from memory into f8
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
fmax.h f23, f8, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8200)
li x6, 0xccc3b0118823d671 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
fmax.h f6, f30, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x1)
li x20, 0xcd27a6e1cdd9075b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
fmax.h f20, f7, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8001)
li x22, 0x3400a957c799d561 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f1, 0(x2) # load 0x00008001 from memory into f1
fmax.h f22, f7, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7c00)
li x13, 0x13637a3e521a4069 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f19, 0(x2) # load 0x0000c93a from memory into f19
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f25, 0(x2) # load 0x00007c00 from memory into f25
fmax.h f13, f19, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfc00)
li x30, 0x88269f04be218225 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f13, 0(x2) # load 0x0000fc00 from memory into f13
fmax.h f30, f20, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7e00)
li x7, 0x06113388da0484e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
fmax.h f7, f26, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7fff)
li x21, 0x55b2346c120b5d00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f19, 0(x2) # load 0x0000c93a from memory into f19
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
fmax.h f21, f19, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7c01)
li x9, 0x9e06ec0f54bb7353 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f13, 0(x2) # load 0x0000c93a from memory into f13
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f23, 0(x2) # load 0x00007c01 from memory into f23
fmax.h f9, f13, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7dff)
li x13, 0xce2a2adfabc6e0dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f15, 0(x2) # load 0x0000c93a from memory into f15
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f10, 0(x2) # load 0x00007dff from memory into f10
fmax.h f13, f15, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x58b4)
li x9, 0x319af6170a37a957 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
fmax.h f9, f2, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xc93a)
li x25, 0x644a58298c7b8d7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f3, 0(x2) # load 0x0000c93a from memory into f3
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
fmax.h f25, f3, f7 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x3ae3f5d3627229a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfd0383d1782d275e # load x3 with value 0xfd0383d1782d275e
sw x3, 0(x2) # store 0xfd0383d1782d275e in memory
flh f7, 0(x2) # load 0xfd0383d1782d275e from memory into f7
li x3, 0xb346d2af68e5ba05 # load x3 with value 0xb346d2af68e5ba05
sw x3, 0(x2) # store 0xb346d2af68e5ba05 in memory
flh f25, 0(x2) # load 0xb346d2af68e5ba05 from memory into f25
fmax.h f0, f7, f25 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x233fc5eb5ecd85df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcb55c1fb9abb7a62 # load x3 with value 0xcb55c1fb9abb7a62
sw x3, 0(x2) # store 0xcb55c1fb9abb7a62 in memory
flh f9, 0(x2) # load 0xcb55c1fb9abb7a62 from memory into f9
li x3, 0xb47428d3813c1eb8 # load x3 with value 0xb47428d3813c1eb8
sw x3, 0(x2) # store 0xb47428d3813c1eb8 in memory
flh f20, 0(x2) # load 0xb47428d3813c1eb8 from memory into f20
fmax.h f1, f9, f20 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x910071e6e946beb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3a79a1074feb51f4 # load x3 with value 0x3a79a1074feb51f4
sw x3, 0(x2) # store 0x3a79a1074feb51f4 in memory
flh f17, 0(x2) # load 0x3a79a1074feb51f4 from memory into f17
li x3, 0x8237cff66b964b8c # load x3 with value 0x8237cff66b964b8c
sw x3, 0(x2) # store 0x8237cff66b964b8c in memory
flh f11, 0(x2) # load 0x8237cff66b964b8c from memory into f11
fmax.h f2, f17, f11 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0xdede5a4dff315289 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3d58795067295d70 # load x3 with value 0x3d58795067295d70
sw x3, 0(x2) # store 0x3d58795067295d70 in memory
flh f27, 0(x2) # load 0x3d58795067295d70 from memory into f27
li x3, 0x3a6d99e8788f6cf2 # load x3 with value 0x3a6d99e8788f6cf2
sw x3, 0(x2) # store 0x3a6d99e8788f6cf2 in memory
flh f1, 0(x2) # load 0x3a6d99e8788f6cf2 from memory into f1
fmax.h f3, f27, f1 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0xa4a28b35809ae94d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa4d89cca6b9cd45e # load x3 with value 0xa4d89cca6b9cd45e
sw x3, 0(x2) # store 0xa4d89cca6b9cd45e in memory
flh f1, 0(x2) # load 0xa4d89cca6b9cd45e from memory into f1
li x3, 0x9c5527b3bf5e7c8d # load x3 with value 0x9c5527b3bf5e7c8d
sw x3, 0(x2) # store 0x9c5527b3bf5e7c8d in memory
flh f10, 0(x2) # load 0x9c5527b3bf5e7c8d from memory into f10
fmax.h f4, f1, f10 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0xdc896369e737d51a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x266ebc5629e065ed # load x3 with value 0x266ebc5629e065ed
sw x3, 0(x2) # store 0x266ebc5629e065ed in memory
flh f23, 0(x2) # load 0x266ebc5629e065ed from memory into f23
li x3, 0x1bca659624ea34ec # load x3 with value 0x1bca659624ea34ec
sw x3, 0(x2) # store 0x1bca659624ea34ec in memory
flh f29, 0(x2) # load 0x1bca659624ea34ec from memory into f29
fmax.h f5, f23, f29 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0xd98e1093672ad37d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2e595a2d7c14da1e # load x3 with value 0x2e595a2d7c14da1e
sw x3, 0(x2) # store 0x2e595a2d7c14da1e in memory
flh f1, 0(x2) # load 0x2e595a2d7c14da1e from memory into f1
li x3, 0x3a50094a8749bbca # load x3 with value 0x3a50094a8749bbca
sw x3, 0(x2) # store 0x3a50094a8749bbca in memory
flh f26, 0(x2) # load 0x3a50094a8749bbca from memory into f26
fmax.h f6, f1, f26 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x5be7729dcb67b505 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2cbd92ed939360d9 # load x3 with value 0x2cbd92ed939360d9
sw x3, 0(x2) # store 0x2cbd92ed939360d9 in memory
flh f26, 0(x2) # load 0x2cbd92ed939360d9 from memory into f26
li x3, 0xcdeaffbc34518a70 # load x3 with value 0xcdeaffbc34518a70
sw x3, 0(x2) # store 0xcdeaffbc34518a70 in memory
flh f24, 0(x2) # load 0xcdeaffbc34518a70 from memory into f24
fmax.h f7, f26, f24 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x5130708495c949ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3260e310a817033f # load x3 with value 0x3260e310a817033f
sw x3, 0(x2) # store 0x3260e310a817033f in memory
flh f11, 0(x2) # load 0x3260e310a817033f from memory into f11
li x3, 0xa26d4c70fae2d72e # load x3 with value 0xa26d4c70fae2d72e
sw x3, 0(x2) # store 0xa26d4c70fae2d72e in memory
flh f26, 0(x2) # load 0xa26d4c70fae2d72e from memory into f26
fmax.h f8, f11, f26 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x92056561b57e6cbc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9bfb82106ded384f # load x3 with value 0x9bfb82106ded384f
sw x3, 0(x2) # store 0x9bfb82106ded384f in memory
flh f3, 0(x2) # load 0x9bfb82106ded384f from memory into f3
li x3, 0x6d10c58f6aa57ebe # load x3 with value 0x6d10c58f6aa57ebe
sw x3, 0(x2) # store 0x6d10c58f6aa57ebe in memory
flh f4, 0(x2) # load 0x6d10c58f6aa57ebe from memory into f4
fmax.h f9, f3, f4 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x6cb3fee310d31fe7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9f747d00202180ab # load x3 with value 0x9f747d00202180ab
sw x3, 0(x2) # store 0x9f747d00202180ab in memory
flh f4, 0(x2) # load 0x9f747d00202180ab from memory into f4
li x3, 0x49a6a0b6af4ca7fa # load x3 with value 0x49a6a0b6af4ca7fa
sw x3, 0(x2) # store 0x49a6a0b6af4ca7fa in memory
flh f26, 0(x2) # load 0x49a6a0b6af4ca7fa from memory into f26
fmax.h f10, f4, f26 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x5f18336775d87523 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdf68577a71c9b9e # load x3 with value 0xdf68577a71c9b9e
sw x3, 0(x2) # store 0xdf68577a71c9b9e in memory
flh f19, 0(x2) # load 0xdf68577a71c9b9e from memory into f19
li x3, 0xf96bd5effd16dead # load x3 with value 0xf96bd5effd16dead
sw x3, 0(x2) # store 0xf96bd5effd16dead in memory
flh f11, 0(x2) # load 0xf96bd5effd16dead from memory into f11
fmax.h f11, f19, f11 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x6100fa5cfad47a39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x98a70f4a993733d2 # load x3 with value 0x98a70f4a993733d2
sw x3, 0(x2) # store 0x98a70f4a993733d2 in memory
flh f30, 0(x2) # load 0x98a70f4a993733d2 from memory into f30
li x3, 0xcbea86161f71a54d # load x3 with value 0xcbea86161f71a54d
sw x3, 0(x2) # store 0xcbea86161f71a54d in memory
flh f29, 0(x2) # load 0xcbea86161f71a54d from memory into f29
fmax.h f12, f30, f29 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x74a30853316565cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x75d2da7a95fe3443 # load x3 with value 0x75d2da7a95fe3443
sw x3, 0(x2) # store 0x75d2da7a95fe3443 in memory
flh f12, 0(x2) # load 0x75d2da7a95fe3443 from memory into f12
li x3, 0x4bde9d099c84b330 # load x3 with value 0x4bde9d099c84b330
sw x3, 0(x2) # store 0x4bde9d099c84b330 in memory
flh f29, 0(x2) # load 0x4bde9d099c84b330 from memory into f29
fmax.h f13, f12, f29 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x57b1f92cc1e49005 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5d98936780ec35bb # load x3 with value 0x5d98936780ec35bb
sw x3, 0(x2) # store 0x5d98936780ec35bb in memory
flh f5, 0(x2) # load 0x5d98936780ec35bb from memory into f5
li x3, 0xb8f7027ea03e60ef # load x3 with value 0xb8f7027ea03e60ef
sw x3, 0(x2) # store 0xb8f7027ea03e60ef in memory
flh f12, 0(x2) # load 0xb8f7027ea03e60ef from memory into f12
fmax.h f14, f5, f12 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0xdeb5c41931231f1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x86e46cd2334a1c4f # load x3 with value 0x86e46cd2334a1c4f
sw x3, 0(x2) # store 0x86e46cd2334a1c4f in memory
flh f19, 0(x2) # load 0x86e46cd2334a1c4f from memory into f19
li x3, 0x226ca88799a02085 # load x3 with value 0x226ca88799a02085
sw x3, 0(x2) # store 0x226ca88799a02085 in memory
flh f7, 0(x2) # load 0x226ca88799a02085 from memory into f7
fmax.h f15, f19, f7 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x4564bf3acab53cb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x241a084df4664a1d # load x3 with value 0x241a084df4664a1d
sw x3, 0(x2) # store 0x241a084df4664a1d in memory
flh f19, 0(x2) # load 0x241a084df4664a1d from memory into f19
li x3, 0x9edbe5c924d57116 # load x3 with value 0x9edbe5c924d57116
sw x3, 0(x2) # store 0x9edbe5c924d57116 in memory
flh f11, 0(x2) # load 0x9edbe5c924d57116 from memory into f11
fmax.h f16, f19, f11 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x3a3996b81c5a1994 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2065d6887e4c1dc3 # load x3 with value 0x2065d6887e4c1dc3
sw x3, 0(x2) # store 0x2065d6887e4c1dc3 in memory
flh f20, 0(x2) # load 0x2065d6887e4c1dc3 from memory into f20
li x3, 0xb442fee7d33ae35 # load x3 with value 0xb442fee7d33ae35
sw x3, 0(x2) # store 0xb442fee7d33ae35 in memory
flh f8, 0(x2) # load 0xb442fee7d33ae35 from memory into f8
fmax.h f17, f20, f8 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x6e5fec5643db4602 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc1a8806268357991 # load x3 with value 0xc1a8806268357991
sw x3, 0(x2) # store 0xc1a8806268357991 in memory
flh f21, 0(x2) # load 0xc1a8806268357991 from memory into f21
li x3, 0x1157b26f35207af5 # load x3 with value 0x1157b26f35207af5
sw x3, 0(x2) # store 0x1157b26f35207af5 in memory
flh f7, 0(x2) # load 0x1157b26f35207af5 from memory into f7
fmax.h f18, f21, f7 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x9c984fa33ab33b10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xda7811693bf2fe81 # load x3 with value 0xda7811693bf2fe81
sw x3, 0(x2) # store 0xda7811693bf2fe81 in memory
flh f10, 0(x2) # load 0xda7811693bf2fe81 from memory into f10
li x3, 0x8b25aac067e5eb28 # load x3 with value 0x8b25aac067e5eb28
sw x3, 0(x2) # store 0x8b25aac067e5eb28 in memory
flh f7, 0(x2) # load 0x8b25aac067e5eb28 from memory into f7
fmax.h f19, f10, f7 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0xf449bd8119e7660f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x39205ebf06969ed8 # load x3 with value 0x39205ebf06969ed8
sw x3, 0(x2) # store 0x39205ebf06969ed8 in memory
flh f23, 0(x2) # load 0x39205ebf06969ed8 from memory into f23
li x3, 0xbf8efd1b85f7ed6 # load x3 with value 0xbf8efd1b85f7ed6
sw x3, 0(x2) # store 0xbf8efd1b85f7ed6 in memory
flh f15, 0(x2) # load 0xbf8efd1b85f7ed6 from memory into f15
fmax.h f20, f23, f15 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0xdfaccd205da31739 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x17fbc94ad9af334b # load x3 with value 0x17fbc94ad9af334b
sw x3, 0(x2) # store 0x17fbc94ad9af334b in memory
flh f13, 0(x2) # load 0x17fbc94ad9af334b from memory into f13
li x3, 0xe6f7779902333791 # load x3 with value 0xe6f7779902333791
sw x3, 0(x2) # store 0xe6f7779902333791 in memory
flh f1, 0(x2) # load 0xe6f7779902333791 from memory into f1
fmax.h f21, f13, f1 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x1fa2344eb4d6ae62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x22a11cbb0e3a2325 # load x3 with value 0x22a11cbb0e3a2325
sw x3, 0(x2) # store 0x22a11cbb0e3a2325 in memory
flh f2, 0(x2) # load 0x22a11cbb0e3a2325 from memory into f2
li x3, 0x3647e21c6a8eb802 # load x3 with value 0x3647e21c6a8eb802
sw x3, 0(x2) # store 0x3647e21c6a8eb802 in memory
flh f22, 0(x2) # load 0x3647e21c6a8eb802 from memory into f22
fmax.h f22, f2, f22 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x7bfca17cd5107095 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaae301f7d6078754 # load x3 with value 0xaae301f7d6078754
sw x3, 0(x2) # store 0xaae301f7d6078754 in memory
flh f1, 0(x2) # load 0xaae301f7d6078754 from memory into f1
li x3, 0xc7c2a1a6ec6d1e5b # load x3 with value 0xc7c2a1a6ec6d1e5b
sw x3, 0(x2) # store 0xc7c2a1a6ec6d1e5b in memory
flh f14, 0(x2) # load 0xc7c2a1a6ec6d1e5b from memory into f14
fmax.h f23, f1, f14 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x0de357b7ec502f1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfa40f629a9c75866 # load x3 with value 0xfa40f629a9c75866
sw x3, 0(x2) # store 0xfa40f629a9c75866 in memory
flh f15, 0(x2) # load 0xfa40f629a9c75866 from memory into f15
li x3, 0x96351ebad50e023c # load x3 with value 0x96351ebad50e023c
sw x3, 0(x2) # store 0x96351ebad50e023c in memory
flh f9, 0(x2) # load 0x96351ebad50e023c from memory into f9
fmax.h f24, f15, f9 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x690935b2e6a5c650 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4b86ab58141bd0b1 # load x3 with value 0x4b86ab58141bd0b1
sw x3, 0(x2) # store 0x4b86ab58141bd0b1 in memory
flh f9, 0(x2) # load 0x4b86ab58141bd0b1 from memory into f9
li x3, 0x5c2db0af61abbe51 # load x3 with value 0x5c2db0af61abbe51
sw x3, 0(x2) # store 0x5c2db0af61abbe51 in memory
flh f4, 0(x2) # load 0x5c2db0af61abbe51 from memory into f4
fmax.h f25, f9, f4 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x5c75c3b86434750a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1b765cf5c5344a24 # load x3 with value 0x1b765cf5c5344a24
sw x3, 0(x2) # store 0x1b765cf5c5344a24 in memory
flh f13, 0(x2) # load 0x1b765cf5c5344a24 from memory into f13
li x3, 0xab8b3ee01eaf46ae # load x3 with value 0xab8b3ee01eaf46ae
sw x3, 0(x2) # store 0xab8b3ee01eaf46ae in memory
flh f6, 0(x2) # load 0xab8b3ee01eaf46ae from memory into f6
fmax.h f26, f13, f6 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x7e43ee8ab5f7c23e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x60a991123c6d61f6 # load x3 with value 0x60a991123c6d61f6
sw x3, 0(x2) # store 0x60a991123c6d61f6 in memory
flh f2, 0(x2) # load 0x60a991123c6d61f6 from memory into f2
li x3, 0xbf8a7118c8155f79 # load x3 with value 0xbf8a7118c8155f79
sw x3, 0(x2) # store 0xbf8a7118c8155f79 in memory
flh f9, 0(x2) # load 0xbf8a7118c8155f79 from memory into f9
fmax.h f27, f2, f9 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0xcde2d811e32ac227 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe1b4525665092dee # load x3 with value 0xe1b4525665092dee
sw x3, 0(x2) # store 0xe1b4525665092dee in memory
flh f29, 0(x2) # load 0xe1b4525665092dee from memory into f29
li x3, 0xa23873418b7bb873 # load x3 with value 0xa23873418b7bb873
sw x3, 0(x2) # store 0xa23873418b7bb873 in memory
flh f17, 0(x2) # load 0xa23873418b7bb873 from memory into f17
fmax.h f28, f29, f17 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x4ac972ba740a5863 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcfa953a9197d1fd2 # load x3 with value 0xcfa953a9197d1fd2
sw x3, 0(x2) # store 0xcfa953a9197d1fd2 in memory
flh f17, 0(x2) # load 0xcfa953a9197d1fd2 from memory into f17
li x3, 0x2935fe18481c1e2d # load x3 with value 0x2935fe18481c1e2d
sw x3, 0(x2) # store 0x2935fe18481c1e2d in memory
flh f3, 0(x2) # load 0x2935fe18481c1e2d from memory into f3
fmax.h f29, f17, f3 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x963d0f38078a60f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5951b90d41615ea5 # load x3 with value 0x5951b90d41615ea5
sw x3, 0(x2) # store 0x5951b90d41615ea5 in memory
flh f2, 0(x2) # load 0x5951b90d41615ea5 from memory into f2
li x3, 0x8416b4004b8d8edc # load x3 with value 0x8416b4004b8d8edc
sw x3, 0(x2) # store 0x8416b4004b8d8edc in memory
flh f14, 0(x2) # load 0x8416b4004b8d8edc from memory into f14
fmax.h f30, f2, f14 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x42678908685e086b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa47ea2bae3a01fe4 # load x3 with value 0xa47ea2bae3a01fe4
sw x3, 0(x2) # store 0xa47ea2bae3a01fe4 in memory
flh f24, 0(x2) # load 0xa47ea2bae3a01fe4 from memory into f24
li x3, 0x27e6d044023003cb # load x3 with value 0x27e6d044023003cb
sw x3, 0(x2) # store 0x27e6d044023003cb in memory
flh f19, 0(x2) # load 0x27e6d044023003cb from memory into f19
fmax.h f31, f24, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x1, 0x41af40ade5b6d419 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdb1c85350fffdebc # load x3 with value 0xdb1c85350fffdebc
sw x3, 0(x2) # store 0xdb1c85350fffdebc in memory
flh f0, 0(x2) # load 0xdb1c85350fffdebc from memory into f0
li x3, 0xd050aa130424507c # load x3 with value 0xd050aa130424507c
sw x3, 0(x2) # store 0xd050aa130424507c in memory
flh f24, 0(x2) # load 0xd050aa130424507c from memory into f24
fmax.h f1, f0, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x19, 0x3552de7dbef85cf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf9e568b5320bbb5e # load x3 with value 0xf9e568b5320bbb5e
sw x3, 0(x2) # store 0xf9e568b5320bbb5e in memory
flh f1, 0(x2) # load 0xf9e568b5320bbb5e from memory into f1
li x3, 0xa3de8d7f942549ac # load x3 with value 0xa3de8d7f942549ac
sw x3, 0(x2) # store 0xa3de8d7f942549ac in memory
flh f15, 0(x2) # load 0xa3de8d7f942549ac from memory into f15
fmax.h f19, f1, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x29, 0xf6bb9bc5b7d26882 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd6443c164692ba01 # load x3 with value 0xd6443c164692ba01
sw x3, 0(x2) # store 0xd6443c164692ba01 in memory
flh f2, 0(x2) # load 0xd6443c164692ba01 from memory into f2
li x3, 0x3b63d2eab9a19511 # load x3 with value 0x3b63d2eab9a19511
sw x3, 0(x2) # store 0x3b63d2eab9a19511 in memory
flh f13, 0(x2) # load 0x3b63d2eab9a19511 from memory into f13
fmax.h f29, f2, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x29, 0x5a149a89355312ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd87fe8b85064d943 # load x3 with value 0xd87fe8b85064d943
sw x3, 0(x2) # store 0xd87fe8b85064d943 in memory
flh f3, 0(x2) # load 0xd87fe8b85064d943 from memory into f3
li x3, 0x9613c665d666fe35 # load x3 with value 0x9613c665d666fe35
sw x3, 0(x2) # store 0x9613c665d666fe35 in memory
flh f22, 0(x2) # load 0x9613c665d666fe35 from memory into f22
fmax.h f29, f3, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x28, 0x24eafbadb567f249 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc2e064180854fd08 # load x3 with value 0xc2e064180854fd08
sw x3, 0(x2) # store 0xc2e064180854fd08 in memory
flh f4, 0(x2) # load 0xc2e064180854fd08 from memory into f4
li x3, 0xfc5aa0bf6dc11fac # load x3 with value 0xfc5aa0bf6dc11fac
sw x3, 0(x2) # store 0xfc5aa0bf6dc11fac in memory
flh f3, 0(x2) # load 0xfc5aa0bf6dc11fac from memory into f3
fmax.h f28, f4, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x14, 0x96d80f8191416762 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9e5bb995f378eaff # load x3 with value 0x9e5bb995f378eaff
sw x3, 0(x2) # store 0x9e5bb995f378eaff in memory
flh f5, 0(x2) # load 0x9e5bb995f378eaff from memory into f5
li x3, 0x933a79fc32323278 # load x3 with value 0x933a79fc32323278
sw x3, 0(x2) # store 0x933a79fc32323278 in memory
flh f28, 0(x2) # load 0x933a79fc32323278 from memory into f28
fmax.h f14, f5, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x6, 0x8d11e7d3de8d03bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfebdef8d4d5bed7 # load x3 with value 0xfebdef8d4d5bed7
sw x3, 0(x2) # store 0xfebdef8d4d5bed7 in memory
flh f6, 0(x2) # load 0xfebdef8d4d5bed7 from memory into f6
li x3, 0x6bdaa1368d879bd # load x3 with value 0x6bdaa1368d879bd
sw x3, 0(x2) # store 0x6bdaa1368d879bd in memory
flh f1, 0(x2) # load 0x6bdaa1368d879bd from memory into f1
fmax.h f6, f6, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x30, 0xdabd46ce3182afee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6f7a2f22eaad5232 # load x3 with value 0x6f7a2f22eaad5232
sw x3, 0(x2) # store 0x6f7a2f22eaad5232 in memory
flh f7, 0(x2) # load 0x6f7a2f22eaad5232 from memory into f7
li x3, 0xf278f994ba9eaaf1 # load x3 with value 0xf278f994ba9eaaf1
sw x3, 0(x2) # store 0xf278f994ba9eaaf1 in memory
flh f8, 0(x2) # load 0xf278f994ba9eaaf1 from memory into f8
fmax.h f30, f7, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x13, 0xf9de940e6ef2c7cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x511ab2a41ddb6f36 # load x3 with value 0x511ab2a41ddb6f36
sw x3, 0(x2) # store 0x511ab2a41ddb6f36 in memory
flh f8, 0(x2) # load 0x511ab2a41ddb6f36 from memory into f8
li x3, 0x84ea77350c3a101b # load x3 with value 0x84ea77350c3a101b
sw x3, 0(x2) # store 0x84ea77350c3a101b in memory
flh f12, 0(x2) # load 0x84ea77350c3a101b from memory into f12
fmax.h f13, f8, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x7, 0x310d6231ec1fc620 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3b05fd7460962aab # load x3 with value 0x3b05fd7460962aab
sw x3, 0(x2) # store 0x3b05fd7460962aab in memory
flh f9, 0(x2) # load 0x3b05fd7460962aab from memory into f9
li x3, 0x64193de6dee4576a # load x3 with value 0x64193de6dee4576a
sw x3, 0(x2) # store 0x64193de6dee4576a in memory
flh f26, 0(x2) # load 0x64193de6dee4576a from memory into f26
fmax.h f7, f9, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x19, 0x39852f6d55de81cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x724670e8eeb60d16 # load x3 with value 0x724670e8eeb60d16
sw x3, 0(x2) # store 0x724670e8eeb60d16 in memory
flh f10, 0(x2) # load 0x724670e8eeb60d16 from memory into f10
li x3, 0x6356c1413d145632 # load x3 with value 0x6356c1413d145632
sw x3, 0(x2) # store 0x6356c1413d145632 in memory
flh f2, 0(x2) # load 0x6356c1413d145632 from memory into f2
fmax.h f19, f10, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x25, 0xfb86ddcc1f256219 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x50034eb4d0c30ddf # load x3 with value 0x50034eb4d0c30ddf
sw x3, 0(x2) # store 0x50034eb4d0c30ddf in memory
flh f11, 0(x2) # load 0x50034eb4d0c30ddf from memory into f11
li x3, 0xc63f78807124950f # load x3 with value 0xc63f78807124950f
sw x3, 0(x2) # store 0xc63f78807124950f in memory
flh f20, 0(x2) # load 0xc63f78807124950f from memory into f20
fmax.h f25, f11, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x21, 0xa74418f08e02b86d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x271f7e0bec58d3c5 # load x3 with value 0x271f7e0bec58d3c5
sw x3, 0(x2) # store 0x271f7e0bec58d3c5 in memory
flh f12, 0(x2) # load 0x271f7e0bec58d3c5 from memory into f12
li x3, 0x82cba0e56a660803 # load x3 with value 0x82cba0e56a660803
sw x3, 0(x2) # store 0x82cba0e56a660803 in memory
flh f5, 0(x2) # load 0x82cba0e56a660803 from memory into f5
fmax.h f21, f12, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x29, 0x5784bf48063d5565 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd0198fc676b441e6 # load x3 with value 0xd0198fc676b441e6
sw x3, 0(x2) # store 0xd0198fc676b441e6 in memory
flh f13, 0(x2) # load 0xd0198fc676b441e6 from memory into f13
li x3, 0xa4d6d2f013436f9d # load x3 with value 0xa4d6d2f013436f9d
sw x3, 0(x2) # store 0xa4d6d2f013436f9d in memory
flh f12, 0(x2) # load 0xa4d6d2f013436f9d from memory into f12
fmax.h f29, f13, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x10, 0x5f37e6c2cd0972b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6358bce38da66aa3 # load x3 with value 0x6358bce38da66aa3
sw x3, 0(x2) # store 0x6358bce38da66aa3 in memory
flh f14, 0(x2) # load 0x6358bce38da66aa3 from memory into f14
li x3, 0x5d0156495bb67588 # load x3 with value 0x5d0156495bb67588
sw x3, 0(x2) # store 0x5d0156495bb67588 in memory
flh f18, 0(x2) # load 0x5d0156495bb67588 from memory into f18
fmax.h f10, f14, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x7, 0xe182180485617634 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa8a25a39891bfed # load x3 with value 0xa8a25a39891bfed
sw x3, 0(x2) # store 0xa8a25a39891bfed in memory
flh f15, 0(x2) # load 0xa8a25a39891bfed from memory into f15
li x3, 0x7173cd2fd2e5ae1b # load x3 with value 0x7173cd2fd2e5ae1b
sw x3, 0(x2) # store 0x7173cd2fd2e5ae1b in memory
flh f16, 0(x2) # load 0x7173cd2fd2e5ae1b from memory into f16
fmax.h f7, f15, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x23, 0x5c83e518ca45a8ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbd7169eeb186abac # load x3 with value 0xbd7169eeb186abac
sw x3, 0(x2) # store 0xbd7169eeb186abac in memory
flh f16, 0(x2) # load 0xbd7169eeb186abac from memory into f16
li x3, 0x84774f5638501f7b # load x3 with value 0x84774f5638501f7b
sw x3, 0(x2) # store 0x84774f5638501f7b in memory
flh f29, 0(x2) # load 0x84774f5638501f7b from memory into f29
fmax.h f23, f16, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x26, 0x3d95d2d023e6926b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x981730f75ee5f6c3 # load x3 with value 0x981730f75ee5f6c3
sw x3, 0(x2) # store 0x981730f75ee5f6c3 in memory
flh f17, 0(x2) # load 0x981730f75ee5f6c3 from memory into f17
li x3, 0xfd9c2b880f7cb9b # load x3 with value 0xfd9c2b880f7cb9b
sw x3, 0(x2) # store 0xfd9c2b880f7cb9b in memory
flh f1, 0(x2) # load 0xfd9c2b880f7cb9b from memory into f1
fmax.h f26, f17, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x12, 0x1395ec39664c9349 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010f66cb1ec4f1b # load x3 with value 0x8010f66cb1ec4f1b
sw x3, 0(x2) # store 0x8010f66cb1ec4f1b in memory
flh f18, 0(x2) # load 0x8010f66cb1ec4f1b from memory into f18
li x3, 0xd3be2df2ddb80e8 # load x3 with value 0xd3be2df2ddb80e8
sw x3, 0(x2) # store 0xd3be2df2ddb80e8 in memory
flh f16, 0(x2) # load 0xd3be2df2ddb80e8 from memory into f16
fmax.h f12, f18, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x17, 0x855b911127c4a3c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcdbcd22476132b14 # load x3 with value 0xcdbcd22476132b14
sw x3, 0(x2) # store 0xcdbcd22476132b14 in memory
flh f19, 0(x2) # load 0xcdbcd22476132b14 from memory into f19
li x3, 0xf3a25ea357e5e189 # load x3 with value 0xf3a25ea357e5e189
sw x3, 0(x2) # store 0xf3a25ea357e5e189 in memory
flh f22, 0(x2) # load 0xf3a25ea357e5e189 from memory into f22
fmax.h f17, f19, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x12, 0x92feb16c4bf9cce8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe35f2916c014fb1d # load x3 with value 0xe35f2916c014fb1d
sw x3, 0(x2) # store 0xe35f2916c014fb1d in memory
flh f20, 0(x2) # load 0xe35f2916c014fb1d from memory into f20
li x3, 0xeac5ea94d87887ff # load x3 with value 0xeac5ea94d87887ff
sw x3, 0(x2) # store 0xeac5ea94d87887ff in memory
flh f7, 0(x2) # load 0xeac5ea94d87887ff from memory into f7
fmax.h f12, f20, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x21, 0x602acdf68c2d6530 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8ec908521027f54a # load x3 with value 0x8ec908521027f54a
sw x3, 0(x2) # store 0x8ec908521027f54a in memory
flh f21, 0(x2) # load 0x8ec908521027f54a from memory into f21
li x3, 0xb36b4fa70037af43 # load x3 with value 0xb36b4fa70037af43
sw x3, 0(x2) # store 0xb36b4fa70037af43 in memory
flh f13, 0(x2) # load 0xb36b4fa70037af43 from memory into f13
fmax.h f21, f21, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x4, 0x99cfb586f63ee80b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcb39d7a3be8cfee0 # load x3 with value 0xcb39d7a3be8cfee0
sw x3, 0(x2) # store 0xcb39d7a3be8cfee0 in memory
flh f22, 0(x2) # load 0xcb39d7a3be8cfee0 from memory into f22
li x3, 0x95cdc4e60219ae71 # load x3 with value 0x95cdc4e60219ae71
sw x3, 0(x2) # store 0x95cdc4e60219ae71 in memory
flh f30, 0(x2) # load 0x95cdc4e60219ae71 from memory into f30
fmax.h f4, f22, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x17, 0x1720b95f3405aea8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdaeaee8908c1d345 # load x3 with value 0xdaeaee8908c1d345
sw x3, 0(x2) # store 0xdaeaee8908c1d345 in memory
flh f23, 0(x2) # load 0xdaeaee8908c1d345 from memory into f23
li x3, 0xf2a8642d124493a2 # load x3 with value 0xf2a8642d124493a2
sw x3, 0(x2) # store 0xf2a8642d124493a2 in memory
flh f24, 0(x2) # load 0xf2a8642d124493a2 from memory into f24
fmax.h f17, f23, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x17, 0x5c1d51cf97b46c55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdf83b8556393082f # load x3 with value 0xdf83b8556393082f
sw x3, 0(x2) # store 0xdf83b8556393082f in memory
flh f24, 0(x2) # load 0xdf83b8556393082f from memory into f24
li x3, 0xd4df3e8a10ceec74 # load x3 with value 0xd4df3e8a10ceec74
sw x3, 0(x2) # store 0xd4df3e8a10ceec74 in memory
flh f20, 0(x2) # load 0xd4df3e8a10ceec74 from memory into f20
fmax.h f17, f24, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x6, 0x28c9203f9e97a82f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd7bbc45cad78e4bf # load x3 with value 0xd7bbc45cad78e4bf
sw x3, 0(x2) # store 0xd7bbc45cad78e4bf in memory
flh f25, 0(x2) # load 0xd7bbc45cad78e4bf from memory into f25
li x3, 0x76fa5d21302ea83c # load x3 with value 0x76fa5d21302ea83c
sw x3, 0(x2) # store 0x76fa5d21302ea83c in memory
flh f12, 0(x2) # load 0x76fa5d21302ea83c from memory into f12
fmax.h f6, f25, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x21, 0x63ec22c7d87aa139 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdec71034a30e775 # load x3 with value 0xdec71034a30e775
sw x3, 0(x2) # store 0xdec71034a30e775 in memory
flh f26, 0(x2) # load 0xdec71034a30e775 from memory into f26
li x3, 0x26cea329249ea39c # load x3 with value 0x26cea329249ea39c
sw x3, 0(x2) # store 0x26cea329249ea39c in memory
flh f10, 0(x2) # load 0x26cea329249ea39c from memory into f10
fmax.h f21, f26, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x1, 0x22a5206c9dfa5622 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf2fff499e94ae23c # load x3 with value 0xf2fff499e94ae23c
sw x3, 0(x2) # store 0xf2fff499e94ae23c in memory
flh f27, 0(x2) # load 0xf2fff499e94ae23c from memory into f27
li x3, 0x5ab123099a5efb4b # load x3 with value 0x5ab123099a5efb4b
sw x3, 0(x2) # store 0x5ab123099a5efb4b in memory
flh f29, 0(x2) # load 0x5ab123099a5efb4b from memory into f29
fmax.h f1, f27, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x16, 0x00404d69762aa131 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2188ba4fe0c5e391 # load x3 with value 0x2188ba4fe0c5e391
sw x3, 0(x2) # store 0x2188ba4fe0c5e391 in memory
flh f28, 0(x2) # load 0x2188ba4fe0c5e391 from memory into f28
li x3, 0x88f4ac4e644fbc62 # load x3 with value 0x88f4ac4e644fbc62
sw x3, 0(x2) # store 0x88f4ac4e644fbc62 in memory
flh f1, 0(x2) # load 0x88f4ac4e644fbc62 from memory into f1
fmax.h f16, f28, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x14, 0xe1a3be4899094164 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2c22c3223104b680 # load x3 with value 0x2c22c3223104b680
sw x3, 0(x2) # store 0x2c22c3223104b680 in memory
flh f29, 0(x2) # load 0x2c22c3223104b680 from memory into f29
li x3, 0x26dd7eb55be7413c # load x3 with value 0x26dd7eb55be7413c
sw x3, 0(x2) # store 0x26dd7eb55be7413c in memory
flh f6, 0(x2) # load 0x26dd7eb55be7413c from memory into f6
fmax.h f14, f29, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x2, 0xdb90179c1ac4e729 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4636cae6d2ddba86 # load x3 with value 0x4636cae6d2ddba86
sw x3, 0(x2) # store 0x4636cae6d2ddba86 in memory
flh f30, 0(x2) # load 0x4636cae6d2ddba86 from memory into f30
li x3, 0xeab6f92adb018dd9 # load x3 with value 0xeab6f92adb018dd9
sw x3, 0(x2) # store 0xeab6f92adb018dd9 in memory
flh f27, 0(x2) # load 0xeab6f92adb018dd9 from memory into f27
fmax.h f2, f30, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x13, 0x640ac8b7245d6fd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xafad22e0f9577335 # load x3 with value 0xafad22e0f9577335
sw x3, 0(x2) # store 0xafad22e0f9577335 in memory
flh f31, 0(x2) # load 0xafad22e0f9577335 from memory into f31
li x3, 0xa7517c6e53922548 # load x3 with value 0xa7517c6e53922548
sw x3, 0(x2) # store 0xa7517c6e53922548 in memory
flh f3, 0(x2) # load 0xa7517c6e53922548 from memory into f3
fmax.h f13, f31, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x26, 0x634e6925c57c8b67 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf204904830805a0 # load x3 with value 0xf204904830805a0
sw x3, 0(x2) # store 0xf204904830805a0 in memory
flh f17, 0(x2) # load 0xf204904830805a0 from memory into f17
li x3, 0xd7b84ea804085955 # load x3 with value 0xd7b84ea804085955
sw x3, 0(x2) # store 0xd7b84ea804085955 in memory
flh f0, 0(x2) # load 0xd7b84ea804085955 from memory into f0
fmax.h f26, f17, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x2, 0xccd0329b396e7aa9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd6999045f6d78bca # load x3 with value 0xd6999045f6d78bca
sw x3, 0(x2) # store 0xd6999045f6d78bca in memory
flh f12, 0(x2) # load 0xd6999045f6d78bca from memory into f12
li x3, 0x28a245c3eaf2ef30 # load x3 with value 0x28a245c3eaf2ef30
sw x3, 0(x2) # store 0x28a245c3eaf2ef30 in memory
flh f1, 0(x2) # load 0x28a245c3eaf2ef30 from memory into f1
fmax.h f2, f12, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x14, 0x7fc3fe0420fe14ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa5fefdbd656aa754 # load x3 with value 0xa5fefdbd656aa754
sw x3, 0(x2) # store 0xa5fefdbd656aa754 in memory
flh f17, 0(x2) # load 0xa5fefdbd656aa754 from memory into f17
li x3, 0x947735a48255ab0b # load x3 with value 0x947735a48255ab0b
sw x3, 0(x2) # store 0x947735a48255ab0b in memory
flh f2, 0(x2) # load 0x947735a48255ab0b from memory into f2
fmax.h f14, f17, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x18, 0x982c870ac4de5b55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd139134785e12851 # load x3 with value 0xd139134785e12851
sw x3, 0(x2) # store 0xd139134785e12851 in memory
flh f7, 0(x2) # load 0xd139134785e12851 from memory into f7
li x3, 0x712269b0bb27f24d # load x3 with value 0x712269b0bb27f24d
sw x3, 0(x2) # store 0x712269b0bb27f24d in memory
flh f3, 0(x2) # load 0x712269b0bb27f24d from memory into f3
fmax.h f18, f7, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x19, 0xd8a02a53ce0fb3ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa5ca06209b99dcf1 # load x3 with value 0xa5ca06209b99dcf1
sw x3, 0(x2) # store 0xa5ca06209b99dcf1 in memory
flh f6, 0(x2) # load 0xa5ca06209b99dcf1 from memory into f6
li x3, 0xa25f13d1b03724d6 # load x3 with value 0xa25f13d1b03724d6
sw x3, 0(x2) # store 0xa25f13d1b03724d6 in memory
flh f4, 0(x2) # load 0xa25f13d1b03724d6 from memory into f4
fmax.h f19, f6, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x2, 0x1538da78a6c0a73b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x301e5f262903a176 # load x3 with value 0x301e5f262903a176
sw x3, 0(x2) # store 0x301e5f262903a176 in memory
flh f13, 0(x2) # load 0x301e5f262903a176 from memory into f13
li x3, 0x6ed5b86a7c5ff6bd # load x3 with value 0x6ed5b86a7c5ff6bd
sw x3, 0(x2) # store 0x6ed5b86a7c5ff6bd in memory
flh f5, 0(x2) # load 0x6ed5b86a7c5ff6bd from memory into f5
fmax.h f2, f13, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x2, 0x5db80ec08863f0b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x329db799f5487df2 # load x3 with value 0x329db799f5487df2
sw x3, 0(x2) # store 0x329db799f5487df2 in memory
flh f22, 0(x2) # load 0x329db799f5487df2 from memory into f22
li x3, 0xb4494120085d7f2f # load x3 with value 0xb4494120085d7f2f
sw x3, 0(x2) # store 0xb4494120085d7f2f in memory
flh f6, 0(x2) # load 0xb4494120085d7f2f from memory into f6
fmax.h f2, f22, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x18, 0x5b5bfacdf7934459 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x376f4fe1283ef9ad # load x3 with value 0x376f4fe1283ef9ad
sw x3, 0(x2) # store 0x376f4fe1283ef9ad in memory
flh f27, 0(x2) # load 0x376f4fe1283ef9ad from memory into f27
li x3, 0xef9eb343ac878e1e # load x3 with value 0xef9eb343ac878e1e
sw x3, 0(x2) # store 0xef9eb343ac878e1e in memory
flh f7, 0(x2) # load 0xef9eb343ac878e1e from memory into f7
fmax.h f18, f27, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x12, 0x7032996241b2dcb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe68787d80a5b4c9c # load x3 with value 0xe68787d80a5b4c9c
sw x3, 0(x2) # store 0xe68787d80a5b4c9c in memory
flh f14, 0(x2) # load 0xe68787d80a5b4c9c from memory into f14
li x3, 0x82335a1382570e3d # load x3 with value 0x82335a1382570e3d
sw x3, 0(x2) # store 0x82335a1382570e3d in memory
flh f8, 0(x2) # load 0x82335a1382570e3d from memory into f8
fmax.h f12, f14, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x21, 0x6b3ddb62e879462f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf2fa7c84eaadf6c # load x3 with value 0xf2fa7c84eaadf6c
sw x3, 0(x2) # store 0xf2fa7c84eaadf6c in memory
flh f13, 0(x2) # load 0xf2fa7c84eaadf6c from memory into f13
li x3, 0x57ef10b1228d8c20 # load x3 with value 0x57ef10b1228d8c20
sw x3, 0(x2) # store 0x57ef10b1228d8c20 in memory
flh f9, 0(x2) # load 0x57ef10b1228d8c20 from memory into f9
fmax.h f21, f13, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x27, 0xe30c697cdd50661f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdf8a252b18c9355b # load x3 with value 0xdf8a252b18c9355b
sw x3, 0(x2) # store 0xdf8a252b18c9355b in memory
flh f11, 0(x2) # load 0xdf8a252b18c9355b from memory into f11
li x3, 0x3ec61caee439b619 # load x3 with value 0x3ec61caee439b619
sw x3, 0(x2) # store 0x3ec61caee439b619 in memory
flh f10, 0(x2) # load 0x3ec61caee439b619 from memory into f10
fmax.h f27, f11, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x14, 0x593f61a09901c0ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc48dd62752e3feb # load x3 with value 0xc48dd62752e3feb
sw x3, 0(x2) # store 0xc48dd62752e3feb in memory
flh f24, 0(x2) # load 0xc48dd62752e3feb from memory into f24
li x3, 0x21e445e442fc89ab # load x3 with value 0x21e445e442fc89ab
sw x3, 0(x2) # store 0x21e445e442fc89ab in memory
flh f11, 0(x2) # load 0x21e445e442fc89ab from memory into f11
fmax.h f14, f24, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x3, 0xdbd7df05dbadb552 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x72503367b4fc61fb # load x3 with value 0x72503367b4fc61fb
sw x3, 0(x2) # store 0x72503367b4fc61fb in memory
flh f31, 0(x2) # load 0x72503367b4fc61fb from memory into f31
li x3, 0xb406b9bcdaa63115 # load x3 with value 0xb406b9bcdaa63115
sw x3, 0(x2) # store 0xb406b9bcdaa63115 in memory
flh f12, 0(x2) # load 0xb406b9bcdaa63115 from memory into f12
fmax.h f3, f31, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x13, 0x9a8770156575018e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdc975b86827ae9b # load x3 with value 0xdc975b86827ae9b
sw x3, 0(x2) # store 0xdc975b86827ae9b in memory
flh f29, 0(x2) # load 0xdc975b86827ae9b from memory into f29
li x3, 0x7296f5797168e218 # load x3 with value 0x7296f5797168e218
sw x3, 0(x2) # store 0x7296f5797168e218 in memory
flh f13, 0(x2) # load 0x7296f5797168e218 from memory into f13
fmax.h f13, f29, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x4, 0x79e2fa39d9e9279b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7d85d7b3b8a1d6a0 # load x3 with value 0x7d85d7b3b8a1d6a0
sw x3, 0(x2) # store 0x7d85d7b3b8a1d6a0 in memory
flh f17, 0(x2) # load 0x7d85d7b3b8a1d6a0 from memory into f17
li x3, 0xa17a17ca3006493a # load x3 with value 0xa17a17ca3006493a
sw x3, 0(x2) # store 0xa17a17ca3006493a in memory
flh f14, 0(x2) # load 0xa17a17ca3006493a from memory into f14
fmax.h f4, f17, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x16, 0x01a0d77d1deb538c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3c9581b8e32c29a3 # load x3 with value 0x3c9581b8e32c29a3
sw x3, 0(x2) # store 0x3c9581b8e32c29a3 in memory
flh f19, 0(x2) # load 0x3c9581b8e32c29a3 from memory into f19
li x3, 0xbb92792ec5dabcb5 # load x3 with value 0xbb92792ec5dabcb5
sw x3, 0(x2) # store 0xbb92792ec5dabcb5 in memory
flh f15, 0(x2) # load 0xbb92792ec5dabcb5 from memory into f15
fmax.h f16, f19, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x3, 0x9d509e632a47714f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc836296d18e630ac # load x3 with value 0xc836296d18e630ac
sw x3, 0(x2) # store 0xc836296d18e630ac in memory
flh f28, 0(x2) # load 0xc836296d18e630ac from memory into f28
li x3, 0x3f7eab98a349c91a # load x3 with value 0x3f7eab98a349c91a
sw x3, 0(x2) # store 0x3f7eab98a349c91a in memory
flh f16, 0(x2) # load 0x3f7eab98a349c91a from memory into f16
fmax.h f3, f28, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x5, 0x8041a6dc0e07a5c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaa1a9eee87c7657b # load x3 with value 0xaa1a9eee87c7657b
sw x3, 0(x2) # store 0xaa1a9eee87c7657b in memory
flh f2, 0(x2) # load 0xaa1a9eee87c7657b from memory into f2
li x3, 0xee7df8de70dc5088 # load x3 with value 0xee7df8de70dc5088
sw x3, 0(x2) # store 0xee7df8de70dc5088 in memory
flh f17, 0(x2) # load 0xee7df8de70dc5088 from memory into f17
fmax.h f5, f2, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x5, 0x3f216dc49fcd9c53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc01bcdf3ddb580d2 # load x3 with value 0xc01bcdf3ddb580d2
sw x3, 0(x2) # store 0xc01bcdf3ddb580d2 in memory
flh f3, 0(x2) # load 0xc01bcdf3ddb580d2 from memory into f3
li x3, 0xd2e2138ac6ee381d # load x3 with value 0xd2e2138ac6ee381d
sw x3, 0(x2) # store 0xd2e2138ac6ee381d in memory
flh f18, 0(x2) # load 0xd2e2138ac6ee381d from memory into f18
fmax.h f5, f3, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x5, 0x34b892f336efd4dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x373195c30ecf0d68 # load x3 with value 0x373195c30ecf0d68
sw x3, 0(x2) # store 0x373195c30ecf0d68 in memory
flh f29, 0(x2) # load 0x373195c30ecf0d68 from memory into f29
li x3, 0x2da1995e6551ce69 # load x3 with value 0x2da1995e6551ce69
sw x3, 0(x2) # store 0x2da1995e6551ce69 in memory
flh f19, 0(x2) # load 0x2da1995e6551ce69 from memory into f19
fmax.h f5, f29, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x28, 0xa462b7c67a98c0d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd3cf39c5695876a2 # load x3 with value 0xd3cf39c5695876a2
sw x3, 0(x2) # store 0xd3cf39c5695876a2 in memory
flh f31, 0(x2) # load 0xd3cf39c5695876a2 from memory into f31
li x3, 0x7bfa70950c90a691 # load x3 with value 0x7bfa70950c90a691
sw x3, 0(x2) # store 0x7bfa70950c90a691 in memory
flh f20, 0(x2) # load 0x7bfa70950c90a691 from memory into f20
fmax.h f28, f31, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x22, 0x27dd00d8faba95ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb0d65d1ae15de3bf # load x3 with value 0xb0d65d1ae15de3bf
sw x3, 0(x2) # store 0xb0d65d1ae15de3bf in memory
flh f2, 0(x2) # load 0xb0d65d1ae15de3bf from memory into f2
li x3, 0x20579ccbdcb77cae # load x3 with value 0x20579ccbdcb77cae
sw x3, 0(x2) # store 0x20579ccbdcb77cae in memory
flh f21, 0(x2) # load 0x20579ccbdcb77cae from memory into f21
fmax.h f22, f2, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x12, 0x4d4c426638706a10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9df3d4658382479c # load x3 with value 0x9df3d4658382479c
sw x3, 0(x2) # store 0x9df3d4658382479c in memory
flh f16, 0(x2) # load 0x9df3d4658382479c from memory into f16
li x3, 0x9a4cec7189502bd # load x3 with value 0x9a4cec7189502bd
sw x3, 0(x2) # store 0x9a4cec7189502bd in memory
flh f22, 0(x2) # load 0x9a4cec7189502bd from memory into f22
fmax.h f12, f16, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x22, 0xee67ba632654147a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x759d173d8b3ce87a # load x3 with value 0x759d173d8b3ce87a
sw x3, 0(x2) # store 0x759d173d8b3ce87a in memory
flh f28, 0(x2) # load 0x759d173d8b3ce87a from memory into f28
li x3, 0x7fa198c47b28669b # load x3 with value 0x7fa198c47b28669b
sw x3, 0(x2) # store 0x7fa198c47b28669b in memory
flh f23, 0(x2) # load 0x7fa198c47b28669b from memory into f23
fmax.h f22, f28, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x1, 0x343b711fb4629c24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2e6d22c013dcbfae # load x3 with value 0x2e6d22c013dcbfae
sw x3, 0(x2) # store 0x2e6d22c013dcbfae in memory
flh f14, 0(x2) # load 0x2e6d22c013dcbfae from memory into f14
li x3, 0x1158839dd004a4b9 # load x3 with value 0x1158839dd004a4b9
sw x3, 0(x2) # store 0x1158839dd004a4b9 in memory
flh f24, 0(x2) # load 0x1158839dd004a4b9 from memory into f24
fmax.h f1, f14, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x22, 0xddd420971b645a98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfbcb75ecf75c11cb # load x3 with value 0xfbcb75ecf75c11cb
sw x3, 0(x2) # store 0xfbcb75ecf75c11cb in memory
flh f17, 0(x2) # load 0xfbcb75ecf75c11cb from memory into f17
li x3, 0xf5ba0984d0dbfea2 # load x3 with value 0xf5ba0984d0dbfea2
sw x3, 0(x2) # store 0xf5ba0984d0dbfea2 in memory
flh f25, 0(x2) # load 0xf5ba0984d0dbfea2 from memory into f25
fmax.h f22, f17, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x5, 0x0967377db7e02403 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfa62bd70381e1c7c # load x3 with value 0xfa62bd70381e1c7c
sw x3, 0(x2) # store 0xfa62bd70381e1c7c in memory
flh f10, 0(x2) # load 0xfa62bd70381e1c7c from memory into f10
li x3, 0x573e05c3dc642f3e # load x3 with value 0x573e05c3dc642f3e
sw x3, 0(x2) # store 0x573e05c3dc642f3e in memory
flh f26, 0(x2) # load 0x573e05c3dc642f3e from memory into f26
fmax.h f5, f10, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x16, 0x020c8040fac0f9c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8a521a290f94857f # load x3 with value 0x8a521a290f94857f
sw x3, 0(x2) # store 0x8a521a290f94857f in memory
flh f31, 0(x2) # load 0x8a521a290f94857f from memory into f31
li x3, 0xd9994f8a7a01fbad # load x3 with value 0xd9994f8a7a01fbad
sw x3, 0(x2) # store 0xd9994f8a7a01fbad in memory
flh f27, 0(x2) # load 0xd9994f8a7a01fbad from memory into f27
fmax.h f16, f31, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x28, 0x3ed7ca29ec74eda7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x47ae8a39905a19d2 # load x3 with value 0x47ae8a39905a19d2
sw x3, 0(x2) # store 0x47ae8a39905a19d2 in memory
flh f31, 0(x2) # load 0x47ae8a39905a19d2 from memory into f31
li x3, 0x652736b83617bc47 # load x3 with value 0x652736b83617bc47
sw x3, 0(x2) # store 0x652736b83617bc47 in memory
flh f28, 0(x2) # load 0x652736b83617bc47 from memory into f28
fmax.h f28, f31, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x3, 0xdbfd0767284bfbb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd854894e6e892e8a # load x3 with value 0xd854894e6e892e8a
sw x3, 0(x2) # store 0xd854894e6e892e8a in memory
flh f19, 0(x2) # load 0xd854894e6e892e8a from memory into f19
li x3, 0x9db505baf52eeaf6 # load x3 with value 0x9db505baf52eeaf6
sw x3, 0(x2) # store 0x9db505baf52eeaf6 in memory
flh f29, 0(x2) # load 0x9db505baf52eeaf6 from memory into f29
fmax.h f3, f19, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x31, 0x7618e0e48117e4a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb66d18ca8cce1ab5 # load x3 with value 0xb66d18ca8cce1ab5
sw x3, 0(x2) # store 0xb66d18ca8cce1ab5 in memory
flh f15, 0(x2) # load 0xb66d18ca8cce1ab5 from memory into f15
li x3, 0x1c4f6310ac059a2 # load x3 with value 0x1c4f6310ac059a2
sw x3, 0(x2) # store 0x1c4f6310ac059a2 in memory
flh f30, 0(x2) # load 0x1c4f6310ac059a2 from memory into f30
fmax.h f31, f15, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x22, 0x9e07bb7088876905 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6342dce5ec001f21 # load x3 with value 0x6342dce5ec001f21
sw x3, 0(x2) # store 0x6342dce5ec001f21 in memory
flh f26, 0(x2) # load 0x6342dce5ec001f21 from memory into f26
li x3, 0xd12bd3f1279694be # load x3 with value 0xd12bd3f1279694be
sw x3, 0(x2) # store 0xd12bd3f1279694be in memory
flh f31, 0(x2) # load 0xd12bd3f1279694be from memory into f31
fmax.h f22, f26, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
