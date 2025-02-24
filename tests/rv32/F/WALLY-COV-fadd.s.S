///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/F//WALLY-COV-fadd.s.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.115322
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
fadd.s f20, f4, f26 # perform first operation
fadd.s f5, f20, f30 # perform second operation

# Testcase cmp_gpr_hazard raw test
fadd.s f6, f8, f24 # perform first operation
fadd.s f1, f17, f6 # perform second operation

# Testcase cmp_gpr_hazard waw test
fadd.s f21, f23, f13 # perform first operation
fadd.s f21, f8, f13 # perform second operation

# Testcase cmp_gpr_hazard waw test
fadd.s f11, f14, f3 # perform first operation
fadd.s f11, f13, f14 # perform second operation

# Testcase cmp_gpr_hazard war test
fadd.s f10, f20, f17 # perform first operation
fadd.s f20, f29, f31 # perform second operation

# Testcase cmp_gpr_hazard war test
fadd.s f5, f3, f30 # perform first operation
fadd.s f30, f9, f24 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0x3d5d1464 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x53e19029 # load x3 with value 0x53e19029
sw x3, 0(x2) # store 0x53e19029 in memory
flw f0, 0(x2) # load 0x53e19029 from memory into f0
li x3, 0x99a9d860 # load x3 with value 0x99a9d860
sw x3, 0(x2) # store 0x99a9d860 in memory
flw f22, 0(x2) # load 0x99a9d860 from memory into f22
fadd.s f0, f0, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0x2c782194 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7eec25cf # load x3 with value 0x7eec25cf
sw x3, 0(x2) # store 0x7eec25cf in memory
flw f1, 0(x2) # load 0x7eec25cf from memory into f1
li x3, 0x02274699 # load x3 with value 0x02274699
sw x3, 0(x2) # store 0x02274699 in memory
flw f1, 0(x2) # load 0x02274699 from memory into f1
fadd.s f1, f1, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0xf6bcab03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x950b546b # load x3 with value 0x950b546b
sw x3, 0(x2) # store 0x950b546b in memory
flw f2, 0(x2) # load 0x950b546b from memory into f2
li x3, 0x7421486a # load x3 with value 0x7421486a
sw x3, 0(x2) # store 0x7421486a in memory
flw f6, 0(x2) # load 0x7421486a from memory into f6
fadd.s f2, f2, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0x9397e240 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe747c952 # load x3 with value 0xe747c952
sw x3, 0(x2) # store 0xe747c952 in memory
flw f3, 0(x2) # load 0xe747c952 from memory into f3
li x3, 0xc1bc879c # load x3 with value 0xc1bc879c
sw x3, 0(x2) # store 0xc1bc879c in memory
flw f18, 0(x2) # load 0xc1bc879c from memory into f18
fadd.s f3, f3, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0x52b96a6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xebcb80e0 # load x3 with value 0xebcb80e0
sw x3, 0(x2) # store 0xebcb80e0 in memory
flw f4, 0(x2) # load 0xebcb80e0 from memory into f4
li x3, 0x760da3bb # load x3 with value 0x760da3bb
sw x3, 0(x2) # store 0x760da3bb in memory
flw f15, 0(x2) # load 0x760da3bb from memory into f15
fadd.s f4, f4, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0xf8faf9d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x532b1d9f # load x3 with value 0x532b1d9f
sw x3, 0(x2) # store 0x532b1d9f in memory
flw f5, 0(x2) # load 0x532b1d9f from memory into f5
li x3, 0x6a28f07e # load x3 with value 0x6a28f07e
sw x3, 0(x2) # store 0x6a28f07e in memory
flw f24, 0(x2) # load 0x6a28f07e from memory into f24
fadd.s f5, f5, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0x205b7c11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe9b1a26c # load x3 with value 0xe9b1a26c
sw x3, 0(x2) # store 0xe9b1a26c in memory
flw f6, 0(x2) # load 0xe9b1a26c from memory into f6
li x3, 0x6a8eb05f # load x3 with value 0x6a8eb05f
sw x3, 0(x2) # store 0x6a8eb05f in memory
flw f1, 0(x2) # load 0x6a8eb05f from memory into f1
fadd.s f6, f6, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0x30133877 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5fdbf401 # load x3 with value 0x5fdbf401
sw x3, 0(x2) # store 0x5fdbf401 in memory
flw f7, 0(x2) # load 0x5fdbf401 from memory into f7
li x3, 0x5813236e # load x3 with value 0x5813236e
sw x3, 0(x2) # store 0x5813236e in memory
flw f5, 0(x2) # load 0x5813236e from memory into f5
fadd.s f7, f7, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0xf46ed16d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x96bf7df7 # load x3 with value 0x96bf7df7
sw x3, 0(x2) # store 0x96bf7df7 in memory
flw f8, 0(x2) # load 0x96bf7df7 from memory into f8
li x3, 0x812e2d20 # load x3 with value 0x812e2d20
sw x3, 0(x2) # store 0x812e2d20 in memory
flw f11, 0(x2) # load 0x812e2d20 from memory into f11
fadd.s f8, f8, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0xf4b39458 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb1bca553 # load x3 with value 0xb1bca553
sw x3, 0(x2) # store 0xb1bca553 in memory
flw f9, 0(x2) # load 0xb1bca553 from memory into f9
li x3, 0x1c8790b1 # load x3 with value 0x1c8790b1
sw x3, 0(x2) # store 0x1c8790b1 in memory
flw f7, 0(x2) # load 0x1c8790b1 from memory into f7
fadd.s f9, f9, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0xff9083f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x83c8cc4d # load x3 with value 0x83c8cc4d
sw x3, 0(x2) # store 0x83c8cc4d in memory
flw f10, 0(x2) # load 0x83c8cc4d from memory into f10
li x3, 0x72f4803b # load x3 with value 0x72f4803b
sw x3, 0(x2) # store 0x72f4803b in memory
flw f12, 0(x2) # load 0x72f4803b from memory into f12
fadd.s f10, f10, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0xde0dde80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7dbd6379 # load x3 with value 0x7dbd6379
sw x3, 0(x2) # store 0x7dbd6379 in memory
flw f11, 0(x2) # load 0x7dbd6379 from memory into f11
li x3, 0x5411feff # load x3 with value 0x5411feff
sw x3, 0(x2) # store 0x5411feff in memory
flw f5, 0(x2) # load 0x5411feff from memory into f5
fadd.s f11, f11, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0x4ae1aaf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x49fe0135 # load x3 with value 0x49fe0135
sw x3, 0(x2) # store 0x49fe0135 in memory
flw f12, 0(x2) # load 0x49fe0135 from memory into f12
li x3, 0xd657ec9a # load x3 with value 0xd657ec9a
sw x3, 0(x2) # store 0xd657ec9a in memory
flw f12, 0(x2) # load 0xd657ec9a from memory into f12
fadd.s f12, f12, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0x6040c54e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x903752ac # load x3 with value 0x903752ac
sw x3, 0(x2) # store 0x903752ac in memory
flw f13, 0(x2) # load 0x903752ac from memory into f13
li x3, 0x048cb9b5 # load x3 with value 0x048cb9b5
sw x3, 0(x2) # store 0x048cb9b5 in memory
flw f24, 0(x2) # load 0x048cb9b5 from memory into f24
fadd.s f13, f13, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0xd78763a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdca8954b # load x3 with value 0xdca8954b
sw x3, 0(x2) # store 0xdca8954b in memory
flw f14, 0(x2) # load 0xdca8954b from memory into f14
li x3, 0xefd3a920 # load x3 with value 0xefd3a920
sw x3, 0(x2) # store 0xefd3a920 in memory
flw f4, 0(x2) # load 0xefd3a920 from memory into f4
fadd.s f14, f14, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0x30722506 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4a3c8a2b # load x3 with value 0x4a3c8a2b
sw x3, 0(x2) # store 0x4a3c8a2b in memory
flw f15, 0(x2) # load 0x4a3c8a2b from memory into f15
li x3, 0x90e04a5b # load x3 with value 0x90e04a5b
sw x3, 0(x2) # store 0x90e04a5b in memory
flw f5, 0(x2) # load 0x90e04a5b from memory into f5
fadd.s f15, f15, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0xb40fa7b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf8a4e7fb # load x3 with value 0xf8a4e7fb
sw x3, 0(x2) # store 0xf8a4e7fb in memory
flw f16, 0(x2) # load 0xf8a4e7fb from memory into f16
li x3, 0x221c082b # load x3 with value 0x221c082b
sw x3, 0(x2) # store 0x221c082b in memory
flw f22, 0(x2) # load 0x221c082b from memory into f22
fadd.s f16, f16, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0x11dcbe78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6b37ea4f # load x3 with value 0x6b37ea4f
sw x3, 0(x2) # store 0x6b37ea4f in memory
flw f17, 0(x2) # load 0x6b37ea4f from memory into f17
li x3, 0x180ddd7f # load x3 with value 0x180ddd7f
sw x3, 0(x2) # store 0x180ddd7f in memory
flw f17, 0(x2) # load 0x180ddd7f from memory into f17
fadd.s f17, f17, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0xd27e5d19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaad2fc01 # load x3 with value 0xaad2fc01
sw x3, 0(x2) # store 0xaad2fc01 in memory
flw f18, 0(x2) # load 0xaad2fc01 from memory into f18
li x3, 0x798dad37 # load x3 with value 0x798dad37
sw x3, 0(x2) # store 0x798dad37 in memory
flw f24, 0(x2) # load 0x798dad37 from memory into f24
fadd.s f18, f18, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0x04f552d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd3bd2993 # load x3 with value 0xd3bd2993
sw x3, 0(x2) # store 0xd3bd2993 in memory
flw f19, 0(x2) # load 0xd3bd2993 from memory into f19
li x3, 0x1fecce71 # load x3 with value 0x1fecce71
sw x3, 0(x2) # store 0x1fecce71 in memory
flw f12, 0(x2) # load 0x1fecce71 from memory into f12
fadd.s f19, f19, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0x5a2321ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0b781eed # load x3 with value 0x0b781eed
sw x3, 0(x2) # store 0x0b781eed in memory
flw f20, 0(x2) # load 0x0b781eed from memory into f20
li x3, 0x85af74dc # load x3 with value 0x85af74dc
sw x3, 0(x2) # store 0x85af74dc in memory
flw f5, 0(x2) # load 0x85af74dc from memory into f5
fadd.s f20, f20, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0xac2bf72a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb3c59e17 # load x3 with value 0xb3c59e17
sw x3, 0(x2) # store 0xb3c59e17 in memory
flw f21, 0(x2) # load 0xb3c59e17 from memory into f21
li x3, 0x93b9ef10 # load x3 with value 0x93b9ef10
sw x3, 0(x2) # store 0x93b9ef10 in memory
flw f3, 0(x2) # load 0x93b9ef10 from memory into f3
fadd.s f21, f21, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0xf9078efd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7853a092 # load x3 with value 0x7853a092
sw x3, 0(x2) # store 0x7853a092 in memory
flw f22, 0(x2) # load 0x7853a092 from memory into f22
li x3, 0x5dc5ed8f # load x3 with value 0x5dc5ed8f
sw x3, 0(x2) # store 0x5dc5ed8f in memory
flw f4, 0(x2) # load 0x5dc5ed8f from memory into f4
fadd.s f22, f22, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0x9585282e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdd0b81f5 # load x3 with value 0xdd0b81f5
sw x3, 0(x2) # store 0xdd0b81f5 in memory
flw f23, 0(x2) # load 0xdd0b81f5 from memory into f23
li x3, 0x2b07284f # load x3 with value 0x2b07284f
sw x3, 0(x2) # store 0x2b07284f in memory
flw f9, 0(x2) # load 0x2b07284f from memory into f9
fadd.s f23, f23, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0x88835dec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x627be907 # load x3 with value 0x627be907
sw x3, 0(x2) # store 0x627be907 in memory
flw f24, 0(x2) # load 0x627be907 from memory into f24
li x3, 0xd902c7fe # load x3 with value 0xd902c7fe
sw x3, 0(x2) # store 0xd902c7fe in memory
flw f31, 0(x2) # load 0xd902c7fe from memory into f31
fadd.s f24, f24, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0x4f031dd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3820fdf1 # load x3 with value 0x3820fdf1
sw x3, 0(x2) # store 0x3820fdf1 in memory
flw f25, 0(x2) # load 0x3820fdf1 from memory into f25
li x3, 0xd1da09e8 # load x3 with value 0xd1da09e8
sw x3, 0(x2) # store 0xd1da09e8 in memory
flw f31, 0(x2) # load 0xd1da09e8 from memory into f31
fadd.s f25, f25, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0x6e85ecc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x20ff761a # load x3 with value 0x20ff761a
sw x3, 0(x2) # store 0x20ff761a in memory
flw f26, 0(x2) # load 0x20ff761a from memory into f26
li x3, 0x8f34a8a5 # load x3 with value 0x8f34a8a5
sw x3, 0(x2) # store 0x8f34a8a5 in memory
flw f3, 0(x2) # load 0x8f34a8a5 from memory into f3
fadd.s f26, f26, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0x8b7324b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4ed7e51a # load x3 with value 0x4ed7e51a
sw x3, 0(x2) # store 0x4ed7e51a in memory
flw f27, 0(x2) # load 0x4ed7e51a from memory into f27
li x3, 0xfb742571 # load x3 with value 0xfb742571
sw x3, 0(x2) # store 0xfb742571 in memory
flw f18, 0(x2) # load 0xfb742571 from memory into f18
fadd.s f27, f27, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0xb2b1feaa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6d27693a # load x3 with value 0x6d27693a
sw x3, 0(x2) # store 0x6d27693a in memory
flw f28, 0(x2) # load 0x6d27693a from memory into f28
li x3, 0x6c803c70 # load x3 with value 0x6c803c70
sw x3, 0(x2) # store 0x6c803c70 in memory
flw f10, 0(x2) # load 0x6c803c70 from memory into f10
fadd.s f28, f28, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0xd4025087 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x835c047d # load x3 with value 0x835c047d
sw x3, 0(x2) # store 0x835c047d in memory
flw f29, 0(x2) # load 0x835c047d from memory into f29
li x3, 0x6c9afc82 # load x3 with value 0x6c9afc82
sw x3, 0(x2) # store 0x6c9afc82 in memory
flw f31, 0(x2) # load 0x6c9afc82 from memory into f31
fadd.s f29, f29, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0x3c51ca83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4c83d36d # load x3 with value 0x4c83d36d
sw x3, 0(x2) # store 0x4c83d36d in memory
flw f30, 0(x2) # load 0x4c83d36d from memory into f30
li x3, 0xe274871d # load x3 with value 0xe274871d
sw x3, 0(x2) # store 0xe274871d in memory
flw f12, 0(x2) # load 0xe274871d from memory into f12
fadd.s f30, f30, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0x3cdc361b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1da224a4 # load x3 with value 0x1da224a4
sw x3, 0(x2) # store 0x1da224a4 in memory
flw f31, 0(x2) # load 0x1da224a4 from memory into f31
li x3, 0xddc4415c # load x3 with value 0xddc4415c
sw x3, 0(x2) # store 0xddc4415c in memory
flw f26, 0(x2) # load 0xddc4415c from memory into f26
fadd.s f31, f31, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
li x0, 0x133e2481 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x85f7ccaa # load x3 with value 0x85f7ccaa
sw x3, 0(x2) # store 0x85f7ccaa in memory
flw f13, 0(x2) # load 0x85f7ccaa from memory into f13
li x3, 0x4d90d70d # load x3 with value 0x4d90d70d
sw x3, 0(x2) # store 0x4d90d70d in memory
flw f0, 0(x2) # load 0x4d90d70d from memory into f0
fadd.s f0, f13, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
li x1, 0xfcd589f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc1985de9 # load x3 with value 0xc1985de9
sw x3, 0(x2) # store 0xc1985de9 in memory
flw f9, 0(x2) # load 0xc1985de9 from memory into f9
li x3, 0x431559a2 # load x3 with value 0x431559a2
sw x3, 0(x2) # store 0x431559a2 in memory
flw f1, 0(x2) # load 0x431559a2 from memory into f1
fadd.s f1, f9, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
li x2, 0xfd7c2f77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3d3efe51 # load x3 with value 0x3d3efe51
sw x3, 0(x2) # store 0x3d3efe51 in memory
flw f3, 0(x2) # load 0x3d3efe51 from memory into f3
li x3, 0xd07bd418 # load x3 with value 0xd07bd418
sw x3, 0(x2) # store 0xd07bd418 in memory
flw f2, 0(x2) # load 0xd07bd418 from memory into f2
fadd.s f2, f3, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
li x3, 0xf47516f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2cbe0bfa # load x3 with value 0x2cbe0bfa
sw x3, 0(x2) # store 0x2cbe0bfa in memory
flw f15, 0(x2) # load 0x2cbe0bfa from memory into f15
li x3, 0x06bad9c5 # load x3 with value 0x06bad9c5
sw x3, 0(x2) # store 0x06bad9c5 in memory
flw f3, 0(x2) # load 0x06bad9c5 from memory into f3
fadd.s f3, f15, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
li x4, 0x3e9ab7d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0cd5d55 # load x3 with value 0xc0cd5d55
sw x3, 0(x2) # store 0xc0cd5d55 in memory
flw f28, 0(x2) # load 0xc0cd5d55 from memory into f28
li x3, 0x633d5a74 # load x3 with value 0x633d5a74
sw x3, 0(x2) # store 0x633d5a74 in memory
flw f4, 0(x2) # load 0x633d5a74 from memory into f4
fadd.s f4, f28, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
li x5, 0xbcf6a7f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd3236d2e # load x3 with value 0xd3236d2e
sw x3, 0(x2) # store 0xd3236d2e in memory
flw f18, 0(x2) # load 0xd3236d2e from memory into f18
li x3, 0xf6943449 # load x3 with value 0xf6943449
sw x3, 0(x2) # store 0xf6943449 in memory
flw f5, 0(x2) # load 0xf6943449 from memory into f5
fadd.s f5, f18, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
li x6, 0x1e2f86c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9db5f48d # load x3 with value 0x9db5f48d
sw x3, 0(x2) # store 0x9db5f48d in memory
flw f14, 0(x2) # load 0x9db5f48d from memory into f14
li x3, 0x75a66864 # load x3 with value 0x75a66864
sw x3, 0(x2) # store 0x75a66864 in memory
flw f6, 0(x2) # load 0x75a66864 from memory into f6
fadd.s f6, f14, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
li x7, 0x80ace8f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf9755d93 # load x3 with value 0xf9755d93
sw x3, 0(x2) # store 0xf9755d93 in memory
flw f12, 0(x2) # load 0xf9755d93 from memory into f12
li x3, 0x192138f5 # load x3 with value 0x192138f5
sw x3, 0(x2) # store 0x192138f5 in memory
flw f7, 0(x2) # load 0x192138f5 from memory into f7
fadd.s f7, f12, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
li x8, 0x50d9ce82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3df05da9 # load x3 with value 0x3df05da9
sw x3, 0(x2) # store 0x3df05da9 in memory
flw f29, 0(x2) # load 0x3df05da9 from memory into f29
li x3, 0xdc0c113c # load x3 with value 0xdc0c113c
sw x3, 0(x2) # store 0xdc0c113c in memory
flw f8, 0(x2) # load 0xdc0c113c from memory into f8
fadd.s f8, f29, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
li x9, 0xebd241f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00d4c992 # load x3 with value 0x00d4c992
sw x3, 0(x2) # store 0x00d4c992 in memory
flw f6, 0(x2) # load 0x00d4c992 from memory into f6
li x3, 0x6a498274 # load x3 with value 0x6a498274
sw x3, 0(x2) # store 0x6a498274 in memory
flw f9, 0(x2) # load 0x6a498274 from memory into f9
fadd.s f9, f6, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
li x10, 0xa6c99122 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x724947d4 # load x3 with value 0x724947d4
sw x3, 0(x2) # store 0x724947d4 in memory
flw f10, 0(x2) # load 0x724947d4 from memory into f10
li x3, 0xcfaf4945 # load x3 with value 0xcfaf4945
sw x3, 0(x2) # store 0xcfaf4945 in memory
flw f10, 0(x2) # load 0xcfaf4945 from memory into f10
fadd.s f10, f10, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
li x11, 0xbe1a6311 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x46d7dd3f # load x3 with value 0x46d7dd3f
sw x3, 0(x2) # store 0x46d7dd3f in memory
flw f10, 0(x2) # load 0x46d7dd3f from memory into f10
li x3, 0xd510bfee # load x3 with value 0xd510bfee
sw x3, 0(x2) # store 0xd510bfee in memory
flw f11, 0(x2) # load 0xd510bfee from memory into f11
fadd.s f11, f10, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
li x12, 0x59d8c317 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x22c2ff04 # load x3 with value 0x22c2ff04
sw x3, 0(x2) # store 0x22c2ff04 in memory
flw f19, 0(x2) # load 0x22c2ff04 from memory into f19
li x3, 0x3d4f2b36 # load x3 with value 0x3d4f2b36
sw x3, 0(x2) # store 0x3d4f2b36 in memory
flw f12, 0(x2) # load 0x3d4f2b36 from memory into f12
fadd.s f12, f19, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
li x13, 0x9d3e8ca8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9de88fb4 # load x3 with value 0x9de88fb4
sw x3, 0(x2) # store 0x9de88fb4 in memory
flw f4, 0(x2) # load 0x9de88fb4 from memory into f4
li x3, 0xc998dd70 # load x3 with value 0xc998dd70
sw x3, 0(x2) # store 0xc998dd70 in memory
flw f13, 0(x2) # load 0xc998dd70 from memory into f13
fadd.s f13, f4, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
li x14, 0xfb4245e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xad4fc54b # load x3 with value 0xad4fc54b
sw x3, 0(x2) # store 0xad4fc54b in memory
flw f8, 0(x2) # load 0xad4fc54b from memory into f8
li x3, 0xd8f5f0ab # load x3 with value 0xd8f5f0ab
sw x3, 0(x2) # store 0xd8f5f0ab in memory
flw f14, 0(x2) # load 0xd8f5f0ab from memory into f14
fadd.s f14, f8, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
li x15, 0xd9f4bfb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaf6c3d2e # load x3 with value 0xaf6c3d2e
sw x3, 0(x2) # store 0xaf6c3d2e in memory
flw f11, 0(x2) # load 0xaf6c3d2e from memory into f11
li x3, 0xab77fb3c # load x3 with value 0xab77fb3c
sw x3, 0(x2) # store 0xab77fb3c in memory
flw f15, 0(x2) # load 0xab77fb3c from memory into f15
fadd.s f15, f11, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
li x16, 0xbe1b2de7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7c8a7bcc # load x3 with value 0x7c8a7bcc
sw x3, 0(x2) # store 0x7c8a7bcc in memory
flw f17, 0(x2) # load 0x7c8a7bcc from memory into f17
li x3, 0x5635bd8e # load x3 with value 0x5635bd8e
sw x3, 0(x2) # store 0x5635bd8e in memory
flw f16, 0(x2) # load 0x5635bd8e from memory into f16
fadd.s f16, f17, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
li x17, 0x2528b99f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x873d0cb6 # load x3 with value 0x873d0cb6
sw x3, 0(x2) # store 0x873d0cb6 in memory
flw f5, 0(x2) # load 0x873d0cb6 from memory into f5
li x3, 0x94c6b5de # load x3 with value 0x94c6b5de
sw x3, 0(x2) # store 0x94c6b5de in memory
flw f17, 0(x2) # load 0x94c6b5de from memory into f17
fadd.s f17, f5, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
li x18, 0xba8a15be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x19408e65 # load x3 with value 0x19408e65
sw x3, 0(x2) # store 0x19408e65 in memory
flw f9, 0(x2) # load 0x19408e65 from memory into f9
li x3, 0x10f14446 # load x3 with value 0x10f14446
sw x3, 0(x2) # store 0x10f14446 in memory
flw f18, 0(x2) # load 0x10f14446 from memory into f18
fadd.s f18, f9, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
li x19, 0x48141699 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x68f968b6 # load x3 with value 0x68f968b6
sw x3, 0(x2) # store 0x68f968b6 in memory
flw f30, 0(x2) # load 0x68f968b6 from memory into f30
li x3, 0x07c2b869 # load x3 with value 0x07c2b869
sw x3, 0(x2) # store 0x07c2b869 in memory
flw f19, 0(x2) # load 0x07c2b869 from memory into f19
fadd.s f19, f30, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
li x20, 0x6c2ba309 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6b6d11c # load x3 with value 0xa6b6d11c
sw x3, 0(x2) # store 0xa6b6d11c in memory
flw f12, 0(x2) # load 0xa6b6d11c from memory into f12
li x3, 0xc6743955 # load x3 with value 0xc6743955
sw x3, 0(x2) # store 0xc6743955 in memory
flw f20, 0(x2) # load 0xc6743955 from memory into f20
fadd.s f20, f12, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
li x21, 0x19cb82d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7df56166 # load x3 with value 0x7df56166
sw x3, 0(x2) # store 0x7df56166 in memory
flw f2, 0(x2) # load 0x7df56166 from memory into f2
li x3, 0x48b84d2c # load x3 with value 0x48b84d2c
sw x3, 0(x2) # store 0x48b84d2c in memory
flw f21, 0(x2) # load 0x48b84d2c from memory into f21
fadd.s f21, f2, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
li x22, 0xfe57efaf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00d139df # load x3 with value 0x00d139df
sw x3, 0(x2) # store 0x00d139df in memory
flw f27, 0(x2) # load 0x00d139df from memory into f27
li x3, 0x71a2a2bd # load x3 with value 0x71a2a2bd
sw x3, 0(x2) # store 0x71a2a2bd in memory
flw f22, 0(x2) # load 0x71a2a2bd from memory into f22
fadd.s f22, f27, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
li x23, 0x9590d1c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdbd75c58 # load x3 with value 0xdbd75c58
sw x3, 0(x2) # store 0xdbd75c58 in memory
flw f10, 0(x2) # load 0xdbd75c58 from memory into f10
li x3, 0x7dae7003 # load x3 with value 0x7dae7003
sw x3, 0(x2) # store 0x7dae7003 in memory
flw f23, 0(x2) # load 0x7dae7003 from memory into f23
fadd.s f23, f10, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
li x24, 0x88d1513b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdf583128 # load x3 with value 0xdf583128
sw x3, 0(x2) # store 0xdf583128 in memory
flw f16, 0(x2) # load 0xdf583128 from memory into f16
li x3, 0x0f4ab18d # load x3 with value 0x0f4ab18d
sw x3, 0(x2) # store 0x0f4ab18d in memory
flw f24, 0(x2) # load 0x0f4ab18d from memory into f24
fadd.s f24, f16, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
li x25, 0xfacacebe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfed7dd02 # load x3 with value 0xfed7dd02
sw x3, 0(x2) # store 0xfed7dd02 in memory
flw f12, 0(x2) # load 0xfed7dd02 from memory into f12
li x3, 0x638203f6 # load x3 with value 0x638203f6
sw x3, 0(x2) # store 0x638203f6 in memory
flw f25, 0(x2) # load 0x638203f6 from memory into f25
fadd.s f25, f12, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
li x26, 0x48868b47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x215cf616 # load x3 with value 0x215cf616
sw x3, 0(x2) # store 0x215cf616 in memory
flw f5, 0(x2) # load 0x215cf616 from memory into f5
li x3, 0xa489eabb # load x3 with value 0xa489eabb
sw x3, 0(x2) # store 0xa489eabb in memory
flw f26, 0(x2) # load 0xa489eabb from memory into f26
fadd.s f26, f5, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
li x27, 0x22eb1915 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6aca559b # load x3 with value 0x6aca559b
sw x3, 0(x2) # store 0x6aca559b in memory
flw f6, 0(x2) # load 0x6aca559b from memory into f6
li x3, 0xedc14cac # load x3 with value 0xedc14cac
sw x3, 0(x2) # store 0xedc14cac in memory
flw f27, 0(x2) # load 0xedc14cac from memory into f27
fadd.s f27, f6, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
li x28, 0x2e55d11b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x88ed9671 # load x3 with value 0x88ed9671
sw x3, 0(x2) # store 0x88ed9671 in memory
flw f2, 0(x2) # load 0x88ed9671 from memory into f2
li x3, 0x8634d5d4 # load x3 with value 0x8634d5d4
sw x3, 0(x2) # store 0x8634d5d4 in memory
flw f28, 0(x2) # load 0x8634d5d4 from memory into f28
fadd.s f28, f2, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
li x29, 0x8a6647f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8e4d4c23 # load x3 with value 0x8e4d4c23
sw x3, 0(x2) # store 0x8e4d4c23 in memory
flw f10, 0(x2) # load 0x8e4d4c23 from memory into f10
li x3, 0x6998f0e5 # load x3 with value 0x6998f0e5
sw x3, 0(x2) # store 0x6998f0e5 in memory
flw f29, 0(x2) # load 0x6998f0e5 from memory into f29
fadd.s f29, f10, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
li x30, 0x9235a813 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf47b0c02 # load x3 with value 0xf47b0c02
sw x3, 0(x2) # store 0xf47b0c02 in memory
flw f22, 0(x2) # load 0xf47b0c02 from memory into f22
li x3, 0x5774900f # load x3 with value 0x5774900f
sw x3, 0(x2) # store 0x5774900f in memory
flw f30, 0(x2) # load 0x5774900f from memory into f30
fadd.s f30, f22, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
li x31, 0x0b5c1de2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5479adb4 # load x3 with value 0x5479adb4
sw x3, 0(x2) # store 0x5479adb4 in memory
flw f14, 0(x2) # load 0x5479adb4 from memory into f14
li x3, 0x932d432b # load x3 with value 0x932d432b
sw x3, 0(x2) # store 0x932d432b in memory
flw f31, 0(x2) # load 0x932d432b from memory into f31
fadd.s f31, f14, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x3, 0x7e1de6b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f1, 0(x2) # load 0x00000000 from memory into f1
li x3, 0x8cb86078 # load x3 with value 0x8cb86078
sw x3, 0(x2) # store 0x8cb86078 in memory
flw f12, 0(x2) # load 0x8cb86078 from memory into f12
fadd.s f3, f1, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
li x31, 0x3d79e0db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f22, 0(x2) # load 0x80000000 from memory into f22
li x3, 0xd0c33f14 # load x3 with value 0xd0c33f14
sw x3, 0(x2) # store 0xd0c33f14 in memory
flw f9, 0(x2) # load 0xd0c33f14 from memory into f9
fadd.s f31, f22, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
li x29, 0x13fc31ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f14, 0(x2) # load 0x3f800000 from memory into f14
li x3, 0xeacc626a # load x3 with value 0xeacc626a
sw x3, 0(x2) # store 0xeacc626a in memory
flw f23, 0(x2) # load 0xeacc626a from memory into f23
fadd.s f29, f14, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
li x22, 0xe0b21d9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f26, 0(x2) # load 0xbf800000 from memory into f26
li x3, 0x35ef823a # load x3 with value 0x35ef823a
sw x3, 0(x2) # store 0x35ef823a in memory
flw f27, 0(x2) # load 0x35ef823a from memory into f27
fadd.s f22, f26, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
li x4, 0x8f9e45c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
li x3, 0xd4796eaf # load x3 with value 0xd4796eaf
sw x3, 0(x2) # store 0xd4796eaf in memory
flw f12, 0(x2) # load 0xd4796eaf from memory into f12
fadd.s f4, f13, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
li x25, 0x9ded44a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
li x3, 0x52329a0b # load x3 with value 0x52329a0b
sw x3, 0(x2) # store 0x52329a0b in memory
flw f5, 0(x2) # load 0x52329a0b from memory into f5
fadd.s f25, f29, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
li x14, 0x7a506797 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f26, 0(x2) # load 0x40000000 from memory into f26
li x3, 0xfcccf886 # load x3 with value 0xfcccf886
sw x3, 0(x2) # store 0xfcccf886 in memory
flw f19, 0(x2) # load 0xfcccf886 from memory into f19
fadd.s f14, f26, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
li x12, 0x8246add5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f10, 0(x2) # load 0xc0000000 from memory into f10
li x3, 0xf71cde98 # load x3 with value 0xf71cde98
sw x3, 0(x2) # store 0xf71cde98 in memory
flw f14, 0(x2) # load 0xf71cde98 from memory into f14
fadd.s f12, f10, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
li x10, 0xed1fb9ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f21, 0(x2) # load 0x00800000 from memory into f21
li x3, 0xa044c120 # load x3 with value 0xa044c120
sw x3, 0(x2) # store 0xa044c120 in memory
flw f27, 0(x2) # load 0xa044c120 from memory into f27
fadd.s f10, f21, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
li x12, 0x92358c97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
li x3, 0x6f8a449e # load x3 with value 0x6f8a449e
sw x3, 0(x2) # store 0x6f8a449e in memory
flw f21, 0(x2) # load 0x6f8a449e from memory into f21
fadd.s f12, f20, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
li x13, 0x762e14a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f28, 0(x2) # load 0x7f7fffff from memory into f28
li x3, 0xb7675c67 # load x3 with value 0xb7675c67
sw x3, 0(x2) # store 0xb7675c67 in memory
flw f19, 0(x2) # load 0xb7675c67 from memory into f19
fadd.s f13, f28, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
li x1, 0x4d900be0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f27, 0(x2) # load 0xff7fffff from memory into f27
li x3, 0x3c7c4b4a # load x3 with value 0x3c7c4b4a
sw x3, 0(x2) # store 0x3c7c4b4a in memory
flw f4, 0(x2) # load 0x3c7c4b4a from memory into f4
fadd.s f1, f27, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
li x17, 0xad7b1cd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f8, 0(x2) # load 0x007fffff from memory into f8
li x3, 0xc2fb9ea1 # load x3 with value 0xc2fb9ea1
sw x3, 0(x2) # store 0xc2fb9ea1 in memory
flw f14, 0(x2) # load 0xc2fb9ea1 from memory into f14
fadd.s f17, f8, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
li x9, 0x3652857b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f6, 0(x2) # load 0x807fffff from memory into f6
li x3, 0xb3a08b10 # load x3 with value 0xb3a08b10
sw x3, 0(x2) # store 0xb3a08b10 in memory
flw f27, 0(x2) # load 0xb3a08b10 from memory into f27
fadd.s f9, f6, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
li x27, 0x8a4f431b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f31, 0(x2) # load 0x00400000 from memory into f31
li x3, 0xb8eba213 # load x3 with value 0xb8eba213
sw x3, 0(x2) # store 0xb8eba213 in memory
flw f23, 0(x2) # load 0xb8eba213 from memory into f23
fadd.s f27, f31, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
li x26, 0xd289a981 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f25, 0(x2) # load 0x80400000 from memory into f25
li x3, 0xb6d69a07 # load x3 with value 0xb6d69a07
sw x3, 0(x2) # store 0xb6d69a07 in memory
flw f29, 0(x2) # load 0xb6d69a07 from memory into f29
fadd.s f26, f25, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x27, 0x67639092 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
li x3, 0xecca39e2 # load x3 with value 0xecca39e2
sw x3, 0(x2) # store 0xecca39e2 in memory
flw f25, 0(x2) # load 0xecca39e2 from memory into f25
fadd.s f27, f5, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
li x15, 0xee479664 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f20, 0(x2) # load 0x80000001 from memory into f20
li x3, 0x8eda2ffb # load x3 with value 0x8eda2ffb
sw x3, 0(x2) # store 0x8eda2ffb in memory
flw f24, 0(x2) # load 0x8eda2ffb from memory into f24
fadd.s f15, f20, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
li x20, 0x9cfeb385 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f16, 0(x2) # load 0x7f800000 from memory into f16
li x3, 0x34d0f30c # load x3 with value 0x34d0f30c
sw x3, 0(x2) # store 0x34d0f30c in memory
flw f22, 0(x2) # load 0x34d0f30c from memory into f22
fadd.s f20, f16, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
li x26, 0xaeba8885 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f21, 0(x2) # load 0xff800000 from memory into f21
li x3, 0xd93a20ae # load x3 with value 0xd93a20ae
sw x3, 0(x2) # store 0xd93a20ae in memory
flw f6, 0(x2) # load 0xd93a20ae from memory into f6
fadd.s f26, f21, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
li x15, 0xeebae1a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
li x3, 0x8f0475f1 # load x3 with value 0x8f0475f1
sw x3, 0(x2) # store 0x8f0475f1 in memory
flw f25, 0(x2) # load 0x8f0475f1 from memory into f25
fadd.s f15, f10, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
li x15, 0x354b1feb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
li x3, 0x949aa74f # load x3 with value 0x949aa74f
sw x3, 0(x2) # store 0x949aa74f in memory
flw f19, 0(x2) # load 0x949aa74f from memory into f19
fadd.s f15, f2, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
li x24, 0xd41cf9a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f9, 0(x2) # load 0x7f800001 from memory into f9
li x3, 0xf39e8eb8 # load x3 with value 0xf39e8eb8
sw x3, 0(x2) # store 0xf39e8eb8 in memory
flw f14, 0(x2) # load 0xf39e8eb8 from memory into f14
fadd.s f24, f9, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
li x16, 0x9cbbb5cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
li x3, 0xf7141c93 # load x3 with value 0xf7141c93
sw x3, 0(x2) # store 0xf7141c93 in memory
flw f30, 0(x2) # load 0xf7141c93 from memory into f30
fadd.s f16, f31, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
li x18, 0x6cc03c8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f9, 0(x2) # load 0x7ef8654f from memory into f9
li x3, 0x71607517 # load x3 with value 0x71607517
sw x3, 0(x2) # store 0x71607517 in memory
flw f11, 0(x2) # load 0x71607517 from memory into f11
fadd.s f18, f9, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
li x10, 0x5f0e448f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f27, 0(x2) # load 0x813d9ab0 from memory into f27
li x3, 0xdf85997d # load x3 with value 0xdf85997d
sw x3, 0(x2) # store 0xdf85997d in memory
flw f4, 0(x2) # load 0xdf85997d from memory into f4
fadd.s f10, f27, f4 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x13, 0x1079a702 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcce15321 # load x3 with value 0xcce15321
sw x3, 0(x2) # store 0xcce15321 in memory
flw f18, 0(x2) # load 0xcce15321 from memory into f18
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f27, 0(x2) # load 0x00000000 from memory into f27
fadd.s f13, f18, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000000)
li x12, 0xba6ab3fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe56f4794 # load x3 with value 0xe56f4794
sw x3, 0(x2) # store 0xe56f4794 in memory
flw f4, 0(x2) # load 0xe56f4794 from memory into f4
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f21, 0(x2) # load 0x80000000 from memory into f21
fadd.s f12, f4, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
li x20, 0x8cf7029c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa254d246 # load x3 with value 0xa254d246
sw x3, 0(x2) # store 0xa254d246 in memory
flw f11, 0(x2) # load 0xa254d246 from memory into f11
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f22, 0(x2) # load 0x3f800000 from memory into f22
fadd.s f20, f11, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbf800000)
li x12, 0x46ec3db3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7bbda404 # load x3 with value 0x7bbda404
sw x3, 0(x2) # store 0x7bbda404 in memory
flw f11, 0(x2) # load 0x7bbda404 from memory into f11
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f8, 0(x2) # load 0xbf800000 from memory into f8
fadd.s f12, f11, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3fc00000)
li x9, 0x356bf5da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3a5e52e2 # load x3 with value 0x3a5e52e2
sw x3, 0(x2) # store 0x3a5e52e2 in memory
flw f27, 0(x2) # load 0x3a5e52e2 from memory into f27
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f1, 0(x2) # load 0x3fc00000 from memory into f1
fadd.s f9, f27, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbfc00000)
li x2, 0x08ca2ffd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9779a463 # load x3 with value 0x9779a463
sw x3, 0(x2) # store 0x9779a463 in memory
flw f29, 0(x2) # load 0x9779a463 from memory into f29
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
fadd.s f2, f29, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x40000000)
li x25, 0x0db6f6aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x740643e9 # load x3 with value 0x740643e9
sw x3, 0(x2) # store 0x740643e9 in memory
flw f16, 0(x2) # load 0x740643e9 from memory into f16
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
fadd.s f25, f16, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0000000)
li x26, 0xc3ab7035 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9d975d83 # load x3 with value 0x9d975d83
sw x3, 0(x2) # store 0x9d975d83 in memory
flw f8, 0(x2) # load 0x9d975d83 from memory into f8
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f6, 0(x2) # load 0xc0000000 from memory into f6
fadd.s f26, f8, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800000)
li x8, 0xf65d740c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3b59103d # load x3 with value 0x3b59103d
sw x3, 0(x2) # store 0x3b59103d in memory
flw f14, 0(x2) # load 0x3b59103d from memory into f14
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
fadd.s f8, f14, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80800000)
li x29, 0x62a6d3a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9c6030cf # load x3 with value 0x9c6030cf
sw x3, 0(x2) # store 0x9c6030cf in memory
flw f4, 0(x2) # load 0x9c6030cf from memory into f4
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f6, 0(x2) # load 0x80800000 from memory into f6
fadd.s f29, f4, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f7fffff)
li x1, 0x4a6202a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x38e33cf1 # load x3 with value 0x38e33cf1
sw x3, 0(x2) # store 0x38e33cf1 in memory
flw f14, 0(x2) # load 0x38e33cf1 from memory into f14
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
fadd.s f1, f14, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff7fffff)
li x24, 0x412ea8ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x78826679 # load x3 with value 0x78826679
sw x3, 0(x2) # store 0x78826679 in memory
flw f23, 0(x2) # load 0x78826679 from memory into f23
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f29, 0(x2) # load 0xff7fffff from memory into f29
fadd.s f24, f23, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffff)
li x28, 0x9c0896e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1f73cefc # load x3 with value 0x1f73cefc
sw x3, 0(x2) # store 0x1f73cefc in memory
flw f7, 0(x2) # load 0x1f73cefc from memory into f7
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f8, 0(x2) # load 0x007fffff from memory into f8
fadd.s f28, f7, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x807fffff)
li x15, 0x36bae53d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x109b7758 # load x3 with value 0x109b7758
sw x3, 0(x2) # store 0x109b7758 in memory
flw f23, 0(x2) # load 0x109b7758 from memory into f23
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f31, 0(x2) # load 0x807fffff from memory into f31
fadd.s f15, f23, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400000)
li x30, 0x0b87feee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x54895ab1 # load x3 with value 0x54895ab1
sw x3, 0(x2) # store 0x54895ab1 in memory
flw f9, 0(x2) # load 0x54895ab1 from memory into f9
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f17, 0(x2) # load 0x00400000 from memory into f17
fadd.s f30, f9, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80400000)
li x14, 0x977ef9ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0cfeefc0 # load x3 with value 0x0cfeefc0
sw x3, 0(x2) # store 0x0cfeefc0 in memory
flw f26, 0(x2) # load 0x0cfeefc0 from memory into f26
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f23, 0(x2) # load 0x80400000 from memory into f23
fadd.s f14, f26, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x31, 0xc6ac46cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9d468336 # load x3 with value 0x9d468336
sw x3, 0(x2) # store 0x9d468336 in memory
flw f17, 0(x2) # load 0x9d468336 from memory into f17
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
fadd.s f31, f17, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000001)
li x30, 0xa2939057 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x445f53ed # load x3 with value 0x445f53ed
sw x3, 0(x2) # store 0x445f53ed in memory
flw f7, 0(x2) # load 0x445f53ed from memory into f7
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
fadd.s f30, f7, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800000)
li x22, 0xd018eb26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5c38dcfb # load x3 with value 0x5c38dcfb
sw x3, 0(x2) # store 0x5c38dcfb in memory
flw f19, 0(x2) # load 0x5c38dcfb from memory into f19
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f18, 0(x2) # load 0x7f800000 from memory into f18
fadd.s f22, f19, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff800000)
li x3, 0x584b1b43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe7d751f1 # load x3 with value 0xe7d751f1
sw x3, 0(x2) # store 0xe7d751f1 in memory
flw f31, 0(x2) # load 0xe7d751f1 from memory into f31
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
fadd.s f3, f31, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fc00000)
li x20, 0xa7adce1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x20c0cfb2 # load x3 with value 0x20c0cfb2
sw x3, 0(x2) # store 0x20c0cfb2 in memory
flw f24, 0(x2) # load 0x20c0cfb2 from memory into f24
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
fadd.s f20, f24, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff)
li x15, 0x15f73d15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8835ddcf # load x3 with value 0x8835ddcf
sw x3, 0(x2) # store 0x8835ddcf in memory
flw f30, 0(x2) # load 0x8835ddcf from memory into f30
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f24, 0(x2) # load 0x7fffffff from memory into f24
fadd.s f15, f30, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800001)
li x9, 0x30b854c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4dc5f7ea # load x3 with value 0x4dc5f7ea
sw x3, 0(x2) # store 0x4dc5f7ea in memory
flw f27, 0(x2) # load 0x4dc5f7ea from memory into f27
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f16, 0(x2) # load 0x7f800001 from memory into f16
fadd.s f9, f27, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fbfffff)
li x28, 0xe07ff596 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xda2ba29e # load x3 with value 0xda2ba29e
sw x3, 0(x2) # store 0xda2ba29e in memory
flw f20, 0(x2) # load 0xda2ba29e from memory into f20
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f23, 0(x2) # load 0x7fbfffff from memory into f23
fadd.s f28, f20, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ef8654f)
li x17, 0xb1c7b3a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdac7eb22 # load x3 with value 0xdac7eb22
sw x3, 0(x2) # store 0xdac7eb22 in memory
flw f11, 0(x2) # load 0xdac7eb22 from memory into f11
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f25, 0(x2) # load 0x7ef8654f from memory into f25
fadd.s f17, f11, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x813d9ab0)
li x1, 0x2f0dfc69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x858ec8ab # load x3 with value 0x858ec8ab
sw x3, 0(x2) # store 0x858ec8ab in memory
flw f22, 0(x2) # load 0x858ec8ab from memory into f22
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f20, 0(x2) # load 0x813d9ab0 from memory into f20
fadd.s f1, f22, f20 # perform operation

# Testcase cp_frm
li x6, 0x7921f492 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfdfb2399 # load x3 with value 0xfdfb2399
sw x3, 0(x2) # store 0xfdfb2399 in memory
flw f2, 0(x2) # load 0xfdfb2399 from memory into f2
li x3, 0x604fb818 # load x3 with value 0x604fb818
sw x3, 0(x2) # store 0x604fb818 in memory
flw f16, 0(x2) # load 0x604fb818 from memory into f16
fadd.s f6, f2, f16, dyn # perform operation
fadd.s f6, f2, f16, rdn # perform operation
fadd.s f6, f2, f16, rmm # perform operation
fadd.s f6, f2, f16, rne # perform operation
fadd.s f6, f2, f16, rtz # perform operation
fadd.s f6, f2, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f2, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f2, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f2, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f2, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f2, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
li x31, 0x6528c0ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f22, 0(x2) # load 0x00000000 from memory into f22
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
fadd.s f31, f22, f9, dyn # perform operation
fadd.s f31, f22, f9, rdn # perform operation
fadd.s f31, f22, f9, rmm # perform operation
fadd.s f31, f22, f9, rne # perform operation
fadd.s f31, f22, f9, rtz # perform operation
fadd.s f31, f22, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f22, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f22, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f22, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f22, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f22, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80000000)
li x25, 0x289bbe81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f6, 0(x2) # load 0x00000000 from memory into f6
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f21, 0(x2) # load 0x80000000 from memory into f21
fadd.s f25, f6, f21, dyn # perform operation
fadd.s f25, f6, f21, rdn # perform operation
fadd.s f25, f6, f21, rmm # perform operation
fadd.s f25, f6, f21, rne # perform operation
fadd.s f25, f6, f21, rtz # perform operation
fadd.s f25, f6, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f6, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f6, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f6, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f6, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f6, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3f800000)
li x12, 0x0761577a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f1, 0(x2) # load 0x00000000 from memory into f1
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f14, 0(x2) # load 0x3f800000 from memory into f14
fadd.s f12, f1, f14, dyn # perform operation
fadd.s f12, f1, f14, rdn # perform operation
fadd.s f12, f1, f14, rmm # perform operation
fadd.s f12, f1, f14, rne # perform operation
fadd.s f12, f1, f14, rtz # perform operation
fadd.s f12, f1, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f1, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f1, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f1, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f1, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f1, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbf800000)
li x9, 0x6d017479 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f22, 0(x2) # load 0xbf800000 from memory into f22
fadd.s f9, f31, f22, dyn # perform operation
fadd.s f9, f31, f22, rdn # perform operation
fadd.s f9, f31, f22, rmm # perform operation
fadd.s f9, f31, f22, rne # perform operation
fadd.s f9, f31, f22, rtz # perform operation
fadd.s f9, f31, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f31, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f31, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f31, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f31, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f31, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3fc00000)
li x16, 0x4a4410d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f28, 0(x2) # load 0x00000000 from memory into f28
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f27, 0(x2) # load 0x3fc00000 from memory into f27
fadd.s f16, f28, f27, dyn # perform operation
fadd.s f16, f28, f27, rdn # perform operation
fadd.s f16, f28, f27, rmm # perform operation
fadd.s f16, f28, f27, rne # perform operation
fadd.s f16, f28, f27, rtz # perform operation
fadd.s f16, f28, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f28, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f28, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f28, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f28, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f28, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbfc00000)
li x6, 0x92466471 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f22, 0(x2) # load 0x00000000 from memory into f22
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f4, 0(x2) # load 0xbfc00000 from memory into f4
fadd.s f6, f22, f4, dyn # perform operation
fadd.s f6, f22, f4, rdn # perform operation
fadd.s f6, f22, f4, rmm # perform operation
fadd.s f6, f22, f4, rne # perform operation
fadd.s f6, f22, f4, rtz # perform operation
fadd.s f6, f22, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f22, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f22, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f22, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f22, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f22, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x40000000)
li x2, 0xe92b9dbb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f3, 0(x2) # load 0x40000000 from memory into f3
fadd.s f2, f13, f3, dyn # perform operation
fadd.s f2, f13, f3, rdn # perform operation
fadd.s f2, f13, f3, rmm # perform operation
fadd.s f2, f13, f3, rne # perform operation
fadd.s f2, f13, f3, rtz # perform operation
fadd.s f2, f13, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f13, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f13, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f13, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f13, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f13, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc0000000)
li x13, 0x3e6c6987 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f1, 0(x2) # load 0x00000000 from memory into f1
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
fadd.s f13, f1, f21, dyn # perform operation
fadd.s f13, f1, f21, rdn # perform operation
fadd.s f13, f1, f21, rmm # perform operation
fadd.s f13, f1, f21, rne # perform operation
fadd.s f13, f1, f21, rtz # perform operation
fadd.s f13, f1, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f1, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f1, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f1, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f1, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f1, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x800000)
li x14, 0xc37dbb04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
fadd.s f14, f15, f23, dyn # perform operation
fadd.s f14, f15, f23, rdn # perform operation
fadd.s f14, f15, f23, rmm # perform operation
fadd.s f14, f15, f23, rne # perform operation
fadd.s f14, f15, f23, rtz # perform operation
fadd.s f14, f15, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f15, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f15, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f15, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f15, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f15, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80800000)
li x11, 0x52efaf52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f13, 0(x2) # load 0x80800000 from memory into f13
fadd.s f11, f9, f13, dyn # perform operation
fadd.s f11, f9, f13, rdn # perform operation
fadd.s f11, f9, f13, rmm # perform operation
fadd.s f11, f9, f13, rne # perform operation
fadd.s f11, f9, f13, rtz # perform operation
fadd.s f11, f9, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f9, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f9, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f9, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f9, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f9, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f7fffff)
li x2, 0x3dc05d5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f7, 0(x2) # load 0x7f7fffff from memory into f7
fadd.s f2, f3, f7, dyn # perform operation
fadd.s f2, f3, f7, rdn # perform operation
fadd.s f2, f3, f7, rmm # perform operation
fadd.s f2, f3, f7, rne # perform operation
fadd.s f2, f3, f7, rtz # perform operation
fadd.s f2, f3, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f3, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f3, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f3, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f3, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f3, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xff7fffff)
li x26, 0xb29b0748 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f25, 0(x2) # load 0x00000000 from memory into f25
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f9, 0(x2) # load 0xff7fffff from memory into f9
fadd.s f26, f25, f9, dyn # perform operation
fadd.s f26, f25, f9, rdn # perform operation
fadd.s f26, f25, f9, rmm # perform operation
fadd.s f26, f25, f9, rne # perform operation
fadd.s f26, f25, f9, rtz # perform operation
fadd.s f26, f25, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f25, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f25, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f25, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f25, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f25, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffff)
li x1, 0xe31181c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f11, 0(x2) # load 0x00000000 from memory into f11
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f30, 0(x2) # load 0x007fffff from memory into f30
fadd.s f1, f11, f30, dyn # perform operation
fadd.s f1, f11, f30, rdn # perform operation
fadd.s f1, f11, f30, rmm # perform operation
fadd.s f1, f11, f30, rne # perform operation
fadd.s f1, f11, f30, rtz # perform operation
fadd.s f1, f11, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f11, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f11, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f11, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f11, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f11, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x807fffff)
li x26, 0xcff6f483 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f18, 0(x2) # load 0x00000000 from memory into f18
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f9, 0(x2) # load 0x807fffff from memory into f9
fadd.s f26, f18, f9, dyn # perform operation
fadd.s f26, f18, f9, rdn # perform operation
fadd.s f26, f18, f9, rmm # perform operation
fadd.s f26, f18, f9, rne # perform operation
fadd.s f26, f18, f9, rtz # perform operation
fadd.s f26, f18, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f18, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f18, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f18, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f18, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f18, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x400000)
li x7, 0xe793edf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f12, 0(x2) # load 0x00000000 from memory into f12
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
fadd.s f7, f12, f21, dyn # perform operation
fadd.s f7, f12, f21, rdn # perform operation
fadd.s f7, f12, f21, rmm # perform operation
fadd.s f7, f12, f21, rne # perform operation
fadd.s f7, f12, f21, rtz # perform operation
fadd.s f7, f12, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f12, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f12, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f12, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f12, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f12, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80400000)
li x31, 0x03eae9e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f3, 0(x2) # load 0x80400000 from memory into f3
fadd.s f31, f29, f3, dyn # perform operation
fadd.s f31, f29, f3, rdn # perform operation
fadd.s f31, f29, f3, rmm # perform operation
fadd.s f31, f29, f3, rne # perform operation
fadd.s f31, f29, f3, rtz # perform operation
fadd.s f31, f29, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f29, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f29, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f29, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f29, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f29, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
li x3, 0x5a94a763 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f6, 0(x2) # load 0x00000000 from memory into f6
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f15, 0(x2) # load 0x00000001 from memory into f15
fadd.s f3, f6, f15, dyn # perform operation
fadd.s f3, f6, f15, rdn # perform operation
fadd.s f3, f6, f15, rmm # perform operation
fadd.s f3, f6, f15, rne # perform operation
fadd.s f3, f6, f15, rtz # perform operation
fadd.s f3, f6, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f6, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f6, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f6, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f6, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f6, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80000001)
li x18, 0xcfd2dc7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f25, 0(x2) # load 0x00000000 from memory into f25
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f1, 0(x2) # load 0x80000001 from memory into f1
fadd.s f18, f25, f1, dyn # perform operation
fadd.s f18, f25, f1, rdn # perform operation
fadd.s f18, f25, f1, rmm # perform operation
fadd.s f18, f25, f1, rne # perform operation
fadd.s f18, f25, f1, rtz # perform operation
fadd.s f18, f25, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f25, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f25, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f25, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f25, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f25, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f800000)
li x19, 0xa45de24e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f7, 0(x2) # load 0x00000000 from memory into f7
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f8, 0(x2) # load 0x7f800000 from memory into f8
fadd.s f19, f7, f8, dyn # perform operation
fadd.s f19, f7, f8, rdn # perform operation
fadd.s f19, f7, f8, rmm # perform operation
fadd.s f19, f7, f8, rne # perform operation
fadd.s f19, f7, f8, rtz # perform operation
fadd.s f19, f7, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f7, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f7, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f7, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f7, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f7, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xff800000)
li x5, 0x1148ebc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f26, 0(x2) # load 0x00000000 from memory into f26
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
fadd.s f5, f26, f30, dyn # perform operation
fadd.s f5, f26, f30, rdn # perform operation
fadd.s f5, f26, f30, rmm # perform operation
fadd.s f5, f26, f30, rne # perform operation
fadd.s f5, f26, f30, rtz # perform operation
fadd.s f5, f26, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f26, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f26, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f26, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f26, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f26, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fc00000)
li x12, 0xb3f1cef1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f8, 0(x2) # load 0x7fc00000 from memory into f8
fadd.s f12, f9, f8, dyn # perform operation
fadd.s f12, f9, f8, rdn # perform operation
fadd.s f12, f9, f8, rmm # perform operation
fadd.s f12, f9, f8, rne # perform operation
fadd.s f12, f9, f8, rtz # perform operation
fadd.s f12, f9, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f9, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f9, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f9, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f9, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f9, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffffff)
li x7, 0x77a0b877 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f26, 0(x2) # load 0x00000000 from memory into f26
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f1, 0(x2) # load 0x7fffffff from memory into f1
fadd.s f7, f26, f1, dyn # perform operation
fadd.s f7, f26, f1, rdn # perform operation
fadd.s f7, f26, f1, rmm # perform operation
fadd.s f7, f26, f1, rne # perform operation
fadd.s f7, f26, f1, rtz # perform operation
fadd.s f7, f26, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f26, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f26, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f26, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f26, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f26, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f800001)
li x10, 0x75c35bbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f30, 0(x2) # load 0x00000000 from memory into f30
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
fadd.s f10, f30, f21, dyn # perform operation
fadd.s f10, f30, f21, rdn # perform operation
fadd.s f10, f30, f21, rmm # perform operation
fadd.s f10, f30, f21, rne # perform operation
fadd.s f10, f30, f21, rtz # perform operation
fadd.s f10, f30, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f30, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f30, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f30, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f30, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f30, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fbfffff)
li x12, 0xb8a453ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f28, 0(x2) # load 0x00000000 from memory into f28
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f5, 0(x2) # load 0x7fbfffff from memory into f5
fadd.s f12, f28, f5, dyn # perform operation
fadd.s f12, f28, f5, rdn # perform operation
fadd.s f12, f28, f5, rmm # perform operation
fadd.s f12, f28, f5, rne # perform operation
fadd.s f12, f28, f5, rtz # perform operation
fadd.s f12, f28, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f28, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f28, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f28, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f28, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f28, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ef8654f)
li x14, 0x66b92dd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f7, 0(x2) # load 0x00000000 from memory into f7
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f28, 0(x2) # load 0x7ef8654f from memory into f28
fadd.s f14, f7, f28, dyn # perform operation
fadd.s f14, f7, f28, rdn # perform operation
fadd.s f14, f7, f28, rmm # perform operation
fadd.s f14, f7, f28, rne # perform operation
fadd.s f14, f7, f28, rtz # perform operation
fadd.s f14, f7, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f7, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f7, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f7, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f7, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f7, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x813d9ab0)
li x25, 0x52ffea11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f18, 0(x2) # load 0x00000000 from memory into f18
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f14, 0(x2) # load 0x813d9ab0 from memory into f14
fadd.s f25, f18, f14, dyn # perform operation
fadd.s f25, f18, f14, rdn # perform operation
fadd.s f25, f18, f14, rmm # perform operation
fadd.s f25, f18, f14, rne # perform operation
fadd.s f25, f18, f14, rtz # perform operation
fadd.s f25, f18, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f18, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f18, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f18, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f18, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f18, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x0)
li x24, 0x2a39c1f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f16, 0(x2) # load 0x80000000 from memory into f16
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
fadd.s f24, f16, f31, dyn # perform operation
fadd.s f24, f16, f31, rdn # perform operation
fadd.s f24, f16, f31, rmm # perform operation
fadd.s f24, f16, f31, rne # perform operation
fadd.s f24, f16, f31, rtz # perform operation
fadd.s f24, f16, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f16, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f16, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f16, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f16, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f16, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80000000)
li x13, 0xfc767d0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f25, 0(x2) # load 0x80000000 from memory into f25
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f3, 0(x2) # load 0x80000000 from memory into f3
fadd.s f13, f25, f3, dyn # perform operation
fadd.s f13, f25, f3, rdn # perform operation
fadd.s f13, f25, f3, rmm # perform operation
fadd.s f13, f25, f3, rne # perform operation
fadd.s f13, f25, f3, rtz # perform operation
fadd.s f13, f25, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f25, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f25, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f25, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f25, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f25, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x3f800000)
li x5, 0x54f74da1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f26, 0(x2) # load 0x80000000 from memory into f26
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f19, 0(x2) # load 0x3f800000 from memory into f19
fadd.s f5, f26, f19, dyn # perform operation
fadd.s f5, f26, f19, rdn # perform operation
fadd.s f5, f26, f19, rmm # perform operation
fadd.s f5, f26, f19, rne # perform operation
fadd.s f5, f26, f19, rtz # perform operation
fadd.s f5, f26, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f26, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f26, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f26, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f26, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f26, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xbf800000)
li x10, 0x11f93e97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f26, 0(x2) # load 0x80000000 from memory into f26
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
fadd.s f10, f26, f21, dyn # perform operation
fadd.s f10, f26, f21, rdn # perform operation
fadd.s f10, f26, f21, rmm # perform operation
fadd.s f10, f26, f21, rne # perform operation
fadd.s f10, f26, f21, rtz # perform operation
fadd.s f10, f26, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f26, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f26, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f26, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f26, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f26, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x3fc00000)
li x15, 0xe4c429e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f18, 0(x2) # load 0x80000000 from memory into f18
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f1, 0(x2) # load 0x3fc00000 from memory into f1
fadd.s f15, f18, f1, dyn # perform operation
fadd.s f15, f18, f1, rdn # perform operation
fadd.s f15, f18, f1, rmm # perform operation
fadd.s f15, f18, f1, rne # perform operation
fadd.s f15, f18, f1, rtz # perform operation
fadd.s f15, f18, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f18, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f18, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f18, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f18, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f18, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xbfc00000)
li x17, 0x0646b9af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f22, 0(x2) # load 0x80000000 from memory into f22
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f4, 0(x2) # load 0xbfc00000 from memory into f4
fadd.s f17, f22, f4, dyn # perform operation
fadd.s f17, f22, f4, rdn # perform operation
fadd.s f17, f22, f4, rmm # perform operation
fadd.s f17, f22, f4, rne # perform operation
fadd.s f17, f22, f4, rtz # perform operation
fadd.s f17, f22, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f22, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f22, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f22, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f22, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f22, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x40000000)
li x23, 0xe009d12b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f20, 0(x2) # load 0x80000000 from memory into f20
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f22, 0(x2) # load 0x40000000 from memory into f22
fadd.s f23, f20, f22, dyn # perform operation
fadd.s f23, f20, f22, rdn # perform operation
fadd.s f23, f20, f22, rmm # perform operation
fadd.s f23, f20, f22, rne # perform operation
fadd.s f23, f20, f22, rtz # perform operation
fadd.s f23, f20, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f20, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f20, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f20, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f20, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f20, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xc0000000)
li x14, 0x75138c59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f31, 0(x2) # load 0x80000000 from memory into f31
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f25, 0(x2) # load 0xc0000000 from memory into f25
fadd.s f14, f31, f25, dyn # perform operation
fadd.s f14, f31, f25, rdn # perform operation
fadd.s f14, f31, f25, rmm # perform operation
fadd.s f14, f31, f25, rne # perform operation
fadd.s f14, f31, f25, rtz # perform operation
fadd.s f14, f31, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f31, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f31, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f31, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f31, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f31, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x800000)
li x28, 0xe419d1b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f1, 0(x2) # load 0x80000000 from memory into f1
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f6, 0(x2) # load 0x00800000 from memory into f6
fadd.s f28, f1, f6, dyn # perform operation
fadd.s f28, f1, f6, rdn # perform operation
fadd.s f28, f1, f6, rmm # perform operation
fadd.s f28, f1, f6, rne # perform operation
fadd.s f28, f1, f6, rtz # perform operation
fadd.s f28, f1, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f1, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f1, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f1, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f1, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f1, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80800000)
li x14, 0x5c749ec2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f17, 0(x2) # load 0x80000000 from memory into f17
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f13, 0(x2) # load 0x80800000 from memory into f13
fadd.s f14, f17, f13, dyn # perform operation
fadd.s f14, f17, f13, rdn # perform operation
fadd.s f14, f17, f13, rmm # perform operation
fadd.s f14, f17, f13, rne # perform operation
fadd.s f14, f17, f13, rtz # perform operation
fadd.s f14, f17, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f17, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f17, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f17, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f17, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f17, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f7fffff)
li x22, 0xa9d620ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f5, 0(x2) # load 0x80000000 from memory into f5
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
fadd.s f22, f5, f15, dyn # perform operation
fadd.s f22, f5, f15, rdn # perform operation
fadd.s f22, f5, f15, rmm # perform operation
fadd.s f22, f5, f15, rne # perform operation
fadd.s f22, f5, f15, rtz # perform operation
fadd.s f22, f5, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f5, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f5, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f5, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f5, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f5, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xff7fffff)
li x7, 0x0ec21131 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f22, 0(x2) # load 0x80000000 from memory into f22
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f17, 0(x2) # load 0xff7fffff from memory into f17
fadd.s f7, f22, f17, dyn # perform operation
fadd.s f7, f22, f17, rdn # perform operation
fadd.s f7, f22, f17, rmm # perform operation
fadd.s f7, f22, f17, rne # perform operation
fadd.s f7, f22, f17, rtz # perform operation
fadd.s f7, f22, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f22, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f22, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f22, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f22, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f22, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fffff)
li x27, 0x12a720cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f14, 0(x2) # load 0x80000000 from memory into f14
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f19, 0(x2) # load 0x007fffff from memory into f19
fadd.s f27, f14, f19, dyn # perform operation
fadd.s f27, f14, f19, rdn # perform operation
fadd.s f27, f14, f19, rmm # perform operation
fadd.s f27, f14, f19, rne # perform operation
fadd.s f27, f14, f19, rtz # perform operation
fadd.s f27, f14, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f14, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f14, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f14, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f14, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f14, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x807fffff)
li x12, 0xbd015e76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f18, 0(x2) # load 0x80000000 from memory into f18
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f10, 0(x2) # load 0x807fffff from memory into f10
fadd.s f12, f18, f10, dyn # perform operation
fadd.s f12, f18, f10, rdn # perform operation
fadd.s f12, f18, f10, rmm # perform operation
fadd.s f12, f18, f10, rne # perform operation
fadd.s f12, f18, f10, rtz # perform operation
fadd.s f12, f18, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f18, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f18, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f18, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f18, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f18, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x400000)
li x24, 0x0c2ce24e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f23, 0(x2) # load 0x80000000 from memory into f23
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
fadd.s f24, f23, f25, dyn # perform operation
fadd.s f24, f23, f25, rdn # perform operation
fadd.s f24, f23, f25, rmm # perform operation
fadd.s f24, f23, f25, rne # perform operation
fadd.s f24, f23, f25, rtz # perform operation
fadd.s f24, f23, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f23, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f23, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f23, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f23, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f23, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80400000)
li x9, 0xbac73e94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f30, 0(x2) # load 0x80000000 from memory into f30
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
fadd.s f9, f30, f6, dyn # perform operation
fadd.s f9, f30, f6, rdn # perform operation
fadd.s f9, f30, f6, rmm # perform operation
fadd.s f9, f30, f6, rne # perform operation
fadd.s f9, f30, f6, rtz # perform operation
fadd.s f9, f30, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f30, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f30, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f30, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f30, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f30, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x1)
li x13, 0xb61c6940 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f10, 0(x2) # load 0x80000000 from memory into f10
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f16, 0(x2) # load 0x00000001 from memory into f16
fadd.s f13, f10, f16, dyn # perform operation
fadd.s f13, f10, f16, rdn # perform operation
fadd.s f13, f10, f16, rmm # perform operation
fadd.s f13, f10, f16, rne # perform operation
fadd.s f13, f10, f16, rtz # perform operation
fadd.s f13, f10, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f10, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f10, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f10, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f10, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f10, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80000001)
li x7, 0x6d38c49f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f12, 0(x2) # load 0x80000000 from memory into f12
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f17, 0(x2) # load 0x80000001 from memory into f17
fadd.s f7, f12, f17, dyn # perform operation
fadd.s f7, f12, f17, rdn # perform operation
fadd.s f7, f12, f17, rmm # perform operation
fadd.s f7, f12, f17, rne # perform operation
fadd.s f7, f12, f17, rtz # perform operation
fadd.s f7, f12, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f12, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f12, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f12, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f12, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f12, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f800000)
li x19, 0xded44e8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f28, 0(x2) # load 0x80000000 from memory into f28
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f23, 0(x2) # load 0x7f800000 from memory into f23
fadd.s f19, f28, f23, dyn # perform operation
fadd.s f19, f28, f23, rdn # perform operation
fadd.s f19, f28, f23, rmm # perform operation
fadd.s f19, f28, f23, rne # perform operation
fadd.s f19, f28, f23, rtz # perform operation
fadd.s f19, f28, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f28, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f28, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f28, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f28, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f28, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xff800000)
li x2, 0x7d54a48b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f8, 0(x2) # load 0x80000000 from memory into f8
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f29, 0(x2) # load 0xff800000 from memory into f29
fadd.s f2, f8, f29, dyn # perform operation
fadd.s f2, f8, f29, rdn # perform operation
fadd.s f2, f8, f29, rmm # perform operation
fadd.s f2, f8, f29, rne # perform operation
fadd.s f2, f8, f29, rtz # perform operation
fadd.s f2, f8, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f8, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f8, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f8, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f8, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f8, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fc00000)
li x23, 0xbe0b4d6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f7, 0(x2) # load 0x80000000 from memory into f7
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f6, 0(x2) # load 0x7fc00000 from memory into f6
fadd.s f23, f7, f6, dyn # perform operation
fadd.s f23, f7, f6, rdn # perform operation
fadd.s f23, f7, f6, rmm # perform operation
fadd.s f23, f7, f6, rne # perform operation
fadd.s f23, f7, f6, rtz # perform operation
fadd.s f23, f7, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f7, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f7, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f7, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f7, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f7, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fffffff)
li x25, 0x0dfd1c4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f29, 0(x2) # load 0x80000000 from memory into f29
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f9, 0(x2) # load 0x7fffffff from memory into f9
fadd.s f25, f29, f9, dyn # perform operation
fadd.s f25, f29, f9, rdn # perform operation
fadd.s f25, f29, f9, rmm # perform operation
fadd.s f25, f29, f9, rne # perform operation
fadd.s f25, f29, f9, rtz # perform operation
fadd.s f25, f29, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f29, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f29, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f29, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f29, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f29, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f800001)
li x9, 0x2d8faaf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f20, 0(x2) # load 0x80000000 from memory into f20
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f31, 0(x2) # load 0x7f800001 from memory into f31
fadd.s f9, f20, f31, dyn # perform operation
fadd.s f9, f20, f31, rdn # perform operation
fadd.s f9, f20, f31, rmm # perform operation
fadd.s f9, f20, f31, rne # perform operation
fadd.s f9, f20, f31, rtz # perform operation
fadd.s f9, f20, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f20, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f20, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f20, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f20, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f20, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fbfffff)
li x8, 0xa25c5044 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f17, 0(x2) # load 0x80000000 from memory into f17
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f19, 0(x2) # load 0x7fbfffff from memory into f19
fadd.s f8, f17, f19, dyn # perform operation
fadd.s f8, f17, f19, rdn # perform operation
fadd.s f8, f17, f19, rmm # perform operation
fadd.s f8, f17, f19, rne # perform operation
fadd.s f8, f17, f19, rtz # perform operation
fadd.s f8, f17, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f17, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f17, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f17, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f17, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f17, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7ef8654f)
li x7, 0xb39edbe6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f9, 0(x2) # load 0x80000000 from memory into f9
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f19, 0(x2) # load 0x7ef8654f from memory into f19
fadd.s f7, f9, f19, dyn # perform operation
fadd.s f7, f9, f19, rdn # perform operation
fadd.s f7, f9, f19, rmm # perform operation
fadd.s f7, f9, f19, rne # perform operation
fadd.s f7, f9, f19, rtz # perform operation
fadd.s f7, f9, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f9, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f9, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f9, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f9, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f9, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x813d9ab0)
li x5, 0x97626b45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f17, 0(x2) # load 0x80000000 from memory into f17
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f10, 0(x2) # load 0x813d9ab0 from memory into f10
fadd.s f5, f17, f10, dyn # perform operation
fadd.s f5, f17, f10, rdn # perform operation
fadd.s f5, f17, f10, rmm # perform operation
fadd.s f5, f17, f10, rne # perform operation
fadd.s f5, f17, f10, rtz # perform operation
fadd.s f5, f17, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f17, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f17, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f17, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f17, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f17, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x0)
li x9, 0x14e7ed96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f8, 0(x2) # load 0x3f800000 from memory into f8
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f28, 0(x2) # load 0x00000000 from memory into f28
fadd.s f9, f8, f28, dyn # perform operation
fadd.s f9, f8, f28, rdn # perform operation
fadd.s f9, f8, f28, rmm # perform operation
fadd.s f9, f8, f28, rne # perform operation
fadd.s f9, f8, f28, rtz # perform operation
fadd.s f9, f8, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f8, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f8, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f8, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f8, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f8, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80000000)
li x25, 0x89f27bb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f16, 0(x2) # load 0x80000000 from memory into f16
fadd.s f25, f24, f16, dyn # perform operation
fadd.s f25, f24, f16, rdn # perform operation
fadd.s f25, f24, f16, rmm # perform operation
fadd.s f25, f24, f16, rne # perform operation
fadd.s f25, f24, f16, rtz # perform operation
fadd.s f25, f24, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f24, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f24, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f24, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f24, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f24, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x3f800000)
li x7, 0x7db4d38e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f21, 0(x2) # load 0x3f800000 from memory into f21
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f1, 0(x2) # load 0x3f800000 from memory into f1
fadd.s f7, f21, f1, dyn # perform operation
fadd.s f7, f21, f1, rdn # perform operation
fadd.s f7, f21, f1, rmm # perform operation
fadd.s f7, f21, f1, rne # perform operation
fadd.s f7, f21, f1, rtz # perform operation
fadd.s f7, f21, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f21, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f21, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f21, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f21, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f21, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xbf800000)
li x8, 0x703d71f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f30, 0(x2) # load 0x3f800000 from memory into f30
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
fadd.s f8, f30, f27, dyn # perform operation
fadd.s f8, f30, f27, rdn # perform operation
fadd.s f8, f30, f27, rmm # perform operation
fadd.s f8, f30, f27, rne # perform operation
fadd.s f8, f30, f27, rtz # perform operation
fadd.s f8, f30, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f30, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f30, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f30, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f30, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f30, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x3fc00000)
li x6, 0x29a2113e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f18, 0(x2) # load 0x3f800000 from memory into f18
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
fadd.s f6, f18, f13, dyn # perform operation
fadd.s f6, f18, f13, rdn # perform operation
fadd.s f6, f18, f13, rmm # perform operation
fadd.s f6, f18, f13, rne # perform operation
fadd.s f6, f18, f13, rtz # perform operation
fadd.s f6, f18, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f18, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f18, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f18, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f18, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f18, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xbfc00000)
li x23, 0x8ae9a099 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f4, 0(x2) # load 0x3f800000 from memory into f4
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
fadd.s f23, f4, f28, dyn # perform operation
fadd.s f23, f4, f28, rdn # perform operation
fadd.s f23, f4, f28, rmm # perform operation
fadd.s f23, f4, f28, rne # perform operation
fadd.s f23, f4, f28, rtz # perform operation
fadd.s f23, f4, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f4, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f4, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f4, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f4, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f4, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x40000000)
li x12, 0xc0b5c9b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f29, 0(x2) # load 0x3f800000 from memory into f29
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f19, 0(x2) # load 0x40000000 from memory into f19
fadd.s f12, f29, f19, dyn # perform operation
fadd.s f12, f29, f19, rdn # perform operation
fadd.s f12, f29, f19, rmm # perform operation
fadd.s f12, f29, f19, rne # perform operation
fadd.s f12, f29, f19, rtz # perform operation
fadd.s f12, f29, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f29, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f29, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f29, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f29, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f29, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xc0000000)
li x18, 0xaf735f63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f23, 0(x2) # load 0x3f800000 from memory into f23
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f19, 0(x2) # load 0xc0000000 from memory into f19
fadd.s f18, f23, f19, dyn # perform operation
fadd.s f18, f23, f19, rdn # perform operation
fadd.s f18, f23, f19, rmm # perform operation
fadd.s f18, f23, f19, rne # perform operation
fadd.s f18, f23, f19, rtz # perform operation
fadd.s f18, f23, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f23, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f23, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f23, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f23, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f23, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x800000)
li x21, 0x387b233b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f27, 0(x2) # load 0x3f800000 from memory into f27
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f12, 0(x2) # load 0x00800000 from memory into f12
fadd.s f21, f27, f12, dyn # perform operation
fadd.s f21, f27, f12, rdn # perform operation
fadd.s f21, f27, f12, rmm # perform operation
fadd.s f21, f27, f12, rne # perform operation
fadd.s f21, f27, f12, rtz # perform operation
fadd.s f21, f27, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f27, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f27, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f27, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f27, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f27, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80800000)
li x25, 0xa7880f12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f23, 0(x2) # load 0x3f800000 from memory into f23
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f2, 0(x2) # load 0x80800000 from memory into f2
fadd.s f25, f23, f2, dyn # perform operation
fadd.s f25, f23, f2, rdn # perform operation
fadd.s f25, f23, f2, rmm # perform operation
fadd.s f25, f23, f2, rne # perform operation
fadd.s f25, f23, f2, rtz # perform operation
fadd.s f25, f23, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f23, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f23, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f23, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f23, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f23, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f7fffff)
li x12, 0xeb5482d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f8, 0(x2) # load 0x3f800000 from memory into f8
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f13, 0(x2) # load 0x7f7fffff from memory into f13
fadd.s f12, f8, f13, dyn # perform operation
fadd.s f12, f8, f13, rdn # perform operation
fadd.s f12, f8, f13, rmm # perform operation
fadd.s f12, f8, f13, rne # perform operation
fadd.s f12, f8, f13, rtz # perform operation
fadd.s f12, f8, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f8, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f8, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f8, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f8, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f8, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xff7fffff)
li x17, 0x5b216384 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f25, 0(x2) # load 0x3f800000 from memory into f25
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f22, 0(x2) # load 0xff7fffff from memory into f22
fadd.s f17, f25, f22, dyn # perform operation
fadd.s f17, f25, f22, rdn # perform operation
fadd.s f17, f25, f22, rmm # perform operation
fadd.s f17, f25, f22, rne # perform operation
fadd.s f17, f25, f22, rtz # perform operation
fadd.s f17, f25, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f25, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f25, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f25, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f25, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f25, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fffff)
li x19, 0xb41b7a3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f16, 0(x2) # load 0x3f800000 from memory into f16
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f21, 0(x2) # load 0x007fffff from memory into f21
fadd.s f19, f16, f21, dyn # perform operation
fadd.s f19, f16, f21, rdn # perform operation
fadd.s f19, f16, f21, rmm # perform operation
fadd.s f19, f16, f21, rne # perform operation
fadd.s f19, f16, f21, rtz # perform operation
fadd.s f19, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f16, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x807fffff)
li x23, 0xe6be97c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f28, 0(x2) # load 0x807fffff from memory into f28
fadd.s f23, f6, f28, dyn # perform operation
fadd.s f23, f6, f28, rdn # perform operation
fadd.s f23, f6, f28, rmm # perform operation
fadd.s f23, f6, f28, rne # perform operation
fadd.s f23, f6, f28, rtz # perform operation
fadd.s f23, f6, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f6, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f6, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f6, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f6, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f6, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x400000)
li x20, 0x9abeebbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f17, 0(x2) # load 0x3f800000 from memory into f17
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f3, 0(x2) # load 0x00400000 from memory into f3
fadd.s f20, f17, f3, dyn # perform operation
fadd.s f20, f17, f3, rdn # perform operation
fadd.s f20, f17, f3, rmm # perform operation
fadd.s f20, f17, f3, rne # perform operation
fadd.s f20, f17, f3, rtz # perform operation
fadd.s f20, f17, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f17, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f17, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f17, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f17, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f17, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80400000)
li x28, 0x540ef713 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f21, 0(x2) # load 0x3f800000 from memory into f21
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f7, 0(x2) # load 0x80400000 from memory into f7
fadd.s f28, f21, f7, dyn # perform operation
fadd.s f28, f21, f7, rdn # perform operation
fadd.s f28, f21, f7, rmm # perform operation
fadd.s f28, f21, f7, rne # perform operation
fadd.s f28, f21, f7, rtz # perform operation
fadd.s f28, f21, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f21, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f21, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f21, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f21, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f21, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x1)
li x27, 0x4fea7e79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f25, 0(x2) # load 0x3f800000 from memory into f25
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f26, 0(x2) # load 0x00000001 from memory into f26
fadd.s f27, f25, f26, dyn # perform operation
fadd.s f27, f25, f26, rdn # perform operation
fadd.s f27, f25, f26, rmm # perform operation
fadd.s f27, f25, f26, rne # perform operation
fadd.s f27, f25, f26, rtz # perform operation
fadd.s f27, f25, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f25, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f25, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f25, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f25, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f25, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80000001)
li x8, 0x88926167 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f7, 0(x2) # load 0x3f800000 from memory into f7
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f5, 0(x2) # load 0x80000001 from memory into f5
fadd.s f8, f7, f5, dyn # perform operation
fadd.s f8, f7, f5, rdn # perform operation
fadd.s f8, f7, f5, rmm # perform operation
fadd.s f8, f7, f5, rne # perform operation
fadd.s f8, f7, f5, rtz # perform operation
fadd.s f8, f7, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f7, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f7, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f7, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f7, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f7, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f800000)
li x17, 0x64407f00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f22, 0(x2) # load 0x7f800000 from memory into f22
fadd.s f17, f11, f22, dyn # perform operation
fadd.s f17, f11, f22, rdn # perform operation
fadd.s f17, f11, f22, rmm # perform operation
fadd.s f17, f11, f22, rne # perform operation
fadd.s f17, f11, f22, rtz # perform operation
fadd.s f17, f11, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f11, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f11, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f11, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f11, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f11, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xff800000)
li x1, 0xaefab5f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f10, 0(x2) # load 0x3f800000 from memory into f10
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
fadd.s f1, f10, f9, dyn # perform operation
fadd.s f1, f10, f9, rdn # perform operation
fadd.s f1, f10, f9, rmm # perform operation
fadd.s f1, f10, f9, rne # perform operation
fadd.s f1, f10, f9, rtz # perform operation
fadd.s f1, f10, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f10, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f10, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f10, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f10, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f10, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fc00000)
li x4, 0x9ecc3fee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f2, 0(x2) # load 0x3f800000 from memory into f2
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
fadd.s f4, f2, f10, dyn # perform operation
fadd.s f4, f2, f10, rdn # perform operation
fadd.s f4, f2, f10, rmm # perform operation
fadd.s f4, f2, f10, rne # perform operation
fadd.s f4, f2, f10, rtz # perform operation
fadd.s f4, f2, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f2, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f2, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f2, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f2, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f2, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fffffff)
li x15, 0x1abe6988 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f16, 0(x2) # load 0x7fffffff from memory into f16
fadd.s f15, f11, f16, dyn # perform operation
fadd.s f15, f11, f16, rdn # perform operation
fadd.s f15, f11, f16, rmm # perform operation
fadd.s f15, f11, f16, rne # perform operation
fadd.s f15, f11, f16, rtz # perform operation
fadd.s f15, f11, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f11, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f11, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f11, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f11, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f11, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f800001)
li x16, 0x36ef20a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f30, 0(x2) # load 0x3f800000 from memory into f30
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f9, 0(x2) # load 0x7f800001 from memory into f9
fadd.s f16, f30, f9, dyn # perform operation
fadd.s f16, f30, f9, rdn # perform operation
fadd.s f16, f30, f9, rmm # perform operation
fadd.s f16, f30, f9, rne # perform operation
fadd.s f16, f30, f9, rtz # perform operation
fadd.s f16, f30, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f30, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f30, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f30, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f30, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f30, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fbfffff)
li x17, 0x35050c07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f31, 0(x2) # load 0x3f800000 from memory into f31
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f2, 0(x2) # load 0x7fbfffff from memory into f2
fadd.s f17, f31, f2, dyn # perform operation
fadd.s f17, f31, f2, rdn # perform operation
fadd.s f17, f31, f2, rmm # perform operation
fadd.s f17, f31, f2, rne # perform operation
fadd.s f17, f31, f2, rtz # perform operation
fadd.s f17, f31, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f31, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f31, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f31, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f31, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f31, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7ef8654f)
li x18, 0x6714395b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f28, 0(x2) # load 0x3f800000 from memory into f28
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f30, 0(x2) # load 0x7ef8654f from memory into f30
fadd.s f18, f28, f30, dyn # perform operation
fadd.s f18, f28, f30, rdn # perform operation
fadd.s f18, f28, f30, rmm # perform operation
fadd.s f18, f28, f30, rne # perform operation
fadd.s f18, f28, f30, rtz # perform operation
fadd.s f18, f28, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f28, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f28, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f28, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f28, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f28, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x813d9ab0)
li x16, 0x2cea85d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f2, 0(x2) # load 0x813d9ab0 from memory into f2
fadd.s f16, f11, f2, dyn # perform operation
fadd.s f16, f11, f2, rdn # perform operation
fadd.s f16, f11, f2, rmm # perform operation
fadd.s f16, f11, f2, rne # perform operation
fadd.s f16, f11, f2, rtz # perform operation
fadd.s f16, f11, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f11, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f11, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f11, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f11, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f11, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x0)
li x6, 0x261f0960 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f5, 0(x2) # load 0xbf800000 from memory into f5
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f25, 0(x2) # load 0x00000000 from memory into f25
fadd.s f6, f5, f25, dyn # perform operation
fadd.s f6, f5, f25, rdn # perform operation
fadd.s f6, f5, f25, rmm # perform operation
fadd.s f6, f5, f25, rne # perform operation
fadd.s f6, f5, f25, rtz # perform operation
fadd.s f6, f5, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f5, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f5, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f5, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f5, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f5, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80000000)
li x6, 0xfed13f17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f10, 0(x2) # load 0xbf800000 from memory into f10
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f2, 0(x2) # load 0x80000000 from memory into f2
fadd.s f6, f10, f2, dyn # perform operation
fadd.s f6, f10, f2, rdn # perform operation
fadd.s f6, f10, f2, rmm # perform operation
fadd.s f6, f10, f2, rne # perform operation
fadd.s f6, f10, f2, rtz # perform operation
fadd.s f6, f10, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f10, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f10, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f10, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f10, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f10, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x3f800000)
li x15, 0x5568c353 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f29, 0(x2) # load 0xbf800000 from memory into f29
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
fadd.s f15, f29, f11, dyn # perform operation
fadd.s f15, f29, f11, rdn # perform operation
fadd.s f15, f29, f11, rmm # perform operation
fadd.s f15, f29, f11, rne # perform operation
fadd.s f15, f29, f11, rtz # perform operation
fadd.s f15, f29, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f29, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f29, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f29, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f29, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f29, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xbf800000)
li x31, 0x40c15582 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f8, 0(x2) # load 0xbf800000 from memory into f8
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f15, 0(x2) # load 0xbf800000 from memory into f15
fadd.s f31, f8, f15, dyn # perform operation
fadd.s f31, f8, f15, rdn # perform operation
fadd.s f31, f8, f15, rmm # perform operation
fadd.s f31, f8, f15, rne # perform operation
fadd.s f31, f8, f15, rtz # perform operation
fadd.s f31, f8, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f8, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f8, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f8, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f8, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f8, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x3fc00000)
li x29, 0x588905f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f10, 0(x2) # load 0xbf800000 from memory into f10
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f9, 0(x2) # load 0x3fc00000 from memory into f9
fadd.s f29, f10, f9, dyn # perform operation
fadd.s f29, f10, f9, rdn # perform operation
fadd.s f29, f10, f9, rmm # perform operation
fadd.s f29, f10, f9, rne # perform operation
fadd.s f29, f10, f9, rtz # perform operation
fadd.s f29, f10, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f10, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f10, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f10, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f10, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f10, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xbfc00000)
li x15, 0x6ac4ddf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f24, 0(x2) # load 0xbf800000 from memory into f24
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f31, 0(x2) # load 0xbfc00000 from memory into f31
fadd.s f15, f24, f31, dyn # perform operation
fadd.s f15, f24, f31, rdn # perform operation
fadd.s f15, f24, f31, rmm # perform operation
fadd.s f15, f24, f31, rne # perform operation
fadd.s f15, f24, f31, rtz # perform operation
fadd.s f15, f24, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f24, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f24, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f24, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f24, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f24, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x40000000)
li x3, 0xdbbbe900 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f7, 0(x2) # load 0xbf800000 from memory into f7
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f14, 0(x2) # load 0x40000000 from memory into f14
fadd.s f3, f7, f14, dyn # perform operation
fadd.s f3, f7, f14, rdn # perform operation
fadd.s f3, f7, f14, rmm # perform operation
fadd.s f3, f7, f14, rne # perform operation
fadd.s f3, f7, f14, rtz # perform operation
fadd.s f3, f7, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f7, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f7, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f7, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f7, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f7, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xc0000000)
li x26, 0xe4dd4ccc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f18, 0(x2) # load 0xc0000000 from memory into f18
fadd.s f26, f27, f18, dyn # perform operation
fadd.s f26, f27, f18, rdn # perform operation
fadd.s f26, f27, f18, rmm # perform operation
fadd.s f26, f27, f18, rne # perform operation
fadd.s f26, f27, f18, rtz # perform operation
fadd.s f26, f27, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f27, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f27, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f27, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f27, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f27, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x800000)
li x18, 0x9c8302e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
fadd.s f18, f17, f22, dyn # perform operation
fadd.s f18, f17, f22, rdn # perform operation
fadd.s f18, f17, f22, rmm # perform operation
fadd.s f18, f17, f22, rne # perform operation
fadd.s f18, f17, f22, rtz # perform operation
fadd.s f18, f17, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f17, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f17, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f17, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f17, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f17, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80800000)
li x1, 0x6be18f78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f5, 0(x2) # load 0x80800000 from memory into f5
fadd.s f1, f21, f5, dyn # perform operation
fadd.s f1, f21, f5, rdn # perform operation
fadd.s f1, f21, f5, rmm # perform operation
fadd.s f1, f21, f5, rne # perform operation
fadd.s f1, f21, f5, rtz # perform operation
fadd.s f1, f21, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f21, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f21, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f21, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f21, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f21, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f7fffff)
li x6, 0x1b74e6fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f14, 0(x2) # load 0xbf800000 from memory into f14
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f25, 0(x2) # load 0x7f7fffff from memory into f25
fadd.s f6, f14, f25, dyn # perform operation
fadd.s f6, f14, f25, rdn # perform operation
fadd.s f6, f14, f25, rmm # perform operation
fadd.s f6, f14, f25, rne # perform operation
fadd.s f6, f14, f25, rtz # perform operation
fadd.s f6, f14, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f14, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f14, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f14, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f14, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f14, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xff7fffff)
li x20, 0x770b5b7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f22, 0(x2) # load 0xbf800000 from memory into f22
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f1, 0(x2) # load 0xff7fffff from memory into f1
fadd.s f20, f22, f1, dyn # perform operation
fadd.s f20, f22, f1, rdn # perform operation
fadd.s f20, f22, f1, rmm # perform operation
fadd.s f20, f22, f1, rne # perform operation
fadd.s f20, f22, f1, rtz # perform operation
fadd.s f20, f22, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f22, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f22, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f22, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f22, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f22, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fffff)
li x11, 0xed75282b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f3, 0(x2) # load 0xbf800000 from memory into f3
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f13, 0(x2) # load 0x007fffff from memory into f13
fadd.s f11, f3, f13, dyn # perform operation
fadd.s f11, f3, f13, rdn # perform operation
fadd.s f11, f3, f13, rmm # perform operation
fadd.s f11, f3, f13, rne # perform operation
fadd.s f11, f3, f13, rtz # perform operation
fadd.s f11, f3, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f3, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f3, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f3, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f3, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f3, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x807fffff)
li x5, 0x76f9887c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f28, 0(x2) # load 0xbf800000 from memory into f28
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f19, 0(x2) # load 0x807fffff from memory into f19
fadd.s f5, f28, f19, dyn # perform operation
fadd.s f5, f28, f19, rdn # perform operation
fadd.s f5, f28, f19, rmm # perform operation
fadd.s f5, f28, f19, rne # perform operation
fadd.s f5, f28, f19, rtz # perform operation
fadd.s f5, f28, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f28, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f28, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f28, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f28, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f28, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x400000)
li x23, 0xdbea2578 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f4, 0(x2) # load 0xbf800000 from memory into f4
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f24, 0(x2) # load 0x00400000 from memory into f24
fadd.s f23, f4, f24, dyn # perform operation
fadd.s f23, f4, f24, rdn # perform operation
fadd.s f23, f4, f24, rmm # perform operation
fadd.s f23, f4, f24, rne # perform operation
fadd.s f23, f4, f24, rtz # perform operation
fadd.s f23, f4, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f4, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f4, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f4, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f4, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f4, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80400000)
li x3, 0xde3f798a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f5, 0(x2) # load 0x80400000 from memory into f5
fadd.s f3, f21, f5, dyn # perform operation
fadd.s f3, f21, f5, rdn # perform operation
fadd.s f3, f21, f5, rmm # perform operation
fadd.s f3, f21, f5, rne # perform operation
fadd.s f3, f21, f5, rtz # perform operation
fadd.s f3, f21, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f21, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f21, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f21, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f21, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f21, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x1)
li x16, 0x9cc60dfc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f31, 0(x2) # load 0xbf800000 from memory into f31
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f25, 0(x2) # load 0x00000001 from memory into f25
fadd.s f16, f31, f25, dyn # perform operation
fadd.s f16, f31, f25, rdn # perform operation
fadd.s f16, f31, f25, rmm # perform operation
fadd.s f16, f31, f25, rne # perform operation
fadd.s f16, f31, f25, rtz # perform operation
fadd.s f16, f31, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f31, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f31, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f31, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f31, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f31, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80000001)
li x1, 0xb1846094 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f3, 0(x2) # load 0xbf800000 from memory into f3
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f21, 0(x2) # load 0x80000001 from memory into f21
fadd.s f1, f3, f21, dyn # perform operation
fadd.s f1, f3, f21, rdn # perform operation
fadd.s f1, f3, f21, rmm # perform operation
fadd.s f1, f3, f21, rne # perform operation
fadd.s f1, f3, f21, rtz # perform operation
fadd.s f1, f3, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f3, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f3, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f3, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f3, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f3, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f800000)
li x28, 0x446b24ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f8, 0(x2) # load 0xbf800000 from memory into f8
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f15, 0(x2) # load 0x7f800000 from memory into f15
fadd.s f28, f8, f15, dyn # perform operation
fadd.s f28, f8, f15, rdn # perform operation
fadd.s f28, f8, f15, rmm # perform operation
fadd.s f28, f8, f15, rne # perform operation
fadd.s f28, f8, f15, rtz # perform operation
fadd.s f28, f8, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f8, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f8, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f8, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f8, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f8, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xff800000)
li x28, 0x6050c30d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f19, 0(x2) # load 0xff800000 from memory into f19
fadd.s f28, f21, f19, dyn # perform operation
fadd.s f28, f21, f19, rdn # perform operation
fadd.s f28, f21, f19, rmm # perform operation
fadd.s f28, f21, f19, rne # perform operation
fadd.s f28, f21, f19, rtz # perform operation
fadd.s f28, f21, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f21, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f21, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f21, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f21, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f21, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fc00000)
li x19, 0x386bcf9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f31, 0(x2) # load 0xbf800000 from memory into f31
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f23, 0(x2) # load 0x7fc00000 from memory into f23
fadd.s f19, f31, f23, dyn # perform operation
fadd.s f19, f31, f23, rdn # perform operation
fadd.s f19, f31, f23, rmm # perform operation
fadd.s f19, f31, f23, rne # perform operation
fadd.s f19, f31, f23, rtz # perform operation
fadd.s f19, f31, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f31, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f31, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f31, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f31, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f31, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fffffff)
li x8, 0x30a2f0a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f14, 0(x2) # load 0xbf800000 from memory into f14
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
fadd.s f8, f14, f12, dyn # perform operation
fadd.s f8, f14, f12, rdn # perform operation
fadd.s f8, f14, f12, rmm # perform operation
fadd.s f8, f14, f12, rne # perform operation
fadd.s f8, f14, f12, rtz # perform operation
fadd.s f8, f14, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f14, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f14, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f14, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f14, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f14, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f800001)
li x30, 0xd072fff1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f21, 0(x2) # load 0xbf800000 from memory into f21
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f4, 0(x2) # load 0x7f800001 from memory into f4
fadd.s f30, f21, f4, dyn # perform operation
fadd.s f30, f21, f4, rdn # perform operation
fadd.s f30, f21, f4, rmm # perform operation
fadd.s f30, f21, f4, rne # perform operation
fadd.s f30, f21, f4, rtz # perform operation
fadd.s f30, f21, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f21, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f21, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f21, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f21, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f21, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fbfffff)
li x31, 0x52c472f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
fadd.s f31, f27, f16, dyn # perform operation
fadd.s f31, f27, f16, rdn # perform operation
fadd.s f31, f27, f16, rmm # perform operation
fadd.s f31, f27, f16, rne # perform operation
fadd.s f31, f27, f16, rtz # perform operation
fadd.s f31, f27, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f27, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f27, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f27, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f27, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f27, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7ef8654f)
li x15, 0x45caeb18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f10, 0(x2) # load 0xbf800000 from memory into f10
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f7, 0(x2) # load 0x7ef8654f from memory into f7
fadd.s f15, f10, f7, dyn # perform operation
fadd.s f15, f10, f7, rdn # perform operation
fadd.s f15, f10, f7, rmm # perform operation
fadd.s f15, f10, f7, rne # perform operation
fadd.s f15, f10, f7, rtz # perform operation
fadd.s f15, f10, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f10, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f10, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f10, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f10, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f10, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x813d9ab0)
li x13, 0x2773df1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f10, 0(x2) # load 0xbf800000 from memory into f10
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f20, 0(x2) # load 0x813d9ab0 from memory into f20
fadd.s f13, f10, f20, dyn # perform operation
fadd.s f13, f10, f20, rdn # perform operation
fadd.s f13, f10, f20, rmm # perform operation
fadd.s f13, f10, f20, rne # perform operation
fadd.s f13, f10, f20, rtz # perform operation
fadd.s f13, f10, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f10, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f10, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f10, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f10, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f10, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x0)
li x21, 0x64db43ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f25, 0(x2) # load 0x00000000 from memory into f25
fadd.s f21, f12, f25, dyn # perform operation
fadd.s f21, f12, f25, rdn # perform operation
fadd.s f21, f12, f25, rmm # perform operation
fadd.s f21, f12, f25, rne # perform operation
fadd.s f21, f12, f25, rtz # perform operation
fadd.s f21, f12, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f12, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f12, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f12, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f12, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f12, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80000000)
li x16, 0x4231ffc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f8, 0(x2) # load 0x3fc00000 from memory into f8
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f23, 0(x2) # load 0x80000000 from memory into f23
fadd.s f16, f8, f23, dyn # perform operation
fadd.s f16, f8, f23, rdn # perform operation
fadd.s f16, f8, f23, rmm # perform operation
fadd.s f16, f8, f23, rne # perform operation
fadd.s f16, f8, f23, rtz # perform operation
fadd.s f16, f8, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f8, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f8, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f8, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f8, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f8, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x3f800000)
li x3, 0x0c11ac14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f20, 0(x2) # load 0x3fc00000 from memory into f20
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f1, 0(x2) # load 0x3f800000 from memory into f1
fadd.s f3, f20, f1, dyn # perform operation
fadd.s f3, f20, f1, rdn # perform operation
fadd.s f3, f20, f1, rmm # perform operation
fadd.s f3, f20, f1, rne # perform operation
fadd.s f3, f20, f1, rtz # perform operation
fadd.s f3, f20, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f20, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f20, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f20, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f20, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f20, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xbf800000)
li x2, 0xdfd412eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f25, 0(x2) # load 0x3fc00000 from memory into f25
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f1, 0(x2) # load 0xbf800000 from memory into f1
fadd.s f2, f25, f1, dyn # perform operation
fadd.s f2, f25, f1, rdn # perform operation
fadd.s f2, f25, f1, rmm # perform operation
fadd.s f2, f25, f1, rne # perform operation
fadd.s f2, f25, f1, rtz # perform operation
fadd.s f2, f25, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f25, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f25, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f25, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f25, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f25, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x3fc00000)
li x3, 0x6f8f106c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f30, 0(x2) # load 0x3fc00000 from memory into f30
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f21, 0(x2) # load 0x3fc00000 from memory into f21
fadd.s f3, f30, f21, dyn # perform operation
fadd.s f3, f30, f21, rdn # perform operation
fadd.s f3, f30, f21, rmm # perform operation
fadd.s f3, f30, f21, rne # perform operation
fadd.s f3, f30, f21, rtz # perform operation
fadd.s f3, f30, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f30, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f30, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f30, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f30, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f30, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xbfc00000)
li x5, 0x9dcba27d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
fadd.s f5, f13, f25, dyn # perform operation
fadd.s f5, f13, f25, rdn # perform operation
fadd.s f5, f13, f25, rmm # perform operation
fadd.s f5, f13, f25, rne # perform operation
fadd.s f5, f13, f25, rtz # perform operation
fadd.s f5, f13, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f13, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f13, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f13, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f13, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f13, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x40000000)
li x22, 0x30bebecb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f27, 0(x2) # load 0x3fc00000 from memory into f27
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f31, 0(x2) # load 0x40000000 from memory into f31
fadd.s f22, f27, f31, dyn # perform operation
fadd.s f22, f27, f31, rdn # perform operation
fadd.s f22, f27, f31, rmm # perform operation
fadd.s f22, f27, f31, rne # perform operation
fadd.s f22, f27, f31, rtz # perform operation
fadd.s f22, f27, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f27, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f27, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f27, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f27, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f27, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xc0000000)
li x10, 0xefdc0327 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f26, 0(x2) # load 0x3fc00000 from memory into f26
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f24, 0(x2) # load 0xc0000000 from memory into f24
fadd.s f10, f26, f24, dyn # perform operation
fadd.s f10, f26, f24, rdn # perform operation
fadd.s f10, f26, f24, rmm # perform operation
fadd.s f10, f26, f24, rne # perform operation
fadd.s f10, f26, f24, rtz # perform operation
fadd.s f10, f26, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f26, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f26, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f26, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f26, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f26, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x800000)
li x19, 0x8eee32f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f17, 0(x2) # load 0x3fc00000 from memory into f17
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
fadd.s f19, f17, f22, dyn # perform operation
fadd.s f19, f17, f22, rdn # perform operation
fadd.s f19, f17, f22, rmm # perform operation
fadd.s f19, f17, f22, rne # perform operation
fadd.s f19, f17, f22, rtz # perform operation
fadd.s f19, f17, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f17, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f17, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f17, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f17, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f17, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80800000)
li x28, 0x08e54714 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f24, 0(x2) # load 0x3fc00000 from memory into f24
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f31, 0(x2) # load 0x80800000 from memory into f31
fadd.s f28, f24, f31, dyn # perform operation
fadd.s f28, f24, f31, rdn # perform operation
fadd.s f28, f24, f31, rmm # perform operation
fadd.s f28, f24, f31, rne # perform operation
fadd.s f28, f24, f31, rtz # perform operation
fadd.s f28, f24, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f24, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f24, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f24, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f24, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f24, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f7fffff)
li x15, 0xa2ff90cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f20, 0(x2) # load 0x3fc00000 from memory into f20
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
fadd.s f15, f20, f6, dyn # perform operation
fadd.s f15, f20, f6, rdn # perform operation
fadd.s f15, f20, f6, rmm # perform operation
fadd.s f15, f20, f6, rne # perform operation
fadd.s f15, f20, f6, rtz # perform operation
fadd.s f15, f20, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f20, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f20, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f20, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f20, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f20, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xff7fffff)
li x25, 0xc11d0499 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f4, 0(x2) # load 0xff7fffff from memory into f4
fadd.s f25, f31, f4, dyn # perform operation
fadd.s f25, f31, f4, rdn # perform operation
fadd.s f25, f31, f4, rmm # perform operation
fadd.s f25, f31, f4, rne # perform operation
fadd.s f25, f31, f4, rtz # perform operation
fadd.s f25, f31, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f31, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f31, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f31, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f31, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f31, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fffff)
li x20, 0xc44828b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f16, 0(x2) # load 0x3fc00000 from memory into f16
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f18, 0(x2) # load 0x007fffff from memory into f18
fadd.s f20, f16, f18, dyn # perform operation
fadd.s f20, f16, f18, rdn # perform operation
fadd.s f20, f16, f18, rmm # perform operation
fadd.s f20, f16, f18, rne # perform operation
fadd.s f20, f16, f18, rtz # perform operation
fadd.s f20, f16, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f16, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f16, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f16, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f16, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f16, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x807fffff)
li x25, 0xeb68f0cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
fadd.s f25, f13, f2, dyn # perform operation
fadd.s f25, f13, f2, rdn # perform operation
fadd.s f25, f13, f2, rmm # perform operation
fadd.s f25, f13, f2, rne # perform operation
fadd.s f25, f13, f2, rtz # perform operation
fadd.s f25, f13, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f13, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f13, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f13, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f13, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f13, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x400000)
li x15, 0xfa93dae0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f1, 0(x2) # load 0x3fc00000 from memory into f1
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f6, 0(x2) # load 0x00400000 from memory into f6
fadd.s f15, f1, f6, dyn # perform operation
fadd.s f15, f1, f6, rdn # perform operation
fadd.s f15, f1, f6, rmm # perform operation
fadd.s f15, f1, f6, rne # perform operation
fadd.s f15, f1, f6, rtz # perform operation
fadd.s f15, f1, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f1, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f1, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f1, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f1, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f1, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80400000)
li x12, 0x5ea7ef51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f21, 0(x2) # load 0x3fc00000 from memory into f21
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f10, 0(x2) # load 0x80400000 from memory into f10
fadd.s f12, f21, f10, dyn # perform operation
fadd.s f12, f21, f10, rdn # perform operation
fadd.s f12, f21, f10, rmm # perform operation
fadd.s f12, f21, f10, rne # perform operation
fadd.s f12, f21, f10, rtz # perform operation
fadd.s f12, f21, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f21, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f21, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f21, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f21, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f21, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x1)
li x11, 0xc4b5d0f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f15, 0(x2) # load 0x3fc00000 from memory into f15
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
fadd.s f11, f15, f22, dyn # perform operation
fadd.s f11, f15, f22, rdn # perform operation
fadd.s f11, f15, f22, rmm # perform operation
fadd.s f11, f15, f22, rne # perform operation
fadd.s f11, f15, f22, rtz # perform operation
fadd.s f11, f15, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f15, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f15, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f15, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f15, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f15, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80000001)
li x23, 0xc7234bba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f30, 0(x2) # load 0x3fc00000 from memory into f30
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f3, 0(x2) # load 0x80000001 from memory into f3
fadd.s f23, f30, f3, dyn # perform operation
fadd.s f23, f30, f3, rdn # perform operation
fadd.s f23, f30, f3, rmm # perform operation
fadd.s f23, f30, f3, rne # perform operation
fadd.s f23, f30, f3, rtz # perform operation
fadd.s f23, f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f30, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f800000)
li x11, 0x3faf0111 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f29, 0(x2) # load 0x3fc00000 from memory into f29
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f22, 0(x2) # load 0x7f800000 from memory into f22
fadd.s f11, f29, f22, dyn # perform operation
fadd.s f11, f29, f22, rdn # perform operation
fadd.s f11, f29, f22, rmm # perform operation
fadd.s f11, f29, f22, rne # perform operation
fadd.s f11, f29, f22, rtz # perform operation
fadd.s f11, f29, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f29, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f29, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f29, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f29, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f29, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xff800000)
li x25, 0x93fd7581 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f11, 0(x2) # load 0x3fc00000 from memory into f11
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f21, 0(x2) # load 0xff800000 from memory into f21
fadd.s f25, f11, f21, dyn # perform operation
fadd.s f25, f11, f21, rdn # perform operation
fadd.s f25, f11, f21, rmm # perform operation
fadd.s f25, f11, f21, rne # perform operation
fadd.s f25, f11, f21, rtz # perform operation
fadd.s f25, f11, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f11, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f11, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f11, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f11, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f11, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fc00000)
li x18, 0x0df7244e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f29, 0(x2) # load 0x3fc00000 from memory into f29
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f4, 0(x2) # load 0x7fc00000 from memory into f4
fadd.s f18, f29, f4, dyn # perform operation
fadd.s f18, f29, f4, rdn # perform operation
fadd.s f18, f29, f4, rmm # perform operation
fadd.s f18, f29, f4, rne # perform operation
fadd.s f18, f29, f4, rtz # perform operation
fadd.s f18, f29, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f29, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f29, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f29, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f29, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f29, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fffffff)
li x12, 0xeb40b26e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f22, 0(x2) # load 0x3fc00000 from memory into f22
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f7, 0(x2) # load 0x7fffffff from memory into f7
fadd.s f12, f22, f7, dyn # perform operation
fadd.s f12, f22, f7, rdn # perform operation
fadd.s f12, f22, f7, rmm # perform operation
fadd.s f12, f22, f7, rne # perform operation
fadd.s f12, f22, f7, rtz # perform operation
fadd.s f12, f22, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f22, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f22, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f22, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f22, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f22, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f800001)
li x2, 0x03670805 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f26, 0(x2) # load 0x3fc00000 from memory into f26
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f3, 0(x2) # load 0x7f800001 from memory into f3
fadd.s f2, f26, f3, dyn # perform operation
fadd.s f2, f26, f3, rdn # perform operation
fadd.s f2, f26, f3, rmm # perform operation
fadd.s f2, f26, f3, rne # perform operation
fadd.s f2, f26, f3, rtz # perform operation
fadd.s f2, f26, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f26, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f26, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f26, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f26, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f26, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fbfffff)
li x1, 0x47394ba5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f13, 0(x2) # load 0x7fbfffff from memory into f13
fadd.s f1, f12, f13, dyn # perform operation
fadd.s f1, f12, f13, rdn # perform operation
fadd.s f1, f12, f13, rmm # perform operation
fadd.s f1, f12, f13, rne # perform operation
fadd.s f1, f12, f13, rtz # perform operation
fadd.s f1, f12, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f12, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f12, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f12, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f12, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f12, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7ef8654f)
li x9, 0x99c737e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f30, 0(x2) # load 0x3fc00000 from memory into f30
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f2, 0(x2) # load 0x7ef8654f from memory into f2
fadd.s f9, f30, f2, dyn # perform operation
fadd.s f9, f30, f2, rdn # perform operation
fadd.s f9, f30, f2, rmm # perform operation
fadd.s f9, f30, f2, rne # perform operation
fadd.s f9, f30, f2, rtz # perform operation
fadd.s f9, f30, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f30, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f30, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f30, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f30, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f30, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x813d9ab0)
li x31, 0xdda07f78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f14, 0(x2) # load 0x3fc00000 from memory into f14
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
fadd.s f31, f14, f22, dyn # perform operation
fadd.s f31, f14, f22, rdn # perform operation
fadd.s f31, f14, f22, rmm # perform operation
fadd.s f31, f14, f22, rne # perform operation
fadd.s f31, f14, f22, rtz # perform operation
fadd.s f31, f14, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f14, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f14, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f14, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f14, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f14, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x0)
li x7, 0xc3eef5d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f17, 0(x2) # load 0x00000000 from memory into f17
fadd.s f7, f16, f17, dyn # perform operation
fadd.s f7, f16, f17, rdn # perform operation
fadd.s f7, f16, f17, rmm # perform operation
fadd.s f7, f16, f17, rne # perform operation
fadd.s f7, f16, f17, rtz # perform operation
fadd.s f7, f16, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f16, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f16, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f16, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f16, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f16, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80000000)
li x7, 0x00bb0e4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f1, 0(x2) # load 0xbfc00000 from memory into f1
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f25, 0(x2) # load 0x80000000 from memory into f25
fadd.s f7, f1, f25, dyn # perform operation
fadd.s f7, f1, f25, rdn # perform operation
fadd.s f7, f1, f25, rmm # perform operation
fadd.s f7, f1, f25, rne # perform operation
fadd.s f7, f1, f25, rtz # perform operation
fadd.s f7, f1, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f1, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f1, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f1, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f1, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f1, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x3f800000)
li x22, 0x207af4b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f4, 0(x2) # load 0xbfc00000 from memory into f4
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f19, 0(x2) # load 0x3f800000 from memory into f19
fadd.s f22, f4, f19, dyn # perform operation
fadd.s f22, f4, f19, rdn # perform operation
fadd.s f22, f4, f19, rmm # perform operation
fadd.s f22, f4, f19, rne # perform operation
fadd.s f22, f4, f19, rtz # perform operation
fadd.s f22, f4, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f4, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f4, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f4, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f4, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f4, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xbf800000)
li x17, 0x95d22762 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
fadd.s f17, f16, f27, dyn # perform operation
fadd.s f17, f16, f27, rdn # perform operation
fadd.s f17, f16, f27, rmm # perform operation
fadd.s f17, f16, f27, rne # perform operation
fadd.s f17, f16, f27, rtz # perform operation
fadd.s f17, f16, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f16, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f16, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f16, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f16, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f16, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x3fc00000)
li x17, 0x3d527943 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f18, 0(x2) # load 0x3fc00000 from memory into f18
fadd.s f17, f25, f18, dyn # perform operation
fadd.s f17, f25, f18, rdn # perform operation
fadd.s f17, f25, f18, rmm # perform operation
fadd.s f17, f25, f18, rne # perform operation
fadd.s f17, f25, f18, rtz # perform operation
fadd.s f17, f25, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f25, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f25, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f25, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f25, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f25, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xbfc00000)
li x30, 0x96697c0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f26, 0(x2) # load 0xbfc00000 from memory into f26
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f1, 0(x2) # load 0xbfc00000 from memory into f1
fadd.s f30, f26, f1, dyn # perform operation
fadd.s f30, f26, f1, rdn # perform operation
fadd.s f30, f26, f1, rmm # perform operation
fadd.s f30, f26, f1, rne # perform operation
fadd.s f30, f26, f1, rtz # perform operation
fadd.s f30, f26, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f26, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f26, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f26, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f26, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f26, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x40000000)
li x24, 0xf1f257f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f6, 0(x2) # load 0xbfc00000 from memory into f6
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f21, 0(x2) # load 0x40000000 from memory into f21
fadd.s f24, f6, f21, dyn # perform operation
fadd.s f24, f6, f21, rdn # perform operation
fadd.s f24, f6, f21, rmm # perform operation
fadd.s f24, f6, f21, rne # perform operation
fadd.s f24, f6, f21, rtz # perform operation
fadd.s f24, f6, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f6, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f6, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f6, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f6, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f6, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xc0000000)
li x7, 0x13fed933 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f10, 0(x2) # load 0xbfc00000 from memory into f10
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f1, 0(x2) # load 0xc0000000 from memory into f1
fadd.s f7, f10, f1, dyn # perform operation
fadd.s f7, f10, f1, rdn # perform operation
fadd.s f7, f10, f1, rmm # perform operation
fadd.s f7, f10, f1, rne # perform operation
fadd.s f7, f10, f1, rtz # perform operation
fadd.s f7, f10, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f10, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f10, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f10, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f10, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f10, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x800000)
li x27, 0x0b483ade # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f30, 0(x2) # load 0xbfc00000 from memory into f30
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f6, 0(x2) # load 0x00800000 from memory into f6
fadd.s f27, f30, f6, dyn # perform operation
fadd.s f27, f30, f6, rdn # perform operation
fadd.s f27, f30, f6, rmm # perform operation
fadd.s f27, f30, f6, rne # perform operation
fadd.s f27, f30, f6, rtz # perform operation
fadd.s f27, f30, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f30, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f30, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f30, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f30, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f30, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80800000)
li x12, 0x1b838a8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f11, 0(x2) # load 0x80800000 from memory into f11
fadd.s f12, f20, f11, dyn # perform operation
fadd.s f12, f20, f11, rdn # perform operation
fadd.s f12, f20, f11, rmm # perform operation
fadd.s f12, f20, f11, rne # perform operation
fadd.s f12, f20, f11, rtz # perform operation
fadd.s f12, f20, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f20, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f20, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f20, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f20, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f20, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f7fffff)
li x5, 0xc66b6132 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f8, 0(x2) # load 0x7f7fffff from memory into f8
fadd.s f5, f28, f8, dyn # perform operation
fadd.s f5, f28, f8, rdn # perform operation
fadd.s f5, f28, f8, rmm # perform operation
fadd.s f5, f28, f8, rne # perform operation
fadd.s f5, f28, f8, rtz # perform operation
fadd.s f5, f28, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f28, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f28, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f28, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f28, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f28, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xff7fffff)
li x2, 0xd287a39a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f22, 0(x2) # load 0xff7fffff from memory into f22
fadd.s f2, f29, f22, dyn # perform operation
fadd.s f2, f29, f22, rdn # perform operation
fadd.s f2, f29, f22, rmm # perform operation
fadd.s f2, f29, f22, rne # perform operation
fadd.s f2, f29, f22, rtz # perform operation
fadd.s f2, f29, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f29, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f29, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f29, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f29, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f29, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fffff)
li x8, 0x12236a91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f24, 0(x2) # load 0xbfc00000 from memory into f24
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f6, 0(x2) # load 0x007fffff from memory into f6
fadd.s f8, f24, f6, dyn # perform operation
fadd.s f8, f24, f6, rdn # perform operation
fadd.s f8, f24, f6, rmm # perform operation
fadd.s f8, f24, f6, rne # perform operation
fadd.s f8, f24, f6, rtz # perform operation
fadd.s f8, f24, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f24, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f24, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f24, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f24, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f24, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x807fffff)
li x27, 0x6f221370 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f21, 0(x2) # load 0xbfc00000 from memory into f21
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f20, 0(x2) # load 0x807fffff from memory into f20
fadd.s f27, f21, f20, dyn # perform operation
fadd.s f27, f21, f20, rdn # perform operation
fadd.s f27, f21, f20, rmm # perform operation
fadd.s f27, f21, f20, rne # perform operation
fadd.s f27, f21, f20, rtz # perform operation
fadd.s f27, f21, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f21, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f21, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f21, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f21, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f21, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x400000)
li x28, 0xbb51a81d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f17, 0(x2) # load 0xbfc00000 from memory into f17
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f13, 0(x2) # load 0x00400000 from memory into f13
fadd.s f28, f17, f13, dyn # perform operation
fadd.s f28, f17, f13, rdn # perform operation
fadd.s f28, f17, f13, rmm # perform operation
fadd.s f28, f17, f13, rne # perform operation
fadd.s f28, f17, f13, rtz # perform operation
fadd.s f28, f17, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f17, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f17, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f17, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f17, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f17, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80400000)
li x15, 0x2f6a4837 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f3, 0(x2) # load 0xbfc00000 from memory into f3
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f8, 0(x2) # load 0x80400000 from memory into f8
fadd.s f15, f3, f8, dyn # perform operation
fadd.s f15, f3, f8, rdn # perform operation
fadd.s f15, f3, f8, rmm # perform operation
fadd.s f15, f3, f8, rne # perform operation
fadd.s f15, f3, f8, rtz # perform operation
fadd.s f15, f3, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f3, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f3, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f3, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f3, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f3, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x1)
li x19, 0x42d5a384 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f14, 0(x2) # load 0xbfc00000 from memory into f14
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f27, 0(x2) # load 0x00000001 from memory into f27
fadd.s f19, f14, f27, dyn # perform operation
fadd.s f19, f14, f27, rdn # perform operation
fadd.s f19, f14, f27, rmm # perform operation
fadd.s f19, f14, f27, rne # perform operation
fadd.s f19, f14, f27, rtz # perform operation
fadd.s f19, f14, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f14, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f14, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f14, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f14, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f14, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80000001)
li x22, 0x5ff3f132 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f9, 0(x2) # load 0xbfc00000 from memory into f9
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f13, 0(x2) # load 0x80000001 from memory into f13
fadd.s f22, f9, f13, dyn # perform operation
fadd.s f22, f9, f13, rdn # perform operation
fadd.s f22, f9, f13, rmm # perform operation
fadd.s f22, f9, f13, rne # perform operation
fadd.s f22, f9, f13, rtz # perform operation
fadd.s f22, f9, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f9, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f9, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f9, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f9, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f9, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f800000)
li x22, 0x9f327729 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f12, 0(x2) # load 0xbfc00000 from memory into f12
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f14, 0(x2) # load 0x7f800000 from memory into f14
fadd.s f22, f12, f14, dyn # perform operation
fadd.s f22, f12, f14, rdn # perform operation
fadd.s f22, f12, f14, rmm # perform operation
fadd.s f22, f12, f14, rne # perform operation
fadd.s f22, f12, f14, rtz # perform operation
fadd.s f22, f12, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f12, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f12, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f12, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f12, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f12, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xff800000)
li x23, 0xe10d2ef3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f15, 0(x2) # load 0xbfc00000 from memory into f15
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f8, 0(x2) # load 0xff800000 from memory into f8
fadd.s f23, f15, f8, dyn # perform operation
fadd.s f23, f15, f8, rdn # perform operation
fadd.s f23, f15, f8, rmm # perform operation
fadd.s f23, f15, f8, rne # perform operation
fadd.s f23, f15, f8, rtz # perform operation
fadd.s f23, f15, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f15, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f15, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f15, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f15, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f15, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fc00000)
li x27, 0x5f8e1f3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f23, 0(x2) # load 0xbfc00000 from memory into f23
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f22, 0(x2) # load 0x7fc00000 from memory into f22
fadd.s f27, f23, f22, dyn # perform operation
fadd.s f27, f23, f22, rdn # perform operation
fadd.s f27, f23, f22, rmm # perform operation
fadd.s f27, f23, f22, rne # perform operation
fadd.s f27, f23, f22, rtz # perform operation
fadd.s f27, f23, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f23, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f23, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f23, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f23, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f23, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fffffff)
li x16, 0x64e4f411 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f17, 0(x2) # load 0xbfc00000 from memory into f17
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
fadd.s f16, f17, f19, dyn # perform operation
fadd.s f16, f17, f19, rdn # perform operation
fadd.s f16, f17, f19, rmm # perform operation
fadd.s f16, f17, f19, rne # perform operation
fadd.s f16, f17, f19, rtz # perform operation
fadd.s f16, f17, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f17, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f17, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f17, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f17, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f17, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f800001)
li x27, 0x7c6da81c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f13, 0(x2) # load 0xbfc00000 from memory into f13
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f18, 0(x2) # load 0x7f800001 from memory into f18
fadd.s f27, f13, f18, dyn # perform operation
fadd.s f27, f13, f18, rdn # perform operation
fadd.s f27, f13, f18, rmm # perform operation
fadd.s f27, f13, f18, rne # perform operation
fadd.s f27, f13, f18, rtz # perform operation
fadd.s f27, f13, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f13, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f13, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f13, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f13, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f13, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fbfffff)
li x30, 0xbac53194 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f10, 0(x2) # load 0x7fbfffff from memory into f10
fadd.s f30, f25, f10, dyn # perform operation
fadd.s f30, f25, f10, rdn # perform operation
fadd.s f30, f25, f10, rmm # perform operation
fadd.s f30, f25, f10, rne # perform operation
fadd.s f30, f25, f10, rtz # perform operation
fadd.s f30, f25, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f25, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f25, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f25, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f25, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f25, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7ef8654f)
li x25, 0xb853b01b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f8, 0(x2) # load 0xbfc00000 from memory into f8
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f30, 0(x2) # load 0x7ef8654f from memory into f30
fadd.s f25, f8, f30, dyn # perform operation
fadd.s f25, f8, f30, rdn # perform operation
fadd.s f25, f8, f30, rmm # perform operation
fadd.s f25, f8, f30, rne # perform operation
fadd.s f25, f8, f30, rtz # perform operation
fadd.s f25, f8, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f8, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f8, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f8, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f8, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f8, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x813d9ab0)
li x19, 0xa02eaa9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f11, 0(x2) # load 0xbfc00000 from memory into f11
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f15, 0(x2) # load 0x813d9ab0 from memory into f15
fadd.s f19, f11, f15, dyn # perform operation
fadd.s f19, f11, f15, rdn # perform operation
fadd.s f19, f11, f15, rmm # perform operation
fadd.s f19, f11, f15, rne # perform operation
fadd.s f19, f11, f15, rtz # perform operation
fadd.s f19, f11, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f11, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f11, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f11, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f11, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f11, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x0)
li x5, 0x244e43c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
fadd.s f5, f13, f31, dyn # perform operation
fadd.s f5, f13, f31, rdn # perform operation
fadd.s f5, f13, f31, rmm # perform operation
fadd.s f5, f13, f31, rne # perform operation
fadd.s f5, f13, f31, rtz # perform operation
fadd.s f5, f13, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f13, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f13, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f13, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f13, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f13, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80000000)
li x18, 0x60d1e47d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f25, 0(x2) # load 0x40000000 from memory into f25
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f28, 0(x2) # load 0x80000000 from memory into f28
fadd.s f18, f25, f28, dyn # perform operation
fadd.s f18, f25, f28, rdn # perform operation
fadd.s f18, f25, f28, rmm # perform operation
fadd.s f18, f25, f28, rne # perform operation
fadd.s f18, f25, f28, rtz # perform operation
fadd.s f18, f25, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f25, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f25, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f25, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f25, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f25, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x3f800000)
li x11, 0x028b0419 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f14, 0(x2) # load 0x40000000 from memory into f14
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f28, 0(x2) # load 0x3f800000 from memory into f28
fadd.s f11, f14, f28, dyn # perform operation
fadd.s f11, f14, f28, rdn # perform operation
fadd.s f11, f14, f28, rmm # perform operation
fadd.s f11, f14, f28, rne # perform operation
fadd.s f11, f14, f28, rtz # perform operation
fadd.s f11, f14, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f14, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f14, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f14, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f14, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f14, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xbf800000)
li x16, 0x3ab28bde # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f14, 0(x2) # load 0x40000000 from memory into f14
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f18, 0(x2) # load 0xbf800000 from memory into f18
fadd.s f16, f14, f18, dyn # perform operation
fadd.s f16, f14, f18, rdn # perform operation
fadd.s f16, f14, f18, rmm # perform operation
fadd.s f16, f14, f18, rne # perform operation
fadd.s f16, f14, f18, rtz # perform operation
fadd.s f16, f14, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f14, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f14, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f14, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f14, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f14, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x3fc00000)
li x21, 0xe54fd744 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f11, 0(x2) # load 0x3fc00000 from memory into f11
fadd.s f21, f8, f11, dyn # perform operation
fadd.s f21, f8, f11, rdn # perform operation
fadd.s f21, f8, f11, rmm # perform operation
fadd.s f21, f8, f11, rne # perform operation
fadd.s f21, f8, f11, rtz # perform operation
fadd.s f21, f8, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f8, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f8, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f8, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f8, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f8, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xbfc00000)
li x10, 0xe53fe19c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f20, 0(x2) # load 0x40000000 from memory into f20
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f18, 0(x2) # load 0xbfc00000 from memory into f18
fadd.s f10, f20, f18, dyn # perform operation
fadd.s f10, f20, f18, rdn # perform operation
fadd.s f10, f20, f18, rmm # perform operation
fadd.s f10, f20, f18, rne # perform operation
fadd.s f10, f20, f18, rtz # perform operation
fadd.s f10, f20, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f20, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f20, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f20, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f20, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f20, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x40000000)
li x6, 0x52a21423 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f5, 0(x2) # load 0x40000000 from memory into f5
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f25, 0(x2) # load 0x40000000 from memory into f25
fadd.s f6, f5, f25, dyn # perform operation
fadd.s f6, f5, f25, rdn # perform operation
fadd.s f6, f5, f25, rmm # perform operation
fadd.s f6, f5, f25, rne # perform operation
fadd.s f6, f5, f25, rtz # perform operation
fadd.s f6, f5, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f5, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f5, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f5, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f5, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f5, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xc0000000)
li x28, 0x8ccc9e9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f10, 0(x2) # load 0x40000000 from memory into f10
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f26, 0(x2) # load 0xc0000000 from memory into f26
fadd.s f28, f10, f26, dyn # perform operation
fadd.s f28, f10, f26, rdn # perform operation
fadd.s f28, f10, f26, rmm # perform operation
fadd.s f28, f10, f26, rne # perform operation
fadd.s f28, f10, f26, rtz # perform operation
fadd.s f28, f10, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f10, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f10, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f10, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f10, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f10, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x800000)
li x2, 0x6279f81b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f28, 0(x2) # load 0x40000000 from memory into f28
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
fadd.s f2, f28, f11, dyn # perform operation
fadd.s f2, f28, f11, rdn # perform operation
fadd.s f2, f28, f11, rmm # perform operation
fadd.s f2, f28, f11, rne # perform operation
fadd.s f2, f28, f11, rtz # perform operation
fadd.s f2, f28, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f28, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f28, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f28, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f28, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f28, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80800000)
li x28, 0xde85f80c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f20, 0(x2) # load 0x40000000 from memory into f20
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f30, 0(x2) # load 0x80800000 from memory into f30
fadd.s f28, f20, f30, dyn # perform operation
fadd.s f28, f20, f30, rdn # perform operation
fadd.s f28, f20, f30, rmm # perform operation
fadd.s f28, f20, f30, rne # perform operation
fadd.s f28, f20, f30, rtz # perform operation
fadd.s f28, f20, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f20, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f20, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f20, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f20, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f20, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f7fffff)
li x21, 0x1946d537 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f6, 0(x2) # load 0x40000000 from memory into f6
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f14, 0(x2) # load 0x7f7fffff from memory into f14
fadd.s f21, f6, f14, dyn # perform operation
fadd.s f21, f6, f14, rdn # perform operation
fadd.s f21, f6, f14, rmm # perform operation
fadd.s f21, f6, f14, rne # perform operation
fadd.s f21, f6, f14, rtz # perform operation
fadd.s f21, f6, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f6, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f6, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f6, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f6, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f6, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xff7fffff)
li x13, 0xfd8a4c43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f22, 0(x2) # load 0x40000000 from memory into f22
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f15, 0(x2) # load 0xff7fffff from memory into f15
fadd.s f13, f22, f15, dyn # perform operation
fadd.s f13, f22, f15, rdn # perform operation
fadd.s f13, f22, f15, rmm # perform operation
fadd.s f13, f22, f15, rne # perform operation
fadd.s f13, f22, f15, rtz # perform operation
fadd.s f13, f22, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f22, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f22, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f22, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f22, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f22, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fffff)
li x26, 0x22056702 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f13, 0(x2) # load 0x007fffff from memory into f13
fadd.s f26, f16, f13, dyn # perform operation
fadd.s f26, f16, f13, rdn # perform operation
fadd.s f26, f16, f13, rmm # perform operation
fadd.s f26, f16, f13, rne # perform operation
fadd.s f26, f16, f13, rtz # perform operation
fadd.s f26, f16, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f16, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f16, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f16, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f16, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f16, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x807fffff)
li x24, 0x978980d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f6, 0(x2) # load 0x40000000 from memory into f6
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f12, 0(x2) # load 0x807fffff from memory into f12
fadd.s f24, f6, f12, dyn # perform operation
fadd.s f24, f6, f12, rdn # perform operation
fadd.s f24, f6, f12, rmm # perform operation
fadd.s f24, f6, f12, rne # perform operation
fadd.s f24, f6, f12, rtz # perform operation
fadd.s f24, f6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f6, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f6, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f6, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f6, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f6, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x400000)
li x16, 0x5dc0b0bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f31, 0(x2) # load 0x40000000 from memory into f31
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f4, 0(x2) # load 0x00400000 from memory into f4
fadd.s f16, f31, f4, dyn # perform operation
fadd.s f16, f31, f4, rdn # perform operation
fadd.s f16, f31, f4, rmm # perform operation
fadd.s f16, f31, f4, rne # perform operation
fadd.s f16, f31, f4, rtz # perform operation
fadd.s f16, f31, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f31, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f31, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f31, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f31, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f31, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80400000)
li x30, 0xfb420c48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f10, 0(x2) # load 0x40000000 from memory into f10
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f2, 0(x2) # load 0x80400000 from memory into f2
fadd.s f30, f10, f2, dyn # perform operation
fadd.s f30, f10, f2, rdn # perform operation
fadd.s f30, f10, f2, rmm # perform operation
fadd.s f30, f10, f2, rne # perform operation
fadd.s f30, f10, f2, rtz # perform operation
fadd.s f30, f10, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f10, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f10, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f10, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f10, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f10, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x1)
li x28, 0xaba7504c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f14, 0(x2) # load 0x40000000 from memory into f14
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f18, 0(x2) # load 0x00000001 from memory into f18
fadd.s f28, f14, f18, dyn # perform operation
fadd.s f28, f14, f18, rdn # perform operation
fadd.s f28, f14, f18, rmm # perform operation
fadd.s f28, f14, f18, rne # perform operation
fadd.s f28, f14, f18, rtz # perform operation
fadd.s f28, f14, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f14, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f14, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f14, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f14, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f14, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80000001)
li x23, 0x8a332e57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f19, 0(x2) # load 0x40000000 from memory into f19
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f12, 0(x2) # load 0x80000001 from memory into f12
fadd.s f23, f19, f12, dyn # perform operation
fadd.s f23, f19, f12, rdn # perform operation
fadd.s f23, f19, f12, rmm # perform operation
fadd.s f23, f19, f12, rne # perform operation
fadd.s f23, f19, f12, rtz # perform operation
fadd.s f23, f19, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f19, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f19, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f19, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f19, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f19, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f800000)
li x9, 0x29f62d2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f13, 0(x2) # load 0x40000000 from memory into f13
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f6, 0(x2) # load 0x7f800000 from memory into f6
fadd.s f9, f13, f6, dyn # perform operation
fadd.s f9, f13, f6, rdn # perform operation
fadd.s f9, f13, f6, rmm # perform operation
fadd.s f9, f13, f6, rne # perform operation
fadd.s f9, f13, f6, rtz # perform operation
fadd.s f9, f13, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f13, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f13, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f13, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f13, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f13, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xff800000)
li x25, 0x99c51e26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f7, 0(x2) # load 0x40000000 from memory into f7
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f24, 0(x2) # load 0xff800000 from memory into f24
fadd.s f25, f7, f24, dyn # perform operation
fadd.s f25, f7, f24, rdn # perform operation
fadd.s f25, f7, f24, rmm # perform operation
fadd.s f25, f7, f24, rne # perform operation
fadd.s f25, f7, f24, rtz # perform operation
fadd.s f25, f7, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f7, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f7, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f7, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f7, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f7, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fc00000)
li x17, 0xdb824f12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f5, 0(x2) # load 0x40000000 from memory into f5
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f22, 0(x2) # load 0x7fc00000 from memory into f22
fadd.s f17, f5, f22, dyn # perform operation
fadd.s f17, f5, f22, rdn # perform operation
fadd.s f17, f5, f22, rmm # perform operation
fadd.s f17, f5, f22, rne # perform operation
fadd.s f17, f5, f22, rtz # perform operation
fadd.s f17, f5, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f5, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f5, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f5, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f5, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f5, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fffffff)
li x30, 0xe1d2f318 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f3, 0(x2) # load 0x7fffffff from memory into f3
fadd.s f30, f23, f3, dyn # perform operation
fadd.s f30, f23, f3, rdn # perform operation
fadd.s f30, f23, f3, rmm # perform operation
fadd.s f30, f23, f3, rne # perform operation
fadd.s f30, f23, f3, rtz # perform operation
fadd.s f30, f23, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f23, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f23, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f23, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f23, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f23, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f800001)
li x5, 0xa3c29722 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f26, 0(x2) # load 0x40000000 from memory into f26
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f10, 0(x2) # load 0x7f800001 from memory into f10
fadd.s f5, f26, f10, dyn # perform operation
fadd.s f5, f26, f10, rdn # perform operation
fadd.s f5, f26, f10, rmm # perform operation
fadd.s f5, f26, f10, rne # perform operation
fadd.s f5, f26, f10, rtz # perform operation
fadd.s f5, f26, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f26, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f26, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f26, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f26, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f26, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fbfffff)
li x25, 0xcc33c2a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f8, 0(x2) # load 0x40000000 from memory into f8
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f9, 0(x2) # load 0x7fbfffff from memory into f9
fadd.s f25, f8, f9, dyn # perform operation
fadd.s f25, f8, f9, rdn # perform operation
fadd.s f25, f8, f9, rmm # perform operation
fadd.s f25, f8, f9, rne # perform operation
fadd.s f25, f8, f9, rtz # perform operation
fadd.s f25, f8, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f8, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f8, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f8, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f8, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f8, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7ef8654f)
li x3, 0x430de8ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f1, 0(x2) # load 0x40000000 from memory into f1
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f31, 0(x2) # load 0x7ef8654f from memory into f31
fadd.s f3, f1, f31, dyn # perform operation
fadd.s f3, f1, f31, rdn # perform operation
fadd.s f3, f1, f31, rmm # perform operation
fadd.s f3, f1, f31, rne # perform operation
fadd.s f3, f1, f31, rtz # perform operation
fadd.s f3, f1, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f1, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f1, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f1, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f1, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f1, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x813d9ab0)
li x19, 0xaadfcf4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f31, 0(x2) # load 0x40000000 from memory into f31
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f11, 0(x2) # load 0x813d9ab0 from memory into f11
fadd.s f19, f31, f11, dyn # perform operation
fadd.s f19, f31, f11, rdn # perform operation
fadd.s f19, f31, f11, rmm # perform operation
fadd.s f19, f31, f11, rne # perform operation
fadd.s f19, f31, f11, rtz # perform operation
fadd.s f19, f31, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f31, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f31, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f31, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f31, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f31, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x0)
li x24, 0x7f16c936 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f12, 0(x2) # load 0xc0000000 from memory into f12
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
fadd.s f24, f12, f13, dyn # perform operation
fadd.s f24, f12, f13, rdn # perform operation
fadd.s f24, f12, f13, rmm # perform operation
fadd.s f24, f12, f13, rne # perform operation
fadd.s f24, f12, f13, rtz # perform operation
fadd.s f24, f12, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f12, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f12, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f12, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f12, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f12, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80000000)
li x27, 0xbeccd173 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f21, 0(x2) # load 0xc0000000 from memory into f21
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f28, 0(x2) # load 0x80000000 from memory into f28
fadd.s f27, f21, f28, dyn # perform operation
fadd.s f27, f21, f28, rdn # perform operation
fadd.s f27, f21, f28, rmm # perform operation
fadd.s f27, f21, f28, rne # perform operation
fadd.s f27, f21, f28, rtz # perform operation
fadd.s f27, f21, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f21, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f21, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f21, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f21, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f21, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x3f800000)
li x19, 0x9f780110 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f16, 0(x2) # load 0xc0000000 from memory into f16
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f4, 0(x2) # load 0x3f800000 from memory into f4
fadd.s f19, f16, f4, dyn # perform operation
fadd.s f19, f16, f4, rdn # perform operation
fadd.s f19, f16, f4, rmm # perform operation
fadd.s f19, f16, f4, rne # perform operation
fadd.s f19, f16, f4, rtz # perform operation
fadd.s f19, f16, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f16, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f16, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f16, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f16, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f16, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xbf800000)
li x5, 0x140b728a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f10, 0(x2) # load 0xc0000000 from memory into f10
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f14, 0(x2) # load 0xbf800000 from memory into f14
fadd.s f5, f10, f14, dyn # perform operation
fadd.s f5, f10, f14, rdn # perform operation
fadd.s f5, f10, f14, rmm # perform operation
fadd.s f5, f10, f14, rne # perform operation
fadd.s f5, f10, f14, rtz # perform operation
fadd.s f5, f10, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f10, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f10, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f10, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f10, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f10, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x3fc00000)
li x24, 0x8296dcad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f18, 0(x2) # load 0xc0000000 from memory into f18
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
fadd.s f24, f18, f31, dyn # perform operation
fadd.s f24, f18, f31, rdn # perform operation
fadd.s f24, f18, f31, rmm # perform operation
fadd.s f24, f18, f31, rne # perform operation
fadd.s f24, f18, f31, rtz # perform operation
fadd.s f24, f18, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f18, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f18, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f18, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f18, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f18, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xbfc00000)
li x24, 0x60aedc2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f28, 0(x2) # load 0xc0000000 from memory into f28
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
fadd.s f24, f28, f25, dyn # perform operation
fadd.s f24, f28, f25, rdn # perform operation
fadd.s f24, f28, f25, rmm # perform operation
fadd.s f24, f28, f25, rne # perform operation
fadd.s f24, f28, f25, rtz # perform operation
fadd.s f24, f28, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f28, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f28, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f28, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f28, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f28, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x40000000)
li x18, 0x9c74c229 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f27, 0(x2) # load 0xc0000000 from memory into f27
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f2, 0(x2) # load 0x40000000 from memory into f2
fadd.s f18, f27, f2, dyn # perform operation
fadd.s f18, f27, f2, rdn # perform operation
fadd.s f18, f27, f2, rmm # perform operation
fadd.s f18, f27, f2, rne # perform operation
fadd.s f18, f27, f2, rtz # perform operation
fadd.s f18, f27, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f27, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f27, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f27, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f27, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f27, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xc0000000)
li x5, 0x9ba1eff7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f27, 0(x2) # load 0xc0000000 from memory into f27
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f6, 0(x2) # load 0xc0000000 from memory into f6
fadd.s f5, f27, f6, dyn # perform operation
fadd.s f5, f27, f6, rdn # perform operation
fadd.s f5, f27, f6, rmm # perform operation
fadd.s f5, f27, f6, rne # perform operation
fadd.s f5, f27, f6, rtz # perform operation
fadd.s f5, f27, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f27, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f27, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f27, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f27, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f27, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x800000)
li x11, 0xa71629e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f5, 0(x2) # load 0xc0000000 from memory into f5
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f3, 0(x2) # load 0x00800000 from memory into f3
fadd.s f11, f5, f3, dyn # perform operation
fadd.s f11, f5, f3, rdn # perform operation
fadd.s f11, f5, f3, rmm # perform operation
fadd.s f11, f5, f3, rne # perform operation
fadd.s f11, f5, f3, rtz # perform operation
fadd.s f11, f5, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f5, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f5, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f5, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f5, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f5, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80800000)
li x13, 0xd68de871 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f16, 0(x2) # load 0x80800000 from memory into f16
fadd.s f13, f14, f16, dyn # perform operation
fadd.s f13, f14, f16, rdn # perform operation
fadd.s f13, f14, f16, rmm # perform operation
fadd.s f13, f14, f16, rne # perform operation
fadd.s f13, f14, f16, rtz # perform operation
fadd.s f13, f14, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f14, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f14, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f14, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f14, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f14, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f7fffff)
li x12, 0x8852b36c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
fadd.s f12, f31, f16, dyn # perform operation
fadd.s f12, f31, f16, rdn # perform operation
fadd.s f12, f31, f16, rmm # perform operation
fadd.s f12, f31, f16, rne # perform operation
fadd.s f12, f31, f16, rtz # perform operation
fadd.s f12, f31, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f31, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f31, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f31, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f31, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f31, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xff7fffff)
li x4, 0xa2e492dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f25, 0(x2) # load 0xc0000000 from memory into f25
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f20, 0(x2) # load 0xff7fffff from memory into f20
fadd.s f4, f25, f20, dyn # perform operation
fadd.s f4, f25, f20, rdn # perform operation
fadd.s f4, f25, f20, rmm # perform operation
fadd.s f4, f25, f20, rne # perform operation
fadd.s f4, f25, f20, rtz # perform operation
fadd.s f4, f25, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f25, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f25, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f25, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f25, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f25, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fffff)
li x7, 0x4525d4b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f8, 0(x2) # load 0xc0000000 from memory into f8
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f5, 0(x2) # load 0x007fffff from memory into f5
fadd.s f7, f8, f5, dyn # perform operation
fadd.s f7, f8, f5, rdn # perform operation
fadd.s f7, f8, f5, rmm # perform operation
fadd.s f7, f8, f5, rne # perform operation
fadd.s f7, f8, f5, rtz # perform operation
fadd.s f7, f8, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f8, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f8, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f8, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f8, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f8, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x807fffff)
li x12, 0x06e500f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f25, 0(x2) # load 0xc0000000 from memory into f25
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f27, 0(x2) # load 0x807fffff from memory into f27
fadd.s f12, f25, f27, dyn # perform operation
fadd.s f12, f25, f27, rdn # perform operation
fadd.s f12, f25, f27, rmm # perform operation
fadd.s f12, f25, f27, rne # perform operation
fadd.s f12, f25, f27, rtz # perform operation
fadd.s f12, f25, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f25, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f25, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f25, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f25, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f25, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x400000)
li x31, 0x9dfb1871 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f15, 0(x2) # load 0xc0000000 from memory into f15
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f8, 0(x2) # load 0x00400000 from memory into f8
fadd.s f31, f15, f8, dyn # perform operation
fadd.s f31, f15, f8, rdn # perform operation
fadd.s f31, f15, f8, rmm # perform operation
fadd.s f31, f15, f8, rne # perform operation
fadd.s f31, f15, f8, rtz # perform operation
fadd.s f31, f15, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f15, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f15, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f15, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f15, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f15, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80400000)
li x22, 0xc9596784 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f17, 0(x2) # load 0x80400000 from memory into f17
fadd.s f22, f14, f17, dyn # perform operation
fadd.s f22, f14, f17, rdn # perform operation
fadd.s f22, f14, f17, rmm # perform operation
fadd.s f22, f14, f17, rne # perform operation
fadd.s f22, f14, f17, rtz # perform operation
fadd.s f22, f14, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f14, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f14, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f14, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f14, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f14, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x1)
li x18, 0x30516f97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f30, 0(x2) # load 0xc0000000 from memory into f30
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f23, 0(x2) # load 0x00000001 from memory into f23
fadd.s f18, f30, f23, dyn # perform operation
fadd.s f18, f30, f23, rdn # perform operation
fadd.s f18, f30, f23, rmm # perform operation
fadd.s f18, f30, f23, rne # perform operation
fadd.s f18, f30, f23, rtz # perform operation
fadd.s f18, f30, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f30, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f30, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f30, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f30, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f30, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80000001)
li x23, 0xfc869157 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f10, 0(x2) # load 0xc0000000 from memory into f10
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f11, 0(x2) # load 0x80000001 from memory into f11
fadd.s f23, f10, f11, dyn # perform operation
fadd.s f23, f10, f11, rdn # perform operation
fadd.s f23, f10, f11, rmm # perform operation
fadd.s f23, f10, f11, rne # perform operation
fadd.s f23, f10, f11, rtz # perform operation
fadd.s f23, f10, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f10, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f10, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f10, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f10, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f10, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f800000)
li x24, 0x90ffc651 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f25, 0(x2) # load 0xc0000000 from memory into f25
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f15, 0(x2) # load 0x7f800000 from memory into f15
fadd.s f24, f25, f15, dyn # perform operation
fadd.s f24, f25, f15, rdn # perform operation
fadd.s f24, f25, f15, rmm # perform operation
fadd.s f24, f25, f15, rne # perform operation
fadd.s f24, f25, f15, rtz # perform operation
fadd.s f24, f25, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f25, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f25, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f25, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f25, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f25, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xff800000)
li x9, 0x8474c8f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f18, 0(x2) # load 0xc0000000 from memory into f18
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
fadd.s f9, f18, f1, dyn # perform operation
fadd.s f9, f18, f1, rdn # perform operation
fadd.s f9, f18, f1, rmm # perform operation
fadd.s f9, f18, f1, rne # perform operation
fadd.s f9, f18, f1, rtz # perform operation
fadd.s f9, f18, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f18, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f18, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f18, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f18, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f18, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fc00000)
li x14, 0x0f4a7010 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f2, 0(x2) # load 0xc0000000 from memory into f2
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f25, 0(x2) # load 0x7fc00000 from memory into f25
fadd.s f14, f2, f25, dyn # perform operation
fadd.s f14, f2, f25, rdn # perform operation
fadd.s f14, f2, f25, rmm # perform operation
fadd.s f14, f2, f25, rne # perform operation
fadd.s f14, f2, f25, rtz # perform operation
fadd.s f14, f2, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f2, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f2, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f2, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f2, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f2, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fffffff)
li x6, 0x49e66370 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
fadd.s f6, f31, f12, dyn # perform operation
fadd.s f6, f31, f12, rdn # perform operation
fadd.s f6, f31, f12, rmm # perform operation
fadd.s f6, f31, f12, rne # perform operation
fadd.s f6, f31, f12, rtz # perform operation
fadd.s f6, f31, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f31, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f31, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f31, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f31, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f31, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f800001)
li x28, 0xe236fef7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f2, 0(x2) # load 0xc0000000 from memory into f2
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f16, 0(x2) # load 0x7f800001 from memory into f16
fadd.s f28, f2, f16, dyn # perform operation
fadd.s f28, f2, f16, rdn # perform operation
fadd.s f28, f2, f16, rmm # perform operation
fadd.s f28, f2, f16, rne # perform operation
fadd.s f28, f2, f16, rtz # perform operation
fadd.s f28, f2, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f2, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f2, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f2, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f2, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f2, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fbfffff)
li x28, 0xe238fdfa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f20, 0(x2) # load 0x7fbfffff from memory into f20
fadd.s f28, f14, f20, dyn # perform operation
fadd.s f28, f14, f20, rdn # perform operation
fadd.s f28, f14, f20, rmm # perform operation
fadd.s f28, f14, f20, rne # perform operation
fadd.s f28, f14, f20, rtz # perform operation
fadd.s f28, f14, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f14, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f14, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f14, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f14, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f14, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7ef8654f)
li x11, 0x7da49d0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f12, 0(x2) # load 0xc0000000 from memory into f12
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
fadd.s f11, f12, f16, dyn # perform operation
fadd.s f11, f12, f16, rdn # perform operation
fadd.s f11, f12, f16, rmm # perform operation
fadd.s f11, f12, f16, rne # perform operation
fadd.s f11, f12, f16, rtz # perform operation
fadd.s f11, f12, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f12, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f12, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f12, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f12, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f12, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x813d9ab0)
li x16, 0x4ae60797 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f15, 0(x2) # load 0xc0000000 from memory into f15
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f29, 0(x2) # load 0x813d9ab0 from memory into f29
fadd.s f16, f15, f29, dyn # perform operation
fadd.s f16, f15, f29, rdn # perform operation
fadd.s f16, f15, f29, rmm # perform operation
fadd.s f16, f15, f29, rne # perform operation
fadd.s f16, f15, f29, rtz # perform operation
fadd.s f16, f15, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f15, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f15, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f15, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f15, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f15, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x0)
li x12, 0xf19ae8cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
fadd.s f12, f27, f31, dyn # perform operation
fadd.s f12, f27, f31, rdn # perform operation
fadd.s f12, f27, f31, rmm # perform operation
fadd.s f12, f27, f31, rne # perform operation
fadd.s f12, f27, f31, rtz # perform operation
fadd.s f12, f27, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f27, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f27, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f27, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f27, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f27, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80000000)
li x27, 0xcb3b74c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f19, 0(x2) # load 0x00800000 from memory into f19
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f18, 0(x2) # load 0x80000000 from memory into f18
fadd.s f27, f19, f18, dyn # perform operation
fadd.s f27, f19, f18, rdn # perform operation
fadd.s f27, f19, f18, rmm # perform operation
fadd.s f27, f19, f18, rne # perform operation
fadd.s f27, f19, f18, rtz # perform operation
fadd.s f27, f19, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f19, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f19, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f19, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f19, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f19, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x3f800000)
li x22, 0xff1a2d39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f19, 0(x2) # load 0x00800000 from memory into f19
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f17, 0(x2) # load 0x3f800000 from memory into f17
fadd.s f22, f19, f17, dyn # perform operation
fadd.s f22, f19, f17, rdn # perform operation
fadd.s f22, f19, f17, rmm # perform operation
fadd.s f22, f19, f17, rne # perform operation
fadd.s f22, f19, f17, rtz # perform operation
fadd.s f22, f19, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f19, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f19, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f19, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f19, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f19, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xbf800000)
li x12, 0x8b288b50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f24, 0(x2) # load 0x00800000 from memory into f24
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f1, 0(x2) # load 0xbf800000 from memory into f1
fadd.s f12, f24, f1, dyn # perform operation
fadd.s f12, f24, f1, rdn # perform operation
fadd.s f12, f24, f1, rmm # perform operation
fadd.s f12, f24, f1, rne # perform operation
fadd.s f12, f24, f1, rtz # perform operation
fadd.s f12, f24, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f24, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f24, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f24, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f24, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f24, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x3fc00000)
li x9, 0x8dc8ed10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f28, 0(x2) # load 0x00800000 from memory into f28
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f14, 0(x2) # load 0x3fc00000 from memory into f14
fadd.s f9, f28, f14, dyn # perform operation
fadd.s f9, f28, f14, rdn # perform operation
fadd.s f9, f28, f14, rmm # perform operation
fadd.s f9, f28, f14, rne # perform operation
fadd.s f9, f28, f14, rtz # perform operation
fadd.s f9, f28, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f28, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f28, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f28, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f28, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f28, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xbfc00000)
li x25, 0x65d7272e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f28, 0(x2) # load 0xbfc00000 from memory into f28
fadd.s f25, f11, f28, dyn # perform operation
fadd.s f25, f11, f28, rdn # perform operation
fadd.s f25, f11, f28, rmm # perform operation
fadd.s f25, f11, f28, rne # perform operation
fadd.s f25, f11, f28, rtz # perform operation
fadd.s f25, f11, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f11, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f11, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f11, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f11, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f11, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x40000000)
li x18, 0x88823656 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
fadd.s f18, f27, f24, dyn # perform operation
fadd.s f18, f27, f24, rdn # perform operation
fadd.s f18, f27, f24, rmm # perform operation
fadd.s f18, f27, f24, rne # perform operation
fadd.s f18, f27, f24, rtz # perform operation
fadd.s f18, f27, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f27, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f27, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f27, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f27, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f27, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xc0000000)
li x15, 0xb4a0fac4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f3, 0(x2) # load 0x00800000 from memory into f3
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f13, 0(x2) # load 0xc0000000 from memory into f13
fadd.s f15, f3, f13, dyn # perform operation
fadd.s f15, f3, f13, rdn # perform operation
fadd.s f15, f3, f13, rmm # perform operation
fadd.s f15, f3, f13, rne # perform operation
fadd.s f15, f3, f13, rtz # perform operation
fadd.s f15, f3, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f3, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f3, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f3, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f3, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f3, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x800000)
li x7, 0x3614d0f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
fadd.s f7, f22, f11, dyn # perform operation
fadd.s f7, f22, f11, rdn # perform operation
fadd.s f7, f22, f11, rmm # perform operation
fadd.s f7, f22, f11, rne # perform operation
fadd.s f7, f22, f11, rtz # perform operation
fadd.s f7, f22, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f22, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f22, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f22, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f22, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f22, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80800000)
li x22, 0xaaecf21f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
fadd.s f22, f14, f10, dyn # perform operation
fadd.s f22, f14, f10, rdn # perform operation
fadd.s f22, f14, f10, rmm # perform operation
fadd.s f22, f14, f10, rne # perform operation
fadd.s f22, f14, f10, rtz # perform operation
fadd.s f22, f14, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f14, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f14, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f14, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f14, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f14, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f7fffff)
li x28, 0x9003d43b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f30, 0(x2) # load 0x00800000 from memory into f30
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f26, 0(x2) # load 0x7f7fffff from memory into f26
fadd.s f28, f30, f26, dyn # perform operation
fadd.s f28, f30, f26, rdn # perform operation
fadd.s f28, f30, f26, rmm # perform operation
fadd.s f28, f30, f26, rne # perform operation
fadd.s f28, f30, f26, rtz # perform operation
fadd.s f28, f30, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f30, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f30, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f30, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f30, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f30, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xff7fffff)
li x28, 0x836cc114 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f26, 0(x2) # load 0x00800000 from memory into f26
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f29, 0(x2) # load 0xff7fffff from memory into f29
fadd.s f28, f26, f29, dyn # perform operation
fadd.s f28, f26, f29, rdn # perform operation
fadd.s f28, f26, f29, rmm # perform operation
fadd.s f28, f26, f29, rne # perform operation
fadd.s f28, f26, f29, rtz # perform operation
fadd.s f28, f26, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f26, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f26, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f26, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f26, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f26, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fffff)
li x28, 0xd64a2700 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f25, 0(x2) # load 0x00800000 from memory into f25
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
fadd.s f28, f25, f10, dyn # perform operation
fadd.s f28, f25, f10, rdn # perform operation
fadd.s f28, f25, f10, rmm # perform operation
fadd.s f28, f25, f10, rne # perform operation
fadd.s f28, f25, f10, rtz # perform operation
fadd.s f28, f25, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f25, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f25, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f25, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f25, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f25, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x807fffff)
li x9, 0x47be361b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f8, 0(x2) # load 0x807fffff from memory into f8
fadd.s f9, f27, f8, dyn # perform operation
fadd.s f9, f27, f8, rdn # perform operation
fadd.s f9, f27, f8, rmm # perform operation
fadd.s f9, f27, f8, rne # perform operation
fadd.s f9, f27, f8, rtz # perform operation
fadd.s f9, f27, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f27, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f27, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f27, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f27, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f27, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x400000)
li x5, 0x75b06007 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f13, 0(x2) # load 0x00800000 from memory into f13
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f20, 0(x2) # load 0x00400000 from memory into f20
fadd.s f5, f13, f20, dyn # perform operation
fadd.s f5, f13, f20, rdn # perform operation
fadd.s f5, f13, f20, rmm # perform operation
fadd.s f5, f13, f20, rne # perform operation
fadd.s f5, f13, f20, rtz # perform operation
fadd.s f5, f13, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f13, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f13, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f13, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f13, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f13, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80400000)
li x7, 0xf251ffff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f10, 0(x2) # load 0x00800000 from memory into f10
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f9, 0(x2) # load 0x80400000 from memory into f9
fadd.s f7, f10, f9, dyn # perform operation
fadd.s f7, f10, f9, rdn # perform operation
fadd.s f7, f10, f9, rmm # perform operation
fadd.s f7, f10, f9, rne # perform operation
fadd.s f7, f10, f9, rtz # perform operation
fadd.s f7, f10, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f10, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f10, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f10, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f10, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f10, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x1)
li x20, 0xe500855c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f18, 0(x2) # load 0x00800000 from memory into f18
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f21, 0(x2) # load 0x00000001 from memory into f21
fadd.s f20, f18, f21, dyn # perform operation
fadd.s f20, f18, f21, rdn # perform operation
fadd.s f20, f18, f21, rmm # perform operation
fadd.s f20, f18, f21, rne # perform operation
fadd.s f20, f18, f21, rtz # perform operation
fadd.s f20, f18, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f18, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f18, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f18, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f18, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f18, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80000001)
li x23, 0x7bed9280 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
fadd.s f23, f14, f7, dyn # perform operation
fadd.s f23, f14, f7, rdn # perform operation
fadd.s f23, f14, f7, rmm # perform operation
fadd.s f23, f14, f7, rne # perform operation
fadd.s f23, f14, f7, rtz # perform operation
fadd.s f23, f14, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f14, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f14, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f14, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f14, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f14, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f800000)
li x21, 0xa6c76517 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f2, 0(x2) # load 0x00800000 from memory into f2
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f6, 0(x2) # load 0x7f800000 from memory into f6
fadd.s f21, f2, f6, dyn # perform operation
fadd.s f21, f2, f6, rdn # perform operation
fadd.s f21, f2, f6, rmm # perform operation
fadd.s f21, f2, f6, rne # perform operation
fadd.s f21, f2, f6, rtz # perform operation
fadd.s f21, f2, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f2, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f2, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f2, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f2, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f2, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xff800000)
li x8, 0x4ae7fe1c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f6, 0(x2) # load 0x00800000 from memory into f6
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
fadd.s f8, f6, f9, dyn # perform operation
fadd.s f8, f6, f9, rdn # perform operation
fadd.s f8, f6, f9, rmm # perform operation
fadd.s f8, f6, f9, rne # perform operation
fadd.s f8, f6, f9, rtz # perform operation
fadd.s f8, f6, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f6, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f6, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f6, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f6, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f6, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fc00000)
li x2, 0x1172945a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f20, 0(x2) # load 0x00800000 from memory into f20
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
fadd.s f2, f20, f7, dyn # perform operation
fadd.s f2, f20, f7, rdn # perform operation
fadd.s f2, f20, f7, rmm # perform operation
fadd.s f2, f20, f7, rne # perform operation
fadd.s f2, f20, f7, rtz # perform operation
fadd.s f2, f20, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f20, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f20, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f20, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f20, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f20, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fffffff)
li x27, 0x7cf35ccf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f20, 0(x2) # load 0x7fffffff from memory into f20
fadd.s f27, f23, f20, dyn # perform operation
fadd.s f27, f23, f20, rdn # perform operation
fadd.s f27, f23, f20, rmm # perform operation
fadd.s f27, f23, f20, rne # perform operation
fadd.s f27, f23, f20, rtz # perform operation
fadd.s f27, f23, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f23, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f23, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f23, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f23, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f23, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f800001)
li x16, 0xfdf30179 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f20, 0(x2) # load 0x00800000 from memory into f20
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f18, 0(x2) # load 0x7f800001 from memory into f18
fadd.s f16, f20, f18, dyn # perform operation
fadd.s f16, f20, f18, rdn # perform operation
fadd.s f16, f20, f18, rmm # perform operation
fadd.s f16, f20, f18, rne # perform operation
fadd.s f16, f20, f18, rtz # perform operation
fadd.s f16, f20, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f20, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f20, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f20, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f20, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f20, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fbfffff)
li x26, 0x17f493de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f29, 0(x2) # load 0x00800000 from memory into f29
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
fadd.s f26, f29, f15, dyn # perform operation
fadd.s f26, f29, f15, rdn # perform operation
fadd.s f26, f29, f15, rmm # perform operation
fadd.s f26, f29, f15, rne # perform operation
fadd.s f26, f29, f15, rtz # perform operation
fadd.s f26, f29, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f29, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f29, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f29, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f29, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f29, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7ef8654f)
li x24, 0x9541f7de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f26, 0(x2) # load 0x00800000 from memory into f26
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f31, 0(x2) # load 0x7ef8654f from memory into f31
fadd.s f24, f26, f31, dyn # perform operation
fadd.s f24, f26, f31, rdn # perform operation
fadd.s f24, f26, f31, rmm # perform operation
fadd.s f24, f26, f31, rne # perform operation
fadd.s f24, f26, f31, rtz # perform operation
fadd.s f24, f26, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f26, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f26, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f26, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f26, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f26, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x813d9ab0)
li x15, 0x15e88bb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f1, 0(x2) # load 0x00800000 from memory into f1
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f11, 0(x2) # load 0x813d9ab0 from memory into f11
fadd.s f15, f1, f11, dyn # perform operation
fadd.s f15, f1, f11, rdn # perform operation
fadd.s f15, f1, f11, rmm # perform operation
fadd.s f15, f1, f11, rne # perform operation
fadd.s f15, f1, f11, rtz # perform operation
fadd.s f15, f1, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f1, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f1, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f1, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f1, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f1, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x0)
li x29, 0xf0df428d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f3, 0(x2) # load 0x80800000 from memory into f3
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f27, 0(x2) # load 0x00000000 from memory into f27
fadd.s f29, f3, f27, dyn # perform operation
fadd.s f29, f3, f27, rdn # perform operation
fadd.s f29, f3, f27, rmm # perform operation
fadd.s f29, f3, f27, rne # perform operation
fadd.s f29, f3, f27, rtz # perform operation
fadd.s f29, f3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f3, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f3, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f3, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f3, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f3, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80000000)
li x19, 0x6065068f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f29, 0(x2) # load 0x80000000 from memory into f29
fadd.s f19, f20, f29, dyn # perform operation
fadd.s f19, f20, f29, rdn # perform operation
fadd.s f19, f20, f29, rmm # perform operation
fadd.s f19, f20, f29, rne # perform operation
fadd.s f19, f20, f29, rtz # perform operation
fadd.s f19, f20, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f20, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f20, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f20, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f20, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f20, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x3f800000)
li x28, 0x2fe5b0fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f8, 0(x2) # load 0x80800000 from memory into f8
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f25, 0(x2) # load 0x3f800000 from memory into f25
fadd.s f28, f8, f25, dyn # perform operation
fadd.s f28, f8, f25, rdn # perform operation
fadd.s f28, f8, f25, rmm # perform operation
fadd.s f28, f8, f25, rne # perform operation
fadd.s f28, f8, f25, rtz # perform operation
fadd.s f28, f8, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f8, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f8, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f8, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f8, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f8, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xbf800000)
li x20, 0x16940876 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f5, 0(x2) # load 0x80800000 from memory into f5
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f31, 0(x2) # load 0xbf800000 from memory into f31
fadd.s f20, f5, f31, dyn # perform operation
fadd.s f20, f5, f31, rdn # perform operation
fadd.s f20, f5, f31, rmm # perform operation
fadd.s f20, f5, f31, rne # perform operation
fadd.s f20, f5, f31, rtz # perform operation
fadd.s f20, f5, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f5, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f5, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f5, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f5, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f5, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x3fc00000)
li x28, 0x5c1500ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f1, 0(x2) # load 0x3fc00000 from memory into f1
fadd.s f28, f23, f1, dyn # perform operation
fadd.s f28, f23, f1, rdn # perform operation
fadd.s f28, f23, f1, rmm # perform operation
fadd.s f28, f23, f1, rne # perform operation
fadd.s f28, f23, f1, rtz # perform operation
fadd.s f28, f23, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f23, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f23, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f23, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f23, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f23, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xbfc00000)
li x6, 0x714210b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f1, 0(x2) # load 0xbfc00000 from memory into f1
fadd.s f6, f23, f1, dyn # perform operation
fadd.s f6, f23, f1, rdn # perform operation
fadd.s f6, f23, f1, rmm # perform operation
fadd.s f6, f23, f1, rne # perform operation
fadd.s f6, f23, f1, rtz # perform operation
fadd.s f6, f23, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f23, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f23, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f23, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f23, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f23, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x40000000)
li x1, 0xc8f35f20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f15, 0(x2) # load 0x80800000 from memory into f15
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f4, 0(x2) # load 0x40000000 from memory into f4
fadd.s f1, f15, f4, dyn # perform operation
fadd.s f1, f15, f4, rdn # perform operation
fadd.s f1, f15, f4, rmm # perform operation
fadd.s f1, f15, f4, rne # perform operation
fadd.s f1, f15, f4, rtz # perform operation
fadd.s f1, f15, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f15, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f15, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f15, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f15, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f15, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xc0000000)
li x29, 0x8fd34652 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f7, 0(x2) # load 0x80800000 from memory into f7
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f15, 0(x2) # load 0xc0000000 from memory into f15
fadd.s f29, f7, f15, dyn # perform operation
fadd.s f29, f7, f15, rdn # perform operation
fadd.s f29, f7, f15, rmm # perform operation
fadd.s f29, f7, f15, rne # perform operation
fadd.s f29, f7, f15, rtz # perform operation
fadd.s f29, f7, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f7, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f7, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f7, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f7, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f7, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x800000)
li x29, 0xb0d6f89d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f31, 0(x2) # load 0x80800000 from memory into f31
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
fadd.s f29, f31, f11, dyn # perform operation
fadd.s f29, f31, f11, rdn # perform operation
fadd.s f29, f31, f11, rmm # perform operation
fadd.s f29, f31, f11, rne # perform operation
fadd.s f29, f31, f11, rtz # perform operation
fadd.s f29, f31, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f31, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f31, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f31, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f31, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f31, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80800000)
li x30, 0x3f23e7c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f8, 0(x2) # load 0x80800000 from memory into f8
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f16, 0(x2) # load 0x80800000 from memory into f16
fadd.s f30, f8, f16, dyn # perform operation
fadd.s f30, f8, f16, rdn # perform operation
fadd.s f30, f8, f16, rmm # perform operation
fadd.s f30, f8, f16, rne # perform operation
fadd.s f30, f8, f16, rtz # perform operation
fadd.s f30, f8, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f8, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f8, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f8, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f8, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f8, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f7fffff)
li x21, 0x4c7b1204 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f5, 0(x2) # load 0x80800000 from memory into f5
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f27, 0(x2) # load 0x7f7fffff from memory into f27
fadd.s f21, f5, f27, dyn # perform operation
fadd.s f21, f5, f27, rdn # perform operation
fadd.s f21, f5, f27, rmm # perform operation
fadd.s f21, f5, f27, rne # perform operation
fadd.s f21, f5, f27, rtz # perform operation
fadd.s f21, f5, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f5, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f5, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f5, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f5, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f5, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xff7fffff)
li x13, 0x1a29023d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f12, 0(x2) # load 0x80800000 from memory into f12
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f3, 0(x2) # load 0xff7fffff from memory into f3
fadd.s f13, f12, f3, dyn # perform operation
fadd.s f13, f12, f3, rdn # perform operation
fadd.s f13, f12, f3, rmm # perform operation
fadd.s f13, f12, f3, rne # perform operation
fadd.s f13, f12, f3, rtz # perform operation
fadd.s f13, f12, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f12, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f12, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f12, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f12, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f12, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fffff)
li x30, 0x5e9e1324 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f11, 0(x2) # load 0x80800000 from memory into f11
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f1, 0(x2) # load 0x007fffff from memory into f1
fadd.s f30, f11, f1, dyn # perform operation
fadd.s f30, f11, f1, rdn # perform operation
fadd.s f30, f11, f1, rmm # perform operation
fadd.s f30, f11, f1, rne # perform operation
fadd.s f30, f11, f1, rtz # perform operation
fadd.s f30, f11, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f11, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f11, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f11, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f11, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f11, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x807fffff)
li x16, 0xe4a3c8af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f15, 0(x2) # load 0x80800000 from memory into f15
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f4, 0(x2) # load 0x807fffff from memory into f4
fadd.s f16, f15, f4, dyn # perform operation
fadd.s f16, f15, f4, rdn # perform operation
fadd.s f16, f15, f4, rmm # perform operation
fadd.s f16, f15, f4, rne # perform operation
fadd.s f16, f15, f4, rtz # perform operation
fadd.s f16, f15, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f15, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f15, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f15, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f15, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f15, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x400000)
li x5, 0x1ae70ac9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
fadd.s f5, f20, f15, dyn # perform operation
fadd.s f5, f20, f15, rdn # perform operation
fadd.s f5, f20, f15, rmm # perform operation
fadd.s f5, f20, f15, rne # perform operation
fadd.s f5, f20, f15, rtz # perform operation
fadd.s f5, f20, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f20, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f20, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f20, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f20, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f20, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80400000)
li x19, 0x0d88907d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f4, 0(x2) # load 0x80800000 from memory into f4
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f31, 0(x2) # load 0x80400000 from memory into f31
fadd.s f19, f4, f31, dyn # perform operation
fadd.s f19, f4, f31, rdn # perform operation
fadd.s f19, f4, f31, rmm # perform operation
fadd.s f19, f4, f31, rne # perform operation
fadd.s f19, f4, f31, rtz # perform operation
fadd.s f19, f4, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f4, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f4, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f4, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f4, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f4, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x1)
li x4, 0x12c9e484 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f17, 0(x2) # load 0x80800000 from memory into f17
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f15, 0(x2) # load 0x00000001 from memory into f15
fadd.s f4, f17, f15, dyn # perform operation
fadd.s f4, f17, f15, rdn # perform operation
fadd.s f4, f17, f15, rmm # perform operation
fadd.s f4, f17, f15, rne # perform operation
fadd.s f4, f17, f15, rtz # perform operation
fadd.s f4, f17, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f17, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f17, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f17, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f17, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f17, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80000001)
li x9, 0xc684cff7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f1, 0(x2) # load 0x80800000 from memory into f1
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f28, 0(x2) # load 0x80000001 from memory into f28
fadd.s f9, f1, f28, dyn # perform operation
fadd.s f9, f1, f28, rdn # perform operation
fadd.s f9, f1, f28, rmm # perform operation
fadd.s f9, f1, f28, rne # perform operation
fadd.s f9, f1, f28, rtz # perform operation
fadd.s f9, f1, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f1, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f1, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f1, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f1, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f1, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f800000)
li x8, 0x9cf8c041 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f24, 0(x2) # load 0x80800000 from memory into f24
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f6, 0(x2) # load 0x7f800000 from memory into f6
fadd.s f8, f24, f6, dyn # perform operation
fadd.s f8, f24, f6, rdn # perform operation
fadd.s f8, f24, f6, rmm # perform operation
fadd.s f8, f24, f6, rne # perform operation
fadd.s f8, f24, f6, rtz # perform operation
fadd.s f8, f24, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f24, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f24, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f24, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f24, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f24, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xff800000)
li x24, 0x5f116cac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f21, 0(x2) # load 0x80800000 from memory into f21
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
fadd.s f24, f21, f14, dyn # perform operation
fadd.s f24, f21, f14, rdn # perform operation
fadd.s f24, f21, f14, rmm # perform operation
fadd.s f24, f21, f14, rne # perform operation
fadd.s f24, f21, f14, rtz # perform operation
fadd.s f24, f21, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f21, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f21, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f21, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f21, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f21, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fc00000)
li x18, 0x556ab744 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f5, 0(x2) # load 0x80800000 from memory into f5
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f20, 0(x2) # load 0x7fc00000 from memory into f20
fadd.s f18, f5, f20, dyn # perform operation
fadd.s f18, f5, f20, rdn # perform operation
fadd.s f18, f5, f20, rmm # perform operation
fadd.s f18, f5, f20, rne # perform operation
fadd.s f18, f5, f20, rtz # perform operation
fadd.s f18, f5, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f5, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f5, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f5, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f5, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f5, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fffffff)
li x10, 0x22e09108 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f21, 0(x2) # load 0x80800000 from memory into f21
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f1, 0(x2) # load 0x7fffffff from memory into f1
fadd.s f10, f21, f1, dyn # perform operation
fadd.s f10, f21, f1, rdn # perform operation
fadd.s f10, f21, f1, rmm # perform operation
fadd.s f10, f21, f1, rne # perform operation
fadd.s f10, f21, f1, rtz # perform operation
fadd.s f10, f21, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f21, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f21, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f21, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f21, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f21, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f800001)
li x10, 0x09572829 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f15, 0(x2) # load 0x80800000 from memory into f15
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f24, 0(x2) # load 0x7f800001 from memory into f24
fadd.s f10, f15, f24, dyn # perform operation
fadd.s f10, f15, f24, rdn # perform operation
fadd.s f10, f15, f24, rmm # perform operation
fadd.s f10, f15, f24, rne # perform operation
fadd.s f10, f15, f24, rtz # perform operation
fadd.s f10, f15, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f15, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f15, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f15, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f15, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f15, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fbfffff)
li x1, 0xa6606438 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f16, 0(x2) # load 0x80800000 from memory into f16
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f26, 0(x2) # load 0x7fbfffff from memory into f26
fadd.s f1, f16, f26, dyn # perform operation
fadd.s f1, f16, f26, rdn # perform operation
fadd.s f1, f16, f26, rmm # perform operation
fadd.s f1, f16, f26, rne # perform operation
fadd.s f1, f16, f26, rtz # perform operation
fadd.s f1, f16, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f16, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f16, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f16, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f16, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f16, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7ef8654f)
li x31, 0x83c7dada # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f16, 0(x2) # load 0x80800000 from memory into f16
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f26, 0(x2) # load 0x7ef8654f from memory into f26
fadd.s f31, f16, f26, dyn # perform operation
fadd.s f31, f16, f26, rdn # perform operation
fadd.s f31, f16, f26, rmm # perform operation
fadd.s f31, f16, f26, rne # perform operation
fadd.s f31, f16, f26, rtz # perform operation
fadd.s f31, f16, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f16, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f16, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f16, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f16, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f16, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x813d9ab0)
li x17, 0x7894a8df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f16, 0(x2) # load 0x80800000 from memory into f16
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f3, 0(x2) # load 0x813d9ab0 from memory into f3
fadd.s f17, f16, f3, dyn # perform operation
fadd.s f17, f16, f3, rdn # perform operation
fadd.s f17, f16, f3, rmm # perform operation
fadd.s f17, f16, f3, rne # perform operation
fadd.s f17, f16, f3, rtz # perform operation
fadd.s f17, f16, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f16, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f16, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f16, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f16, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f16, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x0)
li x28, 0x92a1eff6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f11, 0(x2) # load 0x00000000 from memory into f11
fadd.s f28, f6, f11, dyn # perform operation
fadd.s f28, f6, f11, rdn # perform operation
fadd.s f28, f6, f11, rmm # perform operation
fadd.s f28, f6, f11, rne # perform operation
fadd.s f28, f6, f11, rtz # perform operation
fadd.s f28, f6, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f6, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f6, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f6, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f6, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f6, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80000000)
li x23, 0x5ebfce2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f18, 0(x2) # load 0x7f7fffff from memory into f18
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f16, 0(x2) # load 0x80000000 from memory into f16
fadd.s f23, f18, f16, dyn # perform operation
fadd.s f23, f18, f16, rdn # perform operation
fadd.s f23, f18, f16, rmm # perform operation
fadd.s f23, f18, f16, rne # perform operation
fadd.s f23, f18, f16, rtz # perform operation
fadd.s f23, f18, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f18, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f18, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f18, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f18, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f18, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x3f800000)
li x10, 0x64afafb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f13, 0(x2) # load 0x7f7fffff from memory into f13
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f4, 0(x2) # load 0x3f800000 from memory into f4
fadd.s f10, f13, f4, dyn # perform operation
fadd.s f10, f13, f4, rdn # perform operation
fadd.s f10, f13, f4, rmm # perform operation
fadd.s f10, f13, f4, rne # perform operation
fadd.s f10, f13, f4, rtz # perform operation
fadd.s f10, f13, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f13, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f13, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f13, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f13, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f13, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xbf800000)
li x10, 0xd0d15839 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f18, 0(x2) # load 0x7f7fffff from memory into f18
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f7, 0(x2) # load 0xbf800000 from memory into f7
fadd.s f10, f18, f7, dyn # perform operation
fadd.s f10, f18, f7, rdn # perform operation
fadd.s f10, f18, f7, rmm # perform operation
fadd.s f10, f18, f7, rne # perform operation
fadd.s f10, f18, f7, rtz # perform operation
fadd.s f10, f18, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f18, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f18, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f18, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f18, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f18, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x3fc00000)
li x17, 0x7f9bab2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f27, 0(x2) # load 0x7f7fffff from memory into f27
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f24, 0(x2) # load 0x3fc00000 from memory into f24
fadd.s f17, f27, f24, dyn # perform operation
fadd.s f17, f27, f24, rdn # perform operation
fadd.s f17, f27, f24, rmm # perform operation
fadd.s f17, f27, f24, rne # perform operation
fadd.s f17, f27, f24, rtz # perform operation
fadd.s f17, f27, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f27, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f27, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f27, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f27, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f27, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xbfc00000)
li x21, 0x1446f237 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f30, 0(x2) # load 0x7f7fffff from memory into f30
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f3, 0(x2) # load 0xbfc00000 from memory into f3
fadd.s f21, f30, f3, dyn # perform operation
fadd.s f21, f30, f3, rdn # perform operation
fadd.s f21, f30, f3, rmm # perform operation
fadd.s f21, f30, f3, rne # perform operation
fadd.s f21, f30, f3, rtz # perform operation
fadd.s f21, f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f30, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x40000000)
li x6, 0x3a2f1c32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f28, 0(x2) # load 0x40000000 from memory into f28
fadd.s f6, f16, f28, dyn # perform operation
fadd.s f6, f16, f28, rdn # perform operation
fadd.s f6, f16, f28, rmm # perform operation
fadd.s f6, f16, f28, rne # perform operation
fadd.s f6, f16, f28, rtz # perform operation
fadd.s f6, f16, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f16, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f16, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f16, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f16, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f16, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xc0000000)
li x23, 0x0a36a54d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f24, 0(x2) # load 0x7f7fffff from memory into f24
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f18, 0(x2) # load 0xc0000000 from memory into f18
fadd.s f23, f24, f18, dyn # perform operation
fadd.s f23, f24, f18, rdn # perform operation
fadd.s f23, f24, f18, rmm # perform operation
fadd.s f23, f24, f18, rne # perform operation
fadd.s f23, f24, f18, rtz # perform operation
fadd.s f23, f24, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f24, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f24, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f24, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f24, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f24, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x800000)
li x11, 0x3c41a5b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f21, 0(x2) # load 0x00800000 from memory into f21
fadd.s f11, f3, f21, dyn # perform operation
fadd.s f11, f3, f21, rdn # perform operation
fadd.s f11, f3, f21, rmm # perform operation
fadd.s f11, f3, f21, rne # perform operation
fadd.s f11, f3, f21, rtz # perform operation
fadd.s f11, f3, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f3, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f3, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f3, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f3, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f3, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80800000)
li x9, 0x5fbf402f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f8, 0(x2) # load 0x7f7fffff from memory into f8
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f21, 0(x2) # load 0x80800000 from memory into f21
fadd.s f9, f8, f21, dyn # perform operation
fadd.s f9, f8, f21, rdn # perform operation
fadd.s f9, f8, f21, rmm # perform operation
fadd.s f9, f8, f21, rne # perform operation
fadd.s f9, f8, f21, rtz # perform operation
fadd.s f9, f8, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f8, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f8, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f8, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f8, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f8, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f7fffff)
li x29, 0xc83367c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f5, 0(x2) # load 0x7f7fffff from memory into f5
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f22, 0(x2) # load 0x7f7fffff from memory into f22
fadd.s f29, f5, f22, dyn # perform operation
fadd.s f29, f5, f22, rdn # perform operation
fadd.s f29, f5, f22, rmm # perform operation
fadd.s f29, f5, f22, rne # perform operation
fadd.s f29, f5, f22, rtz # perform operation
fadd.s f29, f5, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f5, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f5, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f5, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f5, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f5, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xff7fffff)
li x11, 0x23bbdb62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f27, 0(x2) # load 0xff7fffff from memory into f27
fadd.s f11, f16, f27, dyn # perform operation
fadd.s f11, f16, f27, rdn # perform operation
fadd.s f11, f16, f27, rmm # perform operation
fadd.s f11, f16, f27, rne # perform operation
fadd.s f11, f16, f27, rtz # perform operation
fadd.s f11, f16, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f16, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f16, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f16, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f16, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f16, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fffff)
li x13, 0x09117a07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f29, 0(x2) # load 0x007fffff from memory into f29
fadd.s f13, f15, f29, dyn # perform operation
fadd.s f13, f15, f29, rdn # perform operation
fadd.s f13, f15, f29, rmm # perform operation
fadd.s f13, f15, f29, rne # perform operation
fadd.s f13, f15, f29, rtz # perform operation
fadd.s f13, f15, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f15, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f15, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f15, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f15, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f15, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x807fffff)
li x6, 0xc24a8a6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f30, 0(x2) # load 0x7f7fffff from memory into f30
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f13, 0(x2) # load 0x807fffff from memory into f13
fadd.s f6, f30, f13, dyn # perform operation
fadd.s f6, f30, f13, rdn # perform operation
fadd.s f6, f30, f13, rmm # perform operation
fadd.s f6, f30, f13, rne # perform operation
fadd.s f6, f30, f13, rtz # perform operation
fadd.s f6, f30, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f30, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f30, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f30, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f30, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f30, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x400000)
li x25, 0xba51635d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f10, 0(x2) # load 0x7f7fffff from memory into f10
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f27, 0(x2) # load 0x00400000 from memory into f27
fadd.s f25, f10, f27, dyn # perform operation
fadd.s f25, f10, f27, rdn # perform operation
fadd.s f25, f10, f27, rmm # perform operation
fadd.s f25, f10, f27, rne # perform operation
fadd.s f25, f10, f27, rtz # perform operation
fadd.s f25, f10, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f10, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f10, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f10, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f10, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f10, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80400000)
li x6, 0xf895f882 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f20, 0(x2) # load 0x7f7fffff from memory into f20
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f16, 0(x2) # load 0x80400000 from memory into f16
fadd.s f6, f20, f16, dyn # perform operation
fadd.s f6, f20, f16, rdn # perform operation
fadd.s f6, f20, f16, rmm # perform operation
fadd.s f6, f20, f16, rne # perform operation
fadd.s f6, f20, f16, rtz # perform operation
fadd.s f6, f20, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f20, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f20, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f20, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f20, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f20, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x1)
li x23, 0x90c26101 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f14, 0(x2) # load 0x7f7fffff from memory into f14
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f17, 0(x2) # load 0x00000001 from memory into f17
fadd.s f23, f14, f17, dyn # perform operation
fadd.s f23, f14, f17, rdn # perform operation
fadd.s f23, f14, f17, rmm # perform operation
fadd.s f23, f14, f17, rne # perform operation
fadd.s f23, f14, f17, rtz # perform operation
fadd.s f23, f14, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f14, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f14, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f14, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f14, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f14, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80000001)
li x28, 0x630cb9e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f17, 0(x2) # load 0x80000001 from memory into f17
fadd.s f28, f16, f17, dyn # perform operation
fadd.s f28, f16, f17, rdn # perform operation
fadd.s f28, f16, f17, rmm # perform operation
fadd.s f28, f16, f17, rne # perform operation
fadd.s f28, f16, f17, rtz # perform operation
fadd.s f28, f16, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f16, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f16, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f16, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f16, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f16, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f800000)
li x7, 0x7d9d1921 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f21, 0(x2) # load 0x7f7fffff from memory into f21
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f3, 0(x2) # load 0x7f800000 from memory into f3
fadd.s f7, f21, f3, dyn # perform operation
fadd.s f7, f21, f3, rdn # perform operation
fadd.s f7, f21, f3, rmm # perform operation
fadd.s f7, f21, f3, rne # perform operation
fadd.s f7, f21, f3, rtz # perform operation
fadd.s f7, f21, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f21, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f21, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f21, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f21, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f21, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xff800000)
li x16, 0xc68cd6a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f21, 0(x2) # load 0x7f7fffff from memory into f21
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f15, 0(x2) # load 0xff800000 from memory into f15
fadd.s f16, f21, f15, dyn # perform operation
fadd.s f16, f21, f15, rdn # perform operation
fadd.s f16, f21, f15, rmm # perform operation
fadd.s f16, f21, f15, rne # perform operation
fadd.s f16, f21, f15, rtz # perform operation
fadd.s f16, f21, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f21, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f21, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f21, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f21, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f21, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fc00000)
li x15, 0xf14bc4e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f26, 0(x2) # load 0x7fc00000 from memory into f26
fadd.s f15, f29, f26, dyn # perform operation
fadd.s f15, f29, f26, rdn # perform operation
fadd.s f15, f29, f26, rmm # perform operation
fadd.s f15, f29, f26, rne # perform operation
fadd.s f15, f29, f26, rtz # perform operation
fadd.s f15, f29, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f29, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f29, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f29, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f29, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f29, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fffffff)
li x5, 0xb5465c5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f20, 0(x2) # load 0x7f7fffff from memory into f20
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
fadd.s f5, f20, f19, dyn # perform operation
fadd.s f5, f20, f19, rdn # perform operation
fadd.s f5, f20, f19, rmm # perform operation
fadd.s f5, f20, f19, rne # perform operation
fadd.s f5, f20, f19, rtz # perform operation
fadd.s f5, f20, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f20, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f20, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f20, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f20, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f20, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f800001)
li x21, 0x0e935851 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
fadd.s f21, f16, f27, dyn # perform operation
fadd.s f21, f16, f27, rdn # perform operation
fadd.s f21, f16, f27, rmm # perform operation
fadd.s f21, f16, f27, rne # perform operation
fadd.s f21, f16, f27, rtz # perform operation
fadd.s f21, f16, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f16, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f16, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f16, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f16, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f16, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fbfffff)
li x16, 0x24fccac6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f5, 0(x2) # load 0x7f7fffff from memory into f5
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f6, 0(x2) # load 0x7fbfffff from memory into f6
fadd.s f16, f5, f6, dyn # perform operation
fadd.s f16, f5, f6, rdn # perform operation
fadd.s f16, f5, f6, rmm # perform operation
fadd.s f16, f5, f6, rne # perform operation
fadd.s f16, f5, f6, rtz # perform operation
fadd.s f16, f5, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f5, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f5, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f5, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f5, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f5, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7ef8654f)
li x22, 0xf3594dea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f26, 0(x2) # load 0x7f7fffff from memory into f26
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f10, 0(x2) # load 0x7ef8654f from memory into f10
fadd.s f22, f26, f10, dyn # perform operation
fadd.s f22, f26, f10, rdn # perform operation
fadd.s f22, f26, f10, rmm # perform operation
fadd.s f22, f26, f10, rne # perform operation
fadd.s f22, f26, f10, rtz # perform operation
fadd.s f22, f26, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f26, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f26, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f26, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f26, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f26, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x813d9ab0)
li x9, 0x7430943d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f28, 0(x2) # load 0x7f7fffff from memory into f28
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f4, 0(x2) # load 0x813d9ab0 from memory into f4
fadd.s f9, f28, f4, dyn # perform operation
fadd.s f9, f28, f4, rdn # perform operation
fadd.s f9, f28, f4, rmm # perform operation
fadd.s f9, f28, f4, rne # perform operation
fadd.s f9, f28, f4, rtz # perform operation
fadd.s f9, f28, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f28, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f28, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f28, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f28, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f28, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x0)
li x17, 0xb46a7724 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f9, 0(x2) # load 0xff7fffff from memory into f9
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f5, 0(x2) # load 0x00000000 from memory into f5
fadd.s f17, f9, f5, dyn # perform operation
fadd.s f17, f9, f5, rdn # perform operation
fadd.s f17, f9, f5, rmm # perform operation
fadd.s f17, f9, f5, rne # perform operation
fadd.s f17, f9, f5, rtz # perform operation
fadd.s f17, f9, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f9, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f9, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f9, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f9, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f9, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80000000)
li x30, 0xc4a7370c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f23, 0(x2) # load 0xff7fffff from memory into f23
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f15, 0(x2) # load 0x80000000 from memory into f15
fadd.s f30, f23, f15, dyn # perform operation
fadd.s f30, f23, f15, rdn # perform operation
fadd.s f30, f23, f15, rmm # perform operation
fadd.s f30, f23, f15, rne # perform operation
fadd.s f30, f23, f15, rtz # perform operation
fadd.s f30, f23, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f23, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f23, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f23, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f23, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f23, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x3f800000)
li x6, 0x2967085c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f3, 0(x2) # load 0xff7fffff from memory into f3
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f14, 0(x2) # load 0x3f800000 from memory into f14
fadd.s f6, f3, f14, dyn # perform operation
fadd.s f6, f3, f14, rdn # perform operation
fadd.s f6, f3, f14, rmm # perform operation
fadd.s f6, f3, f14, rne # perform operation
fadd.s f6, f3, f14, rtz # perform operation
fadd.s f6, f3, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f3, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f3, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f3, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f3, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f3, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xbf800000)
li x25, 0x401cc972 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f19, 0(x2) # load 0xff7fffff from memory into f19
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f14, 0(x2) # load 0xbf800000 from memory into f14
fadd.s f25, f19, f14, dyn # perform operation
fadd.s f25, f19, f14, rdn # perform operation
fadd.s f25, f19, f14, rmm # perform operation
fadd.s f25, f19, f14, rne # perform operation
fadd.s f25, f19, f14, rtz # perform operation
fadd.s f25, f19, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f19, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f19, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f19, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f19, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f19, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x3fc00000)
li x28, 0x83870739 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f13, 0(x2) # load 0xff7fffff from memory into f13
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f20, 0(x2) # load 0x3fc00000 from memory into f20
fadd.s f28, f13, f20, dyn # perform operation
fadd.s f28, f13, f20, rdn # perform operation
fadd.s f28, f13, f20, rmm # perform operation
fadd.s f28, f13, f20, rne # perform operation
fadd.s f28, f13, f20, rtz # perform operation
fadd.s f28, f13, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f13, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f13, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f13, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f13, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f13, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xbfc00000)
li x8, 0xc958cb66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f23, 0(x2) # load 0xff7fffff from memory into f23
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f14, 0(x2) # load 0xbfc00000 from memory into f14
fadd.s f8, f23, f14, dyn # perform operation
fadd.s f8, f23, f14, rdn # perform operation
fadd.s f8, f23, f14, rmm # perform operation
fadd.s f8, f23, f14, rne # perform operation
fadd.s f8, f23, f14, rtz # perform operation
fadd.s f8, f23, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f23, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f23, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f23, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f23, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f23, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x40000000)
li x27, 0x73598d0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f1, 0(x2) # load 0xff7fffff from memory into f1
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f20, 0(x2) # load 0x40000000 from memory into f20
fadd.s f27, f1, f20, dyn # perform operation
fadd.s f27, f1, f20, rdn # perform operation
fadd.s f27, f1, f20, rmm # perform operation
fadd.s f27, f1, f20, rne # perform operation
fadd.s f27, f1, f20, rtz # perform operation
fadd.s f27, f1, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f1, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f1, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f1, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f1, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f1, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xc0000000)
li x14, 0x0aa2a1db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f6, 0(x2) # load 0xff7fffff from memory into f6
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f28, 0(x2) # load 0xc0000000 from memory into f28
fadd.s f14, f6, f28, dyn # perform operation
fadd.s f14, f6, f28, rdn # perform operation
fadd.s f14, f6, f28, rmm # perform operation
fadd.s f14, f6, f28, rne # perform operation
fadd.s f14, f6, f28, rtz # perform operation
fadd.s f14, f6, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f6, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f6, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f6, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f6, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f6, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x800000)
li x15, 0xb367af1d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f27, 0(x2) # load 0xff7fffff from memory into f27
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
fadd.s f15, f27, f23, dyn # perform operation
fadd.s f15, f27, f23, rdn # perform operation
fadd.s f15, f27, f23, rmm # perform operation
fadd.s f15, f27, f23, rne # perform operation
fadd.s f15, f27, f23, rtz # perform operation
fadd.s f15, f27, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f27, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f27, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f27, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f27, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f27, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80800000)
li x16, 0x7c4edb61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f6, 0(x2) # load 0xff7fffff from memory into f6
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f11, 0(x2) # load 0x80800000 from memory into f11
fadd.s f16, f6, f11, dyn # perform operation
fadd.s f16, f6, f11, rdn # perform operation
fadd.s f16, f6, f11, rmm # perform operation
fadd.s f16, f6, f11, rne # perform operation
fadd.s f16, f6, f11, rtz # perform operation
fadd.s f16, f6, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f6, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f6, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f6, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f6, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f6, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f7fffff)
li x10, 0x3ec51e59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f26, 0(x2) # load 0xff7fffff from memory into f26
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
fadd.s f10, f26, f6, dyn # perform operation
fadd.s f10, f26, f6, rdn # perform operation
fadd.s f10, f26, f6, rmm # perform operation
fadd.s f10, f26, f6, rne # perform operation
fadd.s f10, f26, f6, rtz # perform operation
fadd.s f10, f26, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f26, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f26, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f26, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f26, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f26, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xff7fffff)
li x4, 0x36ba33e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f13, 0(x2) # load 0xff7fffff from memory into f13
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
fadd.s f4, f13, f31, dyn # perform operation
fadd.s f4, f13, f31, rdn # perform operation
fadd.s f4, f13, f31, rmm # perform operation
fadd.s f4, f13, f31, rne # perform operation
fadd.s f4, f13, f31, rtz # perform operation
fadd.s f4, f13, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f13, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f13, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f13, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f13, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f13, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fffff)
li x21, 0x84da0fd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f14, 0(x2) # load 0x007fffff from memory into f14
fadd.s f21, f12, f14, dyn # perform operation
fadd.s f21, f12, f14, rdn # perform operation
fadd.s f21, f12, f14, rmm # perform operation
fadd.s f21, f12, f14, rne # perform operation
fadd.s f21, f12, f14, rtz # perform operation
fadd.s f21, f12, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f12, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f12, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f12, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f12, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f12, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x807fffff)
li x30, 0x840b433f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f22, 0(x2) # load 0xff7fffff from memory into f22
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f9, 0(x2) # load 0x807fffff from memory into f9
fadd.s f30, f22, f9, dyn # perform operation
fadd.s f30, f22, f9, rdn # perform operation
fadd.s f30, f22, f9, rmm # perform operation
fadd.s f30, f22, f9, rne # perform operation
fadd.s f30, f22, f9, rtz # perform operation
fadd.s f30, f22, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f22, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f22, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f22, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f22, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f22, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x400000)
li x12, 0x6ed97485 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f14, 0(x2) # load 0xff7fffff from memory into f14
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f20, 0(x2) # load 0x00400000 from memory into f20
fadd.s f12, f14, f20, dyn # perform operation
fadd.s f12, f14, f20, rdn # perform operation
fadd.s f12, f14, f20, rmm # perform operation
fadd.s f12, f14, f20, rne # perform operation
fadd.s f12, f14, f20, rtz # perform operation
fadd.s f12, f14, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f14, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f14, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f14, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f14, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f14, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80400000)
li x13, 0x0c01ac92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f21, 0(x2) # load 0xff7fffff from memory into f21
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f2, 0(x2) # load 0x80400000 from memory into f2
fadd.s f13, f21, f2, dyn # perform operation
fadd.s f13, f21, f2, rdn # perform operation
fadd.s f13, f21, f2, rmm # perform operation
fadd.s f13, f21, f2, rne # perform operation
fadd.s f13, f21, f2, rtz # perform operation
fadd.s f13, f21, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f21, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f21, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f21, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f21, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f21, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x1)
li x27, 0xc38a79d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f9, 0(x2) # load 0xff7fffff from memory into f9
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f29, 0(x2) # load 0x00000001 from memory into f29
fadd.s f27, f9, f29, dyn # perform operation
fadd.s f27, f9, f29, rdn # perform operation
fadd.s f27, f9, f29, rmm # perform operation
fadd.s f27, f9, f29, rne # perform operation
fadd.s f27, f9, f29, rtz # perform operation
fadd.s f27, f9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f9, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f9, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f9, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f9, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f9, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80000001)
li x3, 0x2e22fcdc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f19, 0(x2) # load 0xff7fffff from memory into f19
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
fadd.s f3, f19, f7, dyn # perform operation
fadd.s f3, f19, f7, rdn # perform operation
fadd.s f3, f19, f7, rmm # perform operation
fadd.s f3, f19, f7, rne # perform operation
fadd.s f3, f19, f7, rtz # perform operation
fadd.s f3, f19, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f19, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f19, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f19, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f19, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f19, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f800000)
li x3, 0x5074c717 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f14, 0(x2) # load 0xff7fffff from memory into f14
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f22, 0(x2) # load 0x7f800000 from memory into f22
fadd.s f3, f14, f22, dyn # perform operation
fadd.s f3, f14, f22, rdn # perform operation
fadd.s f3, f14, f22, rmm # perform operation
fadd.s f3, f14, f22, rne # perform operation
fadd.s f3, f14, f22, rtz # perform operation
fadd.s f3, f14, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f14, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f14, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f14, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f14, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f14, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xff800000)
li x7, 0xcc9e6a5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
fadd.s f7, f12, f1, dyn # perform operation
fadd.s f7, f12, f1, rdn # perform operation
fadd.s f7, f12, f1, rmm # perform operation
fadd.s f7, f12, f1, rne # perform operation
fadd.s f7, f12, f1, rtz # perform operation
fadd.s f7, f12, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f12, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f12, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f12, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f12, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f12, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fc00000)
li x20, 0x6e81fcbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f23, 0(x2) # load 0xff7fffff from memory into f23
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f28, 0(x2) # load 0x7fc00000 from memory into f28
fadd.s f20, f23, f28, dyn # perform operation
fadd.s f20, f23, f28, rdn # perform operation
fadd.s f20, f23, f28, rmm # perform operation
fadd.s f20, f23, f28, rne # perform operation
fadd.s f20, f23, f28, rtz # perform operation
fadd.s f20, f23, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f23, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f23, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f23, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f23, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f23, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fffffff)
li x16, 0xbb2f3cb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f15, 0(x2) # load 0xff7fffff from memory into f15
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f7, 0(x2) # load 0x7fffffff from memory into f7
fadd.s f16, f15, f7, dyn # perform operation
fadd.s f16, f15, f7, rdn # perform operation
fadd.s f16, f15, f7, rmm # perform operation
fadd.s f16, f15, f7, rne # perform operation
fadd.s f16, f15, f7, rtz # perform operation
fadd.s f16, f15, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f15, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f15, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f15, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f15, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f15, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f800001)
li x10, 0x513bdfbb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f19, 0(x2) # load 0xff7fffff from memory into f19
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f1, 0(x2) # load 0x7f800001 from memory into f1
fadd.s f10, f19, f1, dyn # perform operation
fadd.s f10, f19, f1, rdn # perform operation
fadd.s f10, f19, f1, rmm # perform operation
fadd.s f10, f19, f1, rne # perform operation
fadd.s f10, f19, f1, rtz # perform operation
fadd.s f10, f19, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f19, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f19, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f19, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f19, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f19, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fbfffff)
li x1, 0xdb002d4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f14, 0(x2) # load 0x7fbfffff from memory into f14
fadd.s f1, f31, f14, dyn # perform operation
fadd.s f1, f31, f14, rdn # perform operation
fadd.s f1, f31, f14, rmm # perform operation
fadd.s f1, f31, f14, rne # perform operation
fadd.s f1, f31, f14, rtz # perform operation
fadd.s f1, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f31, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7ef8654f)
li x11, 0xbadacb0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f7, 0(x2) # load 0xff7fffff from memory into f7
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f4, 0(x2) # load 0x7ef8654f from memory into f4
fadd.s f11, f7, f4, dyn # perform operation
fadd.s f11, f7, f4, rdn # perform operation
fadd.s f11, f7, f4, rmm # perform operation
fadd.s f11, f7, f4, rne # perform operation
fadd.s f11, f7, f4, rtz # perform operation
fadd.s f11, f7, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f7, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f7, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f7, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f7, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f7, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x813d9ab0)
li x28, 0xb949503f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f21, 0(x2) # load 0xff7fffff from memory into f21
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f11, 0(x2) # load 0x813d9ab0 from memory into f11
fadd.s f28, f21, f11, dyn # perform operation
fadd.s f28, f21, f11, rdn # perform operation
fadd.s f28, f21, f11, rmm # perform operation
fadd.s f28, f21, f11, rne # perform operation
fadd.s f28, f21, f11, rtz # perform operation
fadd.s f28, f21, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f21, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f21, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f21, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f21, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f21, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x0)
li x7, 0x48a82fa6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f31, 0(x2) # load 0x007fffff from memory into f31
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f30, 0(x2) # load 0x00000000 from memory into f30
fadd.s f7, f31, f30, dyn # perform operation
fadd.s f7, f31, f30, rdn # perform operation
fadd.s f7, f31, f30, rmm # perform operation
fadd.s f7, f31, f30, rne # perform operation
fadd.s f7, f31, f30, rtz # perform operation
fadd.s f7, f31, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f31, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f31, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f31, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f31, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f31, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80000000)
li x29, 0x43f95b23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f15, 0(x2) # load 0x007fffff from memory into f15
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f6, 0(x2) # load 0x80000000 from memory into f6
fadd.s f29, f15, f6, dyn # perform operation
fadd.s f29, f15, f6, rdn # perform operation
fadd.s f29, f15, f6, rmm # perform operation
fadd.s f29, f15, f6, rne # perform operation
fadd.s f29, f15, f6, rtz # perform operation
fadd.s f29, f15, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f15, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f15, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f15, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f15, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f15, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x3f800000)
li x5, 0x3c754b04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f7, 0(x2) # load 0x007fffff from memory into f7
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f3, 0(x2) # load 0x3f800000 from memory into f3
fadd.s f5, f7, f3, dyn # perform operation
fadd.s f5, f7, f3, rdn # perform operation
fadd.s f5, f7, f3, rmm # perform operation
fadd.s f5, f7, f3, rne # perform operation
fadd.s f5, f7, f3, rtz # perform operation
fadd.s f5, f7, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f7, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f7, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f7, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f7, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f7, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xbf800000)
li x11, 0x82c808b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f30, 0(x2) # load 0x007fffff from memory into f30
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
fadd.s f11, f30, f27, dyn # perform operation
fadd.s f11, f30, f27, rdn # perform operation
fadd.s f11, f30, f27, rmm # perform operation
fadd.s f11, f30, f27, rne # perform operation
fadd.s f11, f30, f27, rtz # perform operation
fadd.s f11, f30, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f30, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f30, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f30, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f30, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f30, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x3fc00000)
li x26, 0xc8b255f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f4, 0(x2) # load 0x007fffff from memory into f4
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f2, 0(x2) # load 0x3fc00000 from memory into f2
fadd.s f26, f4, f2, dyn # perform operation
fadd.s f26, f4, f2, rdn # perform operation
fadd.s f26, f4, f2, rmm # perform operation
fadd.s f26, f4, f2, rne # perform operation
fadd.s f26, f4, f2, rtz # perform operation
fadd.s f26, f4, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f4, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f4, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f4, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f4, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f4, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xbfc00000)
li x3, 0xb236d9d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f29, 0(x2) # load 0x007fffff from memory into f29
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f12, 0(x2) # load 0xbfc00000 from memory into f12
fadd.s f3, f29, f12, dyn # perform operation
fadd.s f3, f29, f12, rdn # perform operation
fadd.s f3, f29, f12, rmm # perform operation
fadd.s f3, f29, f12, rne # perform operation
fadd.s f3, f29, f12, rtz # perform operation
fadd.s f3, f29, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f29, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f29, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f29, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f29, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f29, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x40000000)
li x21, 0x765d7edd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f22, 0(x2) # load 0x007fffff from memory into f22
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f9, 0(x2) # load 0x40000000 from memory into f9
fadd.s f21, f22, f9, dyn # perform operation
fadd.s f21, f22, f9, rdn # perform operation
fadd.s f21, f22, f9, rmm # perform operation
fadd.s f21, f22, f9, rne # perform operation
fadd.s f21, f22, f9, rtz # perform operation
fadd.s f21, f22, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f22, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f22, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f22, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f22, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f22, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xc0000000)
li x15, 0x0558ac58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f2, 0(x2) # load 0x007fffff from memory into f2
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f4, 0(x2) # load 0xc0000000 from memory into f4
fadd.s f15, f2, f4, dyn # perform operation
fadd.s f15, f2, f4, rdn # perform operation
fadd.s f15, f2, f4, rmm # perform operation
fadd.s f15, f2, f4, rne # perform operation
fadd.s f15, f2, f4, rtz # perform operation
fadd.s f15, f2, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f2, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f2, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f2, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f2, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f2, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x800000)
li x25, 0x64d513b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f4, 0(x2) # load 0x007fffff from memory into f4
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f16, 0(x2) # load 0x00800000 from memory into f16
fadd.s f25, f4, f16, dyn # perform operation
fadd.s f25, f4, f16, rdn # perform operation
fadd.s f25, f4, f16, rmm # perform operation
fadd.s f25, f4, f16, rne # perform operation
fadd.s f25, f4, f16, rtz # perform operation
fadd.s f25, f4, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f4, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f4, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f4, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f4, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f4, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80800000)
li x10, 0xadb47892 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f3, 0(x2) # load 0x007fffff from memory into f3
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f4, 0(x2) # load 0x80800000 from memory into f4
fadd.s f10, f3, f4, dyn # perform operation
fadd.s f10, f3, f4, rdn # perform operation
fadd.s f10, f3, f4, rmm # perform operation
fadd.s f10, f3, f4, rne # perform operation
fadd.s f10, f3, f4, rtz # perform operation
fadd.s f10, f3, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f3, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f3, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f3, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f3, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f3, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f7fffff)
li x3, 0xd9cf6db4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f18, 0(x2) # load 0x007fffff from memory into f18
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
fadd.s f3, f18, f29, dyn # perform operation
fadd.s f3, f18, f29, rdn # perform operation
fadd.s f3, f18, f29, rmm # perform operation
fadd.s f3, f18, f29, rne # perform operation
fadd.s f3, f18, f29, rtz # perform operation
fadd.s f3, f18, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f18, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f18, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f18, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f18, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f18, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xff7fffff)
li x13, 0xcf987d50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f30, 0(x2) # load 0x007fffff from memory into f30
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f2, 0(x2) # load 0xff7fffff from memory into f2
fadd.s f13, f30, f2, dyn # perform operation
fadd.s f13, f30, f2, rdn # perform operation
fadd.s f13, f30, f2, rmm # perform operation
fadd.s f13, f30, f2, rne # perform operation
fadd.s f13, f30, f2, rtz # perform operation
fadd.s f13, f30, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f30, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f30, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f30, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f30, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f30, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fffff)
li x31, 0x731afda3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f26, 0(x2) # load 0x007fffff from memory into f26
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f4, 0(x2) # load 0x007fffff from memory into f4
fadd.s f31, f26, f4, dyn # perform operation
fadd.s f31, f26, f4, rdn # perform operation
fadd.s f31, f26, f4, rmm # perform operation
fadd.s f31, f26, f4, rne # perform operation
fadd.s f31, f26, f4, rtz # perform operation
fadd.s f31, f26, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f26, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f26, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f26, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f26, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f26, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x807fffff)
li x23, 0x33e576f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f3, 0(x2) # load 0x007fffff from memory into f3
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f12, 0(x2) # load 0x807fffff from memory into f12
fadd.s f23, f3, f12, dyn # perform operation
fadd.s f23, f3, f12, rdn # perform operation
fadd.s f23, f3, f12, rmm # perform operation
fadd.s f23, f3, f12, rne # perform operation
fadd.s f23, f3, f12, rtz # perform operation
fadd.s f23, f3, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f3, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f3, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f3, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f3, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f3, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x400000)
li x7, 0x4739949b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f1, 0(x2) # load 0x007fffff from memory into f1
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f2, 0(x2) # load 0x00400000 from memory into f2
fadd.s f7, f1, f2, dyn # perform operation
fadd.s f7, f1, f2, rdn # perform operation
fadd.s f7, f1, f2, rmm # perform operation
fadd.s f7, f1, f2, rne # perform operation
fadd.s f7, f1, f2, rtz # perform operation
fadd.s f7, f1, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f1, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f1, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f1, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f1, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f1, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80400000)
li x20, 0x2c5ef7ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f3, 0(x2) # load 0x007fffff from memory into f3
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f17, 0(x2) # load 0x80400000 from memory into f17
fadd.s f20, f3, f17, dyn # perform operation
fadd.s f20, f3, f17, rdn # perform operation
fadd.s f20, f3, f17, rmm # perform operation
fadd.s f20, f3, f17, rne # perform operation
fadd.s f20, f3, f17, rtz # perform operation
fadd.s f20, f3, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f3, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f3, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f3, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f3, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f3, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x1)
li x29, 0xa874d903 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f19, 0(x2) # load 0x007fffff from memory into f19
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f20, 0(x2) # load 0x00000001 from memory into f20
fadd.s f29, f19, f20, dyn # perform operation
fadd.s f29, f19, f20, rdn # perform operation
fadd.s f29, f19, f20, rmm # perform operation
fadd.s f29, f19, f20, rne # perform operation
fadd.s f29, f19, f20, rtz # perform operation
fadd.s f29, f19, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f19, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f19, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f19, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f19, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f19, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80000001)
li x16, 0xf8431d27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f19, 0(x2) # load 0x007fffff from memory into f19
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f23, 0(x2) # load 0x80000001 from memory into f23
fadd.s f16, f19, f23, dyn # perform operation
fadd.s f16, f19, f23, rdn # perform operation
fadd.s f16, f19, f23, rmm # perform operation
fadd.s f16, f19, f23, rne # perform operation
fadd.s f16, f19, f23, rtz # perform operation
fadd.s f16, f19, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f19, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f19, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f19, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f19, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f19, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f800000)
li x5, 0xf2675a22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f14, 0(x2) # load 0x007fffff from memory into f14
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f3, 0(x2) # load 0x7f800000 from memory into f3
fadd.s f5, f14, f3, dyn # perform operation
fadd.s f5, f14, f3, rdn # perform operation
fadd.s f5, f14, f3, rmm # perform operation
fadd.s f5, f14, f3, rne # perform operation
fadd.s f5, f14, f3, rtz # perform operation
fadd.s f5, f14, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f14, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f14, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f14, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f14, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f14, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xff800000)
li x30, 0x3505539a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f5, 0(x2) # load 0x007fffff from memory into f5
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f25, 0(x2) # load 0xff800000 from memory into f25
fadd.s f30, f5, f25, dyn # perform operation
fadd.s f30, f5, f25, rdn # perform operation
fadd.s f30, f5, f25, rmm # perform operation
fadd.s f30, f5, f25, rne # perform operation
fadd.s f30, f5, f25, rtz # perform operation
fadd.s f30, f5, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f5, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f5, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f5, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f5, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f5, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fc00000)
li x2, 0x3a1b8422 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f24, 0(x2) # load 0x007fffff from memory into f24
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f13, 0(x2) # load 0x7fc00000 from memory into f13
fadd.s f2, f24, f13, dyn # perform operation
fadd.s f2, f24, f13, rdn # perform operation
fadd.s f2, f24, f13, rmm # perform operation
fadd.s f2, f24, f13, rne # perform operation
fadd.s f2, f24, f13, rtz # perform operation
fadd.s f2, f24, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f24, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f24, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f24, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f24, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f24, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fffffff)
li x25, 0x791664e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f20, 0(x2) # load 0x007fffff from memory into f20
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f26, 0(x2) # load 0x7fffffff from memory into f26
fadd.s f25, f20, f26, dyn # perform operation
fadd.s f25, f20, f26, rdn # perform operation
fadd.s f25, f20, f26, rmm # perform operation
fadd.s f25, f20, f26, rne # perform operation
fadd.s f25, f20, f26, rtz # perform operation
fadd.s f25, f20, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f20, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f20, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f20, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f20, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f20, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f800001)
li x14, 0x39f88a08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f15, 0(x2) # load 0x7f800001 from memory into f15
fadd.s f14, f10, f15, dyn # perform operation
fadd.s f14, f10, f15, rdn # perform operation
fadd.s f14, f10, f15, rmm # perform operation
fadd.s f14, f10, f15, rne # perform operation
fadd.s f14, f10, f15, rtz # perform operation
fadd.s f14, f10, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f10, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f10, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f10, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f10, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f10, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fbfffff)
li x29, 0x2769e092 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f31, 0(x2) # load 0x007fffff from memory into f31
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f7, 0(x2) # load 0x7fbfffff from memory into f7
fadd.s f29, f31, f7, dyn # perform operation
fadd.s f29, f31, f7, rdn # perform operation
fadd.s f29, f31, f7, rmm # perform operation
fadd.s f29, f31, f7, rne # perform operation
fadd.s f29, f31, f7, rtz # perform operation
fadd.s f29, f31, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f31, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f31, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f31, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f31, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f31, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7ef8654f)
li x28, 0x0f1b88e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f15, 0(x2) # load 0x007fffff from memory into f15
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f5, 0(x2) # load 0x7ef8654f from memory into f5
fadd.s f28, f15, f5, dyn # perform operation
fadd.s f28, f15, f5, rdn # perform operation
fadd.s f28, f15, f5, rmm # perform operation
fadd.s f28, f15, f5, rne # perform operation
fadd.s f28, f15, f5, rtz # perform operation
fadd.s f28, f15, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f15, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f15, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f15, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f15, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f15, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x813d9ab0)
li x28, 0x47d2f006 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f27, 0(x2) # load 0x007fffff from memory into f27
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f16, 0(x2) # load 0x813d9ab0 from memory into f16
fadd.s f28, f27, f16, dyn # perform operation
fadd.s f28, f27, f16, rdn # perform operation
fadd.s f28, f27, f16, rmm # perform operation
fadd.s f28, f27, f16, rne # perform operation
fadd.s f28, f27, f16, rtz # perform operation
fadd.s f28, f27, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f27, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f27, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f27, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f27, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f27, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x0)
li x19, 0xc7ec344f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f25, 0(x2) # load 0x807fffff from memory into f25
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f8, 0(x2) # load 0x00000000 from memory into f8
fadd.s f19, f25, f8, dyn # perform operation
fadd.s f19, f25, f8, rdn # perform operation
fadd.s f19, f25, f8, rmm # perform operation
fadd.s f19, f25, f8, rne # perform operation
fadd.s f19, f25, f8, rtz # perform operation
fadd.s f19, f25, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f25, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f25, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f25, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f25, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f25, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80000000)
li x29, 0x5c00eba7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f14, 0(x2) # load 0x807fffff from memory into f14
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f13, 0(x2) # load 0x80000000 from memory into f13
fadd.s f29, f14, f13, dyn # perform operation
fadd.s f29, f14, f13, rdn # perform operation
fadd.s f29, f14, f13, rmm # perform operation
fadd.s f29, f14, f13, rne # perform operation
fadd.s f29, f14, f13, rtz # perform operation
fadd.s f29, f14, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f14, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f14, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f14, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f14, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f14, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x3f800000)
li x26, 0xdc20d484 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f1, 0(x2) # load 0x807fffff from memory into f1
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f23, 0(x2) # load 0x3f800000 from memory into f23
fadd.s f26, f1, f23, dyn # perform operation
fadd.s f26, f1, f23, rdn # perform operation
fadd.s f26, f1, f23, rmm # perform operation
fadd.s f26, f1, f23, rne # perform operation
fadd.s f26, f1, f23, rtz # perform operation
fadd.s f26, f1, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f1, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f1, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f1, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f1, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f1, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xbf800000)
li x3, 0xa0e0815b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f25, 0(x2) # load 0x807fffff from memory into f25
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f7, 0(x2) # load 0xbf800000 from memory into f7
fadd.s f3, f25, f7, dyn # perform operation
fadd.s f3, f25, f7, rdn # perform operation
fadd.s f3, f25, f7, rmm # perform operation
fadd.s f3, f25, f7, rne # perform operation
fadd.s f3, f25, f7, rtz # perform operation
fadd.s f3, f25, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f25, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f25, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f25, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f25, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f25, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x3fc00000)
li x6, 0x93d0df10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f19, 0(x2) # load 0x807fffff from memory into f19
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f5, 0(x2) # load 0x3fc00000 from memory into f5
fadd.s f6, f19, f5, dyn # perform operation
fadd.s f6, f19, f5, rdn # perform operation
fadd.s f6, f19, f5, rmm # perform operation
fadd.s f6, f19, f5, rne # perform operation
fadd.s f6, f19, f5, rtz # perform operation
fadd.s f6, f19, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f19, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f19, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f19, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f19, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f19, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xbfc00000)
li x31, 0x3fb74d21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f8, 0(x2) # load 0x807fffff from memory into f8
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f14, 0(x2) # load 0xbfc00000 from memory into f14
fadd.s f31, f8, f14, dyn # perform operation
fadd.s f31, f8, f14, rdn # perform operation
fadd.s f31, f8, f14, rmm # perform operation
fadd.s f31, f8, f14, rne # perform operation
fadd.s f31, f8, f14, rtz # perform operation
fadd.s f31, f8, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f8, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f8, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f8, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f8, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f8, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x40000000)
li x31, 0x923669fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f12, 0(x2) # load 0x807fffff from memory into f12
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f1, 0(x2) # load 0x40000000 from memory into f1
fadd.s f31, f12, f1, dyn # perform operation
fadd.s f31, f12, f1, rdn # perform operation
fadd.s f31, f12, f1, rmm # perform operation
fadd.s f31, f12, f1, rne # perform operation
fadd.s f31, f12, f1, rtz # perform operation
fadd.s f31, f12, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f12, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f12, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f12, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f12, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f12, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xc0000000)
li x5, 0xb8dbfd6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f10, 0(x2) # load 0x807fffff from memory into f10
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f11, 0(x2) # load 0xc0000000 from memory into f11
fadd.s f5, f10, f11, dyn # perform operation
fadd.s f5, f10, f11, rdn # perform operation
fadd.s f5, f10, f11, rmm # perform operation
fadd.s f5, f10, f11, rne # perform operation
fadd.s f5, f10, f11, rtz # perform operation
fadd.s f5, f10, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f10, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f10, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f10, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f10, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f10, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x800000)
li x16, 0x74650928 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f27, 0(x2) # load 0x807fffff from memory into f27
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f24, 0(x2) # load 0x00800000 from memory into f24
fadd.s f16, f27, f24, dyn # perform operation
fadd.s f16, f27, f24, rdn # perform operation
fadd.s f16, f27, f24, rmm # perform operation
fadd.s f16, f27, f24, rne # perform operation
fadd.s f16, f27, f24, rtz # perform operation
fadd.s f16, f27, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f27, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f27, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f27, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f27, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f27, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80800000)
li x24, 0x5e21022e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f30, 0(x2) # load 0x807fffff from memory into f30
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
fadd.s f24, f30, f20, dyn # perform operation
fadd.s f24, f30, f20, rdn # perform operation
fadd.s f24, f30, f20, rmm # perform operation
fadd.s f24, f30, f20, rne # perform operation
fadd.s f24, f30, f20, rtz # perform operation
fadd.s f24, f30, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f30, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f30, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f30, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f30, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f30, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f7fffff)
li x6, 0xb4a633ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f16, 0(x2) # load 0x807fffff from memory into f16
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f21, 0(x2) # load 0x7f7fffff from memory into f21
fadd.s f6, f16, f21, dyn # perform operation
fadd.s f6, f16, f21, rdn # perform operation
fadd.s f6, f16, f21, rmm # perform operation
fadd.s f6, f16, f21, rne # perform operation
fadd.s f6, f16, f21, rtz # perform operation
fadd.s f6, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f16, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xff7fffff)
li x22, 0xc960ee99 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f11, 0(x2) # load 0x807fffff from memory into f11
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f13, 0(x2) # load 0xff7fffff from memory into f13
fadd.s f22, f11, f13, dyn # perform operation
fadd.s f22, f11, f13, rdn # perform operation
fadd.s f22, f11, f13, rmm # perform operation
fadd.s f22, f11, f13, rne # perform operation
fadd.s f22, f11, f13, rtz # perform operation
fadd.s f22, f11, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f11, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f11, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f11, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f11, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f11, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fffff)
li x30, 0x5d473490 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f21, 0(x2) # load 0x807fffff from memory into f21
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f26, 0(x2) # load 0x007fffff from memory into f26
fadd.s f30, f21, f26, dyn # perform operation
fadd.s f30, f21, f26, rdn # perform operation
fadd.s f30, f21, f26, rmm # perform operation
fadd.s f30, f21, f26, rne # perform operation
fadd.s f30, f21, f26, rtz # perform operation
fadd.s f30, f21, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f21, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f21, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f21, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f21, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f21, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x807fffff)
li x30, 0x6d58fc52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f11, 0(x2) # load 0x807fffff from memory into f11
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f13, 0(x2) # load 0x807fffff from memory into f13
fadd.s f30, f11, f13, dyn # perform operation
fadd.s f30, f11, f13, rdn # perform operation
fadd.s f30, f11, f13, rmm # perform operation
fadd.s f30, f11, f13, rne # perform operation
fadd.s f30, f11, f13, rtz # perform operation
fadd.s f30, f11, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f11, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f11, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f11, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f11, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f11, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x400000)
li x11, 0x5ee869b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f22, 0(x2) # load 0x807fffff from memory into f22
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f31, 0(x2) # load 0x00400000 from memory into f31
fadd.s f11, f22, f31, dyn # perform operation
fadd.s f11, f22, f31, rdn # perform operation
fadd.s f11, f22, f31, rmm # perform operation
fadd.s f11, f22, f31, rne # perform operation
fadd.s f11, f22, f31, rtz # perform operation
fadd.s f11, f22, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f22, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f22, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f22, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f22, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f22, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80400000)
li x20, 0xed833ef7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f14, 0(x2) # load 0x807fffff from memory into f14
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f3, 0(x2) # load 0x80400000 from memory into f3
fadd.s f20, f14, f3, dyn # perform operation
fadd.s f20, f14, f3, rdn # perform operation
fadd.s f20, f14, f3, rmm # perform operation
fadd.s f20, f14, f3, rne # perform operation
fadd.s f20, f14, f3, rtz # perform operation
fadd.s f20, f14, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f14, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f14, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f14, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f14, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f14, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x1)
li x9, 0xf92b7eb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
fadd.s f9, f3, f5, dyn # perform operation
fadd.s f9, f3, f5, rdn # perform operation
fadd.s f9, f3, f5, rmm # perform operation
fadd.s f9, f3, f5, rne # perform operation
fadd.s f9, f3, f5, rtz # perform operation
fadd.s f9, f3, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f3, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f3, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f3, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f3, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f3, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80000001)
li x16, 0xda2b7f73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f18, 0(x2) # load 0x807fffff from memory into f18
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f30, 0(x2) # load 0x80000001 from memory into f30
fadd.s f16, f18, f30, dyn # perform operation
fadd.s f16, f18, f30, rdn # perform operation
fadd.s f16, f18, f30, rmm # perform operation
fadd.s f16, f18, f30, rne # perform operation
fadd.s f16, f18, f30, rtz # perform operation
fadd.s f16, f18, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f18, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f18, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f18, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f18, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f18, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f800000)
li x13, 0xd1ba3b2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f6, 0(x2) # load 0x807fffff from memory into f6
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f5, 0(x2) # load 0x7f800000 from memory into f5
fadd.s f13, f6, f5, dyn # perform operation
fadd.s f13, f6, f5, rdn # perform operation
fadd.s f13, f6, f5, rmm # perform operation
fadd.s f13, f6, f5, rne # perform operation
fadd.s f13, f6, f5, rtz # perform operation
fadd.s f13, f6, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f6, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f6, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f6, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f6, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f6, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xff800000)
li x30, 0x3ea59b77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f25, 0(x2) # load 0x807fffff from memory into f25
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f5, 0(x2) # load 0xff800000 from memory into f5
fadd.s f30, f25, f5, dyn # perform operation
fadd.s f30, f25, f5, rdn # perform operation
fadd.s f30, f25, f5, rmm # perform operation
fadd.s f30, f25, f5, rne # perform operation
fadd.s f30, f25, f5, rtz # perform operation
fadd.s f30, f25, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f25, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f25, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f25, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f25, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f25, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fc00000)
li x31, 0xe2dc47a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f11, 0(x2) # load 0x807fffff from memory into f11
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f12, 0(x2) # load 0x7fc00000 from memory into f12
fadd.s f31, f11, f12, dyn # perform operation
fadd.s f31, f11, f12, rdn # perform operation
fadd.s f31, f11, f12, rmm # perform operation
fadd.s f31, f11, f12, rne # perform operation
fadd.s f31, f11, f12, rtz # perform operation
fadd.s f31, f11, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f11, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f11, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f11, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f11, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f11, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fffffff)
li x25, 0x73c49165 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f26, 0(x2) # load 0x807fffff from memory into f26
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f28, 0(x2) # load 0x7fffffff from memory into f28
fadd.s f25, f26, f28, dyn # perform operation
fadd.s f25, f26, f28, rdn # perform operation
fadd.s f25, f26, f28, rmm # perform operation
fadd.s f25, f26, f28, rne # perform operation
fadd.s f25, f26, f28, rtz # perform operation
fadd.s f25, f26, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f26, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f26, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f26, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f26, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f26, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f800001)
li x31, 0x9e0fb2bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f26, 0(x2) # load 0x807fffff from memory into f26
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
fadd.s f31, f26, f30, dyn # perform operation
fadd.s f31, f26, f30, rdn # perform operation
fadd.s f31, f26, f30, rmm # perform operation
fadd.s f31, f26, f30, rne # perform operation
fadd.s f31, f26, f30, rtz # perform operation
fadd.s f31, f26, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f26, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f26, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f26, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f26, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f26, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fbfffff)
li x23, 0xa5211451 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f6, 0(x2) # load 0x807fffff from memory into f6
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f3, 0(x2) # load 0x7fbfffff from memory into f3
fadd.s f23, f6, f3, dyn # perform operation
fadd.s f23, f6, f3, rdn # perform operation
fadd.s f23, f6, f3, rmm # perform operation
fadd.s f23, f6, f3, rne # perform operation
fadd.s f23, f6, f3, rtz # perform operation
fadd.s f23, f6, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f6, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f6, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f6, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f6, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f6, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7ef8654f)
li x15, 0x5d56ef63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f14, 0(x2) # load 0x807fffff from memory into f14
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f9, 0(x2) # load 0x7ef8654f from memory into f9
fadd.s f15, f14, f9, dyn # perform operation
fadd.s f15, f14, f9, rdn # perform operation
fadd.s f15, f14, f9, rmm # perform operation
fadd.s f15, f14, f9, rne # perform operation
fadd.s f15, f14, f9, rtz # perform operation
fadd.s f15, f14, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f14, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f14, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f14, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f14, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f14, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x813d9ab0)
li x25, 0xb790d309 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f24, 0(x2) # load 0x807fffff from memory into f24
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
fadd.s f25, f24, f17, dyn # perform operation
fadd.s f25, f24, f17, rdn # perform operation
fadd.s f25, f24, f17, rmm # perform operation
fadd.s f25, f24, f17, rne # perform operation
fadd.s f25, f24, f17, rtz # perform operation
fadd.s f25, f24, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f24, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f24, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f24, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f24, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f24, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x0)
li x26, 0x4153c849 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f23, 0(x2) # load 0x00400000 from memory into f23
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f30, 0(x2) # load 0x00000000 from memory into f30
fadd.s f26, f23, f30, dyn # perform operation
fadd.s f26, f23, f30, rdn # perform operation
fadd.s f26, f23, f30, rmm # perform operation
fadd.s f26, f23, f30, rne # perform operation
fadd.s f26, f23, f30, rtz # perform operation
fadd.s f26, f23, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f23, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f23, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f23, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f23, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f23, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80000000)
li x6, 0x652722ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f20, 0(x2) # load 0x00400000 from memory into f20
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f22, 0(x2) # load 0x80000000 from memory into f22
fadd.s f6, f20, f22, dyn # perform operation
fadd.s f6, f20, f22, rdn # perform operation
fadd.s f6, f20, f22, rmm # perform operation
fadd.s f6, f20, f22, rne # perform operation
fadd.s f6, f20, f22, rtz # perform operation
fadd.s f6, f20, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f20, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f20, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f20, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f20, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f20, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x3f800000)
li x28, 0x708645d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f24, 0(x2) # load 0x00400000 from memory into f24
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f4, 0(x2) # load 0x3f800000 from memory into f4
fadd.s f28, f24, f4, dyn # perform operation
fadd.s f28, f24, f4, rdn # perform operation
fadd.s f28, f24, f4, rmm # perform operation
fadd.s f28, f24, f4, rne # perform operation
fadd.s f28, f24, f4, rtz # perform operation
fadd.s f28, f24, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f24, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f24, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f24, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f24, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f24, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xbf800000)
li x25, 0xc5eba607 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f11, 0(x2) # load 0x00400000 from memory into f11
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f2, 0(x2) # load 0xbf800000 from memory into f2
fadd.s f25, f11, f2, dyn # perform operation
fadd.s f25, f11, f2, rdn # perform operation
fadd.s f25, f11, f2, rmm # perform operation
fadd.s f25, f11, f2, rne # perform operation
fadd.s f25, f11, f2, rtz # perform operation
fadd.s f25, f11, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f11, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f11, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f11, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f11, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f11, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x3fc00000)
li x4, 0xe3e748bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f24, 0(x2) # load 0x00400000 from memory into f24
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f12, 0(x2) # load 0x3fc00000 from memory into f12
fadd.s f4, f24, f12, dyn # perform operation
fadd.s f4, f24, f12, rdn # perform operation
fadd.s f4, f24, f12, rmm # perform operation
fadd.s f4, f24, f12, rne # perform operation
fadd.s f4, f24, f12, rtz # perform operation
fadd.s f4, f24, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f24, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f24, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f24, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f24, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f24, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xbfc00000)
li x9, 0x8e81e052 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f19, 0(x2) # load 0x00400000 from memory into f19
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f14, 0(x2) # load 0xbfc00000 from memory into f14
fadd.s f9, f19, f14, dyn # perform operation
fadd.s f9, f19, f14, rdn # perform operation
fadd.s f9, f19, f14, rmm # perform operation
fadd.s f9, f19, f14, rne # perform operation
fadd.s f9, f19, f14, rtz # perform operation
fadd.s f9, f19, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f19, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f19, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f19, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f19, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f19, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x40000000)
li x7, 0xedac4dbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f19, 0(x2) # load 0x00400000 from memory into f19
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f25, 0(x2) # load 0x40000000 from memory into f25
fadd.s f7, f19, f25, dyn # perform operation
fadd.s f7, f19, f25, rdn # perform operation
fadd.s f7, f19, f25, rmm # perform operation
fadd.s f7, f19, f25, rne # perform operation
fadd.s f7, f19, f25, rtz # perform operation
fadd.s f7, f19, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f19, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f19, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f19, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f19, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f19, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xc0000000)
li x27, 0x7c80e213 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f19, 0(x2) # load 0x00400000 from memory into f19
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f30, 0(x2) # load 0xc0000000 from memory into f30
fadd.s f27, f19, f30, dyn # perform operation
fadd.s f27, f19, f30, rdn # perform operation
fadd.s f27, f19, f30, rmm # perform operation
fadd.s f27, f19, f30, rne # perform operation
fadd.s f27, f19, f30, rtz # perform operation
fadd.s f27, f19, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f19, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f19, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f19, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f19, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f19, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x800000)
li x12, 0x4580b7c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f31, 0(x2) # load 0x00400000 from memory into f31
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
fadd.s f12, f31, f11, dyn # perform operation
fadd.s f12, f31, f11, rdn # perform operation
fadd.s f12, f31, f11, rmm # perform operation
fadd.s f12, f31, f11, rne # perform operation
fadd.s f12, f31, f11, rtz # perform operation
fadd.s f12, f31, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f31, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f31, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f31, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f31, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f31, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80800000)
li x6, 0x84b93109 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
fadd.s f6, f15, f20, dyn # perform operation
fadd.s f6, f15, f20, rdn # perform operation
fadd.s f6, f15, f20, rmm # perform operation
fadd.s f6, f15, f20, rne # perform operation
fadd.s f6, f15, f20, rtz # perform operation
fadd.s f6, f15, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f15, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f15, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f15, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f15, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f15, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f7fffff)
li x23, 0x55446b1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f13, 0(x2) # load 0x00400000 from memory into f13
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f26, 0(x2) # load 0x7f7fffff from memory into f26
fadd.s f23, f13, f26, dyn # perform operation
fadd.s f23, f13, f26, rdn # perform operation
fadd.s f23, f13, f26, rmm # perform operation
fadd.s f23, f13, f26, rne # perform operation
fadd.s f23, f13, f26, rtz # perform operation
fadd.s f23, f13, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f13, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f13, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f13, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f13, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f13, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xff7fffff)
li x24, 0xebd02e18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f17, 0(x2) # load 0xff7fffff from memory into f17
fadd.s f24, f12, f17, dyn # perform operation
fadd.s f24, f12, f17, rdn # perform operation
fadd.s f24, f12, f17, rmm # perform operation
fadd.s f24, f12, f17, rne # perform operation
fadd.s f24, f12, f17, rtz # perform operation
fadd.s f24, f12, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f12, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f12, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f12, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f12, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f12, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fffff)
li x28, 0x989cf7e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f10, 0(x2) # load 0x00400000 from memory into f10
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f2, 0(x2) # load 0x007fffff from memory into f2
fadd.s f28, f10, f2, dyn # perform operation
fadd.s f28, f10, f2, rdn # perform operation
fadd.s f28, f10, f2, rmm # perform operation
fadd.s f28, f10, f2, rne # perform operation
fadd.s f28, f10, f2, rtz # perform operation
fadd.s f28, f10, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f10, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f10, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f10, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f10, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f10, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x807fffff)
li x2, 0xc4d6389e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f10, 0(x2) # load 0x00400000 from memory into f10
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f12, 0(x2) # load 0x807fffff from memory into f12
fadd.s f2, f10, f12, dyn # perform operation
fadd.s f2, f10, f12, rdn # perform operation
fadd.s f2, f10, f12, rmm # perform operation
fadd.s f2, f10, f12, rne # perform operation
fadd.s f2, f10, f12, rtz # perform operation
fadd.s f2, f10, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f10, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f10, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f10, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f10, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f10, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x400000)
li x15, 0xa9581d62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f7, 0(x2) # load 0x00400000 from memory into f7
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f27, 0(x2) # load 0x00400000 from memory into f27
fadd.s f15, f7, f27, dyn # perform operation
fadd.s f15, f7, f27, rdn # perform operation
fadd.s f15, f7, f27, rmm # perform operation
fadd.s f15, f7, f27, rne # perform operation
fadd.s f15, f7, f27, rtz # perform operation
fadd.s f15, f7, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f7, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f7, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f7, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f7, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f7, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80400000)
li x11, 0x5f4881a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f18, 0(x2) # load 0x00400000 from memory into f18
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
fadd.s f11, f18, f6, dyn # perform operation
fadd.s f11, f18, f6, rdn # perform operation
fadd.s f11, f18, f6, rmm # perform operation
fadd.s f11, f18, f6, rne # perform operation
fadd.s f11, f18, f6, rtz # perform operation
fadd.s f11, f18, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f18, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f18, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f18, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f18, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f18, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x1)
li x1, 0x0c8afd1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f6, 0(x2) # load 0x00400000 from memory into f6
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f27, 0(x2) # load 0x00000001 from memory into f27
fadd.s f1, f6, f27, dyn # perform operation
fadd.s f1, f6, f27, rdn # perform operation
fadd.s f1, f6, f27, rmm # perform operation
fadd.s f1, f6, f27, rne # perform operation
fadd.s f1, f6, f27, rtz # perform operation
fadd.s f1, f6, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f6, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f6, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f6, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f6, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f6, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80000001)
li x26, 0xec77e467 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f4, 0(x2) # load 0x00400000 from memory into f4
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f20, 0(x2) # load 0x80000001 from memory into f20
fadd.s f26, f4, f20, dyn # perform operation
fadd.s f26, f4, f20, rdn # perform operation
fadd.s f26, f4, f20, rmm # perform operation
fadd.s f26, f4, f20, rne # perform operation
fadd.s f26, f4, f20, rtz # perform operation
fadd.s f26, f4, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f4, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f4, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f4, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f4, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f4, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f800000)
li x18, 0x4603c97a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f28, 0(x2) # load 0x00400000 from memory into f28
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f30, 0(x2) # load 0x7f800000 from memory into f30
fadd.s f18, f28, f30, dyn # perform operation
fadd.s f18, f28, f30, rdn # perform operation
fadd.s f18, f28, f30, rmm # perform operation
fadd.s f18, f28, f30, rne # perform operation
fadd.s f18, f28, f30, rtz # perform operation
fadd.s f18, f28, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f28, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f28, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f28, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f28, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f28, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xff800000)
li x2, 0x2d605cd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f20, 0(x2) # load 0xff800000 from memory into f20
fadd.s f2, f21, f20, dyn # perform operation
fadd.s f2, f21, f20, rdn # perform operation
fadd.s f2, f21, f20, rmm # perform operation
fadd.s f2, f21, f20, rne # perform operation
fadd.s f2, f21, f20, rtz # perform operation
fadd.s f2, f21, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f21, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f21, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f21, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f21, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f21, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fc00000)
li x17, 0xf688301c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f3, 0(x2) # load 0x7fc00000 from memory into f3
fadd.s f17, f25, f3, dyn # perform operation
fadd.s f17, f25, f3, rdn # perform operation
fadd.s f17, f25, f3, rmm # perform operation
fadd.s f17, f25, f3, rne # perform operation
fadd.s f17, f25, f3, rtz # perform operation
fadd.s f17, f25, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f25, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f25, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f25, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f25, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f25, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fffffff)
li x25, 0x150463ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f4, 0(x2) # load 0x00400000 from memory into f4
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f28, 0(x2) # load 0x7fffffff from memory into f28
fadd.s f25, f4, f28, dyn # perform operation
fadd.s f25, f4, f28, rdn # perform operation
fadd.s f25, f4, f28, rmm # perform operation
fadd.s f25, f4, f28, rne # perform operation
fadd.s f25, f4, f28, rtz # perform operation
fadd.s f25, f4, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f4, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f4, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f4, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f4, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f4, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f800001)
li x26, 0x31ee6c01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f13, 0(x2) # load 0x7f800001 from memory into f13
fadd.s f26, f14, f13, dyn # perform operation
fadd.s f26, f14, f13, rdn # perform operation
fadd.s f26, f14, f13, rmm # perform operation
fadd.s f26, f14, f13, rne # perform operation
fadd.s f26, f14, f13, rtz # perform operation
fadd.s f26, f14, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f14, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f14, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f14, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f14, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f14, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fbfffff)
li x1, 0xb394bf4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f21, 0(x2) # load 0x7fbfffff from memory into f21
fadd.s f1, f14, f21, dyn # perform operation
fadd.s f1, f14, f21, rdn # perform operation
fadd.s f1, f14, f21, rmm # perform operation
fadd.s f1, f14, f21, rne # perform operation
fadd.s f1, f14, f21, rtz # perform operation
fadd.s f1, f14, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f14, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f14, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f14, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f14, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f14, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7ef8654f)
li x17, 0x07ff3539 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f7, 0(x2) # load 0x00400000 from memory into f7
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f2, 0(x2) # load 0x7ef8654f from memory into f2
fadd.s f17, f7, f2, dyn # perform operation
fadd.s f17, f7, f2, rdn # perform operation
fadd.s f17, f7, f2, rmm # perform operation
fadd.s f17, f7, f2, rne # perform operation
fadd.s f17, f7, f2, rtz # perform operation
fadd.s f17, f7, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f7, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f7, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f7, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f7, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f7, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x813d9ab0)
li x5, 0xefb271d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f4, 0(x2) # load 0x00400000 from memory into f4
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f20, 0(x2) # load 0x813d9ab0 from memory into f20
fadd.s f5, f4, f20, dyn # perform operation
fadd.s f5, f4, f20, rdn # perform operation
fadd.s f5, f4, f20, rmm # perform operation
fadd.s f5, f4, f20, rne # perform operation
fadd.s f5, f4, f20, rtz # perform operation
fadd.s f5, f4, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f4, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f4, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f4, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f4, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f4, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x0)
li x26, 0xbafc2772 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f30, 0(x2) # load 0x80400000 from memory into f30
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
fadd.s f26, f30, f15, dyn # perform operation
fadd.s f26, f30, f15, rdn # perform operation
fadd.s f26, f30, f15, rmm # perform operation
fadd.s f26, f30, f15, rne # perform operation
fadd.s f26, f30, f15, rtz # perform operation
fadd.s f26, f30, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f30, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f30, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f30, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f30, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f30, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80000000)
li x23, 0x42c66d7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f4, 0(x2) # load 0x80400000 from memory into f4
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f17, 0(x2) # load 0x80000000 from memory into f17
fadd.s f23, f4, f17, dyn # perform operation
fadd.s f23, f4, f17, rdn # perform operation
fadd.s f23, f4, f17, rmm # perform operation
fadd.s f23, f4, f17, rne # perform operation
fadd.s f23, f4, f17, rtz # perform operation
fadd.s f23, f4, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f4, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f4, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f4, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f4, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f4, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x3f800000)
li x26, 0x86facf2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f27, 0(x2) # load 0x80400000 from memory into f27
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f25, 0(x2) # load 0x3f800000 from memory into f25
fadd.s f26, f27, f25, dyn # perform operation
fadd.s f26, f27, f25, rdn # perform operation
fadd.s f26, f27, f25, rmm # perform operation
fadd.s f26, f27, f25, rne # perform operation
fadd.s f26, f27, f25, rtz # perform operation
fadd.s f26, f27, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f27, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f27, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f27, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f27, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f27, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xbf800000)
li x7, 0x9bc12d49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f19, 0(x2) # load 0x80400000 from memory into f19
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f25, 0(x2) # load 0xbf800000 from memory into f25
fadd.s f7, f19, f25, dyn # perform operation
fadd.s f7, f19, f25, rdn # perform operation
fadd.s f7, f19, f25, rmm # perform operation
fadd.s f7, f19, f25, rne # perform operation
fadd.s f7, f19, f25, rtz # perform operation
fadd.s f7, f19, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f19, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f19, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f19, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f19, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f19, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x3fc00000)
li x1, 0x7edb49ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f11, 0(x2) # load 0x80400000 from memory into f11
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f18, 0(x2) # load 0x3fc00000 from memory into f18
fadd.s f1, f11, f18, dyn # perform operation
fadd.s f1, f11, f18, rdn # perform operation
fadd.s f1, f11, f18, rmm # perform operation
fadd.s f1, f11, f18, rne # perform operation
fadd.s f1, f11, f18, rtz # perform operation
fadd.s f1, f11, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f11, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f11, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f11, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f11, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f11, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xbfc00000)
li x23, 0xae666fa8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f12, 0(x2) # load 0x80400000 from memory into f12
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
fadd.s f23, f12, f20, dyn # perform operation
fadd.s f23, f12, f20, rdn # perform operation
fadd.s f23, f12, f20, rmm # perform operation
fadd.s f23, f12, f20, rne # perform operation
fadd.s f23, f12, f20, rtz # perform operation
fadd.s f23, f12, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f12, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f12, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f12, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f12, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f12, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x40000000)
li x22, 0x3029d7f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f25, 0(x2) # load 0x80400000 from memory into f25
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f1, 0(x2) # load 0x40000000 from memory into f1
fadd.s f22, f25, f1, dyn # perform operation
fadd.s f22, f25, f1, rdn # perform operation
fadd.s f22, f25, f1, rmm # perform operation
fadd.s f22, f25, f1, rne # perform operation
fadd.s f22, f25, f1, rtz # perform operation
fadd.s f22, f25, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f25, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f25, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f25, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f25, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f25, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xc0000000)
li x5, 0xd86b8f3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f28, 0(x2) # load 0x80400000 from memory into f28
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f20, 0(x2) # load 0xc0000000 from memory into f20
fadd.s f5, f28, f20, dyn # perform operation
fadd.s f5, f28, f20, rdn # perform operation
fadd.s f5, f28, f20, rmm # perform operation
fadd.s f5, f28, f20, rne # perform operation
fadd.s f5, f28, f20, rtz # perform operation
fadd.s f5, f28, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f28, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f28, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f28, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f28, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f28, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x800000)
li x10, 0xfe20db8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f31, 0(x2) # load 0x80400000 from memory into f31
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f13, 0(x2) # load 0x00800000 from memory into f13
fadd.s f10, f31, f13, dyn # perform operation
fadd.s f10, f31, f13, rdn # perform operation
fadd.s f10, f31, f13, rmm # perform operation
fadd.s f10, f31, f13, rne # perform operation
fadd.s f10, f31, f13, rtz # perform operation
fadd.s f10, f31, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f31, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f31, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f31, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f31, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f31, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80800000)
li x23, 0x9497db91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f3, 0(x2) # load 0x80400000 from memory into f3
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f30, 0(x2) # load 0x80800000 from memory into f30
fadd.s f23, f3, f30, dyn # perform operation
fadd.s f23, f3, f30, rdn # perform operation
fadd.s f23, f3, f30, rmm # perform operation
fadd.s f23, f3, f30, rne # perform operation
fadd.s f23, f3, f30, rtz # perform operation
fadd.s f23, f3, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f3, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f3, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f3, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f3, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f3, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f7fffff)
li x3, 0x17f02d40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f30, 0(x2) # load 0x80400000 from memory into f30
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f21, 0(x2) # load 0x7f7fffff from memory into f21
fadd.s f3, f30, f21, dyn # perform operation
fadd.s f3, f30, f21, rdn # perform operation
fadd.s f3, f30, f21, rmm # perform operation
fadd.s f3, f30, f21, rne # perform operation
fadd.s f3, f30, f21, rtz # perform operation
fadd.s f3, f30, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f30, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f30, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f30, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f30, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f30, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xff7fffff)
li x11, 0xdf55fe55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f15, 0(x2) # load 0x80400000 from memory into f15
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f19, 0(x2) # load 0xff7fffff from memory into f19
fadd.s f11, f15, f19, dyn # perform operation
fadd.s f11, f15, f19, rdn # perform operation
fadd.s f11, f15, f19, rmm # perform operation
fadd.s f11, f15, f19, rne # perform operation
fadd.s f11, f15, f19, rtz # perform operation
fadd.s f11, f15, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f15, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f15, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f15, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f15, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f15, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fffff)
li x26, 0x5afd280e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f13, 0(x2) # load 0x007fffff from memory into f13
fadd.s f26, f6, f13, dyn # perform operation
fadd.s f26, f6, f13, rdn # perform operation
fadd.s f26, f6, f13, rmm # perform operation
fadd.s f26, f6, f13, rne # perform operation
fadd.s f26, f6, f13, rtz # perform operation
fadd.s f26, f6, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f6, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f6, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f6, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f6, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f6, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x807fffff)
li x5, 0x474c9a7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f30, 0(x2) # load 0x807fffff from memory into f30
fadd.s f5, f6, f30, dyn # perform operation
fadd.s f5, f6, f30, rdn # perform operation
fadd.s f5, f6, f30, rmm # perform operation
fadd.s f5, f6, f30, rne # perform operation
fadd.s f5, f6, f30, rtz # perform operation
fadd.s f5, f6, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f6, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f6, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f6, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f6, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f6, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x400000)
li x30, 0x34f9d685 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f12, 0(x2) # load 0x80400000 from memory into f12
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
fadd.s f30, f12, f25, dyn # perform operation
fadd.s f30, f12, f25, rdn # perform operation
fadd.s f30, f12, f25, rmm # perform operation
fadd.s f30, f12, f25, rne # perform operation
fadd.s f30, f12, f25, rtz # perform operation
fadd.s f30, f12, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f12, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f12, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f12, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f12, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f12, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80400000)
li x19, 0x3d6e1d71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f25, 0(x2) # load 0x80400000 from memory into f25
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f3, 0(x2) # load 0x80400000 from memory into f3
fadd.s f19, f25, f3, dyn # perform operation
fadd.s f19, f25, f3, rdn # perform operation
fadd.s f19, f25, f3, rmm # perform operation
fadd.s f19, f25, f3, rne # perform operation
fadd.s f19, f25, f3, rtz # perform operation
fadd.s f19, f25, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f25, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f25, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f25, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f25, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f25, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x1)
li x17, 0x64f42d7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f27, 0(x2) # load 0x80400000 from memory into f27
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
fadd.s f17, f27, f5, dyn # perform operation
fadd.s f17, f27, f5, rdn # perform operation
fadd.s f17, f27, f5, rmm # perform operation
fadd.s f17, f27, f5, rne # perform operation
fadd.s f17, f27, f5, rtz # perform operation
fadd.s f17, f27, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f27, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f27, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f27, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f27, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f27, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80000001)
li x25, 0x98698ce2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f14, 0(x2) # load 0x80400000 from memory into f14
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f29, 0(x2) # load 0x80000001 from memory into f29
fadd.s f25, f14, f29, dyn # perform operation
fadd.s f25, f14, f29, rdn # perform operation
fadd.s f25, f14, f29, rmm # perform operation
fadd.s f25, f14, f29, rne # perform operation
fadd.s f25, f14, f29, rtz # perform operation
fadd.s f25, f14, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f14, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f14, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f14, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f14, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f14, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f800000)
li x1, 0x9be7593a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f28, 0(x2) # load 0x80400000 from memory into f28
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f23, 0(x2) # load 0x7f800000 from memory into f23
fadd.s f1, f28, f23, dyn # perform operation
fadd.s f1, f28, f23, rdn # perform operation
fadd.s f1, f28, f23, rmm # perform operation
fadd.s f1, f28, f23, rne # perform operation
fadd.s f1, f28, f23, rtz # perform operation
fadd.s f1, f28, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f28, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f28, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f28, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f28, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f28, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xff800000)
li x8, 0x76632985 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f17, 0(x2) # load 0x80400000 from memory into f17
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f21, 0(x2) # load 0xff800000 from memory into f21
fadd.s f8, f17, f21, dyn # perform operation
fadd.s f8, f17, f21, rdn # perform operation
fadd.s f8, f17, f21, rmm # perform operation
fadd.s f8, f17, f21, rne # perform operation
fadd.s f8, f17, f21, rtz # perform operation
fadd.s f8, f17, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f17, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f17, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f17, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f17, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f17, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fc00000)
li x22, 0xdd22bf71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f15, 0(x2) # load 0x80400000 from memory into f15
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f5, 0(x2) # load 0x7fc00000 from memory into f5
fadd.s f22, f15, f5, dyn # perform operation
fadd.s f22, f15, f5, rdn # perform operation
fadd.s f22, f15, f5, rmm # perform operation
fadd.s f22, f15, f5, rne # perform operation
fadd.s f22, f15, f5, rtz # perform operation
fadd.s f22, f15, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f15, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f15, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f15, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f15, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f15, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fffffff)
li x16, 0xe26e420f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f21, 0(x2) # load 0x80400000 from memory into f21
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f26, 0(x2) # load 0x7fffffff from memory into f26
fadd.s f16, f21, f26, dyn # perform operation
fadd.s f16, f21, f26, rdn # perform operation
fadd.s f16, f21, f26, rmm # perform operation
fadd.s f16, f21, f26, rne # perform operation
fadd.s f16, f21, f26, rtz # perform operation
fadd.s f16, f21, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f21, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f21, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f21, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f21, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f21, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f800001)
li x30, 0xbd8b9e47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f3, 0(x2) # load 0x80400000 from memory into f3
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f20, 0(x2) # load 0x7f800001 from memory into f20
fadd.s f30, f3, f20, dyn # perform operation
fadd.s f30, f3, f20, rdn # perform operation
fadd.s f30, f3, f20, rmm # perform operation
fadd.s f30, f3, f20, rne # perform operation
fadd.s f30, f3, f20, rtz # perform operation
fadd.s f30, f3, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f3, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f3, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f3, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f3, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f3, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fbfffff)
li x29, 0xbe35b5bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f2, 0(x2) # load 0x80400000 from memory into f2
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
fadd.s f29, f2, f16, dyn # perform operation
fadd.s f29, f2, f16, rdn # perform operation
fadd.s f29, f2, f16, rmm # perform operation
fadd.s f29, f2, f16, rne # perform operation
fadd.s f29, f2, f16, rtz # perform operation
fadd.s f29, f2, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f2, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f2, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f2, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f2, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f2, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7ef8654f)
li x29, 0xe1e1ef86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f16, 0(x2) # load 0x80400000 from memory into f16
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
fadd.s f29, f16, f13, dyn # perform operation
fadd.s f29, f16, f13, rdn # perform operation
fadd.s f29, f16, f13, rmm # perform operation
fadd.s f29, f16, f13, rne # perform operation
fadd.s f29, f16, f13, rtz # perform operation
fadd.s f29, f16, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f16, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f16, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f16, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f16, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f16, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x813d9ab0)
li x28, 0xe753e7eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f14, 0(x2) # load 0x80400000 from memory into f14
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f18, 0(x2) # load 0x813d9ab0 from memory into f18
fadd.s f28, f14, f18, dyn # perform operation
fadd.s f28, f14, f18, rdn # perform operation
fadd.s f28, f14, f18, rmm # perform operation
fadd.s f28, f14, f18, rne # perform operation
fadd.s f28, f14, f18, rtz # perform operation
fadd.s f28, f14, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f14, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f14, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f14, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f14, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f14, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
li x21, 0x2ee1c558 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f26, 0(x2) # load 0x00000001 from memory into f26
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f19, 0(x2) # load 0x00000000 from memory into f19
fadd.s f21, f26, f19, dyn # perform operation
fadd.s f21, f26, f19, rdn # perform operation
fadd.s f21, f26, f19, rmm # perform operation
fadd.s f21, f26, f19, rne # perform operation
fadd.s f21, f26, f19, rtz # perform operation
fadd.s f21, f26, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f26, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f26, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f26, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f26, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f26, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80000000)
li x19, 0x483ce79d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f25, 0(x2) # load 0x00000001 from memory into f25
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f21, 0(x2) # load 0x80000000 from memory into f21
fadd.s f19, f25, f21, dyn # perform operation
fadd.s f19, f25, f21, rdn # perform operation
fadd.s f19, f25, f21, rmm # perform operation
fadd.s f19, f25, f21, rne # perform operation
fadd.s f19, f25, f21, rtz # perform operation
fadd.s f19, f25, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f25, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f25, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f25, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f25, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f25, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3f800000)
li x27, 0xca1b4d09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f10, 0(x2) # load 0x00000001 from memory into f10
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f28, 0(x2) # load 0x3f800000 from memory into f28
fadd.s f27, f10, f28, dyn # perform operation
fadd.s f27, f10, f28, rdn # perform operation
fadd.s f27, f10, f28, rmm # perform operation
fadd.s f27, f10, f28, rne # perform operation
fadd.s f27, f10, f28, rtz # perform operation
fadd.s f27, f10, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f10, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f10, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f10, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f10, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f10, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbf800000)
li x2, 0x149d011c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f18, 0(x2) # load 0x00000001 from memory into f18
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f1, 0(x2) # load 0xbf800000 from memory into f1
fadd.s f2, f18, f1, dyn # perform operation
fadd.s f2, f18, f1, rdn # perform operation
fadd.s f2, f18, f1, rmm # perform operation
fadd.s f2, f18, f1, rne # perform operation
fadd.s f2, f18, f1, rtz # perform operation
fadd.s f2, f18, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f18, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f18, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f18, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f18, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f18, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3fc00000)
li x17, 0x8d5d1ed9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f13, 0(x2) # load 0x00000001 from memory into f13
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f26, 0(x2) # load 0x3fc00000 from memory into f26
fadd.s f17, f13, f26, dyn # perform operation
fadd.s f17, f13, f26, rdn # perform operation
fadd.s f17, f13, f26, rmm # perform operation
fadd.s f17, f13, f26, rne # perform operation
fadd.s f17, f13, f26, rtz # perform operation
fadd.s f17, f13, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f13, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f13, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f13, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f13, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f13, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbfc00000)
li x7, 0xacc93f70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f13, 0(x2) # load 0x00000001 from memory into f13
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f9, 0(x2) # load 0xbfc00000 from memory into f9
fadd.s f7, f13, f9, dyn # perform operation
fadd.s f7, f13, f9, rdn # perform operation
fadd.s f7, f13, f9, rmm # perform operation
fadd.s f7, f13, f9, rne # perform operation
fadd.s f7, f13, f9, rtz # perform operation
fadd.s f7, f13, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f13, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f13, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f13, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f13, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f13, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x40000000)
li x4, 0xf68cbc04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f15, 0(x2) # load 0x00000001 from memory into f15
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
fadd.s f4, f15, f24, dyn # perform operation
fadd.s f4, f15, f24, rdn # perform operation
fadd.s f4, f15, f24, rmm # perform operation
fadd.s f4, f15, f24, rne # perform operation
fadd.s f4, f15, f24, rtz # perform operation
fadd.s f4, f15, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f15, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f15, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f15, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f15, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f15, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc0000000)
li x9, 0x47a8d365 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f22, 0(x2) # load 0xc0000000 from memory into f22
fadd.s f9, f2, f22, dyn # perform operation
fadd.s f9, f2, f22, rdn # perform operation
fadd.s f9, f2, f22, rmm # perform operation
fadd.s f9, f2, f22, rne # perform operation
fadd.s f9, f2, f22, rtz # perform operation
fadd.s f9, f2, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f2, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f2, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f2, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f2, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f2, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x800000)
li x4, 0x62cfc044 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f25, 0(x2) # load 0x00000001 from memory into f25
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
fadd.s f4, f25, f23, dyn # perform operation
fadd.s f4, f25, f23, rdn # perform operation
fadd.s f4, f25, f23, rmm # perform operation
fadd.s f4, f25, f23, rne # perform operation
fadd.s f4, f25, f23, rtz # perform operation
fadd.s f4, f25, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f25, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f25, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f25, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f25, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f25, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80800000)
li x1, 0x1dfdd727 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f26, 0(x2) # load 0x80800000 from memory into f26
fadd.s f1, f19, f26, dyn # perform operation
fadd.s f1, f19, f26, rdn # perform operation
fadd.s f1, f19, f26, rmm # perform operation
fadd.s f1, f19, f26, rne # perform operation
fadd.s f1, f19, f26, rtz # perform operation
fadd.s f1, f19, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f19, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f19, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f19, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f19, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f19, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f7fffff)
li x1, 0x77edab65 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f21, 0(x2) # load 0x00000001 from memory into f21
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f2, 0(x2) # load 0x7f7fffff from memory into f2
fadd.s f1, f21, f2, dyn # perform operation
fadd.s f1, f21, f2, rdn # perform operation
fadd.s f1, f21, f2, rmm # perform operation
fadd.s f1, f21, f2, rne # perform operation
fadd.s f1, f21, f2, rtz # perform operation
fadd.s f1, f21, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f21, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f21, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f21, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f21, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f21, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xff7fffff)
li x10, 0x451a6593 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
fadd.s f10, f5, f31, dyn # perform operation
fadd.s f10, f5, f31, rdn # perform operation
fadd.s f10, f5, f31, rmm # perform operation
fadd.s f10, f5, f31, rne # perform operation
fadd.s f10, f5, f31, rtz # perform operation
fadd.s f10, f5, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f5, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f5, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f5, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f5, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f5, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffff)
li x11, 0x9640f2d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f26, 0(x2) # load 0x007fffff from memory into f26
fadd.s f11, f6, f26, dyn # perform operation
fadd.s f11, f6, f26, rdn # perform operation
fadd.s f11, f6, f26, rmm # perform operation
fadd.s f11, f6, f26, rne # perform operation
fadd.s f11, f6, f26, rtz # perform operation
fadd.s f11, f6, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f6, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f6, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f6, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f6, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f6, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x807fffff)
li x26, 0xe737402b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f9, 0(x2) # load 0x807fffff from memory into f9
fadd.s f26, f5, f9, dyn # perform operation
fadd.s f26, f5, f9, rdn # perform operation
fadd.s f26, f5, f9, rmm # perform operation
fadd.s f26, f5, f9, rne # perform operation
fadd.s f26, f5, f9, rtz # perform operation
fadd.s f26, f5, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f5, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f5, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f5, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f5, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f5, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x400000)
li x27, 0x9f3fdfe5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f28, 0(x2) # load 0x00400000 from memory into f28
fadd.s f27, f22, f28, dyn # perform operation
fadd.s f27, f22, f28, rdn # perform operation
fadd.s f27, f22, f28, rmm # perform operation
fadd.s f27, f22, f28, rne # perform operation
fadd.s f27, f22, f28, rtz # perform operation
fadd.s f27, f22, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f22, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f22, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f22, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f22, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f22, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80400000)
li x15, 0x31ccb117 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f30, 0(x2) # load 0x00000001 from memory into f30
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f1, 0(x2) # load 0x80400000 from memory into f1
fadd.s f15, f30, f1, dyn # perform operation
fadd.s f15, f30, f1, rdn # perform operation
fadd.s f15, f30, f1, rmm # perform operation
fadd.s f15, f30, f1, rne # perform operation
fadd.s f15, f30, f1, rtz # perform operation
fadd.s f15, f30, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f30, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f30, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f30, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f30, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f30, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
li x17, 0x3562f797 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f28, 0(x2) # load 0x00000001 from memory into f28
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f1, 0(x2) # load 0x00000001 from memory into f1
fadd.s f17, f28, f1, dyn # perform operation
fadd.s f17, f28, f1, rdn # perform operation
fadd.s f17, f28, f1, rmm # perform operation
fadd.s f17, f28, f1, rne # perform operation
fadd.s f17, f28, f1, rtz # perform operation
fadd.s f17, f28, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f28, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f28, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f28, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f28, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f28, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80000001)
li x1, 0xd54f0e8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f12, 0(x2) # load 0x00000001 from memory into f12
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
fadd.s f1, f12, f7, dyn # perform operation
fadd.s f1, f12, f7, rdn # perform operation
fadd.s f1, f12, f7, rmm # perform operation
fadd.s f1, f12, f7, rne # perform operation
fadd.s f1, f12, f7, rtz # perform operation
fadd.s f1, f12, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f12, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f12, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f12, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f12, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f12, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f800000)
li x21, 0xde9b2181 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f23, 0(x2) # load 0x00000001 from memory into f23
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f22, 0(x2) # load 0x7f800000 from memory into f22
fadd.s f21, f23, f22, dyn # perform operation
fadd.s f21, f23, f22, rdn # perform operation
fadd.s f21, f23, f22, rmm # perform operation
fadd.s f21, f23, f22, rne # perform operation
fadd.s f21, f23, f22, rtz # perform operation
fadd.s f21, f23, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f23, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f23, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f23, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f23, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f23, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xff800000)
li x5, 0x4f0e393e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f18, 0(x2) # load 0x00000001 from memory into f18
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
fadd.s f5, f18, f1, dyn # perform operation
fadd.s f5, f18, f1, rdn # perform operation
fadd.s f5, f18, f1, rmm # perform operation
fadd.s f5, f18, f1, rne # perform operation
fadd.s f5, f18, f1, rtz # perform operation
fadd.s f5, f18, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f18, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f18, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f18, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f18, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f18, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fc00000)
li x25, 0x6f9fa9e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f20, 0(x2) # load 0x7fc00000 from memory into f20
fadd.s f25, f19, f20, dyn # perform operation
fadd.s f25, f19, f20, rdn # perform operation
fadd.s f25, f19, f20, rmm # perform operation
fadd.s f25, f19, f20, rne # perform operation
fadd.s f25, f19, f20, rtz # perform operation
fadd.s f25, f19, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f19, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f19, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f19, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f19, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f19, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffffff)
li x30, 0x8c8eacea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f4, 0(x2) # load 0x00000001 from memory into f4
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f21, 0(x2) # load 0x7fffffff from memory into f21
fadd.s f30, f4, f21, dyn # perform operation
fadd.s f30, f4, f21, rdn # perform operation
fadd.s f30, f4, f21, rmm # perform operation
fadd.s f30, f4, f21, rne # perform operation
fadd.s f30, f4, f21, rtz # perform operation
fadd.s f30, f4, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f4, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f4, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f4, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f4, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f4, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f800001)
li x15, 0xe55417db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f20, 0(x2) # load 0x7f800001 from memory into f20
fadd.s f15, f3, f20, dyn # perform operation
fadd.s f15, f3, f20, rdn # perform operation
fadd.s f15, f3, f20, rmm # perform operation
fadd.s f15, f3, f20, rne # perform operation
fadd.s f15, f3, f20, rtz # perform operation
fadd.s f15, f3, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f3, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f3, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f3, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f3, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f3, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fbfffff)
li x2, 0x8a04e97f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f28, 0(x2) # load 0x00000001 from memory into f28
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
fadd.s f2, f28, f16, dyn # perform operation
fadd.s f2, f28, f16, rdn # perform operation
fadd.s f2, f28, f16, rmm # perform operation
fadd.s f2, f28, f16, rne # perform operation
fadd.s f2, f28, f16, rtz # perform operation
fadd.s f2, f28, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f28, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f28, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f28, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f28, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f28, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ef8654f)
li x20, 0x14c29e39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f23, 0(x2) # load 0x00000001 from memory into f23
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
fadd.s f20, f23, f13, dyn # perform operation
fadd.s f20, f23, f13, rdn # perform operation
fadd.s f20, f23, f13, rmm # perform operation
fadd.s f20, f23, f13, rne # perform operation
fadd.s f20, f23, f13, rtz # perform operation
fadd.s f20, f23, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f23, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f23, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f23, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f23, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f23, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x813d9ab0)
li x27, 0xda19ec85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f20, 0(x2) # load 0x00000001 from memory into f20
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f19, 0(x2) # load 0x813d9ab0 from memory into f19
fadd.s f27, f20, f19, dyn # perform operation
fadd.s f27, f20, f19, rdn # perform operation
fadd.s f27, f20, f19, rmm # perform operation
fadd.s f27, f20, f19, rne # perform operation
fadd.s f27, f20, f19, rtz # perform operation
fadd.s f27, f20, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f20, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f20, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f20, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f20, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f20, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x0)
li x16, 0x1fc08ac7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f28, 0(x2) # load 0x00000000 from memory into f28
fadd.s f16, f10, f28, dyn # perform operation
fadd.s f16, f10, f28, rdn # perform operation
fadd.s f16, f10, f28, rmm # perform operation
fadd.s f16, f10, f28, rne # perform operation
fadd.s f16, f10, f28, rtz # perform operation
fadd.s f16, f10, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f10, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f10, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f10, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f10, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f10, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80000000)
li x11, 0xcc6d8d36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f6, 0(x2) # load 0x80000000 from memory into f6
fadd.s f11, f27, f6, dyn # perform operation
fadd.s f11, f27, f6, rdn # perform operation
fadd.s f11, f27, f6, rmm # perform operation
fadd.s f11, f27, f6, rne # perform operation
fadd.s f11, f27, f6, rtz # perform operation
fadd.s f11, f27, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f27, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f27, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f27, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f27, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f27, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x3f800000)
li x17, 0x300a7a30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f21, 0(x2) # load 0x3f800000 from memory into f21
fadd.s f17, f10, f21, dyn # perform operation
fadd.s f17, f10, f21, rdn # perform operation
fadd.s f17, f10, f21, rmm # perform operation
fadd.s f17, f10, f21, rne # perform operation
fadd.s f17, f10, f21, rtz # perform operation
fadd.s f17, f10, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f10, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f10, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f10, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f10, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f10, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xbf800000)
li x8, 0x0829f0ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f6, 0(x2) # load 0x80000001 from memory into f6
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f15, 0(x2) # load 0xbf800000 from memory into f15
fadd.s f8, f6, f15, dyn # perform operation
fadd.s f8, f6, f15, rdn # perform operation
fadd.s f8, f6, f15, rmm # perform operation
fadd.s f8, f6, f15, rne # perform operation
fadd.s f8, f6, f15, rtz # perform operation
fadd.s f8, f6, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f6, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f6, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f6, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f6, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f6, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x3fc00000)
li x7, 0x6ce630af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f4, 0(x2) # load 0x80000001 from memory into f4
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f8, 0(x2) # load 0x3fc00000 from memory into f8
fadd.s f7, f4, f8, dyn # perform operation
fadd.s f7, f4, f8, rdn # perform operation
fadd.s f7, f4, f8, rmm # perform operation
fadd.s f7, f4, f8, rne # perform operation
fadd.s f7, f4, f8, rtz # perform operation
fadd.s f7, f4, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f4, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f4, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f4, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f4, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f4, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xbfc00000)
li x5, 0x4f39ef06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f21, 0(x2) # load 0x80000001 from memory into f21
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f13, 0(x2) # load 0xbfc00000 from memory into f13
fadd.s f5, f21, f13, dyn # perform operation
fadd.s f5, f21, f13, rdn # perform operation
fadd.s f5, f21, f13, rmm # perform operation
fadd.s f5, f21, f13, rne # perform operation
fadd.s f5, f21, f13, rtz # perform operation
fadd.s f5, f21, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f21, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f21, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f21, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f21, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f21, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x40000000)
li x24, 0x9e549223 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f2, 0(x2) # load 0x80000001 from memory into f2
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f17, 0(x2) # load 0x40000000 from memory into f17
fadd.s f24, f2, f17, dyn # perform operation
fadd.s f24, f2, f17, rdn # perform operation
fadd.s f24, f2, f17, rmm # perform operation
fadd.s f24, f2, f17, rne # perform operation
fadd.s f24, f2, f17, rtz # perform operation
fadd.s f24, f2, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f2, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f2, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f2, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f2, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f2, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xc0000000)
li x23, 0x9d005588 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f5, 0(x2) # load 0x80000001 from memory into f5
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f2, 0(x2) # load 0xc0000000 from memory into f2
fadd.s f23, f5, f2, dyn # perform operation
fadd.s f23, f5, f2, rdn # perform operation
fadd.s f23, f5, f2, rmm # perform operation
fadd.s f23, f5, f2, rne # perform operation
fadd.s f23, f5, f2, rtz # perform operation
fadd.s f23, f5, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f5, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f5, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f5, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f5, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f5, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x800000)
li x28, 0x4480961e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f1, 0(x2) # load 0x80000001 from memory into f1
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f15, 0(x2) # load 0x00800000 from memory into f15
fadd.s f28, f1, f15, dyn # perform operation
fadd.s f28, f1, f15, rdn # perform operation
fadd.s f28, f1, f15, rmm # perform operation
fadd.s f28, f1, f15, rne # perform operation
fadd.s f28, f1, f15, rtz # perform operation
fadd.s f28, f1, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f1, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f1, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f1, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f1, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f1, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80800000)
li x8, 0x7bd5ca88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f2, 0(x2) # load 0x80000001 from memory into f2
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f30, 0(x2) # load 0x80800000 from memory into f30
fadd.s f8, f2, f30, dyn # perform operation
fadd.s f8, f2, f30, rdn # perform operation
fadd.s f8, f2, f30, rmm # perform operation
fadd.s f8, f2, f30, rne # perform operation
fadd.s f8, f2, f30, rtz # perform operation
fadd.s f8, f2, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f2, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f2, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f2, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f2, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f2, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f7fffff)
li x8, 0x75eba98f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f20, 0(x2) # load 0x80000001 from memory into f20
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f31, 0(x2) # load 0x7f7fffff from memory into f31
fadd.s f8, f20, f31, dyn # perform operation
fadd.s f8, f20, f31, rdn # perform operation
fadd.s f8, f20, f31, rmm # perform operation
fadd.s f8, f20, f31, rne # perform operation
fadd.s f8, f20, f31, rtz # perform operation
fadd.s f8, f20, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f20, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f20, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f20, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f20, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f20, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xff7fffff)
li x22, 0xcb4612ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f15, 0(x2) # load 0x80000001 from memory into f15
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f16, 0(x2) # load 0xff7fffff from memory into f16
fadd.s f22, f15, f16, dyn # perform operation
fadd.s f22, f15, f16, rdn # perform operation
fadd.s f22, f15, f16, rmm # perform operation
fadd.s f22, f15, f16, rne # perform operation
fadd.s f22, f15, f16, rtz # perform operation
fadd.s f22, f15, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f15, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f15, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f15, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f15, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f15, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fffff)
li x16, 0x07d2f12a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f22, 0(x2) # load 0x80000001 from memory into f22
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f23, 0(x2) # load 0x007fffff from memory into f23
fadd.s f16, f22, f23, dyn # perform operation
fadd.s f16, f22, f23, rdn # perform operation
fadd.s f16, f22, f23, rmm # perform operation
fadd.s f16, f22, f23, rne # perform operation
fadd.s f16, f22, f23, rtz # perform operation
fadd.s f16, f22, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f22, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f22, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f22, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f22, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f22, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x807fffff)
li x10, 0x4a223301 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f20, 0(x2) # load 0x80000001 from memory into f20
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f5, 0(x2) # load 0x807fffff from memory into f5
fadd.s f10, f20, f5, dyn # perform operation
fadd.s f10, f20, f5, rdn # perform operation
fadd.s f10, f20, f5, rmm # perform operation
fadd.s f10, f20, f5, rne # perform operation
fadd.s f10, f20, f5, rtz # perform operation
fadd.s f10, f20, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f20, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f20, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f20, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f20, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f20, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x400000)
li x15, 0x5e4499ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f5, 0(x2) # load 0x80000001 from memory into f5
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f1, 0(x2) # load 0x00400000 from memory into f1
fadd.s f15, f5, f1, dyn # perform operation
fadd.s f15, f5, f1, rdn # perform operation
fadd.s f15, f5, f1, rmm # perform operation
fadd.s f15, f5, f1, rne # perform operation
fadd.s f15, f5, f1, rtz # perform operation
fadd.s f15, f5, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f5, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f5, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f5, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f5, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f5, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80400000)
li x5, 0x986f8a36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f6, 0(x2) # load 0x80000001 from memory into f6
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f28, 0(x2) # load 0x80400000 from memory into f28
fadd.s f5, f6, f28, dyn # perform operation
fadd.s f5, f6, f28, rdn # perform operation
fadd.s f5, f6, f28, rmm # perform operation
fadd.s f5, f6, f28, rne # perform operation
fadd.s f5, f6, f28, rtz # perform operation
fadd.s f5, f6, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f6, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f6, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f6, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f6, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f6, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x1)
li x12, 0xa05702b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f8, 0(x2) # load 0x80000001 from memory into f8
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f23, 0(x2) # load 0x00000001 from memory into f23
fadd.s f12, f8, f23, dyn # perform operation
fadd.s f12, f8, f23, rdn # perform operation
fadd.s f12, f8, f23, rmm # perform operation
fadd.s f12, f8, f23, rne # perform operation
fadd.s f12, f8, f23, rtz # perform operation
fadd.s f12, f8, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f8, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f8, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f8, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f8, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f8, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80000001)
li x22, 0xfb2e46ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f15, 0(x2) # load 0x80000001 from memory into f15
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
fadd.s f22, f15, f27, dyn # perform operation
fadd.s f22, f15, f27, rdn # perform operation
fadd.s f22, f15, f27, rmm # perform operation
fadd.s f22, f15, f27, rne # perform operation
fadd.s f22, f15, f27, rtz # perform operation
fadd.s f22, f15, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f15, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f15, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f15, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f15, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f15, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f800000)
li x10, 0xe2cec346 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f6, 0(x2) # load 0x7f800000 from memory into f6
fadd.s f10, f31, f6, dyn # perform operation
fadd.s f10, f31, f6, rdn # perform operation
fadd.s f10, f31, f6, rmm # perform operation
fadd.s f10, f31, f6, rne # perform operation
fadd.s f10, f31, f6, rtz # perform operation
fadd.s f10, f31, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f31, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f31, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f31, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f31, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f31, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xff800000)
li x13, 0xa7d981a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f8, 0(x2) # load 0x80000001 from memory into f8
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f21, 0(x2) # load 0xff800000 from memory into f21
fadd.s f13, f8, f21, dyn # perform operation
fadd.s f13, f8, f21, rdn # perform operation
fadd.s f13, f8, f21, rmm # perform operation
fadd.s f13, f8, f21, rne # perform operation
fadd.s f13, f8, f21, rtz # perform operation
fadd.s f13, f8, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f8, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f8, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f8, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f8, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f8, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fc00000)
li x10, 0x2e9e4e78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f4, 0(x2) # load 0x80000001 from memory into f4
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
fadd.s f10, f4, f18, dyn # perform operation
fadd.s f10, f4, f18, rdn # perform operation
fadd.s f10, f4, f18, rmm # perform operation
fadd.s f10, f4, f18, rne # perform operation
fadd.s f10, f4, f18, rtz # perform operation
fadd.s f10, f4, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f4, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f4, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f4, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f4, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f4, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fffffff)
li x24, 0xadd5b679 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f6, 0(x2) # load 0x80000001 from memory into f6
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f15, 0(x2) # load 0x7fffffff from memory into f15
fadd.s f24, f6, f15, dyn # perform operation
fadd.s f24, f6, f15, rdn # perform operation
fadd.s f24, f6, f15, rmm # perform operation
fadd.s f24, f6, f15, rne # perform operation
fadd.s f24, f6, f15, rtz # perform operation
fadd.s f24, f6, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f6, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f6, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f6, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f6, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f6, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f800001)
li x11, 0x9b37b6a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f13, 0(x2) # load 0x80000001 from memory into f13
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f28, 0(x2) # load 0x7f800001 from memory into f28
fadd.s f11, f13, f28, dyn # perform operation
fadd.s f11, f13, f28, rdn # perform operation
fadd.s f11, f13, f28, rmm # perform operation
fadd.s f11, f13, f28, rne # perform operation
fadd.s f11, f13, f28, rtz # perform operation
fadd.s f11, f13, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f13, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f13, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f13, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f13, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f13, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fbfffff)
li x17, 0x02729cf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f28, 0(x2) # load 0x80000001 from memory into f28
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f10, 0(x2) # load 0x7fbfffff from memory into f10
fadd.s f17, f28, f10, dyn # perform operation
fadd.s f17, f28, f10, rdn # perform operation
fadd.s f17, f28, f10, rmm # perform operation
fadd.s f17, f28, f10, rne # perform operation
fadd.s f17, f28, f10, rtz # perform operation
fadd.s f17, f28, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f28, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f28, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f28, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f28, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f28, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7ef8654f)
li x24, 0xde8c7c57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f28, 0(x2) # load 0x80000001 from memory into f28
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f20, 0(x2) # load 0x7ef8654f from memory into f20
fadd.s f24, f28, f20, dyn # perform operation
fadd.s f24, f28, f20, rdn # perform operation
fadd.s f24, f28, f20, rmm # perform operation
fadd.s f24, f28, f20, rne # perform operation
fadd.s f24, f28, f20, rtz # perform operation
fadd.s f24, f28, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f28, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f28, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f28, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f28, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f28, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x813d9ab0)
li x27, 0xe8a6dc90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
fadd.s f27, f18, f17, dyn # perform operation
fadd.s f27, f18, f17, rdn # perform operation
fadd.s f27, f18, f17, rmm # perform operation
fadd.s f27, f18, f17, rne # perform operation
fadd.s f27, f18, f17, rtz # perform operation
fadd.s f27, f18, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f18, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f18, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f18, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f18, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f18, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x0)
li x25, 0x64adf75b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f14, 0(x2) # load 0x7f800000 from memory into f14
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f17, 0(x2) # load 0x00000000 from memory into f17
fadd.s f25, f14, f17, dyn # perform operation
fadd.s f25, f14, f17, rdn # perform operation
fadd.s f25, f14, f17, rmm # perform operation
fadd.s f25, f14, f17, rne # perform operation
fadd.s f25, f14, f17, rtz # perform operation
fadd.s f25, f14, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f14, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f14, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f14, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f14, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f14, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80000000)
li x13, 0x18af6258 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f17, 0(x2) # load 0x7f800000 from memory into f17
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f15, 0(x2) # load 0x80000000 from memory into f15
fadd.s f13, f17, f15, dyn # perform operation
fadd.s f13, f17, f15, rdn # perform operation
fadd.s f13, f17, f15, rmm # perform operation
fadd.s f13, f17, f15, rne # perform operation
fadd.s f13, f17, f15, rtz # perform operation
fadd.s f13, f17, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f17, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f17, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f17, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f17, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f17, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x3f800000)
li x24, 0x97b4612c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f2, 0(x2) # load 0x7f800000 from memory into f2
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f16, 0(x2) # load 0x3f800000 from memory into f16
fadd.s f24, f2, f16, dyn # perform operation
fadd.s f24, f2, f16, rdn # perform operation
fadd.s f24, f2, f16, rmm # perform operation
fadd.s f24, f2, f16, rne # perform operation
fadd.s f24, f2, f16, rtz # perform operation
fadd.s f24, f2, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f2, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f2, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f2, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f2, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f2, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xbf800000)
li x23, 0x2a7183a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f15, 0(x2) # load 0xbf800000 from memory into f15
fadd.s f23, f31, f15, dyn # perform operation
fadd.s f23, f31, f15, rdn # perform operation
fadd.s f23, f31, f15, rmm # perform operation
fadd.s f23, f31, f15, rne # perform operation
fadd.s f23, f31, f15, rtz # perform operation
fadd.s f23, f31, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f31, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f31, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f31, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f31, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f31, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x3fc00000)
li x24, 0xb136a3e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f28, 0(x2) # load 0x7f800000 from memory into f28
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f30, 0(x2) # load 0x3fc00000 from memory into f30
fadd.s f24, f28, f30, dyn # perform operation
fadd.s f24, f28, f30, rdn # perform operation
fadd.s f24, f28, f30, rmm # perform operation
fadd.s f24, f28, f30, rne # perform operation
fadd.s f24, f28, f30, rtz # perform operation
fadd.s f24, f28, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f28, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f28, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f28, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f28, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f28, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xbfc00000)
li x14, 0x17626721 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f8, 0(x2) # load 0xbfc00000 from memory into f8
fadd.s f14, f31, f8, dyn # perform operation
fadd.s f14, f31, f8, rdn # perform operation
fadd.s f14, f31, f8, rmm # perform operation
fadd.s f14, f31, f8, rne # perform operation
fadd.s f14, f31, f8, rtz # perform operation
fadd.s f14, f31, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f31, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f31, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f31, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f31, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f31, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x40000000)
li x2, 0x59ec100c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f6, 0(x2) # load 0x7f800000 from memory into f6
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f14, 0(x2) # load 0x40000000 from memory into f14
fadd.s f2, f6, f14, dyn # perform operation
fadd.s f2, f6, f14, rdn # perform operation
fadd.s f2, f6, f14, rmm # perform operation
fadd.s f2, f6, f14, rne # perform operation
fadd.s f2, f6, f14, rtz # perform operation
fadd.s f2, f6, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f6, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f6, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f6, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f6, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f6, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xc0000000)
li x2, 0x6cb57409 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f25, 0(x2) # load 0x7f800000 from memory into f25
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f22, 0(x2) # load 0xc0000000 from memory into f22
fadd.s f2, f25, f22, dyn # perform operation
fadd.s f2, f25, f22, rdn # perform operation
fadd.s f2, f25, f22, rmm # perform operation
fadd.s f2, f25, f22, rne # perform operation
fadd.s f2, f25, f22, rtz # perform operation
fadd.s f2, f25, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f25, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f25, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f25, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f25, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f25, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x800000)
li x18, 0xf905f124 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f1, 0(x2) # load 0x00800000 from memory into f1
fadd.s f18, f31, f1, dyn # perform operation
fadd.s f18, f31, f1, rdn # perform operation
fadd.s f18, f31, f1, rmm # perform operation
fadd.s f18, f31, f1, rne # perform operation
fadd.s f18, f31, f1, rtz # perform operation
fadd.s f18, f31, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f31, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f31, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f31, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f31, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f31, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80800000)
li x10, 0x49af5ee1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f4, 0(x2) # load 0x7f800000 from memory into f4
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f25, 0(x2) # load 0x80800000 from memory into f25
fadd.s f10, f4, f25, dyn # perform operation
fadd.s f10, f4, f25, rdn # perform operation
fadd.s f10, f4, f25, rmm # perform operation
fadd.s f10, f4, f25, rne # perform operation
fadd.s f10, f4, f25, rtz # perform operation
fadd.s f10, f4, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f4, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f4, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f4, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f4, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f4, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f7fffff)
li x21, 0xb76db95b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f6, 0(x2) # load 0x7f800000 from memory into f6
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
fadd.s f21, f6, f16, dyn # perform operation
fadd.s f21, f6, f16, rdn # perform operation
fadd.s f21, f6, f16, rmm # perform operation
fadd.s f21, f6, f16, rne # perform operation
fadd.s f21, f6, f16, rtz # perform operation
fadd.s f21, f6, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f6, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f6, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f6, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f6, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f6, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xff7fffff)
li x16, 0x7b28df43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f30, 0(x2) # load 0x7f800000 from memory into f30
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f3, 0(x2) # load 0xff7fffff from memory into f3
fadd.s f16, f30, f3, dyn # perform operation
fadd.s f16, f30, f3, rdn # perform operation
fadd.s f16, f30, f3, rmm # perform operation
fadd.s f16, f30, f3, rne # perform operation
fadd.s f16, f30, f3, rtz # perform operation
fadd.s f16, f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f30, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fffff)
li x10, 0x943abc9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f15, 0(x2) # load 0x7f800000 from memory into f15
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f21, 0(x2) # load 0x007fffff from memory into f21
fadd.s f10, f15, f21, dyn # perform operation
fadd.s f10, f15, f21, rdn # perform operation
fadd.s f10, f15, f21, rmm # perform operation
fadd.s f10, f15, f21, rne # perform operation
fadd.s f10, f15, f21, rtz # perform operation
fadd.s f10, f15, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f15, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f15, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f15, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f15, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f15, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x807fffff)
li x19, 0x180388e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f12, 0(x2) # load 0x7f800000 from memory into f12
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f26, 0(x2) # load 0x807fffff from memory into f26
fadd.s f19, f12, f26, dyn # perform operation
fadd.s f19, f12, f26, rdn # perform operation
fadd.s f19, f12, f26, rmm # perform operation
fadd.s f19, f12, f26, rne # perform operation
fadd.s f19, f12, f26, rtz # perform operation
fadd.s f19, f12, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f12, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f12, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f12, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f12, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f12, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x400000)
li x8, 0xd8ab66e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f12, 0(x2) # load 0x7f800000 from memory into f12
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f30, 0(x2) # load 0x00400000 from memory into f30
fadd.s f8, f12, f30, dyn # perform operation
fadd.s f8, f12, f30, rdn # perform operation
fadd.s f8, f12, f30, rmm # perform operation
fadd.s f8, f12, f30, rne # perform operation
fadd.s f8, f12, f30, rtz # perform operation
fadd.s f8, f12, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f12, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f12, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f12, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f12, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f12, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80400000)
li x14, 0x8cfed97a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f9, 0(x2) # load 0x7f800000 from memory into f9
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f20, 0(x2) # load 0x80400000 from memory into f20
fadd.s f14, f9, f20, dyn # perform operation
fadd.s f14, f9, f20, rdn # perform operation
fadd.s f14, f9, f20, rmm # perform operation
fadd.s f14, f9, f20, rne # perform operation
fadd.s f14, f9, f20, rtz # perform operation
fadd.s f14, f9, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f9, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f9, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f9, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f9, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f9, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x1)
li x21, 0x29c94864 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f1, 0(x2) # load 0x7f800000 from memory into f1
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f4, 0(x2) # load 0x00000001 from memory into f4
fadd.s f21, f1, f4, dyn # perform operation
fadd.s f21, f1, f4, rdn # perform operation
fadd.s f21, f1, f4, rmm # perform operation
fadd.s f21, f1, f4, rne # perform operation
fadd.s f21, f1, f4, rtz # perform operation
fadd.s f21, f1, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f1, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f1, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f1, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f1, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f1, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80000001)
li x30, 0x95e50657 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f1, 0(x2) # load 0x7f800000 from memory into f1
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f21, 0(x2) # load 0x80000001 from memory into f21
fadd.s f30, f1, f21, dyn # perform operation
fadd.s f30, f1, f21, rdn # perform operation
fadd.s f30, f1, f21, rmm # perform operation
fadd.s f30, f1, f21, rne # perform operation
fadd.s f30, f1, f21, rtz # perform operation
fadd.s f30, f1, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f1, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f1, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f1, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f1, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f1, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f800000)
li x15, 0x1299e7f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f3, 0(x2) # load 0x7f800000 from memory into f3
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f16, 0(x2) # load 0x7f800000 from memory into f16
fadd.s f15, f3, f16, dyn # perform operation
fadd.s f15, f3, f16, rdn # perform operation
fadd.s f15, f3, f16, rmm # perform operation
fadd.s f15, f3, f16, rne # perform operation
fadd.s f15, f3, f16, rtz # perform operation
fadd.s f15, f3, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f3, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f3, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f3, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f3, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f3, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xff800000)
li x12, 0x82fbe316 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f1, 0(x2) # load 0x7f800000 from memory into f1
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
fadd.s f12, f1, f14, dyn # perform operation
fadd.s f12, f1, f14, rdn # perform operation
fadd.s f12, f1, f14, rmm # perform operation
fadd.s f12, f1, f14, rne # perform operation
fadd.s f12, f1, f14, rtz # perform operation
fadd.s f12, f1, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f1, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f1, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f1, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f1, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f1, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fc00000)
li x24, 0x23312706 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f30, 0(x2) # load 0x7fc00000 from memory into f30
fadd.s f24, f7, f30, dyn # perform operation
fadd.s f24, f7, f30, rdn # perform operation
fadd.s f24, f7, f30, rmm # perform operation
fadd.s f24, f7, f30, rne # perform operation
fadd.s f24, f7, f30, rtz # perform operation
fadd.s f24, f7, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f7, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f7, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f7, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f7, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f7, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fffffff)
li x25, 0xccf27fdc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f20, 0(x2) # load 0x7f800000 from memory into f20
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f1, 0(x2) # load 0x7fffffff from memory into f1
fadd.s f25, f20, f1, dyn # perform operation
fadd.s f25, f20, f1, rdn # perform operation
fadd.s f25, f20, f1, rmm # perform operation
fadd.s f25, f20, f1, rne # perform operation
fadd.s f25, f20, f1, rtz # perform operation
fadd.s f25, f20, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f20, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f20, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f20, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f20, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f20, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f800001)
li x19, 0x0907f828 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f1, 0(x2) # load 0x7f800000 from memory into f1
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f6, 0(x2) # load 0x7f800001 from memory into f6
fadd.s f19, f1, f6, dyn # perform operation
fadd.s f19, f1, f6, rdn # perform operation
fadd.s f19, f1, f6, rmm # perform operation
fadd.s f19, f1, f6, rne # perform operation
fadd.s f19, f1, f6, rtz # perform operation
fadd.s f19, f1, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f1, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f1, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f1, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f1, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f1, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fbfffff)
li x28, 0x22dd7033 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f13, 0(x2) # load 0x7f800000 from memory into f13
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f18, 0(x2) # load 0x7fbfffff from memory into f18
fadd.s f28, f13, f18, dyn # perform operation
fadd.s f28, f13, f18, rdn # perform operation
fadd.s f28, f13, f18, rmm # perform operation
fadd.s f28, f13, f18, rne # perform operation
fadd.s f28, f13, f18, rtz # perform operation
fadd.s f28, f13, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f13, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f13, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f13, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f13, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f13, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7ef8654f)
li x9, 0x2b5062fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f23, 0(x2) # load 0x7f800000 from memory into f23
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f15, 0(x2) # load 0x7ef8654f from memory into f15
fadd.s f9, f23, f15, dyn # perform operation
fadd.s f9, f23, f15, rdn # perform operation
fadd.s f9, f23, f15, rmm # perform operation
fadd.s f9, f23, f15, rne # perform operation
fadd.s f9, f23, f15, rtz # perform operation
fadd.s f9, f23, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f23, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f23, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f23, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f23, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f23, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x813d9ab0)
li x10, 0x821c000c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f20, 0(x2) # load 0x7f800000 from memory into f20
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f9, 0(x2) # load 0x813d9ab0 from memory into f9
fadd.s f10, f20, f9, dyn # perform operation
fadd.s f10, f20, f9, rdn # perform operation
fadd.s f10, f20, f9, rmm # perform operation
fadd.s f10, f20, f9, rne # perform operation
fadd.s f10, f20, f9, rtz # perform operation
fadd.s f10, f20, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f20, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f20, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f20, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f20, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f20, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x0)
li x13, 0xcd22e36a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f27, 0(x2) # load 0xff800000 from memory into f27
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f10, 0(x2) # load 0x00000000 from memory into f10
fadd.s f13, f27, f10, dyn # perform operation
fadd.s f13, f27, f10, rdn # perform operation
fadd.s f13, f27, f10, rmm # perform operation
fadd.s f13, f27, f10, rne # perform operation
fadd.s f13, f27, f10, rtz # perform operation
fadd.s f13, f27, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f27, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f27, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f27, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f27, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f27, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80000000)
li x14, 0x364db73a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f17, 0(x2) # load 0xff800000 from memory into f17
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f11, 0(x2) # load 0x80000000 from memory into f11
fadd.s f14, f17, f11, dyn # perform operation
fadd.s f14, f17, f11, rdn # perform operation
fadd.s f14, f17, f11, rmm # perform operation
fadd.s f14, f17, f11, rne # perform operation
fadd.s f14, f17, f11, rtz # perform operation
fadd.s f14, f17, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f17, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f17, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f17, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f17, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f17, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x3f800000)
li x27, 0x82ce7a66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f26, 0(x2) # load 0xff800000 from memory into f26
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f13, 0(x2) # load 0x3f800000 from memory into f13
fadd.s f27, f26, f13, dyn # perform operation
fadd.s f27, f26, f13, rdn # perform operation
fadd.s f27, f26, f13, rmm # perform operation
fadd.s f27, f26, f13, rne # perform operation
fadd.s f27, f26, f13, rtz # perform operation
fadd.s f27, f26, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f26, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f26, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f26, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f26, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f26, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xbf800000)
li x8, 0x3ed81015 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f28, 0(x2) # load 0xff800000 from memory into f28
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f25, 0(x2) # load 0xbf800000 from memory into f25
fadd.s f8, f28, f25, dyn # perform operation
fadd.s f8, f28, f25, rdn # perform operation
fadd.s f8, f28, f25, rmm # perform operation
fadd.s f8, f28, f25, rne # perform operation
fadd.s f8, f28, f25, rtz # perform operation
fadd.s f8, f28, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f8, f28, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f8, f28, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f8, f28, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f8, f28, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f8, f28, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x3fc00000)
li x11, 0xfa69bf96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f26, 0(x2) # load 0x3fc00000 from memory into f26
fadd.s f11, f30, f26, dyn # perform operation
fadd.s f11, f30, f26, rdn # perform operation
fadd.s f11, f30, f26, rmm # perform operation
fadd.s f11, f30, f26, rne # perform operation
fadd.s f11, f30, f26, rtz # perform operation
fadd.s f11, f30, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f30, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f30, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f30, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f30, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f30, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xbfc00000)
li x25, 0xafab19a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f26, 0(x2) # load 0xff800000 from memory into f26
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f1, 0(x2) # load 0xbfc00000 from memory into f1
fadd.s f25, f26, f1, dyn # perform operation
fadd.s f25, f26, f1, rdn # perform operation
fadd.s f25, f26, f1, rmm # perform operation
fadd.s f25, f26, f1, rne # perform operation
fadd.s f25, f26, f1, rtz # perform operation
fadd.s f25, f26, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f26, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f26, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f26, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f26, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f26, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x40000000)
li x17, 0x6aa65679 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f19, 0(x2) # load 0xff800000 from memory into f19
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f27, 0(x2) # load 0x40000000 from memory into f27
fadd.s f17, f19, f27, dyn # perform operation
fadd.s f17, f19, f27, rdn # perform operation
fadd.s f17, f19, f27, rmm # perform operation
fadd.s f17, f19, f27, rne # perform operation
fadd.s f17, f19, f27, rtz # perform operation
fadd.s f17, f19, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f19, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f19, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f19, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f19, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f19, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xc0000000)
li x12, 0x791cdd8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f11, 0(x2) # load 0xc0000000 from memory into f11
fadd.s f12, f14, f11, dyn # perform operation
fadd.s f12, f14, f11, rdn # perform operation
fadd.s f12, f14, f11, rmm # perform operation
fadd.s f12, f14, f11, rne # perform operation
fadd.s f12, f14, f11, rtz # perform operation
fadd.s f12, f14, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f14, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f14, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f14, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f14, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f14, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x800000)
li x12, 0xeab74716 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f24, 0(x2) # load 0xff800000 from memory into f24
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f2, 0(x2) # load 0x00800000 from memory into f2
fadd.s f12, f24, f2, dyn # perform operation
fadd.s f12, f24, f2, rdn # perform operation
fadd.s f12, f24, f2, rmm # perform operation
fadd.s f12, f24, f2, rne # perform operation
fadd.s f12, f24, f2, rtz # perform operation
fadd.s f12, f24, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f24, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f24, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f24, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f24, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f24, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80800000)
li x20, 0x76a21a39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f5, 0(x2) # load 0xff800000 from memory into f5
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
fadd.s f20, f5, f28, dyn # perform operation
fadd.s f20, f5, f28, rdn # perform operation
fadd.s f20, f5, f28, rmm # perform operation
fadd.s f20, f5, f28, rne # perform operation
fadd.s f20, f5, f28, rtz # perform operation
fadd.s f20, f5, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f5, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f5, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f5, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f5, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f5, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f7fffff)
li x15, 0xc22ea8a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f28, 0(x2) # load 0xff800000 from memory into f28
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f24, 0(x2) # load 0x7f7fffff from memory into f24
fadd.s f15, f28, f24, dyn # perform operation
fadd.s f15, f28, f24, rdn # perform operation
fadd.s f15, f28, f24, rmm # perform operation
fadd.s f15, f28, f24, rne # perform operation
fadd.s f15, f28, f24, rtz # perform operation
fadd.s f15, f28, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f28, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f28, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f28, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f28, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f28, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xff7fffff)
li x4, 0x93b14025 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f1, 0(x2) # load 0xff800000 from memory into f1
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f9, 0(x2) # load 0xff7fffff from memory into f9
fadd.s f4, f1, f9, dyn # perform operation
fadd.s f4, f1, f9, rdn # perform operation
fadd.s f4, f1, f9, rmm # perform operation
fadd.s f4, f1, f9, rne # perform operation
fadd.s f4, f1, f9, rtz # perform operation
fadd.s f4, f1, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f1, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f1, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f1, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f1, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f1, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fffff)
li x31, 0xd119937d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f19, 0(x2) # load 0xff800000 from memory into f19
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f21, 0(x2) # load 0x007fffff from memory into f21
fadd.s f31, f19, f21, dyn # perform operation
fadd.s f31, f19, f21, rdn # perform operation
fadd.s f31, f19, f21, rmm # perform operation
fadd.s f31, f19, f21, rne # perform operation
fadd.s f31, f19, f21, rtz # perform operation
fadd.s f31, f19, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f19, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f19, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f19, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f19, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f19, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x807fffff)
li x26, 0x8345eb04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f18, 0(x2) # load 0xff800000 from memory into f18
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f7, 0(x2) # load 0x807fffff from memory into f7
fadd.s f26, f18, f7, dyn # perform operation
fadd.s f26, f18, f7, rdn # perform operation
fadd.s f26, f18, f7, rmm # perform operation
fadd.s f26, f18, f7, rne # perform operation
fadd.s f26, f18, f7, rtz # perform operation
fadd.s f26, f18, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f18, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f18, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f18, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f18, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f18, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x400000)
li x22, 0xc702cd4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f27, 0(x2) # load 0xff800000 from memory into f27
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f8, 0(x2) # load 0x00400000 from memory into f8
fadd.s f22, f27, f8, dyn # perform operation
fadd.s f22, f27, f8, rdn # perform operation
fadd.s f22, f27, f8, rmm # perform operation
fadd.s f22, f27, f8, rne # perform operation
fadd.s f22, f27, f8, rtz # perform operation
fadd.s f22, f27, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f27, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f27, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f27, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f27, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f27, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80400000)
li x3, 0xe0ff5666 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f22, 0(x2) # load 0xff800000 from memory into f22
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f8, 0(x2) # load 0x80400000 from memory into f8
fadd.s f3, f22, f8, dyn # perform operation
fadd.s f3, f22, f8, rdn # perform operation
fadd.s f3, f22, f8, rmm # perform operation
fadd.s f3, f22, f8, rne # perform operation
fadd.s f3, f22, f8, rtz # perform operation
fadd.s f3, f22, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f22, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f22, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f22, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f22, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f22, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x1)
li x30, 0x2f9f19b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f8, 0(x2) # load 0xff800000 from memory into f8
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f9, 0(x2) # load 0x00000001 from memory into f9
fadd.s f30, f8, f9, dyn # perform operation
fadd.s f30, f8, f9, rdn # perform operation
fadd.s f30, f8, f9, rmm # perform operation
fadd.s f30, f8, f9, rne # perform operation
fadd.s f30, f8, f9, rtz # perform operation
fadd.s f30, f8, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f8, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f8, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f8, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f8, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f8, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80000001)
li x23, 0x55ede734 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f12, 0(x2) # load 0xff800000 from memory into f12
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f25, 0(x2) # load 0x80000001 from memory into f25
fadd.s f23, f12, f25, dyn # perform operation
fadd.s f23, f12, f25, rdn # perform operation
fadd.s f23, f12, f25, rmm # perform operation
fadd.s f23, f12, f25, rne # perform operation
fadd.s f23, f12, f25, rtz # perform operation
fadd.s f23, f12, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f12, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f12, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f12, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f12, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f12, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f800000)
li x13, 0x844bda2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f20, 0(x2) # load 0x7f800000 from memory into f20
fadd.s f13, f14, f20, dyn # perform operation
fadd.s f13, f14, f20, rdn # perform operation
fadd.s f13, f14, f20, rmm # perform operation
fadd.s f13, f14, f20, rne # perform operation
fadd.s f13, f14, f20, rtz # perform operation
fadd.s f13, f14, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f14, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f14, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f14, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f14, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f14, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xff800000)
li x24, 0xb502327b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f3, 0(x2) # load 0xff800000 from memory into f3
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f20, 0(x2) # load 0xff800000 from memory into f20
fadd.s f24, f3, f20, dyn # perform operation
fadd.s f24, f3, f20, rdn # perform operation
fadd.s f24, f3, f20, rmm # perform operation
fadd.s f24, f3, f20, rne # perform operation
fadd.s f24, f3, f20, rtz # perform operation
fadd.s f24, f3, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f3, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f3, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f3, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f3, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f3, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fc00000)
li x14, 0x2a1c0749 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f2, 0(x2) # load 0xff800000 from memory into f2
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
fadd.s f14, f2, f10, dyn # perform operation
fadd.s f14, f2, f10, rdn # perform operation
fadd.s f14, f2, f10, rmm # perform operation
fadd.s f14, f2, f10, rne # perform operation
fadd.s f14, f2, f10, rtz # perform operation
fadd.s f14, f2, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f2, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f2, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f2, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f2, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f2, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fffffff)
li x14, 0xd2250912 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f27, 0(x2) # load 0xff800000 from memory into f27
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f11, 0(x2) # load 0x7fffffff from memory into f11
fadd.s f14, f27, f11, dyn # perform operation
fadd.s f14, f27, f11, rdn # perform operation
fadd.s f14, f27, f11, rmm # perform operation
fadd.s f14, f27, f11, rne # perform operation
fadd.s f14, f27, f11, rtz # perform operation
fadd.s f14, f27, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f27, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f27, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f27, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f27, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f27, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f800001)
li x21, 0xa5bcd342 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f10, 0(x2) # load 0xff800000 from memory into f10
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f17, 0(x2) # load 0x7f800001 from memory into f17
fadd.s f21, f10, f17, dyn # perform operation
fadd.s f21, f10, f17, rdn # perform operation
fadd.s f21, f10, f17, rmm # perform operation
fadd.s f21, f10, f17, rne # perform operation
fadd.s f21, f10, f17, rtz # perform operation
fadd.s f21, f10, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f10, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f10, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f10, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f10, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f10, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fbfffff)
li x16, 0x935beff3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f19, 0(x2) # load 0xff800000 from memory into f19
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f26, 0(x2) # load 0x7fbfffff from memory into f26
fadd.s f16, f19, f26, dyn # perform operation
fadd.s f16, f19, f26, rdn # perform operation
fadd.s f16, f19, f26, rmm # perform operation
fadd.s f16, f19, f26, rne # perform operation
fadd.s f16, f19, f26, rtz # perform operation
fadd.s f16, f19, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f19, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f19, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f19, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f19, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f19, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7ef8654f)
li x1, 0x88dfe55b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f21, 0(x2) # load 0xff800000 from memory into f21
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f27, 0(x2) # load 0x7ef8654f from memory into f27
fadd.s f1, f21, f27, dyn # perform operation
fadd.s f1, f21, f27, rdn # perform operation
fadd.s f1, f21, f27, rmm # perform operation
fadd.s f1, f21, f27, rne # perform operation
fadd.s f1, f21, f27, rtz # perform operation
fadd.s f1, f21, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f21, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f21, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f21, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f21, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f21, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x813d9ab0)
li x21, 0xf162f1c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
fadd.s f21, f30, f22, dyn # perform operation
fadd.s f21, f30, f22, rdn # perform operation
fadd.s f21, f30, f22, rmm # perform operation
fadd.s f21, f30, f22, rne # perform operation
fadd.s f21, f30, f22, rtz # perform operation
fadd.s f21, f30, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f21, f30, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f21, f30, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f21, f30, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f21, f30, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f21, f30, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x0)
li x13, 0x7214c586 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f6, 0(x2) # load 0x7fc00000 from memory into f6
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f22, 0(x2) # load 0x00000000 from memory into f22
fadd.s f13, f6, f22, dyn # perform operation
fadd.s f13, f6, f22, rdn # perform operation
fadd.s f13, f6, f22, rmm # perform operation
fadd.s f13, f6, f22, rne # perform operation
fadd.s f13, f6, f22, rtz # perform operation
fadd.s f13, f6, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f6, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f6, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f6, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f6, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f6, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80000000)
li x23, 0xd0a3bcfb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f27, 0(x2) # load 0x7fc00000 from memory into f27
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f15, 0(x2) # load 0x80000000 from memory into f15
fadd.s f23, f27, f15, dyn # perform operation
fadd.s f23, f27, f15, rdn # perform operation
fadd.s f23, f27, f15, rmm # perform operation
fadd.s f23, f27, f15, rne # perform operation
fadd.s f23, f27, f15, rtz # perform operation
fadd.s f23, f27, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f27, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f27, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f27, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f27, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f27, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x3f800000)
li x27, 0xb333cb8a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f14, 0(x2) # load 0x7fc00000 from memory into f14
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f1, 0(x2) # load 0x3f800000 from memory into f1
fadd.s f27, f14, f1, dyn # perform operation
fadd.s f27, f14, f1, rdn # perform operation
fadd.s f27, f14, f1, rmm # perform operation
fadd.s f27, f14, f1, rne # perform operation
fadd.s f27, f14, f1, rtz # perform operation
fadd.s f27, f14, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f14, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f14, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f14, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f14, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f14, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xbf800000)
li x23, 0xdcd78512 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f9, 0(x2) # load 0x7fc00000 from memory into f9
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f28, 0(x2) # load 0xbf800000 from memory into f28
fadd.s f23, f9, f28, dyn # perform operation
fadd.s f23, f9, f28, rdn # perform operation
fadd.s f23, f9, f28, rmm # perform operation
fadd.s f23, f9, f28, rne # perform operation
fadd.s f23, f9, f28, rtz # perform operation
fadd.s f23, f9, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f9, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f9, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f9, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f9, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f9, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x3fc00000)
li x24, 0xdeef7812 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f17, 0(x2) # load 0x7fc00000 from memory into f17
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f2, 0(x2) # load 0x3fc00000 from memory into f2
fadd.s f24, f17, f2, dyn # perform operation
fadd.s f24, f17, f2, rdn # perform operation
fadd.s f24, f17, f2, rmm # perform operation
fadd.s f24, f17, f2, rne # perform operation
fadd.s f24, f17, f2, rtz # perform operation
fadd.s f24, f17, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f17, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f17, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f17, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f17, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f17, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xbfc00000)
li x11, 0xdc716c68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f20, 0(x2) # load 0x7fc00000 from memory into f20
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f1, 0(x2) # load 0xbfc00000 from memory into f1
fadd.s f11, f20, f1, dyn # perform operation
fadd.s f11, f20, f1, rdn # perform operation
fadd.s f11, f20, f1, rmm # perform operation
fadd.s f11, f20, f1, rne # perform operation
fadd.s f11, f20, f1, rtz # perform operation
fadd.s f11, f20, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f20, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f20, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f20, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f20, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f20, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x40000000)
li x15, 0xbf5fad6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f31, 0(x2) # load 0x7fc00000 from memory into f31
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f17, 0(x2) # load 0x40000000 from memory into f17
fadd.s f15, f31, f17, dyn # perform operation
fadd.s f15, f31, f17, rdn # perform operation
fadd.s f15, f31, f17, rmm # perform operation
fadd.s f15, f31, f17, rne # perform operation
fadd.s f15, f31, f17, rtz # perform operation
fadd.s f15, f31, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f31, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f31, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f31, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f31, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f31, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xc0000000)
li x30, 0x36598ccb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f12, 0(x2) # load 0x7fc00000 from memory into f12
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f27, 0(x2) # load 0xc0000000 from memory into f27
fadd.s f30, f12, f27, dyn # perform operation
fadd.s f30, f12, f27, rdn # perform operation
fadd.s f30, f12, f27, rmm # perform operation
fadd.s f30, f12, f27, rne # perform operation
fadd.s f30, f12, f27, rtz # perform operation
fadd.s f30, f12, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f12, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f12, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f12, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f12, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f12, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x800000)
li x2, 0xb25d580d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f14, 0(x2) # load 0x7fc00000 from memory into f14
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f16, 0(x2) # load 0x00800000 from memory into f16
fadd.s f2, f14, f16, dyn # perform operation
fadd.s f2, f14, f16, rdn # perform operation
fadd.s f2, f14, f16, rmm # perform operation
fadd.s f2, f14, f16, rne # perform operation
fadd.s f2, f14, f16, rtz # perform operation
fadd.s f2, f14, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f14, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f14, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f14, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f14, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f14, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80800000)
li x28, 0x4de6ff5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f19, 0(x2) # load 0x7fc00000 from memory into f19
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f6, 0(x2) # load 0x80800000 from memory into f6
fadd.s f28, f19, f6, dyn # perform operation
fadd.s f28, f19, f6, rdn # perform operation
fadd.s f28, f19, f6, rmm # perform operation
fadd.s f28, f19, f6, rne # perform operation
fadd.s f28, f19, f6, rtz # perform operation
fadd.s f28, f19, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f19, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f19, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f19, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f19, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f19, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f7fffff)
li x24, 0x86e3612e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f20, 0(x2) # load 0x7fc00000 from memory into f20
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f12, 0(x2) # load 0x7f7fffff from memory into f12
fadd.s f24, f20, f12, dyn # perform operation
fadd.s f24, f20, f12, rdn # perform operation
fadd.s f24, f20, f12, rmm # perform operation
fadd.s f24, f20, f12, rne # perform operation
fadd.s f24, f20, f12, rtz # perform operation
fadd.s f24, f20, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f20, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f20, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f20, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f20, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f20, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xff7fffff)
li x15, 0x4c6606e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f6, 0(x2) # load 0x7fc00000 from memory into f6
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
fadd.s f15, f6, f31, dyn # perform operation
fadd.s f15, f6, f31, rdn # perform operation
fadd.s f15, f6, f31, rmm # perform operation
fadd.s f15, f6, f31, rne # perform operation
fadd.s f15, f6, f31, rtz # perform operation
fadd.s f15, f6, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f6, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f6, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f6, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f6, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f6, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fffff)
li x22, 0x7c790c9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f30, 0(x2) # load 0x7fc00000 from memory into f30
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f9, 0(x2) # load 0x007fffff from memory into f9
fadd.s f22, f30, f9, dyn # perform operation
fadd.s f22, f30, f9, rdn # perform operation
fadd.s f22, f30, f9, rmm # perform operation
fadd.s f22, f30, f9, rne # perform operation
fadd.s f22, f30, f9, rtz # perform operation
fadd.s f22, f30, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f30, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f30, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f30, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f30, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f30, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x807fffff)
li x25, 0x58dad0e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f5, 0(x2) # load 0x7fc00000 from memory into f5
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
fadd.s f25, f5, f2, dyn # perform operation
fadd.s f25, f5, f2, rdn # perform operation
fadd.s f25, f5, f2, rmm # perform operation
fadd.s f25, f5, f2, rne # perform operation
fadd.s f25, f5, f2, rtz # perform operation
fadd.s f25, f5, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f5, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f5, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f5, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f5, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f5, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x400000)
li x1, 0x3af6f85d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f8, 0(x2) # load 0x7fc00000 from memory into f8
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f2, 0(x2) # load 0x00400000 from memory into f2
fadd.s f1, f8, f2, dyn # perform operation
fadd.s f1, f8, f2, rdn # perform operation
fadd.s f1, f8, f2, rmm # perform operation
fadd.s f1, f8, f2, rne # perform operation
fadd.s f1, f8, f2, rtz # perform operation
fadd.s f1, f8, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f8, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f8, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f8, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f8, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f8, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80400000)
li x26, 0xb8af3cad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f20, 0(x2) # load 0x7fc00000 from memory into f20
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f28, 0(x2) # load 0x80400000 from memory into f28
fadd.s f26, f20, f28, dyn # perform operation
fadd.s f26, f20, f28, rdn # perform operation
fadd.s f26, f20, f28, rmm # perform operation
fadd.s f26, f20, f28, rne # perform operation
fadd.s f26, f20, f28, rtz # perform operation
fadd.s f26, f20, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f20, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f20, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f20, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f20, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f20, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x1)
li x10, 0x17173ac1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f20, 0(x2) # load 0x7fc00000 from memory into f20
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f26, 0(x2) # load 0x00000001 from memory into f26
fadd.s f10, f20, f26, dyn # perform operation
fadd.s f10, f20, f26, rdn # perform operation
fadd.s f10, f20, f26, rmm # perform operation
fadd.s f10, f20, f26, rne # perform operation
fadd.s f10, f20, f26, rtz # perform operation
fadd.s f10, f20, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f20, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f20, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f20, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f20, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f20, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80000001)
li x10, 0x847d01ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f15, 0(x2) # load 0x7fc00000 from memory into f15
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f11, 0(x2) # load 0x80000001 from memory into f11
fadd.s f10, f15, f11, dyn # perform operation
fadd.s f10, f15, f11, rdn # perform operation
fadd.s f10, f15, f11, rmm # perform operation
fadd.s f10, f15, f11, rne # perform operation
fadd.s f10, f15, f11, rtz # perform operation
fadd.s f10, f15, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f15, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f15, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f15, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f15, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f15, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f800000)
li x9, 0xeb108e82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f11, 0(x2) # load 0x7fc00000 from memory into f11
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f29, 0(x2) # load 0x7f800000 from memory into f29
fadd.s f9, f11, f29, dyn # perform operation
fadd.s f9, f11, f29, rdn # perform operation
fadd.s f9, f11, f29, rmm # perform operation
fadd.s f9, f11, f29, rne # perform operation
fadd.s f9, f11, f29, rtz # perform operation
fadd.s f9, f11, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f11, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f11, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f11, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f11, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f11, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xff800000)
li x19, 0x7501c0e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f9, 0(x2) # load 0x7fc00000 from memory into f9
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f15, 0(x2) # load 0xff800000 from memory into f15
fadd.s f19, f9, f15, dyn # perform operation
fadd.s f19, f9, f15, rdn # perform operation
fadd.s f19, f9, f15, rmm # perform operation
fadd.s f19, f9, f15, rne # perform operation
fadd.s f19, f9, f15, rtz # perform operation
fadd.s f19, f9, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f9, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f9, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f9, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f9, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f9, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fc00000)
li x26, 0x2584cf64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f27, 0(x2) # load 0x7fc00000 from memory into f27
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f30, 0(x2) # load 0x7fc00000 from memory into f30
fadd.s f26, f27, f30, dyn # perform operation
fadd.s f26, f27, f30, rdn # perform operation
fadd.s f26, f27, f30, rmm # perform operation
fadd.s f26, f27, f30, rne # perform operation
fadd.s f26, f27, f30, rtz # perform operation
fadd.s f26, f27, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f27, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f27, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f27, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f27, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f27, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fffffff)
li x14, 0x61840501 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f26, 0(x2) # load 0x7fffffff from memory into f26
fadd.s f14, f18, f26, dyn # perform operation
fadd.s f14, f18, f26, rdn # perform operation
fadd.s f14, f18, f26, rmm # perform operation
fadd.s f14, f18, f26, rne # perform operation
fadd.s f14, f18, f26, rtz # perform operation
fadd.s f14, f18, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f14, f18, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f14, f18, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f14, f18, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f14, f18, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f14, f18, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f800001)
li x16, 0x9502ae2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f28, 0(x2) # load 0x7fc00000 from memory into f28
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f31, 0(x2) # load 0x7f800001 from memory into f31
fadd.s f16, f28, f31, dyn # perform operation
fadd.s f16, f28, f31, rdn # perform operation
fadd.s f16, f28, f31, rmm # perform operation
fadd.s f16, f28, f31, rne # perform operation
fadd.s f16, f28, f31, rtz # perform operation
fadd.s f16, f28, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f28, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f28, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f28, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f28, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f28, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fbfffff)
li x3, 0xb3b9c063 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f27, 0(x2) # load 0x7fc00000 from memory into f27
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f19, 0(x2) # load 0x7fbfffff from memory into f19
fadd.s f3, f27, f19, dyn # perform operation
fadd.s f3, f27, f19, rdn # perform operation
fadd.s f3, f27, f19, rmm # perform operation
fadd.s f3, f27, f19, rne # perform operation
fadd.s f3, f27, f19, rtz # perform operation
fadd.s f3, f27, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f27, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f27, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f27, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f27, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f27, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7ef8654f)
li x7, 0x8530d93f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f24, 0(x2) # load 0x7fc00000 from memory into f24
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f22, 0(x2) # load 0x7ef8654f from memory into f22
fadd.s f7, f24, f22, dyn # perform operation
fadd.s f7, f24, f22, rdn # perform operation
fadd.s f7, f24, f22, rmm # perform operation
fadd.s f7, f24, f22, rne # perform operation
fadd.s f7, f24, f22, rtz # perform operation
fadd.s f7, f24, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f24, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f24, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f24, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f24, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f24, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x813d9ab0)
li x12, 0x7c6c60a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f30, 0(x2) # load 0x7fc00000 from memory into f30
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f25, 0(x2) # load 0x813d9ab0 from memory into f25
fadd.s f12, f30, f25, dyn # perform operation
fadd.s f12, f30, f25, rdn # perform operation
fadd.s f12, f30, f25, rmm # perform operation
fadd.s f12, f30, f25, rne # perform operation
fadd.s f12, f30, f25, rtz # perform operation
fadd.s f12, f30, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f30, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f30, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f30, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f30, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f30, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x0)
li x25, 0xe19a86c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f1, 0(x2) # load 0x7fffffff from memory into f1
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
fadd.s f25, f1, f3, dyn # perform operation
fadd.s f25, f1, f3, rdn # perform operation
fadd.s f25, f1, f3, rmm # perform operation
fadd.s f25, f1, f3, rne # perform operation
fadd.s f25, f1, f3, rtz # perform operation
fadd.s f25, f1, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f1, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f1, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f1, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f1, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f1, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80000000)
li x13, 0x36cf0e2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f28, 0(x2) # load 0x80000000 from memory into f28
fadd.s f13, f5, f28, dyn # perform operation
fadd.s f13, f5, f28, rdn # perform operation
fadd.s f13, f5, f28, rmm # perform operation
fadd.s f13, f5, f28, rne # perform operation
fadd.s f13, f5, f28, rtz # perform operation
fadd.s f13, f5, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f5, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f5, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f5, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f5, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f5, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x3f800000)
li x16, 0x77a506f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f3, 0(x2) # load 0x7fffffff from memory into f3
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f23, 0(x2) # load 0x3f800000 from memory into f23
fadd.s f16, f3, f23, dyn # perform operation
fadd.s f16, f3, f23, rdn # perform operation
fadd.s f16, f3, f23, rmm # perform operation
fadd.s f16, f3, f23, rne # perform operation
fadd.s f16, f3, f23, rtz # perform operation
fadd.s f16, f3, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f3, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f3, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f3, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f3, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f3, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xbf800000)
li x12, 0xd744c103 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f7, 0(x2) # load 0x7fffffff from memory into f7
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f11, 0(x2) # load 0xbf800000 from memory into f11
fadd.s f12, f7, f11, dyn # perform operation
fadd.s f12, f7, f11, rdn # perform operation
fadd.s f12, f7, f11, rmm # perform operation
fadd.s f12, f7, f11, rne # perform operation
fadd.s f12, f7, f11, rtz # perform operation
fadd.s f12, f7, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f7, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f7, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f7, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f7, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f7, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x3fc00000)
li x27, 0x259ccc4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f22, 0(x2) # load 0x7fffffff from memory into f22
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f9, 0(x2) # load 0x3fc00000 from memory into f9
fadd.s f27, f22, f9, dyn # perform operation
fadd.s f27, f22, f9, rdn # perform operation
fadd.s f27, f22, f9, rmm # perform operation
fadd.s f27, f22, f9, rne # perform operation
fadd.s f27, f22, f9, rtz # perform operation
fadd.s f27, f22, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f22, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f22, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f22, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f22, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f22, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xbfc00000)
li x23, 0x11df8d35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f30, 0(x2) # load 0x7fffffff from memory into f30
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f2, 0(x2) # load 0xbfc00000 from memory into f2
fadd.s f23, f30, f2, dyn # perform operation
fadd.s f23, f30, f2, rdn # perform operation
fadd.s f23, f30, f2, rmm # perform operation
fadd.s f23, f30, f2, rne # perform operation
fadd.s f23, f30, f2, rtz # perform operation
fadd.s f23, f30, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f30, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f30, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f30, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f30, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f30, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x40000000)
li x5, 0x9f0d9e46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f6, 0(x2) # load 0x40000000 from memory into f6
fadd.s f5, f12, f6, dyn # perform operation
fadd.s f5, f12, f6, rdn # perform operation
fadd.s f5, f12, f6, rmm # perform operation
fadd.s f5, f12, f6, rne # perform operation
fadd.s f5, f12, f6, rtz # perform operation
fadd.s f5, f12, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f12, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f12, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f12, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f12, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f12, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xc0000000)
li x30, 0x1697ad65 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f17, 0(x2) # load 0x7fffffff from memory into f17
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f22, 0(x2) # load 0xc0000000 from memory into f22
fadd.s f30, f17, f22, dyn # perform operation
fadd.s f30, f17, f22, rdn # perform operation
fadd.s f30, f17, f22, rmm # perform operation
fadd.s f30, f17, f22, rne # perform operation
fadd.s f30, f17, f22, rtz # perform operation
fadd.s f30, f17, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f17, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f17, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f17, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f17, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f17, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x800000)
li x23, 0xb8e51549 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f13, 0(x2) # load 0x7fffffff from memory into f13
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f25, 0(x2) # load 0x00800000 from memory into f25
fadd.s f23, f13, f25, dyn # perform operation
fadd.s f23, f13, f25, rdn # perform operation
fadd.s f23, f13, f25, rmm # perform operation
fadd.s f23, f13, f25, rne # perform operation
fadd.s f23, f13, f25, rtz # perform operation
fadd.s f23, f13, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f13, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f13, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f13, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f13, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f13, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80800000)
li x17, 0xd4f8f80a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f7, 0(x2) # load 0x7fffffff from memory into f7
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f3, 0(x2) # load 0x80800000 from memory into f3
fadd.s f17, f7, f3, dyn # perform operation
fadd.s f17, f7, f3, rdn # perform operation
fadd.s f17, f7, f3, rmm # perform operation
fadd.s f17, f7, f3, rne # perform operation
fadd.s f17, f7, f3, rtz # perform operation
fadd.s f17, f7, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f7, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f7, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f7, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f7, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f7, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f7fffff)
li x16, 0xd05124c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f15, 0(x2) # load 0x7fffffff from memory into f15
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f11, 0(x2) # load 0x7f7fffff from memory into f11
fadd.s f16, f15, f11, dyn # perform operation
fadd.s f16, f15, f11, rdn # perform operation
fadd.s f16, f15, f11, rmm # perform operation
fadd.s f16, f15, f11, rne # perform operation
fadd.s f16, f15, f11, rtz # perform operation
fadd.s f16, f15, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f15, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f15, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f15, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f15, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f15, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xff7fffff)
li x18, 0x66503a6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f7, 0(x2) # load 0x7fffffff from memory into f7
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f25, 0(x2) # load 0xff7fffff from memory into f25
fadd.s f18, f7, f25, dyn # perform operation
fadd.s f18, f7, f25, rdn # perform operation
fadd.s f18, f7, f25, rmm # perform operation
fadd.s f18, f7, f25, rne # perform operation
fadd.s f18, f7, f25, rtz # perform operation
fadd.s f18, f7, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f7, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f7, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f7, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f7, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f7, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fffff)
li x20, 0x59ea39c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f21, 0(x2) # load 0x7fffffff from memory into f21
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f6, 0(x2) # load 0x007fffff from memory into f6
fadd.s f20, f21, f6, dyn # perform operation
fadd.s f20, f21, f6, rdn # perform operation
fadd.s f20, f21, f6, rmm # perform operation
fadd.s f20, f21, f6, rne # perform operation
fadd.s f20, f21, f6, rtz # perform operation
fadd.s f20, f21, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f21, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f21, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f21, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f21, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f21, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x807fffff)
li x4, 0x45f691bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f29, 0(x2) # load 0x807fffff from memory into f29
fadd.s f4, f2, f29, dyn # perform operation
fadd.s f4, f2, f29, rdn # perform operation
fadd.s f4, f2, f29, rmm # perform operation
fadd.s f4, f2, f29, rne # perform operation
fadd.s f4, f2, f29, rtz # perform operation
fadd.s f4, f2, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f2, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f2, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f2, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f2, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f2, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x400000)
li x19, 0x76496471 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f1, 0(x2) # load 0x7fffffff from memory into f1
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f9, 0(x2) # load 0x00400000 from memory into f9
fadd.s f19, f1, f9, dyn # perform operation
fadd.s f19, f1, f9, rdn # perform operation
fadd.s f19, f1, f9, rmm # perform operation
fadd.s f19, f1, f9, rne # perform operation
fadd.s f19, f1, f9, rtz # perform operation
fadd.s f19, f1, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f1, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f1, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f1, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f1, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f1, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80400000)
li x24, 0x87053bff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f28, 0(x2) # load 0x7fffffff from memory into f28
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f10, 0(x2) # load 0x80400000 from memory into f10
fadd.s f24, f28, f10, dyn # perform operation
fadd.s f24, f28, f10, rdn # perform operation
fadd.s f24, f28, f10, rmm # perform operation
fadd.s f24, f28, f10, rne # perform operation
fadd.s f24, f28, f10, rtz # perform operation
fadd.s f24, f28, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f28, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f28, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f28, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f28, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f28, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x1)
li x4, 0x3e73aab4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f8, 0(x2) # load 0x00000001 from memory into f8
fadd.s f4, f2, f8, dyn # perform operation
fadd.s f4, f2, f8, rdn # perform operation
fadd.s f4, f2, f8, rmm # perform operation
fadd.s f4, f2, f8, rne # perform operation
fadd.s f4, f2, f8, rtz # perform operation
fadd.s f4, f2, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f2, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f2, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f2, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f2, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f2, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80000001)
li x20, 0x80d2f841 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
fadd.s f20, f10, f31, dyn # perform operation
fadd.s f20, f10, f31, rdn # perform operation
fadd.s f20, f10, f31, rmm # perform operation
fadd.s f20, f10, f31, rne # perform operation
fadd.s f20, f10, f31, rtz # perform operation
fadd.s f20, f10, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f10, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f10, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f10, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f10, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f10, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f800000)
li x13, 0x34116b12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f21, 0(x2) # load 0x7fffffff from memory into f21
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f6, 0(x2) # load 0x7f800000 from memory into f6
fadd.s f13, f21, f6, dyn # perform operation
fadd.s f13, f21, f6, rdn # perform operation
fadd.s f13, f21, f6, rmm # perform operation
fadd.s f13, f21, f6, rne # perform operation
fadd.s f13, f21, f6, rtz # perform operation
fadd.s f13, f21, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f21, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f21, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f21, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f21, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f21, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xff800000)
li x24, 0xfe4b4b56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f16, 0(x2) # load 0x7fffffff from memory into f16
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f21, 0(x2) # load 0xff800000 from memory into f21
fadd.s f24, f16, f21, dyn # perform operation
fadd.s f24, f16, f21, rdn # perform operation
fadd.s f24, f16, f21, rmm # perform operation
fadd.s f24, f16, f21, rne # perform operation
fadd.s f24, f16, f21, rtz # perform operation
fadd.s f24, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f16, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fc00000)
li x4, 0xb1f0ddfd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f19, 0(x2) # load 0x7fc00000 from memory into f19
fadd.s f4, f12, f19, dyn # perform operation
fadd.s f4, f12, f19, rdn # perform operation
fadd.s f4, f12, f19, rmm # perform operation
fadd.s f4, f12, f19, rne # perform operation
fadd.s f4, f12, f19, rtz # perform operation
fadd.s f4, f12, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f12, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f12, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f12, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f12, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f12, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fffffff)
li x6, 0x3aa9905b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f9, 0(x2) # load 0x7fffffff from memory into f9
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f17, 0(x2) # load 0x7fffffff from memory into f17
fadd.s f6, f9, f17, dyn # perform operation
fadd.s f6, f9, f17, rdn # perform operation
fadd.s f6, f9, f17, rmm # perform operation
fadd.s f6, f9, f17, rne # perform operation
fadd.s f6, f9, f17, rtz # perform operation
fadd.s f6, f9, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f9, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f9, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f9, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f9, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f9, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f800001)
li x7, 0xec14996b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f26, 0(x2) # load 0x7fffffff from memory into f26
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f2, 0(x2) # load 0x7f800001 from memory into f2
fadd.s f7, f26, f2, dyn # perform operation
fadd.s f7, f26, f2, rdn # perform operation
fadd.s f7, f26, f2, rmm # perform operation
fadd.s f7, f26, f2, rne # perform operation
fadd.s f7, f26, f2, rtz # perform operation
fadd.s f7, f26, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f26, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f26, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f26, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f26, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f26, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fbfffff)
li x5, 0xe5c160e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f1, 0(x2) # load 0x7fffffff from memory into f1
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f24, 0(x2) # load 0x7fbfffff from memory into f24
fadd.s f5, f1, f24, dyn # perform operation
fadd.s f5, f1, f24, rdn # perform operation
fadd.s f5, f1, f24, rmm # perform operation
fadd.s f5, f1, f24, rne # perform operation
fadd.s f5, f1, f24, rtz # perform operation
fadd.s f5, f1, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f1, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f1, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f1, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f1, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f1, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7ef8654f)
li x28, 0x3a69b96d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f22, 0(x2) # load 0x7fffffff from memory into f22
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f15, 0(x2) # load 0x7ef8654f from memory into f15
fadd.s f28, f22, f15, dyn # perform operation
fadd.s f28, f22, f15, rdn # perform operation
fadd.s f28, f22, f15, rmm # perform operation
fadd.s f28, f22, f15, rne # perform operation
fadd.s f28, f22, f15, rtz # perform operation
fadd.s f28, f22, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f22, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f22, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f22, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f22, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f22, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x813d9ab0)
li x13, 0xb0d5614f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f27, 0(x2) # load 0x7fffffff from memory into f27
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f8, 0(x2) # load 0x813d9ab0 from memory into f8
fadd.s f13, f27, f8, dyn # perform operation
fadd.s f13, f27, f8, rdn # perform operation
fadd.s f13, f27, f8, rmm # perform operation
fadd.s f13, f27, f8, rne # perform operation
fadd.s f13, f27, f8, rtz # perform operation
fadd.s f13, f27, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f27, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f27, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f27, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f27, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f27, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x0)
li x5, 0x1df66210 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f13, 0(x2) # load 0x7f800001 from memory into f13
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f21, 0(x2) # load 0x00000000 from memory into f21
fadd.s f5, f13, f21, dyn # perform operation
fadd.s f5, f13, f21, rdn # perform operation
fadd.s f5, f13, f21, rmm # perform operation
fadd.s f5, f13, f21, rne # perform operation
fadd.s f5, f13, f21, rtz # perform operation
fadd.s f5, f13, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f13, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f13, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f13, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f13, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f13, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80000000)
li x15, 0x0cc2c0b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f12, 0(x2) # load 0x7f800001 from memory into f12
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f11, 0(x2) # load 0x80000000 from memory into f11
fadd.s f15, f12, f11, dyn # perform operation
fadd.s f15, f12, f11, rdn # perform operation
fadd.s f15, f12, f11, rmm # perform operation
fadd.s f15, f12, f11, rne # perform operation
fadd.s f15, f12, f11, rtz # perform operation
fadd.s f15, f12, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f12, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f12, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f12, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f12, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f12, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x3f800000)
li x13, 0x0323177e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f23, 0(x2) # load 0x7f800001 from memory into f23
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f2, 0(x2) # load 0x3f800000 from memory into f2
fadd.s f13, f23, f2, dyn # perform operation
fadd.s f13, f23, f2, rdn # perform operation
fadd.s f13, f23, f2, rmm # perform operation
fadd.s f13, f23, f2, rne # perform operation
fadd.s f13, f23, f2, rtz # perform operation
fadd.s f13, f23, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f23, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f23, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f23, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f23, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f23, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xbf800000)
li x9, 0x137fcdd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f23, 0(x2) # load 0x7f800001 from memory into f23
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f10, 0(x2) # load 0xbf800000 from memory into f10
fadd.s f9, f23, f10, dyn # perform operation
fadd.s f9, f23, f10, rdn # perform operation
fadd.s f9, f23, f10, rmm # perform operation
fadd.s f9, f23, f10, rne # perform operation
fadd.s f9, f23, f10, rtz # perform operation
fadd.s f9, f23, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f23, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f23, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f23, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f23, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f23, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x3fc00000)
li x18, 0x164fe3ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f14, 0(x2) # load 0x7f800001 from memory into f14
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f27, 0(x2) # load 0x3fc00000 from memory into f27
fadd.s f18, f14, f27, dyn # perform operation
fadd.s f18, f14, f27, rdn # perform operation
fadd.s f18, f14, f27, rmm # perform operation
fadd.s f18, f14, f27, rne # perform operation
fadd.s f18, f14, f27, rtz # perform operation
fadd.s f18, f14, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f14, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f14, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f14, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f14, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f14, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xbfc00000)
li x31, 0x83044f26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f28, 0(x2) # load 0x7f800001 from memory into f28
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f30, 0(x2) # load 0xbfc00000 from memory into f30
fadd.s f31, f28, f30, dyn # perform operation
fadd.s f31, f28, f30, rdn # perform operation
fadd.s f31, f28, f30, rmm # perform operation
fadd.s f31, f28, f30, rne # perform operation
fadd.s f31, f28, f30, rtz # perform operation
fadd.s f31, f28, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f28, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f28, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f28, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f28, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f28, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x40000000)
li x27, 0x588f3f3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f25, 0(x2) # load 0x7f800001 from memory into f25
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f5, 0(x2) # load 0x40000000 from memory into f5
fadd.s f27, f25, f5, dyn # perform operation
fadd.s f27, f25, f5, rdn # perform operation
fadd.s f27, f25, f5, rmm # perform operation
fadd.s f27, f25, f5, rne # perform operation
fadd.s f27, f25, f5, rtz # perform operation
fadd.s f27, f25, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f25, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f25, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f25, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f25, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f25, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xc0000000)
li x4, 0x51d6e9cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f5, 0(x2) # load 0x7f800001 from memory into f5
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f11, 0(x2) # load 0xc0000000 from memory into f11
fadd.s f4, f5, f11, dyn # perform operation
fadd.s f4, f5, f11, rdn # perform operation
fadd.s f4, f5, f11, rmm # perform operation
fadd.s f4, f5, f11, rne # perform operation
fadd.s f4, f5, f11, rtz # perform operation
fadd.s f4, f5, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f5, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f5, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f5, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f5, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f5, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x800000)
li x31, 0x1d2c4aa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f25, 0(x2) # load 0x7f800001 from memory into f25
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f20, 0(x2) # load 0x00800000 from memory into f20
fadd.s f31, f25, f20, dyn # perform operation
fadd.s f31, f25, f20, rdn # perform operation
fadd.s f31, f25, f20, rmm # perform operation
fadd.s f31, f25, f20, rne # perform operation
fadd.s f31, f25, f20, rtz # perform operation
fadd.s f31, f25, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f25, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f25, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f25, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f25, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f25, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80800000)
li x2, 0x1821a79d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f6, 0(x2) # load 0x7f800001 from memory into f6
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f25, 0(x2) # load 0x80800000 from memory into f25
fadd.s f2, f6, f25, dyn # perform operation
fadd.s f2, f6, f25, rdn # perform operation
fadd.s f2, f6, f25, rmm # perform operation
fadd.s f2, f6, f25, rne # perform operation
fadd.s f2, f6, f25, rtz # perform operation
fadd.s f2, f6, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f6, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f6, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f6, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f6, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f6, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f7fffff)
li x6, 0xb8e97647 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f8, 0(x2) # load 0x7f800001 from memory into f8
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f20, 0(x2) # load 0x7f7fffff from memory into f20
fadd.s f6, f8, f20, dyn # perform operation
fadd.s f6, f8, f20, rdn # perform operation
fadd.s f6, f8, f20, rmm # perform operation
fadd.s f6, f8, f20, rne # perform operation
fadd.s f6, f8, f20, rtz # perform operation
fadd.s f6, f8, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f8, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f8, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f8, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f8, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f8, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xff7fffff)
li x25, 0x20d38047 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f1, 0(x2) # load 0x7f800001 from memory into f1
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f6, 0(x2) # load 0xff7fffff from memory into f6
fadd.s f25, f1, f6, dyn # perform operation
fadd.s f25, f1, f6, rdn # perform operation
fadd.s f25, f1, f6, rmm # perform operation
fadd.s f25, f1, f6, rne # perform operation
fadd.s f25, f1, f6, rtz # perform operation
fadd.s f25, f1, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f1, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f1, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f1, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f1, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f1, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fffff)
li x4, 0xfac05ea2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f10, 0(x2) # load 0x7f800001 from memory into f10
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f14, 0(x2) # load 0x007fffff from memory into f14
fadd.s f4, f10, f14, dyn # perform operation
fadd.s f4, f10, f14, rdn # perform operation
fadd.s f4, f10, f14, rmm # perform operation
fadd.s f4, f10, f14, rne # perform operation
fadd.s f4, f10, f14, rtz # perform operation
fadd.s f4, f10, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f10, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f10, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f10, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f10, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f10, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x807fffff)
li x5, 0xde1d7828 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f4, 0(x2) # load 0x7f800001 from memory into f4
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f19, 0(x2) # load 0x807fffff from memory into f19
fadd.s f5, f4, f19, dyn # perform operation
fadd.s f5, f4, f19, rdn # perform operation
fadd.s f5, f4, f19, rmm # perform operation
fadd.s f5, f4, f19, rne # perform operation
fadd.s f5, f4, f19, rtz # perform operation
fadd.s f5, f4, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f4, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f4, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f4, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f4, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f4, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x400000)
li x18, 0x62c918ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f3, 0(x2) # load 0x7f800001 from memory into f3
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f11, 0(x2) # load 0x00400000 from memory into f11
fadd.s f18, f3, f11, dyn # perform operation
fadd.s f18, f3, f11, rdn # perform operation
fadd.s f18, f3, f11, rmm # perform operation
fadd.s f18, f3, f11, rne # perform operation
fadd.s f18, f3, f11, rtz # perform operation
fadd.s f18, f3, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f3, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f3, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f3, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f3, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f3, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80400000)
li x1, 0x515ca9d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f7, 0(x2) # load 0x80400000 from memory into f7
fadd.s f1, f21, f7, dyn # perform operation
fadd.s f1, f21, f7, rdn # perform operation
fadd.s f1, f21, f7, rmm # perform operation
fadd.s f1, f21, f7, rne # perform operation
fadd.s f1, f21, f7, rtz # perform operation
fadd.s f1, f21, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f21, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f21, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f21, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f21, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f21, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x1)
li x30, 0x9ded18dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f9, 0(x2) # load 0x00000001 from memory into f9
fadd.s f30, f19, f9, dyn # perform operation
fadd.s f30, f19, f9, rdn # perform operation
fadd.s f30, f19, f9, rmm # perform operation
fadd.s f30, f19, f9, rne # perform operation
fadd.s f30, f19, f9, rtz # perform operation
fadd.s f30, f19, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f19, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f19, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f19, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f19, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f19, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80000001)
li x2, 0xa05ec3a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f23, 0(x2) # load 0x7f800001 from memory into f23
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f4, 0(x2) # load 0x80000001 from memory into f4
fadd.s f2, f23, f4, dyn # perform operation
fadd.s f2, f23, f4, rdn # perform operation
fadd.s f2, f23, f4, rmm # perform operation
fadd.s f2, f23, f4, rne # perform operation
fadd.s f2, f23, f4, rtz # perform operation
fadd.s f2, f23, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f23, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f23, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f23, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f23, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f23, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f800000)
li x1, 0xb0fa82fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f13, 0(x2) # load 0x7f800001 from memory into f13
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f18, 0(x2) # load 0x7f800000 from memory into f18
fadd.s f1, f13, f18, dyn # perform operation
fadd.s f1, f13, f18, rdn # perform operation
fadd.s f1, f13, f18, rmm # perform operation
fadd.s f1, f13, f18, rne # perform operation
fadd.s f1, f13, f18, rtz # perform operation
fadd.s f1, f13, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f13, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f13, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f13, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f13, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f13, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xff800000)
li x27, 0xbeee5e60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f23, 0(x2) # load 0xff800000 from memory into f23
fadd.s f27, f7, f23, dyn # perform operation
fadd.s f27, f7, f23, rdn # perform operation
fadd.s f27, f7, f23, rmm # perform operation
fadd.s f27, f7, f23, rne # perform operation
fadd.s f27, f7, f23, rtz # perform operation
fadd.s f27, f7, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f7, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f7, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f7, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f7, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f7, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fc00000)
li x16, 0x36702713 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f26, 0(x2) # load 0x7f800001 from memory into f26
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f3, 0(x2) # load 0x7fc00000 from memory into f3
fadd.s f16, f26, f3, dyn # perform operation
fadd.s f16, f26, f3, rdn # perform operation
fadd.s f16, f26, f3, rmm # perform operation
fadd.s f16, f26, f3, rne # perform operation
fadd.s f16, f26, f3, rtz # perform operation
fadd.s f16, f26, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f26, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f26, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f26, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f26, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f26, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fffffff)
li x31, 0xf8e367dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f3, 0(x2) # load 0x7f800001 from memory into f3
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f15, 0(x2) # load 0x7fffffff from memory into f15
fadd.s f31, f3, f15, dyn # perform operation
fadd.s f31, f3, f15, rdn # perform operation
fadd.s f31, f3, f15, rmm # perform operation
fadd.s f31, f3, f15, rne # perform operation
fadd.s f31, f3, f15, rtz # perform operation
fadd.s f31, f3, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f3, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f3, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f3, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f3, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f3, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f800001)
li x4, 0x62262db8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f17, 0(x2) # load 0x7f800001 from memory into f17
fadd.s f4, f21, f17, dyn # perform operation
fadd.s f4, f21, f17, rdn # perform operation
fadd.s f4, f21, f17, rmm # perform operation
fadd.s f4, f21, f17, rne # perform operation
fadd.s f4, f21, f17, rtz # perform operation
fadd.s f4, f21, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f21, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f21, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f21, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f21, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f21, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fbfffff)
li x22, 0xd68f4c6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f29, 0(x2) # load 0x7f800001 from memory into f29
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
fadd.s f22, f29, f31, dyn # perform operation
fadd.s f22, f29, f31, rdn # perform operation
fadd.s f22, f29, f31, rmm # perform operation
fadd.s f22, f29, f31, rne # perform operation
fadd.s f22, f29, f31, rtz # perform operation
fadd.s f22, f29, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f29, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f29, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f29, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f29, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f29, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7ef8654f)
li x31, 0xa1948eb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f23, 0(x2) # load 0x7f800001 from memory into f23
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
fadd.s f31, f23, f13, dyn # perform operation
fadd.s f31, f23, f13, rdn # perform operation
fadd.s f31, f23, f13, rmm # perform operation
fadd.s f31, f23, f13, rne # perform operation
fadd.s f31, f23, f13, rtz # perform operation
fadd.s f31, f23, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f23, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f23, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f23, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f23, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f23, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x813d9ab0)
li x18, 0x29bc0688 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f16, 0(x2) # load 0x813d9ab0 from memory into f16
fadd.s f18, f19, f16, dyn # perform operation
fadd.s f18, f19, f16, rdn # perform operation
fadd.s f18, f19, f16, rmm # perform operation
fadd.s f18, f19, f16, rne # perform operation
fadd.s f18, f19, f16, rtz # perform operation
fadd.s f18, f19, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f19, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f19, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f19, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f19, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f19, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x0)
li x26, 0x9a155d50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f22, 0(x2) # load 0x7fbfffff from memory into f22
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f3, 0(x2) # load 0x00000000 from memory into f3
fadd.s f26, f22, f3, dyn # perform operation
fadd.s f26, f22, f3, rdn # perform operation
fadd.s f26, f22, f3, rmm # perform operation
fadd.s f26, f22, f3, rne # perform operation
fadd.s f26, f22, f3, rtz # perform operation
fadd.s f26, f22, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f22, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f22, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f22, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f22, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f22, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80000000)
li x24, 0xfb1f3f2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f1, 0(x2) # load 0x7fbfffff from memory into f1
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f23, 0(x2) # load 0x80000000 from memory into f23
fadd.s f24, f1, f23, dyn # perform operation
fadd.s f24, f1, f23, rdn # perform operation
fadd.s f24, f1, f23, rmm # perform operation
fadd.s f24, f1, f23, rne # perform operation
fadd.s f24, f1, f23, rtz # perform operation
fadd.s f24, f1, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f1, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f1, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f1, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f1, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f1, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x3f800000)
li x28, 0xad6cb102 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f18, 0(x2) # load 0x7fbfffff from memory into f18
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f8, 0(x2) # load 0x3f800000 from memory into f8
fadd.s f28, f18, f8, dyn # perform operation
fadd.s f28, f18, f8, rdn # perform operation
fadd.s f28, f18, f8, rmm # perform operation
fadd.s f28, f18, f8, rne # perform operation
fadd.s f28, f18, f8, rtz # perform operation
fadd.s f28, f18, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f18, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f18, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f18, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f18, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f18, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xbf800000)
li x29, 0xa65f002d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f30, 0(x2) # load 0x7fbfffff from memory into f30
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f1, 0(x2) # load 0xbf800000 from memory into f1
fadd.s f29, f30, f1, dyn # perform operation
fadd.s f29, f30, f1, rdn # perform operation
fadd.s f29, f30, f1, rmm # perform operation
fadd.s f29, f30, f1, rne # perform operation
fadd.s f29, f30, f1, rtz # perform operation
fadd.s f29, f30, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f30, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f30, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f30, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f30, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f30, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x3fc00000)
li x7, 0x618a0134 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f26, 0(x2) # load 0x7fbfffff from memory into f26
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f2, 0(x2) # load 0x3fc00000 from memory into f2
fadd.s f7, f26, f2, dyn # perform operation
fadd.s f7, f26, f2, rdn # perform operation
fadd.s f7, f26, f2, rmm # perform operation
fadd.s f7, f26, f2, rne # perform operation
fadd.s f7, f26, f2, rtz # perform operation
fadd.s f7, f26, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f26, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f26, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f26, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f26, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f26, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xbfc00000)
li x1, 0x1f98c0da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f21, 0(x2) # load 0x7fbfffff from memory into f21
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
fadd.s f1, f21, f20, dyn # perform operation
fadd.s f1, f21, f20, rdn # perform operation
fadd.s f1, f21, f20, rmm # perform operation
fadd.s f1, f21, f20, rne # perform operation
fadd.s f1, f21, f20, rtz # perform operation
fadd.s f1, f21, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f21, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f21, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f21, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f21, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f21, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x40000000)
li x29, 0xd18dc308 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f24, 0(x2) # load 0x7fbfffff from memory into f24
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f17, 0(x2) # load 0x40000000 from memory into f17
fadd.s f29, f24, f17, dyn # perform operation
fadd.s f29, f24, f17, rdn # perform operation
fadd.s f29, f24, f17, rmm # perform operation
fadd.s f29, f24, f17, rne # perform operation
fadd.s f29, f24, f17, rtz # perform operation
fadd.s f29, f24, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f24, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f24, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f24, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f24, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f24, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xc0000000)
li x10, 0xbc2323a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f23, 0(x2) # load 0x7fbfffff from memory into f23
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f3, 0(x2) # load 0xc0000000 from memory into f3
fadd.s f10, f23, f3, dyn # perform operation
fadd.s f10, f23, f3, rdn # perform operation
fadd.s f10, f23, f3, rmm # perform operation
fadd.s f10, f23, f3, rne # perform operation
fadd.s f10, f23, f3, rtz # perform operation
fadd.s f10, f23, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f23, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f23, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f23, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f23, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f23, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x800000)
li x6, 0xcb68b346 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f5, 0(x2) # load 0x7fbfffff from memory into f5
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f8, 0(x2) # load 0x00800000 from memory into f8
fadd.s f6, f5, f8, dyn # perform operation
fadd.s f6, f5, f8, rdn # perform operation
fadd.s f6, f5, f8, rmm # perform operation
fadd.s f6, f5, f8, rne # perform operation
fadd.s f6, f5, f8, rtz # perform operation
fadd.s f6, f5, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f5, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f5, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f5, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f5, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f5, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80800000)
li x17, 0x062aeb49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f24, 0(x2) # load 0x7fbfffff from memory into f24
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f4, 0(x2) # load 0x80800000 from memory into f4
fadd.s f17, f24, f4, dyn # perform operation
fadd.s f17, f24, f4, rdn # perform operation
fadd.s f17, f24, f4, rmm # perform operation
fadd.s f17, f24, f4, rne # perform operation
fadd.s f17, f24, f4, rtz # perform operation
fadd.s f17, f24, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f24, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f24, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f24, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f24, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f24, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f7fffff)
li x29, 0xb63ddbd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f1, 0(x2) # load 0x7fbfffff from memory into f1
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f24, 0(x2) # load 0x7f7fffff from memory into f24
fadd.s f29, f1, f24, dyn # perform operation
fadd.s f29, f1, f24, rdn # perform operation
fadd.s f29, f1, f24, rmm # perform operation
fadd.s f29, f1, f24, rne # perform operation
fadd.s f29, f1, f24, rtz # perform operation
fadd.s f29, f1, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f1, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f1, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f1, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f1, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f1, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xff7fffff)
li x30, 0x6b12baa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f9, 0(x2) # load 0x7fbfffff from memory into f9
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f25, 0(x2) # load 0xff7fffff from memory into f25
fadd.s f30, f9, f25, dyn # perform operation
fadd.s f30, f9, f25, rdn # perform operation
fadd.s f30, f9, f25, rmm # perform operation
fadd.s f30, f9, f25, rne # perform operation
fadd.s f30, f9, f25, rtz # perform operation
fadd.s f30, f9, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f9, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f9, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f9, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f9, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f9, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fffff)
li x13, 0x9be8fa93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f30, 0(x2) # load 0x7fbfffff from memory into f30
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f8, 0(x2) # load 0x007fffff from memory into f8
fadd.s f13, f30, f8, dyn # perform operation
fadd.s f13, f30, f8, rdn # perform operation
fadd.s f13, f30, f8, rmm # perform operation
fadd.s f13, f30, f8, rne # perform operation
fadd.s f13, f30, f8, rtz # perform operation
fadd.s f13, f30, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f30, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f30, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f30, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f30, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f30, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x807fffff)
li x12, 0xe70dced0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f21, 0(x2) # load 0x7fbfffff from memory into f21
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f26, 0(x2) # load 0x807fffff from memory into f26
fadd.s f12, f21, f26, dyn # perform operation
fadd.s f12, f21, f26, rdn # perform operation
fadd.s f12, f21, f26, rmm # perform operation
fadd.s f12, f21, f26, rne # perform operation
fadd.s f12, f21, f26, rtz # perform operation
fadd.s f12, f21, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f21, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f21, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f21, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f21, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f21, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x400000)
li x18, 0xe8764cd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f7, 0(x2) # load 0x7fbfffff from memory into f7
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f30, 0(x2) # load 0x00400000 from memory into f30
fadd.s f18, f7, f30, dyn # perform operation
fadd.s f18, f7, f30, rdn # perform operation
fadd.s f18, f7, f30, rmm # perform operation
fadd.s f18, f7, f30, rne # perform operation
fadd.s f18, f7, f30, rtz # perform operation
fadd.s f18, f7, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f7, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f7, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f7, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f7, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f7, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80400000)
li x1, 0x82f00e24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f20, 0(x2) # load 0x7fbfffff from memory into f20
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f2, 0(x2) # load 0x80400000 from memory into f2
fadd.s f1, f20, f2, dyn # perform operation
fadd.s f1, f20, f2, rdn # perform operation
fadd.s f1, f20, f2, rmm # perform operation
fadd.s f1, f20, f2, rne # perform operation
fadd.s f1, f20, f2, rtz # perform operation
fadd.s f1, f20, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f20, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f20, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f20, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f20, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f20, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x1)
li x24, 0xeb50fedc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f20, 0(x2) # load 0x7fbfffff from memory into f20
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f19, 0(x2) # load 0x00000001 from memory into f19
fadd.s f24, f20, f19, dyn # perform operation
fadd.s f24, f20, f19, rdn # perform operation
fadd.s f24, f20, f19, rmm # perform operation
fadd.s f24, f20, f19, rne # perform operation
fadd.s f24, f20, f19, rtz # perform operation
fadd.s f24, f20, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f20, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f20, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f20, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f20, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f20, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80000001)
li x7, 0xe3aede25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f30, 0(x2) # load 0x7fbfffff from memory into f30
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f6, 0(x2) # load 0x80000001 from memory into f6
fadd.s f7, f30, f6, dyn # perform operation
fadd.s f7, f30, f6, rdn # perform operation
fadd.s f7, f30, f6, rmm # perform operation
fadd.s f7, f30, f6, rne # perform operation
fadd.s f7, f30, f6, rtz # perform operation
fadd.s f7, f30, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f30, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f30, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f30, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f30, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f30, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f800000)
li x17, 0xa556a254 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f7, 0(x2) # load 0x7fbfffff from memory into f7
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f2, 0(x2) # load 0x7f800000 from memory into f2
fadd.s f17, f7, f2, dyn # perform operation
fadd.s f17, f7, f2, rdn # perform operation
fadd.s f17, f7, f2, rmm # perform operation
fadd.s f17, f7, f2, rne # perform operation
fadd.s f17, f7, f2, rtz # perform operation
fadd.s f17, f7, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f7, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f7, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f7, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f7, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f7, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xff800000)
li x22, 0xa053894e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f18, 0(x2) # load 0x7fbfffff from memory into f18
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f12, 0(x2) # load 0xff800000 from memory into f12
fadd.s f22, f18, f12, dyn # perform operation
fadd.s f22, f18, f12, rdn # perform operation
fadd.s f22, f18, f12, rmm # perform operation
fadd.s f22, f18, f12, rne # perform operation
fadd.s f22, f18, f12, rtz # perform operation
fadd.s f22, f18, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f18, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f18, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f18, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f18, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f18, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fc00000)
li x27, 0x8f0864f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f25, 0(x2) # load 0x7fbfffff from memory into f25
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f12, 0(x2) # load 0x7fc00000 from memory into f12
fadd.s f27, f25, f12, dyn # perform operation
fadd.s f27, f25, f12, rdn # perform operation
fadd.s f27, f25, f12, rmm # perform operation
fadd.s f27, f25, f12, rne # perform operation
fadd.s f27, f25, f12, rtz # perform operation
fadd.s f27, f25, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f25, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f25, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f25, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f25, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f25, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fffffff)
li x31, 0x329818dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f23, 0(x2) # load 0x7fbfffff from memory into f23
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f28, 0(x2) # load 0x7fffffff from memory into f28
fadd.s f31, f23, f28, dyn # perform operation
fadd.s f31, f23, f28, rdn # perform operation
fadd.s f31, f23, f28, rmm # perform operation
fadd.s f31, f23, f28, rne # perform operation
fadd.s f31, f23, f28, rtz # perform operation
fadd.s f31, f23, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f23, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f23, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f23, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f23, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f23, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f800001)
li x17, 0xea9e22e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f5, 0(x2) # load 0x7fbfffff from memory into f5
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
fadd.s f17, f5, f21, dyn # perform operation
fadd.s f17, f5, f21, rdn # perform operation
fadd.s f17, f5, f21, rmm # perform operation
fadd.s f17, f5, f21, rne # perform operation
fadd.s f17, f5, f21, rtz # perform operation
fadd.s f17, f5, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f5, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f5, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f5, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f5, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f5, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fbfffff)
li x2, 0x90ab30ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f6, 0(x2) # load 0x7fbfffff from memory into f6
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f17, 0(x2) # load 0x7fbfffff from memory into f17
fadd.s f2, f6, f17, dyn # perform operation
fadd.s f2, f6, f17, rdn # perform operation
fadd.s f2, f6, f17, rmm # perform operation
fadd.s f2, f6, f17, rne # perform operation
fadd.s f2, f6, f17, rtz # perform operation
fadd.s f2, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f2, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f2, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f2, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f2, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f2, f6, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7ef8654f)
li x25, 0x7ed41531 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f2, 0(x2) # load 0x7fbfffff from memory into f2
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f15, 0(x2) # load 0x7ef8654f from memory into f15
fadd.s f25, f2, f15, dyn # perform operation
fadd.s f25, f2, f15, rdn # perform operation
fadd.s f25, f2, f15, rmm # perform operation
fadd.s f25, f2, f15, rne # perform operation
fadd.s f25, f2, f15, rtz # perform operation
fadd.s f25, f2, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f2, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f2, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f2, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f2, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f2, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x813d9ab0)
li x9, 0x168a1182 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f29, 0(x2) # load 0x7fbfffff from memory into f29
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f25, 0(x2) # load 0x813d9ab0 from memory into f25
fadd.s f9, f29, f25, dyn # perform operation
fadd.s f9, f29, f25, rdn # perform operation
fadd.s f9, f29, f25, rmm # perform operation
fadd.s f9, f29, f25, rne # perform operation
fadd.s f9, f29, f25, rtz # perform operation
fadd.s f9, f29, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f29, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f29, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f29, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f29, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f29, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x0)
li x5, 0xba9ac0c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f17, 0(x2) # load 0x7ef8654f from memory into f17
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f6, 0(x2) # load 0x00000000 from memory into f6
fadd.s f5, f17, f6, dyn # perform operation
fadd.s f5, f17, f6, rdn # perform operation
fadd.s f5, f17, f6, rmm # perform operation
fadd.s f5, f17, f6, rne # perform operation
fadd.s f5, f17, f6, rtz # perform operation
fadd.s f5, f17, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f5, f17, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f5, f17, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f5, f17, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f5, f17, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f5, f17, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80000000)
li x15, 0x4666ca0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f8, 0(x2) # load 0x7ef8654f from memory into f8
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f19, 0(x2) # load 0x80000000 from memory into f19
fadd.s f15, f8, f19, dyn # perform operation
fadd.s f15, f8, f19, rdn # perform operation
fadd.s f15, f8, f19, rmm # perform operation
fadd.s f15, f8, f19, rne # perform operation
fadd.s f15, f8, f19, rtz # perform operation
fadd.s f15, f8, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f8, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f8, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f8, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f8, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f8, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x3f800000)
li x20, 0x7a25f77b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f4, 0(x2) # load 0x7ef8654f from memory into f4
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
fadd.s f20, f4, f6, dyn # perform operation
fadd.s f20, f4, f6, rdn # perform operation
fadd.s f20, f4, f6, rmm # perform operation
fadd.s f20, f4, f6, rne # perform operation
fadd.s f20, f4, f6, rtz # perform operation
fadd.s f20, f4, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f4, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f4, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f4, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f4, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f4, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xbf800000)
li x1, 0xb67d30f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f23, 0(x2) # load 0x7ef8654f from memory into f23
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f3, 0(x2) # load 0xbf800000 from memory into f3
fadd.s f1, f23, f3, dyn # perform operation
fadd.s f1, f23, f3, rdn # perform operation
fadd.s f1, f23, f3, rmm # perform operation
fadd.s f1, f23, f3, rne # perform operation
fadd.s f1, f23, f3, rtz # perform operation
fadd.s f1, f23, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f23, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f23, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f23, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f23, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f23, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x3fc00000)
li x7, 0x899ce607 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f24, 0(x2) # load 0x7ef8654f from memory into f24
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f1, 0(x2) # load 0x3fc00000 from memory into f1
fadd.s f7, f24, f1, dyn # perform operation
fadd.s f7, f24, f1, rdn # perform operation
fadd.s f7, f24, f1, rmm # perform operation
fadd.s f7, f24, f1, rne # perform operation
fadd.s f7, f24, f1, rtz # perform operation
fadd.s f7, f24, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f7, f24, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f7, f24, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f7, f24, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f7, f24, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f7, f24, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xbfc00000)
li x18, 0x15f06e04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f10, 0(x2) # load 0x7ef8654f from memory into f10
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f13, 0(x2) # load 0xbfc00000 from memory into f13
fadd.s f18, f10, f13, dyn # perform operation
fadd.s f18, f10, f13, rdn # perform operation
fadd.s f18, f10, f13, rmm # perform operation
fadd.s f18, f10, f13, rne # perform operation
fadd.s f18, f10, f13, rtz # perform operation
fadd.s f18, f10, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f10, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f10, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f10, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f10, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f10, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x40000000)
li x13, 0xf651402c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f27, 0(x2) # load 0x7ef8654f from memory into f27
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f19, 0(x2) # load 0x40000000 from memory into f19
fadd.s f13, f27, f19, dyn # perform operation
fadd.s f13, f27, f19, rdn # perform operation
fadd.s f13, f27, f19, rmm # perform operation
fadd.s f13, f27, f19, rne # perform operation
fadd.s f13, f27, f19, rtz # perform operation
fadd.s f13, f27, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f27, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f27, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f27, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f27, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f27, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xc0000000)
li x16, 0xf02b2bde # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f23, 0(x2) # load 0x7ef8654f from memory into f23
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f30, 0(x2) # load 0xc0000000 from memory into f30
fadd.s f16, f23, f30, dyn # perform operation
fadd.s f16, f23, f30, rdn # perform operation
fadd.s f16, f23, f30, rmm # perform operation
fadd.s f16, f23, f30, rne # perform operation
fadd.s f16, f23, f30, rtz # perform operation
fadd.s f16, f23, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f23, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f23, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f23, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f23, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f23, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x800000)
li x9, 0x0260b4d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f29, 0(x2) # load 0x7ef8654f from memory into f29
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f1, 0(x2) # load 0x00800000 from memory into f1
fadd.s f9, f29, f1, dyn # perform operation
fadd.s f9, f29, f1, rdn # perform operation
fadd.s f9, f29, f1, rmm # perform operation
fadd.s f9, f29, f1, rne # perform operation
fadd.s f9, f29, f1, rtz # perform operation
fadd.s f9, f29, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f29, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f29, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f29, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f29, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f29, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80800000)
li x23, 0x4e894659 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f11, 0(x2) # load 0x7ef8654f from memory into f11
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f21, 0(x2) # load 0x80800000 from memory into f21
fadd.s f23, f11, f21, dyn # perform operation
fadd.s f23, f11, f21, rdn # perform operation
fadd.s f23, f11, f21, rmm # perform operation
fadd.s f23, f11, f21, rne # perform operation
fadd.s f23, f11, f21, rtz # perform operation
fadd.s f23, f11, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f11, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f11, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f11, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f11, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f11, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f7fffff)
li x10, 0x3a56b77b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f1, 0(x2) # load 0x7ef8654f from memory into f1
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f14, 0(x2) # load 0x7f7fffff from memory into f14
fadd.s f10, f1, f14, dyn # perform operation
fadd.s f10, f1, f14, rdn # perform operation
fadd.s f10, f1, f14, rmm # perform operation
fadd.s f10, f1, f14, rne # perform operation
fadd.s f10, f1, f14, rtz # perform operation
fadd.s f10, f1, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f1, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f1, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f1, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f1, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f1, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xff7fffff)
li x4, 0x65c11efe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f28, 0(x2) # load 0x7ef8654f from memory into f28
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f30, 0(x2) # load 0xff7fffff from memory into f30
fadd.s f4, f28, f30, dyn # perform operation
fadd.s f4, f28, f30, rdn # perform operation
fadd.s f4, f28, f30, rmm # perform operation
fadd.s f4, f28, f30, rne # perform operation
fadd.s f4, f28, f30, rtz # perform operation
fadd.s f4, f28, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f28, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f28, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f28, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f28, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f28, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fffff)
li x30, 0xa8106016 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f17, 0(x2) # load 0x7ef8654f from memory into f17
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f19, 0(x2) # load 0x007fffff from memory into f19
fadd.s f30, f17, f19, dyn # perform operation
fadd.s f30, f17, f19, rdn # perform operation
fadd.s f30, f17, f19, rmm # perform operation
fadd.s f30, f17, f19, rne # perform operation
fadd.s f30, f17, f19, rtz # perform operation
fadd.s f30, f17, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f30, f17, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f30, f17, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f30, f17, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f30, f17, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f30, f17, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x807fffff)
li x20, 0x77750da3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f9, 0(x2) # load 0x7ef8654f from memory into f9
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f8, 0(x2) # load 0x807fffff from memory into f8
fadd.s f20, f9, f8, dyn # perform operation
fadd.s f20, f9, f8, rdn # perform operation
fadd.s f20, f9, f8, rmm # perform operation
fadd.s f20, f9, f8, rne # perform operation
fadd.s f20, f9, f8, rtz # perform operation
fadd.s f20, f9, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f9, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f9, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f9, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f9, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f9, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x400000)
li x20, 0x0ce0b303 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f29, 0(x2) # load 0x7ef8654f from memory into f29
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
fadd.s f20, f29, f12, dyn # perform operation
fadd.s f20, f29, f12, rdn # perform operation
fadd.s f20, f29, f12, rmm # perform operation
fadd.s f20, f29, f12, rne # perform operation
fadd.s f20, f29, f12, rtz # perform operation
fadd.s f20, f29, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f29, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f29, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f29, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f29, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f29, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80400000)
li x10, 0xd4c4561d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f31, 0(x2) # load 0x7ef8654f from memory into f31
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f3, 0(x2) # load 0x80400000 from memory into f3
fadd.s f10, f31, f3, dyn # perform operation
fadd.s f10, f31, f3, rdn # perform operation
fadd.s f10, f31, f3, rmm # perform operation
fadd.s f10, f31, f3, rne # perform operation
fadd.s f10, f31, f3, rtz # perform operation
fadd.s f10, f31, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f10, f31, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f10, f31, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f10, f31, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f10, f31, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f10, f31, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x1)
li x26, 0x83cf2408 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f2, 0(x2) # load 0x7ef8654f from memory into f2
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f1, 0(x2) # load 0x00000001 from memory into f1
fadd.s f26, f2, f1, dyn # perform operation
fadd.s f26, f2, f1, rdn # perform operation
fadd.s f26, f2, f1, rmm # perform operation
fadd.s f26, f2, f1, rne # perform operation
fadd.s f26, f2, f1, rtz # perform operation
fadd.s f26, f2, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f2, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f2, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f2, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f2, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f2, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80000001)
li x31, 0x21a0c649 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f27, 0(x2) # load 0x7ef8654f from memory into f27
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f2, 0(x2) # load 0x80000001 from memory into f2
fadd.s f31, f27, f2, dyn # perform operation
fadd.s f31, f27, f2, rdn # perform operation
fadd.s f31, f27, f2, rmm # perform operation
fadd.s f31, f27, f2, rne # perform operation
fadd.s f31, f27, f2, rtz # perform operation
fadd.s f31, f27, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f31, f27, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f31, f27, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f31, f27, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f31, f27, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f31, f27, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f800000)
li x22, 0x29d51031 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f15, 0(x2) # load 0x7ef8654f from memory into f15
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f17, 0(x2) # load 0x7f800000 from memory into f17
fadd.s f22, f15, f17, dyn # perform operation
fadd.s f22, f15, f17, rdn # perform operation
fadd.s f22, f15, f17, rmm # perform operation
fadd.s f22, f15, f17, rne # perform operation
fadd.s f22, f15, f17, rtz # perform operation
fadd.s f22, f15, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f15, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f15, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f15, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f15, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f15, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xff800000)
li x16, 0xdee468e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
fadd.s f16, f21, f9, dyn # perform operation
fadd.s f16, f21, f9, rdn # perform operation
fadd.s f16, f21, f9, rmm # perform operation
fadd.s f16, f21, f9, rne # perform operation
fadd.s f16, f21, f9, rtz # perform operation
fadd.s f16, f21, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f16, f21, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f16, f21, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f16, f21, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f16, f21, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f16, f21, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fc00000)
li x20, 0x20003bdd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
fadd.s f20, f21, f7, dyn # perform operation
fadd.s f20, f21, f7, rdn # perform operation
fadd.s f20, f21, f7, rmm # perform operation
fadd.s f20, f21, f7, rne # perform operation
fadd.s f20, f21, f7, rtz # perform operation
fadd.s f20, f21, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f20, f21, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f20, f21, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f20, f21, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f20, f21, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f20, f21, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fffffff)
li x23, 0x59bdd1b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f20, 0(x2) # load 0x7ef8654f from memory into f20
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f26, 0(x2) # load 0x7fffffff from memory into f26
fadd.s f23, f20, f26, dyn # perform operation
fadd.s f23, f20, f26, rdn # perform operation
fadd.s f23, f20, f26, rmm # perform operation
fadd.s f23, f20, f26, rne # perform operation
fadd.s f23, f20, f26, rtz # perform operation
fadd.s f23, f20, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f20, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f20, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f20, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f20, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f20, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f800001)
li x29, 0x915d2517 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f30, 0(x2) # load 0x7ef8654f from memory into f30
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f1, 0(x2) # load 0x7f800001 from memory into f1
fadd.s f29, f30, f1, dyn # perform operation
fadd.s f29, f30, f1, rdn # perform operation
fadd.s f29, f30, f1, rmm # perform operation
fadd.s f29, f30, f1, rne # perform operation
fadd.s f29, f30, f1, rtz # perform operation
fadd.s f29, f30, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f29, f30, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f29, f30, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f29, f30, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f29, f30, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f29, f30, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fbfffff)
li x18, 0x76dd8e23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f3, 0(x2) # load 0x7ef8654f from memory into f3
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
fadd.s f18, f3, f31, dyn # perform operation
fadd.s f18, f3, f31, rdn # perform operation
fadd.s f18, f3, f31, rmm # perform operation
fadd.s f18, f3, f31, rne # perform operation
fadd.s f18, f3, f31, rtz # perform operation
fadd.s f18, f3, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f3, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f3, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f3, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f3, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f3, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7ef8654f)
li x12, 0x1166c110 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f22, 0(x2) # load 0x7ef8654f from memory into f22
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f6, 0(x2) # load 0x7ef8654f from memory into f6
fadd.s f12, f22, f6, dyn # perform operation
fadd.s f12, f22, f6, rdn # perform operation
fadd.s f12, f22, f6, rmm # perform operation
fadd.s f12, f22, f6, rne # perform operation
fadd.s f12, f22, f6, rtz # perform operation
fadd.s f12, f22, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f22, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f22, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f22, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f22, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f22, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x813d9ab0)
li x13, 0x95d7fde8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f30, 0(x2) # load 0x7ef8654f from memory into f30
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f12, 0(x2) # load 0x813d9ab0 from memory into f12
fadd.s f13, f30, f12, dyn # perform operation
fadd.s f13, f30, f12, rdn # perform operation
fadd.s f13, f30, f12, rmm # perform operation
fadd.s f13, f30, f12, rne # perform operation
fadd.s f13, f30, f12, rtz # perform operation
fadd.s f13, f30, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f30, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f30, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f30, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f30, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f30, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x0)
li x11, 0x210c010e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
fadd.s f11, f21, f29, dyn # perform operation
fadd.s f11, f21, f29, rdn # perform operation
fadd.s f11, f21, f29, rmm # perform operation
fadd.s f11, f21, f29, rne # perform operation
fadd.s f11, f21, f29, rtz # perform operation
fadd.s f11, f21, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f11, f21, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f11, f21, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f11, f21, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f11, f21, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f11, f21, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80000000)
li x23, 0x6db98c2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f10, 0(x2) # load 0x80000000 from memory into f10
fadd.s f23, f21, f10, dyn # perform operation
fadd.s f23, f21, f10, rdn # perform operation
fadd.s f23, f21, f10, rmm # perform operation
fadd.s f23, f21, f10, rne # perform operation
fadd.s f23, f21, f10, rtz # perform operation
fadd.s f23, f21, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f23, f21, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f23, f21, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f23, f21, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f23, f21, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f23, f21, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x3f800000)
li x28, 0x2bc7097f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f4, 0(x2) # load 0x3f800000 from memory into f4
fadd.s f28, f22, f4, dyn # perform operation
fadd.s f28, f22, f4, rdn # perform operation
fadd.s f28, f22, f4, rmm # perform operation
fadd.s f28, f22, f4, rne # perform operation
fadd.s f28, f22, f4, rtz # perform operation
fadd.s f28, f22, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f28, f22, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f28, f22, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f28, f22, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f28, f22, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f28, f22, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xbf800000)
li x26, 0xed3b00ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f30, 0(x2) # load 0x813d9ab0 from memory into f30
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f31, 0(x2) # load 0xbf800000 from memory into f31
fadd.s f26, f30, f31, dyn # perform operation
fadd.s f26, f30, f31, rdn # perform operation
fadd.s f26, f30, f31, rmm # perform operation
fadd.s f26, f30, f31, rne # perform operation
fadd.s f26, f30, f31, rtz # perform operation
fadd.s f26, f30, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f26, f30, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f26, f30, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f26, f30, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f26, f30, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f26, f30, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x3fc00000)
li x4, 0x5249fe95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f6, 0(x2) # load 0x813d9ab0 from memory into f6
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f1, 0(x2) # load 0x3fc00000 from memory into f1
fadd.s f4, f6, f1, dyn # perform operation
fadd.s f4, f6, f1, rdn # perform operation
fadd.s f4, f6, f1, rmm # perform operation
fadd.s f4, f6, f1, rne # perform operation
fadd.s f4, f6, f1, rtz # perform operation
fadd.s f4, f6, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f4, f6, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f4, f6, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f4, f6, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f4, f6, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f4, f6, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xbfc00000)
li x24, 0x48dfa25e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f19, 0(x2) # load 0x813d9ab0 from memory into f19
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
fadd.s f24, f19, f29, dyn # perform operation
fadd.s f24, f19, f29, rdn # perform operation
fadd.s f24, f19, f29, rmm # perform operation
fadd.s f24, f19, f29, rne # perform operation
fadd.s f24, f19, f29, rtz # perform operation
fadd.s f24, f19, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f19, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f19, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f19, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f19, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f19, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x40000000)
li x25, 0x208419cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f18, 0(x2) # load 0x813d9ab0 from memory into f18
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f3, 0(x2) # load 0x40000000 from memory into f3
fadd.s f25, f18, f3, dyn # perform operation
fadd.s f25, f18, f3, rdn # perform operation
fadd.s f25, f18, f3, rmm # perform operation
fadd.s f25, f18, f3, rne # perform operation
fadd.s f25, f18, f3, rtz # perform operation
fadd.s f25, f18, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f18, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f18, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f18, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f18, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f18, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xc0000000)
li x25, 0x7dca928b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f18, 0(x2) # load 0x813d9ab0 from memory into f18
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f15, 0(x2) # load 0xc0000000 from memory into f15
fadd.s f25, f18, f15, dyn # perform operation
fadd.s f25, f18, f15, rdn # perform operation
fadd.s f25, f18, f15, rmm # perform operation
fadd.s f25, f18, f15, rne # perform operation
fadd.s f25, f18, f15, rtz # perform operation
fadd.s f25, f18, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f18, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f18, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f18, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f18, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f18, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x800000)
li x13, 0x69ec41fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f12, 0(x2) # load 0x813d9ab0 from memory into f12
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f5, 0(x2) # load 0x00800000 from memory into f5
fadd.s f13, f12, f5, dyn # perform operation
fadd.s f13, f12, f5, rdn # perform operation
fadd.s f13, f12, f5, rmm # perform operation
fadd.s f13, f12, f5, rne # perform operation
fadd.s f13, f12, f5, rtz # perform operation
fadd.s f13, f12, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f13, f12, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f13, f12, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f13, f12, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f13, f12, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f13, f12, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80800000)
li x24, 0x27e62ba6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f11, 0(x2) # load 0x813d9ab0 from memory into f11
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f5, 0(x2) # load 0x80800000 from memory into f5
fadd.s f24, f11, f5, dyn # perform operation
fadd.s f24, f11, f5, rdn # perform operation
fadd.s f24, f11, f5, rmm # perform operation
fadd.s f24, f11, f5, rne # perform operation
fadd.s f24, f11, f5, rtz # perform operation
fadd.s f24, f11, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f24, f11, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f24, f11, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f24, f11, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f24, f11, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f24, f11, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f7fffff)
li x25, 0xc6dc96d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f15, 0(x2) # load 0x813d9ab0 from memory into f15
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f20, 0(x2) # load 0x7f7fffff from memory into f20
fadd.s f25, f15, f20, dyn # perform operation
fadd.s f25, f15, f20, rdn # perform operation
fadd.s f25, f15, f20, rmm # perform operation
fadd.s f25, f15, f20, rne # perform operation
fadd.s f25, f15, f20, rtz # perform operation
fadd.s f25, f15, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f15, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f15, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f15, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f15, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f15, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xff7fffff)
li x17, 0x130f0311 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f23, 0(x2) # load 0x813d9ab0 from memory into f23
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f19, 0(x2) # load 0xff7fffff from memory into f19
fadd.s f17, f23, f19, dyn # perform operation
fadd.s f17, f23, f19, rdn # perform operation
fadd.s f17, f23, f19, rmm # perform operation
fadd.s f17, f23, f19, rne # perform operation
fadd.s f17, f23, f19, rtz # perform operation
fadd.s f17, f23, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f17, f23, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f17, f23, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f17, f23, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f17, f23, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f17, f23, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fffff)
li x6, 0x7df7e1bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f15, 0(x2) # load 0x813d9ab0 from memory into f15
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f30, 0(x2) # load 0x007fffff from memory into f30
fadd.s f6, f15, f30, dyn # perform operation
fadd.s f6, f15, f30, rdn # perform operation
fadd.s f6, f15, f30, rmm # perform operation
fadd.s f6, f15, f30, rne # perform operation
fadd.s f6, f15, f30, rtz # perform operation
fadd.s f6, f15, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f6, f15, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f6, f15, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f6, f15, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f6, f15, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f6, f15, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x807fffff)
li x25, 0xb98a049f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f27, 0(x2) # load 0x813d9ab0 from memory into f27
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f26, 0(x2) # load 0x807fffff from memory into f26
fadd.s f25, f27, f26, dyn # perform operation
fadd.s f25, f27, f26, rdn # perform operation
fadd.s f25, f27, f26, rmm # perform operation
fadd.s f25, f27, f26, rne # perform operation
fadd.s f25, f27, f26, rtz # perform operation
fadd.s f25, f27, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f25, f27, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f25, f27, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f25, f27, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f25, f27, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f25, f27, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x400000)
li x19, 0x1127705b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f8, 0(x2) # load 0x813d9ab0 from memory into f8
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f5, 0(x2) # load 0x00400000 from memory into f5
fadd.s f19, f8, f5, dyn # perform operation
fadd.s f19, f8, f5, rdn # perform operation
fadd.s f19, f8, f5, rmm # perform operation
fadd.s f19, f8, f5, rne # perform operation
fadd.s f19, f8, f5, rtz # perform operation
fadd.s f19, f8, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f8, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f8, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f8, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f8, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f8, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80400000)
li x15, 0xa1d84c03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f23, 0(x2) # load 0x813d9ab0 from memory into f23
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f28, 0(x2) # load 0x80400000 from memory into f28
fadd.s f15, f23, f28, dyn # perform operation
fadd.s f15, f23, f28, rdn # perform operation
fadd.s f15, f23, f28, rmm # perform operation
fadd.s f15, f23, f28, rne # perform operation
fadd.s f15, f23, f28, rtz # perform operation
fadd.s f15, f23, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f15, f23, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f15, f23, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f15, f23, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f15, f23, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f15, f23, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x1)
li x22, 0xf9b513f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f25, 0(x2) # load 0x813d9ab0 from memory into f25
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f4, 0(x2) # load 0x00000001 from memory into f4
fadd.s f22, f25, f4, dyn # perform operation
fadd.s f22, f25, f4, rdn # perform operation
fadd.s f22, f25, f4, rmm # perform operation
fadd.s f22, f25, f4, rne # perform operation
fadd.s f22, f25, f4, rtz # perform operation
fadd.s f22, f25, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f22, f25, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f22, f25, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f22, f25, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f22, f25, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f22, f25, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80000001)
li x1, 0x864726f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f26, 0(x2) # load 0x813d9ab0 from memory into f26
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f6, 0(x2) # load 0x80000001 from memory into f6
fadd.s f1, f26, f6, dyn # perform operation
fadd.s f1, f26, f6, rdn # perform operation
fadd.s f1, f26, f6, rmm # perform operation
fadd.s f1, f26, f6, rne # perform operation
fadd.s f1, f26, f6, rtz # perform operation
fadd.s f1, f26, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f26, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f26, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f26, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f26, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f26, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f800000)
li x19, 0x0a50006c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f25, 0(x2) # load 0x813d9ab0 from memory into f25
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f2, 0(x2) # load 0x7f800000 from memory into f2
fadd.s f19, f25, f2, dyn # perform operation
fadd.s f19, f25, f2, rdn # perform operation
fadd.s f19, f25, f2, rmm # perform operation
fadd.s f19, f25, f2, rne # perform operation
fadd.s f19, f25, f2, rtz # perform operation
fadd.s f19, f25, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f19, f25, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f19, f25, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f19, f25, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f19, f25, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f19, f25, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xff800000)
li x18, 0x0539e40c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f20, 0(x2) # load 0x813d9ab0 from memory into f20
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
fadd.s f18, f20, f30, dyn # perform operation
fadd.s f18, f20, f30, rdn # perform operation
fadd.s f18, f20, f30, rmm # perform operation
fadd.s f18, f20, f30, rne # perform operation
fadd.s f18, f20, f30, rtz # perform operation
fadd.s f18, f20, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f18, f20, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f18, f20, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f18, f20, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f18, f20, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f18, f20, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fc00000)
li x27, 0x27abd38a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f20, 0(x2) # load 0x813d9ab0 from memory into f20
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f16, 0(x2) # load 0x7fc00000 from memory into f16
fadd.s f27, f20, f16, dyn # perform operation
fadd.s f27, f20, f16, rdn # perform operation
fadd.s f27, f20, f16, rmm # perform operation
fadd.s f27, f20, f16, rne # perform operation
fadd.s f27, f20, f16, rtz # perform operation
fadd.s f27, f20, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f20, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f20, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f20, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f20, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f20, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fffffff)
li x12, 0xf6286ffe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f7, 0(x2) # load 0x813d9ab0 from memory into f7
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f6, 0(x2) # load 0x7fffffff from memory into f6
fadd.s f12, f7, f6, dyn # perform operation
fadd.s f12, f7, f6, rdn # perform operation
fadd.s f12, f7, f6, rmm # perform operation
fadd.s f12, f7, f6, rne # perform operation
fadd.s f12, f7, f6, rtz # perform operation
fadd.s f12, f7, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f12, f7, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f12, f7, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f12, f7, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f12, f7, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f12, f7, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f800001)
li x3, 0xfd617fd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f16, 0(x2) # load 0x813d9ab0 from memory into f16
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
fadd.s f3, f16, f21, dyn # perform operation
fadd.s f3, f16, f21, rdn # perform operation
fadd.s f3, f16, f21, rmm # perform operation
fadd.s f3, f16, f21, rne # perform operation
fadd.s f3, f16, f21, rtz # perform operation
fadd.s f3, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f3, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f3, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f3, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f3, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f3, f16, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fbfffff)
li x9, 0xb76af1b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f1, 0(x2) # load 0x7fbfffff from memory into f1
fadd.s f9, f17, f1, dyn # perform operation
fadd.s f9, f17, f1, rdn # perform operation
fadd.s f9, f17, f1, rmm # perform operation
fadd.s f9, f17, f1, rne # perform operation
fadd.s f9, f17, f1, rtz # perform operation
fadd.s f9, f17, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f9, f17, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f9, f17, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f9, f17, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f9, f17, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f9, f17, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7ef8654f)
li x27, 0x2dcc521e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f24, 0(x2) # load 0x813d9ab0 from memory into f24
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f8, 0(x2) # load 0x7ef8654f from memory into f8
fadd.s f27, f24, f8, dyn # perform operation
fadd.s f27, f24, f8, rdn # perform operation
fadd.s f27, f24, f8, rmm # perform operation
fadd.s f27, f24, f8, rne # perform operation
fadd.s f27, f24, f8, rtz # perform operation
fadd.s f27, f24, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f27, f24, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f27, f24, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f27, f24, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f27, f24, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f27, f24, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x813d9ab0)
li x1, 0x7728462c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f20, 0(x2) # load 0x813d9ab0 from memory into f20
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f23, 0(x2) # load 0x813d9ab0 from memory into f23
fadd.s f1, f20, f23, dyn # perform operation
fadd.s f1, f20, f23, rdn # perform operation
fadd.s f1, f20, f23, rmm # perform operation
fadd.s f1, f20, f23, rne # perform operation
fadd.s f1, f20, f23, rtz # perform operation
fadd.s f1, f20, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fadd.s f1, f20, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fadd.s f1, f20, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fadd.s f1, f20, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fadd.s f1, f20, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fadd.s f1, f20, f23 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x231dff63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf6ac5b84 # load x3 with value 0xf6ac5b84
sw x3, 0(x2) # store 0xf6ac5b84 in memory
flw f3, 0(x2) # load 0xf6ac5b84 from memory into f3
li x3, 0x2a413af8 # load x3 with value 0x2a413af8
sw x3, 0(x2) # store 0x2a413af8 in memory
flw f31, 0(x2) # load 0x2a413af8 from memory into f31
fadd.s f0, f3, f31 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0xeb240539 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9c5f3f0c # load x3 with value 0x9c5f3f0c
sw x3, 0(x2) # store 0x9c5f3f0c in memory
flw f15, 0(x2) # load 0x9c5f3f0c from memory into f15
li x3, 0x19448ea0 # load x3 with value 0x19448ea0
sw x3, 0(x2) # store 0x19448ea0 in memory
flw f19, 0(x2) # load 0x19448ea0 from memory into f19
fadd.s f1, f15, f19 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0xb0c64338 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6b52d18b # load x3 with value 0x6b52d18b
sw x3, 0(x2) # store 0x6b52d18b in memory
flw f5, 0(x2) # load 0x6b52d18b from memory into f5
li x3, 0x84dbf885 # load x3 with value 0x84dbf885
sw x3, 0(x2) # store 0x84dbf885 in memory
flw f1, 0(x2) # load 0x84dbf885 from memory into f1
fadd.s f2, f5, f1 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x806cfe8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x62a8b6df # load x3 with value 0x62a8b6df
sw x3, 0(x2) # store 0x62a8b6df in memory
flw f6, 0(x2) # load 0x62a8b6df from memory into f6
li x3, 0xeb5faca8 # load x3 with value 0xeb5faca8
sw x3, 0(x2) # store 0xeb5faca8 in memory
flw f14, 0(x2) # load 0xeb5faca8 from memory into f14
fadd.s f3, f6, f14 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0xd8823a97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2f293291 # load x3 with value 0x2f293291
sw x3, 0(x2) # store 0x2f293291 in memory
flw f22, 0(x2) # load 0x2f293291 from memory into f22
li x3, 0xc799eb83 # load x3 with value 0xc799eb83
sw x3, 0(x2) # store 0xc799eb83 in memory
flw f10, 0(x2) # load 0xc799eb83 from memory into f10
fadd.s f4, f22, f10 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0xe19603ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3950bc29 # load x3 with value 0x3950bc29
sw x3, 0(x2) # store 0x3950bc29 in memory
flw f6, 0(x2) # load 0x3950bc29 from memory into f6
li x3, 0x2d6377d5 # load x3 with value 0x2d6377d5
sw x3, 0(x2) # store 0x2d6377d5 in memory
flw f23, 0(x2) # load 0x2d6377d5 from memory into f23
fadd.s f5, f6, f23 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x11fb71eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x28ea8e00 # load x3 with value 0x28ea8e00
sw x3, 0(x2) # store 0x28ea8e00 in memory
flw f26, 0(x2) # load 0x28ea8e00 from memory into f26
li x3, 0x073e035a # load x3 with value 0x073e035a
sw x3, 0(x2) # store 0x073e035a in memory
flw f9, 0(x2) # load 0x073e035a from memory into f9
fadd.s f6, f26, f9 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x1b3277d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3aac03d2 # load x3 with value 0x3aac03d2
sw x3, 0(x2) # store 0x3aac03d2 in memory
flw f28, 0(x2) # load 0x3aac03d2 from memory into f28
li x3, 0x53f4b0b3 # load x3 with value 0x53f4b0b3
sw x3, 0(x2) # store 0x53f4b0b3 in memory
flw f3, 0(x2) # load 0x53f4b0b3 from memory into f3
fadd.s f7, f28, f3 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x200ae5d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6fd89739 # load x3 with value 0x6fd89739
sw x3, 0(x2) # store 0x6fd89739 in memory
flw f20, 0(x2) # load 0x6fd89739 from memory into f20
li x3, 0x45782153 # load x3 with value 0x45782153
sw x3, 0(x2) # store 0x45782153 in memory
flw f14, 0(x2) # load 0x45782153 from memory into f14
fadd.s f8, f20, f14 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x5ae982d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x77f8ef59 # load x3 with value 0x77f8ef59
sw x3, 0(x2) # store 0x77f8ef59 in memory
flw f4, 0(x2) # load 0x77f8ef59 from memory into f4
li x3, 0x890c632f # load x3 with value 0x890c632f
sw x3, 0(x2) # store 0x890c632f in memory
flw f27, 0(x2) # load 0x890c632f from memory into f27
fadd.s f9, f4, f27 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0xc391f876 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x833eb16d # load x3 with value 0x833eb16d
sw x3, 0(x2) # store 0x833eb16d in memory
flw f16, 0(x2) # load 0x833eb16d from memory into f16
li x3, 0xced24e51 # load x3 with value 0xced24e51
sw x3, 0(x2) # store 0xced24e51 in memory
flw f21, 0(x2) # load 0xced24e51 from memory into f21
fadd.s f10, f16, f21 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x283973b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x36037da8 # load x3 with value 0x36037da8
sw x3, 0(x2) # store 0x36037da8 in memory
flw f4, 0(x2) # load 0x36037da8 from memory into f4
li x3, 0xc2fb892f # load x3 with value 0xc2fb892f
sw x3, 0(x2) # store 0xc2fb892f in memory
flw f6, 0(x2) # load 0xc2fb892f from memory into f6
fadd.s f11, f4, f6 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x25b23e90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5740adc4 # load x3 with value 0x5740adc4
sw x3, 0(x2) # store 0x5740adc4 in memory
flw f8, 0(x2) # load 0x5740adc4 from memory into f8
li x3, 0x105b3073 # load x3 with value 0x105b3073
sw x3, 0(x2) # store 0x105b3073 in memory
flw f7, 0(x2) # load 0x105b3073 from memory into f7
fadd.s f12, f8, f7 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0xb9396a43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x437e71b4 # load x3 with value 0x437e71b4
sw x3, 0(x2) # store 0x437e71b4 in memory
flw f26, 0(x2) # load 0x437e71b4 from memory into f26
li x3, 0xbfdcf4a1 # load x3 with value 0xbfdcf4a1
sw x3, 0(x2) # store 0xbfdcf4a1 in memory
flw f7, 0(x2) # load 0xbfdcf4a1 from memory into f7
fadd.s f13, f26, f7 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x7d02c729 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2251f2b5 # load x3 with value 0x2251f2b5
sw x3, 0(x2) # store 0x2251f2b5 in memory
flw f6, 0(x2) # load 0x2251f2b5 from memory into f6
li x3, 0x7f0d79ec # load x3 with value 0x7f0d79ec
sw x3, 0(x2) # store 0x7f0d79ec in memory
flw f28, 0(x2) # load 0x7f0d79ec from memory into f28
fadd.s f14, f6, f28 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x939b3530 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x39f05150 # load x3 with value 0x39f05150
sw x3, 0(x2) # store 0x39f05150 in memory
flw f4, 0(x2) # load 0x39f05150 from memory into f4
li x3, 0x7db0d5ab # load x3 with value 0x7db0d5ab
sw x3, 0(x2) # store 0x7db0d5ab in memory
flw f25, 0(x2) # load 0x7db0d5ab from memory into f25
fadd.s f15, f4, f25 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x0ca09e4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa7896109 # load x3 with value 0xa7896109
sw x3, 0(x2) # store 0xa7896109 in memory
flw f22, 0(x2) # load 0xa7896109 from memory into f22
li x3, 0x387d237a # load x3 with value 0x387d237a
sw x3, 0(x2) # store 0x387d237a in memory
flw f1, 0(x2) # load 0x387d237a from memory into f1
fadd.s f16, f22, f1 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x3818f5cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6a5e7874 # load x3 with value 0x6a5e7874
sw x3, 0(x2) # store 0x6a5e7874 in memory
flw f3, 0(x2) # load 0x6a5e7874 from memory into f3
li x3, 0xc1512466 # load x3 with value 0xc1512466
sw x3, 0(x2) # store 0xc1512466 in memory
flw f30, 0(x2) # load 0xc1512466 from memory into f30
fadd.s f17, f3, f30 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x227eb966 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf336a956 # load x3 with value 0xf336a956
sw x3, 0(x2) # store 0xf336a956 in memory
flw f21, 0(x2) # load 0xf336a956 from memory into f21
li x3, 0x6c329908 # load x3 with value 0x6c329908
sw x3, 0(x2) # store 0x6c329908 in memory
flw f25, 0(x2) # load 0x6c329908 from memory into f25
fadd.s f18, f21, f25 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x2d672b5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x62518abd # load x3 with value 0x62518abd
sw x3, 0(x2) # store 0x62518abd in memory
flw f14, 0(x2) # load 0x62518abd from memory into f14
li x3, 0xe5fd8810 # load x3 with value 0xe5fd8810
sw x3, 0(x2) # store 0xe5fd8810 in memory
flw f10, 0(x2) # load 0xe5fd8810 from memory into f10
fadd.s f19, f14, f10 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x490469f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x70154a81 # load x3 with value 0x70154a81
sw x3, 0(x2) # store 0x70154a81 in memory
flw f26, 0(x2) # load 0x70154a81 from memory into f26
li x3, 0x95ed46a6 # load x3 with value 0x95ed46a6
sw x3, 0(x2) # store 0x95ed46a6 in memory
flw f19, 0(x2) # load 0x95ed46a6 from memory into f19
fadd.s f20, f26, f19 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x35988208 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5484b344 # load x3 with value 0x5484b344
sw x3, 0(x2) # store 0x5484b344 in memory
flw f10, 0(x2) # load 0x5484b344 from memory into f10
li x3, 0x3d1fef39 # load x3 with value 0x3d1fef39
sw x3, 0(x2) # store 0x3d1fef39 in memory
flw f4, 0(x2) # load 0x3d1fef39 from memory into f4
fadd.s f21, f10, f4 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x5304afcd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x673a028f # load x3 with value 0x673a028f
sw x3, 0(x2) # store 0x673a028f in memory
flw f22, 0(x2) # load 0x673a028f from memory into f22
li x3, 0x473ffae2 # load x3 with value 0x473ffae2
sw x3, 0(x2) # store 0x473ffae2 in memory
flw f6, 0(x2) # load 0x473ffae2 from memory into f6
fadd.s f22, f22, f6 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x817794cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2d795940 # load x3 with value 0x2d795940
sw x3, 0(x2) # store 0x2d795940 in memory
flw f22, 0(x2) # load 0x2d795940 from memory into f22
li x3, 0xe5e23bf0 # load x3 with value 0xe5e23bf0
sw x3, 0(x2) # store 0xe5e23bf0 in memory
flw f11, 0(x2) # load 0xe5e23bf0 from memory into f11
fadd.s f23, f22, f11 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x893cac46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3c66b9b0 # load x3 with value 0x3c66b9b0
sw x3, 0(x2) # store 0x3c66b9b0 in memory
flw f4, 0(x2) # load 0x3c66b9b0 from memory into f4
li x3, 0xfb9d0109 # load x3 with value 0xfb9d0109
sw x3, 0(x2) # store 0xfb9d0109 in memory
flw f11, 0(x2) # load 0xfb9d0109 from memory into f11
fadd.s f24, f4, f11 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0xc05a9774 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd3422ec5 # load x3 with value 0xd3422ec5
sw x3, 0(x2) # store 0xd3422ec5 in memory
flw f19, 0(x2) # load 0xd3422ec5 from memory into f19
li x3, 0x4c20231e # load x3 with value 0x4c20231e
sw x3, 0(x2) # store 0x4c20231e in memory
flw f9, 0(x2) # load 0x4c20231e from memory into f9
fadd.s f25, f19, f9 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x2147ce8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcf48b872 # load x3 with value 0xcf48b872
sw x3, 0(x2) # store 0xcf48b872 in memory
flw f16, 0(x2) # load 0xcf48b872 from memory into f16
li x3, 0xa32d72dc # load x3 with value 0xa32d72dc
sw x3, 0(x2) # store 0xa32d72dc in memory
flw f2, 0(x2) # load 0xa32d72dc from memory into f2
fadd.s f26, f16, f2 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x589169e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb7fac308 # load x3 with value 0xb7fac308
sw x3, 0(x2) # store 0xb7fac308 in memory
flw f1, 0(x2) # load 0xb7fac308 from memory into f1
li x3, 0x7177e1b0 # load x3 with value 0x7177e1b0
sw x3, 0(x2) # store 0x7177e1b0 in memory
flw f23, 0(x2) # load 0x7177e1b0 from memory into f23
fadd.s f27, f1, f23 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0xd22409c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2be69618 # load x3 with value 0x2be69618
sw x3, 0(x2) # store 0x2be69618 in memory
flw f23, 0(x2) # load 0x2be69618 from memory into f23
li x3, 0xa8cb5f33 # load x3 with value 0xa8cb5f33
sw x3, 0(x2) # store 0xa8cb5f33 in memory
flw f26, 0(x2) # load 0xa8cb5f33 from memory into f26
fadd.s f28, f23, f26 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x93557ff7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40e86650 # load x3 with value 0x40e86650
sw x3, 0(x2) # store 0x40e86650 in memory
flw f7, 0(x2) # load 0x40e86650 from memory into f7
li x3, 0xceead100 # load x3 with value 0xceead100
sw x3, 0(x2) # store 0xceead100 in memory
flw f21, 0(x2) # load 0xceead100 from memory into f21
fadd.s f29, f7, f21 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x407ba454 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9b41e632 # load x3 with value 0x9b41e632
sw x3, 0(x2) # store 0x9b41e632 in memory
flw f25, 0(x2) # load 0x9b41e632 from memory into f25
li x3, 0x545c22ae # load x3 with value 0x545c22ae
sw x3, 0(x2) # store 0x545c22ae in memory
flw f6, 0(x2) # load 0x545c22ae from memory into f6
fadd.s f30, f25, f6 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0xeeaa601a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x600bdd91 # load x3 with value 0x600bdd91
sw x3, 0(x2) # store 0x600bdd91 in memory
flw f23, 0(x2) # load 0x600bdd91 from memory into f23
li x3, 0x5f2ecaf6 # load x3 with value 0x5f2ecaf6
sw x3, 0(x2) # store 0x5f2ecaf6 in memory
flw f24, 0(x2) # load 0x5f2ecaf6 from memory into f24
fadd.s f31, f23, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x11, 0xb34239fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x68d4cffb # load x3 with value 0x68d4cffb
sw x3, 0(x2) # store 0x68d4cffb in memory
flw f0, 0(x2) # load 0x68d4cffb from memory into f0
li x3, 0x1fbdadd6 # load x3 with value 0x1fbdadd6
sw x3, 0(x2) # store 0x1fbdadd6 in memory
flw f23, 0(x2) # load 0x1fbdadd6 from memory into f23
fadd.s f11, f0, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x31, 0x409643fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xebe4e2fe # load x3 with value 0xebe4e2fe
sw x3, 0(x2) # store 0xebe4e2fe in memory
flw f1, 0(x2) # load 0xebe4e2fe from memory into f1
li x3, 0x9446a9ea # load x3 with value 0x9446a9ea
sw x3, 0(x2) # store 0x9446a9ea in memory
flw f27, 0(x2) # load 0x9446a9ea from memory into f27
fadd.s f31, f1, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x14, 0x1ad1cff8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x34d333eb # load x3 with value 0x34d333eb
sw x3, 0(x2) # store 0x34d333eb in memory
flw f2, 0(x2) # load 0x34d333eb from memory into f2
li x3, 0xd347724f # load x3 with value 0xd347724f
sw x3, 0(x2) # store 0xd347724f in memory
flw f1, 0(x2) # load 0xd347724f from memory into f1
fadd.s f14, f2, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x22, 0x966f321e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x87bd5d59 # load x3 with value 0x87bd5d59
sw x3, 0(x2) # store 0x87bd5d59 in memory
flw f3, 0(x2) # load 0x87bd5d59 from memory into f3
li x3, 0x0b0e3d48 # load x3 with value 0x0b0e3d48
sw x3, 0(x2) # store 0x0b0e3d48 in memory
flw f12, 0(x2) # load 0x0b0e3d48 from memory into f12
fadd.s f22, f3, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x9, 0x8734f1cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6b9408d9 # load x3 with value 0x6b9408d9
sw x3, 0(x2) # store 0x6b9408d9 in memory
flw f4, 0(x2) # load 0x6b9408d9 from memory into f4
li x3, 0xea9f550d # load x3 with value 0xea9f550d
sw x3, 0(x2) # store 0xea9f550d in memory
flw f3, 0(x2) # load 0xea9f550d from memory into f3
fadd.s f9, f4, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x14, 0x29259e50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc8f4db8e # load x3 with value 0xc8f4db8e
sw x3, 0(x2) # store 0xc8f4db8e in memory
flw f5, 0(x2) # load 0xc8f4db8e from memory into f5
li x3, 0x328da1f3 # load x3 with value 0x328da1f3
sw x3, 0(x2) # store 0x328da1f3 in memory
flw f21, 0(x2) # load 0x328da1f3 from memory into f21
fadd.s f14, f5, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x6, 0x541defcb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf87157ad # load x3 with value 0xf87157ad
sw x3, 0(x2) # store 0xf87157ad in memory
flw f6, 0(x2) # load 0xf87157ad from memory into f6
li x3, 0xee102932 # load x3 with value 0xee102932
sw x3, 0(x2) # store 0xee102932 in memory
flw f13, 0(x2) # load 0xee102932 from memory into f13
fadd.s f6, f6, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x24, 0x7c338bce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbbcc9825 # load x3 with value 0xbbcc9825
sw x3, 0(x2) # store 0xbbcc9825 in memory
flw f7, 0(x2) # load 0xbbcc9825 from memory into f7
li x3, 0x6ceb0dca # load x3 with value 0x6ceb0dca
sw x3, 0(x2) # store 0x6ceb0dca in memory
flw f20, 0(x2) # load 0x6ceb0dca from memory into f20
fadd.s f24, f7, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x28, 0xb74f0a57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x63b58db4 # load x3 with value 0x63b58db4
sw x3, 0(x2) # store 0x63b58db4 in memory
flw f8, 0(x2) # load 0x63b58db4 from memory into f8
li x3, 0x646739f8 # load x3 with value 0x646739f8
sw x3, 0(x2) # store 0x646739f8 in memory
flw f4, 0(x2) # load 0x646739f8 from memory into f4
fadd.s f28, f8, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x10, 0xd97330c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x72a64971 # load x3 with value 0x72a64971
sw x3, 0(x2) # store 0x72a64971 in memory
flw f9, 0(x2) # load 0x72a64971 from memory into f9
li x3, 0x91b9315c # load x3 with value 0x91b9315c
sw x3, 0(x2) # store 0x91b9315c in memory
flw f7, 0(x2) # load 0x91b9315c from memory into f7
fadd.s f10, f9, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x30, 0xa2ff1c86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xccbf671e # load x3 with value 0xccbf671e
sw x3, 0(x2) # store 0xccbf671e in memory
flw f10, 0(x2) # load 0xccbf671e from memory into f10
li x3, 0xc1c50bd9 # load x3 with value 0xc1c50bd9
sw x3, 0(x2) # store 0xc1c50bd9 in memory
flw f9, 0(x2) # load 0xc1c50bd9 from memory into f9
fadd.s f30, f10, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x31, 0x0df0a53a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x634b3814 # load x3 with value 0x634b3814
sw x3, 0(x2) # store 0x634b3814 in memory
flw f11, 0(x2) # load 0x634b3814 from memory into f11
li x3, 0xda538e35 # load x3 with value 0xda538e35
sw x3, 0(x2) # store 0xda538e35 in memory
flw f1, 0(x2) # load 0xda538e35 from memory into f1
fadd.s f31, f11, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x28, 0xdf9dea93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4fcf375e # load x3 with value 0x4fcf375e
sw x3, 0(x2) # store 0x4fcf375e in memory
flw f12, 0(x2) # load 0x4fcf375e from memory into f12
li x3, 0x627d360a # load x3 with value 0x627d360a
sw x3, 0(x2) # store 0x627d360a in memory
flw f14, 0(x2) # load 0x627d360a from memory into f14
fadd.s f28, f12, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x17, 0xd41c241c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa4078bd3 # load x3 with value 0xa4078bd3
sw x3, 0(x2) # store 0xa4078bd3 in memory
flw f13, 0(x2) # load 0xa4078bd3 from memory into f13
li x3, 0x72c101b3 # load x3 with value 0x72c101b3
sw x3, 0(x2) # store 0x72c101b3 in memory
flw f28, 0(x2) # load 0x72c101b3 from memory into f28
fadd.s f17, f13, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x6, 0x5f15bc4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd8eeed8f # load x3 with value 0xd8eeed8f
sw x3, 0(x2) # store 0xd8eeed8f in memory
flw f14, 0(x2) # load 0xd8eeed8f from memory into f14
li x3, 0x3629a0a7 # load x3 with value 0x3629a0a7
sw x3, 0(x2) # store 0x3629a0a7 in memory
flw f10, 0(x2) # load 0x3629a0a7 from memory into f10
fadd.s f6, f14, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x16, 0x2be4db31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbb4a6236 # load x3 with value 0xbb4a6236
sw x3, 0(x2) # store 0xbb4a6236 in memory
flw f15, 0(x2) # load 0xbb4a6236 from memory into f15
li x3, 0xf6e2045c # load x3 with value 0xf6e2045c
sw x3, 0(x2) # store 0xf6e2045c in memory
flw f25, 0(x2) # load 0xf6e2045c from memory into f25
fadd.s f16, f15, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x31, 0x33e11d62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd6d973a9 # load x3 with value 0xd6d973a9
sw x3, 0(x2) # store 0xd6d973a9 in memory
flw f16, 0(x2) # load 0xd6d973a9 from memory into f16
li x3, 0xf9d207a5 # load x3 with value 0xf9d207a5
sw x3, 0(x2) # store 0xf9d207a5 in memory
flw f27, 0(x2) # load 0xf9d207a5 from memory into f27
fadd.s f31, f16, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x9, 0x49e18227 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1ffc7b3a # load x3 with value 0x1ffc7b3a
sw x3, 0(x2) # store 0x1ffc7b3a in memory
flw f17, 0(x2) # load 0x1ffc7b3a from memory into f17
li x3, 0x36ee5df1 # load x3 with value 0x36ee5df1
sw x3, 0(x2) # store 0x36ee5df1 in memory
flw f24, 0(x2) # load 0x36ee5df1 from memory into f24
fadd.s f9, f17, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x27, 0x03922bb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x25107a9b # load x3 with value 0x25107a9b
sw x3, 0(x2) # store 0x25107a9b in memory
flw f18, 0(x2) # load 0x25107a9b from memory into f18
li x3, 0x28250b59 # load x3 with value 0x28250b59
sw x3, 0(x2) # store 0x28250b59 in memory
flw f26, 0(x2) # load 0x28250b59 from memory into f26
fadd.s f27, f18, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x18, 0x7beadcdf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x09ae68b0 # load x3 with value 0x09ae68b0
sw x3, 0(x2) # store 0x09ae68b0 in memory
flw f19, 0(x2) # load 0x09ae68b0 from memory into f19
li x3, 0xd2b39cb4 # load x3 with value 0xd2b39cb4
sw x3, 0(x2) # store 0xd2b39cb4 in memory
flw f6, 0(x2) # load 0xd2b39cb4 from memory into f6
fadd.s f18, f19, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x31, 0x7b0fee68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x383aa2dc # load x3 with value 0x383aa2dc
sw x3, 0(x2) # store 0x383aa2dc in memory
flw f20, 0(x2) # load 0x383aa2dc from memory into f20
li x3, 0x2857a4e7 # load x3 with value 0x2857a4e7
sw x3, 0(x2) # store 0x2857a4e7 in memory
flw f6, 0(x2) # load 0x2857a4e7 from memory into f6
fadd.s f31, f20, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x21, 0xdf4ed3d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xce8c33da # load x3 with value 0xce8c33da
sw x3, 0(x2) # store 0xce8c33da in memory
flw f21, 0(x2) # load 0xce8c33da from memory into f21
li x3, 0x30d0c059 # load x3 with value 0x30d0c059
sw x3, 0(x2) # store 0x30d0c059 in memory
flw f17, 0(x2) # load 0x30d0c059 from memory into f17
fadd.s f21, f21, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x25, 0x3f978688 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf7953322 # load x3 with value 0xf7953322
sw x3, 0(x2) # store 0xf7953322 in memory
flw f22, 0(x2) # load 0xf7953322 from memory into f22
li x3, 0x4fdc31a6 # load x3 with value 0x4fdc31a6
sw x3, 0(x2) # store 0x4fdc31a6 in memory
flw f15, 0(x2) # load 0x4fdc31a6 from memory into f15
fadd.s f25, f22, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x13, 0x8d9d10ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3333157a # load x3 with value 0x3333157a
sw x3, 0(x2) # store 0x3333157a in memory
flw f23, 0(x2) # load 0x3333157a from memory into f23
li x3, 0x81c9a9e8 # load x3 with value 0x81c9a9e8
sw x3, 0(x2) # store 0x81c9a9e8 in memory
flw f10, 0(x2) # load 0x81c9a9e8 from memory into f10
fadd.s f13, f23, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x13, 0xa56084ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa3f6ec84 # load x3 with value 0xa3f6ec84
sw x3, 0(x2) # store 0xa3f6ec84 in memory
flw f24, 0(x2) # load 0xa3f6ec84 from memory into f24
li x3, 0xa2c8c202 # load x3 with value 0xa2c8c202
sw x3, 0(x2) # store 0xa2c8c202 in memory
flw f7, 0(x2) # load 0xa2c8c202 from memory into f7
fadd.s f13, f24, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x18, 0x9d82c085 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe7883111 # load x3 with value 0xe7883111
sw x3, 0(x2) # store 0xe7883111 in memory
flw f25, 0(x2) # load 0xe7883111 from memory into f25
li x3, 0xd5f9f3cd # load x3 with value 0xd5f9f3cd
sw x3, 0(x2) # store 0xd5f9f3cd in memory
flw f31, 0(x2) # load 0xd5f9f3cd from memory into f31
fadd.s f18, f25, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x12, 0xf9181385 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x94942868 # load x3 with value 0x94942868
sw x3, 0(x2) # store 0x94942868 in memory
flw f26, 0(x2) # load 0x94942868 from memory into f26
li x3, 0xed895a48 # load x3 with value 0xed895a48
sw x3, 0(x2) # store 0xed895a48 in memory
flw f4, 0(x2) # load 0xed895a48 from memory into f4
fadd.s f12, f26, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x11, 0x0fdda0af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfa9fb0f7 # load x3 with value 0xfa9fb0f7
sw x3, 0(x2) # store 0xfa9fb0f7 in memory
flw f27, 0(x2) # load 0xfa9fb0f7 from memory into f27
li x3, 0x63a9d518 # load x3 with value 0x63a9d518
sw x3, 0(x2) # store 0x63a9d518 in memory
flw f19, 0(x2) # load 0x63a9d518 from memory into f19
fadd.s f11, f27, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x14, 0x2be2832e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0e7dab37 # load x3 with value 0x0e7dab37
sw x3, 0(x2) # store 0x0e7dab37 in memory
flw f28, 0(x2) # load 0x0e7dab37 from memory into f28
li x3, 0xfb3c903a # load x3 with value 0xfb3c903a
sw x3, 0(x2) # store 0xfb3c903a in memory
flw f4, 0(x2) # load 0xfb3c903a from memory into f4
fadd.s f14, f28, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x30, 0x29460711 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb0446913 # load x3 with value 0xb0446913
sw x3, 0(x2) # store 0xb0446913 in memory
flw f29, 0(x2) # load 0xb0446913 from memory into f29
li x3, 0xd198d35b # load x3 with value 0xd198d35b
sw x3, 0(x2) # store 0xd198d35b in memory
flw f23, 0(x2) # load 0xd198d35b from memory into f23
fadd.s f30, f29, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x11, 0x5a6869d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc3d6c084 # load x3 with value 0xc3d6c084
sw x3, 0(x2) # store 0xc3d6c084 in memory
flw f30, 0(x2) # load 0xc3d6c084 from memory into f30
li x3, 0x5dc63d9a # load x3 with value 0x5dc63d9a
sw x3, 0(x2) # store 0x5dc63d9a in memory
flw f26, 0(x2) # load 0x5dc63d9a from memory into f26
fadd.s f11, f30, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x12, 0xe2991be4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x02ede4c2 # load x3 with value 0x02ede4c2
sw x3, 0(x2) # store 0x02ede4c2 in memory
flw f31, 0(x2) # load 0x02ede4c2 from memory into f31
li x3, 0x16360c0a # load x3 with value 0x16360c0a
sw x3, 0(x2) # store 0x16360c0a in memory
flw f26, 0(x2) # load 0x16360c0a from memory into f26
fadd.s f12, f31, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x20, 0x453fbddf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7bed673d # load x3 with value 0x7bed673d
sw x3, 0(x2) # store 0x7bed673d in memory
flw f30, 0(x2) # load 0x7bed673d from memory into f30
li x3, 0xc2cb9903 # load x3 with value 0xc2cb9903
sw x3, 0(x2) # store 0xc2cb9903 in memory
flw f0, 0(x2) # load 0xc2cb9903 from memory into f0
fadd.s f20, f30, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x31, 0xc8714f9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xba31af84 # load x3 with value 0xba31af84
sw x3, 0(x2) # store 0xba31af84 in memory
flw f22, 0(x2) # load 0xba31af84 from memory into f22
li x3, 0xb73ef79d # load x3 with value 0xb73ef79d
sw x3, 0(x2) # store 0xb73ef79d in memory
flw f1, 0(x2) # load 0xb73ef79d from memory into f1
fadd.s f31, f22, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x28, 0x22ef52b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9854e350 # load x3 with value 0x9854e350
sw x3, 0(x2) # store 0x9854e350 in memory
flw f1, 0(x2) # load 0x9854e350 from memory into f1
li x3, 0xd9c9b626 # load x3 with value 0xd9c9b626
sw x3, 0(x2) # store 0xd9c9b626 in memory
flw f2, 0(x2) # load 0xd9c9b626 from memory into f2
fadd.s f28, f1, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x18, 0x91161f8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd9a76ca9 # load x3 with value 0xd9a76ca9
sw x3, 0(x2) # store 0xd9a76ca9 in memory
flw f20, 0(x2) # load 0xd9a76ca9 from memory into f20
li x3, 0xda979be2 # load x3 with value 0xda979be2
sw x3, 0(x2) # store 0xda979be2 in memory
flw f3, 0(x2) # load 0xda979be2 from memory into f3
fadd.s f18, f20, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x14, 0xd3583acb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaa5ddab0 # load x3 with value 0xaa5ddab0
sw x3, 0(x2) # store 0xaa5ddab0 in memory
flw f27, 0(x2) # load 0xaa5ddab0 from memory into f27
li x3, 0x9ac14d50 # load x3 with value 0x9ac14d50
sw x3, 0(x2) # store 0x9ac14d50 in memory
flw f4, 0(x2) # load 0x9ac14d50 from memory into f4
fadd.s f14, f27, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x7, 0x4cdc4d49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa66e5de0 # load x3 with value 0xa66e5de0
sw x3, 0(x2) # store 0xa66e5de0 in memory
flw f8, 0(x2) # load 0xa66e5de0 from memory into f8
li x3, 0x8f5f45c5 # load x3 with value 0x8f5f45c5
sw x3, 0(x2) # store 0x8f5f45c5 in memory
flw f5, 0(x2) # load 0x8f5f45c5 from memory into f5
fadd.s f7, f8, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x24, 0x562187c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x93af5bdd # load x3 with value 0x93af5bdd
sw x3, 0(x2) # store 0x93af5bdd in memory
flw f15, 0(x2) # load 0x93af5bdd from memory into f15
li x3, 0xe0e246a0 # load x3 with value 0xe0e246a0
sw x3, 0(x2) # store 0xe0e246a0 in memory
flw f6, 0(x2) # load 0xe0e246a0 from memory into f6
fadd.s f24, f15, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x30, 0xd2472e30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6ad9a697 # load x3 with value 0x6ad9a697
sw x3, 0(x2) # store 0x6ad9a697 in memory
flw f12, 0(x2) # load 0x6ad9a697 from memory into f12
li x3, 0xff32cf17 # load x3 with value 0xff32cf17
sw x3, 0(x2) # store 0xff32cf17 in memory
flw f7, 0(x2) # load 0xff32cf17 from memory into f7
fadd.s f30, f12, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x25, 0x972bacd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd07d3877 # load x3 with value 0xd07d3877
sw x3, 0(x2) # store 0xd07d3877 in memory
flw f1, 0(x2) # load 0xd07d3877 from memory into f1
li x3, 0x19f5041d # load x3 with value 0x19f5041d
sw x3, 0(x2) # store 0x19f5041d in memory
flw f8, 0(x2) # load 0x19f5041d from memory into f8
fadd.s f25, f1, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x22, 0x3f88ad3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0992227f # load x3 with value 0x0992227f
sw x3, 0(x2) # store 0x0992227f in memory
flw f23, 0(x2) # load 0x0992227f from memory into f23
li x3, 0xbeb9b0e3 # load x3 with value 0xbeb9b0e3
sw x3, 0(x2) # store 0xbeb9b0e3 in memory
flw f9, 0(x2) # load 0xbeb9b0e3 from memory into f9
fadd.s f22, f23, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x31, 0x462cc3f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9825c208 # load x3 with value 0x9825c208
sw x3, 0(x2) # store 0x9825c208 in memory
flw f17, 0(x2) # load 0x9825c208 from memory into f17
li x3, 0x69c87732 # load x3 with value 0x69c87732
sw x3, 0(x2) # store 0x69c87732 in memory
flw f10, 0(x2) # load 0x69c87732 from memory into f10
fadd.s f31, f17, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x1, 0x786810b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2194abea # load x3 with value 0x2194abea
sw x3, 0(x2) # store 0x2194abea in memory
flw f16, 0(x2) # load 0x2194abea from memory into f16
li x3, 0x450d0d76 # load x3 with value 0x450d0d76
sw x3, 0(x2) # store 0x450d0d76 in memory
flw f11, 0(x2) # load 0x450d0d76 from memory into f11
fadd.s f1, f16, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x19, 0x89896d31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc7eb3b3a # load x3 with value 0xc7eb3b3a
sw x3, 0(x2) # store 0xc7eb3b3a in memory
flw f10, 0(x2) # load 0xc7eb3b3a from memory into f10
li x3, 0xb8a4255c # load x3 with value 0xb8a4255c
sw x3, 0(x2) # store 0xb8a4255c in memory
flw f12, 0(x2) # load 0xb8a4255c from memory into f12
fadd.s f19, f10, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x20, 0xda496c82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0e67cc98 # load x3 with value 0x0e67cc98
sw x3, 0(x2) # store 0x0e67cc98 in memory
flw f3, 0(x2) # load 0x0e67cc98 from memory into f3
li x3, 0x7875fca1 # load x3 with value 0x7875fca1
sw x3, 0(x2) # store 0x7875fca1 in memory
flw f13, 0(x2) # load 0x7875fca1 from memory into f13
fadd.s f20, f3, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x25, 0xc328d21f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x644c64a8 # load x3 with value 0x644c64a8
sw x3, 0(x2) # store 0x644c64a8 in memory
flw f15, 0(x2) # load 0x644c64a8 from memory into f15
li x3, 0x613671fa # load x3 with value 0x613671fa
sw x3, 0(x2) # store 0x613671fa in memory
flw f14, 0(x2) # load 0x613671fa from memory into f14
fadd.s f25, f15, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x16, 0x14070518 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcd9e3b14 # load x3 with value 0xcd9e3b14
sw x3, 0(x2) # store 0xcd9e3b14 in memory
flw f6, 0(x2) # load 0xcd9e3b14 from memory into f6
li x3, 0x037f7910 # load x3 with value 0x037f7910
sw x3, 0(x2) # store 0x037f7910 in memory
flw f15, 0(x2) # load 0x037f7910 from memory into f15
fadd.s f16, f6, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x8, 0x8c1dc539 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfc4ba741 # load x3 with value 0xfc4ba741
sw x3, 0(x2) # store 0xfc4ba741 in memory
flw f22, 0(x2) # load 0xfc4ba741 from memory into f22
li x3, 0xd5fb4a4f # load x3 with value 0xd5fb4a4f
sw x3, 0(x2) # store 0xd5fb4a4f in memory
flw f16, 0(x2) # load 0xd5fb4a4f from memory into f16
fadd.s f8, f22, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x20, 0x093cf100 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4b818304 # load x3 with value 0x4b818304
sw x3, 0(x2) # store 0x4b818304 in memory
flw f2, 0(x2) # load 0x4b818304 from memory into f2
li x3, 0x39001fa7 # load x3 with value 0x39001fa7
sw x3, 0(x2) # store 0x39001fa7 in memory
flw f17, 0(x2) # load 0x39001fa7 from memory into f17
fadd.s f20, f2, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x26, 0x92a9fc05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x49d64bc2 # load x3 with value 0x49d64bc2
sw x3, 0(x2) # store 0x49d64bc2 in memory
flw f28, 0(x2) # load 0x49d64bc2 from memory into f28
li x3, 0x728f4ad8 # load x3 with value 0x728f4ad8
sw x3, 0(x2) # store 0x728f4ad8 in memory
flw f18, 0(x2) # load 0x728f4ad8 from memory into f18
fadd.s f26, f28, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x15, 0xef9d3751 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7978ea75 # load x3 with value 0x7978ea75
sw x3, 0(x2) # store 0x7978ea75 in memory
flw f27, 0(x2) # load 0x7978ea75 from memory into f27
li x3, 0xfc8faeea # load x3 with value 0xfc8faeea
sw x3, 0(x2) # store 0xfc8faeea in memory
flw f19, 0(x2) # load 0xfc8faeea from memory into f19
fadd.s f15, f27, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x14, 0x5027fd8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x322db858 # load x3 with value 0x322db858
sw x3, 0(x2) # store 0x322db858 in memory
flw f30, 0(x2) # load 0x322db858 from memory into f30
li x3, 0x5b119348 # load x3 with value 0x5b119348
sw x3, 0(x2) # store 0x5b119348 in memory
flw f20, 0(x2) # load 0x5b119348 from memory into f20
fadd.s f14, f30, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x2, 0xbc44eb32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6cbe48c4 # load x3 with value 0x6cbe48c4
sw x3, 0(x2) # store 0x6cbe48c4 in memory
flw f4, 0(x2) # load 0x6cbe48c4 from memory into f4
li x3, 0x952dae4f # load x3 with value 0x952dae4f
sw x3, 0(x2) # store 0x952dae4f in memory
flw f21, 0(x2) # load 0x952dae4f from memory into f21
fadd.s f2, f4, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x2, 0x6c799bad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0f4380c7 # load x3 with value 0x0f4380c7
sw x3, 0(x2) # store 0x0f4380c7 in memory
flw f29, 0(x2) # load 0x0f4380c7 from memory into f29
li x3, 0x86842bcf # load x3 with value 0x86842bcf
sw x3, 0(x2) # store 0x86842bcf in memory
flw f22, 0(x2) # load 0x86842bcf from memory into f22
fadd.s f2, f29, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x7, 0xdfeedcab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc174b29a # load x3 with value 0xc174b29a
sw x3, 0(x2) # store 0xc174b29a in memory
flw f30, 0(x2) # load 0xc174b29a from memory into f30
li x3, 0x08a9ddf6 # load x3 with value 0x08a9ddf6
sw x3, 0(x2) # store 0x08a9ddf6 in memory
flw f23, 0(x2) # load 0x08a9ddf6 from memory into f23
fadd.s f7, f30, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x12, 0x8ceccf8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3daa5b12 # load x3 with value 0x3daa5b12
sw x3, 0(x2) # store 0x3daa5b12 in memory
flw f11, 0(x2) # load 0x3daa5b12 from memory into f11
li x3, 0x0e3a4317 # load x3 with value 0x0e3a4317
sw x3, 0(x2) # store 0x0e3a4317 in memory
flw f24, 0(x2) # load 0x0e3a4317 from memory into f24
fadd.s f12, f11, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x14, 0xce3f58c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x498d4ebe # load x3 with value 0x498d4ebe
sw x3, 0(x2) # store 0x498d4ebe in memory
flw f5, 0(x2) # load 0x498d4ebe from memory into f5
li x3, 0x33b6d031 # load x3 with value 0x33b6d031
sw x3, 0(x2) # store 0x33b6d031 in memory
flw f25, 0(x2) # load 0x33b6d031 from memory into f25
fadd.s f14, f5, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x23, 0xc9364623 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe82cc76b # load x3 with value 0xe82cc76b
sw x3, 0(x2) # store 0xe82cc76b in memory
flw f19, 0(x2) # load 0xe82cc76b from memory into f19
li x3, 0x935ca4de # load x3 with value 0x935ca4de
sw x3, 0(x2) # store 0x935ca4de in memory
flw f26, 0(x2) # load 0x935ca4de from memory into f26
fadd.s f23, f19, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x16, 0x8e63de30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd4dddf02 # load x3 with value 0xd4dddf02
sw x3, 0(x2) # store 0xd4dddf02 in memory
flw f2, 0(x2) # load 0xd4dddf02 from memory into f2
li x3, 0xd98d8136 # load x3 with value 0xd98d8136
sw x3, 0(x2) # store 0xd98d8136 in memory
flw f27, 0(x2) # load 0xd98d8136 from memory into f27
fadd.s f16, f2, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x25, 0xbbe3c56f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xca8947d9 # load x3 with value 0xca8947d9
sw x3, 0(x2) # store 0xca8947d9 in memory
flw f2, 0(x2) # load 0xca8947d9 from memory into f2
li x3, 0xac5d6670 # load x3 with value 0xac5d6670
sw x3, 0(x2) # store 0xac5d6670 in memory
flw f28, 0(x2) # load 0xac5d6670 from memory into f28
fadd.s f25, f2, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x21, 0xc2695945 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc007f29b # load x3 with value 0xc007f29b
sw x3, 0(x2) # store 0xc007f29b in memory
flw f3, 0(x2) # load 0xc007f29b from memory into f3
li x3, 0x5a95acf7 # load x3 with value 0x5a95acf7
sw x3, 0(x2) # store 0x5a95acf7 in memory
flw f29, 0(x2) # load 0x5a95acf7 from memory into f29
fadd.s f21, f3, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x2, 0xd488d9ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfe71f76b # load x3 with value 0xfe71f76b
sw x3, 0(x2) # store 0xfe71f76b in memory
flw f6, 0(x2) # load 0xfe71f76b from memory into f6
li x3, 0x11423367 # load x3 with value 0x11423367
sw x3, 0(x2) # store 0x11423367 in memory
flw f30, 0(x2) # load 0x11423367 from memory into f30
fadd.s f2, f6, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x12, 0x982e2a59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x60d1b095 # load x3 with value 0x60d1b095
sw x3, 0(x2) # store 0x60d1b095 in memory
flw f5, 0(x2) # load 0x60d1b095 from memory into f5
li x3, 0xf50354fd # load x3 with value 0xf50354fd
sw x3, 0(x2) # store 0xf50354fd in memory
flw f31, 0(x2) # load 0xf50354fd from memory into f31
fadd.s f12, f5, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
