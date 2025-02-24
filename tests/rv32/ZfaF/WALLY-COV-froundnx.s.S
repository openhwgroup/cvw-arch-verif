///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/ZfaF//WALLY-COV-froundnx.s.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.073960
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
froundnx.s f1, f14 # perform first operation
froundnx.s f20, f1 # perform second operation

# Testcase cmp_gpr_hazard raw test
froundnx.s f4, f10 # perform first operation
froundnx.s f6, f24 # perform second operation

# Testcase cmp_gpr_hazard waw test
froundnx.s f8, f10 # perform first operation
froundnx.s f8, f19 # perform second operation

# Testcase cmp_gpr_hazard waw test
froundnx.s f9, f2 # perform first operation
froundnx.s f9, f15 # perform second operation

# Testcase cmp_gpr_hazard war test
froundnx.s f30, f31 # perform first operation
froundnx.s f31, f19 # perform second operation

# Testcase cmp_gpr_hazard war test
froundnx.s f25, f15 # perform first operation
froundnx.s f22, f13 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0x0bd0979e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6f163637 # load x3 with value 0x6f163637
sw x3, 0(x2) # store 0x6f163637 in memory
flw f0, 0(x2) # load 0x6f163637 from memory into f0
froundnx.s f0, f0 # perform operation
froundnx.s f0, f0 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0x2eca2759 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf2f07d68 # load x3 with value 0xf2f07d68
sw x3, 0(x2) # store 0xf2f07d68 in memory
flw f1, 0(x2) # load 0xf2f07d68 from memory into f1
froundnx.s f1, f1 # perform operation
froundnx.s f1, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0xa7a76341 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5627e08f # load x3 with value 0x5627e08f
sw x3, 0(x2) # store 0x5627e08f in memory
flw f2, 0(x2) # load 0x5627e08f from memory into f2
froundnx.s f2, f2 # perform operation
froundnx.s f2, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0xdaf385de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf81f28b8 # load x3 with value 0xf81f28b8
sw x3, 0(x2) # store 0xf81f28b8 in memory
flw f3, 0(x2) # load 0xf81f28b8 from memory into f3
froundnx.s f3, f3 # perform operation
froundnx.s f3, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0x481a22d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfdd8f5a5 # load x3 with value 0xfdd8f5a5
sw x3, 0(x2) # store 0xfdd8f5a5 in memory
flw f4, 0(x2) # load 0xfdd8f5a5 from memory into f4
froundnx.s f4, f4 # perform operation
froundnx.s f4, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0x47feea89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdb3b1a71 # load x3 with value 0xdb3b1a71
sw x3, 0(x2) # store 0xdb3b1a71 in memory
flw f5, 0(x2) # load 0xdb3b1a71 from memory into f5
froundnx.s f5, f5 # perform operation
froundnx.s f5, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0x0877794d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x81061348 # load x3 with value 0x81061348
sw x3, 0(x2) # store 0x81061348 in memory
flw f6, 0(x2) # load 0x81061348 from memory into f6
froundnx.s f6, f6 # perform operation
froundnx.s f6, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0x2f61a5d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x16e0ff1a # load x3 with value 0x16e0ff1a
sw x3, 0(x2) # store 0x16e0ff1a in memory
flw f7, 0(x2) # load 0x16e0ff1a from memory into f7
froundnx.s f7, f7 # perform operation
froundnx.s f7, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0x0b8acbbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3a34f6ee # load x3 with value 0x3a34f6ee
sw x3, 0(x2) # store 0x3a34f6ee in memory
flw f8, 0(x2) # load 0x3a34f6ee from memory into f8
froundnx.s f8, f8 # perform operation
froundnx.s f8, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0x8aa83f3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb2c6d295 # load x3 with value 0xb2c6d295
sw x3, 0(x2) # store 0xb2c6d295 in memory
flw f9, 0(x2) # load 0xb2c6d295 from memory into f9
froundnx.s f9, f9 # perform operation
froundnx.s f9, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0xd4f50cc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x86ec70db # load x3 with value 0x86ec70db
sw x3, 0(x2) # store 0x86ec70db in memory
flw f10, 0(x2) # load 0x86ec70db from memory into f10
froundnx.s f10, f10 # perform operation
froundnx.s f10, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0xe6044ae4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x47b829f5 # load x3 with value 0x47b829f5
sw x3, 0(x2) # store 0x47b829f5 in memory
flw f11, 0(x2) # load 0x47b829f5 from memory into f11
froundnx.s f11, f11 # perform operation
froundnx.s f11, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0x688344a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5aadb5ed # load x3 with value 0x5aadb5ed
sw x3, 0(x2) # store 0x5aadb5ed in memory
flw f12, 0(x2) # load 0x5aadb5ed from memory into f12
froundnx.s f12, f12 # perform operation
froundnx.s f12, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0x54e587c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x13bcbcae # load x3 with value 0x13bcbcae
sw x3, 0(x2) # store 0x13bcbcae in memory
flw f13, 0(x2) # load 0x13bcbcae from memory into f13
froundnx.s f13, f13 # perform operation
froundnx.s f13, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0xa53d948d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa7f47f66 # load x3 with value 0xa7f47f66
sw x3, 0(x2) # store 0xa7f47f66 in memory
flw f14, 0(x2) # load 0xa7f47f66 from memory into f14
froundnx.s f14, f14 # perform operation
froundnx.s f14, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0x7a0fb586 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4a640625 # load x3 with value 0x4a640625
sw x3, 0(x2) # store 0x4a640625 in memory
flw f15, 0(x2) # load 0x4a640625 from memory into f15
froundnx.s f15, f15 # perform operation
froundnx.s f15, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0xc1f762a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x99c83dc0 # load x3 with value 0x99c83dc0
sw x3, 0(x2) # store 0x99c83dc0 in memory
flw f16, 0(x2) # load 0x99c83dc0 from memory into f16
froundnx.s f16, f16 # perform operation
froundnx.s f16, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0xa83dd831 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x02fd7ea8 # load x3 with value 0x02fd7ea8
sw x3, 0(x2) # store 0x02fd7ea8 in memory
flw f17, 0(x2) # load 0x02fd7ea8 from memory into f17
froundnx.s f17, f17 # perform operation
froundnx.s f17, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0x975b8a25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5eee7f82 # load x3 with value 0x5eee7f82
sw x3, 0(x2) # store 0x5eee7f82 in memory
flw f18, 0(x2) # load 0x5eee7f82 from memory into f18
froundnx.s f18, f18 # perform operation
froundnx.s f18, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0x8617e087 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x467dbe97 # load x3 with value 0x467dbe97
sw x3, 0(x2) # store 0x467dbe97 in memory
flw f19, 0(x2) # load 0x467dbe97 from memory into f19
froundnx.s f19, f19 # perform operation
froundnx.s f19, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0xba670c59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa43a657f # load x3 with value 0xa43a657f
sw x3, 0(x2) # store 0xa43a657f in memory
flw f20, 0(x2) # load 0xa43a657f from memory into f20
froundnx.s f20, f20 # perform operation
froundnx.s f20, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0x1fa9dbfa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9bce23c3 # load x3 with value 0x9bce23c3
sw x3, 0(x2) # store 0x9bce23c3 in memory
flw f21, 0(x2) # load 0x9bce23c3 from memory into f21
froundnx.s f21, f21 # perform operation
froundnx.s f21, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0xb03549cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8a02985d # load x3 with value 0x8a02985d
sw x3, 0(x2) # store 0x8a02985d in memory
flw f22, 0(x2) # load 0x8a02985d from memory into f22
froundnx.s f22, f22 # perform operation
froundnx.s f22, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0xb4dc47b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x620140ae # load x3 with value 0x620140ae
sw x3, 0(x2) # store 0x620140ae in memory
flw f23, 0(x2) # load 0x620140ae from memory into f23
froundnx.s f23, f23 # perform operation
froundnx.s f23, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0x4dc3a8b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x35a3cf87 # load x3 with value 0x35a3cf87
sw x3, 0(x2) # store 0x35a3cf87 in memory
flw f24, 0(x2) # load 0x35a3cf87 from memory into f24
froundnx.s f24, f24 # perform operation
froundnx.s f24, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0x7538c9b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x48047cc6 # load x3 with value 0x48047cc6
sw x3, 0(x2) # store 0x48047cc6 in memory
flw f25, 0(x2) # load 0x48047cc6 from memory into f25
froundnx.s f25, f25 # perform operation
froundnx.s f25, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0x88d9966e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x762ba00e # load x3 with value 0x762ba00e
sw x3, 0(x2) # store 0x762ba00e in memory
flw f26, 0(x2) # load 0x762ba00e from memory into f26
froundnx.s f26, f26 # perform operation
froundnx.s f26, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0xfd406182 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x494961c1 # load x3 with value 0x494961c1
sw x3, 0(x2) # store 0x494961c1 in memory
flw f27, 0(x2) # load 0x494961c1 from memory into f27
froundnx.s f27, f27 # perform operation
froundnx.s f27, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0xfe6999ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb6312e14 # load x3 with value 0xb6312e14
sw x3, 0(x2) # store 0xb6312e14 in memory
flw f28, 0(x2) # load 0xb6312e14 from memory into f28
froundnx.s f28, f28 # perform operation
froundnx.s f28, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0x16ea2b97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe0d9df18 # load x3 with value 0xe0d9df18
sw x3, 0(x2) # store 0xe0d9df18 in memory
flw f29, 0(x2) # load 0xe0d9df18 from memory into f29
froundnx.s f29, f29 # perform operation
froundnx.s f29, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0x5220567f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2091cf86 # load x3 with value 0x2091cf86
sw x3, 0(x2) # store 0x2091cf86 in memory
flw f30, 0(x2) # load 0x2091cf86 from memory into f30
froundnx.s f30, f30 # perform operation
froundnx.s f30, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0x2a81b027 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x256c7bba # load x3 with value 0x256c7bba
sw x3, 0(x2) # store 0x256c7bba in memory
flw f31, 0(x2) # load 0x256c7bba from memory into f31
froundnx.s f31, f31 # perform operation
froundnx.s f31, f31 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
li x0, 0x6e53f5d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x94f7708c # load x3 with value 0x94f7708c
sw x3, 0(x2) # store 0x94f7708c in memory
flw f26, 0(x2) # load 0x94f7708c from memory into f26
froundnx.s f0, f26 # perform operation
froundnx.s f0, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
li x1, 0x7931f943 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8bb736cf # load x3 with value 0x8bb736cf
sw x3, 0(x2) # store 0x8bb736cf in memory
flw f22, 0(x2) # load 0x8bb736cf from memory into f22
froundnx.s f1, f22 # perform operation
froundnx.s f1, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
li x2, 0xbb3cd494 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3cac3ab2 # load x3 with value 0x3cac3ab2
sw x3, 0(x2) # store 0x3cac3ab2 in memory
flw f23, 0(x2) # load 0x3cac3ab2 from memory into f23
froundnx.s f2, f23 # perform operation
froundnx.s f2, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
li x3, 0x434f5c8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf5d0c2b6 # load x3 with value 0xf5d0c2b6
sw x3, 0(x2) # store 0xf5d0c2b6 in memory
flw f24, 0(x2) # load 0xf5d0c2b6 from memory into f24
froundnx.s f3, f24 # perform operation
froundnx.s f3, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
li x4, 0x92fa82b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x523fb073 # load x3 with value 0x523fb073
sw x3, 0(x2) # store 0x523fb073 in memory
flw f20, 0(x2) # load 0x523fb073 from memory into f20
froundnx.s f4, f20 # perform operation
froundnx.s f4, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
li x5, 0x7947f60f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf47d7f53 # load x3 with value 0xf47d7f53
sw x3, 0(x2) # store 0xf47d7f53 in memory
flw f9, 0(x2) # load 0xf47d7f53 from memory into f9
froundnx.s f5, f9 # perform operation
froundnx.s f5, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
li x6, 0x86c0f6a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa0b5576c # load x3 with value 0xa0b5576c
sw x3, 0(x2) # store 0xa0b5576c in memory
flw f3, 0(x2) # load 0xa0b5576c from memory into f3
froundnx.s f6, f3 # perform operation
froundnx.s f6, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
li x7, 0xebfa94b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfd042a82 # load x3 with value 0xfd042a82
sw x3, 0(x2) # store 0xfd042a82 in memory
flw f10, 0(x2) # load 0xfd042a82 from memory into f10
froundnx.s f7, f10 # perform operation
froundnx.s f7, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
li x8, 0x2f4877dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc843feb1 # load x3 with value 0xc843feb1
sw x3, 0(x2) # store 0xc843feb1 in memory
flw f20, 0(x2) # load 0xc843feb1 from memory into f20
froundnx.s f8, f20 # perform operation
froundnx.s f8, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
li x9, 0x6fdaa37a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb12749e0 # load x3 with value 0xb12749e0
sw x3, 0(x2) # store 0xb12749e0 in memory
flw f8, 0(x2) # load 0xb12749e0 from memory into f8
froundnx.s f9, f8 # perform operation
froundnx.s f9, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
li x10, 0x87e28be8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2413b9d6 # load x3 with value 0x2413b9d6
sw x3, 0(x2) # store 0x2413b9d6 in memory
flw f31, 0(x2) # load 0x2413b9d6 from memory into f31
froundnx.s f10, f31 # perform operation
froundnx.s f10, f31 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
li x11, 0x94054977 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf90fdf10 # load x3 with value 0xf90fdf10
sw x3, 0(x2) # store 0xf90fdf10 in memory
flw f19, 0(x2) # load 0xf90fdf10 from memory into f19
froundnx.s f11, f19 # perform operation
froundnx.s f11, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
li x12, 0x98347ef0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaccdf3c3 # load x3 with value 0xaccdf3c3
sw x3, 0(x2) # store 0xaccdf3c3 in memory
flw f11, 0(x2) # load 0xaccdf3c3 from memory into f11
froundnx.s f12, f11 # perform operation
froundnx.s f12, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
li x13, 0x9b7df79e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5f747736 # load x3 with value 0x5f747736
sw x3, 0(x2) # store 0x5f747736 in memory
flw f21, 0(x2) # load 0x5f747736 from memory into f21
froundnx.s f13, f21 # perform operation
froundnx.s f13, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
li x14, 0xfe634cd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5e59534d # load x3 with value 0x5e59534d
sw x3, 0(x2) # store 0x5e59534d in memory
flw f17, 0(x2) # load 0x5e59534d from memory into f17
froundnx.s f14, f17 # perform operation
froundnx.s f14, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
li x15, 0x2f4b2715 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2f61c771 # load x3 with value 0x2f61c771
sw x3, 0(x2) # store 0x2f61c771 in memory
flw f16, 0(x2) # load 0x2f61c771 from memory into f16
froundnx.s f15, f16 # perform operation
froundnx.s f15, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
li x16, 0x718aeafe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5df6df58 # load x3 with value 0x5df6df58
sw x3, 0(x2) # store 0x5df6df58 in memory
flw f14, 0(x2) # load 0x5df6df58 from memory into f14
froundnx.s f16, f14 # perform operation
froundnx.s f16, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
li x17, 0x4875d14d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb91f285b # load x3 with value 0xb91f285b
sw x3, 0(x2) # store 0xb91f285b in memory
flw f17, 0(x2) # load 0xb91f285b from memory into f17
froundnx.s f17, f17 # perform operation
froundnx.s f17, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
li x18, 0xe2728a9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe47cf4e3 # load x3 with value 0xe47cf4e3
sw x3, 0(x2) # store 0xe47cf4e3 in memory
flw f14, 0(x2) # load 0xe47cf4e3 from memory into f14
froundnx.s f18, f14 # perform operation
froundnx.s f18, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
li x19, 0x49788b3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7a17f4e7 # load x3 with value 0x7a17f4e7
sw x3, 0(x2) # store 0x7a17f4e7 in memory
flw f5, 0(x2) # load 0x7a17f4e7 from memory into f5
froundnx.s f19, f5 # perform operation
froundnx.s f19, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
li x20, 0x1b7d948a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6e443fdf # load x3 with value 0x6e443fdf
sw x3, 0(x2) # store 0x6e443fdf in memory
flw f1, 0(x2) # load 0x6e443fdf from memory into f1
froundnx.s f20, f1 # perform operation
froundnx.s f20, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
li x21, 0xba229137 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xca58b9e4 # load x3 with value 0xca58b9e4
sw x3, 0(x2) # store 0xca58b9e4 in memory
flw f23, 0(x2) # load 0xca58b9e4 from memory into f23
froundnx.s f21, f23 # perform operation
froundnx.s f21, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
li x22, 0x49d2a503 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf224b346 # load x3 with value 0xf224b346
sw x3, 0(x2) # store 0xf224b346 in memory
flw f7, 0(x2) # load 0xf224b346 from memory into f7
froundnx.s f22, f7 # perform operation
froundnx.s f22, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
li x23, 0x92ca8a77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x14afcaad # load x3 with value 0x14afcaad
sw x3, 0(x2) # store 0x14afcaad in memory
flw f20, 0(x2) # load 0x14afcaad from memory into f20
froundnx.s f23, f20 # perform operation
froundnx.s f23, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
li x24, 0x254f981c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x081a641d # load x3 with value 0x081a641d
sw x3, 0(x2) # store 0x081a641d in memory
flw f12, 0(x2) # load 0x081a641d from memory into f12
froundnx.s f24, f12 # perform operation
froundnx.s f24, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
li x25, 0xff424a32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3da6d380 # load x3 with value 0x3da6d380
sw x3, 0(x2) # store 0x3da6d380 in memory
flw f23, 0(x2) # load 0x3da6d380 from memory into f23
froundnx.s f25, f23 # perform operation
froundnx.s f25, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
li x26, 0x10e7ce1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd2e44858 # load x3 with value 0xd2e44858
sw x3, 0(x2) # store 0xd2e44858 in memory
flw f25, 0(x2) # load 0xd2e44858 from memory into f25
froundnx.s f26, f25 # perform operation
froundnx.s f26, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
li x27, 0xd5c91648 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd3872cb5 # load x3 with value 0xd3872cb5
sw x3, 0(x2) # store 0xd3872cb5 in memory
flw f15, 0(x2) # load 0xd3872cb5 from memory into f15
froundnx.s f27, f15 # perform operation
froundnx.s f27, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
li x28, 0x04bb9ea9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80b40d70 # load x3 with value 0x80b40d70
sw x3, 0(x2) # store 0x80b40d70 in memory
flw f7, 0(x2) # load 0x80b40d70 from memory into f7
froundnx.s f28, f7 # perform operation
froundnx.s f28, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
li x29, 0x2039f3d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb6c22808 # load x3 with value 0xb6c22808
sw x3, 0(x2) # store 0xb6c22808 in memory
flw f4, 0(x2) # load 0xb6c22808 from memory into f4
froundnx.s f29, f4 # perform operation
froundnx.s f29, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
li x30, 0x05531c04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xea4b5971 # load x3 with value 0xea4b5971
sw x3, 0(x2) # store 0xea4b5971 in memory
flw f2, 0(x2) # load 0xea4b5971 from memory into f2
froundnx.s f30, f2 # perform operation
froundnx.s f30, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
li x31, 0x02af3866 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb83d67ed # load x3 with value 0xb83d67ed
sw x3, 0(x2) # store 0xb83d67ed in memory
flw f28, 0(x2) # load 0xb83d67ed from memory into f28
froundnx.s f31, f28 # perform operation
froundnx.s f31, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x29, 0x84fa46be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f28, 0(x2) # load 0x00000000 from memory into f28
froundnx.s f29, f28 # perform operation
froundnx.s f29, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
li x18, 0xdefcecee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f30, 0(x2) # load 0x80000000 from memory into f30
froundnx.s f18, f30 # perform operation
froundnx.s f18, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
li x23, 0x963cd080 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
froundnx.s f23, f24 # perform operation
froundnx.s f23, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
li x3, 0xcf8cabef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f1, 0(x2) # load 0xbf800000 from memory into f1
froundnx.s f3, f1 # perform operation
froundnx.s f3, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
li x10, 0x7d966f2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
froundnx.s f10, f13 # perform operation
froundnx.s f10, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
li x21, 0x874562d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f2, 0(x2) # load 0xbfc00000 from memory into f2
froundnx.s f21, f2 # perform operation
froundnx.s f21, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
li x27, 0x3b839c83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
froundnx.s f27, f13 # perform operation
froundnx.s f27, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
li x23, 0xcb6952d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f13, 0(x2) # load 0xc0000000 from memory into f13
froundnx.s f23, f13 # perform operation
froundnx.s f23, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
li x12, 0x4b27f76f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f4, 0(x2) # load 0x00800000 from memory into f4
froundnx.s f12, f4 # perform operation
froundnx.s f12, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
li x14, 0x796f8154 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f15, 0(x2) # load 0x80800000 from memory into f15
froundnx.s f14, f15 # perform operation
froundnx.s f14, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
li x1, 0x6c3b5162 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f10, 0(x2) # load 0x7f7fffff from memory into f10
froundnx.s f1, f10 # perform operation
froundnx.s f1, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
li x8, 0xeb3f62a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f22, 0(x2) # load 0xff7fffff from memory into f22
froundnx.s f8, f22 # perform operation
froundnx.s f8, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
li x11, 0x2df2010f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f5, 0(x2) # load 0x007fffff from memory into f5
froundnx.s f11, f5 # perform operation
froundnx.s f11, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
li x9, 0x10230d14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f22, 0(x2) # load 0x807fffff from memory into f22
froundnx.s f9, f22 # perform operation
froundnx.s f9, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
li x16, 0xa2f01924 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f17, 0(x2) # load 0x00400000 from memory into f17
froundnx.s f16, f17 # perform operation
froundnx.s f16, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
li x17, 0x75233755 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f1, 0(x2) # load 0x80400000 from memory into f1
froundnx.s f17, f1 # perform operation
froundnx.s f17, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x4, 0x4d297921 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
froundnx.s f4, f5 # perform operation
froundnx.s f4, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
li x4, 0x9e72448a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
froundnx.s f4, f10 # perform operation
froundnx.s f4, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
li x21, 0x33e0af8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f12, 0(x2) # load 0x7f800000 from memory into f12
froundnx.s f21, f12 # perform operation
froundnx.s f21, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
li x2, 0x32318dd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f31, 0(x2) # load 0xff800000 from memory into f31
froundnx.s f2, f31 # perform operation
froundnx.s f2, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
li x23, 0xf04ae37c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f16, 0(x2) # load 0x7fc00000 from memory into f16
froundnx.s f23, f16 # perform operation
froundnx.s f23, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
li x10, 0x05731614 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f31, 0(x2) # load 0x7fffffff from memory into f31
froundnx.s f10, f31 # perform operation
froundnx.s f10, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
li x29, 0xe272bcd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
froundnx.s f29, f5 # perform operation
froundnx.s f29, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
li x28, 0x30202507 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f10, 0(x2) # load 0x7fbfffff from memory into f10
froundnx.s f28, f10 # perform operation
froundnx.s f28, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
li x19, 0xd6f9257b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f14, 0(x2) # load 0x7ef8654f from memory into f14
froundnx.s f19, f14 # perform operation
froundnx.s f19, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
li x16, 0xfdc2fe66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f8, 0(x2) # load 0x813d9ab0 from memory into f8
froundnx.s f16, f8 # perform operation
froundnx.s f16, f8 # perform operation

# Testcase cp_frm
li x3, 0xa1b587da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x15d15170 # load x3 with value 0x15d15170
sw x3, 0(x2) # store 0x15d15170 in memory
flw f23, 0(x2) # load 0x15d15170 from memory into f23
froundnx.s f3, f23 # perform operation
froundnx.s f3, f23, dyn # perform operation
froundnx.s f3, f23, rdn # perform operation
froundnx.s f3, f23, rmm # perform operation
froundnx.s f3, f23, rne # perform operation
froundnx.s f3, f23, rtz # perform operation
froundnx.s f3, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
froundnx.s f3, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
froundnx.s f3, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
froundnx.s f3, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
froundnx.s f3, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
froundnx.s f3, f23 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0xe67faa04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf95d5c4f # load x3 with value 0xf95d5c4f
sw x3, 0(x2) # store 0xf95d5c4f in memory
flw f10, 0(x2) # load 0xf95d5c4f from memory into f10
froundnx.s f0, f10 # perform operation
froundnx.s f0, f10 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0xe7c775d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2b2b9ea5 # load x3 with value 0x2b2b9ea5
sw x3, 0(x2) # store 0x2b2b9ea5 in memory
flw f30, 0(x2) # load 0x2b2b9ea5 from memory into f30
froundnx.s f1, f30 # perform operation
froundnx.s f1, f30 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0xb5e6599e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xac82fa60 # load x3 with value 0xac82fa60
sw x3, 0(x2) # store 0xac82fa60 in memory
flw f7, 0(x2) # load 0xac82fa60 from memory into f7
froundnx.s f2, f7 # perform operation
froundnx.s f2, f7 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x928d6106 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7d5b1c07 # load x3 with value 0x7d5b1c07
sw x3, 0(x2) # store 0x7d5b1c07 in memory
flw f22, 0(x2) # load 0x7d5b1c07 from memory into f22
froundnx.s f3, f22 # perform operation
froundnx.s f3, f22 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x9f1c2064 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdb698084 # load x3 with value 0xdb698084
sw x3, 0(x2) # store 0xdb698084 in memory
flw f13, 0(x2) # load 0xdb698084 from memory into f13
froundnx.s f4, f13 # perform operation
froundnx.s f4, f13 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x95b98689 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf70de854 # load x3 with value 0xf70de854
sw x3, 0(x2) # store 0xf70de854 in memory
flw f3, 0(x2) # load 0xf70de854 from memory into f3
froundnx.s f5, f3 # perform operation
froundnx.s f5, f3 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0xbb7497ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcf02b44a # load x3 with value 0xcf02b44a
sw x3, 0(x2) # store 0xcf02b44a in memory
flw f9, 0(x2) # load 0xcf02b44a from memory into f9
froundnx.s f6, f9 # perform operation
froundnx.s f6, f9 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x16a3c76f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5709f790 # load x3 with value 0x5709f790
sw x3, 0(x2) # store 0x5709f790 in memory
flw f24, 0(x2) # load 0x5709f790 from memory into f24
froundnx.s f7, f24 # perform operation
froundnx.s f7, f24 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0xb7950344 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6444ae61 # load x3 with value 0x6444ae61
sw x3, 0(x2) # store 0x6444ae61 in memory
flw f1, 0(x2) # load 0x6444ae61 from memory into f1
froundnx.s f8, f1 # perform operation
froundnx.s f8, f1 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0xfcf7202d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x41af5ef1 # load x3 with value 0x41af5ef1
sw x3, 0(x2) # store 0x41af5ef1 in memory
flw f28, 0(x2) # load 0x41af5ef1 from memory into f28
froundnx.s f9, f28 # perform operation
froundnx.s f9, f28 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x54552cba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeb1c18e0 # load x3 with value 0xeb1c18e0
sw x3, 0(x2) # store 0xeb1c18e0 in memory
flw f29, 0(x2) # load 0xeb1c18e0 from memory into f29
froundnx.s f10, f29 # perform operation
froundnx.s f10, f29 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0xa273708f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0c462308 # load x3 with value 0x0c462308
sw x3, 0(x2) # store 0x0c462308 in memory
flw f23, 0(x2) # load 0x0c462308 from memory into f23
froundnx.s f11, f23 # perform operation
froundnx.s f11, f23 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x23ea9ff8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7d321b39 # load x3 with value 0x7d321b39
sw x3, 0(x2) # store 0x7d321b39 in memory
flw f25, 0(x2) # load 0x7d321b39 from memory into f25
froundnx.s f12, f25 # perform operation
froundnx.s f12, f25 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0xc640b935 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x26ccf563 # load x3 with value 0x26ccf563
sw x3, 0(x2) # store 0x26ccf563 in memory
flw f13, 0(x2) # load 0x26ccf563 from memory into f13
froundnx.s f13, f13 # perform operation
froundnx.s f13, f13 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0xd4109c8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f106a46 # load x3 with value 0x3f106a46
sw x3, 0(x2) # store 0x3f106a46 in memory
flw f22, 0(x2) # load 0x3f106a46 from memory into f22
froundnx.s f14, f22 # perform operation
froundnx.s f14, f22 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x209197de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x87e61715 # load x3 with value 0x87e61715
sw x3, 0(x2) # store 0x87e61715 in memory
flw f31, 0(x2) # load 0x87e61715 from memory into f31
froundnx.s f15, f31 # perform operation
froundnx.s f15, f31 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0xb6f5c1e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x834b7c52 # load x3 with value 0x834b7c52
sw x3, 0(x2) # store 0x834b7c52 in memory
flw f3, 0(x2) # load 0x834b7c52 from memory into f3
froundnx.s f16, f3 # perform operation
froundnx.s f16, f3 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x52a09f3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9034f328 # load x3 with value 0x9034f328
sw x3, 0(x2) # store 0x9034f328 in memory
flw f4, 0(x2) # load 0x9034f328 from memory into f4
froundnx.s f17, f4 # perform operation
froundnx.s f17, f4 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x14c2a996 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9585da9a # load x3 with value 0x9585da9a
sw x3, 0(x2) # store 0x9585da9a in memory
flw f15, 0(x2) # load 0x9585da9a from memory into f15
froundnx.s f18, f15 # perform operation
froundnx.s f18, f15 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x17683510 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x733c7e2e # load x3 with value 0x733c7e2e
sw x3, 0(x2) # store 0x733c7e2e in memory
flw f28, 0(x2) # load 0x733c7e2e from memory into f28
froundnx.s f19, f28 # perform operation
froundnx.s f19, f28 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x69a465fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xafa6f6d4 # load x3 with value 0xafa6f6d4
sw x3, 0(x2) # store 0xafa6f6d4 in memory
flw f4, 0(x2) # load 0xafa6f6d4 from memory into f4
froundnx.s f20, f4 # perform operation
froundnx.s f20, f4 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x35d4f0ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe73ebdfd # load x3 with value 0xe73ebdfd
sw x3, 0(x2) # store 0xe73ebdfd in memory
flw f16, 0(x2) # load 0xe73ebdfd from memory into f16
froundnx.s f21, f16 # perform operation
froundnx.s f21, f16 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0xb29be643 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x48e04228 # load x3 with value 0x48e04228
sw x3, 0(x2) # store 0x48e04228 in memory
flw f11, 0(x2) # load 0x48e04228 from memory into f11
froundnx.s f22, f11 # perform operation
froundnx.s f22, f11 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x02385dc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb15f8d90 # load x3 with value 0xb15f8d90
sw x3, 0(x2) # store 0xb15f8d90 in memory
flw f13, 0(x2) # load 0xb15f8d90 from memory into f13
froundnx.s f23, f13 # perform operation
froundnx.s f23, f13 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0xad001771 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2fcdfbbc # load x3 with value 0x2fcdfbbc
sw x3, 0(x2) # store 0x2fcdfbbc in memory
flw f22, 0(x2) # load 0x2fcdfbbc from memory into f22
froundnx.s f24, f22 # perform operation
froundnx.s f24, f22 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x6bc69080 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3795e097 # load x3 with value 0x3795e097
sw x3, 0(x2) # store 0x3795e097 in memory
flw f8, 0(x2) # load 0x3795e097 from memory into f8
froundnx.s f25, f8 # perform operation
froundnx.s f25, f8 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x83641720 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8835a7de # load x3 with value 0x8835a7de
sw x3, 0(x2) # store 0x8835a7de in memory
flw f2, 0(x2) # load 0x8835a7de from memory into f2
froundnx.s f26, f2 # perform operation
froundnx.s f26, f2 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0xec79cca7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f1c9c7e # load x3 with value 0x3f1c9c7e
sw x3, 0(x2) # store 0x3f1c9c7e in memory
flw f24, 0(x2) # load 0x3f1c9c7e from memory into f24
froundnx.s f27, f24 # perform operation
froundnx.s f27, f24 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x7e4f424a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4f992994 # load x3 with value 0x4f992994
sw x3, 0(x2) # store 0x4f992994 in memory
flw f24, 0(x2) # load 0x4f992994 from memory into f24
froundnx.s f28, f24 # perform operation
froundnx.s f28, f24 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x9f218d49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf74c9bbc # load x3 with value 0xf74c9bbc
sw x3, 0(x2) # store 0xf74c9bbc in memory
flw f3, 0(x2) # load 0xf74c9bbc from memory into f3
froundnx.s f29, f3 # perform operation
froundnx.s f29, f3 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0xeff019d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xad6e559f # load x3 with value 0xad6e559f
sw x3, 0(x2) # store 0xad6e559f in memory
flw f5, 0(x2) # load 0xad6e559f from memory into f5
froundnx.s f30, f5 # perform operation
froundnx.s f30, f5 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0xfe5fd388 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x62d481ad # load x3 with value 0x62d481ad
sw x3, 0(x2) # store 0x62d481ad in memory
flw f21, 0(x2) # load 0x62d481ad from memory into f21
froundnx.s f31, f21 # perform operation
froundnx.s f31, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x14, 0xaa53ee71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x05d15296 # load x3 with value 0x05d15296
sw x3, 0(x2) # store 0x05d15296 in memory
flw f0, 0(x2) # load 0x05d15296 from memory into f0
froundnx.s f14, f0 # perform operation
froundnx.s f14, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x24, 0x397252f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2c40548e # load x3 with value 0x2c40548e
sw x3, 0(x2) # store 0x2c40548e in memory
flw f1, 0(x2) # load 0x2c40548e from memory into f1
froundnx.s f24, f1 # perform operation
froundnx.s f24, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x10, 0x4e817f6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5627cf0e # load x3 with value 0x5627cf0e
sw x3, 0(x2) # store 0x5627cf0e in memory
flw f2, 0(x2) # load 0x5627cf0e from memory into f2
froundnx.s f10, f2 # perform operation
froundnx.s f10, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x3, 0x80f1aab1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdbf4451c # load x3 with value 0xdbf4451c
sw x3, 0(x2) # store 0xdbf4451c in memory
flw f3, 0(x2) # load 0xdbf4451c from memory into f3
froundnx.s f3, f3 # perform operation
froundnx.s f3, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x4, 0x965138ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5b3e1939 # load x3 with value 0x5b3e1939
sw x3, 0(x2) # store 0x5b3e1939 in memory
flw f4, 0(x2) # load 0x5b3e1939 from memory into f4
froundnx.s f4, f4 # perform operation
froundnx.s f4, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x12, 0x072efea9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9d183189 # load x3 with value 0x9d183189
sw x3, 0(x2) # store 0x9d183189 in memory
flw f5, 0(x2) # load 0x9d183189 from memory into f5
froundnx.s f12, f5 # perform operation
froundnx.s f12, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x26, 0x379ea83d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa04f20b6 # load x3 with value 0xa04f20b6
sw x3, 0(x2) # store 0xa04f20b6 in memory
flw f6, 0(x2) # load 0xa04f20b6 from memory into f6
froundnx.s f26, f6 # perform operation
froundnx.s f26, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x14, 0x63718bc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf40f3aca # load x3 with value 0xf40f3aca
sw x3, 0(x2) # store 0xf40f3aca in memory
flw f7, 0(x2) # load 0xf40f3aca from memory into f7
froundnx.s f14, f7 # perform operation
froundnx.s f14, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x13, 0x07328458 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x682605f5 # load x3 with value 0x682605f5
sw x3, 0(x2) # store 0x682605f5 in memory
flw f8, 0(x2) # load 0x682605f5 from memory into f8
froundnx.s f13, f8 # perform operation
froundnx.s f13, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x7, 0xe1c50148 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5d26c701 # load x3 with value 0x5d26c701
sw x3, 0(x2) # store 0x5d26c701 in memory
flw f9, 0(x2) # load 0x5d26c701 from memory into f9
froundnx.s f7, f9 # perform operation
froundnx.s f7, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x29, 0x21fd6792 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x14165271 # load x3 with value 0x14165271
sw x3, 0(x2) # store 0x14165271 in memory
flw f10, 0(x2) # load 0x14165271 from memory into f10
froundnx.s f29, f10 # perform operation
froundnx.s f29, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x28, 0xb22f0a66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeb6c65bd # load x3 with value 0xeb6c65bd
sw x3, 0(x2) # store 0xeb6c65bd in memory
flw f11, 0(x2) # load 0xeb6c65bd from memory into f11
froundnx.s f28, f11 # perform operation
froundnx.s f28, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x12, 0xe244a24b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x12315982 # load x3 with value 0x12315982
sw x3, 0(x2) # store 0x12315982 in memory
flw f12, 0(x2) # load 0x12315982 from memory into f12
froundnx.s f12, f12 # perform operation
froundnx.s f12, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x18, 0xa676a79d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe900b519 # load x3 with value 0xe900b519
sw x3, 0(x2) # store 0xe900b519 in memory
flw f13, 0(x2) # load 0xe900b519 from memory into f13
froundnx.s f18, f13 # perform operation
froundnx.s f18, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x15, 0xe894436e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x75d2cdf4 # load x3 with value 0x75d2cdf4
sw x3, 0(x2) # store 0x75d2cdf4 in memory
flw f14, 0(x2) # load 0x75d2cdf4 from memory into f14
froundnx.s f15, f14 # perform operation
froundnx.s f15, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x21, 0x270b50db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x533fef0a # load x3 with value 0x533fef0a
sw x3, 0(x2) # store 0x533fef0a in memory
flw f15, 0(x2) # load 0x533fef0a from memory into f15
froundnx.s f21, f15 # perform operation
froundnx.s f21, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x21, 0x3591321a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8da13159 # load x3 with value 0x8da13159
sw x3, 0(x2) # store 0x8da13159 in memory
flw f16, 0(x2) # load 0x8da13159 from memory into f16
froundnx.s f21, f16 # perform operation
froundnx.s f21, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x17, 0xb6ec658c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x23c056c5 # load x3 with value 0x23c056c5
sw x3, 0(x2) # store 0x23c056c5 in memory
flw f17, 0(x2) # load 0x23c056c5 from memory into f17
froundnx.s f17, f17 # perform operation
froundnx.s f17, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x9, 0xac3640a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa449a6b3 # load x3 with value 0xa449a6b3
sw x3, 0(x2) # store 0xa449a6b3 in memory
flw f18, 0(x2) # load 0xa449a6b3 from memory into f18
froundnx.s f9, f18 # perform operation
froundnx.s f9, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x27, 0x1ce423b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x61555ff3 # load x3 with value 0x61555ff3
sw x3, 0(x2) # store 0x61555ff3 in memory
flw f19, 0(x2) # load 0x61555ff3 from memory into f19
froundnx.s f27, f19 # perform operation
froundnx.s f27, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x6, 0x54151b06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x59b67f87 # load x3 with value 0x59b67f87
sw x3, 0(x2) # store 0x59b67f87 in memory
flw f20, 0(x2) # load 0x59b67f87 from memory into f20
froundnx.s f6, f20 # perform operation
froundnx.s f6, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x30, 0xd1002893 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x067ed739 # load x3 with value 0x067ed739
sw x3, 0(x2) # store 0x067ed739 in memory
flw f21, 0(x2) # load 0x067ed739 from memory into f21
froundnx.s f30, f21 # perform operation
froundnx.s f30, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x5, 0x3350c79a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x03242b7d # load x3 with value 0x03242b7d
sw x3, 0(x2) # store 0x03242b7d in memory
flw f22, 0(x2) # load 0x03242b7d from memory into f22
froundnx.s f5, f22 # perform operation
froundnx.s f5, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x27, 0xd60d3a26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb8ab47e6 # load x3 with value 0xb8ab47e6
sw x3, 0(x2) # store 0xb8ab47e6 in memory
flw f23, 0(x2) # load 0xb8ab47e6 from memory into f23
froundnx.s f27, f23 # perform operation
froundnx.s f27, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x10, 0x201d097b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x50511861 # load x3 with value 0x50511861
sw x3, 0(x2) # store 0x50511861 in memory
flw f24, 0(x2) # load 0x50511861 from memory into f24
froundnx.s f10, f24 # perform operation
froundnx.s f10, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x13, 0xe7cd8db5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x25e7be04 # load x3 with value 0x25e7be04
sw x3, 0(x2) # store 0x25e7be04 in memory
flw f25, 0(x2) # load 0x25e7be04 from memory into f25
froundnx.s f13, f25 # perform operation
froundnx.s f13, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x28, 0xc64c57b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x440cd865 # load x3 with value 0x440cd865
sw x3, 0(x2) # store 0x440cd865 in memory
flw f26, 0(x2) # load 0x440cd865 from memory into f26
froundnx.s f28, f26 # perform operation
froundnx.s f28, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x15, 0xb03a3e79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd0e6c0cb # load x3 with value 0xd0e6c0cb
sw x3, 0(x2) # store 0xd0e6c0cb in memory
flw f27, 0(x2) # load 0xd0e6c0cb from memory into f27
froundnx.s f15, f27 # perform operation
froundnx.s f15, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x29, 0xf4be6f64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x44612074 # load x3 with value 0x44612074
sw x3, 0(x2) # store 0x44612074 in memory
flw f28, 0(x2) # load 0x44612074 from memory into f28
froundnx.s f29, f28 # perform operation
froundnx.s f29, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x15, 0xe4fd3942 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaa6593f7 # load x3 with value 0xaa6593f7
sw x3, 0(x2) # store 0xaa6593f7 in memory
flw f29, 0(x2) # load 0xaa6593f7 from memory into f29
froundnx.s f15, f29 # perform operation
froundnx.s f15, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x18, 0x97974cba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x775b538e # load x3 with value 0x775b538e
sw x3, 0(x2) # store 0x775b538e in memory
flw f30, 0(x2) # load 0x775b538e from memory into f30
froundnx.s f18, f30 # perform operation
froundnx.s f18, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x18, 0x56018034 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe57e63af # load x3 with value 0xe57e63af
sw x3, 0(x2) # store 0xe57e63af in memory
flw f31, 0(x2) # load 0xe57e63af from memory into f31
froundnx.s f18, f31 # perform operation
froundnx.s f18, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
