///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/F//WALLY-COV-fsub.s.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.384758
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
fsub.s f2, f20, f22 # perform first operation
fsub.s f3, f2, f25 # perform second operation

# Testcase cmp_gpr_hazard raw test
fsub.s f6, f11, f14 # perform first operation
fsub.s f6, f25, f6 # perform second operation

# Testcase cmp_gpr_hazard waw test
fsub.s f20, f12, f15 # perform first operation
fsub.s f20, f1, f27 # perform second operation

# Testcase cmp_gpr_hazard waw test
fsub.s f1, f21, f11 # perform first operation
fsub.s f1, f11, f6 # perform second operation

# Testcase cmp_gpr_hazard war test
fsub.s f26, f30, f13 # perform first operation
fsub.s f30, f10, f15 # perform second operation

# Testcase cmp_gpr_hazard war test
fsub.s f13, f26, f29 # perform first operation
fsub.s f29, f29, f12 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0xa0254f28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8f2b5c00 # load x3 with value 0x8f2b5c00
sw x3, 0(x2) # store 0x8f2b5c00 in memory
flw f0, 0(x2) # load 0x8f2b5c00 from memory into f0
li x3, 0xc929c95e # load x3 with value 0xc929c95e
sw x3, 0(x2) # store 0xc929c95e in memory
flw f18, 0(x2) # load 0xc929c95e from memory into f18
fsub.s f0, f0, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0xe36538f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb0021bfa # load x3 with value 0xb0021bfa
sw x3, 0(x2) # store 0xb0021bfa in memory
flw f1, 0(x2) # load 0xb0021bfa from memory into f1
li x3, 0xd0043579 # load x3 with value 0xd0043579
sw x3, 0(x2) # store 0xd0043579 in memory
flw f22, 0(x2) # load 0xd0043579 from memory into f22
fsub.s f1, f1, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0xb5924126 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc580268f # load x3 with value 0xc580268f
sw x3, 0(x2) # store 0xc580268f in memory
flw f2, 0(x2) # load 0xc580268f from memory into f2
li x3, 0x88f41927 # load x3 with value 0x88f41927
sw x3, 0(x2) # store 0x88f41927 in memory
flw f25, 0(x2) # load 0x88f41927 from memory into f25
fsub.s f2, f2, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0xcee23f14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x98ab8231 # load x3 with value 0x98ab8231
sw x3, 0(x2) # store 0x98ab8231 in memory
flw f3, 0(x2) # load 0x98ab8231 from memory into f3
li x3, 0xa11a1177 # load x3 with value 0xa11a1177
sw x3, 0(x2) # store 0xa11a1177 in memory
flw f9, 0(x2) # load 0xa11a1177 from memory into f9
fsub.s f3, f3, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0x2a97ab98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x58b4c8cb # load x3 with value 0x58b4c8cb
sw x3, 0(x2) # store 0x58b4c8cb in memory
flw f4, 0(x2) # load 0x58b4c8cb from memory into f4
li x3, 0xaee32f04 # load x3 with value 0xaee32f04
sw x3, 0(x2) # store 0xaee32f04 in memory
flw f8, 0(x2) # load 0xaee32f04 from memory into f8
fsub.s f4, f4, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0xb1247183 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe650164e # load x3 with value 0xe650164e
sw x3, 0(x2) # store 0xe650164e in memory
flw f5, 0(x2) # load 0xe650164e from memory into f5
li x3, 0xdbb9d635 # load x3 with value 0xdbb9d635
sw x3, 0(x2) # store 0xdbb9d635 in memory
flw f17, 0(x2) # load 0xdbb9d635 from memory into f17
fsub.s f5, f5, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0x5d943b0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ca3dacb # load x3 with value 0x3ca3dacb
sw x3, 0(x2) # store 0x3ca3dacb in memory
flw f6, 0(x2) # load 0x3ca3dacb from memory into f6
li x3, 0x7169d88a # load x3 with value 0x7169d88a
sw x3, 0(x2) # store 0x7169d88a in memory
flw f13, 0(x2) # load 0x7169d88a from memory into f13
fsub.s f6, f6, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0x83c1a860 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfadca705 # load x3 with value 0xfadca705
sw x3, 0(x2) # store 0xfadca705 in memory
flw f7, 0(x2) # load 0xfadca705 from memory into f7
li x3, 0xc7ca05b9 # load x3 with value 0xc7ca05b9
sw x3, 0(x2) # store 0xc7ca05b9 in memory
flw f1, 0(x2) # load 0xc7ca05b9 from memory into f1
fsub.s f7, f7, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0xa55e34e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x39fe9d2a # load x3 with value 0x39fe9d2a
sw x3, 0(x2) # store 0x39fe9d2a in memory
flw f8, 0(x2) # load 0x39fe9d2a from memory into f8
li x3, 0x72829e32 # load x3 with value 0x72829e32
sw x3, 0(x2) # store 0x72829e32 in memory
flw f12, 0(x2) # load 0x72829e32 from memory into f12
fsub.s f8, f8, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0x916affc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbe71b76d # load x3 with value 0xbe71b76d
sw x3, 0(x2) # store 0xbe71b76d in memory
flw f9, 0(x2) # load 0xbe71b76d from memory into f9
li x3, 0x7e11e4d7 # load x3 with value 0x7e11e4d7
sw x3, 0(x2) # store 0x7e11e4d7 in memory
flw f17, 0(x2) # load 0x7e11e4d7 from memory into f17
fsub.s f9, f9, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0xc3f050c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfbd4d643 # load x3 with value 0xfbd4d643
sw x3, 0(x2) # store 0xfbd4d643 in memory
flw f10, 0(x2) # load 0xfbd4d643 from memory into f10
li x3, 0x6e1c418f # load x3 with value 0x6e1c418f
sw x3, 0(x2) # store 0x6e1c418f in memory
flw f5, 0(x2) # load 0x6e1c418f from memory into f5
fsub.s f10, f10, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0x33552e49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x050169e4 # load x3 with value 0x050169e4
sw x3, 0(x2) # store 0x050169e4 in memory
flw f11, 0(x2) # load 0x050169e4 from memory into f11
li x3, 0xa0cd408f # load x3 with value 0xa0cd408f
sw x3, 0(x2) # store 0xa0cd408f in memory
flw f8, 0(x2) # load 0xa0cd408f from memory into f8
fsub.s f11, f11, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0xf61710e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3b5e268a # load x3 with value 0x3b5e268a
sw x3, 0(x2) # store 0x3b5e268a in memory
flw f12, 0(x2) # load 0x3b5e268a from memory into f12
li x3, 0xd77135a6 # load x3 with value 0xd77135a6
sw x3, 0(x2) # store 0xd77135a6 in memory
flw f17, 0(x2) # load 0xd77135a6 from memory into f17
fsub.s f12, f12, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0x4e7adfdc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9aece824 # load x3 with value 0x9aece824
sw x3, 0(x2) # store 0x9aece824 in memory
flw f13, 0(x2) # load 0x9aece824 from memory into f13
li x3, 0xf5067cb1 # load x3 with value 0xf5067cb1
sw x3, 0(x2) # store 0xf5067cb1 in memory
flw f7, 0(x2) # load 0xf5067cb1 from memory into f7
fsub.s f13, f13, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0x9a2b0a5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x56c7a543 # load x3 with value 0x56c7a543
sw x3, 0(x2) # store 0x56c7a543 in memory
flw f14, 0(x2) # load 0x56c7a543 from memory into f14
li x3, 0x35b06452 # load x3 with value 0x35b06452
sw x3, 0(x2) # store 0x35b06452 in memory
flw f29, 0(x2) # load 0x35b06452 from memory into f29
fsub.s f14, f14, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0x12446819 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x01dc3bd9 # load x3 with value 0x01dc3bd9
sw x3, 0(x2) # store 0x01dc3bd9 in memory
flw f15, 0(x2) # load 0x01dc3bd9 from memory into f15
li x3, 0xe60f1219 # load x3 with value 0xe60f1219
sw x3, 0(x2) # store 0xe60f1219 in memory
flw f8, 0(x2) # load 0xe60f1219 from memory into f8
fsub.s f15, f15, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0x3b588367 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xef352cd3 # load x3 with value 0xef352cd3
sw x3, 0(x2) # store 0xef352cd3 in memory
flw f16, 0(x2) # load 0xef352cd3 from memory into f16
li x3, 0x04264ac2 # load x3 with value 0x04264ac2
sw x3, 0(x2) # store 0x04264ac2 in memory
flw f30, 0(x2) # load 0x04264ac2 from memory into f30
fsub.s f16, f16, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0xc01addb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4fdb997a # load x3 with value 0x4fdb997a
sw x3, 0(x2) # store 0x4fdb997a in memory
flw f17, 0(x2) # load 0x4fdb997a from memory into f17
li x3, 0x3e5d86cb # load x3 with value 0x3e5d86cb
sw x3, 0(x2) # store 0x3e5d86cb in memory
flw f16, 0(x2) # load 0x3e5d86cb from memory into f16
fsub.s f17, f17, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0xc1131dec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbc859497 # load x3 with value 0xbc859497
sw x3, 0(x2) # store 0xbc859497 in memory
flw f18, 0(x2) # load 0xbc859497 from memory into f18
li x3, 0x623ce06d # load x3 with value 0x623ce06d
sw x3, 0(x2) # store 0x623ce06d in memory
flw f26, 0(x2) # load 0x623ce06d from memory into f26
fsub.s f18, f18, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0x77764dc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe760216d # load x3 with value 0xe760216d
sw x3, 0(x2) # store 0xe760216d in memory
flw f19, 0(x2) # load 0xe760216d from memory into f19
li x3, 0x12256fb9 # load x3 with value 0x12256fb9
sw x3, 0(x2) # store 0x12256fb9 in memory
flw f23, 0(x2) # load 0x12256fb9 from memory into f23
fsub.s f19, f19, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0x8023ea81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd458944d # load x3 with value 0xd458944d
sw x3, 0(x2) # store 0xd458944d in memory
flw f20, 0(x2) # load 0xd458944d from memory into f20
li x3, 0x0ccbbef1 # load x3 with value 0x0ccbbef1
sw x3, 0(x2) # store 0x0ccbbef1 in memory
flw f31, 0(x2) # load 0x0ccbbef1 from memory into f31
fsub.s f20, f20, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0x271ddcec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x384497fc # load x3 with value 0x384497fc
sw x3, 0(x2) # store 0x384497fc in memory
flw f21, 0(x2) # load 0x384497fc from memory into f21
li x3, 0xc7c0c960 # load x3 with value 0xc7c0c960
sw x3, 0(x2) # store 0xc7c0c960 in memory
flw f12, 0(x2) # load 0xc7c0c960 from memory into f12
fsub.s f21, f21, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0xd860e73e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x955b0a33 # load x3 with value 0x955b0a33
sw x3, 0(x2) # store 0x955b0a33 in memory
flw f22, 0(x2) # load 0x955b0a33 from memory into f22
li x3, 0xd25c29ea # load x3 with value 0xd25c29ea
sw x3, 0(x2) # store 0xd25c29ea in memory
flw f13, 0(x2) # load 0xd25c29ea from memory into f13
fsub.s f22, f22, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0x515689cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9fdfe157 # load x3 with value 0x9fdfe157
sw x3, 0(x2) # store 0x9fdfe157 in memory
flw f23, 0(x2) # load 0x9fdfe157 from memory into f23
li x3, 0x423bacaa # load x3 with value 0x423bacaa
sw x3, 0(x2) # store 0x423bacaa in memory
flw f23, 0(x2) # load 0x423bacaa from memory into f23
fsub.s f23, f23, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0xfe2e6831 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfa9c8a81 # load x3 with value 0xfa9c8a81
sw x3, 0(x2) # store 0xfa9c8a81 in memory
flw f24, 0(x2) # load 0xfa9c8a81 from memory into f24
li x3, 0x3bf6ae34 # load x3 with value 0x3bf6ae34
sw x3, 0(x2) # store 0x3bf6ae34 in memory
flw f12, 0(x2) # load 0x3bf6ae34 from memory into f12
fsub.s f24, f24, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0x65e866a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbe987deb # load x3 with value 0xbe987deb
sw x3, 0(x2) # store 0xbe987deb in memory
flw f25, 0(x2) # load 0xbe987deb from memory into f25
li x3, 0x5a1a26a8 # load x3 with value 0x5a1a26a8
sw x3, 0(x2) # store 0x5a1a26a8 in memory
flw f14, 0(x2) # load 0x5a1a26a8 from memory into f14
fsub.s f25, f25, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0xe98c7d2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdacc10da # load x3 with value 0xdacc10da
sw x3, 0(x2) # store 0xdacc10da in memory
flw f26, 0(x2) # load 0xdacc10da from memory into f26
li x3, 0x478c41f3 # load x3 with value 0x478c41f3
sw x3, 0(x2) # store 0x478c41f3 in memory
flw f19, 0(x2) # load 0x478c41f3 from memory into f19
fsub.s f26, f26, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0x55ac92a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb38f9d95 # load x3 with value 0xb38f9d95
sw x3, 0(x2) # store 0xb38f9d95 in memory
flw f27, 0(x2) # load 0xb38f9d95 from memory into f27
li x3, 0x7955bb80 # load x3 with value 0x7955bb80
sw x3, 0(x2) # store 0x7955bb80 in memory
flw f26, 0(x2) # load 0x7955bb80 from memory into f26
fsub.s f27, f27, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0x2c7f1752 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x775b939c # load x3 with value 0x775b939c
sw x3, 0(x2) # store 0x775b939c in memory
flw f28, 0(x2) # load 0x775b939c from memory into f28
li x3, 0xfcdedd40 # load x3 with value 0xfcdedd40
sw x3, 0(x2) # store 0xfcdedd40 in memory
flw f7, 0(x2) # load 0xfcdedd40 from memory into f7
fsub.s f28, f28, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0xac531c2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9ebcf36c # load x3 with value 0x9ebcf36c
sw x3, 0(x2) # store 0x9ebcf36c in memory
flw f29, 0(x2) # load 0x9ebcf36c from memory into f29
li x3, 0xab4dbf4f # load x3 with value 0xab4dbf4f
sw x3, 0(x2) # store 0xab4dbf4f in memory
flw f2, 0(x2) # load 0xab4dbf4f from memory into f2
fsub.s f29, f29, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0xceb9c74a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x494c16fa # load x3 with value 0x494c16fa
sw x3, 0(x2) # store 0x494c16fa in memory
flw f30, 0(x2) # load 0x494c16fa from memory into f30
li x3, 0x0bfe6f7c # load x3 with value 0x0bfe6f7c
sw x3, 0(x2) # store 0x0bfe6f7c in memory
flw f15, 0(x2) # load 0x0bfe6f7c from memory into f15
fsub.s f30, f30, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0x52abffef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x25af66a1 # load x3 with value 0x25af66a1
sw x3, 0(x2) # store 0x25af66a1 in memory
flw f31, 0(x2) # load 0x25af66a1 from memory into f31
li x3, 0x7e11a5d6 # load x3 with value 0x7e11a5d6
sw x3, 0(x2) # store 0x7e11a5d6 in memory
flw f2, 0(x2) # load 0x7e11a5d6 from memory into f2
fsub.s f31, f31, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
li x0, 0x77bc7550 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7654c386 # load x3 with value 0x7654c386
sw x3, 0(x2) # store 0x7654c386 in memory
flw f21, 0(x2) # load 0x7654c386 from memory into f21
li x3, 0x319159ee # load x3 with value 0x319159ee
sw x3, 0(x2) # store 0x319159ee in memory
flw f0, 0(x2) # load 0x319159ee from memory into f0
fsub.s f0, f21, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
li x1, 0x33dec1d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7333a818 # load x3 with value 0x7333a818
sw x3, 0(x2) # store 0x7333a818 in memory
flw f8, 0(x2) # load 0x7333a818 from memory into f8
li x3, 0xa6024625 # load x3 with value 0xa6024625
sw x3, 0(x2) # store 0xa6024625 in memory
flw f1, 0(x2) # load 0xa6024625 from memory into f1
fsub.s f1, f8, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
li x2, 0xcc0dfec3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdf12f7e0 # load x3 with value 0xdf12f7e0
sw x3, 0(x2) # store 0xdf12f7e0 in memory
flw f3, 0(x2) # load 0xdf12f7e0 from memory into f3
li x3, 0x544bdcfe # load x3 with value 0x544bdcfe
sw x3, 0(x2) # store 0x544bdcfe in memory
flw f2, 0(x2) # load 0x544bdcfe from memory into f2
fsub.s f2, f3, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
li x3, 0xede68116 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x13ac1060 # load x3 with value 0x13ac1060
sw x3, 0(x2) # store 0x13ac1060 in memory
flw f27, 0(x2) # load 0x13ac1060 from memory into f27
li x3, 0xbb095c05 # load x3 with value 0xbb095c05
sw x3, 0(x2) # store 0xbb095c05 in memory
flw f3, 0(x2) # load 0xbb095c05 from memory into f3
fsub.s f3, f27, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
li x4, 0xc67e5275 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x615b2eb0 # load x3 with value 0x615b2eb0
sw x3, 0(x2) # store 0x615b2eb0 in memory
flw f8, 0(x2) # load 0x615b2eb0 from memory into f8
li x3, 0xf53468d5 # load x3 with value 0xf53468d5
sw x3, 0(x2) # store 0xf53468d5 in memory
flw f4, 0(x2) # load 0xf53468d5 from memory into f4
fsub.s f4, f8, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
li x5, 0x27a0279b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc5646d1e # load x3 with value 0xc5646d1e
sw x3, 0(x2) # store 0xc5646d1e in memory
flw f23, 0(x2) # load 0xc5646d1e from memory into f23
li x3, 0xd3f58f18 # load x3 with value 0xd3f58f18
sw x3, 0(x2) # store 0xd3f58f18 in memory
flw f5, 0(x2) # load 0xd3f58f18 from memory into f5
fsub.s f5, f23, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
li x6, 0x86f12d9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x17e63cb9 # load x3 with value 0x17e63cb9
sw x3, 0(x2) # store 0x17e63cb9 in memory
flw f28, 0(x2) # load 0x17e63cb9 from memory into f28
li x3, 0xf2230400 # load x3 with value 0xf2230400
sw x3, 0(x2) # store 0xf2230400 in memory
flw f6, 0(x2) # load 0xf2230400 from memory into f6
fsub.s f6, f28, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
li x7, 0x1159fe77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6f1f6653 # load x3 with value 0x6f1f6653
sw x3, 0(x2) # store 0x6f1f6653 in memory
flw f21, 0(x2) # load 0x6f1f6653 from memory into f21
li x3, 0x4a8edb1e # load x3 with value 0x4a8edb1e
sw x3, 0(x2) # store 0x4a8edb1e in memory
flw f7, 0(x2) # load 0x4a8edb1e from memory into f7
fsub.s f7, f21, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
li x8, 0xf133e4ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4e102b3b # load x3 with value 0x4e102b3b
sw x3, 0(x2) # store 0x4e102b3b in memory
flw f23, 0(x2) # load 0x4e102b3b from memory into f23
li x3, 0x6dd10864 # load x3 with value 0x6dd10864
sw x3, 0(x2) # store 0x6dd10864 in memory
flw f8, 0(x2) # load 0x6dd10864 from memory into f8
fsub.s f8, f23, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
li x9, 0x5465e50d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb3708026 # load x3 with value 0xb3708026
sw x3, 0(x2) # store 0xb3708026 in memory
flw f1, 0(x2) # load 0xb3708026 from memory into f1
li x3, 0x304736c5 # load x3 with value 0x304736c5
sw x3, 0(x2) # store 0x304736c5 in memory
flw f9, 0(x2) # load 0x304736c5 from memory into f9
fsub.s f9, f1, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
li x10, 0x7729c93c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x53b24725 # load x3 with value 0x53b24725
sw x3, 0(x2) # store 0x53b24725 in memory
flw f2, 0(x2) # load 0x53b24725 from memory into f2
li x3, 0x030a63b1 # load x3 with value 0x030a63b1
sw x3, 0(x2) # store 0x030a63b1 in memory
flw f10, 0(x2) # load 0x030a63b1 from memory into f10
fsub.s f10, f2, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
li x11, 0x90ff18f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf2ae0146 # load x3 with value 0xf2ae0146
sw x3, 0(x2) # store 0xf2ae0146 in memory
flw f6, 0(x2) # load 0xf2ae0146 from memory into f6
li x3, 0x32986a06 # load x3 with value 0x32986a06
sw x3, 0(x2) # store 0x32986a06 in memory
flw f11, 0(x2) # load 0x32986a06 from memory into f11
fsub.s f11, f6, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
li x12, 0x0d51bef1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x541a66e6 # load x3 with value 0x541a66e6
sw x3, 0(x2) # store 0x541a66e6 in memory
flw f18, 0(x2) # load 0x541a66e6 from memory into f18
li x3, 0x63dcd4de # load x3 with value 0x63dcd4de
sw x3, 0(x2) # store 0x63dcd4de in memory
flw f12, 0(x2) # load 0x63dcd4de from memory into f12
fsub.s f12, f18, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
li x13, 0xeb2047dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeeec45e8 # load x3 with value 0xeeec45e8
sw x3, 0(x2) # store 0xeeec45e8 in memory
flw f16, 0(x2) # load 0xeeec45e8 from memory into f16
li x3, 0x00c4defc # load x3 with value 0x00c4defc
sw x3, 0(x2) # store 0x00c4defc in memory
flw f13, 0(x2) # load 0x00c4defc from memory into f13
fsub.s f13, f16, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
li x14, 0x46584ace # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5b43e061 # load x3 with value 0x5b43e061
sw x3, 0(x2) # store 0x5b43e061 in memory
flw f3, 0(x2) # load 0x5b43e061 from memory into f3
li x3, 0xd2ad13c5 # load x3 with value 0xd2ad13c5
sw x3, 0(x2) # store 0xd2ad13c5 in memory
flw f14, 0(x2) # load 0xd2ad13c5 from memory into f14
fsub.s f14, f3, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
li x15, 0x1323601d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe008508f # load x3 with value 0xe008508f
sw x3, 0(x2) # store 0xe008508f in memory
flw f1, 0(x2) # load 0xe008508f from memory into f1
li x3, 0xb240028b # load x3 with value 0xb240028b
sw x3, 0(x2) # store 0xb240028b in memory
flw f15, 0(x2) # load 0xb240028b from memory into f15
fsub.s f15, f1, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
li x16, 0x60be7a2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaebd0de7 # load x3 with value 0xaebd0de7
sw x3, 0(x2) # store 0xaebd0de7 in memory
flw f25, 0(x2) # load 0xaebd0de7 from memory into f25
li x3, 0x59caf008 # load x3 with value 0x59caf008
sw x3, 0(x2) # store 0x59caf008 in memory
flw f16, 0(x2) # load 0x59caf008 from memory into f16
fsub.s f16, f25, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
li x17, 0x271c1193 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2563128b # load x3 with value 0x2563128b
sw x3, 0(x2) # store 0x2563128b in memory
flw f27, 0(x2) # load 0x2563128b from memory into f27
li x3, 0x7bf95c53 # load x3 with value 0x7bf95c53
sw x3, 0(x2) # store 0x7bf95c53 in memory
flw f17, 0(x2) # load 0x7bf95c53 from memory into f17
fsub.s f17, f27, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
li x18, 0x774830bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc73c3594 # load x3 with value 0xc73c3594
sw x3, 0(x2) # store 0xc73c3594 in memory
flw f29, 0(x2) # load 0xc73c3594 from memory into f29
li x3, 0xed42a176 # load x3 with value 0xed42a176
sw x3, 0(x2) # store 0xed42a176 in memory
flw f18, 0(x2) # load 0xed42a176 from memory into f18
fsub.s f18, f29, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
li x19, 0x0c574fc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3d888766 # load x3 with value 0x3d888766
sw x3, 0(x2) # store 0x3d888766 in memory
flw f31, 0(x2) # load 0x3d888766 from memory into f31
li x3, 0x333cecd2 # load x3 with value 0x333cecd2
sw x3, 0(x2) # store 0x333cecd2 in memory
flw f19, 0(x2) # load 0x333cecd2 from memory into f19
fsub.s f19, f31, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
li x20, 0xe5e0c17a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x46740078 # load x3 with value 0x46740078
sw x3, 0(x2) # store 0x46740078 in memory
flw f9, 0(x2) # load 0x46740078 from memory into f9
li x3, 0xa2683343 # load x3 with value 0xa2683343
sw x3, 0(x2) # store 0xa2683343 in memory
flw f20, 0(x2) # load 0xa2683343 from memory into f20
fsub.s f20, f9, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
li x21, 0xf9eea13b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbe9a8326 # load x3 with value 0xbe9a8326
sw x3, 0(x2) # store 0xbe9a8326 in memory
flw f29, 0(x2) # load 0xbe9a8326 from memory into f29
li x3, 0xd980439e # load x3 with value 0xd980439e
sw x3, 0(x2) # store 0xd980439e in memory
flw f21, 0(x2) # load 0xd980439e from memory into f21
fsub.s f21, f29, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
li x22, 0x69b79705 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x93807747 # load x3 with value 0x93807747
sw x3, 0(x2) # store 0x93807747 in memory
flw f3, 0(x2) # load 0x93807747 from memory into f3
li x3, 0x0846d167 # load x3 with value 0x0846d167
sw x3, 0(x2) # store 0x0846d167 in memory
flw f22, 0(x2) # load 0x0846d167 from memory into f22
fsub.s f22, f3, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
li x23, 0xb132651a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xda885d36 # load x3 with value 0xda885d36
sw x3, 0(x2) # store 0xda885d36 in memory
flw f29, 0(x2) # load 0xda885d36 from memory into f29
li x3, 0xda60fe07 # load x3 with value 0xda60fe07
sw x3, 0(x2) # store 0xda60fe07 in memory
flw f23, 0(x2) # load 0xda60fe07 from memory into f23
fsub.s f23, f29, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
li x24, 0x0054f56d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5814853f # load x3 with value 0x5814853f
sw x3, 0(x2) # store 0x5814853f in memory
flw f11, 0(x2) # load 0x5814853f from memory into f11
li x3, 0x03af2f4c # load x3 with value 0x03af2f4c
sw x3, 0(x2) # store 0x03af2f4c in memory
flw f24, 0(x2) # load 0x03af2f4c from memory into f24
fsub.s f24, f11, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
li x25, 0xa81a2fc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe605c837 # load x3 with value 0xe605c837
sw x3, 0(x2) # store 0xe605c837 in memory
flw f10, 0(x2) # load 0xe605c837 from memory into f10
li x3, 0x88ac1288 # load x3 with value 0x88ac1288
sw x3, 0(x2) # store 0x88ac1288 in memory
flw f25, 0(x2) # load 0x88ac1288 from memory into f25
fsub.s f25, f10, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
li x26, 0xfea83251 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xde0e966b # load x3 with value 0xde0e966b
sw x3, 0(x2) # store 0xde0e966b in memory
flw f13, 0(x2) # load 0xde0e966b from memory into f13
li x3, 0x4a4971f5 # load x3 with value 0x4a4971f5
sw x3, 0(x2) # store 0x4a4971f5 in memory
flw f26, 0(x2) # load 0x4a4971f5 from memory into f26
fsub.s f26, f13, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
li x27, 0x14bbd25a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc9556200 # load x3 with value 0xc9556200
sw x3, 0(x2) # store 0xc9556200 in memory
flw f5, 0(x2) # load 0xc9556200 from memory into f5
li x3, 0x70908fdc # load x3 with value 0x70908fdc
sw x3, 0(x2) # store 0x70908fdc in memory
flw f27, 0(x2) # load 0x70908fdc from memory into f27
fsub.s f27, f5, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
li x28, 0xf13628aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6a632e45 # load x3 with value 0x6a632e45
sw x3, 0(x2) # store 0x6a632e45 in memory
flw f23, 0(x2) # load 0x6a632e45 from memory into f23
li x3, 0x6a09f02a # load x3 with value 0x6a09f02a
sw x3, 0(x2) # store 0x6a09f02a in memory
flw f28, 0(x2) # load 0x6a09f02a from memory into f28
fsub.s f28, f23, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
li x29, 0x8761c79d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2bcff488 # load x3 with value 0x2bcff488
sw x3, 0(x2) # store 0x2bcff488 in memory
flw f14, 0(x2) # load 0x2bcff488 from memory into f14
li x3, 0x3d8c3322 # load x3 with value 0x3d8c3322
sw x3, 0(x2) # store 0x3d8c3322 in memory
flw f29, 0(x2) # load 0x3d8c3322 from memory into f29
fsub.s f29, f14, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
li x30, 0xce0e39fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x517d1b44 # load x3 with value 0x517d1b44
sw x3, 0(x2) # store 0x517d1b44 in memory
flw f27, 0(x2) # load 0x517d1b44 from memory into f27
li x3, 0x03afbcc3 # load x3 with value 0x03afbcc3
sw x3, 0(x2) # store 0x03afbcc3 in memory
flw f30, 0(x2) # load 0x03afbcc3 from memory into f30
fsub.s f30, f27, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
li x31, 0x3d507817 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcff32082 # load x3 with value 0xcff32082
sw x3, 0(x2) # store 0xcff32082 in memory
flw f7, 0(x2) # load 0xcff32082 from memory into f7
li x3, 0xfb6781c0 # load x3 with value 0xfb6781c0
sw x3, 0(x2) # store 0xfb6781c0 in memory
flw f31, 0(x2) # load 0xfb6781c0 from memory into f31
fsub.s f31, f7, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x8, 0xcae8dbc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f21, 0(x2) # load 0x00000000 from memory into f21
li x3, 0xff6bf926 # load x3 with value 0xff6bf926
sw x3, 0(x2) # store 0xff6bf926 in memory
flw f23, 0(x2) # load 0xff6bf926 from memory into f23
fsub.s f8, f21, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
li x17, 0xd3289b40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f1, 0(x2) # load 0x80000000 from memory into f1
li x3, 0xd72f4f24 # load x3 with value 0xd72f4f24
sw x3, 0(x2) # store 0xd72f4f24 in memory
flw f26, 0(x2) # load 0xd72f4f24 from memory into f26
fsub.s f17, f1, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
li x7, 0x523fb519 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
li x3, 0x69593e6f # load x3 with value 0x69593e6f
sw x3, 0(x2) # store 0x69593e6f in memory
flw f8, 0(x2) # load 0x69593e6f from memory into f8
fsub.s f7, f24, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
li x22, 0x32dfc805 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f13, 0(x2) # load 0xbf800000 from memory into f13
li x3, 0xcd4297b2 # load x3 with value 0xcd4297b2
sw x3, 0(x2) # store 0xcd4297b2 in memory
flw f16, 0(x2) # load 0xcd4297b2 from memory into f16
fsub.s f22, f13, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
li x25, 0xe5d844a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f14, 0(x2) # load 0x3fc00000 from memory into f14
li x3, 0x69c3c5cb # load x3 with value 0x69c3c5cb
sw x3, 0(x2) # store 0x69c3c5cb in memory
flw f18, 0(x2) # load 0x69c3c5cb from memory into f18
fsub.s f25, f14, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
li x27, 0xf70a8ad5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f9, 0(x2) # load 0xbfc00000 from memory into f9
li x3, 0x145e9896 # load x3 with value 0x145e9896
sw x3, 0(x2) # store 0x145e9896 in memory
flw f24, 0(x2) # load 0x145e9896 from memory into f24
fsub.s f27, f9, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
li x12, 0x40e92b0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f21, 0(x2) # load 0x40000000 from memory into f21
li x3, 0xa673f62e # load x3 with value 0xa673f62e
sw x3, 0(x2) # store 0xa673f62e in memory
flw f16, 0(x2) # load 0xa673f62e from memory into f16
fsub.s f12, f21, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
li x4, 0x3cfb7970 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f28, 0(x2) # load 0xc0000000 from memory into f28
li x3, 0x4d7dd8d3 # load x3 with value 0x4d7dd8d3
sw x3, 0(x2) # store 0x4d7dd8d3 in memory
flw f20, 0(x2) # load 0x4d7dd8d3 from memory into f20
fsub.s f4, f28, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
li x19, 0xd22d730b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f2, 0(x2) # load 0x00800000 from memory into f2
li x3, 0x75588714 # load x3 with value 0x75588714
sw x3, 0(x2) # store 0x75588714 in memory
flw f30, 0(x2) # load 0x75588714 from memory into f30
fsub.s f19, f2, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
li x10, 0x7d92ee6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f21, 0(x2) # load 0x80800000 from memory into f21
li x3, 0xebb06f15 # load x3 with value 0xebb06f15
sw x3, 0(x2) # store 0xebb06f15 in memory
flw f11, 0(x2) # load 0xebb06f15 from memory into f11
fsub.s f10, f21, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
li x15, 0x526ee296 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f17, 0(x2) # load 0x7f7fffff from memory into f17
li x3, 0xd0bd5c35 # load x3 with value 0xd0bd5c35
sw x3, 0(x2) # store 0xd0bd5c35 in memory
flw f24, 0(x2) # load 0xd0bd5c35 from memory into f24
fsub.s f15, f17, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
li x18, 0xdb3a202b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f15, 0(x2) # load 0xff7fffff from memory into f15
li x3, 0x8a8444c7 # load x3 with value 0x8a8444c7
sw x3, 0(x2) # store 0x8a8444c7 in memory
flw f13, 0(x2) # load 0x8a8444c7 from memory into f13
fsub.s f18, f15, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
li x6, 0x934aa212 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f8, 0(x2) # load 0x007fffff from memory into f8
li x3, 0x2c0e009d # load x3 with value 0x2c0e009d
sw x3, 0(x2) # store 0x2c0e009d in memory
flw f25, 0(x2) # load 0x2c0e009d from memory into f25
fsub.s f6, f8, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
li x30, 0x9b4b5ff2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
li x3, 0x092ac876 # load x3 with value 0x092ac876
sw x3, 0(x2) # store 0x092ac876 in memory
flw f14, 0(x2) # load 0x092ac876 from memory into f14
fsub.s f30, f23, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
li x16, 0x06ad0dda # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f23, 0(x2) # load 0x00400000 from memory into f23
li x3, 0x31a74ff8 # load x3 with value 0x31a74ff8
sw x3, 0(x2) # store 0x31a74ff8 in memory
flw f31, 0(x2) # load 0x31a74ff8 from memory into f31
fsub.s f16, f23, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
li x3, 0x5ef0d4e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f27, 0(x2) # load 0x80400000 from memory into f27
li x3, 0x8692fdd9 # load x3 with value 0x8692fdd9
sw x3, 0(x2) # store 0x8692fdd9 in memory
flw f11, 0(x2) # load 0x8692fdd9 from memory into f11
fsub.s f3, f27, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x11, 0x9af33817 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f8, 0(x2) # load 0x00000001 from memory into f8
li x3, 0x2f9d8bd7 # load x3 with value 0x2f9d8bd7
sw x3, 0(x2) # store 0x2f9d8bd7 in memory
flw f1, 0(x2) # load 0x2f9d8bd7 from memory into f1
fsub.s f11, f8, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
li x27, 0x39bf6dbc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f12, 0(x2) # load 0x80000001 from memory into f12
li x3, 0xc75de662 # load x3 with value 0xc75de662
sw x3, 0(x2) # store 0xc75de662 in memory
flw f7, 0(x2) # load 0xc75de662 from memory into f7
fsub.s f27, f12, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
li x25, 0xa80fc0d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f23, 0(x2) # load 0x7f800000 from memory into f23
li x3, 0x734eb754 # load x3 with value 0x734eb754
sw x3, 0(x2) # store 0x734eb754 in memory
flw f28, 0(x2) # load 0x734eb754 from memory into f28
fsub.s f25, f23, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
li x19, 0xc8fde21a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f10, 0(x2) # load 0xff800000 from memory into f10
li x3, 0x9784d928 # load x3 with value 0x9784d928
sw x3, 0(x2) # store 0x9784d928 in memory
flw f18, 0(x2) # load 0x9784d928 from memory into f18
fsub.s f19, f10, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
li x14, 0x5e135cd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f3, 0(x2) # load 0x7fc00000 from memory into f3
li x3, 0x5ce68393 # load x3 with value 0x5ce68393
sw x3, 0(x2) # store 0x5ce68393 in memory
flw f16, 0(x2) # load 0x5ce68393 from memory into f16
fsub.s f14, f3, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
li x29, 0x72074d66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f31, 0(x2) # load 0x7fffffff from memory into f31
li x3, 0xbd0daf5b # load x3 with value 0xbd0daf5b
sw x3, 0(x2) # store 0xbd0daf5b in memory
flw f8, 0(x2) # load 0xbd0daf5b from memory into f8
fsub.s f29, f31, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
li x25, 0x2fa46d7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
li x3, 0x8cb3092f # load x3 with value 0x8cb3092f
sw x3, 0(x2) # store 0x8cb3092f in memory
flw f27, 0(x2) # load 0x8cb3092f from memory into f27
fsub.s f25, f30, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
li x14, 0x0b351cc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f2, 0(x2) # load 0x7fbfffff from memory into f2
li x3, 0x7c377df9 # load x3 with value 0x7c377df9
sw x3, 0(x2) # store 0x7c377df9 in memory
flw f13, 0(x2) # load 0x7c377df9 from memory into f13
fsub.s f14, f2, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
li x27, 0x0b11bda0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f1, 0(x2) # load 0x7ef8654f from memory into f1
li x3, 0x4aa01eba # load x3 with value 0x4aa01eba
sw x3, 0(x2) # store 0x4aa01eba in memory
flw f8, 0(x2) # load 0x4aa01eba from memory into f8
fsub.s f27, f1, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
li x15, 0xcc1f2a48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f28, 0(x2) # load 0x813d9ab0 from memory into f28
li x3, 0x1d8e84d5 # load x3 with value 0x1d8e84d5
sw x3, 0(x2) # store 0x1d8e84d5 in memory
flw f22, 0(x2) # load 0x1d8e84d5 from memory into f22
fsub.s f15, f28, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x14, 0x133fbfb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd944ee21 # load x3 with value 0xd944ee21
sw x3, 0(x2) # store 0xd944ee21 in memory
flw f5, 0(x2) # load 0xd944ee21 from memory into f5
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f27, 0(x2) # load 0x00000000 from memory into f27
fsub.s f14, f5, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000000)
li x4, 0xb898a4ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0cb224e0 # load x3 with value 0x0cb224e0
sw x3, 0(x2) # store 0x0cb224e0 in memory
flw f11, 0(x2) # load 0x0cb224e0 from memory into f11
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f27, 0(x2) # load 0x80000000 from memory into f27
fsub.s f4, f11, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
li x1, 0xeb6d8a90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd882b442 # load x3 with value 0xd882b442
sw x3, 0(x2) # store 0xd882b442 in memory
flw f13, 0(x2) # load 0xd882b442 from memory into f13
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
fsub.s f1, f13, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbf800000)
li x15, 0x29eeb83c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x81a71000 # load x3 with value 0x81a71000
sw x3, 0(x2) # store 0x81a71000 in memory
flw f4, 0(x2) # load 0x81a71000 from memory into f4
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f28, 0(x2) # load 0xbf800000 from memory into f28
fsub.s f15, f4, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3fc00000)
li x16, 0xbaaed49f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb20b6cbb # load x3 with value 0xb20b6cbb
sw x3, 0(x2) # store 0xb20b6cbb in memory
flw f2, 0(x2) # load 0xb20b6cbb from memory into f2
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f21, 0(x2) # load 0x3fc00000 from memory into f21
fsub.s f16, f2, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbfc00000)
li x12, 0xae692898 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc81d406b # load x3 with value 0xc81d406b
sw x3, 0(x2) # store 0xc81d406b in memory
flw f15, 0(x2) # load 0xc81d406b from memory into f15
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f11, 0(x2) # load 0xbfc00000 from memory into f11
fsub.s f12, f15, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x40000000)
li x20, 0x1472d6e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcda4f90f # load x3 with value 0xcda4f90f
sw x3, 0(x2) # store 0xcda4f90f in memory
flw f24, 0(x2) # load 0xcda4f90f from memory into f24
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f18, 0(x2) # load 0x40000000 from memory into f18
fsub.s f20, f24, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0000000)
li x8, 0xc61c0d5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa28240b4 # load x3 with value 0xa28240b4
sw x3, 0(x2) # store 0xa28240b4 in memory
flw f12, 0(x2) # load 0xa28240b4 from memory into f12
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f10, 0(x2) # load 0xc0000000 from memory into f10
fsub.s f8, f12, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800000)
li x11, 0x245293f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3acc5f7b # load x3 with value 0x3acc5f7b
sw x3, 0(x2) # store 0x3acc5f7b in memory
flw f24, 0(x2) # load 0x3acc5f7b from memory into f24
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
fsub.s f11, f24, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80800000)
li x1, 0x85e51558 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x047846f8 # load x3 with value 0x047846f8
sw x3, 0(x2) # store 0x047846f8 in memory
flw f6, 0(x2) # load 0x047846f8 from memory into f6
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
fsub.s f1, f6, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f7fffff)
li x15, 0x33ee3fe2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xba9265d7 # load x3 with value 0xba9265d7
sw x3, 0(x2) # store 0xba9265d7 in memory
flw f4, 0(x2) # load 0xba9265d7 from memory into f4
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
fsub.s f15, f4, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff7fffff)
li x3, 0x809e0cac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x129575f9 # load x3 with value 0x129575f9
sw x3, 0(x2) # store 0x129575f9 in memory
flw f11, 0(x2) # load 0x129575f9 from memory into f11
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f17, 0(x2) # load 0xff7fffff from memory into f17
fsub.s f3, f11, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffff)
li x25, 0xb4afac74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa9a3b0e7 # load x3 with value 0xa9a3b0e7
sw x3, 0(x2) # store 0xa9a3b0e7 in memory
flw f10, 0(x2) # load 0xa9a3b0e7 from memory into f10
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f20, 0(x2) # load 0x007fffff from memory into f20
fsub.s f25, f10, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x807fffff)
li x8, 0x690aaa35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x16b3a64e # load x3 with value 0x16b3a64e
sw x3, 0(x2) # store 0x16b3a64e in memory
flw f2, 0(x2) # load 0x16b3a64e from memory into f2
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f30, 0(x2) # load 0x807fffff from memory into f30
fsub.s f8, f2, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400000)
li x4, 0x7ea4b96b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x73c0cbcb # load x3 with value 0x73c0cbcb
sw x3, 0(x2) # store 0x73c0cbcb in memory
flw f3, 0(x2) # load 0x73c0cbcb from memory into f3
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f28, 0(x2) # load 0x00400000 from memory into f28
fsub.s f4, f3, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80400000)
li x26, 0xce1871af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xed1b43a8 # load x3 with value 0xed1b43a8
sw x3, 0(x2) # store 0xed1b43a8 in memory
flw f4, 0(x2) # load 0xed1b43a8 from memory into f4
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f29, 0(x2) # load 0x80400000 from memory into f29
fsub.s f26, f4, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x22, 0xa3b78338 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5cd2fb2b # load x3 with value 0x5cd2fb2b
sw x3, 0(x2) # store 0x5cd2fb2b in memory
flw f8, 0(x2) # load 0x5cd2fb2b from memory into f8
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f7, 0(x2) # load 0x00000001 from memory into f7
fsub.s f22, f8, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000001)
li x10, 0x290c17e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6644d017 # load x3 with value 0x6644d017
sw x3, 0(x2) # store 0x6644d017 in memory
flw f1, 0(x2) # load 0x6644d017 from memory into f1
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f3, 0(x2) # load 0x80000001 from memory into f3
fsub.s f10, f1, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800000)
li x4, 0xc0db4c58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4cb85c68 # load x3 with value 0x4cb85c68
sw x3, 0(x2) # store 0x4cb85c68 in memory
flw f9, 0(x2) # load 0x4cb85c68 from memory into f9
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f23, 0(x2) # load 0x7f800000 from memory into f23
fsub.s f4, f9, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff800000)
li x1, 0x891f5c1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x059515a9 # load x3 with value 0x059515a9
sw x3, 0(x2) # store 0x059515a9 in memory
flw f14, 0(x2) # load 0x059515a9 from memory into f14
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f26, 0(x2) # load 0xff800000 from memory into f26
fsub.s f1, f14, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fc00000)
li x26, 0x3b6f0de5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc3c38f48 # load x3 with value 0xc3c38f48
sw x3, 0(x2) # store 0xc3c38f48 in memory
flw f14, 0(x2) # load 0xc3c38f48 from memory into f14
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f17, 0(x2) # load 0x7fc00000 from memory into f17
fsub.s f26, f14, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff)
li x29, 0x0b159b8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x18f9d2e4 # load x3 with value 0x18f9d2e4
sw x3, 0(x2) # store 0x18f9d2e4 in memory
flw f19, 0(x2) # load 0x18f9d2e4 from memory into f19
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f18, 0(x2) # load 0x7fffffff from memory into f18
fsub.s f29, f19, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800001)
li x31, 0xa161c35d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x53538bbd # load x3 with value 0x53538bbd
sw x3, 0(x2) # store 0x53538bbd in memory
flw f5, 0(x2) # load 0x53538bbd from memory into f5
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f22, 0(x2) # load 0x7f800001 from memory into f22
fsub.s f31, f5, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fbfffff)
li x4, 0x94e4c265 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd3266919 # load x3 with value 0xd3266919
sw x3, 0(x2) # store 0xd3266919 in memory
flw f22, 0(x2) # load 0xd3266919 from memory into f22
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f9, 0(x2) # load 0x7fbfffff from memory into f9
fsub.s f4, f22, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ef8654f)
li x30, 0xa191c703 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x370f94b7 # load x3 with value 0x370f94b7
sw x3, 0(x2) # store 0x370f94b7 in memory
flw f4, 0(x2) # load 0x370f94b7 from memory into f4
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f11, 0(x2) # load 0x7ef8654f from memory into f11
fsub.s f30, f4, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x813d9ab0)
li x26, 0x03398d2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6a68f05c # load x3 with value 0x6a68f05c
sw x3, 0(x2) # store 0x6a68f05c in memory
flw f23, 0(x2) # load 0x6a68f05c from memory into f23
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
fsub.s f26, f23, f21 # perform operation

# Testcase cp_frm
li x21, 0xb92cd425 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4e41a444 # load x3 with value 0x4e41a444
sw x3, 0(x2) # store 0x4e41a444 in memory
flw f20, 0(x2) # load 0x4e41a444 from memory into f20
li x3, 0xc6bb8b00 # load x3 with value 0xc6bb8b00
sw x3, 0(x2) # store 0xc6bb8b00 in memory
flw f31, 0(x2) # load 0xc6bb8b00 from memory into f31
fsub.s f21, f20, f31, dyn # perform operation
fsub.s f21, f20, f31, rdn # perform operation
fsub.s f21, f20, f31, rmm # perform operation
fsub.s f21, f20, f31, rne # perform operation
fsub.s f21, f20, f31, rtz # perform operation
fsub.s f21, f20, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f20, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f20, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f20, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f20, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f20, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
li x13, 0x282955f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f11, 0(x2) # load 0x00000000 from memory into f11
fsub.s f13, f9, f11, dyn # perform operation
fsub.s f13, f9, f11, rdn # perform operation
fsub.s f13, f9, f11, rmm # perform operation
fsub.s f13, f9, f11, rne # perform operation
fsub.s f13, f9, f11, rtz # perform operation
fsub.s f13, f9, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f9, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f9, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f9, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f9, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f9, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80000000)
li x5, 0x168d0bb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f23, 0(x2) # load 0x00000000 from memory into f23
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f11, 0(x2) # load 0x80000000 from memory into f11
fsub.s f5, f23, f11, dyn # perform operation
fsub.s f5, f23, f11, rdn # perform operation
fsub.s f5, f23, f11, rmm # perform operation
fsub.s f5, f23, f11, rne # perform operation
fsub.s f5, f23, f11, rtz # perform operation
fsub.s f5, f23, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f23, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f23, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f23, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f23, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f23, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3f800000)
li x16, 0x28a82b80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f19, 0(x2) # load 0x00000000 from memory into f19
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
fsub.s f16, f19, f6, dyn # perform operation
fsub.s f16, f19, f6, rdn # perform operation
fsub.s f16, f19, f6, rmm # perform operation
fsub.s f16, f19, f6, rne # perform operation
fsub.s f16, f19, f6, rtz # perform operation
fsub.s f16, f19, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f19, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f19, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f19, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f19, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f19, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbf800000)
li x12, 0xec799af5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f22, 0(x2) # load 0x00000000 from memory into f22
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f15, 0(x2) # load 0xbf800000 from memory into f15
fsub.s f12, f22, f15, dyn # perform operation
fsub.s f12, f22, f15, rdn # perform operation
fsub.s f12, f22, f15, rmm # perform operation
fsub.s f12, f22, f15, rne # perform operation
fsub.s f12, f22, f15, rtz # perform operation
fsub.s f12, f22, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f22, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f22, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f22, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f22, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f22, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3fc00000)
li x5, 0xdea563f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f17, 0(x2) # load 0x00000000 from memory into f17
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f16, 0(x2) # load 0x3fc00000 from memory into f16
fsub.s f5, f17, f16, dyn # perform operation
fsub.s f5, f17, f16, rdn # perform operation
fsub.s f5, f17, f16, rmm # perform operation
fsub.s f5, f17, f16, rne # perform operation
fsub.s f5, f17, f16, rtz # perform operation
fsub.s f5, f17, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f17, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f17, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f17, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f17, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f17, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbfc00000)
li x17, 0xc56f2d60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f11, 0(x2) # load 0x00000000 from memory into f11
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f7, 0(x2) # load 0xbfc00000 from memory into f7
fsub.s f17, f11, f7, dyn # perform operation
fsub.s f17, f11, f7, rdn # perform operation
fsub.s f17, f11, f7, rmm # perform operation
fsub.s f17, f11, f7, rne # perform operation
fsub.s f17, f11, f7, rtz # perform operation
fsub.s f17, f11, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f11, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f11, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f11, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f11, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f11, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x40000000)
li x8, 0x7f30d644 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f22, 0(x2) # load 0x00000000 from memory into f22
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f18, 0(x2) # load 0x40000000 from memory into f18
fsub.s f8, f22, f18, dyn # perform operation
fsub.s f8, f22, f18, rdn # perform operation
fsub.s f8, f22, f18, rmm # perform operation
fsub.s f8, f22, f18, rne # perform operation
fsub.s f8, f22, f18, rtz # perform operation
fsub.s f8, f22, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f22, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f22, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f22, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f22, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f22, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc0000000)
li x16, 0x8cbbce78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f11, 0(x2) # load 0x00000000 from memory into f11
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f7, 0(x2) # load 0xc0000000 from memory into f7
fsub.s f16, f11, f7, dyn # perform operation
fsub.s f16, f11, f7, rdn # perform operation
fsub.s f16, f11, f7, rmm # perform operation
fsub.s f16, f11, f7, rne # perform operation
fsub.s f16, f11, f7, rtz # perform operation
fsub.s f16, f11, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f11, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f11, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f11, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f11, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f11, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x800000)
li x17, 0x0339285d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f6, 0(x2) # load 0x00000000 from memory into f6
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
fsub.s f17, f6, f27, dyn # perform operation
fsub.s f17, f6, f27, rdn # perform operation
fsub.s f17, f6, f27, rmm # perform operation
fsub.s f17, f6, f27, rne # perform operation
fsub.s f17, f6, f27, rtz # perform operation
fsub.s f17, f6, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f6, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f6, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f6, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f6, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f6, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80800000)
li x9, 0xbd30380a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f29, 0(x2) # load 0x00000000 from memory into f29
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f12, 0(x2) # load 0x80800000 from memory into f12
fsub.s f9, f29, f12, dyn # perform operation
fsub.s f9, f29, f12, rdn # perform operation
fsub.s f9, f29, f12, rmm # perform operation
fsub.s f9, f29, f12, rne # perform operation
fsub.s f9, f29, f12, rtz # perform operation
fsub.s f9, f29, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f29, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f29, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f29, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f29, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f29, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f7fffff)
li x27, 0x9b49dca3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f22, 0(x2) # load 0x7f7fffff from memory into f22
fsub.s f27, f15, f22, dyn # perform operation
fsub.s f27, f15, f22, rdn # perform operation
fsub.s f27, f15, f22, rmm # perform operation
fsub.s f27, f15, f22, rne # perform operation
fsub.s f27, f15, f22, rtz # perform operation
fsub.s f27, f15, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f15, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f15, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f15, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f15, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f15, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xff7fffff)
li x5, 0xe1654e05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f8, 0(x2) # load 0xff7fffff from memory into f8
fsub.s f5, f9, f8, dyn # perform operation
fsub.s f5, f9, f8, rdn # perform operation
fsub.s f5, f9, f8, rmm # perform operation
fsub.s f5, f9, f8, rne # perform operation
fsub.s f5, f9, f8, rtz # perform operation
fsub.s f5, f9, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f9, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f9, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f9, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f9, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f9, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffff)
li x13, 0x14d65d34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f6, 0(x2) # load 0x00000000 from memory into f6
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f2, 0(x2) # load 0x007fffff from memory into f2
fsub.s f13, f6, f2, dyn # perform operation
fsub.s f13, f6, f2, rdn # perform operation
fsub.s f13, f6, f2, rmm # perform operation
fsub.s f13, f6, f2, rne # perform operation
fsub.s f13, f6, f2, rtz # perform operation
fsub.s f13, f6, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f6, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f6, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f6, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f6, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f6, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x807fffff)
li x10, 0x85bac7cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f18, 0(x2) # load 0x00000000 from memory into f18
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f7, 0(x2) # load 0x807fffff from memory into f7
fsub.s f10, f18, f7, dyn # perform operation
fsub.s f10, f18, f7, rdn # perform operation
fsub.s f10, f18, f7, rmm # perform operation
fsub.s f10, f18, f7, rne # perform operation
fsub.s f10, f18, f7, rtz # perform operation
fsub.s f10, f18, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f18, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f18, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f18, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f18, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f18, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x400000)
li x22, 0x88c23353 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f11, 0(x2) # load 0x00000000 from memory into f11
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f31, 0(x2) # load 0x00400000 from memory into f31
fsub.s f22, f11, f31, dyn # perform operation
fsub.s f22, f11, f31, rdn # perform operation
fsub.s f22, f11, f31, rmm # perform operation
fsub.s f22, f11, f31, rne # perform operation
fsub.s f22, f11, f31, rtz # perform operation
fsub.s f22, f11, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f11, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f11, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f11, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f11, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f11, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80400000)
li x8, 0x2cb090e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f28, 0(x2) # load 0x00000000 from memory into f28
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f12, 0(x2) # load 0x80400000 from memory into f12
fsub.s f8, f28, f12, dyn # perform operation
fsub.s f8, f28, f12, rdn # perform operation
fsub.s f8, f28, f12, rmm # perform operation
fsub.s f8, f28, f12, rne # perform operation
fsub.s f8, f28, f12, rtz # perform operation
fsub.s f8, f28, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f28, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f28, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f28, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f28, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f28, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
li x29, 0x02df6d68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f31, 0(x2) # load 0x00000000 from memory into f31
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
fsub.s f29, f31, f22, dyn # perform operation
fsub.s f29, f31, f22, rdn # perform operation
fsub.s f29, f31, f22, rmm # perform operation
fsub.s f29, f31, f22, rne # perform operation
fsub.s f29, f31, f22, rtz # perform operation
fsub.s f29, f31, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f31, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f31, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f31, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f31, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f31, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x80000001)
li x14, 0xfedd59be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f17, 0(x2) # load 0x00000000 from memory into f17
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
fsub.s f14, f17, f18, dyn # perform operation
fsub.s f14, f17, f18, rdn # perform operation
fsub.s f14, f17, f18, rmm # perform operation
fsub.s f14, f17, f18, rne # perform operation
fsub.s f14, f17, f18, rtz # perform operation
fsub.s f14, f17, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f17, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f17, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f17, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f17, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f17, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f800000)
li x28, 0x9b942bf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f11, 0(x2) # load 0x00000000 from memory into f11
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f5, 0(x2) # load 0x7f800000 from memory into f5
fsub.s f28, f11, f5, dyn # perform operation
fsub.s f28, f11, f5, rdn # perform operation
fsub.s f28, f11, f5, rmm # perform operation
fsub.s f28, f11, f5, rne # perform operation
fsub.s f28, f11, f5, rtz # perform operation
fsub.s f28, f11, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f11, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f11, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f11, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f11, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f11, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xff800000)
li x2, 0x08fba6f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f23, 0(x2) # load 0x00000000 from memory into f23
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f21, 0(x2) # load 0xff800000 from memory into f21
fsub.s f2, f23, f21, dyn # perform operation
fsub.s f2, f23, f21, rdn # perform operation
fsub.s f2, f23, f21, rmm # perform operation
fsub.s f2, f23, f21, rne # perform operation
fsub.s f2, f23, f21, rtz # perform operation
fsub.s f2, f23, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f23, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f23, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f23, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f23, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f23, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fc00000)
li x1, 0x837fe1e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f26, 0(x2) # load 0x00000000 from memory into f26
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f20, 0(x2) # load 0x7fc00000 from memory into f20
fsub.s f1, f26, f20, dyn # perform operation
fsub.s f1, f26, f20, rdn # perform operation
fsub.s f1, f26, f20, rmm # perform operation
fsub.s f1, f26, f20, rne # perform operation
fsub.s f1, f26, f20, rtz # perform operation
fsub.s f1, f26, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f26, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f26, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f26, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f26, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f26, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffffff)
li x10, 0xc52fa3b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f11, 0(x2) # load 0x00000000 from memory into f11
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f24, 0(x2) # load 0x7fffffff from memory into f24
fsub.s f10, f11, f24, dyn # perform operation
fsub.s f10, f11, f24, rdn # perform operation
fsub.s f10, f11, f24, rmm # perform operation
fsub.s f10, f11, f24, rne # perform operation
fsub.s f10, f11, f24, rtz # perform operation
fsub.s f10, f11, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f11, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f11, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f11, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f11, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f11, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7f800001)
li x23, 0x65041ddb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f28, 0(x2) # load 0x00000000 from memory into f28
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f12, 0(x2) # load 0x7f800001 from memory into f12
fsub.s f23, f28, f12, dyn # perform operation
fsub.s f23, f28, f12, rdn # perform operation
fsub.s f23, f28, f12, rmm # perform operation
fsub.s f23, f28, f12, rne # perform operation
fsub.s f23, f28, f12, rtz # perform operation
fsub.s f23, f28, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f28, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f28, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f28, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f28, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f28, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fbfffff)
li x6, 0xedab0518 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f23, 0(x2) # load 0x00000000 from memory into f23
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
fsub.s f6, f23, f15, dyn # perform operation
fsub.s f6, f23, f15, rdn # perform operation
fsub.s f6, f23, f15, rmm # perform operation
fsub.s f6, f23, f15, rne # perform operation
fsub.s f6, f23, f15, rtz # perform operation
fsub.s f6, f23, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f23, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f23, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f23, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f23, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f23, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ef8654f)
li x24, 0x94543599 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f20, 0(x2) # load 0x00000000 from memory into f20
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f2, 0(x2) # load 0x7ef8654f from memory into f2
fsub.s f24, f20, f2, dyn # perform operation
fsub.s f24, f20, f2, rdn # perform operation
fsub.s f24, f20, f2, rmm # perform operation
fsub.s f24, f20, f2, rne # perform operation
fsub.s f24, f20, f2, rtz # perform operation
fsub.s f24, f20, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f20, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f20, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f20, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f20, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f20, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x813d9ab0)
li x17, 0x3a3e33d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f10, 0(x2) # load 0x00000000 from memory into f10
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f6, 0(x2) # load 0x813d9ab0 from memory into f6
fsub.s f17, f10, f6, dyn # perform operation
fsub.s f17, f10, f6, rdn # perform operation
fsub.s f17, f10, f6, rmm # perform operation
fsub.s f17, f10, f6, rne # perform operation
fsub.s f17, f10, f6, rtz # perform operation
fsub.s f17, f10, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f10, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f10, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f10, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f10, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f10, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x0)
li x26, 0x2bbc42a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f14, 0(x2) # load 0x80000000 from memory into f14
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f22, 0(x2) # load 0x00000000 from memory into f22
fsub.s f26, f14, f22, dyn # perform operation
fsub.s f26, f14, f22, rdn # perform operation
fsub.s f26, f14, f22, rmm # perform operation
fsub.s f26, f14, f22, rne # perform operation
fsub.s f26, f14, f22, rtz # perform operation
fsub.s f26, f14, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f14, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f14, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f14, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f14, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f14, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80000000)
li x31, 0x0cad23ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f10, 0(x2) # load 0x80000000 from memory into f10
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f26, 0(x2) # load 0x80000000 from memory into f26
fsub.s f31, f10, f26, dyn # perform operation
fsub.s f31, f10, f26, rdn # perform operation
fsub.s f31, f10, f26, rmm # perform operation
fsub.s f31, f10, f26, rne # perform operation
fsub.s f31, f10, f26, rtz # perform operation
fsub.s f31, f10, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f10, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f10, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f10, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f10, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f10, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x3f800000)
li x16, 0x3ec364cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f18, 0(x2) # load 0x80000000 from memory into f18
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f23, 0(x2) # load 0x3f800000 from memory into f23
fsub.s f16, f18, f23, dyn # perform operation
fsub.s f16, f18, f23, rdn # perform operation
fsub.s f16, f18, f23, rmm # perform operation
fsub.s f16, f18, f23, rne # perform operation
fsub.s f16, f18, f23, rtz # perform operation
fsub.s f16, f18, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f18, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f18, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f18, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f18, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f18, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xbf800000)
li x1, 0x87e191d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f14, 0(x2) # load 0x80000000 from memory into f14
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f12, 0(x2) # load 0xbf800000 from memory into f12
fsub.s f1, f14, f12, dyn # perform operation
fsub.s f1, f14, f12, rdn # perform operation
fsub.s f1, f14, f12, rmm # perform operation
fsub.s f1, f14, f12, rne # perform operation
fsub.s f1, f14, f12, rtz # perform operation
fsub.s f1, f14, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f14, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f14, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f14, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f14, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f14, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x3fc00000)
li x1, 0x04774e6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f3, 0(x2) # load 0x80000000 from memory into f3
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f15, 0(x2) # load 0x3fc00000 from memory into f15
fsub.s f1, f3, f15, dyn # perform operation
fsub.s f1, f3, f15, rdn # perform operation
fsub.s f1, f3, f15, rmm # perform operation
fsub.s f1, f3, f15, rne # perform operation
fsub.s f1, f3, f15, rtz # perform operation
fsub.s f1, f3, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f3, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f3, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f3, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f3, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f3, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xbfc00000)
li x9, 0x96324361 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f7, 0(x2) # load 0x80000000 from memory into f7
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f18, 0(x2) # load 0xbfc00000 from memory into f18
fsub.s f9, f7, f18, dyn # perform operation
fsub.s f9, f7, f18, rdn # perform operation
fsub.s f9, f7, f18, rmm # perform operation
fsub.s f9, f7, f18, rne # perform operation
fsub.s f9, f7, f18, rtz # perform operation
fsub.s f9, f7, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f7, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f7, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f7, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f7, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f7, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x40000000)
li x31, 0x974847a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f7, 0(x2) # load 0x80000000 from memory into f7
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f9, 0(x2) # load 0x40000000 from memory into f9
fsub.s f31, f7, f9, dyn # perform operation
fsub.s f31, f7, f9, rdn # perform operation
fsub.s f31, f7, f9, rmm # perform operation
fsub.s f31, f7, f9, rne # perform operation
fsub.s f31, f7, f9, rtz # perform operation
fsub.s f31, f7, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f7, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f7, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f7, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f7, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f7, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xc0000000)
li x2, 0xcdeeda57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f23, 0(x2) # load 0x80000000 from memory into f23
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f16, 0(x2) # load 0xc0000000 from memory into f16
fsub.s f2, f23, f16, dyn # perform operation
fsub.s f2, f23, f16, rdn # perform operation
fsub.s f2, f23, f16, rmm # perform operation
fsub.s f2, f23, f16, rne # perform operation
fsub.s f2, f23, f16, rtz # perform operation
fsub.s f2, f23, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f23, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f23, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f23, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f23, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f23, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x800000)
li x26, 0x9d6141b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f16, 0(x2) # load 0x80000000 from memory into f16
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f12, 0(x2) # load 0x00800000 from memory into f12
fsub.s f26, f16, f12, dyn # perform operation
fsub.s f26, f16, f12, rdn # perform operation
fsub.s f26, f16, f12, rmm # perform operation
fsub.s f26, f16, f12, rne # perform operation
fsub.s f26, f16, f12, rtz # perform operation
fsub.s f26, f16, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f16, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f16, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f16, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f16, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f16, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80800000)
li x3, 0xa8a87c23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f27, 0(x2) # load 0x80000000 from memory into f27
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f28, 0(x2) # load 0x80800000 from memory into f28
fsub.s f3, f27, f28, dyn # perform operation
fsub.s f3, f27, f28, rdn # perform operation
fsub.s f3, f27, f28, rmm # perform operation
fsub.s f3, f27, f28, rne # perform operation
fsub.s f3, f27, f28, rtz # perform operation
fsub.s f3, f27, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f27, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f27, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f27, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f27, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f27, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f7fffff)
li x31, 0x8bd5bd42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f8, 0(x2) # load 0x80000000 from memory into f8
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f30, 0(x2) # load 0x7f7fffff from memory into f30
fsub.s f31, f8, f30, dyn # perform operation
fsub.s f31, f8, f30, rdn # perform operation
fsub.s f31, f8, f30, rmm # perform operation
fsub.s f31, f8, f30, rne # perform operation
fsub.s f31, f8, f30, rtz # perform operation
fsub.s f31, f8, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f8, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f8, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f8, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f8, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f8, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xff7fffff)
li x16, 0x4c53201b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f12, 0(x2) # load 0x80000000 from memory into f12
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f24, 0(x2) # load 0xff7fffff from memory into f24
fsub.s f16, f12, f24, dyn # perform operation
fsub.s f16, f12, f24, rdn # perform operation
fsub.s f16, f12, f24, rmm # perform operation
fsub.s f16, f12, f24, rne # perform operation
fsub.s f16, f12, f24, rtz # perform operation
fsub.s f16, f12, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f12, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f12, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f12, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f12, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f12, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fffff)
li x16, 0x295d571d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f13, 0(x2) # load 0x80000000 from memory into f13
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f28, 0(x2) # load 0x007fffff from memory into f28
fsub.s f16, f13, f28, dyn # perform operation
fsub.s f16, f13, f28, rdn # perform operation
fsub.s f16, f13, f28, rmm # perform operation
fsub.s f16, f13, f28, rne # perform operation
fsub.s f16, f13, f28, rtz # perform operation
fsub.s f16, f13, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f13, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f13, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f13, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f13, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f13, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x807fffff)
li x22, 0x0bb6d744 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f27, 0(x2) # load 0x80000000 from memory into f27
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f8, 0(x2) # load 0x807fffff from memory into f8
fsub.s f22, f27, f8, dyn # perform operation
fsub.s f22, f27, f8, rdn # perform operation
fsub.s f22, f27, f8, rmm # perform operation
fsub.s f22, f27, f8, rne # perform operation
fsub.s f22, f27, f8, rtz # perform operation
fsub.s f22, f27, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f27, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f27, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f27, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f27, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f27, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x400000)
li x22, 0x626ca669 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f28, 0(x2) # load 0x80000000 from memory into f28
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f19, 0(x2) # load 0x00400000 from memory into f19
fsub.s f22, f28, f19, dyn # perform operation
fsub.s f22, f28, f19, rdn # perform operation
fsub.s f22, f28, f19, rmm # perform operation
fsub.s f22, f28, f19, rne # perform operation
fsub.s f22, f28, f19, rtz # perform operation
fsub.s f22, f28, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f28, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f28, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f28, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f28, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f28, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80400000)
li x6, 0x6659d6db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f17, 0(x2) # load 0x80000000 from memory into f17
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f12, 0(x2) # load 0x80400000 from memory into f12
fsub.s f6, f17, f12, dyn # perform operation
fsub.s f6, f17, f12, rdn # perform operation
fsub.s f6, f17, f12, rmm # perform operation
fsub.s f6, f17, f12, rne # perform operation
fsub.s f6, f17, f12, rtz # perform operation
fsub.s f6, f17, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f17, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f17, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f17, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f17, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f17, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x1)
li x28, 0xe9e7995c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f15, 0(x2) # load 0x80000000 from memory into f15
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f25, 0(x2) # load 0x00000001 from memory into f25
fsub.s f28, f15, f25, dyn # perform operation
fsub.s f28, f15, f25, rdn # perform operation
fsub.s f28, f15, f25, rmm # perform operation
fsub.s f28, f15, f25, rne # perform operation
fsub.s f28, f15, f25, rtz # perform operation
fsub.s f28, f15, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f15, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f15, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f15, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f15, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f15, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x80000001)
li x22, 0x647b80ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f30, 0(x2) # load 0x80000000 from memory into f30
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f6, 0(x2) # load 0x80000001 from memory into f6
fsub.s f22, f30, f6, dyn # perform operation
fsub.s f22, f30, f6, rdn # perform operation
fsub.s f22, f30, f6, rmm # perform operation
fsub.s f22, f30, f6, rne # perform operation
fsub.s f22, f30, f6, rtz # perform operation
fsub.s f22, f30, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f30, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f30, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f30, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f30, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f30, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f800000)
li x30, 0x21502a7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f17, 0(x2) # load 0x80000000 from memory into f17
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
fsub.s f30, f17, f31, dyn # perform operation
fsub.s f30, f17, f31, rdn # perform operation
fsub.s f30, f17, f31, rmm # perform operation
fsub.s f30, f17, f31, rne # perform operation
fsub.s f30, f17, f31, rtz # perform operation
fsub.s f30, f17, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f17, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f17, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f17, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f17, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f17, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0xff800000)
li x3, 0x4eaad5cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f20, 0(x2) # load 0x80000000 from memory into f20
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f12, 0(x2) # load 0xff800000 from memory into f12
fsub.s f3, f20, f12, dyn # perform operation
fsub.s f3, f20, f12, rdn # perform operation
fsub.s f3, f20, f12, rmm # perform operation
fsub.s f3, f20, f12, rne # perform operation
fsub.s f3, f20, f12, rtz # perform operation
fsub.s f3, f20, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f20, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f20, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f20, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f20, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f20, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fc00000)
li x13, 0x75ef8a6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f21, 0(x2) # load 0x80000000 from memory into f21
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
fsub.s f13, f21, f10, dyn # perform operation
fsub.s f13, f21, f10, rdn # perform operation
fsub.s f13, f21, f10, rmm # perform operation
fsub.s f13, f21, f10, rne # perform operation
fsub.s f13, f21, f10, rtz # perform operation
fsub.s f13, f21, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f21, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f21, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f21, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f21, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f21, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fffffff)
li x10, 0x94c9ecf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f1, 0(x2) # load 0x80000000 from memory into f1
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f20, 0(x2) # load 0x7fffffff from memory into f20
fsub.s f10, f1, f20, dyn # perform operation
fsub.s f10, f1, f20, rdn # perform operation
fsub.s f10, f1, f20, rmm # perform operation
fsub.s f10, f1, f20, rne # perform operation
fsub.s f10, f1, f20, rtz # perform operation
fsub.s f10, f1, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f1, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f1, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f1, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f1, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f1, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7f800001)
li x28, 0xcf3ed629 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f29, 0(x2) # load 0x80000000 from memory into f29
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
fsub.s f28, f29, f19, dyn # perform operation
fsub.s f28, f29, f19, rdn # perform operation
fsub.s f28, f29, f19, rmm # perform operation
fsub.s f28, f29, f19, rne # perform operation
fsub.s f28, f29, f19, rtz # perform operation
fsub.s f28, f29, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f29, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f29, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f29, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f29, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f29, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7fbfffff)
li x13, 0x7c8799f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f20, 0(x2) # load 0x80000000 from memory into f20
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f10, 0(x2) # load 0x7fbfffff from memory into f10
fsub.s f13, f20, f10, dyn # perform operation
fsub.s f13, f20, f10, rdn # perform operation
fsub.s f13, f20, f10, rmm # perform operation
fsub.s f13, f20, f10, rne # perform operation
fsub.s f13, f20, f10, rtz # perform operation
fsub.s f13, f20, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f20, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f20, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f20, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f20, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f20, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x7ef8654f)
li x3, 0x99b54c67 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f27, 0(x2) # load 0x80000000 from memory into f27
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f15, 0(x2) # load 0x7ef8654f from memory into f15
fsub.s f3, f27, f15, dyn # perform operation
fsub.s f3, f27, f15, rdn # perform operation
fsub.s f3, f27, f15, rmm # perform operation
fsub.s f3, f27, f15, rne # perform operation
fsub.s f3, f27, f15, rtz # perform operation
fsub.s f3, f27, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f27, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f27, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f27, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f27, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f27, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000000 fs2 = 0x813d9ab0)
li x10, 0x9e2c35da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f1, 0(x2) # load 0x80000000 from memory into f1
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f6, 0(x2) # load 0x813d9ab0 from memory into f6
fsub.s f10, f1, f6, dyn # perform operation
fsub.s f10, f1, f6, rdn # perform operation
fsub.s f10, f1, f6, rmm # perform operation
fsub.s f10, f1, f6, rne # perform operation
fsub.s f10, f1, f6, rtz # perform operation
fsub.s f10, f1, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f1, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f1, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f1, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f1, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f1, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x0)
li x24, 0xef2aa557 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f12, 0(x2) # load 0x3f800000 from memory into f12
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
fsub.s f24, f12, f15, dyn # perform operation
fsub.s f24, f12, f15, rdn # perform operation
fsub.s f24, f12, f15, rmm # perform operation
fsub.s f24, f12, f15, rne # perform operation
fsub.s f24, f12, f15, rtz # perform operation
fsub.s f24, f12, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f12, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f12, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f12, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f12, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f12, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80000000)
li x12, 0x859d86e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f23, 0(x2) # load 0x3f800000 from memory into f23
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f9, 0(x2) # load 0x80000000 from memory into f9
fsub.s f12, f23, f9, dyn # perform operation
fsub.s f12, f23, f9, rdn # perform operation
fsub.s f12, f23, f9, rmm # perform operation
fsub.s f12, f23, f9, rne # perform operation
fsub.s f12, f23, f9, rtz # perform operation
fsub.s f12, f23, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f23, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f23, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f23, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f23, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f23, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x3f800000)
li x1, 0x98377ff3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f13, 0(x2) # load 0x3f800000 from memory into f13
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f15, 0(x2) # load 0x3f800000 from memory into f15
fsub.s f1, f13, f15, dyn # perform operation
fsub.s f1, f13, f15, rdn # perform operation
fsub.s f1, f13, f15, rmm # perform operation
fsub.s f1, f13, f15, rne # perform operation
fsub.s f1, f13, f15, rtz # perform operation
fsub.s f1, f13, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f13, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f13, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f13, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f13, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f13, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xbf800000)
li x2, 0xc16b9689 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f29, 0(x2) # load 0x3f800000 from memory into f29
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f14, 0(x2) # load 0xbf800000 from memory into f14
fsub.s f2, f29, f14, dyn # perform operation
fsub.s f2, f29, f14, rdn # perform operation
fsub.s f2, f29, f14, rmm # perform operation
fsub.s f2, f29, f14, rne # perform operation
fsub.s f2, f29, f14, rtz # perform operation
fsub.s f2, f29, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f29, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f29, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f29, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f29, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f29, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x3fc00000)
li x11, 0x5e8f6b28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f20, 0(x2) # load 0x3f800000 from memory into f20
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f5, 0(x2) # load 0x3fc00000 from memory into f5
fsub.s f11, f20, f5, dyn # perform operation
fsub.s f11, f20, f5, rdn # perform operation
fsub.s f11, f20, f5, rmm # perform operation
fsub.s f11, f20, f5, rne # perform operation
fsub.s f11, f20, f5, rtz # perform operation
fsub.s f11, f20, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f20, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f20, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f20, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f20, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f20, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xbfc00000)
li x21, 0xe541b6c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f22, 0(x2) # load 0xbfc00000 from memory into f22
fsub.s f21, f6, f22, dyn # perform operation
fsub.s f21, f6, f22, rdn # perform operation
fsub.s f21, f6, f22, rmm # perform operation
fsub.s f21, f6, f22, rne # perform operation
fsub.s f21, f6, f22, rtz # perform operation
fsub.s f21, f6, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f6, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f6, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f6, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f6, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f6, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x40000000)
li x30, 0x6d4ec1b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f4, 0(x2) # load 0x3f800000 from memory into f4
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f28, 0(x2) # load 0x40000000 from memory into f28
fsub.s f30, f4, f28, dyn # perform operation
fsub.s f30, f4, f28, rdn # perform operation
fsub.s f30, f4, f28, rmm # perform operation
fsub.s f30, f4, f28, rne # perform operation
fsub.s f30, f4, f28, rtz # perform operation
fsub.s f30, f4, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f4, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f4, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f4, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f4, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f4, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xc0000000)
li x27, 0xb7b91a09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f31, 0(x2) # load 0x3f800000 from memory into f31
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
fsub.s f27, f31, f14, dyn # perform operation
fsub.s f27, f31, f14, rdn # perform operation
fsub.s f27, f31, f14, rmm # perform operation
fsub.s f27, f31, f14, rne # perform operation
fsub.s f27, f31, f14, rtz # perform operation
fsub.s f27, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f31, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x800000)
li x4, 0x3cd93992 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f9, 0(x2) # load 0x3f800000 from memory into f9
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
fsub.s f4, f9, f27, dyn # perform operation
fsub.s f4, f9, f27, rdn # perform operation
fsub.s f4, f9, f27, rmm # perform operation
fsub.s f4, f9, f27, rne # perform operation
fsub.s f4, f9, f27, rtz # perform operation
fsub.s f4, f9, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f4, f9, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f4, f9, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f4, f9, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f4, f9, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f4, f9, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80800000)
li x26, 0x5c338df9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f13, 0(x2) # load 0x3f800000 from memory into f13
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f1, 0(x2) # load 0x80800000 from memory into f1
fsub.s f26, f13, f1, dyn # perform operation
fsub.s f26, f13, f1, rdn # perform operation
fsub.s f26, f13, f1, rmm # perform operation
fsub.s f26, f13, f1, rne # perform operation
fsub.s f26, f13, f1, rtz # perform operation
fsub.s f26, f13, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f13, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f13, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f13, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f13, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f13, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f7fffff)
li x4, 0x744f8c2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f2, 0(x2) # load 0x3f800000 from memory into f2
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f7, 0(x2) # load 0x7f7fffff from memory into f7
fsub.s f4, f2, f7, dyn # perform operation
fsub.s f4, f2, f7, rdn # perform operation
fsub.s f4, f2, f7, rmm # perform operation
fsub.s f4, f2, f7, rne # perform operation
fsub.s f4, f2, f7, rtz # perform operation
fsub.s f4, f2, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f4, f2, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f4, f2, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f4, f2, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f4, f2, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f4, f2, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xff7fffff)
li x10, 0xa3683d57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f2, 0(x2) # load 0x3f800000 from memory into f2
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f15, 0(x2) # load 0xff7fffff from memory into f15
fsub.s f10, f2, f15, dyn # perform operation
fsub.s f10, f2, f15, rdn # perform operation
fsub.s f10, f2, f15, rmm # perform operation
fsub.s f10, f2, f15, rne # perform operation
fsub.s f10, f2, f15, rtz # perform operation
fsub.s f10, f2, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f2, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f2, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f2, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f2, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f2, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fffff)
li x6, 0xec3644e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f1, 0(x2) # load 0x3f800000 from memory into f1
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f4, 0(x2) # load 0x007fffff from memory into f4
fsub.s f6, f1, f4, dyn # perform operation
fsub.s f6, f1, f4, rdn # perform operation
fsub.s f6, f1, f4, rmm # perform operation
fsub.s f6, f1, f4, rne # perform operation
fsub.s f6, f1, f4, rtz # perform operation
fsub.s f6, f1, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f1, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f1, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f1, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f1, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f1, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x807fffff)
li x29, 0x6706ba9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f16, 0(x2) # load 0x3f800000 from memory into f16
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f1, 0(x2) # load 0x807fffff from memory into f1
fsub.s f29, f16, f1, dyn # perform operation
fsub.s f29, f16, f1, rdn # perform operation
fsub.s f29, f16, f1, rmm # perform operation
fsub.s f29, f16, f1, rne # perform operation
fsub.s f29, f16, f1, rtz # perform operation
fsub.s f29, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f16, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x400000)
li x30, 0xdb129135 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f28, 0(x2) # load 0x3f800000 from memory into f28
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f22, 0(x2) # load 0x00400000 from memory into f22
fsub.s f30, f28, f22, dyn # perform operation
fsub.s f30, f28, f22, rdn # perform operation
fsub.s f30, f28, f22, rmm # perform operation
fsub.s f30, f28, f22, rne # perform operation
fsub.s f30, f28, f22, rtz # perform operation
fsub.s f30, f28, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f28, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f28, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f28, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f28, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f28, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80400000)
li x27, 0xdaad5169 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f16, 0(x2) # load 0x3f800000 from memory into f16
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f9, 0(x2) # load 0x80400000 from memory into f9
fsub.s f27, f16, f9, dyn # perform operation
fsub.s f27, f16, f9, rdn # perform operation
fsub.s f27, f16, f9, rmm # perform operation
fsub.s f27, f16, f9, rne # perform operation
fsub.s f27, f16, f9, rtz # perform operation
fsub.s f27, f16, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f16, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f16, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f16, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f16, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f16, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x1)
li x25, 0x16f8b504 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f3, 0(x2) # load 0x3f800000 from memory into f3
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f16, 0(x2) # load 0x00000001 from memory into f16
fsub.s f25, f3, f16, dyn # perform operation
fsub.s f25, f3, f16, rdn # perform operation
fsub.s f25, f3, f16, rmm # perform operation
fsub.s f25, f3, f16, rne # perform operation
fsub.s f25, f3, f16, rtz # perform operation
fsub.s f25, f3, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f3, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f3, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f3, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f3, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f3, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x80000001)
li x7, 0x025f79df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f27, 0(x2) # load 0x3f800000 from memory into f27
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f3, 0(x2) # load 0x80000001 from memory into f3
fsub.s f7, f27, f3, dyn # perform operation
fsub.s f7, f27, f3, rdn # perform operation
fsub.s f7, f27, f3, rmm # perform operation
fsub.s f7, f27, f3, rne # perform operation
fsub.s f7, f27, f3, rtz # perform operation
fsub.s f7, f27, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f27, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f27, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f27, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f27, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f27, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f800000)
li x2, 0xc3c97102 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f18, 0(x2) # load 0x3f800000 from memory into f18
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
fsub.s f2, f18, f11, dyn # perform operation
fsub.s f2, f18, f11, rdn # perform operation
fsub.s f2, f18, f11, rmm # perform operation
fsub.s f2, f18, f11, rne # perform operation
fsub.s f2, f18, f11, rtz # perform operation
fsub.s f2, f18, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f18, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f18, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f18, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f18, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f18, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0xff800000)
li x10, 0x3d8d9be8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f20, 0(x2) # load 0x3f800000 from memory into f20
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f3, 0(x2) # load 0xff800000 from memory into f3
fsub.s f10, f20, f3, dyn # perform operation
fsub.s f10, f20, f3, rdn # perform operation
fsub.s f10, f20, f3, rmm # perform operation
fsub.s f10, f20, f3, rne # perform operation
fsub.s f10, f20, f3, rtz # perform operation
fsub.s f10, f20, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f20, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f20, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f20, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f20, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f20, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fc00000)
li x12, 0x05060491 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f15, 0(x2) # load 0x3f800000 from memory into f15
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f29, 0(x2) # load 0x7fc00000 from memory into f29
fsub.s f12, f15, f29, dyn # perform operation
fsub.s f12, f15, f29, rdn # perform operation
fsub.s f12, f15, f29, rmm # perform operation
fsub.s f12, f15, f29, rne # perform operation
fsub.s f12, f15, f29, rtz # perform operation
fsub.s f12, f15, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f15, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f15, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f15, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f15, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f15, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fffffff)
li x31, 0xdb736917 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f19, 0(x2) # load 0x3f800000 from memory into f19
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f9, 0(x2) # load 0x7fffffff from memory into f9
fsub.s f31, f19, f9, dyn # perform operation
fsub.s f31, f19, f9, rdn # perform operation
fsub.s f31, f19, f9, rmm # perform operation
fsub.s f31, f19, f9, rne # perform operation
fsub.s f31, f19, f9, rtz # perform operation
fsub.s f31, f19, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f19, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f19, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f19, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f19, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f19, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7f800001)
li x8, 0x1428bb88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f31, 0(x2) # load 0x3f800000 from memory into f31
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f14, 0(x2) # load 0x7f800001 from memory into f14
fsub.s f8, f31, f14, dyn # perform operation
fsub.s f8, f31, f14, rdn # perform operation
fsub.s f8, f31, f14, rmm # perform operation
fsub.s f8, f31, f14, rne # perform operation
fsub.s f8, f31, f14, rtz # perform operation
fsub.s f8, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f31, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7fbfffff)
li x10, 0x01f971fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f21, 0(x2) # load 0x3f800000 from memory into f21
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f5, 0(x2) # load 0x7fbfffff from memory into f5
fsub.s f10, f21, f5, dyn # perform operation
fsub.s f10, f21, f5, rdn # perform operation
fsub.s f10, f21, f5, rmm # perform operation
fsub.s f10, f21, f5, rne # perform operation
fsub.s f10, f21, f5, rtz # perform operation
fsub.s f10, f21, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f21, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f21, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f21, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f21, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f21, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x7ef8654f)
li x4, 0x70970d2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f3, 0(x2) # load 0x3f800000 from memory into f3
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
fsub.s f4, f3, f16, dyn # perform operation
fsub.s f4, f3, f16, rdn # perform operation
fsub.s f4, f3, f16, rmm # perform operation
fsub.s f4, f3, f16, rne # perform operation
fsub.s f4, f3, f16, rtz # perform operation
fsub.s f4, f3, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f4, f3, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f4, f3, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f4, f3, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f4, f3, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f4, f3, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3f800000 fs2 = 0x813d9ab0)
li x2, 0x74d29a26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f7, 0(x2) # load 0x3f800000 from memory into f7
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
fsub.s f2, f7, f21, dyn # perform operation
fsub.s f2, f7, f21, rdn # perform operation
fsub.s f2, f7, f21, rmm # perform operation
fsub.s f2, f7, f21, rne # perform operation
fsub.s f2, f7, f21, rtz # perform operation
fsub.s f2, f7, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f7, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f7, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f7, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f7, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f7, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x0)
li x7, 0x11184693 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f12, 0(x2) # load 0x00000000 from memory into f12
fsub.s f7, f27, f12, dyn # perform operation
fsub.s f7, f27, f12, rdn # perform operation
fsub.s f7, f27, f12, rmm # perform operation
fsub.s f7, f27, f12, rne # perform operation
fsub.s f7, f27, f12, rtz # perform operation
fsub.s f7, f27, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f27, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f27, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f27, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f27, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f27, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80000000)
li x23, 0x23e91f98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f29, 0(x2) # load 0xbf800000 from memory into f29
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f1, 0(x2) # load 0x80000000 from memory into f1
fsub.s f23, f29, f1, dyn # perform operation
fsub.s f23, f29, f1, rdn # perform operation
fsub.s f23, f29, f1, rmm # perform operation
fsub.s f23, f29, f1, rne # perform operation
fsub.s f23, f29, f1, rtz # perform operation
fsub.s f23, f29, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f29, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f29, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f29, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f29, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f29, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x3f800000)
li x31, 0xd9f747ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f25, 0(x2) # load 0xbf800000 from memory into f25
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
fsub.s f31, f25, f11, dyn # perform operation
fsub.s f31, f25, f11, rdn # perform operation
fsub.s f31, f25, f11, rmm # perform operation
fsub.s f31, f25, f11, rne # perform operation
fsub.s f31, f25, f11, rtz # perform operation
fsub.s f31, f25, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f25, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f25, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f25, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f25, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f25, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xbf800000)
li x8, 0x2c1b5574 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f30, 0(x2) # load 0xbf800000 from memory into f30
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f7, 0(x2) # load 0xbf800000 from memory into f7
fsub.s f8, f30, f7, dyn # perform operation
fsub.s f8, f30, f7, rdn # perform operation
fsub.s f8, f30, f7, rmm # perform operation
fsub.s f8, f30, f7, rne # perform operation
fsub.s f8, f30, f7, rtz # perform operation
fsub.s f8, f30, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f30, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f30, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f30, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f30, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f30, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x3fc00000)
li x25, 0xea0022b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f7, 0(x2) # load 0xbf800000 from memory into f7
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f5, 0(x2) # load 0x3fc00000 from memory into f5
fsub.s f25, f7, f5, dyn # perform operation
fsub.s f25, f7, f5, rdn # perform operation
fsub.s f25, f7, f5, rmm # perform operation
fsub.s f25, f7, f5, rne # perform operation
fsub.s f25, f7, f5, rtz # perform operation
fsub.s f25, f7, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f7, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f7, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f7, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f7, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f7, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xbfc00000)
li x8, 0x536ad35d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f16, 0(x2) # load 0xbf800000 from memory into f16
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f31, 0(x2) # load 0xbfc00000 from memory into f31
fsub.s f8, f16, f31, dyn # perform operation
fsub.s f8, f16, f31, rdn # perform operation
fsub.s f8, f16, f31, rmm # perform operation
fsub.s f8, f16, f31, rne # perform operation
fsub.s f8, f16, f31, rtz # perform operation
fsub.s f8, f16, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f16, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f16, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f16, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f16, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f16, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x40000000)
li x2, 0xd013fac4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f13, 0(x2) # load 0xbf800000 from memory into f13
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f27, 0(x2) # load 0x40000000 from memory into f27
fsub.s f2, f13, f27, dyn # perform operation
fsub.s f2, f13, f27, rdn # perform operation
fsub.s f2, f13, f27, rmm # perform operation
fsub.s f2, f13, f27, rne # perform operation
fsub.s f2, f13, f27, rtz # perform operation
fsub.s f2, f13, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f13, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f13, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f13, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f13, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f13, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xc0000000)
li x8, 0x9d86ca5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f29, 0(x2) # load 0xbf800000 from memory into f29
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f7, 0(x2) # load 0xc0000000 from memory into f7
fsub.s f8, f29, f7, dyn # perform operation
fsub.s f8, f29, f7, rdn # perform operation
fsub.s f8, f29, f7, rmm # perform operation
fsub.s f8, f29, f7, rne # perform operation
fsub.s f8, f29, f7, rtz # perform operation
fsub.s f8, f29, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f29, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f29, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f29, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f29, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f29, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x800000)
li x31, 0x45e02cb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f25, 0(x2) # load 0xbf800000 from memory into f25
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f8, 0(x2) # load 0x00800000 from memory into f8
fsub.s f31, f25, f8, dyn # perform operation
fsub.s f31, f25, f8, rdn # perform operation
fsub.s f31, f25, f8, rmm # perform operation
fsub.s f31, f25, f8, rne # perform operation
fsub.s f31, f25, f8, rtz # perform operation
fsub.s f31, f25, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f25, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f25, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f25, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f25, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f25, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80800000)
li x18, 0x2a2ed25d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f20, 0(x2) # load 0xbf800000 from memory into f20
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
fsub.s f18, f20, f10, dyn # perform operation
fsub.s f18, f20, f10, rdn # perform operation
fsub.s f18, f20, f10, rmm # perform operation
fsub.s f18, f20, f10, rne # perform operation
fsub.s f18, f20, f10, rtz # perform operation
fsub.s f18, f20, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f20, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f20, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f20, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f20, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f20, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f7fffff)
li x1, 0x90dbfbbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f15, 0(x2) # load 0xbf800000 from memory into f15
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f8, 0(x2) # load 0x7f7fffff from memory into f8
fsub.s f1, f15, f8, dyn # perform operation
fsub.s f1, f15, f8, rdn # perform operation
fsub.s f1, f15, f8, rmm # perform operation
fsub.s f1, f15, f8, rne # perform operation
fsub.s f1, f15, f8, rtz # perform operation
fsub.s f1, f15, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f15, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f15, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f15, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f15, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f15, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xff7fffff)
li x23, 0x57ee4cfa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f5, 0(x2) # load 0xbf800000 from memory into f5
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f22, 0(x2) # load 0xff7fffff from memory into f22
fsub.s f23, f5, f22, dyn # perform operation
fsub.s f23, f5, f22, rdn # perform operation
fsub.s f23, f5, f22, rmm # perform operation
fsub.s f23, f5, f22, rne # perform operation
fsub.s f23, f5, f22, rtz # perform operation
fsub.s f23, f5, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f5, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f5, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f5, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f5, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f5, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fffff)
li x28, 0x55364789 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f3, 0(x2) # load 0xbf800000 from memory into f3
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
fsub.s f28, f3, f17, dyn # perform operation
fsub.s f28, f3, f17, rdn # perform operation
fsub.s f28, f3, f17, rmm # perform operation
fsub.s f28, f3, f17, rne # perform operation
fsub.s f28, f3, f17, rtz # perform operation
fsub.s f28, f3, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f3, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f3, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f3, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f3, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f3, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x807fffff)
li x15, 0xfe5850cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f7, 0(x2) # load 0xbf800000 from memory into f7
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f8, 0(x2) # load 0x807fffff from memory into f8
fsub.s f15, f7, f8, dyn # perform operation
fsub.s f15, f7, f8, rdn # perform operation
fsub.s f15, f7, f8, rmm # perform operation
fsub.s f15, f7, f8, rne # perform operation
fsub.s f15, f7, f8, rtz # perform operation
fsub.s f15, f7, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f7, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f7, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f7, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f7, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f7, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x400000)
li x22, 0x1643dc6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f6, 0(x2) # load 0xbf800000 from memory into f6
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
fsub.s f22, f6, f15, dyn # perform operation
fsub.s f22, f6, f15, rdn # perform operation
fsub.s f22, f6, f15, rmm # perform operation
fsub.s f22, f6, f15, rne # perform operation
fsub.s f22, f6, f15, rtz # perform operation
fsub.s f22, f6, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f6, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f6, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f6, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f6, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f6, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80400000)
li x24, 0x8de94cbd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f17, 0(x2) # load 0xbf800000 from memory into f17
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f4, 0(x2) # load 0x80400000 from memory into f4
fsub.s f24, f17, f4, dyn # perform operation
fsub.s f24, f17, f4, rdn # perform operation
fsub.s f24, f17, f4, rmm # perform operation
fsub.s f24, f17, f4, rne # perform operation
fsub.s f24, f17, f4, rtz # perform operation
fsub.s f24, f17, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f17, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f17, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f17, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f17, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f17, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x1)
li x15, 0x3c64db5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f10, 0(x2) # load 0xbf800000 from memory into f10
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f18, 0(x2) # load 0x00000001 from memory into f18
fsub.s f15, f10, f18, dyn # perform operation
fsub.s f15, f10, f18, rdn # perform operation
fsub.s f15, f10, f18, rmm # perform operation
fsub.s f15, f10, f18, rne # perform operation
fsub.s f15, f10, f18, rtz # perform operation
fsub.s f15, f10, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f10, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f10, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f10, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f10, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f10, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x80000001)
li x12, 0x04f20451 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f23, 0(x2) # load 0xbf800000 from memory into f23
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f24, 0(x2) # load 0x80000001 from memory into f24
fsub.s f12, f23, f24, dyn # perform operation
fsub.s f12, f23, f24, rdn # perform operation
fsub.s f12, f23, f24, rmm # perform operation
fsub.s f12, f23, f24, rne # perform operation
fsub.s f12, f23, f24, rtz # perform operation
fsub.s f12, f23, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f23, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f23, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f23, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f23, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f23, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f800000)
li x14, 0xc72f4fc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f16, 0(x2) # load 0xbf800000 from memory into f16
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f10, 0(x2) # load 0x7f800000 from memory into f10
fsub.s f14, f16, f10, dyn # perform operation
fsub.s f14, f16, f10, rdn # perform operation
fsub.s f14, f16, f10, rmm # perform operation
fsub.s f14, f16, f10, rne # perform operation
fsub.s f14, f16, f10, rtz # perform operation
fsub.s f14, f16, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f16, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f16, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f16, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f16, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f16, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0xff800000)
li x4, 0x1574b69a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f7, 0(x2) # load 0xbf800000 from memory into f7
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
fsub.s f4, f7, f9, dyn # perform operation
fsub.s f4, f7, f9, rdn # perform operation
fsub.s f4, f7, f9, rmm # perform operation
fsub.s f4, f7, f9, rne # perform operation
fsub.s f4, f7, f9, rtz # perform operation
fsub.s f4, f7, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f4, f7, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f4, f7, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f4, f7, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f4, f7, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f4, f7, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fc00000)
li x11, 0x464e8afc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f24, 0(x2) # load 0xbf800000 from memory into f24
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f12, 0(x2) # load 0x7fc00000 from memory into f12
fsub.s f11, f24, f12, dyn # perform operation
fsub.s f11, f24, f12, rdn # perform operation
fsub.s f11, f24, f12, rmm # perform operation
fsub.s f11, f24, f12, rne # perform operation
fsub.s f11, f24, f12, rtz # perform operation
fsub.s f11, f24, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f24, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f24, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f24, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f24, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f24, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fffffff)
li x23, 0x3d9c68d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f19, 0(x2) # load 0xbf800000 from memory into f19
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f9, 0(x2) # load 0x7fffffff from memory into f9
fsub.s f23, f19, f9, dyn # perform operation
fsub.s f23, f19, f9, rdn # perform operation
fsub.s f23, f19, f9, rmm # perform operation
fsub.s f23, f19, f9, rne # perform operation
fsub.s f23, f19, f9, rtz # perform operation
fsub.s f23, f19, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f19, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f19, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f19, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f19, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f19, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7f800001)
li x11, 0xd16b0508 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f7, 0(x2) # load 0xbf800000 from memory into f7
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f22, 0(x2) # load 0x7f800001 from memory into f22
fsub.s f11, f7, f22, dyn # perform operation
fsub.s f11, f7, f22, rdn # perform operation
fsub.s f11, f7, f22, rmm # perform operation
fsub.s f11, f7, f22, rne # perform operation
fsub.s f11, f7, f22, rtz # perform operation
fsub.s f11, f7, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f7, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f7, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f7, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f7, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f7, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7fbfffff)
li x8, 0xbc25b004 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f2, 0(x2) # load 0xbf800000 from memory into f2
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f19, 0(x2) # load 0x7fbfffff from memory into f19
fsub.s f8, f2, f19, dyn # perform operation
fsub.s f8, f2, f19, rdn # perform operation
fsub.s f8, f2, f19, rmm # perform operation
fsub.s f8, f2, f19, rne # perform operation
fsub.s f8, f2, f19, rtz # perform operation
fsub.s f8, f2, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f2, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f2, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f2, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f2, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f2, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x7ef8654f)
li x19, 0xb3764303 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f14, 0(x2) # load 0xbf800000 from memory into f14
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
fsub.s f19, f14, f16, dyn # perform operation
fsub.s f19, f14, f16, rdn # perform operation
fsub.s f19, f14, f16, rmm # perform operation
fsub.s f19, f14, f16, rne # perform operation
fsub.s f19, f14, f16, rtz # perform operation
fsub.s f19, f14, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f14, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f14, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f14, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f14, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f14, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbf800000 fs2 = 0x813d9ab0)
li x12, 0x09075e49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f6, 0(x2) # load 0xbf800000 from memory into f6
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f20, 0(x2) # load 0x813d9ab0 from memory into f20
fsub.s f12, f6, f20, dyn # perform operation
fsub.s f12, f6, f20, rdn # perform operation
fsub.s f12, f6, f20, rmm # perform operation
fsub.s f12, f6, f20, rne # perform operation
fsub.s f12, f6, f20, rtz # perform operation
fsub.s f12, f6, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f6, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f6, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f6, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f6, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f6, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x0)
li x5, 0xa1c1bb4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f8, 0(x2) # load 0x3fc00000 from memory into f8
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f13, 0(x2) # load 0x00000000 from memory into f13
fsub.s f5, f8, f13, dyn # perform operation
fsub.s f5, f8, f13, rdn # perform operation
fsub.s f5, f8, f13, rmm # perform operation
fsub.s f5, f8, f13, rne # perform operation
fsub.s f5, f8, f13, rtz # perform operation
fsub.s f5, f8, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f8, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f8, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f8, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f8, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f8, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80000000)
li x18, 0x49655fe0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f21, 0(x2) # load 0x3fc00000 from memory into f21
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f2, 0(x2) # load 0x80000000 from memory into f2
fsub.s f18, f21, f2, dyn # perform operation
fsub.s f18, f21, f2, rdn # perform operation
fsub.s f18, f21, f2, rmm # perform operation
fsub.s f18, f21, f2, rne # perform operation
fsub.s f18, f21, f2, rtz # perform operation
fsub.s f18, f21, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f21, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f21, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f21, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f21, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f21, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x3f800000)
li x27, 0xdcf05092 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f18, 0(x2) # load 0x3fc00000 from memory into f18
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f1, 0(x2) # load 0x3f800000 from memory into f1
fsub.s f27, f18, f1, dyn # perform operation
fsub.s f27, f18, f1, rdn # perform operation
fsub.s f27, f18, f1, rmm # perform operation
fsub.s f27, f18, f1, rne # perform operation
fsub.s f27, f18, f1, rtz # perform operation
fsub.s f27, f18, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f18, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f18, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f18, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f18, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f18, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xbf800000)
li x28, 0x7ad5058a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f14, 0(x2) # load 0x3fc00000 from memory into f14
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f1, 0(x2) # load 0xbf800000 from memory into f1
fsub.s f28, f14, f1, dyn # perform operation
fsub.s f28, f14, f1, rdn # perform operation
fsub.s f28, f14, f1, rmm # perform operation
fsub.s f28, f14, f1, rne # perform operation
fsub.s f28, f14, f1, rtz # perform operation
fsub.s f28, f14, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f14, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f14, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f14, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f14, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f14, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x3fc00000)
li x12, 0xd48714f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f27, 0(x2) # load 0x3fc00000 from memory into f27
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f24, 0(x2) # load 0x3fc00000 from memory into f24
fsub.s f12, f27, f24, dyn # perform operation
fsub.s f12, f27, f24, rdn # perform operation
fsub.s f12, f27, f24, rmm # perform operation
fsub.s f12, f27, f24, rne # perform operation
fsub.s f12, f27, f24, rtz # perform operation
fsub.s f12, f27, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f27, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f27, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f27, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f27, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f27, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xbfc00000)
li x2, 0x80f22dac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f1, 0(x2) # load 0x3fc00000 from memory into f1
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f15, 0(x2) # load 0xbfc00000 from memory into f15
fsub.s f2, f1, f15, dyn # perform operation
fsub.s f2, f1, f15, rdn # perform operation
fsub.s f2, f1, f15, rmm # perform operation
fsub.s f2, f1, f15, rne # perform operation
fsub.s f2, f1, f15, rtz # perform operation
fsub.s f2, f1, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f1, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f1, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f1, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f1, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f1, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x40000000)
li x9, 0xaa231b31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f11, 0(x2) # load 0x3fc00000 from memory into f11
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f30, 0(x2) # load 0x40000000 from memory into f30
fsub.s f9, f11, f30, dyn # perform operation
fsub.s f9, f11, f30, rdn # perform operation
fsub.s f9, f11, f30, rmm # perform operation
fsub.s f9, f11, f30, rne # perform operation
fsub.s f9, f11, f30, rtz # perform operation
fsub.s f9, f11, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f11, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f11, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f11, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f11, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f11, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xc0000000)
li x31, 0xef9c1f51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f30, 0(x2) # load 0x3fc00000 from memory into f30
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f11, 0(x2) # load 0xc0000000 from memory into f11
fsub.s f31, f30, f11, dyn # perform operation
fsub.s f31, f30, f11, rdn # perform operation
fsub.s f31, f30, f11, rmm # perform operation
fsub.s f31, f30, f11, rne # perform operation
fsub.s f31, f30, f11, rtz # perform operation
fsub.s f31, f30, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f30, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f30, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f30, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f30, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f30, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x800000)
li x28, 0xfa93f88b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f7, 0(x2) # load 0x3fc00000 from memory into f7
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f5, 0(x2) # load 0x00800000 from memory into f5
fsub.s f28, f7, f5, dyn # perform operation
fsub.s f28, f7, f5, rdn # perform operation
fsub.s f28, f7, f5, rmm # perform operation
fsub.s f28, f7, f5, rne # perform operation
fsub.s f28, f7, f5, rtz # perform operation
fsub.s f28, f7, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f7, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f7, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f7, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f7, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f7, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80800000)
li x18, 0xc60ba20c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f5, 0(x2) # load 0x3fc00000 from memory into f5
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f25, 0(x2) # load 0x80800000 from memory into f25
fsub.s f18, f5, f25, dyn # perform operation
fsub.s f18, f5, f25, rdn # perform operation
fsub.s f18, f5, f25, rmm # perform operation
fsub.s f18, f5, f25, rne # perform operation
fsub.s f18, f5, f25, rtz # perform operation
fsub.s f18, f5, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f5, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f5, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f5, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f5, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f5, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f7fffff)
li x16, 0x3701f27a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f8, 0(x2) # load 0x3fc00000 from memory into f8
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
fsub.s f16, f8, f6, dyn # perform operation
fsub.s f16, f8, f6, rdn # perform operation
fsub.s f16, f8, f6, rmm # perform operation
fsub.s f16, f8, f6, rne # perform operation
fsub.s f16, f8, f6, rtz # perform operation
fsub.s f16, f8, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f8, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f8, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f8, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f8, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f8, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xff7fffff)
li x3, 0x2bc7302f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f17, 0(x2) # load 0x3fc00000 from memory into f17
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f21, 0(x2) # load 0xff7fffff from memory into f21
fsub.s f3, f17, f21, dyn # perform operation
fsub.s f3, f17, f21, rdn # perform operation
fsub.s f3, f17, f21, rmm # perform operation
fsub.s f3, f17, f21, rne # perform operation
fsub.s f3, f17, f21, rtz # perform operation
fsub.s f3, f17, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f17, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f17, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f17, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f17, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f17, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fffff)
li x16, 0xed07dc6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f26, 0(x2) # load 0x3fc00000 from memory into f26
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f29, 0(x2) # load 0x007fffff from memory into f29
fsub.s f16, f26, f29, dyn # perform operation
fsub.s f16, f26, f29, rdn # perform operation
fsub.s f16, f26, f29, rmm # perform operation
fsub.s f16, f26, f29, rne # perform operation
fsub.s f16, f26, f29, rtz # perform operation
fsub.s f16, f26, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f26, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f26, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f26, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f26, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f26, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x807fffff)
li x11, 0x1bab7990 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f25, 0(x2) # load 0x3fc00000 from memory into f25
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f28, 0(x2) # load 0x807fffff from memory into f28
fsub.s f11, f25, f28, dyn # perform operation
fsub.s f11, f25, f28, rdn # perform operation
fsub.s f11, f25, f28, rmm # perform operation
fsub.s f11, f25, f28, rne # perform operation
fsub.s f11, f25, f28, rtz # perform operation
fsub.s f11, f25, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f25, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f25, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f25, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f25, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f25, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x400000)
li x11, 0x14152825 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f17, 0(x2) # load 0x00400000 from memory into f17
fsub.s f11, f13, f17, dyn # perform operation
fsub.s f11, f13, f17, rdn # perform operation
fsub.s f11, f13, f17, rmm # perform operation
fsub.s f11, f13, f17, rne # perform operation
fsub.s f11, f13, f17, rtz # perform operation
fsub.s f11, f13, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f13, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f13, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f13, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f13, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f13, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80400000)
li x31, 0x3c73a597 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f28, 0(x2) # load 0x3fc00000 from memory into f28
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f16, 0(x2) # load 0x80400000 from memory into f16
fsub.s f31, f28, f16, dyn # perform operation
fsub.s f31, f28, f16, rdn # perform operation
fsub.s f31, f28, f16, rmm # perform operation
fsub.s f31, f28, f16, rne # perform operation
fsub.s f31, f28, f16, rtz # perform operation
fsub.s f31, f28, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f28, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f28, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f28, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f28, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f28, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x1)
li x25, 0xcd1fc39f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f2, 0(x2) # load 0x3fc00000 from memory into f2
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f20, 0(x2) # load 0x00000001 from memory into f20
fsub.s f25, f2, f20, dyn # perform operation
fsub.s f25, f2, f20, rdn # perform operation
fsub.s f25, f2, f20, rmm # perform operation
fsub.s f25, f2, f20, rne # perform operation
fsub.s f25, f2, f20, rtz # perform operation
fsub.s f25, f2, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f2, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f2, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f2, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f2, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f2, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x80000001)
li x16, 0xeef5b9b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f20, 0(x2) # load 0x3fc00000 from memory into f20
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f2, 0(x2) # load 0x80000001 from memory into f2
fsub.s f16, f20, f2, dyn # perform operation
fsub.s f16, f20, f2, rdn # perform operation
fsub.s f16, f20, f2, rmm # perform operation
fsub.s f16, f20, f2, rne # perform operation
fsub.s f16, f20, f2, rtz # perform operation
fsub.s f16, f20, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f20, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f20, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f20, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f20, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f20, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f800000)
li x15, 0x37ed551c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f24, 0(x2) # load 0x3fc00000 from memory into f24
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f25, 0(x2) # load 0x7f800000 from memory into f25
fsub.s f15, f24, f25, dyn # perform operation
fsub.s f15, f24, f25, rdn # perform operation
fsub.s f15, f24, f25, rmm # perform operation
fsub.s f15, f24, f25, rne # perform operation
fsub.s f15, f24, f25, rtz # perform operation
fsub.s f15, f24, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f24, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f24, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f24, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f24, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f24, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0xff800000)
li x3, 0x2be78ed0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f20, 0(x2) # load 0x3fc00000 from memory into f20
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f29, 0(x2) # load 0xff800000 from memory into f29
fsub.s f3, f20, f29, dyn # perform operation
fsub.s f3, f20, f29, rdn # perform operation
fsub.s f3, f20, f29, rmm # perform operation
fsub.s f3, f20, f29, rne # perform operation
fsub.s f3, f20, f29, rtz # perform operation
fsub.s f3, f20, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f20, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f20, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f20, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f20, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f20, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fc00000)
li x16, 0x88d9b496 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f18, 0(x2) # load 0x3fc00000 from memory into f18
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
fsub.s f16, f18, f10, dyn # perform operation
fsub.s f16, f18, f10, rdn # perform operation
fsub.s f16, f18, f10, rmm # perform operation
fsub.s f16, f18, f10, rne # perform operation
fsub.s f16, f18, f10, rtz # perform operation
fsub.s f16, f18, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f18, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f18, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f18, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f18, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f18, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fffffff)
li x6, 0x0be3770f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f10, 0(x2) # load 0x3fc00000 from memory into f10
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f23, 0(x2) # load 0x7fffffff from memory into f23
fsub.s f6, f10, f23, dyn # perform operation
fsub.s f6, f10, f23, rdn # perform operation
fsub.s f6, f10, f23, rmm # perform operation
fsub.s f6, f10, f23, rne # perform operation
fsub.s f6, f10, f23, rtz # perform operation
fsub.s f6, f10, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f10, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f10, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f10, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f10, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f10, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7f800001)
li x7, 0xace3a0a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f11, 0(x2) # load 0x7f800001 from memory into f11
fsub.s f7, f31, f11, dyn # perform operation
fsub.s f7, f31, f11, rdn # perform operation
fsub.s f7, f31, f11, rmm # perform operation
fsub.s f7, f31, f11, rne # perform operation
fsub.s f7, f31, f11, rtz # perform operation
fsub.s f7, f31, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f31, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f31, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f31, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f31, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f31, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7fbfffff)
li x23, 0x33edb304 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f1, 0(x2) # load 0x7fbfffff from memory into f1
fsub.s f23, f6, f1, dyn # perform operation
fsub.s f23, f6, f1, rdn # perform operation
fsub.s f23, f6, f1, rmm # perform operation
fsub.s f23, f6, f1, rne # perform operation
fsub.s f23, f6, f1, rtz # perform operation
fsub.s f23, f6, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f6, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f6, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f6, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f6, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f6, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x7ef8654f)
li x15, 0x79fc5445 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f11, 0(x2) # load 0x3fc00000 from memory into f11
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f26, 0(x2) # load 0x7ef8654f from memory into f26
fsub.s f15, f11, f26, dyn # perform operation
fsub.s f15, f11, f26, rdn # perform operation
fsub.s f15, f11, f26, rmm # perform operation
fsub.s f15, f11, f26, rne # perform operation
fsub.s f15, f11, f26, rtz # perform operation
fsub.s f15, f11, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f11, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f11, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f11, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f11, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f11, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3fc00000 fs2 = 0x813d9ab0)
li x1, 0xa554fc22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f24, 0(x2) # load 0x3fc00000 from memory into f24
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f6, 0(x2) # load 0x813d9ab0 from memory into f6
fsub.s f1, f24, f6, dyn # perform operation
fsub.s f1, f24, f6, rdn # perform operation
fsub.s f1, f24, f6, rmm # perform operation
fsub.s f1, f24, f6, rne # perform operation
fsub.s f1, f24, f6, rtz # perform operation
fsub.s f1, f24, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f24, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f24, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f24, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f24, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f24, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x0)
li x31, 0x7e85d18c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f25, 0(x2) # load 0x00000000 from memory into f25
fsub.s f31, f16, f25, dyn # perform operation
fsub.s f31, f16, f25, rdn # perform operation
fsub.s f31, f16, f25, rmm # perform operation
fsub.s f31, f16, f25, rne # perform operation
fsub.s f31, f16, f25, rtz # perform operation
fsub.s f31, f16, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f16, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f16, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f16, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f16, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f16, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80000000)
li x20, 0xfa594bc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f28, 0(x2) # load 0x80000000 from memory into f28
fsub.s f20, f16, f28, dyn # perform operation
fsub.s f20, f16, f28, rdn # perform operation
fsub.s f20, f16, f28, rmm # perform operation
fsub.s f20, f16, f28, rne # perform operation
fsub.s f20, f16, f28, rtz # perform operation
fsub.s f20, f16, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f16, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f16, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f16, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f16, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f16, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x3f800000)
li x9, 0x056cf63c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f2, 0(x2) # load 0xbfc00000 from memory into f2
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f29, 0(x2) # load 0x3f800000 from memory into f29
fsub.s f9, f2, f29, dyn # perform operation
fsub.s f9, f2, f29, rdn # perform operation
fsub.s f9, f2, f29, rmm # perform operation
fsub.s f9, f2, f29, rne # perform operation
fsub.s f9, f2, f29, rtz # perform operation
fsub.s f9, f2, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f2, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f2, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f2, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f2, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f2, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xbf800000)
li x15, 0x4d6039d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f8, 0(x2) # load 0xbfc00000 from memory into f8
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f25, 0(x2) # load 0xbf800000 from memory into f25
fsub.s f15, f8, f25, dyn # perform operation
fsub.s f15, f8, f25, rdn # perform operation
fsub.s f15, f8, f25, rmm # perform operation
fsub.s f15, f8, f25, rne # perform operation
fsub.s f15, f8, f25, rtz # perform operation
fsub.s f15, f8, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f8, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f8, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f8, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f8, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f8, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x3fc00000)
li x3, 0x0fa1363a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
fsub.s f3, f16, f31, dyn # perform operation
fsub.s f3, f16, f31, rdn # perform operation
fsub.s f3, f16, f31, rmm # perform operation
fsub.s f3, f16, f31, rne # perform operation
fsub.s f3, f16, f31, rtz # perform operation
fsub.s f3, f16, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f16, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f16, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f16, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f16, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f16, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xbfc00000)
li x25, 0x571a3b9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f30, 0(x2) # load 0xbfc00000 from memory into f30
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f8, 0(x2) # load 0xbfc00000 from memory into f8
fsub.s f25, f30, f8, dyn # perform operation
fsub.s f25, f30, f8, rdn # perform operation
fsub.s f25, f30, f8, rmm # perform operation
fsub.s f25, f30, f8, rne # perform operation
fsub.s f25, f30, f8, rtz # perform operation
fsub.s f25, f30, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f30, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f30, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f30, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f30, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f30, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x40000000)
li x7, 0x6173d457 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f12, 0(x2) # load 0xbfc00000 from memory into f12
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f28, 0(x2) # load 0x40000000 from memory into f28
fsub.s f7, f12, f28, dyn # perform operation
fsub.s f7, f12, f28, rdn # perform operation
fsub.s f7, f12, f28, rmm # perform operation
fsub.s f7, f12, f28, rne # perform operation
fsub.s f7, f12, f28, rtz # perform operation
fsub.s f7, f12, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f12, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f12, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f12, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f12, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f12, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xc0000000)
li x5, 0xdb290eae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f23, 0(x2) # load 0xbfc00000 from memory into f23
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f1, 0(x2) # load 0xc0000000 from memory into f1
fsub.s f5, f23, f1, dyn # perform operation
fsub.s f5, f23, f1, rdn # perform operation
fsub.s f5, f23, f1, rmm # perform operation
fsub.s f5, f23, f1, rne # perform operation
fsub.s f5, f23, f1, rtz # perform operation
fsub.s f5, f23, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f23, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f23, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f23, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f23, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f23, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x800000)
li x21, 0xd324b99f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f11, 0(x2) # load 0xbfc00000 from memory into f11
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f28, 0(x2) # load 0x00800000 from memory into f28
fsub.s f21, f11, f28, dyn # perform operation
fsub.s f21, f11, f28, rdn # perform operation
fsub.s f21, f11, f28, rmm # perform operation
fsub.s f21, f11, f28, rne # perform operation
fsub.s f21, f11, f28, rtz # perform operation
fsub.s f21, f11, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f11, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f11, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f11, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f11, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f11, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80800000)
li x25, 0x159ffdc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f24, 0(x2) # load 0xbfc00000 from memory into f24
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f1, 0(x2) # load 0x80800000 from memory into f1
fsub.s f25, f24, f1, dyn # perform operation
fsub.s f25, f24, f1, rdn # perform operation
fsub.s f25, f24, f1, rmm # perform operation
fsub.s f25, f24, f1, rne # perform operation
fsub.s f25, f24, f1, rtz # perform operation
fsub.s f25, f24, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f24, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f24, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f24, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f24, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f24, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f7fffff)
li x3, 0xc0a59fa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f2, 0(x2) # load 0xbfc00000 from memory into f2
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f24, 0(x2) # load 0x7f7fffff from memory into f24
fsub.s f3, f2, f24, dyn # perform operation
fsub.s f3, f2, f24, rdn # perform operation
fsub.s f3, f2, f24, rmm # perform operation
fsub.s f3, f2, f24, rne # perform operation
fsub.s f3, f2, f24, rtz # perform operation
fsub.s f3, f2, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f2, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f2, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f2, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f2, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f2, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xff7fffff)
li x27, 0x9fbec389 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f14, 0(x2) # load 0xbfc00000 from memory into f14
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f4, 0(x2) # load 0xff7fffff from memory into f4
fsub.s f27, f14, f4, dyn # perform operation
fsub.s f27, f14, f4, rdn # perform operation
fsub.s f27, f14, f4, rmm # perform operation
fsub.s f27, f14, f4, rne # perform operation
fsub.s f27, f14, f4, rtz # perform operation
fsub.s f27, f14, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f14, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f14, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f14, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f14, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f14, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fffff)
li x3, 0xa7425525 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f30, 0(x2) # load 0xbfc00000 from memory into f30
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f15, 0(x2) # load 0x007fffff from memory into f15
fsub.s f3, f30, f15, dyn # perform operation
fsub.s f3, f30, f15, rdn # perform operation
fsub.s f3, f30, f15, rmm # perform operation
fsub.s f3, f30, f15, rne # perform operation
fsub.s f3, f30, f15, rtz # perform operation
fsub.s f3, f30, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f30, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f30, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f30, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f30, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f30, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x807fffff)
li x8, 0x488d32e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f23, 0(x2) # load 0xbfc00000 from memory into f23
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f10, 0(x2) # load 0x807fffff from memory into f10
fsub.s f8, f23, f10, dyn # perform operation
fsub.s f8, f23, f10, rdn # perform operation
fsub.s f8, f23, f10, rmm # perform operation
fsub.s f8, f23, f10, rne # perform operation
fsub.s f8, f23, f10, rtz # perform operation
fsub.s f8, f23, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f23, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f23, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f23, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f23, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f23, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x400000)
li x21, 0xc2bcad77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f2, 0(x2) # load 0x00400000 from memory into f2
fsub.s f21, f25, f2, dyn # perform operation
fsub.s f21, f25, f2, rdn # perform operation
fsub.s f21, f25, f2, rmm # perform operation
fsub.s f21, f25, f2, rne # perform operation
fsub.s f21, f25, f2, rtz # perform operation
fsub.s f21, f25, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f25, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f25, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f25, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f25, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f25, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80400000)
li x29, 0x0bfd0953 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f30, 0(x2) # load 0x80400000 from memory into f30
fsub.s f29, f25, f30, dyn # perform operation
fsub.s f29, f25, f30, rdn # perform operation
fsub.s f29, f25, f30, rmm # perform operation
fsub.s f29, f25, f30, rne # perform operation
fsub.s f29, f25, f30, rtz # perform operation
fsub.s f29, f25, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f25, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f25, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f25, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f25, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f25, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x1)
li x16, 0x0262e7c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f26, 0(x2) # load 0x00000001 from memory into f26
fsub.s f16, f20, f26, dyn # perform operation
fsub.s f16, f20, f26, rdn # perform operation
fsub.s f16, f20, f26, rmm # perform operation
fsub.s f16, f20, f26, rne # perform operation
fsub.s f16, f20, f26, rtz # perform operation
fsub.s f16, f20, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f20, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f20, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f20, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f20, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f20, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x80000001)
li x14, 0xf937a87c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f30, 0(x2) # load 0xbfc00000 from memory into f30
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
fsub.s f14, f30, f18, dyn # perform operation
fsub.s f14, f30, f18, rdn # perform operation
fsub.s f14, f30, f18, rmm # perform operation
fsub.s f14, f30, f18, rne # perform operation
fsub.s f14, f30, f18, rtz # perform operation
fsub.s f14, f30, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f30, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f30, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f30, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f30, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f30, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f800000)
li x18, 0x8fc3af3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f22, 0(x2) # load 0xbfc00000 from memory into f22
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f2, 0(x2) # load 0x7f800000 from memory into f2
fsub.s f18, f22, f2, dyn # perform operation
fsub.s f18, f22, f2, rdn # perform operation
fsub.s f18, f22, f2, rmm # perform operation
fsub.s f18, f22, f2, rne # perform operation
fsub.s f18, f22, f2, rtz # perform operation
fsub.s f18, f22, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f22, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f22, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f22, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f22, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f22, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0xff800000)
li x15, 0xbf01afa6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f26, 0(x2) # load 0xbfc00000 from memory into f26
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f12, 0(x2) # load 0xff800000 from memory into f12
fsub.s f15, f26, f12, dyn # perform operation
fsub.s f15, f26, f12, rdn # perform operation
fsub.s f15, f26, f12, rmm # perform operation
fsub.s f15, f26, f12, rne # perform operation
fsub.s f15, f26, f12, rtz # perform operation
fsub.s f15, f26, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f26, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f26, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f26, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f26, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f26, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fc00000)
li x1, 0x96f9525a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f25, 0(x2) # load 0xbfc00000 from memory into f25
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f14, 0(x2) # load 0x7fc00000 from memory into f14
fsub.s f1, f25, f14, dyn # perform operation
fsub.s f1, f25, f14, rdn # perform operation
fsub.s f1, f25, f14, rmm # perform operation
fsub.s f1, f25, f14, rne # perform operation
fsub.s f1, f25, f14, rtz # perform operation
fsub.s f1, f25, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f25, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f25, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f25, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f25, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f25, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fffffff)
li x22, 0xb8123300 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f31, 0(x2) # load 0xbfc00000 from memory into f31
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f16, 0(x2) # load 0x7fffffff from memory into f16
fsub.s f22, f31, f16, dyn # perform operation
fsub.s f22, f31, f16, rdn # perform operation
fsub.s f22, f31, f16, rmm # perform operation
fsub.s f22, f31, f16, rne # perform operation
fsub.s f22, f31, f16, rtz # perform operation
fsub.s f22, f31, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f31, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f31, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f31, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f31, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f31, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7f800001)
li x7, 0x7bc9c29b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f31, 0(x2) # load 0xbfc00000 from memory into f31
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f18, 0(x2) # load 0x7f800001 from memory into f18
fsub.s f7, f31, f18, dyn # perform operation
fsub.s f7, f31, f18, rdn # perform operation
fsub.s f7, f31, f18, rmm # perform operation
fsub.s f7, f31, f18, rne # perform operation
fsub.s f7, f31, f18, rtz # perform operation
fsub.s f7, f31, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f31, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f31, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f31, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f31, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f31, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7fbfffff)
li x19, 0x8631ecf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f22, 0(x2) # load 0xbfc00000 from memory into f22
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f8, 0(x2) # load 0x7fbfffff from memory into f8
fsub.s f19, f22, f8, dyn # perform operation
fsub.s f19, f22, f8, rdn # perform operation
fsub.s f19, f22, f8, rmm # perform operation
fsub.s f19, f22, f8, rne # perform operation
fsub.s f19, f22, f8, rtz # perform operation
fsub.s f19, f22, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f22, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f22, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f22, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f22, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f22, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x7ef8654f)
li x9, 0x6a0572bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f24, 0(x2) # load 0xbfc00000 from memory into f24
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f4, 0(x2) # load 0x7ef8654f from memory into f4
fsub.s f9, f24, f4, dyn # perform operation
fsub.s f9, f24, f4, rdn # perform operation
fsub.s f9, f24, f4, rmm # perform operation
fsub.s f9, f24, f4, rne # perform operation
fsub.s f9, f24, f4, rtz # perform operation
fsub.s f9, f24, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f24, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f24, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f24, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f24, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f24, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbfc00000 fs2 = 0x813d9ab0)
li x11, 0x8d6fb6bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f15, 0(x2) # load 0x813d9ab0 from memory into f15
fsub.s f11, f29, f15, dyn # perform operation
fsub.s f11, f29, f15, rdn # perform operation
fsub.s f11, f29, f15, rmm # perform operation
fsub.s f11, f29, f15, rne # perform operation
fsub.s f11, f29, f15, rtz # perform operation
fsub.s f11, f29, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f29, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f29, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f29, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f29, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f29, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x0)
li x3, 0x48bd9010 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f27, 0(x2) # load 0x40000000 from memory into f27
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f11, 0(x2) # load 0x00000000 from memory into f11
fsub.s f3, f27, f11, dyn # perform operation
fsub.s f3, f27, f11, rdn # perform operation
fsub.s f3, f27, f11, rmm # perform operation
fsub.s f3, f27, f11, rne # perform operation
fsub.s f3, f27, f11, rtz # perform operation
fsub.s f3, f27, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f27, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f27, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f27, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f27, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f27, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80000000)
li x29, 0x5f7cb416 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f17, 0(x2) # load 0x40000000 from memory into f17
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f16, 0(x2) # load 0x80000000 from memory into f16
fsub.s f29, f17, f16, dyn # perform operation
fsub.s f29, f17, f16, rdn # perform operation
fsub.s f29, f17, f16, rmm # perform operation
fsub.s f29, f17, f16, rne # perform operation
fsub.s f29, f17, f16, rtz # perform operation
fsub.s f29, f17, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f17, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f17, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f17, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f17, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f17, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x3f800000)
li x11, 0x918fc624 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f15, 0(x2) # load 0x40000000 from memory into f15
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f30, 0(x2) # load 0x3f800000 from memory into f30
fsub.s f11, f15, f30, dyn # perform operation
fsub.s f11, f15, f30, rdn # perform operation
fsub.s f11, f15, f30, rmm # perform operation
fsub.s f11, f15, f30, rne # perform operation
fsub.s f11, f15, f30, rtz # perform operation
fsub.s f11, f15, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f15, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f15, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f15, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f15, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f15, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xbf800000)
li x9, 0x347e25fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f22, 0(x2) # load 0x40000000 from memory into f22
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f20, 0(x2) # load 0xbf800000 from memory into f20
fsub.s f9, f22, f20, dyn # perform operation
fsub.s f9, f22, f20, rdn # perform operation
fsub.s f9, f22, f20, rmm # perform operation
fsub.s f9, f22, f20, rne # perform operation
fsub.s f9, f22, f20, rtz # perform operation
fsub.s f9, f22, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f22, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f22, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f22, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f22, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f22, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x3fc00000)
li x1, 0xec475954 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f12, 0(x2) # load 0x40000000 from memory into f12
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f19, 0(x2) # load 0x3fc00000 from memory into f19
fsub.s f1, f12, f19, dyn # perform operation
fsub.s f1, f12, f19, rdn # perform operation
fsub.s f1, f12, f19, rmm # perform operation
fsub.s f1, f12, f19, rne # perform operation
fsub.s f1, f12, f19, rtz # perform operation
fsub.s f1, f12, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f12, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f12, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f12, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f12, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f12, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xbfc00000)
li x25, 0x6b8e71b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f22, 0(x2) # load 0x40000000 from memory into f22
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f31, 0(x2) # load 0xbfc00000 from memory into f31
fsub.s f25, f22, f31, dyn # perform operation
fsub.s f25, f22, f31, rdn # perform operation
fsub.s f25, f22, f31, rmm # perform operation
fsub.s f25, f22, f31, rne # perform operation
fsub.s f25, f22, f31, rtz # perform operation
fsub.s f25, f22, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f22, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f22, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f22, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f22, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f22, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x40000000)
li x18, 0xc0449d0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f2, 0(x2) # load 0x40000000 from memory into f2
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f22, 0(x2) # load 0x40000000 from memory into f22
fsub.s f18, f2, f22, dyn # perform operation
fsub.s f18, f2, f22, rdn # perform operation
fsub.s f18, f2, f22, rmm # perform operation
fsub.s f18, f2, f22, rne # perform operation
fsub.s f18, f2, f22, rtz # perform operation
fsub.s f18, f2, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f2, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f2, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f2, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f2, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f2, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xc0000000)
li x27, 0x00d0c9ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f31, 0(x2) # load 0x40000000 from memory into f31
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f20, 0(x2) # load 0xc0000000 from memory into f20
fsub.s f27, f31, f20, dyn # perform operation
fsub.s f27, f31, f20, rdn # perform operation
fsub.s f27, f31, f20, rmm # perform operation
fsub.s f27, f31, f20, rne # perform operation
fsub.s f27, f31, f20, rtz # perform operation
fsub.s f27, f31, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f31, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f31, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f31, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f31, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f31, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x800000)
li x26, 0xd2f7e39d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f15, 0(x2) # load 0x40000000 from memory into f15
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f1, 0(x2) # load 0x00800000 from memory into f1
fsub.s f26, f15, f1, dyn # perform operation
fsub.s f26, f15, f1, rdn # perform operation
fsub.s f26, f15, f1, rmm # perform operation
fsub.s f26, f15, f1, rne # perform operation
fsub.s f26, f15, f1, rtz # perform operation
fsub.s f26, f15, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f15, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f15, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f15, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f15, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f15, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80800000)
li x19, 0x43ee87a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f17, 0(x2) # load 0x40000000 from memory into f17
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f5, 0(x2) # load 0x80800000 from memory into f5
fsub.s f19, f17, f5, dyn # perform operation
fsub.s f19, f17, f5, rdn # perform operation
fsub.s f19, f17, f5, rmm # perform operation
fsub.s f19, f17, f5, rne # perform operation
fsub.s f19, f17, f5, rtz # perform operation
fsub.s f19, f17, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f17, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f17, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f17, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f17, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f17, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f7fffff)
li x5, 0x6d1a8e16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f11, 0(x2) # load 0x40000000 from memory into f11
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f17, 0(x2) # load 0x7f7fffff from memory into f17
fsub.s f5, f11, f17, dyn # perform operation
fsub.s f5, f11, f17, rdn # perform operation
fsub.s f5, f11, f17, rmm # perform operation
fsub.s f5, f11, f17, rne # perform operation
fsub.s f5, f11, f17, rtz # perform operation
fsub.s f5, f11, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f11, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f11, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f11, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f11, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f11, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xff7fffff)
li x6, 0xc7d9557a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f28, 0(x2) # load 0x40000000 from memory into f28
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f29, 0(x2) # load 0xff7fffff from memory into f29
fsub.s f6, f28, f29, dyn # perform operation
fsub.s f6, f28, f29, rdn # perform operation
fsub.s f6, f28, f29, rmm # perform operation
fsub.s f6, f28, f29, rne # perform operation
fsub.s f6, f28, f29, rtz # perform operation
fsub.s f6, f28, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f28, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f28, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f28, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f28, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f28, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fffff)
li x11, 0x5aec262a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f14, 0(x2) # load 0x40000000 from memory into f14
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f13, 0(x2) # load 0x007fffff from memory into f13
fsub.s f11, f14, f13, dyn # perform operation
fsub.s f11, f14, f13, rdn # perform operation
fsub.s f11, f14, f13, rmm # perform operation
fsub.s f11, f14, f13, rne # perform operation
fsub.s f11, f14, f13, rtz # perform operation
fsub.s f11, f14, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f14, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f14, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f14, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f14, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f14, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x807fffff)
li x30, 0xf59f21a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f7, 0(x2) # load 0x40000000 from memory into f7
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f15, 0(x2) # load 0x807fffff from memory into f15
fsub.s f30, f7, f15, dyn # perform operation
fsub.s f30, f7, f15, rdn # perform operation
fsub.s f30, f7, f15, rmm # perform operation
fsub.s f30, f7, f15, rne # perform operation
fsub.s f30, f7, f15, rtz # perform operation
fsub.s f30, f7, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f7, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f7, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f7, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f7, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f7, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x400000)
li x14, 0xfc2b2262 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f15, 0(x2) # load 0x40000000 from memory into f15
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f7, 0(x2) # load 0x00400000 from memory into f7
fsub.s f14, f15, f7, dyn # perform operation
fsub.s f14, f15, f7, rdn # perform operation
fsub.s f14, f15, f7, rmm # perform operation
fsub.s f14, f15, f7, rne # perform operation
fsub.s f14, f15, f7, rtz # perform operation
fsub.s f14, f15, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f15, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f15, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f15, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f15, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f15, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80400000)
li x23, 0x77ed2663 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f5, 0(x2) # load 0x40000000 from memory into f5
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f27, 0(x2) # load 0x80400000 from memory into f27
fsub.s f23, f5, f27, dyn # perform operation
fsub.s f23, f5, f27, rdn # perform operation
fsub.s f23, f5, f27, rmm # perform operation
fsub.s f23, f5, f27, rne # perform operation
fsub.s f23, f5, f27, rtz # perform operation
fsub.s f23, f5, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f5, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f5, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f5, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f5, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f5, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x1)
li x17, 0xc8f9b1c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f19, 0(x2) # load 0x40000000 from memory into f19
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f28, 0(x2) # load 0x00000001 from memory into f28
fsub.s f17, f19, f28, dyn # perform operation
fsub.s f17, f19, f28, rdn # perform operation
fsub.s f17, f19, f28, rmm # perform operation
fsub.s f17, f19, f28, rne # perform operation
fsub.s f17, f19, f28, rtz # perform operation
fsub.s f17, f19, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f19, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f19, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f19, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f19, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f19, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x80000001)
li x19, 0xbf8754c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f10, 0(x2) # load 0x40000000 from memory into f10
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f28, 0(x2) # load 0x80000001 from memory into f28
fsub.s f19, f10, f28, dyn # perform operation
fsub.s f19, f10, f28, rdn # perform operation
fsub.s f19, f10, f28, rmm # perform operation
fsub.s f19, f10, f28, rne # perform operation
fsub.s f19, f10, f28, rtz # perform operation
fsub.s f19, f10, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f10, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f10, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f10, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f10, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f10, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f800000)
li x30, 0x690f0ed5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f26, 0(x2) # load 0x7f800000 from memory into f26
fsub.s f30, f23, f26, dyn # perform operation
fsub.s f30, f23, f26, rdn # perform operation
fsub.s f30, f23, f26, rmm # perform operation
fsub.s f30, f23, f26, rne # perform operation
fsub.s f30, f23, f26, rtz # perform operation
fsub.s f30, f23, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f23, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f23, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f23, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f23, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f23, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0xff800000)
li x20, 0x37923f25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f7, 0(x2) # load 0x40000000 from memory into f7
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f27, 0(x2) # load 0xff800000 from memory into f27
fsub.s f20, f7, f27, dyn # perform operation
fsub.s f20, f7, f27, rdn # perform operation
fsub.s f20, f7, f27, rmm # perform operation
fsub.s f20, f7, f27, rne # perform operation
fsub.s f20, f7, f27, rtz # perform operation
fsub.s f20, f7, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f7, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f7, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f7, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f7, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f7, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fc00000)
li x4, 0xdeb51dfd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f17, 0(x2) # load 0x40000000 from memory into f17
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f22, 0(x2) # load 0x7fc00000 from memory into f22
fsub.s f4, f17, f22, dyn # perform operation
fsub.s f4, f17, f22, rdn # perform operation
fsub.s f4, f17, f22, rmm # perform operation
fsub.s f4, f17, f22, rne # perform operation
fsub.s f4, f17, f22, rtz # perform operation
fsub.s f4, f17, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f4, f17, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f4, f17, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f4, f17, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f4, f17, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f4, f17, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fffffff)
li x1, 0x2add10d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f4, 0(x2) # load 0x40000000 from memory into f4
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f14, 0(x2) # load 0x7fffffff from memory into f14
fsub.s f1, f4, f14, dyn # perform operation
fsub.s f1, f4, f14, rdn # perform operation
fsub.s f1, f4, f14, rmm # perform operation
fsub.s f1, f4, f14, rne # perform operation
fsub.s f1, f4, f14, rtz # perform operation
fsub.s f1, f4, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f4, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f4, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f4, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f4, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f4, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7f800001)
li x25, 0x70ae721d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f9, 0(x2) # load 0x40000000 from memory into f9
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f24, 0(x2) # load 0x7f800001 from memory into f24
fsub.s f25, f9, f24, dyn # perform operation
fsub.s f25, f9, f24, rdn # perform operation
fsub.s f25, f9, f24, rmm # perform operation
fsub.s f25, f9, f24, rne # perform operation
fsub.s f25, f9, f24, rtz # perform operation
fsub.s f25, f9, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f9, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f9, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f9, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f9, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f9, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7fbfffff)
li x25, 0xbc9e2723 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f16, 0(x2) # load 0x40000000 from memory into f16
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f5, 0(x2) # load 0x7fbfffff from memory into f5
fsub.s f25, f16, f5, dyn # perform operation
fsub.s f25, f16, f5, rdn # perform operation
fsub.s f25, f16, f5, rmm # perform operation
fsub.s f25, f16, f5, rne # perform operation
fsub.s f25, f16, f5, rtz # perform operation
fsub.s f25, f16, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f16, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f16, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f16, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f16, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f16, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x7ef8654f)
li x22, 0xfaa18089 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f3, 0(x2) # load 0x40000000 from memory into f3
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f10, 0(x2) # load 0x7ef8654f from memory into f10
fsub.s f22, f3, f10, dyn # perform operation
fsub.s f22, f3, f10, rdn # perform operation
fsub.s f22, f3, f10, rmm # perform operation
fsub.s f22, f3, f10, rne # perform operation
fsub.s f22, f3, f10, rtz # perform operation
fsub.s f22, f3, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f3, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f3, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f3, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f3, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f3, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x40000000 fs2 = 0x813d9ab0)
li x8, 0x64c506f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f4, 0(x2) # load 0x813d9ab0 from memory into f4
fsub.s f8, f24, f4, dyn # perform operation
fsub.s f8, f24, f4, rdn # perform operation
fsub.s f8, f24, f4, rmm # perform operation
fsub.s f8, f24, f4, rne # perform operation
fsub.s f8, f24, f4, rtz # perform operation
fsub.s f8, f24, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f24, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f24, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f24, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f24, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f24, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x0)
li x20, 0x1ce359ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f19, 0(x2) # load 0xc0000000 from memory into f19
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f26, 0(x2) # load 0x00000000 from memory into f26
fsub.s f20, f19, f26, dyn # perform operation
fsub.s f20, f19, f26, rdn # perform operation
fsub.s f20, f19, f26, rmm # perform operation
fsub.s f20, f19, f26, rne # perform operation
fsub.s f20, f19, f26, rtz # perform operation
fsub.s f20, f19, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f19, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f19, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f19, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f19, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f19, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80000000)
li x11, 0x37681f10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f5, 0(x2) # load 0xc0000000 from memory into f5
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f4, 0(x2) # load 0x80000000 from memory into f4
fsub.s f11, f5, f4, dyn # perform operation
fsub.s f11, f5, f4, rdn # perform operation
fsub.s f11, f5, f4, rmm # perform operation
fsub.s f11, f5, f4, rne # perform operation
fsub.s f11, f5, f4, rtz # perform operation
fsub.s f11, f5, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f5, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f5, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f5, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f5, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f5, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x3f800000)
li x17, 0x5c884d7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f9, 0(x2) # load 0xc0000000 from memory into f9
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f22, 0(x2) # load 0x3f800000 from memory into f22
fsub.s f17, f9, f22, dyn # perform operation
fsub.s f17, f9, f22, rdn # perform operation
fsub.s f17, f9, f22, rmm # perform operation
fsub.s f17, f9, f22, rne # perform operation
fsub.s f17, f9, f22, rtz # perform operation
fsub.s f17, f9, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f9, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f9, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f9, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f9, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f9, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xbf800000)
li x9, 0xe252cb76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f10, 0(x2) # load 0xc0000000 from memory into f10
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f19, 0(x2) # load 0xbf800000 from memory into f19
fsub.s f9, f10, f19, dyn # perform operation
fsub.s f9, f10, f19, rdn # perform operation
fsub.s f9, f10, f19, rmm # perform operation
fsub.s f9, f10, f19, rne # perform operation
fsub.s f9, f10, f19, rtz # perform operation
fsub.s f9, f10, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f10, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f10, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f10, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f10, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f10, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x3fc00000)
li x5, 0xf717ff68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f18, 0(x2) # load 0xc0000000 from memory into f18
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f2, 0(x2) # load 0x3fc00000 from memory into f2
fsub.s f5, f18, f2, dyn # perform operation
fsub.s f5, f18, f2, rdn # perform operation
fsub.s f5, f18, f2, rmm # perform operation
fsub.s f5, f18, f2, rne # perform operation
fsub.s f5, f18, f2, rtz # perform operation
fsub.s f5, f18, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f18, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f18, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f18, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f18, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f18, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xbfc00000)
li x18, 0xcff5041c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f7, 0(x2) # load 0xc0000000 from memory into f7
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f31, 0(x2) # load 0xbfc00000 from memory into f31
fsub.s f18, f7, f31, dyn # perform operation
fsub.s f18, f7, f31, rdn # perform operation
fsub.s f18, f7, f31, rmm # perform operation
fsub.s f18, f7, f31, rne # perform operation
fsub.s f18, f7, f31, rtz # perform operation
fsub.s f18, f7, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f7, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f7, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f7, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f7, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f7, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x40000000)
li x26, 0xa6ab9b0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f3, 0(x2) # load 0xc0000000 from memory into f3
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f27, 0(x2) # load 0x40000000 from memory into f27
fsub.s f26, f3, f27, dyn # perform operation
fsub.s f26, f3, f27, rdn # perform operation
fsub.s f26, f3, f27, rmm # perform operation
fsub.s f26, f3, f27, rne # perform operation
fsub.s f26, f3, f27, rtz # perform operation
fsub.s f26, f3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f3, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f3, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f3, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f3, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f3, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xc0000000)
li x21, 0x111c40ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f3, 0(x2) # load 0xc0000000 from memory into f3
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f6, 0(x2) # load 0xc0000000 from memory into f6
fsub.s f21, f3, f6, dyn # perform operation
fsub.s f21, f3, f6, rdn # perform operation
fsub.s f21, f3, f6, rmm # perform operation
fsub.s f21, f3, f6, rne # perform operation
fsub.s f21, f3, f6, rtz # perform operation
fsub.s f21, f3, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f3, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f3, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f3, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f3, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f3, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x800000)
li x5, 0x717d2175 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f7, 0(x2) # load 0xc0000000 from memory into f7
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f6, 0(x2) # load 0x00800000 from memory into f6
fsub.s f5, f7, f6, dyn # perform operation
fsub.s f5, f7, f6, rdn # perform operation
fsub.s f5, f7, f6, rmm # perform operation
fsub.s f5, f7, f6, rne # perform operation
fsub.s f5, f7, f6, rtz # perform operation
fsub.s f5, f7, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f7, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f7, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f7, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f7, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f7, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80800000)
li x17, 0xceca5a4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f8, 0(x2) # load 0x80800000 from memory into f8
fsub.s f17, f14, f8, dyn # perform operation
fsub.s f17, f14, f8, rdn # perform operation
fsub.s f17, f14, f8, rmm # perform operation
fsub.s f17, f14, f8, rne # perform operation
fsub.s f17, f14, f8, rtz # perform operation
fsub.s f17, f14, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f14, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f14, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f14, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f14, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f14, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f7fffff)
li x11, 0xd6653add # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f25, 0(x2) # load 0xc0000000 from memory into f25
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f5, 0(x2) # load 0x7f7fffff from memory into f5
fsub.s f11, f25, f5, dyn # perform operation
fsub.s f11, f25, f5, rdn # perform operation
fsub.s f11, f25, f5, rmm # perform operation
fsub.s f11, f25, f5, rne # perform operation
fsub.s f11, f25, f5, rtz # perform operation
fsub.s f11, f25, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f25, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f25, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f25, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f25, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f25, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xff7fffff)
li x17, 0xa5a406ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f6, 0(x2) # load 0xc0000000 from memory into f6
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f1, 0(x2) # load 0xff7fffff from memory into f1
fsub.s f17, f6, f1, dyn # perform operation
fsub.s f17, f6, f1, rdn # perform operation
fsub.s f17, f6, f1, rmm # perform operation
fsub.s f17, f6, f1, rne # perform operation
fsub.s f17, f6, f1, rtz # perform operation
fsub.s f17, f6, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f6, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f6, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f6, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f6, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f6, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fffff)
li x10, 0xb963877a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f22, 0(x2) # load 0xc0000000 from memory into f22
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
fsub.s f10, f22, f17, dyn # perform operation
fsub.s f10, f22, f17, rdn # perform operation
fsub.s f10, f22, f17, rmm # perform operation
fsub.s f10, f22, f17, rne # perform operation
fsub.s f10, f22, f17, rtz # perform operation
fsub.s f10, f22, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f22, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f22, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f22, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f22, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f22, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x807fffff)
li x20, 0x0c475ac8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f16, 0(x2) # load 0xc0000000 from memory into f16
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
fsub.s f20, f16, f23, dyn # perform operation
fsub.s f20, f16, f23, rdn # perform operation
fsub.s f20, f16, f23, rmm # perform operation
fsub.s f20, f16, f23, rne # perform operation
fsub.s f20, f16, f23, rtz # perform operation
fsub.s f20, f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f16, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x400000)
li x12, 0xec2dfeb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f1, 0(x2) # load 0xc0000000 from memory into f1
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f3, 0(x2) # load 0x00400000 from memory into f3
fsub.s f12, f1, f3, dyn # perform operation
fsub.s f12, f1, f3, rdn # perform operation
fsub.s f12, f1, f3, rmm # perform operation
fsub.s f12, f1, f3, rne # perform operation
fsub.s f12, f1, f3, rtz # perform operation
fsub.s f12, f1, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f1, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f1, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f1, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f1, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f1, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80400000)
li x17, 0xb85baf9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f19, 0(x2) # load 0xc0000000 from memory into f19
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f2, 0(x2) # load 0x80400000 from memory into f2
fsub.s f17, f19, f2, dyn # perform operation
fsub.s f17, f19, f2, rdn # perform operation
fsub.s f17, f19, f2, rmm # perform operation
fsub.s f17, f19, f2, rne # perform operation
fsub.s f17, f19, f2, rtz # perform operation
fsub.s f17, f19, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f19, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f19, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f19, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f19, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f19, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x1)
li x18, 0x8a91fdd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f16, 0(x2) # load 0xc0000000 from memory into f16
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
fsub.s f18, f16, f5, dyn # perform operation
fsub.s f18, f16, f5, rdn # perform operation
fsub.s f18, f16, f5, rmm # perform operation
fsub.s f18, f16, f5, rne # perform operation
fsub.s f18, f16, f5, rtz # perform operation
fsub.s f18, f16, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f16, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f16, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f16, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f16, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f16, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x80000001)
li x6, 0x060f7a1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f27, 0(x2) # load 0xc0000000 from memory into f27
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f11, 0(x2) # load 0x80000001 from memory into f11
fsub.s f6, f27, f11, dyn # perform operation
fsub.s f6, f27, f11, rdn # perform operation
fsub.s f6, f27, f11, rmm # perform operation
fsub.s f6, f27, f11, rne # perform operation
fsub.s f6, f27, f11, rtz # perform operation
fsub.s f6, f27, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f27, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f27, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f27, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f27, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f27, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f800000)
li x19, 0xebfd572c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f4, 0(x2) # load 0xc0000000 from memory into f4
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f7, 0(x2) # load 0x7f800000 from memory into f7
fsub.s f19, f4, f7, dyn # perform operation
fsub.s f19, f4, f7, rdn # perform operation
fsub.s f19, f4, f7, rmm # perform operation
fsub.s f19, f4, f7, rne # perform operation
fsub.s f19, f4, f7, rtz # perform operation
fsub.s f19, f4, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f4, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f4, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f4, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f4, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f4, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0xff800000)
li x16, 0x453d019f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f4, 0(x2) # load 0xc0000000 from memory into f4
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f7, 0(x2) # load 0xff800000 from memory into f7
fsub.s f16, f4, f7, dyn # perform operation
fsub.s f16, f4, f7, rdn # perform operation
fsub.s f16, f4, f7, rmm # perform operation
fsub.s f16, f4, f7, rne # perform operation
fsub.s f16, f4, f7, rtz # perform operation
fsub.s f16, f4, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f4, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f4, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f4, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f4, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f4, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fc00000)
li x7, 0x18c6e550 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f20, 0(x2) # load 0xc0000000 from memory into f20
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f17, 0(x2) # load 0x7fc00000 from memory into f17
fsub.s f7, f20, f17, dyn # perform operation
fsub.s f7, f20, f17, rdn # perform operation
fsub.s f7, f20, f17, rmm # perform operation
fsub.s f7, f20, f17, rne # perform operation
fsub.s f7, f20, f17, rtz # perform operation
fsub.s f7, f20, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f20, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f20, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f20, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f20, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f20, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fffffff)
li x27, 0xe03702e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f28, 0(x2) # load 0x7fffffff from memory into f28
fsub.s f27, f29, f28, dyn # perform operation
fsub.s f27, f29, f28, rdn # perform operation
fsub.s f27, f29, f28, rmm # perform operation
fsub.s f27, f29, f28, rne # perform operation
fsub.s f27, f29, f28, rtz # perform operation
fsub.s f27, f29, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f29, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f29, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f29, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f29, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f29, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7f800001)
li x22, 0xf928178d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f20, 0(x2) # load 0xc0000000 from memory into f20
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f4, 0(x2) # load 0x7f800001 from memory into f4
fsub.s f22, f20, f4, dyn # perform operation
fsub.s f22, f20, f4, rdn # perform operation
fsub.s f22, f20, f4, rmm # perform operation
fsub.s f22, f20, f4, rne # perform operation
fsub.s f22, f20, f4, rtz # perform operation
fsub.s f22, f20, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f20, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f20, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f20, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f20, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f20, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7fbfffff)
li x6, 0x4889fa97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f12, 0(x2) # load 0xc0000000 from memory into f12
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f20, 0(x2) # load 0x7fbfffff from memory into f20
fsub.s f6, f12, f20, dyn # perform operation
fsub.s f6, f12, f20, rdn # perform operation
fsub.s f6, f12, f20, rmm # perform operation
fsub.s f6, f12, f20, rne # perform operation
fsub.s f6, f12, f20, rtz # perform operation
fsub.s f6, f12, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f12, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f12, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f12, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f12, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f12, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x7ef8654f)
li x29, 0xbb1172bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f10, 0(x2) # load 0xc0000000 from memory into f10
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f20, 0(x2) # load 0x7ef8654f from memory into f20
fsub.s f29, f10, f20, dyn # perform operation
fsub.s f29, f10, f20, rdn # perform operation
fsub.s f29, f10, f20, rmm # perform operation
fsub.s f29, f10, f20, rne # perform operation
fsub.s f29, f10, f20, rtz # perform operation
fsub.s f29, f10, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f10, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f10, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f10, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f10, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f10, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc0000000 fs2 = 0x813d9ab0)
li x20, 0xc778af53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f29, 0(x2) # load 0xc0000000 from memory into f29
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f24, 0(x2) # load 0x813d9ab0 from memory into f24
fsub.s f20, f29, f24, dyn # perform operation
fsub.s f20, f29, f24, rdn # perform operation
fsub.s f20, f29, f24, rmm # perform operation
fsub.s f20, f29, f24, rne # perform operation
fsub.s f20, f29, f24, rtz # perform operation
fsub.s f20, f29, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f29, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f29, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f29, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f29, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f29, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x0)
li x21, 0xa8273d5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f25, 0(x2) # load 0x00800000 from memory into f25
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f24, 0(x2) # load 0x00000000 from memory into f24
fsub.s f21, f25, f24, dyn # perform operation
fsub.s f21, f25, f24, rdn # perform operation
fsub.s f21, f25, f24, rmm # perform operation
fsub.s f21, f25, f24, rne # perform operation
fsub.s f21, f25, f24, rtz # perform operation
fsub.s f21, f25, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f25, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f25, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f25, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f25, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f25, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80000000)
li x5, 0xcb96afd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f18, 0(x2) # load 0x00800000 from memory into f18
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f26, 0(x2) # load 0x80000000 from memory into f26
fsub.s f5, f18, f26, dyn # perform operation
fsub.s f5, f18, f26, rdn # perform operation
fsub.s f5, f18, f26, rmm # perform operation
fsub.s f5, f18, f26, rne # perform operation
fsub.s f5, f18, f26, rtz # perform operation
fsub.s f5, f18, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f18, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f18, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f18, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f18, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f18, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x3f800000)
li x23, 0x567c1de4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f16, 0(x2) # load 0x00800000 from memory into f16
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f15, 0(x2) # load 0x3f800000 from memory into f15
fsub.s f23, f16, f15, dyn # perform operation
fsub.s f23, f16, f15, rdn # perform operation
fsub.s f23, f16, f15, rmm # perform operation
fsub.s f23, f16, f15, rne # perform operation
fsub.s f23, f16, f15, rtz # perform operation
fsub.s f23, f16, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f16, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f16, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f16, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f16, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f16, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xbf800000)
li x19, 0xc8b75775 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f24, 0(x2) # load 0x00800000 from memory into f24
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f26, 0(x2) # load 0xbf800000 from memory into f26
fsub.s f19, f24, f26, dyn # perform operation
fsub.s f19, f24, f26, rdn # perform operation
fsub.s f19, f24, f26, rmm # perform operation
fsub.s f19, f24, f26, rne # perform operation
fsub.s f19, f24, f26, rtz # perform operation
fsub.s f19, f24, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f24, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f24, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f24, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f24, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f24, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x3fc00000)
li x21, 0xacd0d8de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f22, 0(x2) # load 0x00800000 from memory into f22
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f29, 0(x2) # load 0x3fc00000 from memory into f29
fsub.s f21, f22, f29, dyn # perform operation
fsub.s f21, f22, f29, rdn # perform operation
fsub.s f21, f22, f29, rmm # perform operation
fsub.s f21, f22, f29, rne # perform operation
fsub.s f21, f22, f29, rtz # perform operation
fsub.s f21, f22, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f22, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f22, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f22, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f22, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f22, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xbfc00000)
li x25, 0x7c86a7b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f24, 0(x2) # load 0x00800000 from memory into f24
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f20, 0(x2) # load 0xbfc00000 from memory into f20
fsub.s f25, f24, f20, dyn # perform operation
fsub.s f25, f24, f20, rdn # perform operation
fsub.s f25, f24, f20, rmm # perform operation
fsub.s f25, f24, f20, rne # perform operation
fsub.s f25, f24, f20, rtz # perform operation
fsub.s f25, f24, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f24, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f24, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f24, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f24, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f24, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x40000000)
li x15, 0xeb1d0179 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f26, 0(x2) # load 0x40000000 from memory into f26
fsub.s f15, f7, f26, dyn # perform operation
fsub.s f15, f7, f26, rdn # perform operation
fsub.s f15, f7, f26, rmm # perform operation
fsub.s f15, f7, f26, rne # perform operation
fsub.s f15, f7, f26, rtz # perform operation
fsub.s f15, f7, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f7, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f7, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f7, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f7, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f7, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xc0000000)
li x19, 0xaa7f3c87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f2, 0(x2) # load 0x00800000 from memory into f2
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f22, 0(x2) # load 0xc0000000 from memory into f22
fsub.s f19, f2, f22, dyn # perform operation
fsub.s f19, f2, f22, rdn # perform operation
fsub.s f19, f2, f22, rmm # perform operation
fsub.s f19, f2, f22, rne # perform operation
fsub.s f19, f2, f22, rtz # perform operation
fsub.s f19, f2, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f2, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f2, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f2, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f2, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f2, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x800000)
li x16, 0x1dfb1061 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f9, 0(x2) # load 0x00800000 from memory into f9
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f3, 0(x2) # load 0x00800000 from memory into f3
fsub.s f16, f9, f3, dyn # perform operation
fsub.s f16, f9, f3, rdn # perform operation
fsub.s f16, f9, f3, rmm # perform operation
fsub.s f16, f9, f3, rne # perform operation
fsub.s f16, f9, f3, rtz # perform operation
fsub.s f16, f9, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f9, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f9, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f9, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f9, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f9, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80800000)
li x30, 0x533c5edd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f16, 0(x2) # load 0x00800000 from memory into f16
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f13, 0(x2) # load 0x80800000 from memory into f13
fsub.s f30, f16, f13, dyn # perform operation
fsub.s f30, f16, f13, rdn # perform operation
fsub.s f30, f16, f13, rmm # perform operation
fsub.s f30, f16, f13, rne # perform operation
fsub.s f30, f16, f13, rtz # perform operation
fsub.s f30, f16, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f16, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f16, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f16, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f16, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f16, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f7fffff)
li x16, 0xe265ffbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f17, 0(x2) # load 0x00800000 from memory into f17
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f10, 0(x2) # load 0x7f7fffff from memory into f10
fsub.s f16, f17, f10, dyn # perform operation
fsub.s f16, f17, f10, rdn # perform operation
fsub.s f16, f17, f10, rmm # perform operation
fsub.s f16, f17, f10, rne # perform operation
fsub.s f16, f17, f10, rtz # perform operation
fsub.s f16, f17, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f17, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f17, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f17, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f17, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f17, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xff7fffff)
li x30, 0x750f0f0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f2, 0(x2) # load 0x00800000 from memory into f2
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f6, 0(x2) # load 0xff7fffff from memory into f6
fsub.s f30, f2, f6, dyn # perform operation
fsub.s f30, f2, f6, rdn # perform operation
fsub.s f30, f2, f6, rmm # perform operation
fsub.s f30, f2, f6, rne # perform operation
fsub.s f30, f2, f6, rtz # perform operation
fsub.s f30, f2, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f2, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f2, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f2, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f2, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f2, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fffff)
li x14, 0xcacaaa8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f13, 0(x2) # load 0x00800000 from memory into f13
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f11, 0(x2) # load 0x007fffff from memory into f11
fsub.s f14, f13, f11, dyn # perform operation
fsub.s f14, f13, f11, rdn # perform operation
fsub.s f14, f13, f11, rmm # perform operation
fsub.s f14, f13, f11, rne # perform operation
fsub.s f14, f13, f11, rtz # perform operation
fsub.s f14, f13, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f13, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f13, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f13, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f13, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f13, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x807fffff)
li x29, 0x01a14589 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f3, 0(x2) # load 0x00800000 from memory into f3
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f11, 0(x2) # load 0x807fffff from memory into f11
fsub.s f29, f3, f11, dyn # perform operation
fsub.s f29, f3, f11, rdn # perform operation
fsub.s f29, f3, f11, rmm # perform operation
fsub.s f29, f3, f11, rne # perform operation
fsub.s f29, f3, f11, rtz # perform operation
fsub.s f29, f3, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f3, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f3, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f3, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f3, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f3, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x400000)
li x5, 0xd4fb7b24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f29, 0(x2) # load 0x00800000 from memory into f29
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
fsub.s f5, f29, f26, dyn # perform operation
fsub.s f5, f29, f26, rdn # perform operation
fsub.s f5, f29, f26, rmm # perform operation
fsub.s f5, f29, f26, rne # perform operation
fsub.s f5, f29, f26, rtz # perform operation
fsub.s f5, f29, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f29, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f29, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f29, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f29, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f29, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80400000)
li x10, 0x51b18877 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f16, 0(x2) # load 0x00800000 from memory into f16
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f22, 0(x2) # load 0x80400000 from memory into f22
fsub.s f10, f16, f22, dyn # perform operation
fsub.s f10, f16, f22, rdn # perform operation
fsub.s f10, f16, f22, rmm # perform operation
fsub.s f10, f16, f22, rne # perform operation
fsub.s f10, f16, f22, rtz # perform operation
fsub.s f10, f16, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f16, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f16, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f16, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f16, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f16, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x1)
li x15, 0xf62d13b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f4, 0(x2) # load 0x00800000 from memory into f4
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f31, 0(x2) # load 0x00000001 from memory into f31
fsub.s f15, f4, f31, dyn # perform operation
fsub.s f15, f4, f31, rdn # perform operation
fsub.s f15, f4, f31, rmm # perform operation
fsub.s f15, f4, f31, rne # perform operation
fsub.s f15, f4, f31, rtz # perform operation
fsub.s f15, f4, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f4, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f4, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f4, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f4, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f4, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x80000001)
li x1, 0x7f3e7269 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f30, 0(x2) # load 0x00800000 from memory into f30
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f6, 0(x2) # load 0x80000001 from memory into f6
fsub.s f1, f30, f6, dyn # perform operation
fsub.s f1, f30, f6, rdn # perform operation
fsub.s f1, f30, f6, rmm # perform operation
fsub.s f1, f30, f6, rne # perform operation
fsub.s f1, f30, f6, rtz # perform operation
fsub.s f1, f30, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f30, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f30, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f30, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f30, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f30, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f800000)
li x19, 0x7265da7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f9, 0(x2) # load 0x00800000 from memory into f9
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f5, 0(x2) # load 0x7f800000 from memory into f5
fsub.s f19, f9, f5, dyn # perform operation
fsub.s f19, f9, f5, rdn # perform operation
fsub.s f19, f9, f5, rmm # perform operation
fsub.s f19, f9, f5, rne # perform operation
fsub.s f19, f9, f5, rtz # perform operation
fsub.s f19, f9, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f9, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f9, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f9, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f9, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f9, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0xff800000)
li x7, 0xfd7dd650 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f20, 0(x2) # load 0xff800000 from memory into f20
fsub.s f7, f14, f20, dyn # perform operation
fsub.s f7, f14, f20, rdn # perform operation
fsub.s f7, f14, f20, rmm # perform operation
fsub.s f7, f14, f20, rne # perform operation
fsub.s f7, f14, f20, rtz # perform operation
fsub.s f7, f14, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f14, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f14, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f14, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f14, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f14, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fc00000)
li x7, 0xba53d8d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f17, 0(x2) # load 0x00800000 from memory into f17
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f16, 0(x2) # load 0x7fc00000 from memory into f16
fsub.s f7, f17, f16, dyn # perform operation
fsub.s f7, f17, f16, rdn # perform operation
fsub.s f7, f17, f16, rmm # perform operation
fsub.s f7, f17, f16, rne # perform operation
fsub.s f7, f17, f16, rtz # perform operation
fsub.s f7, f17, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f17, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f17, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f17, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f17, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f17, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fffffff)
li x31, 0xa0821fb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f27, 0(x2) # load 0x7fffffff from memory into f27
fsub.s f31, f23, f27, dyn # perform operation
fsub.s f31, f23, f27, rdn # perform operation
fsub.s f31, f23, f27, rmm # perform operation
fsub.s f31, f23, f27, rne # perform operation
fsub.s f31, f23, f27, rtz # perform operation
fsub.s f31, f23, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f23, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f23, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f23, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f23, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f23, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7f800001)
li x11, 0x14cf6a44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f4, 0(x2) # load 0x00800000 from memory into f4
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f12, 0(x2) # load 0x7f800001 from memory into f12
fsub.s f11, f4, f12, dyn # perform operation
fsub.s f11, f4, f12, rdn # perform operation
fsub.s f11, f4, f12, rmm # perform operation
fsub.s f11, f4, f12, rne # perform operation
fsub.s f11, f4, f12, rtz # perform operation
fsub.s f11, f4, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f4, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f4, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f4, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f4, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f4, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7fbfffff)
li x6, 0x14116d99 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f13, 0(x2) # load 0x00800000 from memory into f13
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f23, 0(x2) # load 0x7fbfffff from memory into f23
fsub.s f6, f13, f23, dyn # perform operation
fsub.s f6, f13, f23, rdn # perform operation
fsub.s f6, f13, f23, rmm # perform operation
fsub.s f6, f13, f23, rne # perform operation
fsub.s f6, f13, f23, rtz # perform operation
fsub.s f6, f13, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f13, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f13, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f13, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f13, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f13, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x7ef8654f)
li x22, 0x32acebff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
fsub.s f22, f11, f13, dyn # perform operation
fsub.s f22, f11, f13, rdn # perform operation
fsub.s f22, f11, f13, rmm # perform operation
fsub.s f22, f11, f13, rne # perform operation
fsub.s f22, f11, f13, rtz # perform operation
fsub.s f22, f11, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f11, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f11, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f11, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f11, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f11, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800000 fs2 = 0x813d9ab0)
li x29, 0x6327c815 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f23, 0(x2) # load 0x00800000 from memory into f23
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f21, 0(x2) # load 0x813d9ab0 from memory into f21
fsub.s f29, f23, f21, dyn # perform operation
fsub.s f29, f23, f21, rdn # perform operation
fsub.s f29, f23, f21, rmm # perform operation
fsub.s f29, f23, f21, rne # perform operation
fsub.s f29, f23, f21, rtz # perform operation
fsub.s f29, f23, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f23, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f23, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f23, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f23, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f23, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x0)
li x21, 0x18a489eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f12, 0(x2) # load 0x80800000 from memory into f12
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f8, 0(x2) # load 0x00000000 from memory into f8
fsub.s f21, f12, f8, dyn # perform operation
fsub.s f21, f12, f8, rdn # perform operation
fsub.s f21, f12, f8, rmm # perform operation
fsub.s f21, f12, f8, rne # perform operation
fsub.s f21, f12, f8, rtz # perform operation
fsub.s f21, f12, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f12, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f12, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f12, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f12, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f12, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80000000)
li x22, 0xd686f0bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f14, 0(x2) # load 0x80800000 from memory into f14
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f6, 0(x2) # load 0x80000000 from memory into f6
fsub.s f22, f14, f6, dyn # perform operation
fsub.s f22, f14, f6, rdn # perform operation
fsub.s f22, f14, f6, rmm # perform operation
fsub.s f22, f14, f6, rne # perform operation
fsub.s f22, f14, f6, rtz # perform operation
fsub.s f22, f14, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f14, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f14, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f14, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f14, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f14, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x3f800000)
li x8, 0x8d586d3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f13, 0(x2) # load 0x80800000 from memory into f13
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f2, 0(x2) # load 0x3f800000 from memory into f2
fsub.s f8, f13, f2, dyn # perform operation
fsub.s f8, f13, f2, rdn # perform operation
fsub.s f8, f13, f2, rmm # perform operation
fsub.s f8, f13, f2, rne # perform operation
fsub.s f8, f13, f2, rtz # perform operation
fsub.s f8, f13, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f13, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f13, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f13, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f13, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f13, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xbf800000)
li x5, 0x277a31f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f8, 0(x2) # load 0x80800000 from memory into f8
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f22, 0(x2) # load 0xbf800000 from memory into f22
fsub.s f5, f8, f22, dyn # perform operation
fsub.s f5, f8, f22, rdn # perform operation
fsub.s f5, f8, f22, rmm # perform operation
fsub.s f5, f8, f22, rne # perform operation
fsub.s f5, f8, f22, rtz # perform operation
fsub.s f5, f8, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f8, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f8, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f8, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f8, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f8, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x3fc00000)
li x15, 0x13b218d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f24, 0(x2) # load 0x80800000 from memory into f24
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f18, 0(x2) # load 0x3fc00000 from memory into f18
fsub.s f15, f24, f18, dyn # perform operation
fsub.s f15, f24, f18, rdn # perform operation
fsub.s f15, f24, f18, rmm # perform operation
fsub.s f15, f24, f18, rne # perform operation
fsub.s f15, f24, f18, rtz # perform operation
fsub.s f15, f24, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f24, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f24, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f24, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f24, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f24, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xbfc00000)
li x21, 0xe4c3529c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f22, 0(x2) # load 0x80800000 from memory into f22
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f3, 0(x2) # load 0xbfc00000 from memory into f3
fsub.s f21, f22, f3, dyn # perform operation
fsub.s f21, f22, f3, rdn # perform operation
fsub.s f21, f22, f3, rmm # perform operation
fsub.s f21, f22, f3, rne # perform operation
fsub.s f21, f22, f3, rtz # perform operation
fsub.s f21, f22, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f22, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f22, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f22, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f22, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f22, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x40000000)
li x15, 0x0e7a5e11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f29, 0(x2) # load 0x40000000 from memory into f29
fsub.s f15, f23, f29, dyn # perform operation
fsub.s f15, f23, f29, rdn # perform operation
fsub.s f15, f23, f29, rmm # perform operation
fsub.s f15, f23, f29, rne # perform operation
fsub.s f15, f23, f29, rtz # perform operation
fsub.s f15, f23, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f23, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f23, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f23, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f23, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f23, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xc0000000)
li x21, 0xcea3a9d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f16, 0(x2) # load 0x80800000 from memory into f16
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f27, 0(x2) # load 0xc0000000 from memory into f27
fsub.s f21, f16, f27, dyn # perform operation
fsub.s f21, f16, f27, rdn # perform operation
fsub.s f21, f16, f27, rmm # perform operation
fsub.s f21, f16, f27, rne # perform operation
fsub.s f21, f16, f27, rtz # perform operation
fsub.s f21, f16, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f16, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f16, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f16, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f16, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f16, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x800000)
li x1, 0xd60eab59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f2, 0(x2) # load 0x80800000 from memory into f2
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
fsub.s f1, f2, f27, dyn # perform operation
fsub.s f1, f2, f27, rdn # perform operation
fsub.s f1, f2, f27, rmm # perform operation
fsub.s f1, f2, f27, rne # perform operation
fsub.s f1, f2, f27, rtz # perform operation
fsub.s f1, f2, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f2, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f2, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f2, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f2, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f2, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80800000)
li x6, 0x65b6335c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f3, 0(x2) # load 0x80800000 from memory into f3
fsub.s f6, f18, f3, dyn # perform operation
fsub.s f6, f18, f3, rdn # perform operation
fsub.s f6, f18, f3, rmm # perform operation
fsub.s f6, f18, f3, rne # perform operation
fsub.s f6, f18, f3, rtz # perform operation
fsub.s f6, f18, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f18, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f18, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f18, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f18, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f18, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f7fffff)
li x28, 0xe4891bd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f14, 0(x2) # load 0x80800000 from memory into f14
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f22, 0(x2) # load 0x7f7fffff from memory into f22
fsub.s f28, f14, f22, dyn # perform operation
fsub.s f28, f14, f22, rdn # perform operation
fsub.s f28, f14, f22, rmm # perform operation
fsub.s f28, f14, f22, rne # perform operation
fsub.s f28, f14, f22, rtz # perform operation
fsub.s f28, f14, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f14, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f14, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f14, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f14, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f14, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xff7fffff)
li x27, 0xd2cf8a61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f14, 0(x2) # load 0x80800000 from memory into f14
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f28, 0(x2) # load 0xff7fffff from memory into f28
fsub.s f27, f14, f28, dyn # perform operation
fsub.s f27, f14, f28, rdn # perform operation
fsub.s f27, f14, f28, rmm # perform operation
fsub.s f27, f14, f28, rne # perform operation
fsub.s f27, f14, f28, rtz # perform operation
fsub.s f27, f14, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f14, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f14, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f14, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f14, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f14, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fffff)
li x17, 0x378564c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f3, 0(x2) # load 0x80800000 from memory into f3
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f23, 0(x2) # load 0x007fffff from memory into f23
fsub.s f17, f3, f23, dyn # perform operation
fsub.s f17, f3, f23, rdn # perform operation
fsub.s f17, f3, f23, rmm # perform operation
fsub.s f17, f3, f23, rne # perform operation
fsub.s f17, f3, f23, rtz # perform operation
fsub.s f17, f3, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f3, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f3, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f3, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f3, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f3, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x807fffff)
li x27, 0xb00b8c5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f17, 0(x2) # load 0x80800000 from memory into f17
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f19, 0(x2) # load 0x807fffff from memory into f19
fsub.s f27, f17, f19, dyn # perform operation
fsub.s f27, f17, f19, rdn # perform operation
fsub.s f27, f17, f19, rmm # perform operation
fsub.s f27, f17, f19, rne # perform operation
fsub.s f27, f17, f19, rtz # perform operation
fsub.s f27, f17, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f17, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f17, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f17, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f17, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f17, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x400000)
li x29, 0x2ddde7f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f5, 0(x2) # load 0x80800000 from memory into f5
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f14, 0(x2) # load 0x00400000 from memory into f14
fsub.s f29, f5, f14, dyn # perform operation
fsub.s f29, f5, f14, rdn # perform operation
fsub.s f29, f5, f14, rmm # perform operation
fsub.s f29, f5, f14, rne # perform operation
fsub.s f29, f5, f14, rtz # perform operation
fsub.s f29, f5, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f5, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f5, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f5, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f5, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f5, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80400000)
li x20, 0xe2d3cb35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f31, 0(x2) # load 0x80800000 from memory into f31
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f15, 0(x2) # load 0x80400000 from memory into f15
fsub.s f20, f31, f15, dyn # perform operation
fsub.s f20, f31, f15, rdn # perform operation
fsub.s f20, f31, f15, rmm # perform operation
fsub.s f20, f31, f15, rne # perform operation
fsub.s f20, f31, f15, rtz # perform operation
fsub.s f20, f31, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f31, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f31, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f31, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f31, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f31, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x1)
li x30, 0xd26265e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f27, 0(x2) # load 0x80800000 from memory into f27
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f11, 0(x2) # load 0x00000001 from memory into f11
fsub.s f30, f27, f11, dyn # perform operation
fsub.s f30, f27, f11, rdn # perform operation
fsub.s f30, f27, f11, rmm # perform operation
fsub.s f30, f27, f11, rne # perform operation
fsub.s f30, f27, f11, rtz # perform operation
fsub.s f30, f27, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f27, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f27, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f27, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f27, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f27, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x80000001)
li x10, 0x4ced1443 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f26, 0(x2) # load 0x80800000 from memory into f26
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f1, 0(x2) # load 0x80000001 from memory into f1
fsub.s f10, f26, f1, dyn # perform operation
fsub.s f10, f26, f1, rdn # perform operation
fsub.s f10, f26, f1, rmm # perform operation
fsub.s f10, f26, f1, rne # perform operation
fsub.s f10, f26, f1, rtz # perform operation
fsub.s f10, f26, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f26, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f26, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f26, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f26, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f26, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f800000)
li x2, 0xd7423d2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f6, 0(x2) # load 0x80800000 from memory into f6
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f10, 0(x2) # load 0x7f800000 from memory into f10
fsub.s f2, f6, f10, dyn # perform operation
fsub.s f2, f6, f10, rdn # perform operation
fsub.s f2, f6, f10, rmm # perform operation
fsub.s f2, f6, f10, rne # perform operation
fsub.s f2, f6, f10, rtz # perform operation
fsub.s f2, f6, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f6, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f6, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f6, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f6, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f6, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0xff800000)
li x24, 0x92fca7ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f15, 0(x2) # load 0x80800000 from memory into f15
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f26, 0(x2) # load 0xff800000 from memory into f26
fsub.s f24, f15, f26, dyn # perform operation
fsub.s f24, f15, f26, rdn # perform operation
fsub.s f24, f15, f26, rmm # perform operation
fsub.s f24, f15, f26, rne # perform operation
fsub.s f24, f15, f26, rtz # perform operation
fsub.s f24, f15, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f15, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f15, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f15, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f15, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f15, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fc00000)
li x13, 0xdb5a0cfd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f30, 0(x2) # load 0x80800000 from memory into f30
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
fsub.s f13, f30, f10, dyn # perform operation
fsub.s f13, f30, f10, rdn # perform operation
fsub.s f13, f30, f10, rmm # perform operation
fsub.s f13, f30, f10, rne # perform operation
fsub.s f13, f30, f10, rtz # perform operation
fsub.s f13, f30, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f30, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f30, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f30, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f30, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f30, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fffffff)
li x2, 0x0c958d7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f29, 0(x2) # load 0x80800000 from memory into f29
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
fsub.s f2, f29, f5, dyn # perform operation
fsub.s f2, f29, f5, rdn # perform operation
fsub.s f2, f29, f5, rmm # perform operation
fsub.s f2, f29, f5, rne # perform operation
fsub.s f2, f29, f5, rtz # perform operation
fsub.s f2, f29, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f29, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f29, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f29, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f29, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f29, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7f800001)
li x10, 0xe0b1888f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f24, 0(x2) # load 0x80800000 from memory into f24
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f3, 0(x2) # load 0x7f800001 from memory into f3
fsub.s f10, f24, f3, dyn # perform operation
fsub.s f10, f24, f3, rdn # perform operation
fsub.s f10, f24, f3, rmm # perform operation
fsub.s f10, f24, f3, rne # perform operation
fsub.s f10, f24, f3, rtz # perform operation
fsub.s f10, f24, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f24, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f24, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f24, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f24, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f24, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7fbfffff)
li x17, 0x4f2af091 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f9, 0(x2) # load 0x80800000 from memory into f9
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f12, 0(x2) # load 0x7fbfffff from memory into f12
fsub.s f17, f9, f12, dyn # perform operation
fsub.s f17, f9, f12, rdn # perform operation
fsub.s f17, f9, f12, rmm # perform operation
fsub.s f17, f9, f12, rne # perform operation
fsub.s f17, f9, f12, rtz # perform operation
fsub.s f17, f9, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f9, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f9, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f9, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f9, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f9, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x7ef8654f)
li x12, 0xf60c4de8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f26, 0(x2) # load 0x80800000 from memory into f26
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f3, 0(x2) # load 0x7ef8654f from memory into f3
fsub.s f12, f26, f3, dyn # perform operation
fsub.s f12, f26, f3, rdn # perform operation
fsub.s f12, f26, f3, rmm # perform operation
fsub.s f12, f26, f3, rne # perform operation
fsub.s f12, f26, f3, rtz # perform operation
fsub.s f12, f26, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f26, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f26, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f26, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f26, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f26, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80800000 fs2 = 0x813d9ab0)
li x11, 0xcdfcdf2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f30, 0(x2) # load 0x813d9ab0 from memory into f30
fsub.s f11, f18, f30, dyn # perform operation
fsub.s f11, f18, f30, rdn # perform operation
fsub.s f11, f18, f30, rmm # perform operation
fsub.s f11, f18, f30, rne # perform operation
fsub.s f11, f18, f30, rtz # perform operation
fsub.s f11, f18, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f18, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f18, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f18, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f18, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f18, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x0)
li x9, 0xf50a0d6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f12, 0(x2) # load 0x7f7fffff from memory into f12
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f19, 0(x2) # load 0x00000000 from memory into f19
fsub.s f9, f12, f19, dyn # perform operation
fsub.s f9, f12, f19, rdn # perform operation
fsub.s f9, f12, f19, rmm # perform operation
fsub.s f9, f12, f19, rne # perform operation
fsub.s f9, f12, f19, rtz # perform operation
fsub.s f9, f12, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f12, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f12, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f12, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f12, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f12, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80000000)
li x20, 0x5e60affc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f27, 0(x2) # load 0x7f7fffff from memory into f27
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f2, 0(x2) # load 0x80000000 from memory into f2
fsub.s f20, f27, f2, dyn # perform operation
fsub.s f20, f27, f2, rdn # perform operation
fsub.s f20, f27, f2, rmm # perform operation
fsub.s f20, f27, f2, rne # perform operation
fsub.s f20, f27, f2, rtz # perform operation
fsub.s f20, f27, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f27, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f27, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f27, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f27, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f27, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x3f800000)
li x12, 0x21c48600 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f28, 0(x2) # load 0x7f7fffff from memory into f28
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f14, 0(x2) # load 0x3f800000 from memory into f14
fsub.s f12, f28, f14, dyn # perform operation
fsub.s f12, f28, f14, rdn # perform operation
fsub.s f12, f28, f14, rmm # perform operation
fsub.s f12, f28, f14, rne # perform operation
fsub.s f12, f28, f14, rtz # perform operation
fsub.s f12, f28, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f28, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f28, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f28, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f28, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f28, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xbf800000)
li x5, 0x0d435242 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f1, 0(x2) # load 0x7f7fffff from memory into f1
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f28, 0(x2) # load 0xbf800000 from memory into f28
fsub.s f5, f1, f28, dyn # perform operation
fsub.s f5, f1, f28, rdn # perform operation
fsub.s f5, f1, f28, rmm # perform operation
fsub.s f5, f1, f28, rne # perform operation
fsub.s f5, f1, f28, rtz # perform operation
fsub.s f5, f1, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f1, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f1, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f1, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f1, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f1, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x3fc00000)
li x31, 0xa5b83cad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f7, 0(x2) # load 0x7f7fffff from memory into f7
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f18, 0(x2) # load 0x3fc00000 from memory into f18
fsub.s f31, f7, f18, dyn # perform operation
fsub.s f31, f7, f18, rdn # perform operation
fsub.s f31, f7, f18, rmm # perform operation
fsub.s f31, f7, f18, rne # perform operation
fsub.s f31, f7, f18, rtz # perform operation
fsub.s f31, f7, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f7, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f7, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f7, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f7, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f7, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xbfc00000)
li x10, 0xeb3d909a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f12, 0(x2) # load 0x7f7fffff from memory into f12
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f19, 0(x2) # load 0xbfc00000 from memory into f19
fsub.s f10, f12, f19, dyn # perform operation
fsub.s f10, f12, f19, rdn # perform operation
fsub.s f10, f12, f19, rmm # perform operation
fsub.s f10, f12, f19, rne # perform operation
fsub.s f10, f12, f19, rtz # perform operation
fsub.s f10, f12, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f12, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f12, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f12, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f12, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f12, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x40000000)
li x13, 0x89acee2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f25, 0(x2) # load 0x7f7fffff from memory into f25
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f9, 0(x2) # load 0x40000000 from memory into f9
fsub.s f13, f25, f9, dyn # perform operation
fsub.s f13, f25, f9, rdn # perform operation
fsub.s f13, f25, f9, rmm # perform operation
fsub.s f13, f25, f9, rne # perform operation
fsub.s f13, f25, f9, rtz # perform operation
fsub.s f13, f25, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f25, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f25, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f25, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f25, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f25, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xc0000000)
li x17, 0x6805cb1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f11, 0(x2) # load 0x7f7fffff from memory into f11
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f12, 0(x2) # load 0xc0000000 from memory into f12
fsub.s f17, f11, f12, dyn # perform operation
fsub.s f17, f11, f12, rdn # perform operation
fsub.s f17, f11, f12, rmm # perform operation
fsub.s f17, f11, f12, rne # perform operation
fsub.s f17, f11, f12, rtz # perform operation
fsub.s f17, f11, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f11, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f11, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f11, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f11, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f11, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x800000)
li x21, 0xa9dd7f0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f11, 0(x2) # load 0x7f7fffff from memory into f11
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f30, 0(x2) # load 0x00800000 from memory into f30
fsub.s f21, f11, f30, dyn # perform operation
fsub.s f21, f11, f30, rdn # perform operation
fsub.s f21, f11, f30, rmm # perform operation
fsub.s f21, f11, f30, rne # perform operation
fsub.s f21, f11, f30, rtz # perform operation
fsub.s f21, f11, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f11, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f11, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f11, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f11, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f11, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80800000)
li x22, 0x3d558e9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
fsub.s f22, f29, f20, dyn # perform operation
fsub.s f22, f29, f20, rdn # perform operation
fsub.s f22, f29, f20, rmm # perform operation
fsub.s f22, f29, f20, rne # perform operation
fsub.s f22, f29, f20, rtz # perform operation
fsub.s f22, f29, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f29, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f29, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f29, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f29, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f29, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f7fffff)
li x29, 0xce7d3ef9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f11, 0(x2) # load 0x7f7fffff from memory into f11
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f7, 0(x2) # load 0x7f7fffff from memory into f7
fsub.s f29, f11, f7, dyn # perform operation
fsub.s f29, f11, f7, rdn # perform operation
fsub.s f29, f11, f7, rmm # perform operation
fsub.s f29, f11, f7, rne # perform operation
fsub.s f29, f11, f7, rtz # perform operation
fsub.s f29, f11, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f11, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f11, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f11, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f11, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f11, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xff7fffff)
li x23, 0x20c1c3b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f30, 0(x2) # load 0x7f7fffff from memory into f30
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f2, 0(x2) # load 0xff7fffff from memory into f2
fsub.s f23, f30, f2, dyn # perform operation
fsub.s f23, f30, f2, rdn # perform operation
fsub.s f23, f30, f2, rmm # perform operation
fsub.s f23, f30, f2, rne # perform operation
fsub.s f23, f30, f2, rtz # perform operation
fsub.s f23, f30, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f30, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f30, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f30, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f30, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f30, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fffff)
li x20, 0x8f976ec9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f21, 0(x2) # load 0x007fffff from memory into f21
fsub.s f20, f16, f21, dyn # perform operation
fsub.s f20, f16, f21, rdn # perform operation
fsub.s f20, f16, f21, rmm # perform operation
fsub.s f20, f16, f21, rne # perform operation
fsub.s f20, f16, f21, rtz # perform operation
fsub.s f20, f16, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f16, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f16, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f16, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f16, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f16, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x807fffff)
li x6, 0x9df20209 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f31, 0(x2) # load 0x807fffff from memory into f31
fsub.s f6, f16, f31, dyn # perform operation
fsub.s f6, f16, f31, rdn # perform operation
fsub.s f6, f16, f31, rmm # perform operation
fsub.s f6, f16, f31, rne # perform operation
fsub.s f6, f16, f31, rtz # perform operation
fsub.s f6, f16, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f16, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f16, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f16, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f16, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f16, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x400000)
li x17, 0x27b62b39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f5, 0(x2) # load 0x7f7fffff from memory into f5
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f8, 0(x2) # load 0x00400000 from memory into f8
fsub.s f17, f5, f8, dyn # perform operation
fsub.s f17, f5, f8, rdn # perform operation
fsub.s f17, f5, f8, rmm # perform operation
fsub.s f17, f5, f8, rne # perform operation
fsub.s f17, f5, f8, rtz # perform operation
fsub.s f17, f5, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f5, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f5, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f5, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f5, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f5, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80400000)
li x16, 0x0077081b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f27, 0(x2) # load 0x7f7fffff from memory into f27
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f25, 0(x2) # load 0x80400000 from memory into f25
fsub.s f16, f27, f25, dyn # perform operation
fsub.s f16, f27, f25, rdn # perform operation
fsub.s f16, f27, f25, rmm # perform operation
fsub.s f16, f27, f25, rne # perform operation
fsub.s f16, f27, f25, rtz # perform operation
fsub.s f16, f27, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f27, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f27, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f27, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f27, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f27, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x1)
li x10, 0xe538981f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f8, 0(x2) # load 0x00000001 from memory into f8
fsub.s f10, f16, f8, dyn # perform operation
fsub.s f10, f16, f8, rdn # perform operation
fsub.s f10, f16, f8, rmm # perform operation
fsub.s f10, f16, f8, rne # perform operation
fsub.s f10, f16, f8, rtz # perform operation
fsub.s f10, f16, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f16, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f16, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f16, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f16, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f16, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x80000001)
li x29, 0x2ddf1fbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f31, 0(x2) # load 0x7f7fffff from memory into f31
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f25, 0(x2) # load 0x80000001 from memory into f25
fsub.s f29, f31, f25, dyn # perform operation
fsub.s f29, f31, f25, rdn # perform operation
fsub.s f29, f31, f25, rmm # perform operation
fsub.s f29, f31, f25, rne # perform operation
fsub.s f29, f31, f25, rtz # perform operation
fsub.s f29, f31, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f31, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f31, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f31, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f31, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f31, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f800000)
li x31, 0x6a67202c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f19, 0(x2) # load 0x7f7fffff from memory into f19
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f18, 0(x2) # load 0x7f800000 from memory into f18
fsub.s f31, f19, f18, dyn # perform operation
fsub.s f31, f19, f18, rdn # perform operation
fsub.s f31, f19, f18, rmm # perform operation
fsub.s f31, f19, f18, rne # perform operation
fsub.s f31, f19, f18, rtz # perform operation
fsub.s f31, f19, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f19, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f19, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f19, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f19, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f19, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0xff800000)
li x3, 0x0844afc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f28, 0(x2) # load 0xff800000 from memory into f28
fsub.s f3, f15, f28, dyn # perform operation
fsub.s f3, f15, f28, rdn # perform operation
fsub.s f3, f15, f28, rmm # perform operation
fsub.s f3, f15, f28, rne # perform operation
fsub.s f3, f15, f28, rtz # perform operation
fsub.s f3, f15, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f15, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f15, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f15, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f15, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f15, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fc00000)
li x19, 0x8e4f8ae6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f31, 0(x2) # load 0x7f7fffff from memory into f31
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f21, 0(x2) # load 0x7fc00000 from memory into f21
fsub.s f19, f31, f21, dyn # perform operation
fsub.s f19, f31, f21, rdn # perform operation
fsub.s f19, f31, f21, rmm # perform operation
fsub.s f19, f31, f21, rne # perform operation
fsub.s f19, f31, f21, rtz # perform operation
fsub.s f19, f31, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f31, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f31, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f31, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f31, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f31, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fffffff)
li x31, 0x19ee507b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f15, 0(x2) # load 0x7f7fffff from memory into f15
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f24, 0(x2) # load 0x7fffffff from memory into f24
fsub.s f31, f15, f24, dyn # perform operation
fsub.s f31, f15, f24, rdn # perform operation
fsub.s f31, f15, f24, rmm # perform operation
fsub.s f31, f15, f24, rne # perform operation
fsub.s f31, f15, f24, rtz # perform operation
fsub.s f31, f15, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f15, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f15, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f15, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f15, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f15, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7f800001)
li x17, 0x5f6fefd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f20, 0(x2) # load 0x7f7fffff from memory into f20
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f18, 0(x2) # load 0x7f800001 from memory into f18
fsub.s f17, f20, f18, dyn # perform operation
fsub.s f17, f20, f18, rdn # perform operation
fsub.s f17, f20, f18, rmm # perform operation
fsub.s f17, f20, f18, rne # perform operation
fsub.s f17, f20, f18, rtz # perform operation
fsub.s f17, f20, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f20, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f20, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f20, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f20, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f20, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7fbfffff)
li x27, 0x22ed13a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f11, 0(x2) # load 0x7f7fffff from memory into f11
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f7, 0(x2) # load 0x7fbfffff from memory into f7
fsub.s f27, f11, f7, dyn # perform operation
fsub.s f27, f11, f7, rdn # perform operation
fsub.s f27, f11, f7, rmm # perform operation
fsub.s f27, f11, f7, rne # perform operation
fsub.s f27, f11, f7, rtz # perform operation
fsub.s f27, f11, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f11, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f11, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f11, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f11, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f11, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x7ef8654f)
li x24, 0xbf911379 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f1, 0(x2) # load 0x7f7fffff from memory into f1
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f10, 0(x2) # load 0x7ef8654f from memory into f10
fsub.s f24, f1, f10, dyn # perform operation
fsub.s f24, f1, f10, rdn # perform operation
fsub.s f24, f1, f10, rmm # perform operation
fsub.s f24, f1, f10, rne # perform operation
fsub.s f24, f1, f10, rtz # perform operation
fsub.s f24, f1, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f1, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f1, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f1, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f1, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f1, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f7fffff fs2 = 0x813d9ab0)
li x5, 0xe401fe7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f7, 0(x2) # load 0x7f7fffff from memory into f7
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f4, 0(x2) # load 0x813d9ab0 from memory into f4
fsub.s f5, f7, f4, dyn # perform operation
fsub.s f5, f7, f4, rdn # perform operation
fsub.s f5, f7, f4, rmm # perform operation
fsub.s f5, f7, f4, rne # perform operation
fsub.s f5, f7, f4, rtz # perform operation
fsub.s f5, f7, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f7, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f7, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f7, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f7, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f7, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x0)
li x17, 0xe0fe1e4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f18, 0(x2) # load 0xff7fffff from memory into f18
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f2, 0(x2) # load 0x00000000 from memory into f2
fsub.s f17, f18, f2, dyn # perform operation
fsub.s f17, f18, f2, rdn # perform operation
fsub.s f17, f18, f2, rmm # perform operation
fsub.s f17, f18, f2, rne # perform operation
fsub.s f17, f18, f2, rtz # perform operation
fsub.s f17, f18, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f18, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f18, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f18, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f18, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f18, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80000000)
li x14, 0xe98c25d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f19, 0(x2) # load 0x80000000 from memory into f19
fsub.s f14, f12, f19, dyn # perform operation
fsub.s f14, f12, f19, rdn # perform operation
fsub.s f14, f12, f19, rmm # perform operation
fsub.s f14, f12, f19, rne # perform operation
fsub.s f14, f12, f19, rtz # perform operation
fsub.s f14, f12, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f12, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f12, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f12, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f12, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f12, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x3f800000)
li x27, 0x6b237226 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f25, 0(x2) # load 0xff7fffff from memory into f25
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f8, 0(x2) # load 0x3f800000 from memory into f8
fsub.s f27, f25, f8, dyn # perform operation
fsub.s f27, f25, f8, rdn # perform operation
fsub.s f27, f25, f8, rmm # perform operation
fsub.s f27, f25, f8, rne # perform operation
fsub.s f27, f25, f8, rtz # perform operation
fsub.s f27, f25, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f25, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f25, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f25, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f25, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f25, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xbf800000)
li x7, 0x54dce3e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f25, 0(x2) # load 0xff7fffff from memory into f25
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f5, 0(x2) # load 0xbf800000 from memory into f5
fsub.s f7, f25, f5, dyn # perform operation
fsub.s f7, f25, f5, rdn # perform operation
fsub.s f7, f25, f5, rmm # perform operation
fsub.s f7, f25, f5, rne # perform operation
fsub.s f7, f25, f5, rtz # perform operation
fsub.s f7, f25, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f25, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f25, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f25, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f25, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f25, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x3fc00000)
li x18, 0xa6102664 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f10, 0(x2) # load 0xff7fffff from memory into f10
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f6, 0(x2) # load 0x3fc00000 from memory into f6
fsub.s f18, f10, f6, dyn # perform operation
fsub.s f18, f10, f6, rdn # perform operation
fsub.s f18, f10, f6, rmm # perform operation
fsub.s f18, f10, f6, rne # perform operation
fsub.s f18, f10, f6, rtz # perform operation
fsub.s f18, f10, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f10, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f10, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f10, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f10, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f10, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xbfc00000)
li x2, 0xd84e0001 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f27, 0(x2) # load 0xff7fffff from memory into f27
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f18, 0(x2) # load 0xbfc00000 from memory into f18
fsub.s f2, f27, f18, dyn # perform operation
fsub.s f2, f27, f18, rdn # perform operation
fsub.s f2, f27, f18, rmm # perform operation
fsub.s f2, f27, f18, rne # perform operation
fsub.s f2, f27, f18, rtz # perform operation
fsub.s f2, f27, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f27, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f27, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f27, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f27, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f27, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x40000000)
li x2, 0xd14b27ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f7, 0(x2) # load 0xff7fffff from memory into f7
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f18, 0(x2) # load 0x40000000 from memory into f18
fsub.s f2, f7, f18, dyn # perform operation
fsub.s f2, f7, f18, rdn # perform operation
fsub.s f2, f7, f18, rmm # perform operation
fsub.s f2, f7, f18, rne # perform operation
fsub.s f2, f7, f18, rtz # perform operation
fsub.s f2, f7, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f7, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f7, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f7, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f7, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f7, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xc0000000)
li x17, 0xdfd88f4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f1, 0(x2) # load 0xff7fffff from memory into f1
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f27, 0(x2) # load 0xc0000000 from memory into f27
fsub.s f17, f1, f27, dyn # perform operation
fsub.s f17, f1, f27, rdn # perform operation
fsub.s f17, f1, f27, rmm # perform operation
fsub.s f17, f1, f27, rne # perform operation
fsub.s f17, f1, f27, rtz # perform operation
fsub.s f17, f1, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f1, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f1, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f1, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f1, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f1, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x800000)
li x9, 0x1ca271b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f2, 0(x2) # load 0xff7fffff from memory into f2
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
fsub.s f9, f2, f11, dyn # perform operation
fsub.s f9, f2, f11, rdn # perform operation
fsub.s f9, f2, f11, rmm # perform operation
fsub.s f9, f2, f11, rne # perform operation
fsub.s f9, f2, f11, rtz # perform operation
fsub.s f9, f2, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f2, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f2, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f2, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f2, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f2, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80800000)
li x2, 0xd3a6d31e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f31, 0(x2) # load 0xff7fffff from memory into f31
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
fsub.s f2, f31, f20, dyn # perform operation
fsub.s f2, f31, f20, rdn # perform operation
fsub.s f2, f31, f20, rmm # perform operation
fsub.s f2, f31, f20, rne # perform operation
fsub.s f2, f31, f20, rtz # perform operation
fsub.s f2, f31, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f31, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f31, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f31, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f31, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f31, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f7fffff)
li x4, 0xa9c902bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f16, 0(x2) # load 0xff7fffff from memory into f16
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f24, 0(x2) # load 0x7f7fffff from memory into f24
fsub.s f4, f16, f24, dyn # perform operation
fsub.s f4, f16, f24, rdn # perform operation
fsub.s f4, f16, f24, rmm # perform operation
fsub.s f4, f16, f24, rne # perform operation
fsub.s f4, f16, f24, rtz # perform operation
fsub.s f4, f16, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f4, f16, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f4, f16, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f4, f16, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f4, f16, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f4, f16, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xff7fffff)
li x30, 0xe7515d8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
fsub.s f30, f11, f12, dyn # perform operation
fsub.s f30, f11, f12, rdn # perform operation
fsub.s f30, f11, f12, rmm # perform operation
fsub.s f30, f11, f12, rne # perform operation
fsub.s f30, f11, f12, rtz # perform operation
fsub.s f30, f11, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f11, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f11, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f11, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f11, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f11, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fffff)
li x23, 0x65667168 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f28, 0(x2) # load 0xff7fffff from memory into f28
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f1, 0(x2) # load 0x007fffff from memory into f1
fsub.s f23, f28, f1, dyn # perform operation
fsub.s f23, f28, f1, rdn # perform operation
fsub.s f23, f28, f1, rmm # perform operation
fsub.s f23, f28, f1, rne # perform operation
fsub.s f23, f28, f1, rtz # perform operation
fsub.s f23, f28, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f28, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f28, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f28, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f28, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f28, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x807fffff)
li x7, 0x215900f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f22, 0(x2) # load 0xff7fffff from memory into f22
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
fsub.s f7, f22, f23, dyn # perform operation
fsub.s f7, f22, f23, rdn # perform operation
fsub.s f7, f22, f23, rmm # perform operation
fsub.s f7, f22, f23, rne # perform operation
fsub.s f7, f22, f23, rtz # perform operation
fsub.s f7, f22, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f22, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f22, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f22, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f22, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f22, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x400000)
li x29, 0x00d4463b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f16, 0(x2) # load 0xff7fffff from memory into f16
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f13, 0(x2) # load 0x00400000 from memory into f13
fsub.s f29, f16, f13, dyn # perform operation
fsub.s f29, f16, f13, rdn # perform operation
fsub.s f29, f16, f13, rmm # perform operation
fsub.s f29, f16, f13, rne # perform operation
fsub.s f29, f16, f13, rtz # perform operation
fsub.s f29, f16, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f16, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f16, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f16, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f16, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f16, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80400000)
li x15, 0xbbe7896c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f13, 0(x2) # load 0xff7fffff from memory into f13
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f2, 0(x2) # load 0x80400000 from memory into f2
fsub.s f15, f13, f2, dyn # perform operation
fsub.s f15, f13, f2, rdn # perform operation
fsub.s f15, f13, f2, rmm # perform operation
fsub.s f15, f13, f2, rne # perform operation
fsub.s f15, f13, f2, rtz # perform operation
fsub.s f15, f13, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f13, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f13, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f13, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f13, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f13, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x1)
li x30, 0x3aa73110 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f4, 0(x2) # load 0xff7fffff from memory into f4
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f14, 0(x2) # load 0x00000001 from memory into f14
fsub.s f30, f4, f14, dyn # perform operation
fsub.s f30, f4, f14, rdn # perform operation
fsub.s f30, f4, f14, rmm # perform operation
fsub.s f30, f4, f14, rne # perform operation
fsub.s f30, f4, f14, rtz # perform operation
fsub.s f30, f4, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f4, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f4, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f4, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f4, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f4, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x80000001)
li x7, 0x681718ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f18, 0(x2) # load 0xff7fffff from memory into f18
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f26, 0(x2) # load 0x80000001 from memory into f26
fsub.s f7, f18, f26, dyn # perform operation
fsub.s f7, f18, f26, rdn # perform operation
fsub.s f7, f18, f26, rmm # perform operation
fsub.s f7, f18, f26, rne # perform operation
fsub.s f7, f18, f26, rtz # perform operation
fsub.s f7, f18, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f18, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f18, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f18, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f18, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f18, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f800000)
li x9, 0x889e921c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f22, 0(x2) # load 0xff7fffff from memory into f22
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f28, 0(x2) # load 0x7f800000 from memory into f28
fsub.s f9, f22, f28, dyn # perform operation
fsub.s f9, f22, f28, rdn # perform operation
fsub.s f9, f22, f28, rmm # perform operation
fsub.s f9, f22, f28, rne # perform operation
fsub.s f9, f22, f28, rtz # perform operation
fsub.s f9, f22, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f22, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f22, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f22, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f22, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f22, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0xff800000)
li x23, 0xf34fc449 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f10, 0(x2) # load 0xff7fffff from memory into f10
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f6, 0(x2) # load 0xff800000 from memory into f6
fsub.s f23, f10, f6, dyn # perform operation
fsub.s f23, f10, f6, rdn # perform operation
fsub.s f23, f10, f6, rmm # perform operation
fsub.s f23, f10, f6, rne # perform operation
fsub.s f23, f10, f6, rtz # perform operation
fsub.s f23, f10, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f10, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f10, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f10, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f10, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f10, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fc00000)
li x17, 0xc4c22067 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f6, 0(x2) # load 0xff7fffff from memory into f6
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f12, 0(x2) # load 0x7fc00000 from memory into f12
fsub.s f17, f6, f12, dyn # perform operation
fsub.s f17, f6, f12, rdn # perform operation
fsub.s f17, f6, f12, rmm # perform operation
fsub.s f17, f6, f12, rne # perform operation
fsub.s f17, f6, f12, rtz # perform operation
fsub.s f17, f6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f6, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f6, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f6, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f6, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f6, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fffffff)
li x6, 0x1e80906f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f11, 0(x2) # load 0x7fffffff from memory into f11
fsub.s f6, f12, f11, dyn # perform operation
fsub.s f6, f12, f11, rdn # perform operation
fsub.s f6, f12, f11, rmm # perform operation
fsub.s f6, f12, f11, rne # perform operation
fsub.s f6, f12, f11, rtz # perform operation
fsub.s f6, f12, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f12, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f12, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f12, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f12, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f12, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7f800001)
li x17, 0x6b819ca9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f1, 0(x2) # load 0xff7fffff from memory into f1
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f6, 0(x2) # load 0x7f800001 from memory into f6
fsub.s f17, f1, f6, dyn # perform operation
fsub.s f17, f1, f6, rdn # perform operation
fsub.s f17, f1, f6, rmm # perform operation
fsub.s f17, f1, f6, rne # perform operation
fsub.s f17, f1, f6, rtz # perform operation
fsub.s f17, f1, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f1, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f1, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f1, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f1, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f1, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7fbfffff)
li x1, 0xd26e2823 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f7, 0(x2) # load 0xff7fffff from memory into f7
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f13, 0(x2) # load 0x7fbfffff from memory into f13
fsub.s f1, f7, f13, dyn # perform operation
fsub.s f1, f7, f13, rdn # perform operation
fsub.s f1, f7, f13, rmm # perform operation
fsub.s f1, f7, f13, rne # perform operation
fsub.s f1, f7, f13, rtz # perform operation
fsub.s f1, f7, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f7, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f7, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f7, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f7, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f7, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x7ef8654f)
li x4, 0x2d1085cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
fsub.s f4, f12, f13, dyn # perform operation
fsub.s f4, f12, f13, rdn # perform operation
fsub.s f4, f12, f13, rmm # perform operation
fsub.s f4, f12, f13, rne # perform operation
fsub.s f4, f12, f13, rtz # perform operation
fsub.s f4, f12, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f4, f12, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f4, f12, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f4, f12, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f4, f12, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f4, f12, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff7fffff fs2 = 0x813d9ab0)
li x12, 0x815a3d16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f20, 0(x2) # load 0xff7fffff from memory into f20
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f16, 0(x2) # load 0x813d9ab0 from memory into f16
fsub.s f12, f20, f16, dyn # perform operation
fsub.s f12, f20, f16, rdn # perform operation
fsub.s f12, f20, f16, rmm # perform operation
fsub.s f12, f20, f16, rne # perform operation
fsub.s f12, f20, f16, rtz # perform operation
fsub.s f12, f20, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f20, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f20, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f20, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f20, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f20, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x0)
li x6, 0x09cd0b1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f20, 0(x2) # load 0x00000000 from memory into f20
fsub.s f6, f10, f20, dyn # perform operation
fsub.s f6, f10, f20, rdn # perform operation
fsub.s f6, f10, f20, rmm # perform operation
fsub.s f6, f10, f20, rne # perform operation
fsub.s f6, f10, f20, rtz # perform operation
fsub.s f6, f10, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f10, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f10, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f10, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f10, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f10, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80000000)
li x25, 0x665d3933 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f5, 0(x2) # load 0x007fffff from memory into f5
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f4, 0(x2) # load 0x80000000 from memory into f4
fsub.s f25, f5, f4, dyn # perform operation
fsub.s f25, f5, f4, rdn # perform operation
fsub.s f25, f5, f4, rmm # perform operation
fsub.s f25, f5, f4, rne # perform operation
fsub.s f25, f5, f4, rtz # perform operation
fsub.s f25, f5, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f5, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f5, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f5, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f5, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f5, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x3f800000)
li x19, 0x4a1c06d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f10, 0(x2) # load 0x007fffff from memory into f10
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f3, 0(x2) # load 0x3f800000 from memory into f3
fsub.s f19, f10, f3, dyn # perform operation
fsub.s f19, f10, f3, rdn # perform operation
fsub.s f19, f10, f3, rmm # perform operation
fsub.s f19, f10, f3, rne # perform operation
fsub.s f19, f10, f3, rtz # perform operation
fsub.s f19, f10, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f10, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f10, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f10, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f10, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f10, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xbf800000)
li x21, 0x9e6fc413 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f22, 0(x2) # load 0x007fffff from memory into f22
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
fsub.s f21, f22, f9, dyn # perform operation
fsub.s f21, f22, f9, rdn # perform operation
fsub.s f21, f22, f9, rmm # perform operation
fsub.s f21, f22, f9, rne # perform operation
fsub.s f21, f22, f9, rtz # perform operation
fsub.s f21, f22, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f22, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f22, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f22, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f22, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f22, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x3fc00000)
li x1, 0xe71392b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f26, 0(x2) # load 0x007fffff from memory into f26
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f4, 0(x2) # load 0x3fc00000 from memory into f4
fsub.s f1, f26, f4, dyn # perform operation
fsub.s f1, f26, f4, rdn # perform operation
fsub.s f1, f26, f4, rmm # perform operation
fsub.s f1, f26, f4, rne # perform operation
fsub.s f1, f26, f4, rtz # perform operation
fsub.s f1, f26, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f26, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f26, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f26, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f26, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f26, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xbfc00000)
li x4, 0xab9835f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f28, 0(x2) # load 0x007fffff from memory into f28
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f10, 0(x2) # load 0xbfc00000 from memory into f10
fsub.s f4, f28, f10, dyn # perform operation
fsub.s f4, f28, f10, rdn # perform operation
fsub.s f4, f28, f10, rmm # perform operation
fsub.s f4, f28, f10, rne # perform operation
fsub.s f4, f28, f10, rtz # perform operation
fsub.s f4, f28, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f4, f28, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f4, f28, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f4, f28, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f4, f28, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f4, f28, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x40000000)
li x4, 0xaddf995f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f19, 0(x2) # load 0x007fffff from memory into f19
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f15, 0(x2) # load 0x40000000 from memory into f15
fsub.s f4, f19, f15, dyn # perform operation
fsub.s f4, f19, f15, rdn # perform operation
fsub.s f4, f19, f15, rmm # perform operation
fsub.s f4, f19, f15, rne # perform operation
fsub.s f4, f19, f15, rtz # perform operation
fsub.s f4, f19, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f4, f19, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f4, f19, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f4, f19, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f4, f19, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f4, f19, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xc0000000)
li x24, 0x06f3c7f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f6, 0(x2) # load 0x007fffff from memory into f6
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f5, 0(x2) # load 0xc0000000 from memory into f5
fsub.s f24, f6, f5, dyn # perform operation
fsub.s f24, f6, f5, rdn # perform operation
fsub.s f24, f6, f5, rmm # perform operation
fsub.s f24, f6, f5, rne # perform operation
fsub.s f24, f6, f5, rtz # perform operation
fsub.s f24, f6, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f6, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f6, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f6, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f6, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f6, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x800000)
li x8, 0xd01834da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f3, 0(x2) # load 0x007fffff from memory into f3
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f11, 0(x2) # load 0x00800000 from memory into f11
fsub.s f8, f3, f11, dyn # perform operation
fsub.s f8, f3, f11, rdn # perform operation
fsub.s f8, f3, f11, rmm # perform operation
fsub.s f8, f3, f11, rne # perform operation
fsub.s f8, f3, f11, rtz # perform operation
fsub.s f8, f3, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f3, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f3, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f3, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f3, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f3, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80800000)
li x9, 0x6d9e5746 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f27, 0(x2) # load 0x80800000 from memory into f27
fsub.s f9, f12, f27, dyn # perform operation
fsub.s f9, f12, f27, rdn # perform operation
fsub.s f9, f12, f27, rmm # perform operation
fsub.s f9, f12, f27, rne # perform operation
fsub.s f9, f12, f27, rtz # perform operation
fsub.s f9, f12, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f12, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f12, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f12, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f12, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f12, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f7fffff)
li x14, 0xd274cd7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f7, 0(x2) # load 0x007fffff from memory into f7
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f13, 0(x2) # load 0x7f7fffff from memory into f13
fsub.s f14, f7, f13, dyn # perform operation
fsub.s f14, f7, f13, rdn # perform operation
fsub.s f14, f7, f13, rmm # perform operation
fsub.s f14, f7, f13, rne # perform operation
fsub.s f14, f7, f13, rtz # perform operation
fsub.s f14, f7, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f7, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f7, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f7, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f7, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f7, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xff7fffff)
li x7, 0xc8ed90a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f28, 0(x2) # load 0x007fffff from memory into f28
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f2, 0(x2) # load 0xff7fffff from memory into f2
fsub.s f7, f28, f2, dyn # perform operation
fsub.s f7, f28, f2, rdn # perform operation
fsub.s f7, f28, f2, rmm # perform operation
fsub.s f7, f28, f2, rne # perform operation
fsub.s f7, f28, f2, rtz # perform operation
fsub.s f7, f28, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f28, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f28, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f28, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f28, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f28, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fffff)
li x23, 0x87dcd6d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f5, 0(x2) # load 0x007fffff from memory into f5
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f24, 0(x2) # load 0x007fffff from memory into f24
fsub.s f23, f5, f24, dyn # perform operation
fsub.s f23, f5, f24, rdn # perform operation
fsub.s f23, f5, f24, rmm # perform operation
fsub.s f23, f5, f24, rne # perform operation
fsub.s f23, f5, f24, rtz # perform operation
fsub.s f23, f5, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f5, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f5, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f5, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f5, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f5, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x807fffff)
li x3, 0xc23e9d32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f11, 0(x2) # load 0x007fffff from memory into f11
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
fsub.s f3, f11, f23, dyn # perform operation
fsub.s f3, f11, f23, rdn # perform operation
fsub.s f3, f11, f23, rmm # perform operation
fsub.s f3, f11, f23, rne # perform operation
fsub.s f3, f11, f23, rtz # perform operation
fsub.s f3, f11, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f11, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f11, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f11, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f11, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f11, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x400000)
li x6, 0xa0e19300 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f7, 0(x2) # load 0x007fffff from memory into f7
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f5, 0(x2) # load 0x00400000 from memory into f5
fsub.s f6, f7, f5, dyn # perform operation
fsub.s f6, f7, f5, rdn # perform operation
fsub.s f6, f7, f5, rmm # perform operation
fsub.s f6, f7, f5, rne # perform operation
fsub.s f6, f7, f5, rtz # perform operation
fsub.s f6, f7, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f7, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f7, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f7, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f7, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f7, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80400000)
li x6, 0xf82ef264 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f1, 0(x2) # load 0x007fffff from memory into f1
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f4, 0(x2) # load 0x80400000 from memory into f4
fsub.s f6, f1, f4, dyn # perform operation
fsub.s f6, f1, f4, rdn # perform operation
fsub.s f6, f1, f4, rmm # perform operation
fsub.s f6, f1, f4, rne # perform operation
fsub.s f6, f1, f4, rtz # perform operation
fsub.s f6, f1, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f1, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f1, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f1, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f1, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f1, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x1)
li x5, 0xff03c06e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f16, 0(x2) # load 0x007fffff from memory into f16
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f29, 0(x2) # load 0x00000001 from memory into f29
fsub.s f5, f16, f29, dyn # perform operation
fsub.s f5, f16, f29, rdn # perform operation
fsub.s f5, f16, f29, rmm # perform operation
fsub.s f5, f16, f29, rne # perform operation
fsub.s f5, f16, f29, rtz # perform operation
fsub.s f5, f16, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f16, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f16, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f16, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f16, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f16, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x80000001)
li x14, 0x5319d249 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f30, 0(x2) # load 0x007fffff from memory into f30
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f25, 0(x2) # load 0x80000001 from memory into f25
fsub.s f14, f30, f25, dyn # perform operation
fsub.s f14, f30, f25, rdn # perform operation
fsub.s f14, f30, f25, rmm # perform operation
fsub.s f14, f30, f25, rne # perform operation
fsub.s f14, f30, f25, rtz # perform operation
fsub.s f14, f30, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f30, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f30, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f30, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f30, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f30, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f800000)
li x2, 0x90fa1551 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f1, 0(x2) # load 0x007fffff from memory into f1
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
fsub.s f2, f1, f11, dyn # perform operation
fsub.s f2, f1, f11, rdn # perform operation
fsub.s f2, f1, f11, rmm # perform operation
fsub.s f2, f1, f11, rne # perform operation
fsub.s f2, f1, f11, rtz # perform operation
fsub.s f2, f1, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f1, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f1, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f1, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f1, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f1, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0xff800000)
li x17, 0x53d70efd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f29, 0(x2) # load 0xff800000 from memory into f29
fsub.s f17, f12, f29, dyn # perform operation
fsub.s f17, f12, f29, rdn # perform operation
fsub.s f17, f12, f29, rmm # perform operation
fsub.s f17, f12, f29, rne # perform operation
fsub.s f17, f12, f29, rtz # perform operation
fsub.s f17, f12, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f12, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f12, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f12, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f12, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f12, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fc00000)
li x18, 0x57a9586e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f19, 0(x2) # load 0x007fffff from memory into f19
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f17, 0(x2) # load 0x7fc00000 from memory into f17
fsub.s f18, f19, f17, dyn # perform operation
fsub.s f18, f19, f17, rdn # perform operation
fsub.s f18, f19, f17, rmm # perform operation
fsub.s f18, f19, f17, rne # perform operation
fsub.s f18, f19, f17, rtz # perform operation
fsub.s f18, f19, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f19, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f19, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f19, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f19, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f19, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fffffff)
li x11, 0x7c3ce2f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f9, 0(x2) # load 0x007fffff from memory into f9
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f4, 0(x2) # load 0x7fffffff from memory into f4
fsub.s f11, f9, f4, dyn # perform operation
fsub.s f11, f9, f4, rdn # perform operation
fsub.s f11, f9, f4, rmm # perform operation
fsub.s f11, f9, f4, rne # perform operation
fsub.s f11, f9, f4, rtz # perform operation
fsub.s f11, f9, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f9, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f9, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f9, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f9, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f9, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7f800001)
li x22, 0x1ba20e78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f28, 0(x2) # load 0x007fffff from memory into f28
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f31, 0(x2) # load 0x7f800001 from memory into f31
fsub.s f22, f28, f31, dyn # perform operation
fsub.s f22, f28, f31, rdn # perform operation
fsub.s f22, f28, f31, rmm # perform operation
fsub.s f22, f28, f31, rne # perform operation
fsub.s f22, f28, f31, rtz # perform operation
fsub.s f22, f28, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f28, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f28, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f28, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f28, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f28, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7fbfffff)
li x18, 0x715cee2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f3, 0(x2) # load 0x007fffff from memory into f3
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f22, 0(x2) # load 0x7fbfffff from memory into f22
fsub.s f18, f3, f22, dyn # perform operation
fsub.s f18, f3, f22, rdn # perform operation
fsub.s f18, f3, f22, rmm # perform operation
fsub.s f18, f3, f22, rne # perform operation
fsub.s f18, f3, f22, rtz # perform operation
fsub.s f18, f3, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f3, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f3, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f3, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f3, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f3, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x7ef8654f)
li x31, 0x5c8092a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f1, 0(x2) # load 0x007fffff from memory into f1
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
fsub.s f31, f1, f21, dyn # perform operation
fsub.s f31, f1, f21, rdn # perform operation
fsub.s f31, f1, f21, rmm # perform operation
fsub.s f31, f1, f21, rne # perform operation
fsub.s f31, f1, f21, rtz # perform operation
fsub.s f31, f1, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f1, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f1, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f1, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f1, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f1, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffff fs2 = 0x813d9ab0)
li x22, 0x843e3ca1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f23, 0(x2) # load 0x007fffff from memory into f23
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f7, 0(x2) # load 0x813d9ab0 from memory into f7
fsub.s f22, f23, f7, dyn # perform operation
fsub.s f22, f23, f7, rdn # perform operation
fsub.s f22, f23, f7, rmm # perform operation
fsub.s f22, f23, f7, rne # perform operation
fsub.s f22, f23, f7, rtz # perform operation
fsub.s f22, f23, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f23, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f23, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f23, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f23, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f23, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x0)
li x17, 0x05a4694e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f5, 0(x2) # load 0x807fffff from memory into f5
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f16, 0(x2) # load 0x00000000 from memory into f16
fsub.s f17, f5, f16, dyn # perform operation
fsub.s f17, f5, f16, rdn # perform operation
fsub.s f17, f5, f16, rmm # perform operation
fsub.s f17, f5, f16, rne # perform operation
fsub.s f17, f5, f16, rtz # perform operation
fsub.s f17, f5, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f5, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f5, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f5, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f5, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f5, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80000000)
li x22, 0xd880dd62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f1, 0(x2) # load 0x807fffff from memory into f1
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f20, 0(x2) # load 0x80000000 from memory into f20
fsub.s f22, f1, f20, dyn # perform operation
fsub.s f22, f1, f20, rdn # perform operation
fsub.s f22, f1, f20, rmm # perform operation
fsub.s f22, f1, f20, rne # perform operation
fsub.s f22, f1, f20, rtz # perform operation
fsub.s f22, f1, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f1, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f1, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f1, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f1, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f1, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x3f800000)
li x23, 0xc2ff3cb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f16, 0(x2) # load 0x807fffff from memory into f16
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f7, 0(x2) # load 0x3f800000 from memory into f7
fsub.s f23, f16, f7, dyn # perform operation
fsub.s f23, f16, f7, rdn # perform operation
fsub.s f23, f16, f7, rmm # perform operation
fsub.s f23, f16, f7, rne # perform operation
fsub.s f23, f16, f7, rtz # perform operation
fsub.s f23, f16, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f16, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f16, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f16, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f16, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f16, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xbf800000)
li x30, 0x98e23500 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f4, 0(x2) # load 0x807fffff from memory into f4
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f14, 0(x2) # load 0xbf800000 from memory into f14
fsub.s f30, f4, f14, dyn # perform operation
fsub.s f30, f4, f14, rdn # perform operation
fsub.s f30, f4, f14, rmm # perform operation
fsub.s f30, f4, f14, rne # perform operation
fsub.s f30, f4, f14, rtz # perform operation
fsub.s f30, f4, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f4, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f4, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f4, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f4, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f4, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x3fc00000)
li x10, 0xdd9a78c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f21, 0(x2) # load 0x807fffff from memory into f21
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f11, 0(x2) # load 0x3fc00000 from memory into f11
fsub.s f10, f21, f11, dyn # perform operation
fsub.s f10, f21, f11, rdn # perform operation
fsub.s f10, f21, f11, rmm # perform operation
fsub.s f10, f21, f11, rne # perform operation
fsub.s f10, f21, f11, rtz # perform operation
fsub.s f10, f21, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f21, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f21, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f21, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f21, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f21, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xbfc00000)
li x2, 0xcf5a53b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f12, 0(x2) # load 0x807fffff from memory into f12
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f6, 0(x2) # load 0xbfc00000 from memory into f6
fsub.s f2, f12, f6, dyn # perform operation
fsub.s f2, f12, f6, rdn # perform operation
fsub.s f2, f12, f6, rmm # perform operation
fsub.s f2, f12, f6, rne # perform operation
fsub.s f2, f12, f6, rtz # perform operation
fsub.s f2, f12, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f12, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f12, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f12, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f12, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f12, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x40000000)
li x8, 0x48ad4a07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f20, 0(x2) # load 0x807fffff from memory into f20
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f23, 0(x2) # load 0x40000000 from memory into f23
fsub.s f8, f20, f23, dyn # perform operation
fsub.s f8, f20, f23, rdn # perform operation
fsub.s f8, f20, f23, rmm # perform operation
fsub.s f8, f20, f23, rne # perform operation
fsub.s f8, f20, f23, rtz # perform operation
fsub.s f8, f20, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f20, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f20, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f20, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f20, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f20, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xc0000000)
li x7, 0x88bbc49a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f18, 0(x2) # load 0x807fffff from memory into f18
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f6, 0(x2) # load 0xc0000000 from memory into f6
fsub.s f7, f18, f6, dyn # perform operation
fsub.s f7, f18, f6, rdn # perform operation
fsub.s f7, f18, f6, rmm # perform operation
fsub.s f7, f18, f6, rne # perform operation
fsub.s f7, f18, f6, rtz # perform operation
fsub.s f7, f18, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f18, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f18, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f18, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f18, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f18, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x800000)
li x23, 0xaa8ec189 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f18, 0(x2) # load 0x807fffff from memory into f18
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
fsub.s f23, f18, f14, dyn # perform operation
fsub.s f23, f18, f14, rdn # perform operation
fsub.s f23, f18, f14, rmm # perform operation
fsub.s f23, f18, f14, rne # perform operation
fsub.s f23, f18, f14, rtz # perform operation
fsub.s f23, f18, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f18, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f18, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f18, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f18, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f18, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80800000)
li x24, 0x2e73ed43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f4, 0(x2) # load 0x807fffff from memory into f4
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f10, 0(x2) # load 0x80800000 from memory into f10
fsub.s f24, f4, f10, dyn # perform operation
fsub.s f24, f4, f10, rdn # perform operation
fsub.s f24, f4, f10, rmm # perform operation
fsub.s f24, f4, f10, rne # perform operation
fsub.s f24, f4, f10, rtz # perform operation
fsub.s f24, f4, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f4, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f4, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f4, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f4, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f4, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f7fffff)
li x30, 0x706767a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f4, 0(x2) # load 0x807fffff from memory into f4
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f9, 0(x2) # load 0x7f7fffff from memory into f9
fsub.s f30, f4, f9, dyn # perform operation
fsub.s f30, f4, f9, rdn # perform operation
fsub.s f30, f4, f9, rmm # perform operation
fsub.s f30, f4, f9, rne # perform operation
fsub.s f30, f4, f9, rtz # perform operation
fsub.s f30, f4, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f4, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f4, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f4, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f4, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f4, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xff7fffff)
li x27, 0x40564ef5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f16, 0(x2) # load 0xff7fffff from memory into f16
fsub.s f27, f3, f16, dyn # perform operation
fsub.s f27, f3, f16, rdn # perform operation
fsub.s f27, f3, f16, rmm # perform operation
fsub.s f27, f3, f16, rne # perform operation
fsub.s f27, f3, f16, rtz # perform operation
fsub.s f27, f3, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f3, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f3, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f3, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f3, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f3, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fffff)
li x19, 0x7c84e392 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f8, 0(x2) # load 0x807fffff from memory into f8
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f22, 0(x2) # load 0x007fffff from memory into f22
fsub.s f19, f8, f22, dyn # perform operation
fsub.s f19, f8, f22, rdn # perform operation
fsub.s f19, f8, f22, rmm # perform operation
fsub.s f19, f8, f22, rne # perform operation
fsub.s f19, f8, f22, rtz # perform operation
fsub.s f19, f8, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f8, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f8, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f8, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f8, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f8, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x807fffff)
li x16, 0xaf0f9b84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f14, 0(x2) # load 0x807fffff from memory into f14
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f19, 0(x2) # load 0x807fffff from memory into f19
fsub.s f16, f14, f19, dyn # perform operation
fsub.s f16, f14, f19, rdn # perform operation
fsub.s f16, f14, f19, rmm # perform operation
fsub.s f16, f14, f19, rne # perform operation
fsub.s f16, f14, f19, rtz # perform operation
fsub.s f16, f14, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f14, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f14, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f14, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f14, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f14, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x400000)
li x4, 0x5a89892e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f27, 0(x2) # load 0x807fffff from memory into f27
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f16, 0(x2) # load 0x00400000 from memory into f16
fsub.s f4, f27, f16, dyn # perform operation
fsub.s f4, f27, f16, rdn # perform operation
fsub.s f4, f27, f16, rmm # perform operation
fsub.s f4, f27, f16, rne # perform operation
fsub.s f4, f27, f16, rtz # perform operation
fsub.s f4, f27, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f4, f27, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f4, f27, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f4, f27, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f4, f27, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f4, f27, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80400000)
li x6, 0xdd28a3c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f7, 0(x2) # load 0x807fffff from memory into f7
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f23, 0(x2) # load 0x80400000 from memory into f23
fsub.s f6, f7, f23, dyn # perform operation
fsub.s f6, f7, f23, rdn # perform operation
fsub.s f6, f7, f23, rmm # perform operation
fsub.s f6, f7, f23, rne # perform operation
fsub.s f6, f7, f23, rtz # perform operation
fsub.s f6, f7, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f7, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f7, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f7, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f7, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f7, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x1)
li x28, 0x95f2ab1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f29, 0(x2) # load 0x807fffff from memory into f29
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f13, 0(x2) # load 0x00000001 from memory into f13
fsub.s f28, f29, f13, dyn # perform operation
fsub.s f28, f29, f13, rdn # perform operation
fsub.s f28, f29, f13, rmm # perform operation
fsub.s f28, f29, f13, rne # perform operation
fsub.s f28, f29, f13, rtz # perform operation
fsub.s f28, f29, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f29, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f29, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f29, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f29, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f29, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x80000001)
li x13, 0xc9ff8fa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f18, 0(x2) # load 0x807fffff from memory into f18
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f9, 0(x2) # load 0x80000001 from memory into f9
fsub.s f13, f18, f9, dyn # perform operation
fsub.s f13, f18, f9, rdn # perform operation
fsub.s f13, f18, f9, rmm # perform operation
fsub.s f13, f18, f9, rne # perform operation
fsub.s f13, f18, f9, rtz # perform operation
fsub.s f13, f18, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f18, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f18, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f18, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f18, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f18, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f800000)
li x15, 0xb3c69513 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f10, 0(x2) # load 0x807fffff from memory into f10
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f22, 0(x2) # load 0x7f800000 from memory into f22
fsub.s f15, f10, f22, dyn # perform operation
fsub.s f15, f10, f22, rdn # perform operation
fsub.s f15, f10, f22, rmm # perform operation
fsub.s f15, f10, f22, rne # perform operation
fsub.s f15, f10, f22, rtz # perform operation
fsub.s f15, f10, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f10, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f10, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f10, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f10, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f10, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0xff800000)
li x26, 0xe9f6e4b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f17, 0(x2) # load 0x807fffff from memory into f17
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f11, 0(x2) # load 0xff800000 from memory into f11
fsub.s f26, f17, f11, dyn # perform operation
fsub.s f26, f17, f11, rdn # perform operation
fsub.s f26, f17, f11, rmm # perform operation
fsub.s f26, f17, f11, rne # perform operation
fsub.s f26, f17, f11, rtz # perform operation
fsub.s f26, f17, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f17, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f17, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f17, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f17, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f17, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fc00000)
li x25, 0x692aab41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f17, 0(x2) # load 0x807fffff from memory into f17
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
fsub.s f25, f17, f7, dyn # perform operation
fsub.s f25, f17, f7, rdn # perform operation
fsub.s f25, f17, f7, rmm # perform operation
fsub.s f25, f17, f7, rne # perform operation
fsub.s f25, f17, f7, rtz # perform operation
fsub.s f25, f17, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f17, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f17, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f17, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f17, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f17, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fffffff)
li x19, 0xa24118f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f15, 0(x2) # load 0x7fffffff from memory into f15
fsub.s f19, f2, f15, dyn # perform operation
fsub.s f19, f2, f15, rdn # perform operation
fsub.s f19, f2, f15, rmm # perform operation
fsub.s f19, f2, f15, rne # perform operation
fsub.s f19, f2, f15, rtz # perform operation
fsub.s f19, f2, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f2, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f2, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f2, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f2, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f2, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7f800001)
li x22, 0x033ad2bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
fsub.s f22, f23, f27, dyn # perform operation
fsub.s f22, f23, f27, rdn # perform operation
fsub.s f22, f23, f27, rmm # perform operation
fsub.s f22, f23, f27, rne # perform operation
fsub.s f22, f23, f27, rtz # perform operation
fsub.s f22, f23, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f23, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f23, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f23, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f23, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f23, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7fbfffff)
li x27, 0x22db8c80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f6, 0(x2) # load 0x807fffff from memory into f6
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f23, 0(x2) # load 0x7fbfffff from memory into f23
fsub.s f27, f6, f23, dyn # perform operation
fsub.s f27, f6, f23, rdn # perform operation
fsub.s f27, f6, f23, rmm # perform operation
fsub.s f27, f6, f23, rne # perform operation
fsub.s f27, f6, f23, rtz # perform operation
fsub.s f27, f6, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f6, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f6, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f6, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f6, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f6, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x7ef8654f)
li x19, 0xaebd2ec8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f4, 0(x2) # load 0x807fffff from memory into f4
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f22, 0(x2) # load 0x7ef8654f from memory into f22
fsub.s f19, f4, f22, dyn # perform operation
fsub.s f19, f4, f22, rdn # perform operation
fsub.s f19, f4, f22, rmm # perform operation
fsub.s f19, f4, f22, rne # perform operation
fsub.s f19, f4, f22, rtz # perform operation
fsub.s f19, f4, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f4, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f4, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f4, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f4, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f4, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x807fffff fs2 = 0x813d9ab0)
li x18, 0x231e3936 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f2, 0(x2) # load 0x807fffff from memory into f2
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f1, 0(x2) # load 0x813d9ab0 from memory into f1
fsub.s f18, f2, f1, dyn # perform operation
fsub.s f18, f2, f1, rdn # perform operation
fsub.s f18, f2, f1, rmm # perform operation
fsub.s f18, f2, f1, rne # perform operation
fsub.s f18, f2, f1, rtz # perform operation
fsub.s f18, f2, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f2, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f2, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f2, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f2, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f2, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x0)
li x12, 0x0122e291 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f15, 0(x2) # load 0x00000000 from memory into f15
fsub.s f12, f25, f15, dyn # perform operation
fsub.s f12, f25, f15, rdn # perform operation
fsub.s f12, f25, f15, rmm # perform operation
fsub.s f12, f25, f15, rne # perform operation
fsub.s f12, f25, f15, rtz # perform operation
fsub.s f12, f25, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f25, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f25, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f25, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f25, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f25, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80000000)
li x30, 0x643b51ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f4, 0(x2) # load 0x00400000 from memory into f4
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f27, 0(x2) # load 0x80000000 from memory into f27
fsub.s f30, f4, f27, dyn # perform operation
fsub.s f30, f4, f27, rdn # perform operation
fsub.s f30, f4, f27, rmm # perform operation
fsub.s f30, f4, f27, rne # perform operation
fsub.s f30, f4, f27, rtz # perform operation
fsub.s f30, f4, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f4, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f4, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f4, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f4, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f4, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x3f800000)
li x10, 0x3f17eb7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f9, 0(x2) # load 0x3f800000 from memory into f9
fsub.s f10, f26, f9, dyn # perform operation
fsub.s f10, f26, f9, rdn # perform operation
fsub.s f10, f26, f9, rmm # perform operation
fsub.s f10, f26, f9, rne # perform operation
fsub.s f10, f26, f9, rtz # perform operation
fsub.s f10, f26, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f26, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f26, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f26, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f26, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f26, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xbf800000)
li x1, 0x29b5bbe1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f22, 0(x2) # load 0xbf800000 from memory into f22
fsub.s f1, f15, f22, dyn # perform operation
fsub.s f1, f15, f22, rdn # perform operation
fsub.s f1, f15, f22, rmm # perform operation
fsub.s f1, f15, f22, rne # perform operation
fsub.s f1, f15, f22, rtz # perform operation
fsub.s f1, f15, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f15, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f15, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f15, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f15, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f15, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x3fc00000)
li x29, 0x1d4b0018 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f4, 0(x2) # load 0x00400000 from memory into f4
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f14, 0(x2) # load 0x3fc00000 from memory into f14
fsub.s f29, f4, f14, dyn # perform operation
fsub.s f29, f4, f14, rdn # perform operation
fsub.s f29, f4, f14, rmm # perform operation
fsub.s f29, f4, f14, rne # perform operation
fsub.s f29, f4, f14, rtz # perform operation
fsub.s f29, f4, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f4, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f4, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f4, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f4, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f4, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xbfc00000)
li x21, 0x0d7a7638 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f10, 0(x2) # load 0x00400000 from memory into f10
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f7, 0(x2) # load 0xbfc00000 from memory into f7
fsub.s f21, f10, f7, dyn # perform operation
fsub.s f21, f10, f7, rdn # perform operation
fsub.s f21, f10, f7, rmm # perform operation
fsub.s f21, f10, f7, rne # perform operation
fsub.s f21, f10, f7, rtz # perform operation
fsub.s f21, f10, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f10, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f10, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f10, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f10, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f10, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x40000000)
li x16, 0xcdd17024 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f29, 0(x2) # load 0x00400000 from memory into f29
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f31, 0(x2) # load 0x40000000 from memory into f31
fsub.s f16, f29, f31, dyn # perform operation
fsub.s f16, f29, f31, rdn # perform operation
fsub.s f16, f29, f31, rmm # perform operation
fsub.s f16, f29, f31, rne # perform operation
fsub.s f16, f29, f31, rtz # perform operation
fsub.s f16, f29, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f29, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f29, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f29, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f29, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f29, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xc0000000)
li x17, 0xac588c89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f5, 0(x2) # load 0x00400000 from memory into f5
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f24, 0(x2) # load 0xc0000000 from memory into f24
fsub.s f17, f5, f24, dyn # perform operation
fsub.s f17, f5, f24, rdn # perform operation
fsub.s f17, f5, f24, rmm # perform operation
fsub.s f17, f5, f24, rne # perform operation
fsub.s f17, f5, f24, rtz # perform operation
fsub.s f17, f5, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f5, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f5, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f5, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f5, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f5, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x800000)
li x9, 0x940a9abd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f11, 0(x2) # load 0x00400000 from memory into f11
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f27, 0(x2) # load 0x00800000 from memory into f27
fsub.s f9, f11, f27, dyn # perform operation
fsub.s f9, f11, f27, rdn # perform operation
fsub.s f9, f11, f27, rmm # perform operation
fsub.s f9, f11, f27, rne # perform operation
fsub.s f9, f11, f27, rtz # perform operation
fsub.s f9, f11, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f11, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f11, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f11, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f11, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f11, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80800000)
li x8, 0x6bee6f14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f27, 0(x2) # load 0x00400000 from memory into f27
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f25, 0(x2) # load 0x80800000 from memory into f25
fsub.s f8, f27, f25, dyn # perform operation
fsub.s f8, f27, f25, rdn # perform operation
fsub.s f8, f27, f25, rmm # perform operation
fsub.s f8, f27, f25, rne # perform operation
fsub.s f8, f27, f25, rtz # perform operation
fsub.s f8, f27, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f27, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f27, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f27, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f27, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f27, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f7fffff)
li x18, 0xf5704d1c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f19, 0(x2) # load 0x00400000 from memory into f19
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f7, 0(x2) # load 0x7f7fffff from memory into f7
fsub.s f18, f19, f7, dyn # perform operation
fsub.s f18, f19, f7, rdn # perform operation
fsub.s f18, f19, f7, rmm # perform operation
fsub.s f18, f19, f7, rne # perform operation
fsub.s f18, f19, f7, rtz # perform operation
fsub.s f18, f19, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f19, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f19, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f19, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f19, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f19, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xff7fffff)
li x24, 0xc3fed738 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f28, 0(x2) # load 0x00400000 from memory into f28
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f7, 0(x2) # load 0xff7fffff from memory into f7
fsub.s f24, f28, f7, dyn # perform operation
fsub.s f24, f28, f7, rdn # perform operation
fsub.s f24, f28, f7, rmm # perform operation
fsub.s f24, f28, f7, rne # perform operation
fsub.s f24, f28, f7, rtz # perform operation
fsub.s f24, f28, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f28, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f28, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f28, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f28, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f28, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fffff)
li x23, 0x82da31de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f19, 0(x2) # load 0x00400000 from memory into f19
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f29, 0(x2) # load 0x007fffff from memory into f29
fsub.s f23, f19, f29, dyn # perform operation
fsub.s f23, f19, f29, rdn # perform operation
fsub.s f23, f19, f29, rmm # perform operation
fsub.s f23, f19, f29, rne # perform operation
fsub.s f23, f19, f29, rtz # perform operation
fsub.s f23, f19, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f19, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f19, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f19, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f19, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f19, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x807fffff)
li x4, 0xd73b4c29 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f20, 0(x2) # load 0x00400000 from memory into f20
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f9, 0(x2) # load 0x807fffff from memory into f9
fsub.s f4, f20, f9, dyn # perform operation
fsub.s f4, f20, f9, rdn # perform operation
fsub.s f4, f20, f9, rmm # perform operation
fsub.s f4, f20, f9, rne # perform operation
fsub.s f4, f20, f9, rtz # perform operation
fsub.s f4, f20, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f4, f20, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f4, f20, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f4, f20, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f4, f20, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f4, f20, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x400000)
li x11, 0x492051d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f24, 0(x2) # load 0x00400000 from memory into f24
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f6, 0(x2) # load 0x00400000 from memory into f6
fsub.s f11, f24, f6, dyn # perform operation
fsub.s f11, f24, f6, rdn # perform operation
fsub.s f11, f24, f6, rmm # perform operation
fsub.s f11, f24, f6, rne # perform operation
fsub.s f11, f24, f6, rtz # perform operation
fsub.s f11, f24, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f24, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f24, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f24, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f24, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f24, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80400000)
li x14, 0xb6be15f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f28, 0(x2) # load 0x00400000 from memory into f28
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f11, 0(x2) # load 0x80400000 from memory into f11
fsub.s f14, f28, f11, dyn # perform operation
fsub.s f14, f28, f11, rdn # perform operation
fsub.s f14, f28, f11, rmm # perform operation
fsub.s f14, f28, f11, rne # perform operation
fsub.s f14, f28, f11, rtz # perform operation
fsub.s f14, f28, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f28, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f28, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f28, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f28, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f28, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x1)
li x21, 0x27dfd099 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f7, 0(x2) # load 0x00400000 from memory into f7
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f28, 0(x2) # load 0x00000001 from memory into f28
fsub.s f21, f7, f28, dyn # perform operation
fsub.s f21, f7, f28, rdn # perform operation
fsub.s f21, f7, f28, rmm # perform operation
fsub.s f21, f7, f28, rne # perform operation
fsub.s f21, f7, f28, rtz # perform operation
fsub.s f21, f7, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f7, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f7, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f7, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f7, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f7, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x80000001)
li x1, 0xcd7ed07c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f7, 0(x2) # load 0x00400000 from memory into f7
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f4, 0(x2) # load 0x80000001 from memory into f4
fsub.s f1, f7, f4, dyn # perform operation
fsub.s f1, f7, f4, rdn # perform operation
fsub.s f1, f7, f4, rmm # perform operation
fsub.s f1, f7, f4, rne # perform operation
fsub.s f1, f7, f4, rtz # perform operation
fsub.s f1, f7, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f7, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f7, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f7, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f7, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f7, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f800000)
li x25, 0xfb89e2bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f24, 0(x2) # load 0x00400000 from memory into f24
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f5, 0(x2) # load 0x7f800000 from memory into f5
fsub.s f25, f24, f5, dyn # perform operation
fsub.s f25, f24, f5, rdn # perform operation
fsub.s f25, f24, f5, rmm # perform operation
fsub.s f25, f24, f5, rne # perform operation
fsub.s f25, f24, f5, rtz # perform operation
fsub.s f25, f24, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f24, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f24, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f24, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f24, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f24, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0xff800000)
li x6, 0x5409b464 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f26, 0(x2) # load 0x00400000 from memory into f26
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f21, 0(x2) # load 0xff800000 from memory into f21
fsub.s f6, f26, f21, dyn # perform operation
fsub.s f6, f26, f21, rdn # perform operation
fsub.s f6, f26, f21, rmm # perform operation
fsub.s f6, f26, f21, rne # perform operation
fsub.s f6, f26, f21, rtz # perform operation
fsub.s f6, f26, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f26, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f26, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f26, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f26, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f26, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fc00000)
li x19, 0x9bcb8d61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f22, 0(x2) # load 0x00400000 from memory into f22
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f17, 0(x2) # load 0x7fc00000 from memory into f17
fsub.s f19, f22, f17, dyn # perform operation
fsub.s f19, f22, f17, rdn # perform operation
fsub.s f19, f22, f17, rmm # perform operation
fsub.s f19, f22, f17, rne # perform operation
fsub.s f19, f22, f17, rtz # perform operation
fsub.s f19, f22, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f22, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f22, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f22, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f22, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f22, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fffffff)
li x9, 0xfcc57b79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f4, 0(x2) # load 0x7fffffff from memory into f4
fsub.s f9, f15, f4, dyn # perform operation
fsub.s f9, f15, f4, rdn # perform operation
fsub.s f9, f15, f4, rmm # perform operation
fsub.s f9, f15, f4, rne # perform operation
fsub.s f9, f15, f4, rtz # perform operation
fsub.s f9, f15, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f15, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f15, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f15, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f15, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f15, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7f800001)
li x15, 0x91ae0d65 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f9, 0(x2) # load 0x00400000 from memory into f9
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f20, 0(x2) # load 0x7f800001 from memory into f20
fsub.s f15, f9, f20, dyn # perform operation
fsub.s f15, f9, f20, rdn # perform operation
fsub.s f15, f9, f20, rmm # perform operation
fsub.s f15, f9, f20, rne # perform operation
fsub.s f15, f9, f20, rtz # perform operation
fsub.s f15, f9, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f9, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f9, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f9, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f9, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f9, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7fbfffff)
li x16, 0x2e3312b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f2, 0(x2) # load 0x00400000 from memory into f2
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f5, 0(x2) # load 0x7fbfffff from memory into f5
fsub.s f16, f2, f5, dyn # perform operation
fsub.s f16, f2, f5, rdn # perform operation
fsub.s f16, f2, f5, rmm # perform operation
fsub.s f16, f2, f5, rne # perform operation
fsub.s f16, f2, f5, rtz # perform operation
fsub.s f16, f2, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f2, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f2, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f2, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f2, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f2, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x7ef8654f)
li x9, 0x9df9a23f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f20, 0(x2) # load 0x00400000 from memory into f20
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f3, 0(x2) # load 0x7ef8654f from memory into f3
fsub.s f9, f20, f3, dyn # perform operation
fsub.s f9, f20, f3, rdn # perform operation
fsub.s f9, f20, f3, rmm # perform operation
fsub.s f9, f20, f3, rne # perform operation
fsub.s f9, f20, f3, rtz # perform operation
fsub.s f9, f20, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f20, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f20, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f20, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f20, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f20, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400000 fs2 = 0x813d9ab0)
li x20, 0x0e26e902 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
fsub.s f20, f12, f22, dyn # perform operation
fsub.s f20, f12, f22, rdn # perform operation
fsub.s f20, f12, f22, rmm # perform operation
fsub.s f20, f12, f22, rne # perform operation
fsub.s f20, f12, f22, rtz # perform operation
fsub.s f20, f12, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f12, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f12, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f12, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f12, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f12, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x0)
li x17, 0x68b655ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f9, 0(x2) # load 0x80400000 from memory into f9
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f12, 0(x2) # load 0x00000000 from memory into f12
fsub.s f17, f9, f12, dyn # perform operation
fsub.s f17, f9, f12, rdn # perform operation
fsub.s f17, f9, f12, rmm # perform operation
fsub.s f17, f9, f12, rne # perform operation
fsub.s f17, f9, f12, rtz # perform operation
fsub.s f17, f9, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f9, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f9, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f9, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f9, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f9, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80000000)
li x27, 0x67cb786a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f8, 0(x2) # load 0x80400000 from memory into f8
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f29, 0(x2) # load 0x80000000 from memory into f29
fsub.s f27, f8, f29, dyn # perform operation
fsub.s f27, f8, f29, rdn # perform operation
fsub.s f27, f8, f29, rmm # perform operation
fsub.s f27, f8, f29, rne # perform operation
fsub.s f27, f8, f29, rtz # perform operation
fsub.s f27, f8, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f8, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f8, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f8, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f8, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f8, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x3f800000)
li x18, 0x8dd56b3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f22, 0(x2) # load 0x80400000 from memory into f22
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f13, 0(x2) # load 0x3f800000 from memory into f13
fsub.s f18, f22, f13, dyn # perform operation
fsub.s f18, f22, f13, rdn # perform operation
fsub.s f18, f22, f13, rmm # perform operation
fsub.s f18, f22, f13, rne # perform operation
fsub.s f18, f22, f13, rtz # perform operation
fsub.s f18, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f22, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xbf800000)
li x28, 0xb04f061e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f18, 0(x2) # load 0x80400000 from memory into f18
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f29, 0(x2) # load 0xbf800000 from memory into f29
fsub.s f28, f18, f29, dyn # perform operation
fsub.s f28, f18, f29, rdn # perform operation
fsub.s f28, f18, f29, rmm # perform operation
fsub.s f28, f18, f29, rne # perform operation
fsub.s f28, f18, f29, rtz # perform operation
fsub.s f28, f18, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f18, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f18, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f18, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f18, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f18, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x3fc00000)
li x5, 0x778769fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f25, 0(x2) # load 0x3fc00000 from memory into f25
fsub.s f5, f6, f25, dyn # perform operation
fsub.s f5, f6, f25, rdn # perform operation
fsub.s f5, f6, f25, rmm # perform operation
fsub.s f5, f6, f25, rne # perform operation
fsub.s f5, f6, f25, rtz # perform operation
fsub.s f5, f6, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f6, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f6, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f6, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f6, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f6, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xbfc00000)
li x9, 0xb6505743 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f1, 0(x2) # load 0x80400000 from memory into f1
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f10, 0(x2) # load 0xbfc00000 from memory into f10
fsub.s f9, f1, f10, dyn # perform operation
fsub.s f9, f1, f10, rdn # perform operation
fsub.s f9, f1, f10, rmm # perform operation
fsub.s f9, f1, f10, rne # perform operation
fsub.s f9, f1, f10, rtz # perform operation
fsub.s f9, f1, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f1, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f1, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f1, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f1, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f1, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x40000000)
li x7, 0xc6df0954 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f15, 0(x2) # load 0x80400000 from memory into f15
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f2, 0(x2) # load 0x40000000 from memory into f2
fsub.s f7, f15, f2, dyn # perform operation
fsub.s f7, f15, f2, rdn # perform operation
fsub.s f7, f15, f2, rmm # perform operation
fsub.s f7, f15, f2, rne # perform operation
fsub.s f7, f15, f2, rtz # perform operation
fsub.s f7, f15, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f15, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f15, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f15, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f15, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f15, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xc0000000)
li x20, 0xa243d615 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f24, 0(x2) # load 0x80400000 from memory into f24
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f25, 0(x2) # load 0xc0000000 from memory into f25
fsub.s f20, f24, f25, dyn # perform operation
fsub.s f20, f24, f25, rdn # perform operation
fsub.s f20, f24, f25, rmm # perform operation
fsub.s f20, f24, f25, rne # perform operation
fsub.s f20, f24, f25, rtz # perform operation
fsub.s f20, f24, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f24, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f24, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f24, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f24, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f24, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x800000)
li x25, 0x02b9aaf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f31, 0(x2) # load 0x80400000 from memory into f31
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f8, 0(x2) # load 0x00800000 from memory into f8
fsub.s f25, f31, f8, dyn # perform operation
fsub.s f25, f31, f8, rdn # perform operation
fsub.s f25, f31, f8, rmm # perform operation
fsub.s f25, f31, f8, rne # perform operation
fsub.s f25, f31, f8, rtz # perform operation
fsub.s f25, f31, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f31, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f31, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f31, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f31, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f31, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80800000)
li x11, 0x0c848fa5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f9, 0(x2) # load 0x80400000 from memory into f9
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f2, 0(x2) # load 0x80800000 from memory into f2
fsub.s f11, f9, f2, dyn # perform operation
fsub.s f11, f9, f2, rdn # perform operation
fsub.s f11, f9, f2, rmm # perform operation
fsub.s f11, f9, f2, rne # perform operation
fsub.s f11, f9, f2, rtz # perform operation
fsub.s f11, f9, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f9, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f9, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f9, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f9, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f9, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f7fffff)
li x9, 0x23e5f8d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f10, 0(x2) # load 0x7f7fffff from memory into f10
fsub.s f9, f6, f10, dyn # perform operation
fsub.s f9, f6, f10, rdn # perform operation
fsub.s f9, f6, f10, rmm # perform operation
fsub.s f9, f6, f10, rne # perform operation
fsub.s f9, f6, f10, rtz # perform operation
fsub.s f9, f6, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f6, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f6, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f6, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f6, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f6, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xff7fffff)
li x19, 0xff53e454 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f6, 0(x2) # load 0x80400000 from memory into f6
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f1, 0(x2) # load 0xff7fffff from memory into f1
fsub.s f19, f6, f1, dyn # perform operation
fsub.s f19, f6, f1, rdn # perform operation
fsub.s f19, f6, f1, rmm # perform operation
fsub.s f19, f6, f1, rne # perform operation
fsub.s f19, f6, f1, rtz # perform operation
fsub.s f19, f6, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f6, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f6, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f6, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f6, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f6, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fffff)
li x9, 0xf912d94f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f3, 0(x2) # load 0x80400000 from memory into f3
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f31, 0(x2) # load 0x007fffff from memory into f31
fsub.s f9, f3, f31, dyn # perform operation
fsub.s f9, f3, f31, rdn # perform operation
fsub.s f9, f3, f31, rmm # perform operation
fsub.s f9, f3, f31, rne # perform operation
fsub.s f9, f3, f31, rtz # perform operation
fsub.s f9, f3, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f3, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f3, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f3, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f3, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f3, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x807fffff)
li x12, 0xc211af17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f15, 0(x2) # load 0x80400000 from memory into f15
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f20, 0(x2) # load 0x807fffff from memory into f20
fsub.s f12, f15, f20, dyn # perform operation
fsub.s f12, f15, f20, rdn # perform operation
fsub.s f12, f15, f20, rmm # perform operation
fsub.s f12, f15, f20, rne # perform operation
fsub.s f12, f15, f20, rtz # perform operation
fsub.s f12, f15, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f15, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f15, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f15, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f15, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f15, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x400000)
li x3, 0xb347c693 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f25, 0(x2) # load 0x80400000 from memory into f25
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f15, 0(x2) # load 0x00400000 from memory into f15
fsub.s f3, f25, f15, dyn # perform operation
fsub.s f3, f25, f15, rdn # perform operation
fsub.s f3, f25, f15, rmm # perform operation
fsub.s f3, f25, f15, rne # perform operation
fsub.s f3, f25, f15, rtz # perform operation
fsub.s f3, f25, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f25, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f25, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f25, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f25, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f25, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80400000)
li x18, 0x9751e54a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f17, 0(x2) # load 0x80400000 from memory into f17
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f16, 0(x2) # load 0x80400000 from memory into f16
fsub.s f18, f17, f16, dyn # perform operation
fsub.s f18, f17, f16, rdn # perform operation
fsub.s f18, f17, f16, rmm # perform operation
fsub.s f18, f17, f16, rne # perform operation
fsub.s f18, f17, f16, rtz # perform operation
fsub.s f18, f17, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f17, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f17, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f17, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f17, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f17, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x1)
li x17, 0x2de29dd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f3, 0(x2) # load 0x80400000 from memory into f3
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f25, 0(x2) # load 0x00000001 from memory into f25
fsub.s f17, f3, f25, dyn # perform operation
fsub.s f17, f3, f25, rdn # perform operation
fsub.s f17, f3, f25, rmm # perform operation
fsub.s f17, f3, f25, rne # perform operation
fsub.s f17, f3, f25, rtz # perform operation
fsub.s f17, f3, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f3, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f3, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f3, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f3, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f3, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x80000001)
li x15, 0xa112b9fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f24, 0(x2) # load 0x80400000 from memory into f24
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f22, 0(x2) # load 0x80000001 from memory into f22
fsub.s f15, f24, f22, dyn # perform operation
fsub.s f15, f24, f22, rdn # perform operation
fsub.s f15, f24, f22, rmm # perform operation
fsub.s f15, f24, f22, rne # perform operation
fsub.s f15, f24, f22, rtz # perform operation
fsub.s f15, f24, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f24, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f24, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f24, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f24, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f24, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f800000)
li x29, 0x5f5d17ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f21, 0(x2) # load 0x80400000 from memory into f21
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
fsub.s f29, f21, f11, dyn # perform operation
fsub.s f29, f21, f11, rdn # perform operation
fsub.s f29, f21, f11, rmm # perform operation
fsub.s f29, f21, f11, rne # perform operation
fsub.s f29, f21, f11, rtz # perform operation
fsub.s f29, f21, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f21, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f21, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f21, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f21, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f21, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0xff800000)
li x9, 0x41a86bfb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f16, 0(x2) # load 0x80400000 from memory into f16
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f8, 0(x2) # load 0xff800000 from memory into f8
fsub.s f9, f16, f8, dyn # perform operation
fsub.s f9, f16, f8, rdn # perform operation
fsub.s f9, f16, f8, rmm # perform operation
fsub.s f9, f16, f8, rne # perform operation
fsub.s f9, f16, f8, rtz # perform operation
fsub.s f9, f16, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f16, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f16, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f16, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f16, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f16, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fc00000)
li x2, 0xc477d2ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f21, 0(x2) # load 0x80400000 from memory into f21
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f8, 0(x2) # load 0x7fc00000 from memory into f8
fsub.s f2, f21, f8, dyn # perform operation
fsub.s f2, f21, f8, rdn # perform operation
fsub.s f2, f21, f8, rmm # perform operation
fsub.s f2, f21, f8, rne # perform operation
fsub.s f2, f21, f8, rtz # perform operation
fsub.s f2, f21, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f21, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f21, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f21, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f21, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f21, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fffffff)
li x14, 0xfab3492a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f10, 0(x2) # load 0x80400000 from memory into f10
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f26, 0(x2) # load 0x7fffffff from memory into f26
fsub.s f14, f10, f26, dyn # perform operation
fsub.s f14, f10, f26, rdn # perform operation
fsub.s f14, f10, f26, rmm # perform operation
fsub.s f14, f10, f26, rne # perform operation
fsub.s f14, f10, f26, rtz # perform operation
fsub.s f14, f10, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f10, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f10, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f10, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f10, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f10, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7f800001)
li x16, 0xb123313a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f20, 0(x2) # load 0x80400000 from memory into f20
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f24, 0(x2) # load 0x7f800001 from memory into f24
fsub.s f16, f20, f24, dyn # perform operation
fsub.s f16, f20, f24, rdn # perform operation
fsub.s f16, f20, f24, rmm # perform operation
fsub.s f16, f20, f24, rne # perform operation
fsub.s f16, f20, f24, rtz # perform operation
fsub.s f16, f20, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f20, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f20, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f20, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f20, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f20, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7fbfffff)
li x26, 0x32894d8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f5, 0(x2) # load 0x80400000 from memory into f5
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f17, 0(x2) # load 0x7fbfffff from memory into f17
fsub.s f26, f5, f17, dyn # perform operation
fsub.s f26, f5, f17, rdn # perform operation
fsub.s f26, f5, f17, rmm # perform operation
fsub.s f26, f5, f17, rne # perform operation
fsub.s f26, f5, f17, rtz # perform operation
fsub.s f26, f5, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f5, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f5, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f5, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f5, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f5, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x7ef8654f)
li x25, 0x38cdb3a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f13, 0(x2) # load 0x80400000 from memory into f13
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f26, 0(x2) # load 0x7ef8654f from memory into f26
fsub.s f25, f13, f26, dyn # perform operation
fsub.s f25, f13, f26, rdn # perform operation
fsub.s f25, f13, f26, rmm # perform operation
fsub.s f25, f13, f26, rne # perform operation
fsub.s f25, f13, f26, rtz # perform operation
fsub.s f25, f13, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f13, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f13, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f13, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f13, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f13, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80400000 fs2 = 0x813d9ab0)
li x26, 0xb72d5cfa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f7, 0(x2) # load 0x80400000 from memory into f7
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f14, 0(x2) # load 0x813d9ab0 from memory into f14
fsub.s f26, f7, f14, dyn # perform operation
fsub.s f26, f7, f14, rdn # perform operation
fsub.s f26, f7, f14, rmm # perform operation
fsub.s f26, f7, f14, rne # perform operation
fsub.s f26, f7, f14, rtz # perform operation
fsub.s f26, f7, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f7, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f7, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f7, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f7, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f7, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
li x9, 0xdb963c6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f17, 0(x2) # load 0x00000001 from memory into f17
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f12, 0(x2) # load 0x00000000 from memory into f12
fsub.s f9, f17, f12, dyn # perform operation
fsub.s f9, f17, f12, rdn # perform operation
fsub.s f9, f17, f12, rmm # perform operation
fsub.s f9, f17, f12, rne # perform operation
fsub.s f9, f17, f12, rtz # perform operation
fsub.s f9, f17, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f17, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f17, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f17, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f17, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f17, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80000000)
li x30, 0xab605af8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f9, 0(x2) # load 0x00000001 from memory into f9
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f17, 0(x2) # load 0x80000000 from memory into f17
fsub.s f30, f9, f17, dyn # perform operation
fsub.s f30, f9, f17, rdn # perform operation
fsub.s f30, f9, f17, rmm # perform operation
fsub.s f30, f9, f17, rne # perform operation
fsub.s f30, f9, f17, rtz # perform operation
fsub.s f30, f9, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f9, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f9, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f9, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f9, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f9, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3f800000)
li x28, 0xf75544a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f14, 0(x2) # load 0x00000001 from memory into f14
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f8, 0(x2) # load 0x3f800000 from memory into f8
fsub.s f28, f14, f8, dyn # perform operation
fsub.s f28, f14, f8, rdn # perform operation
fsub.s f28, f14, f8, rmm # perform operation
fsub.s f28, f14, f8, rne # perform operation
fsub.s f28, f14, f8, rtz # perform operation
fsub.s f28, f14, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f14, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f14, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f14, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f14, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f14, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbf800000)
li x31, 0x85acdc1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f29, 0(x2) # load 0xbf800000 from memory into f29
fsub.s f31, f22, f29, dyn # perform operation
fsub.s f31, f22, f29, rdn # perform operation
fsub.s f31, f22, f29, rmm # perform operation
fsub.s f31, f22, f29, rne # perform operation
fsub.s f31, f22, f29, rtz # perform operation
fsub.s f31, f22, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f22, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f22, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f22, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f22, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f22, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3fc00000)
li x3, 0x78972594 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f29, 0(x2) # load 0x3fc00000 from memory into f29
fsub.s f3, f6, f29, dyn # perform operation
fsub.s f3, f6, f29, rdn # perform operation
fsub.s f3, f6, f29, rmm # perform operation
fsub.s f3, f6, f29, rne # perform operation
fsub.s f3, f6, f29, rtz # perform operation
fsub.s f3, f6, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f6, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f6, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f6, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f6, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f6, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbfc00000)
li x12, 0xec4a8b45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f4, 0(x2) # load 0xbfc00000 from memory into f4
fsub.s f12, f5, f4, dyn # perform operation
fsub.s f12, f5, f4, rdn # perform operation
fsub.s f12, f5, f4, rmm # perform operation
fsub.s f12, f5, f4, rne # perform operation
fsub.s f12, f5, f4, rtz # perform operation
fsub.s f12, f5, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f5, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f5, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f5, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f5, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f5, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x40000000)
li x29, 0x4e7cd8e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f28, 0(x2) # load 0x00000001 from memory into f28
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f5, 0(x2) # load 0x40000000 from memory into f5
fsub.s f29, f28, f5, dyn # perform operation
fsub.s f29, f28, f5, rdn # perform operation
fsub.s f29, f28, f5, rmm # perform operation
fsub.s f29, f28, f5, rne # perform operation
fsub.s f29, f28, f5, rtz # perform operation
fsub.s f29, f28, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f28, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f28, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f28, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f28, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f28, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc0000000)
li x16, 0x08ae9773 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f26, 0(x2) # load 0x00000001 from memory into f26
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f14, 0(x2) # load 0xc0000000 from memory into f14
fsub.s f16, f26, f14, dyn # perform operation
fsub.s f16, f26, f14, rdn # perform operation
fsub.s f16, f26, f14, rmm # perform operation
fsub.s f16, f26, f14, rne # perform operation
fsub.s f16, f26, f14, rtz # perform operation
fsub.s f16, f26, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f26, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f26, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f26, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f26, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f26, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x800000)
li x19, 0x1190224a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f3, 0(x2) # load 0x00800000 from memory into f3
fsub.s f19, f6, f3, dyn # perform operation
fsub.s f19, f6, f3, rdn # perform operation
fsub.s f19, f6, f3, rmm # perform operation
fsub.s f19, f6, f3, rne # perform operation
fsub.s f19, f6, f3, rtz # perform operation
fsub.s f19, f6, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f6, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f6, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f6, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f6, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f6, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80800000)
li x20, 0x6af59a63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f17, 0(x2) # load 0x00000001 from memory into f17
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f26, 0(x2) # load 0x80800000 from memory into f26
fsub.s f20, f17, f26, dyn # perform operation
fsub.s f20, f17, f26, rdn # perform operation
fsub.s f20, f17, f26, rmm # perform operation
fsub.s f20, f17, f26, rne # perform operation
fsub.s f20, f17, f26, rtz # perform operation
fsub.s f20, f17, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f17, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f17, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f17, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f17, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f17, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f7fffff)
li x21, 0xcdcb7e79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f7, 0(x2) # load 0x00000001 from memory into f7
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f8, 0(x2) # load 0x7f7fffff from memory into f8
fsub.s f21, f7, f8, dyn # perform operation
fsub.s f21, f7, f8, rdn # perform operation
fsub.s f21, f7, f8, rmm # perform operation
fsub.s f21, f7, f8, rne # perform operation
fsub.s f21, f7, f8, rtz # perform operation
fsub.s f21, f7, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f7, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f7, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f7, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f7, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f7, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xff7fffff)
li x7, 0xb1f288e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f31, 0(x2) # load 0x00000001 from memory into f31
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f8, 0(x2) # load 0xff7fffff from memory into f8
fsub.s f7, f31, f8, dyn # perform operation
fsub.s f7, f31, f8, rdn # perform operation
fsub.s f7, f31, f8, rmm # perform operation
fsub.s f7, f31, f8, rne # perform operation
fsub.s f7, f31, f8, rtz # perform operation
fsub.s f7, f31, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f31, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f31, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f31, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f31, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f31, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffff)
li x27, 0x6005d4f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f22, 0(x2) # load 0x007fffff from memory into f22
fsub.s f27, f3, f22, dyn # perform operation
fsub.s f27, f3, f22, rdn # perform operation
fsub.s f27, f3, f22, rmm # perform operation
fsub.s f27, f3, f22, rne # perform operation
fsub.s f27, f3, f22, rtz # perform operation
fsub.s f27, f3, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f3, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f3, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f3, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f3, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f3, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x807fffff)
li x22, 0xe53d1685 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f21, 0(x2) # load 0x807fffff from memory into f21
fsub.s f22, f3, f21, dyn # perform operation
fsub.s f22, f3, f21, rdn # perform operation
fsub.s f22, f3, f21, rmm # perform operation
fsub.s f22, f3, f21, rne # perform operation
fsub.s f22, f3, f21, rtz # perform operation
fsub.s f22, f3, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f3, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f3, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f3, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f3, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f3, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x400000)
li x30, 0x3fb043b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f8, 0(x2) # load 0x00000001 from memory into f8
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f21, 0(x2) # load 0x00400000 from memory into f21
fsub.s f30, f8, f21, dyn # perform operation
fsub.s f30, f8, f21, rdn # perform operation
fsub.s f30, f8, f21, rmm # perform operation
fsub.s f30, f8, f21, rne # perform operation
fsub.s f30, f8, f21, rtz # perform operation
fsub.s f30, f8, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f8, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f8, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f8, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f8, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f8, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80400000)
li x17, 0x2bb6de59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f11, 0(x2) # load 0x80400000 from memory into f11
fsub.s f17, f22, f11, dyn # perform operation
fsub.s f17, f22, f11, rdn # perform operation
fsub.s f17, f22, f11, rmm # perform operation
fsub.s f17, f22, f11, rne # perform operation
fsub.s f17, f22, f11, rtz # perform operation
fsub.s f17, f22, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f22, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f22, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f22, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f22, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f22, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
li x19, 0xbeb2a30c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f29, 0(x2) # load 0x00000001 from memory into f29
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f26, 0(x2) # load 0x00000001 from memory into f26
fsub.s f19, f29, f26, dyn # perform operation
fsub.s f19, f29, f26, rdn # perform operation
fsub.s f19, f29, f26, rmm # perform operation
fsub.s f19, f29, f26, rne # perform operation
fsub.s f19, f29, f26, rtz # perform operation
fsub.s f19, f29, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f29, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f29, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f29, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f29, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f29, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x80000001)
li x16, 0x6616f519 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f9, 0(x2) # load 0x00000001 from memory into f9
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
fsub.s f16, f9, f18, dyn # perform operation
fsub.s f16, f9, f18, rdn # perform operation
fsub.s f16, f9, f18, rmm # perform operation
fsub.s f16, f9, f18, rne # perform operation
fsub.s f16, f9, f18, rtz # perform operation
fsub.s f16, f9, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f9, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f9, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f9, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f9, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f9, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f800000)
li x19, 0xd1f7662a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f1, 0(x2) # load 0x00000001 from memory into f1
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f12, 0(x2) # load 0x7f800000 from memory into f12
fsub.s f19, f1, f12, dyn # perform operation
fsub.s f19, f1, f12, rdn # perform operation
fsub.s f19, f1, f12, rmm # perform operation
fsub.s f19, f1, f12, rne # perform operation
fsub.s f19, f1, f12, rtz # perform operation
fsub.s f19, f1, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f1, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f1, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f1, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f1, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f1, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xff800000)
li x15, 0xaa4b9a25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f5, 0(x2) # load 0x00000001 from memory into f5
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f18, 0(x2) # load 0xff800000 from memory into f18
fsub.s f15, f5, f18, dyn # perform operation
fsub.s f15, f5, f18, rdn # perform operation
fsub.s f15, f5, f18, rmm # perform operation
fsub.s f15, f5, f18, rne # perform operation
fsub.s f15, f5, f18, rtz # perform operation
fsub.s f15, f5, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f5, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f5, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f5, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f5, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f5, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fc00000)
li x14, 0xd2fdb7da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f24, 0(x2) # load 0x00000001 from memory into f24
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f23, 0(x2) # load 0x7fc00000 from memory into f23
fsub.s f14, f24, f23, dyn # perform operation
fsub.s f14, f24, f23, rdn # perform operation
fsub.s f14, f24, f23, rmm # perform operation
fsub.s f14, f24, f23, rne # perform operation
fsub.s f14, f24, f23, rtz # perform operation
fsub.s f14, f24, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f24, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f24, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f24, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f24, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f24, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffffff)
li x1, 0xab9c091b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f21, 0(x2) # load 0x00000001 from memory into f21
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f23, 0(x2) # load 0x7fffffff from memory into f23
fsub.s f1, f21, f23, dyn # perform operation
fsub.s f1, f21, f23, rdn # perform operation
fsub.s f1, f21, f23, rmm # perform operation
fsub.s f1, f21, f23, rne # perform operation
fsub.s f1, f21, f23, rtz # perform operation
fsub.s f1, f21, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f21, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f21, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f21, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f21, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f21, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7f800001)
li x11, 0x7c6e2c8a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f23, 0(x2) # load 0x00000001 from memory into f23
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f2, 0(x2) # load 0x7f800001 from memory into f2
fsub.s f11, f23, f2, dyn # perform operation
fsub.s f11, f23, f2, rdn # perform operation
fsub.s f11, f23, f2, rmm # perform operation
fsub.s f11, f23, f2, rne # perform operation
fsub.s f11, f23, f2, rtz # perform operation
fsub.s f11, f23, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f23, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f23, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f23, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f23, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f23, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fbfffff)
li x28, 0x5529d104 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f10, 0(x2) # load 0x00000001 from memory into f10
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
fsub.s f28, f10, f16, dyn # perform operation
fsub.s f28, f10, f16, rdn # perform operation
fsub.s f28, f10, f16, rmm # perform operation
fsub.s f28, f10, f16, rne # perform operation
fsub.s f28, f10, f16, rtz # perform operation
fsub.s f28, f10, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f10, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f10, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f10, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f10, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f10, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ef8654f)
li x15, 0x7a240c94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f16, 0(x2) # load 0x00000001 from memory into f16
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f4, 0(x2) # load 0x7ef8654f from memory into f4
fsub.s f15, f16, f4, dyn # perform operation
fsub.s f15, f16, f4, rdn # perform operation
fsub.s f15, f16, f4, rmm # perform operation
fsub.s f15, f16, f4, rne # perform operation
fsub.s f15, f16, f4, rtz # perform operation
fsub.s f15, f16, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f16, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f16, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f16, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f16, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f16, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x813d9ab0)
li x10, 0x18b73f2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f22, 0(x2) # load 0x00000001 from memory into f22
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f26, 0(x2) # load 0x813d9ab0 from memory into f26
fsub.s f10, f22, f26, dyn # perform operation
fsub.s f10, f22, f26, rdn # perform operation
fsub.s f10, f22, f26, rmm # perform operation
fsub.s f10, f22, f26, rne # perform operation
fsub.s f10, f22, f26, rtz # perform operation
fsub.s f10, f22, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f22, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f22, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f22, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f22, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f22, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x0)
li x3, 0x45d20cdb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f11, 0(x2) # load 0x80000001 from memory into f11
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f2, 0(x2) # load 0x00000000 from memory into f2
fsub.s f3, f11, f2, dyn # perform operation
fsub.s f3, f11, f2, rdn # perform operation
fsub.s f3, f11, f2, rmm # perform operation
fsub.s f3, f11, f2, rne # perform operation
fsub.s f3, f11, f2, rtz # perform operation
fsub.s f3, f11, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f11, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f11, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f11, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f11, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f11, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80000000)
li x11, 0xf293eacf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f17, 0(x2) # load 0x80000001 from memory into f17
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f18, 0(x2) # load 0x80000000 from memory into f18
fsub.s f11, f17, f18, dyn # perform operation
fsub.s f11, f17, f18, rdn # perform operation
fsub.s f11, f17, f18, rmm # perform operation
fsub.s f11, f17, f18, rne # perform operation
fsub.s f11, f17, f18, rtz # perform operation
fsub.s f11, f17, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f17, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f17, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f17, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f17, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f17, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x3f800000)
li x25, 0xdc349f05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f18, 0(x2) # load 0x80000001 from memory into f18
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f24, 0(x2) # load 0x3f800000 from memory into f24
fsub.s f25, f18, f24, dyn # perform operation
fsub.s f25, f18, f24, rdn # perform operation
fsub.s f25, f18, f24, rmm # perform operation
fsub.s f25, f18, f24, rne # perform operation
fsub.s f25, f18, f24, rtz # perform operation
fsub.s f25, f18, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f18, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f18, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f18, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f18, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f18, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xbf800000)
li x14, 0x24880f27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f26, 0(x2) # load 0x80000001 from memory into f26
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f28, 0(x2) # load 0xbf800000 from memory into f28
fsub.s f14, f26, f28, dyn # perform operation
fsub.s f14, f26, f28, rdn # perform operation
fsub.s f14, f26, f28, rmm # perform operation
fsub.s f14, f26, f28, rne # perform operation
fsub.s f14, f26, f28, rtz # perform operation
fsub.s f14, f26, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f26, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f26, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f26, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f26, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f26, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x3fc00000)
li x6, 0xeec2c7c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f9, 0(x2) # load 0x80000001 from memory into f9
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f16, 0(x2) # load 0x3fc00000 from memory into f16
fsub.s f6, f9, f16, dyn # perform operation
fsub.s f6, f9, f16, rdn # perform operation
fsub.s f6, f9, f16, rmm # perform operation
fsub.s f6, f9, f16, rne # perform operation
fsub.s f6, f9, f16, rtz # perform operation
fsub.s f6, f9, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f9, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f9, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f9, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f9, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f9, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xbfc00000)
li x7, 0xff422714 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f17, 0(x2) # load 0x80000001 from memory into f17
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f13, 0(x2) # load 0xbfc00000 from memory into f13
fsub.s f7, f17, f13, dyn # perform operation
fsub.s f7, f17, f13, rdn # perform operation
fsub.s f7, f17, f13, rmm # perform operation
fsub.s f7, f17, f13, rne # perform operation
fsub.s f7, f17, f13, rtz # perform operation
fsub.s f7, f17, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f17, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f17, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f17, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f17, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f17, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x40000000)
li x12, 0xa6d229fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f16, 0(x2) # load 0x80000001 from memory into f16
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f4, 0(x2) # load 0x40000000 from memory into f4
fsub.s f12, f16, f4, dyn # perform operation
fsub.s f12, f16, f4, rdn # perform operation
fsub.s f12, f16, f4, rmm # perform operation
fsub.s f12, f16, f4, rne # perform operation
fsub.s f12, f16, f4, rtz # perform operation
fsub.s f12, f16, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f16, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f16, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f16, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f16, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f16, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xc0000000)
li x22, 0x2f6f75e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f3, 0(x2) # load 0xc0000000 from memory into f3
fsub.s f22, f31, f3, dyn # perform operation
fsub.s f22, f31, f3, rdn # perform operation
fsub.s f22, f31, f3, rmm # perform operation
fsub.s f22, f31, f3, rne # perform operation
fsub.s f22, f31, f3, rtz # perform operation
fsub.s f22, f31, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f31, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f31, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f31, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f31, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f31, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x800000)
li x14, 0x9ee79738 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f24, 0(x2) # load 0x80000001 from memory into f24
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f31, 0(x2) # load 0x00800000 from memory into f31
fsub.s f14, f24, f31, dyn # perform operation
fsub.s f14, f24, f31, rdn # perform operation
fsub.s f14, f24, f31, rmm # perform operation
fsub.s f14, f24, f31, rne # perform operation
fsub.s f14, f24, f31, rtz # perform operation
fsub.s f14, f24, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f24, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f24, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f24, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f24, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f24, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80800000)
li x12, 0x7b8e14fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f6, 0(x2) # load 0x80000001 from memory into f6
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
fsub.s f12, f6, f18, dyn # perform operation
fsub.s f12, f6, f18, rdn # perform operation
fsub.s f12, f6, f18, rmm # perform operation
fsub.s f12, f6, f18, rne # perform operation
fsub.s f12, f6, f18, rtz # perform operation
fsub.s f12, f6, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f6, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f6, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f6, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f6, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f6, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f7fffff)
li x23, 0xc3fd65b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f1, 0(x2) # load 0x7f7fffff from memory into f1
fsub.s f23, f7, f1, dyn # perform operation
fsub.s f23, f7, f1, rdn # perform operation
fsub.s f23, f7, f1, rmm # perform operation
fsub.s f23, f7, f1, rne # perform operation
fsub.s f23, f7, f1, rtz # perform operation
fsub.s f23, f7, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f7, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f7, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f7, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f7, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f7, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xff7fffff)
li x31, 0x50045ee6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f28, 0(x2) # load 0x80000001 from memory into f28
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f3, 0(x2) # load 0xff7fffff from memory into f3
fsub.s f31, f28, f3, dyn # perform operation
fsub.s f31, f28, f3, rdn # perform operation
fsub.s f31, f28, f3, rmm # perform operation
fsub.s f31, f28, f3, rne # perform operation
fsub.s f31, f28, f3, rtz # perform operation
fsub.s f31, f28, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f28, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f28, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f28, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f28, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f28, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fffff)
li x17, 0x8f7c1eab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f2, 0(x2) # load 0x80000001 from memory into f2
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f29, 0(x2) # load 0x007fffff from memory into f29
fsub.s f17, f2, f29, dyn # perform operation
fsub.s f17, f2, f29, rdn # perform operation
fsub.s f17, f2, f29, rmm # perform operation
fsub.s f17, f2, f29, rne # perform operation
fsub.s f17, f2, f29, rtz # perform operation
fsub.s f17, f2, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f2, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f2, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f2, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f2, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f2, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x807fffff)
li x29, 0xf06bd63f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f6, 0(x2) # load 0x80000001 from memory into f6
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f16, 0(x2) # load 0x807fffff from memory into f16
fsub.s f29, f6, f16, dyn # perform operation
fsub.s f29, f6, f16, rdn # perform operation
fsub.s f29, f6, f16, rmm # perform operation
fsub.s f29, f6, f16, rne # perform operation
fsub.s f29, f6, f16, rtz # perform operation
fsub.s f29, f6, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f6, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f6, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f6, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f6, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f6, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x400000)
li x16, 0x02c42895 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f4, 0(x2) # load 0x80000001 from memory into f4
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f27, 0(x2) # load 0x00400000 from memory into f27
fsub.s f16, f4, f27, dyn # perform operation
fsub.s f16, f4, f27, rdn # perform operation
fsub.s f16, f4, f27, rmm # perform operation
fsub.s f16, f4, f27, rne # perform operation
fsub.s f16, f4, f27, rtz # perform operation
fsub.s f16, f4, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f4, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f4, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f4, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f4, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f4, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80400000)
li x6, 0x37d6bffa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f22, 0(x2) # load 0x80000001 from memory into f22
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f16, 0(x2) # load 0x80400000 from memory into f16
fsub.s f6, f22, f16, dyn # perform operation
fsub.s f6, f22, f16, rdn # perform operation
fsub.s f6, f22, f16, rmm # perform operation
fsub.s f6, f22, f16, rne # perform operation
fsub.s f6, f22, f16, rtz # perform operation
fsub.s f6, f22, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f22, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f22, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f22, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f22, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f22, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x1)
li x26, 0x79217bbc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f28, 0(x2) # load 0x80000001 from memory into f28
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f3, 0(x2) # load 0x00000001 from memory into f3
fsub.s f26, f28, f3, dyn # perform operation
fsub.s f26, f28, f3, rdn # perform operation
fsub.s f26, f28, f3, rmm # perform operation
fsub.s f26, f28, f3, rne # perform operation
fsub.s f26, f28, f3, rtz # perform operation
fsub.s f26, f28, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f28, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f28, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f28, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f28, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f28, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x80000001)
li x8, 0x09b4f991 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f19, 0(x2) # load 0x80000001 from memory into f19
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
fsub.s f8, f19, f27, dyn # perform operation
fsub.s f8, f19, f27, rdn # perform operation
fsub.s f8, f19, f27, rmm # perform operation
fsub.s f8, f19, f27, rne # perform operation
fsub.s f8, f19, f27, rtz # perform operation
fsub.s f8, f19, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f19, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f19, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f19, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f19, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f19, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f800000)
li x14, 0xb8163132 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f4, 0(x2) # load 0x80000001 from memory into f4
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f16, 0(x2) # load 0x7f800000 from memory into f16
fsub.s f14, f4, f16, dyn # perform operation
fsub.s f14, f4, f16, rdn # perform operation
fsub.s f14, f4, f16, rmm # perform operation
fsub.s f14, f4, f16, rne # perform operation
fsub.s f14, f4, f16, rtz # perform operation
fsub.s f14, f4, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f4, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f4, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f4, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f4, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f4, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0xff800000)
li x22, 0x42ee41c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f14, 0(x2) # load 0x80000001 from memory into f14
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f16, 0(x2) # load 0xff800000 from memory into f16
fsub.s f22, f14, f16, dyn # perform operation
fsub.s f22, f14, f16, rdn # perform operation
fsub.s f22, f14, f16, rmm # perform operation
fsub.s f22, f14, f16, rne # perform operation
fsub.s f22, f14, f16, rtz # perform operation
fsub.s f22, f14, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f14, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f14, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f14, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f14, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f14, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fc00000)
li x3, 0xe3cbc77e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f10, 0(x2) # load 0x80000001 from memory into f10
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
fsub.s f3, f10, f7, dyn # perform operation
fsub.s f3, f10, f7, rdn # perform operation
fsub.s f3, f10, f7, rmm # perform operation
fsub.s f3, f10, f7, rne # perform operation
fsub.s f3, f10, f7, rtz # perform operation
fsub.s f3, f10, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f10, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f10, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f10, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f10, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f10, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fffffff)
li x19, 0xa620ba56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f9, 0(x2) # load 0x80000001 from memory into f9
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f26, 0(x2) # load 0x7fffffff from memory into f26
fsub.s f19, f9, f26, dyn # perform operation
fsub.s f19, f9, f26, rdn # perform operation
fsub.s f19, f9, f26, rmm # perform operation
fsub.s f19, f9, f26, rne # perform operation
fsub.s f19, f9, f26, rtz # perform operation
fsub.s f19, f9, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f9, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f9, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f9, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f9, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f9, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7f800001)
li x18, 0xed681cb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f3, 0(x2) # load 0x80000001 from memory into f3
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
fsub.s f18, f3, f7, dyn # perform operation
fsub.s f18, f3, f7, rdn # perform operation
fsub.s f18, f3, f7, rmm # perform operation
fsub.s f18, f3, f7, rne # perform operation
fsub.s f18, f3, f7, rtz # perform operation
fsub.s f18, f3, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f3, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f3, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f3, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f3, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f3, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7fbfffff)
li x23, 0xa9357c63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f30, 0(x2) # load 0x80000001 from memory into f30
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f10, 0(x2) # load 0x7fbfffff from memory into f10
fsub.s f23, f30, f10, dyn # perform operation
fsub.s f23, f30, f10, rdn # perform operation
fsub.s f23, f30, f10, rmm # perform operation
fsub.s f23, f30, f10, rne # perform operation
fsub.s f23, f30, f10, rtz # perform operation
fsub.s f23, f30, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f30, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f30, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f30, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f30, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f30, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x7ef8654f)
li x24, 0x625b5dc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f27, 0(x2) # load 0x80000001 from memory into f27
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f18, 0(x2) # load 0x7ef8654f from memory into f18
fsub.s f24, f27, f18, dyn # perform operation
fsub.s f24, f27, f18, rdn # perform operation
fsub.s f24, f27, f18, rmm # perform operation
fsub.s f24, f27, f18, rne # perform operation
fsub.s f24, f27, f18, rtz # perform operation
fsub.s f24, f27, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f27, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f27, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f27, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f27, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f27, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x80000001 fs2 = 0x813d9ab0)
li x20, 0xe452cb5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f15, 0(x2) # load 0x80000001 from memory into f15
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
fsub.s f20, f15, f13, dyn # perform operation
fsub.s f20, f15, f13, rdn # perform operation
fsub.s f20, f15, f13, rmm # perform operation
fsub.s f20, f15, f13, rne # perform operation
fsub.s f20, f15, f13, rtz # perform operation
fsub.s f20, f15, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f15, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f15, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f15, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f15, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f15, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x0)
li x7, 0x13a7887d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f24, 0(x2) # load 0x7f800000 from memory into f24
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
fsub.s f7, f24, f9, dyn # perform operation
fsub.s f7, f24, f9, rdn # perform operation
fsub.s f7, f24, f9, rmm # perform operation
fsub.s f7, f24, f9, rne # perform operation
fsub.s f7, f24, f9, rtz # perform operation
fsub.s f7, f24, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f24, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f24, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f24, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f24, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f24, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80000000)
li x22, 0x48f79eab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f14, 0(x2) # load 0x7f800000 from memory into f14
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f23, 0(x2) # load 0x80000000 from memory into f23
fsub.s f22, f14, f23, dyn # perform operation
fsub.s f22, f14, f23, rdn # perform operation
fsub.s f22, f14, f23, rmm # perform operation
fsub.s f22, f14, f23, rne # perform operation
fsub.s f22, f14, f23, rtz # perform operation
fsub.s f22, f14, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f14, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f14, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f14, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f14, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f14, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x3f800000)
li x20, 0xf99c6deb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
fsub.s f20, f31, f6, dyn # perform operation
fsub.s f20, f31, f6, rdn # perform operation
fsub.s f20, f31, f6, rmm # perform operation
fsub.s f20, f31, f6, rne # perform operation
fsub.s f20, f31, f6, rtz # perform operation
fsub.s f20, f31, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f31, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f31, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f31, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f31, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f31, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xbf800000)
li x13, 0x052118ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f27, 0(x2) # load 0x7f800000 from memory into f27
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f16, 0(x2) # load 0xbf800000 from memory into f16
fsub.s f13, f27, f16, dyn # perform operation
fsub.s f13, f27, f16, rdn # perform operation
fsub.s f13, f27, f16, rmm # perform operation
fsub.s f13, f27, f16, rne # perform operation
fsub.s f13, f27, f16, rtz # perform operation
fsub.s f13, f27, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f27, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f27, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f27, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f27, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f27, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x3fc00000)
li x29, 0x7dfcba28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f28, 0(x2) # load 0x7f800000 from memory into f28
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f31, 0(x2) # load 0x3fc00000 from memory into f31
fsub.s f29, f28, f31, dyn # perform operation
fsub.s f29, f28, f31, rdn # perform operation
fsub.s f29, f28, f31, rmm # perform operation
fsub.s f29, f28, f31, rne # perform operation
fsub.s f29, f28, f31, rtz # perform operation
fsub.s f29, f28, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f28, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f28, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f28, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f28, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f28, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xbfc00000)
li x7, 0x315f9ace # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f15, 0(x2) # load 0x7f800000 from memory into f15
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f9, 0(x2) # load 0xbfc00000 from memory into f9
fsub.s f7, f15, f9, dyn # perform operation
fsub.s f7, f15, f9, rdn # perform operation
fsub.s f7, f15, f9, rmm # perform operation
fsub.s f7, f15, f9, rne # perform operation
fsub.s f7, f15, f9, rtz # perform operation
fsub.s f7, f15, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f15, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f15, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f15, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f15, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f15, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x40000000)
li x16, 0x9b46ce71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f6, 0(x2) # load 0x7f800000 from memory into f6
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
fsub.s f16, f6, f24, dyn # perform operation
fsub.s f16, f6, f24, rdn # perform operation
fsub.s f16, f6, f24, rmm # perform operation
fsub.s f16, f6, f24, rne # perform operation
fsub.s f16, f6, f24, rtz # perform operation
fsub.s f16, f6, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f6, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f6, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f6, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f6, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f6, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xc0000000)
li x11, 0x6b1661b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f30, 0(x2) # load 0x7f800000 from memory into f30
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
fsub.s f11, f30, f31, dyn # perform operation
fsub.s f11, f30, f31, rdn # perform operation
fsub.s f11, f30, f31, rmm # perform operation
fsub.s f11, f30, f31, rne # perform operation
fsub.s f11, f30, f31, rtz # perform operation
fsub.s f11, f30, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f30, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f30, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f30, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f30, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f30, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x800000)
li x7, 0xaf799ebd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f30, 0(x2) # load 0x00800000 from memory into f30
fsub.s f7, f31, f30, dyn # perform operation
fsub.s f7, f31, f30, rdn # perform operation
fsub.s f7, f31, f30, rmm # perform operation
fsub.s f7, f31, f30, rne # perform operation
fsub.s f7, f31, f30, rtz # perform operation
fsub.s f7, f31, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f31, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f31, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f31, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f31, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f31, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80800000)
li x19, 0x4a94cb6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f5, 0(x2) # load 0x7f800000 from memory into f5
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f13, 0(x2) # load 0x80800000 from memory into f13
fsub.s f19, f5, f13, dyn # perform operation
fsub.s f19, f5, f13, rdn # perform operation
fsub.s f19, f5, f13, rmm # perform operation
fsub.s f19, f5, f13, rne # perform operation
fsub.s f19, f5, f13, rtz # perform operation
fsub.s f19, f5, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f5, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f5, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f5, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f5, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f5, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f7fffff)
li x30, 0x7f43d5bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f5, 0(x2) # load 0x7f800000 from memory into f5
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f31, 0(x2) # load 0x7f7fffff from memory into f31
fsub.s f30, f5, f31, dyn # perform operation
fsub.s f30, f5, f31, rdn # perform operation
fsub.s f30, f5, f31, rmm # perform operation
fsub.s f30, f5, f31, rne # perform operation
fsub.s f30, f5, f31, rtz # perform operation
fsub.s f30, f5, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f5, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f5, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f5, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f5, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f5, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xff7fffff)
li x3, 0x6c45e29a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f28, 0(x2) # load 0x7f800000 from memory into f28
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f12, 0(x2) # load 0xff7fffff from memory into f12
fsub.s f3, f28, f12, dyn # perform operation
fsub.s f3, f28, f12, rdn # perform operation
fsub.s f3, f28, f12, rmm # perform operation
fsub.s f3, f28, f12, rne # perform operation
fsub.s f3, f28, f12, rtz # perform operation
fsub.s f3, f28, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f28, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f28, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f28, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f28, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f28, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fffff)
li x10, 0x5f89eca5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f1, 0(x2) # load 0x7f800000 from memory into f1
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f13, 0(x2) # load 0x007fffff from memory into f13
fsub.s f10, f1, f13, dyn # perform operation
fsub.s f10, f1, f13, rdn # perform operation
fsub.s f10, f1, f13, rmm # perform operation
fsub.s f10, f1, f13, rne # perform operation
fsub.s f10, f1, f13, rtz # perform operation
fsub.s f10, f1, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f1, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f1, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f1, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f1, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f1, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x807fffff)
li x8, 0x696897b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f9, 0(x2) # load 0x7f800000 from memory into f9
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f29, 0(x2) # load 0x807fffff from memory into f29
fsub.s f8, f9, f29, dyn # perform operation
fsub.s f8, f9, f29, rdn # perform operation
fsub.s f8, f9, f29, rmm # perform operation
fsub.s f8, f9, f29, rne # perform operation
fsub.s f8, f9, f29, rtz # perform operation
fsub.s f8, f9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f9, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f9, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f9, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f9, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f9, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x400000)
li x19, 0x6924db58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f21, 0(x2) # load 0x7f800000 from memory into f21
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f29, 0(x2) # load 0x00400000 from memory into f29
fsub.s f19, f21, f29, dyn # perform operation
fsub.s f19, f21, f29, rdn # perform operation
fsub.s f19, f21, f29, rmm # perform operation
fsub.s f19, f21, f29, rne # perform operation
fsub.s f19, f21, f29, rtz # perform operation
fsub.s f19, f21, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f21, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f21, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f21, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f21, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f21, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80400000)
li x28, 0x968eb512 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f19, 0(x2) # load 0x7f800000 from memory into f19
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f26, 0(x2) # load 0x80400000 from memory into f26
fsub.s f28, f19, f26, dyn # perform operation
fsub.s f28, f19, f26, rdn # perform operation
fsub.s f28, f19, f26, rmm # perform operation
fsub.s f28, f19, f26, rne # perform operation
fsub.s f28, f19, f26, rtz # perform operation
fsub.s f28, f19, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f19, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f19, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f19, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f19, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f19, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x1)
li x19, 0x5ac58b1d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f26, 0(x2) # load 0x7f800000 from memory into f26
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f31, 0(x2) # load 0x00000001 from memory into f31
fsub.s f19, f26, f31, dyn # perform operation
fsub.s f19, f26, f31, rdn # perform operation
fsub.s f19, f26, f31, rmm # perform operation
fsub.s f19, f26, f31, rne # perform operation
fsub.s f19, f26, f31, rtz # perform operation
fsub.s f19, f26, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f26, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f26, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f26, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f26, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f26, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x80000001)
li x25, 0xab6cd910 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f8, 0(x2) # load 0x7f800000 from memory into f8
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f22, 0(x2) # load 0x80000001 from memory into f22
fsub.s f25, f8, f22, dyn # perform operation
fsub.s f25, f8, f22, rdn # perform operation
fsub.s f25, f8, f22, rmm # perform operation
fsub.s f25, f8, f22, rne # perform operation
fsub.s f25, f8, f22, rtz # perform operation
fsub.s f25, f8, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f8, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f8, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f8, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f8, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f8, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f800000)
li x20, 0x0aab74a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f26, 0(x2) # load 0x7f800000 from memory into f26
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f8, 0(x2) # load 0x7f800000 from memory into f8
fsub.s f20, f26, f8, dyn # perform operation
fsub.s f20, f26, f8, rdn # perform operation
fsub.s f20, f26, f8, rmm # perform operation
fsub.s f20, f26, f8, rne # perform operation
fsub.s f20, f26, f8, rtz # perform operation
fsub.s f20, f26, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f26, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f26, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f26, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f26, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f26, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0xff800000)
li x5, 0x54923b37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f29, 0(x2) # load 0x7f800000 from memory into f29
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f17, 0(x2) # load 0xff800000 from memory into f17
fsub.s f5, f29, f17, dyn # perform operation
fsub.s f5, f29, f17, rdn # perform operation
fsub.s f5, f29, f17, rmm # perform operation
fsub.s f5, f29, f17, rne # perform operation
fsub.s f5, f29, f17, rtz # perform operation
fsub.s f5, f29, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f29, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f29, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f29, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f29, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f29, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fc00000)
li x6, 0x5a56b734 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f14, 0(x2) # load 0x7f800000 from memory into f14
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f3, 0(x2) # load 0x7fc00000 from memory into f3
fsub.s f6, f14, f3, dyn # perform operation
fsub.s f6, f14, f3, rdn # perform operation
fsub.s f6, f14, f3, rmm # perform operation
fsub.s f6, f14, f3, rne # perform operation
fsub.s f6, f14, f3, rtz # perform operation
fsub.s f6, f14, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f14, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f14, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f14, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f14, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f14, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fffffff)
li x14, 0x8406568b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f26, 0(x2) # load 0x7f800000 from memory into f26
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f23, 0(x2) # load 0x7fffffff from memory into f23
fsub.s f14, f26, f23, dyn # perform operation
fsub.s f14, f26, f23, rdn # perform operation
fsub.s f14, f26, f23, rmm # perform operation
fsub.s f14, f26, f23, rne # perform operation
fsub.s f14, f26, f23, rtz # perform operation
fsub.s f14, f26, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f26, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f26, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f26, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f26, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f26, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7f800001)
li x6, 0xdc7766e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f4, 0(x2) # load 0x7f800000 from memory into f4
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f31, 0(x2) # load 0x7f800001 from memory into f31
fsub.s f6, f4, f31, dyn # perform operation
fsub.s f6, f4, f31, rdn # perform operation
fsub.s f6, f4, f31, rmm # perform operation
fsub.s f6, f4, f31, rne # perform operation
fsub.s f6, f4, f31, rtz # perform operation
fsub.s f6, f4, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f4, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f4, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f4, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f4, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f4, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7fbfffff)
li x31, 0xcc66044a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f22, 0(x2) # load 0x7f800000 from memory into f22
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
fsub.s f31, f22, f16, dyn # perform operation
fsub.s f31, f22, f16, rdn # perform operation
fsub.s f31, f22, f16, rmm # perform operation
fsub.s f31, f22, f16, rne # perform operation
fsub.s f31, f22, f16, rtz # perform operation
fsub.s f31, f22, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f22, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f22, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f22, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f22, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f22, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x7ef8654f)
li x3, 0x1f0943e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f17, 0(x2) # load 0x7f800000 from memory into f17
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f12, 0(x2) # load 0x7ef8654f from memory into f12
fsub.s f3, f17, f12, dyn # perform operation
fsub.s f3, f17, f12, rdn # perform operation
fsub.s f3, f17, f12, rmm # perform operation
fsub.s f3, f17, f12, rne # perform operation
fsub.s f3, f17, f12, rtz # perform operation
fsub.s f3, f17, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f17, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f17, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f17, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f17, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f17, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800000 fs2 = 0x813d9ab0)
li x9, 0x75af7bfe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f29, 0(x2) # load 0x7f800000 from memory into f29
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
fsub.s f9, f29, f17, dyn # perform operation
fsub.s f9, f29, f17, rdn # perform operation
fsub.s f9, f29, f17, rmm # perform operation
fsub.s f9, f29, f17, rne # perform operation
fsub.s f9, f29, f17, rtz # perform operation
fsub.s f9, f29, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f29, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f29, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f29, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f29, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f29, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x0)
li x19, 0x7eb591eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f8, 0(x2) # load 0x00000000 from memory into f8
fsub.s f19, f9, f8, dyn # perform operation
fsub.s f19, f9, f8, rdn # perform operation
fsub.s f19, f9, f8, rmm # perform operation
fsub.s f19, f9, f8, rne # perform operation
fsub.s f19, f9, f8, rtz # perform operation
fsub.s f19, f9, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f9, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f9, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f9, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f9, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f9, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80000000)
li x7, 0x6c4de349 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f18, 0(x2) # load 0xff800000 from memory into f18
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f11, 0(x2) # load 0x80000000 from memory into f11
fsub.s f7, f18, f11, dyn # perform operation
fsub.s f7, f18, f11, rdn # perform operation
fsub.s f7, f18, f11, rmm # perform operation
fsub.s f7, f18, f11, rne # perform operation
fsub.s f7, f18, f11, rtz # perform operation
fsub.s f7, f18, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f18, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f18, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f18, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f18, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f18, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x3f800000)
li x14, 0x84bc150b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f15, 0(x2) # load 0xff800000 from memory into f15
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f3, 0(x2) # load 0x3f800000 from memory into f3
fsub.s f14, f15, f3, dyn # perform operation
fsub.s f14, f15, f3, rdn # perform operation
fsub.s f14, f15, f3, rmm # perform operation
fsub.s f14, f15, f3, rne # perform operation
fsub.s f14, f15, f3, rtz # perform operation
fsub.s f14, f15, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f15, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f15, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f15, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f15, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f15, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xbf800000)
li x25, 0xe93d744e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f12, 0(x2) # load 0xff800000 from memory into f12
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f4, 0(x2) # load 0xbf800000 from memory into f4
fsub.s f25, f12, f4, dyn # perform operation
fsub.s f25, f12, f4, rdn # perform operation
fsub.s f25, f12, f4, rmm # perform operation
fsub.s f25, f12, f4, rne # perform operation
fsub.s f25, f12, f4, rtz # perform operation
fsub.s f25, f12, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f12, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f12, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f12, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f12, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f12, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x3fc00000)
li x2, 0xbb7b0a8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f5, 0(x2) # load 0xff800000 from memory into f5
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f29, 0(x2) # load 0x3fc00000 from memory into f29
fsub.s f2, f5, f29, dyn # perform operation
fsub.s f2, f5, f29, rdn # perform operation
fsub.s f2, f5, f29, rmm # perform operation
fsub.s f2, f5, f29, rne # perform operation
fsub.s f2, f5, f29, rtz # perform operation
fsub.s f2, f5, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f5, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f5, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f5, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f5, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f5, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xbfc00000)
li x15, 0x9d9042f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f20, 0(x2) # load 0xff800000 from memory into f20
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f16, 0(x2) # load 0xbfc00000 from memory into f16
fsub.s f15, f20, f16, dyn # perform operation
fsub.s f15, f20, f16, rdn # perform operation
fsub.s f15, f20, f16, rmm # perform operation
fsub.s f15, f20, f16, rne # perform operation
fsub.s f15, f20, f16, rtz # perform operation
fsub.s f15, f20, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f20, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f20, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f20, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f20, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f20, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x40000000)
li x17, 0x34bc46e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f22, 0(x2) # load 0xff800000 from memory into f22
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f15, 0(x2) # load 0x40000000 from memory into f15
fsub.s f17, f22, f15, dyn # perform operation
fsub.s f17, f22, f15, rdn # perform operation
fsub.s f17, f22, f15, rmm # perform operation
fsub.s f17, f22, f15, rne # perform operation
fsub.s f17, f22, f15, rtz # perform operation
fsub.s f17, f22, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f22, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f22, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f22, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f22, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f22, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xc0000000)
li x1, 0xd25f0ff6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f26, 0(x2) # load 0xff800000 from memory into f26
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f4, 0(x2) # load 0xc0000000 from memory into f4
fsub.s f1, f26, f4, dyn # perform operation
fsub.s f1, f26, f4, rdn # perform operation
fsub.s f1, f26, f4, rmm # perform operation
fsub.s f1, f26, f4, rne # perform operation
fsub.s f1, f26, f4, rtz # perform operation
fsub.s f1, f26, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f26, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f26, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f26, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f26, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f26, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x800000)
li x12, 0x7fed4356 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f15, 0(x2) # load 0xff800000 from memory into f15
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f6, 0(x2) # load 0x00800000 from memory into f6
fsub.s f12, f15, f6, dyn # perform operation
fsub.s f12, f15, f6, rdn # perform operation
fsub.s f12, f15, f6, rmm # perform operation
fsub.s f12, f15, f6, rne # perform operation
fsub.s f12, f15, f6, rtz # perform operation
fsub.s f12, f15, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f15, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f15, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f15, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f15, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f15, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80800000)
li x10, 0xba18948c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f16, 0(x2) # load 0xff800000 from memory into f16
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f9, 0(x2) # load 0x80800000 from memory into f9
fsub.s f10, f16, f9, dyn # perform operation
fsub.s f10, f16, f9, rdn # perform operation
fsub.s f10, f16, f9, rmm # perform operation
fsub.s f10, f16, f9, rne # perform operation
fsub.s f10, f16, f9, rtz # perform operation
fsub.s f10, f16, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f16, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f16, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f16, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f16, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f16, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f7fffff)
li x8, 0x28050740 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f13, 0(x2) # load 0xff800000 from memory into f13
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f16, 0(x2) # load 0x7f7fffff from memory into f16
fsub.s f8, f13, f16, dyn # perform operation
fsub.s f8, f13, f16, rdn # perform operation
fsub.s f8, f13, f16, rmm # perform operation
fsub.s f8, f13, f16, rne # perform operation
fsub.s f8, f13, f16, rtz # perform operation
fsub.s f8, f13, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f13, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f13, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f13, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f13, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f13, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xff7fffff)
li x10, 0xe5a244c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f2, 0(x2) # load 0xff7fffff from memory into f2
fsub.s f10, f9, f2, dyn # perform operation
fsub.s f10, f9, f2, rdn # perform operation
fsub.s f10, f9, f2, rmm # perform operation
fsub.s f10, f9, f2, rne # perform operation
fsub.s f10, f9, f2, rtz # perform operation
fsub.s f10, f9, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f9, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f9, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f9, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f9, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f9, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fffff)
li x13, 0x5b4dd7ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f9, 0(x2) # load 0xff800000 from memory into f9
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f20, 0(x2) # load 0x007fffff from memory into f20
fsub.s f13, f9, f20, dyn # perform operation
fsub.s f13, f9, f20, rdn # perform operation
fsub.s f13, f9, f20, rmm # perform operation
fsub.s f13, f9, f20, rne # perform operation
fsub.s f13, f9, f20, rtz # perform operation
fsub.s f13, f9, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f9, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f9, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f9, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f9, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f9, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x807fffff)
li x3, 0xc5ac96e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f19, 0(x2) # load 0xff800000 from memory into f19
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f11, 0(x2) # load 0x807fffff from memory into f11
fsub.s f3, f19, f11, dyn # perform operation
fsub.s f3, f19, f11, rdn # perform operation
fsub.s f3, f19, f11, rmm # perform operation
fsub.s f3, f19, f11, rne # perform operation
fsub.s f3, f19, f11, rtz # perform operation
fsub.s f3, f19, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f19, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f19, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f19, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f19, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f19, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x400000)
li x13, 0x7609bbdf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f5, 0(x2) # load 0xff800000 from memory into f5
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f23, 0(x2) # load 0x00400000 from memory into f23
fsub.s f13, f5, f23, dyn # perform operation
fsub.s f13, f5, f23, rdn # perform operation
fsub.s f13, f5, f23, rmm # perform operation
fsub.s f13, f5, f23, rne # perform operation
fsub.s f13, f5, f23, rtz # perform operation
fsub.s f13, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f5, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80400000)
li x6, 0x8117ece6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f11, 0(x2) # load 0xff800000 from memory into f11
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f13, 0(x2) # load 0x80400000 from memory into f13
fsub.s f6, f11, f13, dyn # perform operation
fsub.s f6, f11, f13, rdn # perform operation
fsub.s f6, f11, f13, rmm # perform operation
fsub.s f6, f11, f13, rne # perform operation
fsub.s f6, f11, f13, rtz # perform operation
fsub.s f6, f11, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f11, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f11, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f11, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f11, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f11, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x1)
li x4, 0xbeca5fc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f27, 0(x2) # load 0xff800000 from memory into f27
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
fsub.s f4, f27, f2, dyn # perform operation
fsub.s f4, f27, f2, rdn # perform operation
fsub.s f4, f27, f2, rmm # perform operation
fsub.s f4, f27, f2, rne # perform operation
fsub.s f4, f27, f2, rtz # perform operation
fsub.s f4, f27, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f4, f27, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f4, f27, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f4, f27, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f4, f27, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f4, f27, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x80000001)
li x5, 0x7a267011 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f7, 0(x2) # load 0xff800000 from memory into f7
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f15, 0(x2) # load 0x80000001 from memory into f15
fsub.s f5, f7, f15, dyn # perform operation
fsub.s f5, f7, f15, rdn # perform operation
fsub.s f5, f7, f15, rmm # perform operation
fsub.s f5, f7, f15, rne # perform operation
fsub.s f5, f7, f15, rtz # perform operation
fsub.s f5, f7, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f7, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f7, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f7, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f7, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f7, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f800000)
li x13, 0x8b757b22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f19, 0(x2) # load 0xff800000 from memory into f19
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f4, 0(x2) # load 0x7f800000 from memory into f4
fsub.s f13, f19, f4, dyn # perform operation
fsub.s f13, f19, f4, rdn # perform operation
fsub.s f13, f19, f4, rmm # perform operation
fsub.s f13, f19, f4, rne # perform operation
fsub.s f13, f19, f4, rtz # perform operation
fsub.s f13, f19, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f19, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f19, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f19, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f19, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f19, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0xff800000)
li x12, 0xde28fe0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f22, 0(x2) # load 0xff800000 from memory into f22
fsub.s f12, f30, f22, dyn # perform operation
fsub.s f12, f30, f22, rdn # perform operation
fsub.s f12, f30, f22, rmm # perform operation
fsub.s f12, f30, f22, rne # perform operation
fsub.s f12, f30, f22, rtz # perform operation
fsub.s f12, f30, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f30, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f30, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f30, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f30, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f30, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fc00000)
li x5, 0x745c5612 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f3, 0(x2) # load 0xff800000 from memory into f3
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f25, 0(x2) # load 0x7fc00000 from memory into f25
fsub.s f5, f3, f25, dyn # perform operation
fsub.s f5, f3, f25, rdn # perform operation
fsub.s f5, f3, f25, rmm # perform operation
fsub.s f5, f3, f25, rne # perform operation
fsub.s f5, f3, f25, rtz # perform operation
fsub.s f5, f3, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f3, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f3, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f3, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f3, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f3, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fffffff)
li x27, 0xa42b2f2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f30, 0(x2) # load 0xff800000 from memory into f30
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f10, 0(x2) # load 0x7fffffff from memory into f10
fsub.s f27, f30, f10, dyn # perform operation
fsub.s f27, f30, f10, rdn # perform operation
fsub.s f27, f30, f10, rmm # perform operation
fsub.s f27, f30, f10, rne # perform operation
fsub.s f27, f30, f10, rtz # perform operation
fsub.s f27, f30, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f30, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f30, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f30, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f30, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f30, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7f800001)
li x2, 0x09505403 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f11, 0(x2) # load 0xff800000 from memory into f11
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f24, 0(x2) # load 0x7f800001 from memory into f24
fsub.s f2, f11, f24, dyn # perform operation
fsub.s f2, f11, f24, rdn # perform operation
fsub.s f2, f11, f24, rmm # perform operation
fsub.s f2, f11, f24, rne # perform operation
fsub.s f2, f11, f24, rtz # perform operation
fsub.s f2, f11, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f11, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f11, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f11, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f11, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f11, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7fbfffff)
li x11, 0x4aaeca79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f8, 0(x2) # load 0xff800000 from memory into f8
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f20, 0(x2) # load 0x7fbfffff from memory into f20
fsub.s f11, f8, f20, dyn # perform operation
fsub.s f11, f8, f20, rdn # perform operation
fsub.s f11, f8, f20, rmm # perform operation
fsub.s f11, f8, f20, rne # perform operation
fsub.s f11, f8, f20, rtz # perform operation
fsub.s f11, f8, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f8, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f8, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f8, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f8, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f8, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x7ef8654f)
li x4, 0xea97b480 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f21, 0(x2) # load 0xff800000 from memory into f21
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
fsub.s f4, f21, f16, dyn # perform operation
fsub.s f4, f21, f16, rdn # perform operation
fsub.s f4, f21, f16, rmm # perform operation
fsub.s f4, f21, f16, rne # perform operation
fsub.s f4, f21, f16, rtz # perform operation
fsub.s f4, f21, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f4, f21, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f4, f21, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f4, f21, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f4, f21, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f4, f21, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xff800000 fs2 = 0x813d9ab0)
li x4, 0xed600ed3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f25, 0(x2) # load 0xff800000 from memory into f25
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f1, 0(x2) # load 0x813d9ab0 from memory into f1
fsub.s f4, f25, f1, dyn # perform operation
fsub.s f4, f25, f1, rdn # perform operation
fsub.s f4, f25, f1, rmm # perform operation
fsub.s f4, f25, f1, rne # perform operation
fsub.s f4, f25, f1, rtz # perform operation
fsub.s f4, f25, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f4, f25, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f4, f25, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f4, f25, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f4, f25, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f4, f25, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x0)
li x30, 0xc032c8fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f15, 0(x2) # load 0x7fc00000 from memory into f15
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f22, 0(x2) # load 0x00000000 from memory into f22
fsub.s f30, f15, f22, dyn # perform operation
fsub.s f30, f15, f22, rdn # perform operation
fsub.s f30, f15, f22, rmm # perform operation
fsub.s f30, f15, f22, rne # perform operation
fsub.s f30, f15, f22, rtz # perform operation
fsub.s f30, f15, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f15, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f15, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f15, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f15, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f15, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80000000)
li x13, 0x0678819f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f26, 0(x2) # load 0x7fc00000 from memory into f26
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f8, 0(x2) # load 0x80000000 from memory into f8
fsub.s f13, f26, f8, dyn # perform operation
fsub.s f13, f26, f8, rdn # perform operation
fsub.s f13, f26, f8, rmm # perform operation
fsub.s f13, f26, f8, rne # perform operation
fsub.s f13, f26, f8, rtz # perform operation
fsub.s f13, f26, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f26, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f26, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f26, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f26, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f26, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x3f800000)
li x20, 0xb3a2aab3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f28, 0(x2) # load 0x7fc00000 from memory into f28
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f23, 0(x2) # load 0x3f800000 from memory into f23
fsub.s f20, f28, f23, dyn # perform operation
fsub.s f20, f28, f23, rdn # perform operation
fsub.s f20, f28, f23, rmm # perform operation
fsub.s f20, f28, f23, rne # perform operation
fsub.s f20, f28, f23, rtz # perform operation
fsub.s f20, f28, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f28, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f28, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f28, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f28, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f28, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xbf800000)
li x22, 0x4c7ccd59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f20, 0(x2) # load 0xbf800000 from memory into f20
fsub.s f22, f7, f20, dyn # perform operation
fsub.s f22, f7, f20, rdn # perform operation
fsub.s f22, f7, f20, rmm # perform operation
fsub.s f22, f7, f20, rne # perform operation
fsub.s f22, f7, f20, rtz # perform operation
fsub.s f22, f7, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f7, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f7, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f7, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f7, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f7, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x3fc00000)
li x15, 0x449c0c1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f20, 0(x2) # load 0x7fc00000 from memory into f20
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f13, 0(x2) # load 0x3fc00000 from memory into f13
fsub.s f15, f20, f13, dyn # perform operation
fsub.s f15, f20, f13, rdn # perform operation
fsub.s f15, f20, f13, rmm # perform operation
fsub.s f15, f20, f13, rne # perform operation
fsub.s f15, f20, f13, rtz # perform operation
fsub.s f15, f20, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f20, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f20, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f20, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f20, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f20, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xbfc00000)
li x10, 0x75e89302 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f8, 0(x2) # load 0x7fc00000 from memory into f8
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f18, 0(x2) # load 0xbfc00000 from memory into f18
fsub.s f10, f8, f18, dyn # perform operation
fsub.s f10, f8, f18, rdn # perform operation
fsub.s f10, f8, f18, rmm # perform operation
fsub.s f10, f8, f18, rne # perform operation
fsub.s f10, f8, f18, rtz # perform operation
fsub.s f10, f8, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f8, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f8, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f8, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f8, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f8, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x40000000)
li x31, 0x80d02991 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f10, 0(x2) # load 0x7fc00000 from memory into f10
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f18, 0(x2) # load 0x40000000 from memory into f18
fsub.s f31, f10, f18, dyn # perform operation
fsub.s f31, f10, f18, rdn # perform operation
fsub.s f31, f10, f18, rmm # perform operation
fsub.s f31, f10, f18, rne # perform operation
fsub.s f31, f10, f18, rtz # perform operation
fsub.s f31, f10, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f10, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f10, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f10, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f10, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f10, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xc0000000)
li x4, 0x42cdf352 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f8, 0(x2) # load 0x7fc00000 from memory into f8
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f7, 0(x2) # load 0xc0000000 from memory into f7
fsub.s f4, f8, f7, dyn # perform operation
fsub.s f4, f8, f7, rdn # perform operation
fsub.s f4, f8, f7, rmm # perform operation
fsub.s f4, f8, f7, rne # perform operation
fsub.s f4, f8, f7, rtz # perform operation
fsub.s f4, f8, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f4, f8, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f4, f8, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f4, f8, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f4, f8, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f4, f8, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x800000)
li x6, 0x412b4b7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f26, 0(x2) # load 0x7fc00000 from memory into f26
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f20, 0(x2) # load 0x00800000 from memory into f20
fsub.s f6, f26, f20, dyn # perform operation
fsub.s f6, f26, f20, rdn # perform operation
fsub.s f6, f26, f20, rmm # perform operation
fsub.s f6, f26, f20, rne # perform operation
fsub.s f6, f26, f20, rtz # perform operation
fsub.s f6, f26, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f26, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f26, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f26, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f26, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f26, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80800000)
li x6, 0x6c43c985 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f1, 0(x2) # load 0x7fc00000 from memory into f1
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
fsub.s f6, f1, f20, dyn # perform operation
fsub.s f6, f1, f20, rdn # perform operation
fsub.s f6, f1, f20, rmm # perform operation
fsub.s f6, f1, f20, rne # perform operation
fsub.s f6, f1, f20, rtz # perform operation
fsub.s f6, f1, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f1, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f1, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f1, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f1, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f1, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f7fffff)
li x31, 0x90f7a385 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f27, 0(x2) # load 0x7fc00000 from memory into f27
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f9, 0(x2) # load 0x7f7fffff from memory into f9
fsub.s f31, f27, f9, dyn # perform operation
fsub.s f31, f27, f9, rdn # perform operation
fsub.s f31, f27, f9, rmm # perform operation
fsub.s f31, f27, f9, rne # perform operation
fsub.s f31, f27, f9, rtz # perform operation
fsub.s f31, f27, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f27, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f27, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f27, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f27, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f27, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xff7fffff)
li x22, 0x191a71a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f7, 0(x2) # load 0x7fc00000 from memory into f7
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f5, 0(x2) # load 0xff7fffff from memory into f5
fsub.s f22, f7, f5, dyn # perform operation
fsub.s f22, f7, f5, rdn # perform operation
fsub.s f22, f7, f5, rmm # perform operation
fsub.s f22, f7, f5, rne # perform operation
fsub.s f22, f7, f5, rtz # perform operation
fsub.s f22, f7, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f7, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f7, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f7, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f7, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f7, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fffff)
li x11, 0x5dc3e97b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f30, 0(x2) # load 0x7fc00000 from memory into f30
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f17, 0(x2) # load 0x007fffff from memory into f17
fsub.s f11, f30, f17, dyn # perform operation
fsub.s f11, f30, f17, rdn # perform operation
fsub.s f11, f30, f17, rmm # perform operation
fsub.s f11, f30, f17, rne # perform operation
fsub.s f11, f30, f17, rtz # perform operation
fsub.s f11, f30, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f30, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f30, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f30, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f30, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f30, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x807fffff)
li x4, 0x15220fcb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f2, 0(x2) # load 0x7fc00000 from memory into f2
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f19, 0(x2) # load 0x807fffff from memory into f19
fsub.s f4, f2, f19, dyn # perform operation
fsub.s f4, f2, f19, rdn # perform operation
fsub.s f4, f2, f19, rmm # perform operation
fsub.s f4, f2, f19, rne # perform operation
fsub.s f4, f2, f19, rtz # perform operation
fsub.s f4, f2, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f4, f2, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f4, f2, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f4, f2, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f4, f2, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f4, f2, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x400000)
li x27, 0xf231504a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f29, 0(x2) # load 0x7fc00000 from memory into f29
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f9, 0(x2) # load 0x00400000 from memory into f9
fsub.s f27, f29, f9, dyn # perform operation
fsub.s f27, f29, f9, rdn # perform operation
fsub.s f27, f29, f9, rmm # perform operation
fsub.s f27, f29, f9, rne # perform operation
fsub.s f27, f29, f9, rtz # perform operation
fsub.s f27, f29, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f29, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f29, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f29, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f29, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f29, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80400000)
li x20, 0x7e5e7f8a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f23, 0(x2) # load 0x7fc00000 from memory into f23
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f15, 0(x2) # load 0x80400000 from memory into f15
fsub.s f20, f23, f15, dyn # perform operation
fsub.s f20, f23, f15, rdn # perform operation
fsub.s f20, f23, f15, rmm # perform operation
fsub.s f20, f23, f15, rne # perform operation
fsub.s f20, f23, f15, rtz # perform operation
fsub.s f20, f23, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f23, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f23, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f23, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f23, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f23, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x1)
li x21, 0x59da5fca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f30, 0(x2) # load 0x7fc00000 from memory into f30
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f10, 0(x2) # load 0x00000001 from memory into f10
fsub.s f21, f30, f10, dyn # perform operation
fsub.s f21, f30, f10, rdn # perform operation
fsub.s f21, f30, f10, rmm # perform operation
fsub.s f21, f30, f10, rne # perform operation
fsub.s f21, f30, f10, rtz # perform operation
fsub.s f21, f30, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f30, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f30, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f30, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f30, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f30, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x80000001)
li x25, 0x219346fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f27, 0(x2) # load 0x7fc00000 from memory into f27
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f13, 0(x2) # load 0x80000001 from memory into f13
fsub.s f25, f27, f13, dyn # perform operation
fsub.s f25, f27, f13, rdn # perform operation
fsub.s f25, f27, f13, rmm # perform operation
fsub.s f25, f27, f13, rne # perform operation
fsub.s f25, f27, f13, rtz # perform operation
fsub.s f25, f27, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f27, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f27, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f27, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f27, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f27, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f800000)
li x4, 0x83b058fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f13, 0(x2) # load 0x7fc00000 from memory into f13
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f30, 0(x2) # load 0x7f800000 from memory into f30
fsub.s f4, f13, f30, dyn # perform operation
fsub.s f4, f13, f30, rdn # perform operation
fsub.s f4, f13, f30, rmm # perform operation
fsub.s f4, f13, f30, rne # perform operation
fsub.s f4, f13, f30, rtz # perform operation
fsub.s f4, f13, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f4, f13, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f4, f13, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f4, f13, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f4, f13, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f4, f13, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0xff800000)
li x26, 0xe01c0ae2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f9, 0(x2) # load 0x7fc00000 from memory into f9
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f29, 0(x2) # load 0xff800000 from memory into f29
fsub.s f26, f9, f29, dyn # perform operation
fsub.s f26, f9, f29, rdn # perform operation
fsub.s f26, f9, f29, rmm # perform operation
fsub.s f26, f9, f29, rne # perform operation
fsub.s f26, f9, f29, rtz # perform operation
fsub.s f26, f9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f9, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f9, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f9, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f9, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f9, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fc00000)
li x27, 0x76128020 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f17, 0(x2) # load 0x7fc00000 from memory into f17
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f1, 0(x2) # load 0x7fc00000 from memory into f1
fsub.s f27, f17, f1, dyn # perform operation
fsub.s f27, f17, f1, rdn # perform operation
fsub.s f27, f17, f1, rmm # perform operation
fsub.s f27, f17, f1, rne # perform operation
fsub.s f27, f17, f1, rtz # perform operation
fsub.s f27, f17, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f17, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f17, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f17, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f17, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f17, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fffffff)
li x3, 0x93100d28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f24, 0(x2) # load 0x7fc00000 from memory into f24
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f11, 0(x2) # load 0x7fffffff from memory into f11
fsub.s f3, f24, f11, dyn # perform operation
fsub.s f3, f24, f11, rdn # perform operation
fsub.s f3, f24, f11, rmm # perform operation
fsub.s f3, f24, f11, rne # perform operation
fsub.s f3, f24, f11, rtz # perform operation
fsub.s f3, f24, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f24, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f24, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f24, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f24, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f24, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7f800001)
li x9, 0x7e062dd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f24, 0(x2) # load 0x7fc00000 from memory into f24
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f18, 0(x2) # load 0x7f800001 from memory into f18
fsub.s f9, f24, f18, dyn # perform operation
fsub.s f9, f24, f18, rdn # perform operation
fsub.s f9, f24, f18, rmm # perform operation
fsub.s f9, f24, f18, rne # perform operation
fsub.s f9, f24, f18, rtz # perform operation
fsub.s f9, f24, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f24, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f24, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f24, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f24, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f24, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7fbfffff)
li x10, 0x3963ae22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f2, 0(x2) # load 0x7fc00000 from memory into f2
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f5, 0(x2) # load 0x7fbfffff from memory into f5
fsub.s f10, f2, f5, dyn # perform operation
fsub.s f10, f2, f5, rdn # perform operation
fsub.s f10, f2, f5, rmm # perform operation
fsub.s f10, f2, f5, rne # perform operation
fsub.s f10, f2, f5, rtz # perform operation
fsub.s f10, f2, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f2, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f2, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f2, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f2, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f2, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x7ef8654f)
li x30, 0x00d09eaa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f23, 0(x2) # load 0x7fc00000 from memory into f23
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f5, 0(x2) # load 0x7ef8654f from memory into f5
fsub.s f30, f23, f5, dyn # perform operation
fsub.s f30, f23, f5, rdn # perform operation
fsub.s f30, f23, f5, rmm # perform operation
fsub.s f30, f23, f5, rne # perform operation
fsub.s f30, f23, f5, rtz # perform operation
fsub.s f30, f23, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f23, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f23, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f23, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f23, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f23, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fc00000 fs2 = 0x813d9ab0)
li x1, 0x08d11079 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f29, 0(x2) # load 0x7fc00000 from memory into f29
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f19, 0(x2) # load 0x813d9ab0 from memory into f19
fsub.s f1, f29, f19, dyn # perform operation
fsub.s f1, f29, f19, rdn # perform operation
fsub.s f1, f29, f19, rmm # perform operation
fsub.s f1, f29, f19, rne # perform operation
fsub.s f1, f29, f19, rtz # perform operation
fsub.s f1, f29, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f1, f29, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f1, f29, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f1, f29, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f1, f29, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f1, f29, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x0)
li x13, 0xe8ce9127 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f26, 0(x2) # load 0x00000000 from memory into f26
fsub.s f13, f12, f26, dyn # perform operation
fsub.s f13, f12, f26, rdn # perform operation
fsub.s f13, f12, f26, rmm # perform operation
fsub.s f13, f12, f26, rne # perform operation
fsub.s f13, f12, f26, rtz # perform operation
fsub.s f13, f12, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f12, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f12, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f12, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f12, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f12, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80000000)
li x9, 0xef84293a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f21, 0(x2) # load 0x7fffffff from memory into f21
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f19, 0(x2) # load 0x80000000 from memory into f19
fsub.s f9, f21, f19, dyn # perform operation
fsub.s f9, f21, f19, rdn # perform operation
fsub.s f9, f21, f19, rmm # perform operation
fsub.s f9, f21, f19, rne # perform operation
fsub.s f9, f21, f19, rtz # perform operation
fsub.s f9, f21, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f21, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f21, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f21, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f21, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f21, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x3f800000)
li x13, 0xd4ebc3ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f6, 0(x2) # load 0x3f800000 from memory into f6
fsub.s f13, f19, f6, dyn # perform operation
fsub.s f13, f19, f6, rdn # perform operation
fsub.s f13, f19, f6, rmm # perform operation
fsub.s f13, f19, f6, rne # perform operation
fsub.s f13, f19, f6, rtz # perform operation
fsub.s f13, f19, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f19, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f19, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f19, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f19, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f19, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xbf800000)
li x24, 0x01101d61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f9, 0(x2) # load 0xbf800000 from memory into f9
fsub.s f24, f5, f9, dyn # perform operation
fsub.s f24, f5, f9, rdn # perform operation
fsub.s f24, f5, f9, rmm # perform operation
fsub.s f24, f5, f9, rne # perform operation
fsub.s f24, f5, f9, rtz # perform operation
fsub.s f24, f5, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f5, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f5, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f5, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f5, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f5, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x3fc00000)
li x31, 0x3a38b55a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f4, 0(x2) # load 0x7fffffff from memory into f4
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f25, 0(x2) # load 0x3fc00000 from memory into f25
fsub.s f31, f4, f25, dyn # perform operation
fsub.s f31, f4, f25, rdn # perform operation
fsub.s f31, f4, f25, rmm # perform operation
fsub.s f31, f4, f25, rne # perform operation
fsub.s f31, f4, f25, rtz # perform operation
fsub.s f31, f4, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f4, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f4, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f4, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f4, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f4, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xbfc00000)
li x19, 0xefbb17b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f11, 0(x2) # load 0x7fffffff from memory into f11
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f10, 0(x2) # load 0xbfc00000 from memory into f10
fsub.s f19, f11, f10, dyn # perform operation
fsub.s f19, f11, f10, rdn # perform operation
fsub.s f19, f11, f10, rmm # perform operation
fsub.s f19, f11, f10, rne # perform operation
fsub.s f19, f11, f10, rtz # perform operation
fsub.s f19, f11, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f11, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f11, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f11, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f11, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f11, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x40000000)
li x7, 0x425e576b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f15, 0(x2) # load 0x7fffffff from memory into f15
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f10, 0(x2) # load 0x40000000 from memory into f10
fsub.s f7, f15, f10, dyn # perform operation
fsub.s f7, f15, f10, rdn # perform operation
fsub.s f7, f15, f10, rmm # perform operation
fsub.s f7, f15, f10, rne # perform operation
fsub.s f7, f15, f10, rtz # perform operation
fsub.s f7, f15, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f15, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f15, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f15, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f15, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f15, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xc0000000)
li x10, 0x13e35263 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f16, 0(x2) # load 0x7fffffff from memory into f16
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f27, 0(x2) # load 0xc0000000 from memory into f27
fsub.s f10, f16, f27, dyn # perform operation
fsub.s f10, f16, f27, rdn # perform operation
fsub.s f10, f16, f27, rmm # perform operation
fsub.s f10, f16, f27, rne # perform operation
fsub.s f10, f16, f27, rtz # perform operation
fsub.s f10, f16, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f16, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f16, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f16, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f16, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f16, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x800000)
li x26, 0xafe83287 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f7, 0(x2) # load 0x7fffffff from memory into f7
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f28, 0(x2) # load 0x00800000 from memory into f28
fsub.s f26, f7, f28, dyn # perform operation
fsub.s f26, f7, f28, rdn # perform operation
fsub.s f26, f7, f28, rmm # perform operation
fsub.s f26, f7, f28, rne # perform operation
fsub.s f26, f7, f28, rtz # perform operation
fsub.s f26, f7, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f7, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f7, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f7, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f7, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f7, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80800000)
li x9, 0xf37f6ee9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f18, 0(x2) # load 0x80800000 from memory into f18
fsub.s f9, f2, f18, dyn # perform operation
fsub.s f9, f2, f18, rdn # perform operation
fsub.s f9, f2, f18, rmm # perform operation
fsub.s f9, f2, f18, rne # perform operation
fsub.s f9, f2, f18, rtz # perform operation
fsub.s f9, f2, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f2, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f2, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f2, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f2, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f2, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f7fffff)
li x15, 0x8960b01b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f6, 0(x2) # load 0x7f7fffff from memory into f6
fsub.s f15, f12, f6, dyn # perform operation
fsub.s f15, f12, f6, rdn # perform operation
fsub.s f15, f12, f6, rmm # perform operation
fsub.s f15, f12, f6, rne # perform operation
fsub.s f15, f12, f6, rtz # perform operation
fsub.s f15, f12, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f12, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f12, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f12, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f12, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f12, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xff7fffff)
li x16, 0xc375fc62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f13, 0(x2) # load 0x7fffffff from memory into f13
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f21, 0(x2) # load 0xff7fffff from memory into f21
fsub.s f16, f13, f21, dyn # perform operation
fsub.s f16, f13, f21, rdn # perform operation
fsub.s f16, f13, f21, rmm # perform operation
fsub.s f16, f13, f21, rne # perform operation
fsub.s f16, f13, f21, rtz # perform operation
fsub.s f16, f13, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f13, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f13, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f13, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f13, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f13, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fffff)
li x8, 0x2bec6ee9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f3, 0(x2) # load 0x7fffffff from memory into f3
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f13, 0(x2) # load 0x007fffff from memory into f13
fsub.s f8, f3, f13, dyn # perform operation
fsub.s f8, f3, f13, rdn # perform operation
fsub.s f8, f3, f13, rmm # perform operation
fsub.s f8, f3, f13, rne # perform operation
fsub.s f8, f3, f13, rtz # perform operation
fsub.s f8, f3, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f3, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f3, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f3, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f3, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f3, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x807fffff)
li x29, 0x6634480f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f12, 0(x2) # load 0x7fffffff from memory into f12
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
fsub.s f29, f12, f3, dyn # perform operation
fsub.s f29, f12, f3, rdn # perform operation
fsub.s f29, f12, f3, rmm # perform operation
fsub.s f29, f12, f3, rne # perform operation
fsub.s f29, f12, f3, rtz # perform operation
fsub.s f29, f12, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f12, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f12, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f12, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f12, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f12, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x400000)
li x17, 0x2272520d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f16, 0(x2) # load 0x7fffffff from memory into f16
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f1, 0(x2) # load 0x00400000 from memory into f1
fsub.s f17, f16, f1, dyn # perform operation
fsub.s f17, f16, f1, rdn # perform operation
fsub.s f17, f16, f1, rmm # perform operation
fsub.s f17, f16, f1, rne # perform operation
fsub.s f17, f16, f1, rtz # perform operation
fsub.s f17, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f16, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80400000)
li x22, 0xdd0c51ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f7, 0(x2) # load 0x80400000 from memory into f7
fsub.s f22, f2, f7, dyn # perform operation
fsub.s f22, f2, f7, rdn # perform operation
fsub.s f22, f2, f7, rmm # perform operation
fsub.s f22, f2, f7, rne # perform operation
fsub.s f22, f2, f7, rtz # perform operation
fsub.s f22, f2, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f2, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f2, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f2, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f2, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f2, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x1)
li x16, 0xcf004a47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f9, 0(x2) # load 0x7fffffff from memory into f9
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f6, 0(x2) # load 0x00000001 from memory into f6
fsub.s f16, f9, f6, dyn # perform operation
fsub.s f16, f9, f6, rdn # perform operation
fsub.s f16, f9, f6, rmm # perform operation
fsub.s f16, f9, f6, rne # perform operation
fsub.s f16, f9, f6, rtz # perform operation
fsub.s f16, f9, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f9, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f9, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f9, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f9, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f9, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x80000001)
li x24, 0xcb52108b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f31, 0(x2) # load 0x7fffffff from memory into f31
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
fsub.s f24, f31, f7, dyn # perform operation
fsub.s f24, f31, f7, rdn # perform operation
fsub.s f24, f31, f7, rmm # perform operation
fsub.s f24, f31, f7, rne # perform operation
fsub.s f24, f31, f7, rtz # perform operation
fsub.s f24, f31, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f31, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f31, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f31, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f31, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f31, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f800000)
li x24, 0x0a89c2d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f5, 0(x2) # load 0x7fffffff from memory into f5
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f1, 0(x2) # load 0x7f800000 from memory into f1
fsub.s f24, f5, f1, dyn # perform operation
fsub.s f24, f5, f1, rdn # perform operation
fsub.s f24, f5, f1, rmm # perform operation
fsub.s f24, f5, f1, rne # perform operation
fsub.s f24, f5, f1, rtz # perform operation
fsub.s f24, f5, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f5, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f5, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f5, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f5, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f5, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0xff800000)
li x30, 0xfe3bf446 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f26, 0(x2) # load 0x7fffffff from memory into f26
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f31, 0(x2) # load 0xff800000 from memory into f31
fsub.s f30, f26, f31, dyn # perform operation
fsub.s f30, f26, f31, rdn # perform operation
fsub.s f30, f26, f31, rmm # perform operation
fsub.s f30, f26, f31, rne # perform operation
fsub.s f30, f26, f31, rtz # perform operation
fsub.s f30, f26, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f26, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f26, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f26, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f26, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f26, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fc00000)
li x4, 0xdca2e071 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f31, 0(x2) # load 0x7fffffff from memory into f31
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f18, 0(x2) # load 0x7fc00000 from memory into f18
fsub.s f4, f31, f18, dyn # perform operation
fsub.s f4, f31, f18, rdn # perform operation
fsub.s f4, f31, f18, rmm # perform operation
fsub.s f4, f31, f18, rne # perform operation
fsub.s f4, f31, f18, rtz # perform operation
fsub.s f4, f31, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f4, f31, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f4, f31, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f4, f31, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f4, f31, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f4, f31, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fffffff)
li x14, 0x4f028422 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f19, 0(x2) # load 0x7fffffff from memory into f19
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f6, 0(x2) # load 0x7fffffff from memory into f6
fsub.s f14, f19, f6, dyn # perform operation
fsub.s f14, f19, f6, rdn # perform operation
fsub.s f14, f19, f6, rmm # perform operation
fsub.s f14, f19, f6, rne # perform operation
fsub.s f14, f19, f6, rtz # perform operation
fsub.s f14, f19, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f19, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f19, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f19, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f19, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f19, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7f800001)
li x15, 0x296804fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f29, 0(x2) # load 0x7fffffff from memory into f29
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f24, 0(x2) # load 0x7f800001 from memory into f24
fsub.s f15, f29, f24, dyn # perform operation
fsub.s f15, f29, f24, rdn # perform operation
fsub.s f15, f29, f24, rmm # perform operation
fsub.s f15, f29, f24, rne # perform operation
fsub.s f15, f29, f24, rtz # perform operation
fsub.s f15, f29, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f29, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f29, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f29, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f29, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f29, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7fbfffff)
li x12, 0x9ccbe1c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f14, 0(x2) # load 0x7fffffff from memory into f14
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f30, 0(x2) # load 0x7fbfffff from memory into f30
fsub.s f12, f14, f30, dyn # perform operation
fsub.s f12, f14, f30, rdn # perform operation
fsub.s f12, f14, f30, rmm # perform operation
fsub.s f12, f14, f30, rne # perform operation
fsub.s f12, f14, f30, rtz # perform operation
fsub.s f12, f14, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f14, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f14, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f14, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f14, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f14, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x7ef8654f)
li x3, 0x6007e3b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f6, 0(x2) # load 0x7fffffff from memory into f6
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f31, 0(x2) # load 0x7ef8654f from memory into f31
fsub.s f3, f6, f31, dyn # perform operation
fsub.s f3, f6, f31, rdn # perform operation
fsub.s f3, f6, f31, rmm # perform operation
fsub.s f3, f6, f31, rne # perform operation
fsub.s f3, f6, f31, rtz # perform operation
fsub.s f3, f6, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f6, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f6, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f6, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f6, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f6, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffff fs2 = 0x813d9ab0)
li x25, 0x3e99e0ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f17, 0(x2) # load 0x7fffffff from memory into f17
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f27, 0(x2) # load 0x813d9ab0 from memory into f27
fsub.s f25, f17, f27, dyn # perform operation
fsub.s f25, f17, f27, rdn # perform operation
fsub.s f25, f17, f27, rmm # perform operation
fsub.s f25, f17, f27, rne # perform operation
fsub.s f25, f17, f27, rtz # perform operation
fsub.s f25, f17, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f17, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f17, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f17, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f17, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f17, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x0)
li x24, 0xa8964747 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f1, 0(x2) # load 0x7f800001 from memory into f1
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f27, 0(x2) # load 0x00000000 from memory into f27
fsub.s f24, f1, f27, dyn # perform operation
fsub.s f24, f1, f27, rdn # perform operation
fsub.s f24, f1, f27, rmm # perform operation
fsub.s f24, f1, f27, rne # perform operation
fsub.s f24, f1, f27, rtz # perform operation
fsub.s f24, f1, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f1, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f1, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f1, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f1, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f1, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80000000)
li x17, 0x827ccc3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f29, 0(x2) # load 0x7f800001 from memory into f29
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f25, 0(x2) # load 0x80000000 from memory into f25
fsub.s f17, f29, f25, dyn # perform operation
fsub.s f17, f29, f25, rdn # perform operation
fsub.s f17, f29, f25, rmm # perform operation
fsub.s f17, f29, f25, rne # perform operation
fsub.s f17, f29, f25, rtz # perform operation
fsub.s f17, f29, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f29, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f29, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f29, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f29, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f29, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x3f800000)
li x29, 0x621df68b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f2, 0(x2) # load 0x7f800001 from memory into f2
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f18, 0(x2) # load 0x3f800000 from memory into f18
fsub.s f29, f2, f18, dyn # perform operation
fsub.s f29, f2, f18, rdn # perform operation
fsub.s f29, f2, f18, rmm # perform operation
fsub.s f29, f2, f18, rne # perform operation
fsub.s f29, f2, f18, rtz # perform operation
fsub.s f29, f2, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f2, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f2, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f2, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f2, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f2, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xbf800000)
li x19, 0xd302e8ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f30, 0(x2) # load 0x7f800001 from memory into f30
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f7, 0(x2) # load 0xbf800000 from memory into f7
fsub.s f19, f30, f7, dyn # perform operation
fsub.s f19, f30, f7, rdn # perform operation
fsub.s f19, f30, f7, rmm # perform operation
fsub.s f19, f30, f7, rne # perform operation
fsub.s f19, f30, f7, rtz # perform operation
fsub.s f19, f30, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f30, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f30, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f30, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f30, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f30, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x3fc00000)
li x8, 0x1c797a37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f12, 0(x2) # load 0x7f800001 from memory into f12
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f28, 0(x2) # load 0x3fc00000 from memory into f28
fsub.s f8, f12, f28, dyn # perform operation
fsub.s f8, f12, f28, rdn # perform operation
fsub.s f8, f12, f28, rmm # perform operation
fsub.s f8, f12, f28, rne # perform operation
fsub.s f8, f12, f28, rtz # perform operation
fsub.s f8, f12, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f12, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f12, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f12, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f12, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f12, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xbfc00000)
li x18, 0xf73960c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f7, 0(x2) # load 0x7f800001 from memory into f7
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
fsub.s f18, f7, f29, dyn # perform operation
fsub.s f18, f7, f29, rdn # perform operation
fsub.s f18, f7, f29, rmm # perform operation
fsub.s f18, f7, f29, rne # perform operation
fsub.s f18, f7, f29, rtz # perform operation
fsub.s f18, f7, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f7, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f7, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f7, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f7, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f7, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x40000000)
li x25, 0x1d8f7259 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f11, 0(x2) # load 0x7f800001 from memory into f11
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f19, 0(x2) # load 0x40000000 from memory into f19
fsub.s f25, f11, f19, dyn # perform operation
fsub.s f25, f11, f19, rdn # perform operation
fsub.s f25, f11, f19, rmm # perform operation
fsub.s f25, f11, f19, rne # perform operation
fsub.s f25, f11, f19, rtz # perform operation
fsub.s f25, f11, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f11, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f11, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f11, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f11, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f11, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xc0000000)
li x13, 0x1199b396 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f15, 0(x2) # load 0xc0000000 from memory into f15
fsub.s f13, f27, f15, dyn # perform operation
fsub.s f13, f27, f15, rdn # perform operation
fsub.s f13, f27, f15, rmm # perform operation
fsub.s f13, f27, f15, rne # perform operation
fsub.s f13, f27, f15, rtz # perform operation
fsub.s f13, f27, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f27, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f27, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f27, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f27, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f27, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x800000)
li x26, 0xbbd5067d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f21, 0(x2) # load 0x7f800001 from memory into f21
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f14, 0(x2) # load 0x00800000 from memory into f14
fsub.s f26, f21, f14, dyn # perform operation
fsub.s f26, f21, f14, rdn # perform operation
fsub.s f26, f21, f14, rmm # perform operation
fsub.s f26, f21, f14, rne # perform operation
fsub.s f26, f21, f14, rtz # perform operation
fsub.s f26, f21, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f21, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f21, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f21, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f21, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f21, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80800000)
li x8, 0xa27bc98a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f24, 0(x2) # load 0x7f800001 from memory into f24
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f31, 0(x2) # load 0x80800000 from memory into f31
fsub.s f8, f24, f31, dyn # perform operation
fsub.s f8, f24, f31, rdn # perform operation
fsub.s f8, f24, f31, rmm # perform operation
fsub.s f8, f24, f31, rne # perform operation
fsub.s f8, f24, f31, rtz # perform operation
fsub.s f8, f24, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f24, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f24, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f24, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f24, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f24, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f7fffff)
li x15, 0x556e5656 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f26, 0(x2) # load 0x7f800001 from memory into f26
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f14, 0(x2) # load 0x7f7fffff from memory into f14
fsub.s f15, f26, f14, dyn # perform operation
fsub.s f15, f26, f14, rdn # perform operation
fsub.s f15, f26, f14, rmm # perform operation
fsub.s f15, f26, f14, rne # perform operation
fsub.s f15, f26, f14, rtz # perform operation
fsub.s f15, f26, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f26, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f26, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f26, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f26, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f26, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xff7fffff)
li x15, 0xa589d59f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f25, 0(x2) # load 0x7f800001 from memory into f25
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f17, 0(x2) # load 0xff7fffff from memory into f17
fsub.s f15, f25, f17, dyn # perform operation
fsub.s f15, f25, f17, rdn # perform operation
fsub.s f15, f25, f17, rmm # perform operation
fsub.s f15, f25, f17, rne # perform operation
fsub.s f15, f25, f17, rtz # perform operation
fsub.s f15, f25, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f25, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f25, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f25, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f25, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f25, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fffff)
li x16, 0xf5dc374d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f26, 0(x2) # load 0x7f800001 from memory into f26
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f15, 0(x2) # load 0x007fffff from memory into f15
fsub.s f16, f26, f15, dyn # perform operation
fsub.s f16, f26, f15, rdn # perform operation
fsub.s f16, f26, f15, rmm # perform operation
fsub.s f16, f26, f15, rne # perform operation
fsub.s f16, f26, f15, rtz # perform operation
fsub.s f16, f26, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f26, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f26, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f26, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f26, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f26, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x807fffff)
li x8, 0xdf181073 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f4, 0(x2) # load 0x7f800001 from memory into f4
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f26, 0(x2) # load 0x807fffff from memory into f26
fsub.s f8, f4, f26, dyn # perform operation
fsub.s f8, f4, f26, rdn # perform operation
fsub.s f8, f4, f26, rmm # perform operation
fsub.s f8, f4, f26, rne # perform operation
fsub.s f8, f4, f26, rtz # perform operation
fsub.s f8, f4, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f4, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f4, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f4, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f4, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f4, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x400000)
li x21, 0x180e3bfd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f1, 0(x2) # load 0x7f800001 from memory into f1
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
fsub.s f21, f1, f25, dyn # perform operation
fsub.s f21, f1, f25, rdn # perform operation
fsub.s f21, f1, f25, rmm # perform operation
fsub.s f21, f1, f25, rne # perform operation
fsub.s f21, f1, f25, rtz # perform operation
fsub.s f21, f1, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f1, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f1, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f1, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f1, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f1, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80400000)
li x15, 0x4381e69e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f26, 0(x2) # load 0x7f800001 from memory into f26
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f3, 0(x2) # load 0x80400000 from memory into f3
fsub.s f15, f26, f3, dyn # perform operation
fsub.s f15, f26, f3, rdn # perform operation
fsub.s f15, f26, f3, rmm # perform operation
fsub.s f15, f26, f3, rne # perform operation
fsub.s f15, f26, f3, rtz # perform operation
fsub.s f15, f26, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f15, f26, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f15, f26, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f15, f26, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f15, f26, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f15, f26, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x1)
li x11, 0xc3fcdc2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f27, 0(x2) # load 0x7f800001 from memory into f27
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f18, 0(x2) # load 0x00000001 from memory into f18
fsub.s f11, f27, f18, dyn # perform operation
fsub.s f11, f27, f18, rdn # perform operation
fsub.s f11, f27, f18, rmm # perform operation
fsub.s f11, f27, f18, rne # perform operation
fsub.s f11, f27, f18, rtz # perform operation
fsub.s f11, f27, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f27, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f27, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f27, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f27, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f27, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x80000001)
li x19, 0x0bf68f60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f25, 0(x2) # load 0x7f800001 from memory into f25
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f3, 0(x2) # load 0x80000001 from memory into f3
fsub.s f19, f25, f3, dyn # perform operation
fsub.s f19, f25, f3, rdn # perform operation
fsub.s f19, f25, f3, rmm # perform operation
fsub.s f19, f25, f3, rne # perform operation
fsub.s f19, f25, f3, rtz # perform operation
fsub.s f19, f25, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f19, f25, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f19, f25, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f19, f25, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f19, f25, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f19, f25, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f800000)
li x11, 0x2388bb81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f1, 0(x2) # load 0x7f800001 from memory into f1
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f4, 0(x2) # load 0x7f800000 from memory into f4
fsub.s f11, f1, f4, dyn # perform operation
fsub.s f11, f1, f4, rdn # perform operation
fsub.s f11, f1, f4, rmm # perform operation
fsub.s f11, f1, f4, rne # perform operation
fsub.s f11, f1, f4, rtz # perform operation
fsub.s f11, f1, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f1, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f1, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f1, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f1, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f1, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0xff800000)
li x31, 0x4c598073 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f6, 0(x2) # load 0x7f800001 from memory into f6
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f11, 0(x2) # load 0xff800000 from memory into f11
fsub.s f31, f6, f11, dyn # perform operation
fsub.s f31, f6, f11, rdn # perform operation
fsub.s f31, f6, f11, rmm # perform operation
fsub.s f31, f6, f11, rne # perform operation
fsub.s f31, f6, f11, rtz # perform operation
fsub.s f31, f6, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f6, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f6, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f6, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f6, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f6, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fc00000)
li x29, 0x8c80ae13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f22, 0(x2) # load 0x7f800001 from memory into f22
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f12, 0(x2) # load 0x7fc00000 from memory into f12
fsub.s f29, f22, f12, dyn # perform operation
fsub.s f29, f22, f12, rdn # perform operation
fsub.s f29, f22, f12, rmm # perform operation
fsub.s f29, f22, f12, rne # perform operation
fsub.s f29, f22, f12, rtz # perform operation
fsub.s f29, f22, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f22, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f22, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f22, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f22, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f22, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fffffff)
li x6, 0x90336a0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f14, 0(x2) # load 0x7f800001 from memory into f14
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f4, 0(x2) # load 0x7fffffff from memory into f4
fsub.s f6, f14, f4, dyn # perform operation
fsub.s f6, f14, f4, rdn # perform operation
fsub.s f6, f14, f4, rmm # perform operation
fsub.s f6, f14, f4, rne # perform operation
fsub.s f6, f14, f4, rtz # perform operation
fsub.s f6, f14, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f14, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f14, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f14, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f14, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f14, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7f800001)
li x29, 0x284ec724 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f24, 0(x2) # load 0x7f800001 from memory into f24
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f20, 0(x2) # load 0x7f800001 from memory into f20
fsub.s f29, f24, f20, dyn # perform operation
fsub.s f29, f24, f20, rdn # perform operation
fsub.s f29, f24, f20, rmm # perform operation
fsub.s f29, f24, f20, rne # perform operation
fsub.s f29, f24, f20, rtz # perform operation
fsub.s f29, f24, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f24, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f24, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f24, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f24, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f24, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7fbfffff)
li x6, 0x20c9feaf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f17, 0(x2) # load 0x7f800001 from memory into f17
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
fsub.s f6, f17, f16, dyn # perform operation
fsub.s f6, f17, f16, rdn # perform operation
fsub.s f6, f17, f16, rmm # perform operation
fsub.s f6, f17, f16, rne # perform operation
fsub.s f6, f17, f16, rtz # perform operation
fsub.s f6, f17, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f17, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f17, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f17, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f17, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f17, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x7ef8654f)
li x30, 0xc41b80ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f11, 0(x2) # load 0x7f800001 from memory into f11
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f2, 0(x2) # load 0x7ef8654f from memory into f2
fsub.s f30, f11, f2, dyn # perform operation
fsub.s f30, f11, f2, rdn # perform operation
fsub.s f30, f11, f2, rmm # perform operation
fsub.s f30, f11, f2, rne # perform operation
fsub.s f30, f11, f2, rtz # perform operation
fsub.s f30, f11, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f11, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f11, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f11, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f11, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f11, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7f800001 fs2 = 0x813d9ab0)
li x28, 0xb2136f67 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f20, 0(x2) # load 0x7f800001 from memory into f20
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f29, 0(x2) # load 0x813d9ab0 from memory into f29
fsub.s f28, f20, f29, dyn # perform operation
fsub.s f28, f20, f29, rdn # perform operation
fsub.s f28, f20, f29, rmm # perform operation
fsub.s f28, f20, f29, rne # perform operation
fsub.s f28, f20, f29, rtz # perform operation
fsub.s f28, f20, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f20, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f20, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f20, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f20, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f20, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x0)
li x20, 0x7771cf31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f28, 0(x2) # load 0x00000000 from memory into f28
fsub.s f20, f16, f28, dyn # perform operation
fsub.s f20, f16, f28, rdn # perform operation
fsub.s f20, f16, f28, rmm # perform operation
fsub.s f20, f16, f28, rne # perform operation
fsub.s f20, f16, f28, rtz # perform operation
fsub.s f20, f16, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f16, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f16, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f16, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f16, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f16, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80000000)
li x27, 0x87b559e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f2, 0(x2) # load 0x7fbfffff from memory into f2
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f12, 0(x2) # load 0x80000000 from memory into f12
fsub.s f27, f2, f12, dyn # perform operation
fsub.s f27, f2, f12, rdn # perform operation
fsub.s f27, f2, f12, rmm # perform operation
fsub.s f27, f2, f12, rne # perform operation
fsub.s f27, f2, f12, rtz # perform operation
fsub.s f27, f2, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f2, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f2, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f2, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f2, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f2, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x3f800000)
li x9, 0x867aa8eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f23, 0(x2) # load 0x7fbfffff from memory into f23
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f16, 0(x2) # load 0x3f800000 from memory into f16
fsub.s f9, f23, f16, dyn # perform operation
fsub.s f9, f23, f16, rdn # perform operation
fsub.s f9, f23, f16, rmm # perform operation
fsub.s f9, f23, f16, rne # perform operation
fsub.s f9, f23, f16, rtz # perform operation
fsub.s f9, f23, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f23, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f23, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f23, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f23, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f23, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xbf800000)
li x25, 0x42a059d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f5, 0(x2) # load 0x7fbfffff from memory into f5
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f14, 0(x2) # load 0xbf800000 from memory into f14
fsub.s f25, f5, f14, dyn # perform operation
fsub.s f25, f5, f14, rdn # perform operation
fsub.s f25, f5, f14, rmm # perform operation
fsub.s f25, f5, f14, rne # perform operation
fsub.s f25, f5, f14, rtz # perform operation
fsub.s f25, f5, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f25, f5, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f25, f5, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f25, f5, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f25, f5, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f25, f5, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x3fc00000)
li x23, 0xdd8b84f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f26, 0(x2) # load 0x7fbfffff from memory into f26
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f11, 0(x2) # load 0x3fc00000 from memory into f11
fsub.s f23, f26, f11, dyn # perform operation
fsub.s f23, f26, f11, rdn # perform operation
fsub.s f23, f26, f11, rmm # perform operation
fsub.s f23, f26, f11, rne # perform operation
fsub.s f23, f26, f11, rtz # perform operation
fsub.s f23, f26, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f26, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f26, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f26, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f26, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f26, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xbfc00000)
li x17, 0x291b7988 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f3, 0(x2) # load 0x7fbfffff from memory into f3
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f1, 0(x2) # load 0xbfc00000 from memory into f1
fsub.s f17, f3, f1, dyn # perform operation
fsub.s f17, f3, f1, rdn # perform operation
fsub.s f17, f3, f1, rmm # perform operation
fsub.s f17, f3, f1, rne # perform operation
fsub.s f17, f3, f1, rtz # perform operation
fsub.s f17, f3, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f3, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f3, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f3, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f3, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f3, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x40000000)
li x31, 0xa34a3df1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f3, 0(x2) # load 0x7fbfffff from memory into f3
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f4, 0(x2) # load 0x40000000 from memory into f4
fsub.s f31, f3, f4, dyn # perform operation
fsub.s f31, f3, f4, rdn # perform operation
fsub.s f31, f3, f4, rmm # perform operation
fsub.s f31, f3, f4, rne # perform operation
fsub.s f31, f3, f4, rtz # perform operation
fsub.s f31, f3, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f3, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f3, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f3, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f3, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f3, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xc0000000)
li x31, 0x3342ac02 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f3, 0(x2) # load 0x7fbfffff from memory into f3
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f10, 0(x2) # load 0xc0000000 from memory into f10
fsub.s f31, f3, f10, dyn # perform operation
fsub.s f31, f3, f10, rdn # perform operation
fsub.s f31, f3, f10, rmm # perform operation
fsub.s f31, f3, f10, rne # perform operation
fsub.s f31, f3, f10, rtz # perform operation
fsub.s f31, f3, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f3, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f3, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f3, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f3, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f3, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x800000)
li x6, 0x65834b6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f30, 0(x2) # load 0x7fbfffff from memory into f30
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f7, 0(x2) # load 0x00800000 from memory into f7
fsub.s f6, f30, f7, dyn # perform operation
fsub.s f6, f30, f7, rdn # perform operation
fsub.s f6, f30, f7, rmm # perform operation
fsub.s f6, f30, f7, rne # perform operation
fsub.s f6, f30, f7, rtz # perform operation
fsub.s f6, f30, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f30, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f30, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f30, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f30, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f30, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80800000)
li x5, 0x06106970 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f4, 0(x2) # load 0x7fbfffff from memory into f4
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f21, 0(x2) # load 0x80800000 from memory into f21
fsub.s f5, f4, f21, dyn # perform operation
fsub.s f5, f4, f21, rdn # perform operation
fsub.s f5, f4, f21, rmm # perform operation
fsub.s f5, f4, f21, rne # perform operation
fsub.s f5, f4, f21, rtz # perform operation
fsub.s f5, f4, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f4, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f4, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f4, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f4, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f4, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f7fffff)
li x24, 0xe4a7beb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f12, 0(x2) # load 0x7fbfffff from memory into f12
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f10, 0(x2) # load 0x7f7fffff from memory into f10
fsub.s f24, f12, f10, dyn # perform operation
fsub.s f24, f12, f10, rdn # perform operation
fsub.s f24, f12, f10, rmm # perform operation
fsub.s f24, f12, f10, rne # perform operation
fsub.s f24, f12, f10, rtz # perform operation
fsub.s f24, f12, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f12, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f12, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f12, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f12, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f12, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xff7fffff)
li x24, 0x398d6078 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f20, 0(x2) # load 0x7fbfffff from memory into f20
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f29, 0(x2) # load 0xff7fffff from memory into f29
fsub.s f24, f20, f29, dyn # perform operation
fsub.s f24, f20, f29, rdn # perform operation
fsub.s f24, f20, f29, rmm # perform operation
fsub.s f24, f20, f29, rne # perform operation
fsub.s f24, f20, f29, rtz # perform operation
fsub.s f24, f20, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f20, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f20, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f20, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f20, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f20, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fffff)
li x11, 0x17424dbd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f3, 0(x2) # load 0x7fbfffff from memory into f3
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f21, 0(x2) # load 0x007fffff from memory into f21
fsub.s f11, f3, f21, dyn # perform operation
fsub.s f11, f3, f21, rdn # perform operation
fsub.s f11, f3, f21, rmm # perform operation
fsub.s f11, f3, f21, rne # perform operation
fsub.s f11, f3, f21, rtz # perform operation
fsub.s f11, f3, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f3, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f3, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f3, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f3, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f3, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x807fffff)
li x27, 0x08dc2b4c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f15, 0(x2) # load 0x7fbfffff from memory into f15
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f3, 0(x2) # load 0x807fffff from memory into f3
fsub.s f27, f15, f3, dyn # perform operation
fsub.s f27, f15, f3, rdn # perform operation
fsub.s f27, f15, f3, rmm # perform operation
fsub.s f27, f15, f3, rne # perform operation
fsub.s f27, f15, f3, rtz # perform operation
fsub.s f27, f15, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f27, f15, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f27, f15, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f27, f15, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f27, f15, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f27, f15, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x400000)
li x31, 0xf350f172 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f22, 0(x2) # load 0x7fbfffff from memory into f22
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f20, 0(x2) # load 0x00400000 from memory into f20
fsub.s f31, f22, f20, dyn # perform operation
fsub.s f31, f22, f20, rdn # perform operation
fsub.s f31, f22, f20, rmm # perform operation
fsub.s f31, f22, f20, rne # perform operation
fsub.s f31, f22, f20, rtz # perform operation
fsub.s f31, f22, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f22, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f22, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f22, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f22, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f22, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80400000)
li x5, 0xa8f2e031 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f18, 0(x2) # load 0x7fbfffff from memory into f18
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f4, 0(x2) # load 0x80400000 from memory into f4
fsub.s f5, f18, f4, dyn # perform operation
fsub.s f5, f18, f4, rdn # perform operation
fsub.s f5, f18, f4, rmm # perform operation
fsub.s f5, f18, f4, rne # perform operation
fsub.s f5, f18, f4, rtz # perform operation
fsub.s f5, f18, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f5, f18, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f5, f18, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f5, f18, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f5, f18, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f5, f18, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x1)
li x12, 0x1983cef9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f30, 0(x2) # load 0x7fbfffff from memory into f30
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f11, 0(x2) # load 0x00000001 from memory into f11
fsub.s f12, f30, f11, dyn # perform operation
fsub.s f12, f30, f11, rdn # perform operation
fsub.s f12, f30, f11, rmm # perform operation
fsub.s f12, f30, f11, rne # perform operation
fsub.s f12, f30, f11, rtz # perform operation
fsub.s f12, f30, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f30, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f30, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f30, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f30, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f30, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x80000001)
li x23, 0x45dfdc88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f5, 0(x2) # load 0x7fbfffff from memory into f5
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f15, 0(x2) # load 0x80000001 from memory into f15
fsub.s f23, f5, f15, dyn # perform operation
fsub.s f23, f5, f15, rdn # perform operation
fsub.s f23, f5, f15, rmm # perform operation
fsub.s f23, f5, f15, rne # perform operation
fsub.s f23, f5, f15, rtz # perform operation
fsub.s f23, f5, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f5, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f5, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f5, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f5, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f5, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f800000)
li x16, 0x5fd94de5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f19, 0(x2) # load 0x7fbfffff from memory into f19
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f31, 0(x2) # load 0x7f800000 from memory into f31
fsub.s f16, f19, f31, dyn # perform operation
fsub.s f16, f19, f31, rdn # perform operation
fsub.s f16, f19, f31, rmm # perform operation
fsub.s f16, f19, f31, rne # perform operation
fsub.s f16, f19, f31, rtz # perform operation
fsub.s f16, f19, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f19, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f19, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f19, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f19, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f19, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0xff800000)
li x21, 0xf0b9ccad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f5, 0(x2) # load 0x7fbfffff from memory into f5
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f3, 0(x2) # load 0xff800000 from memory into f3
fsub.s f21, f5, f3, dyn # perform operation
fsub.s f21, f5, f3, rdn # perform operation
fsub.s f21, f5, f3, rmm # perform operation
fsub.s f21, f5, f3, rne # perform operation
fsub.s f21, f5, f3, rtz # perform operation
fsub.s f21, f5, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f5, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f5, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f5, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f5, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f5, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fc00000)
li x22, 0x7230f50e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f2, 0(x2) # load 0x7fbfffff from memory into f2
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f3, 0(x2) # load 0x7fc00000 from memory into f3
fsub.s f22, f2, f3, dyn # perform operation
fsub.s f22, f2, f3, rdn # perform operation
fsub.s f22, f2, f3, rmm # perform operation
fsub.s f22, f2, f3, rne # perform operation
fsub.s f22, f2, f3, rtz # perform operation
fsub.s f22, f2, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f22, f2, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f22, f2, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f22, f2, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f22, f2, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f22, f2, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fffffff)
li x23, 0x6e6b4f25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f20, 0(x2) # load 0x7fbfffff from memory into f20
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f16, 0(x2) # load 0x7fffffff from memory into f16
fsub.s f23, f20, f16, dyn # perform operation
fsub.s f23, f20, f16, rdn # perform operation
fsub.s f23, f20, f16, rmm # perform operation
fsub.s f23, f20, f16, rne # perform operation
fsub.s f23, f20, f16, rtz # perform operation
fsub.s f23, f20, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f20, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f20, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f20, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f20, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f20, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7f800001)
li x8, 0xaef9d648 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f16, 0(x2) # load 0x7fbfffff from memory into f16
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f13, 0(x2) # load 0x7f800001 from memory into f13
fsub.s f8, f16, f13, dyn # perform operation
fsub.s f8, f16, f13, rdn # perform operation
fsub.s f8, f16, f13, rmm # perform operation
fsub.s f8, f16, f13, rne # perform operation
fsub.s f8, f16, f13, rtz # perform operation
fsub.s f8, f16, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f16, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f16, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f16, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f16, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f16, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7fbfffff)
li x18, 0xb47c7ccd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f24, 0(x2) # load 0x7fbfffff from memory into f24
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f9, 0(x2) # load 0x7fbfffff from memory into f9
fsub.s f18, f24, f9, dyn # perform operation
fsub.s f18, f24, f9, rdn # perform operation
fsub.s f18, f24, f9, rmm # perform operation
fsub.s f18, f24, f9, rne # perform operation
fsub.s f18, f24, f9, rtz # perform operation
fsub.s f18, f24, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f24, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f24, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f24, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f24, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f24, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x7ef8654f)
li x4, 0x98639c43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f12, 0(x2) # load 0x7fbfffff from memory into f12
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f9, 0(x2) # load 0x7ef8654f from memory into f9
fsub.s f4, f12, f9, dyn # perform operation
fsub.s f4, f12, f9, rdn # perform operation
fsub.s f4, f12, f9, rmm # perform operation
fsub.s f4, f12, f9, rne # perform operation
fsub.s f4, f12, f9, rtz # perform operation
fsub.s f4, f12, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f4, f12, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f4, f12, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f4, f12, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f4, f12, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f4, f12, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fbfffff fs2 = 0x813d9ab0)
li x29, 0x77c4b716 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f4, 0(x2) # load 0x7fbfffff from memory into f4
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f12, 0(x2) # load 0x813d9ab0 from memory into f12
fsub.s f29, f4, f12, dyn # perform operation
fsub.s f29, f4, f12, rdn # perform operation
fsub.s f29, f4, f12, rmm # perform operation
fsub.s f29, f4, f12, rne # perform operation
fsub.s f29, f4, f12, rtz # perform operation
fsub.s f29, f4, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f4, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f4, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f4, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f4, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f4, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x0)
li x12, 0x6fe34014 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f11, 0(x2) # load 0x7ef8654f from memory into f11
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f26, 0(x2) # load 0x00000000 from memory into f26
fsub.s f12, f11, f26, dyn # perform operation
fsub.s f12, f11, f26, rdn # perform operation
fsub.s f12, f11, f26, rmm # perform operation
fsub.s f12, f11, f26, rne # perform operation
fsub.s f12, f11, f26, rtz # perform operation
fsub.s f12, f11, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f11, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f11, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f11, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f11, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f11, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80000000)
li x16, 0xfca14017 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f17, 0(x2) # load 0x7ef8654f from memory into f17
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f14, 0(x2) # load 0x80000000 from memory into f14
fsub.s f16, f17, f14, dyn # perform operation
fsub.s f16, f17, f14, rdn # perform operation
fsub.s f16, f17, f14, rmm # perform operation
fsub.s f16, f17, f14, rne # perform operation
fsub.s f16, f17, f14, rtz # perform operation
fsub.s f16, f17, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f17, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f17, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f17, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f17, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f17, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x3f800000)
li x23, 0xb18ea9e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f7, 0(x2) # load 0x7ef8654f from memory into f7
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f11, 0(x2) # load 0x3f800000 from memory into f11
fsub.s f23, f7, f11, dyn # perform operation
fsub.s f23, f7, f11, rdn # perform operation
fsub.s f23, f7, f11, rmm # perform operation
fsub.s f23, f7, f11, rne # perform operation
fsub.s f23, f7, f11, rtz # perform operation
fsub.s f23, f7, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f7, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f7, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f7, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f7, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f7, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xbf800000)
li x17, 0xc936db64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f11, 0(x2) # load 0x7ef8654f from memory into f11
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f12, 0(x2) # load 0xbf800000 from memory into f12
fsub.s f17, f11, f12, dyn # perform operation
fsub.s f17, f11, f12, rdn # perform operation
fsub.s f17, f11, f12, rmm # perform operation
fsub.s f17, f11, f12, rne # perform operation
fsub.s f17, f11, f12, rtz # perform operation
fsub.s f17, f11, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f11, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f11, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f11, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f11, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f11, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x3fc00000)
li x16, 0xfd319256 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f21, 0(x2) # load 0x7ef8654f from memory into f21
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f14, 0(x2) # load 0x3fc00000 from memory into f14
fsub.s f16, f21, f14, dyn # perform operation
fsub.s f16, f21, f14, rdn # perform operation
fsub.s f16, f21, f14, rmm # perform operation
fsub.s f16, f21, f14, rne # perform operation
fsub.s f16, f21, f14, rtz # perform operation
fsub.s f16, f21, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f21, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f21, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f21, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f21, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f21, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xbfc00000)
li x23, 0x98928c2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f25, 0(x2) # load 0x7ef8654f from memory into f25
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f10, 0(x2) # load 0xbfc00000 from memory into f10
fsub.s f23, f25, f10, dyn # perform operation
fsub.s f23, f25, f10, rdn # perform operation
fsub.s f23, f25, f10, rmm # perform operation
fsub.s f23, f25, f10, rne # perform operation
fsub.s f23, f25, f10, rtz # perform operation
fsub.s f23, f25, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f25, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f25, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f25, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f25, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f25, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x40000000)
li x10, 0x7b464c73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
fsub.s f10, f16, f24, dyn # perform operation
fsub.s f10, f16, f24, rdn # perform operation
fsub.s f10, f16, f24, rmm # perform operation
fsub.s f10, f16, f24, rne # perform operation
fsub.s f10, f16, f24, rtz # perform operation
fsub.s f10, f16, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f16, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f16, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f16, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f16, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f16, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xc0000000)
li x13, 0x36f3bed1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f24, 0(x2) # load 0x7ef8654f from memory into f24
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f31, 0(x2) # load 0xc0000000 from memory into f31
fsub.s f13, f24, f31, dyn # perform operation
fsub.s f13, f24, f31, rdn # perform operation
fsub.s f13, f24, f31, rmm # perform operation
fsub.s f13, f24, f31, rne # perform operation
fsub.s f13, f24, f31, rtz # perform operation
fsub.s f13, f24, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f24, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f24, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f24, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f24, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f24, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x800000)
li x3, 0x870e1bc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f2, 0(x2) # load 0x7ef8654f from memory into f2
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f1, 0(x2) # load 0x00800000 from memory into f1
fsub.s f3, f2, f1, dyn # perform operation
fsub.s f3, f2, f1, rdn # perform operation
fsub.s f3, f2, f1, rmm # perform operation
fsub.s f3, f2, f1, rne # perform operation
fsub.s f3, f2, f1, rtz # perform operation
fsub.s f3, f2, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f3, f2, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f3, f2, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f3, f2, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f3, f2, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f3, f2, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80800000)
li x13, 0xc7261708 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f11, 0(x2) # load 0x7ef8654f from memory into f11
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
fsub.s f13, f11, f20, dyn # perform operation
fsub.s f13, f11, f20, rdn # perform operation
fsub.s f13, f11, f20, rmm # perform operation
fsub.s f13, f11, f20, rne # perform operation
fsub.s f13, f11, f20, rtz # perform operation
fsub.s f13, f11, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f11, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f11, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f11, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f11, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f11, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f7fffff)
li x21, 0x3f282eb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f11, 0(x2) # load 0x7ef8654f from memory into f11
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
fsub.s f21, f11, f29, dyn # perform operation
fsub.s f21, f11, f29, rdn # perform operation
fsub.s f21, f11, f29, rmm # perform operation
fsub.s f21, f11, f29, rne # perform operation
fsub.s f21, f11, f29, rtz # perform operation
fsub.s f21, f11, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f11, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f11, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f11, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f11, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f11, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xff7fffff)
li x30, 0x7bf9a14f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f16, 0(x2) # load 0x7ef8654f from memory into f16
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f11, 0(x2) # load 0xff7fffff from memory into f11
fsub.s f30, f16, f11, dyn # perform operation
fsub.s f30, f16, f11, rdn # perform operation
fsub.s f30, f16, f11, rmm # perform operation
fsub.s f30, f16, f11, rne # perform operation
fsub.s f30, f16, f11, rtz # perform operation
fsub.s f30, f16, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f16, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f16, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f16, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f16, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f16, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fffff)
li x8, 0x5131c71a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f7, 0(x2) # load 0x7ef8654f from memory into f7
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f14, 0(x2) # load 0x007fffff from memory into f14
fsub.s f8, f7, f14, dyn # perform operation
fsub.s f8, f7, f14, rdn # perform operation
fsub.s f8, f7, f14, rmm # perform operation
fsub.s f8, f7, f14, rne # perform operation
fsub.s f8, f7, f14, rtz # perform operation
fsub.s f8, f7, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f7, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f7, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f7, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f7, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f7, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x807fffff)
li x8, 0x04c6e106 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f1, 0(x2) # load 0x7ef8654f from memory into f1
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f6, 0(x2) # load 0x807fffff from memory into f6
fsub.s f8, f1, f6, dyn # perform operation
fsub.s f8, f1, f6, rdn # perform operation
fsub.s f8, f1, f6, rmm # perform operation
fsub.s f8, f1, f6, rne # perform operation
fsub.s f8, f1, f6, rtz # perform operation
fsub.s f8, f1, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f1, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f1, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f1, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f1, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f1, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x400000)
li x18, 0x6989e2d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f8, 0(x2) # load 0x7ef8654f from memory into f8
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f22, 0(x2) # load 0x00400000 from memory into f22
fsub.s f18, f8, f22, dyn # perform operation
fsub.s f18, f8, f22, rdn # perform operation
fsub.s f18, f8, f22, rmm # perform operation
fsub.s f18, f8, f22, rne # perform operation
fsub.s f18, f8, f22, rtz # perform operation
fsub.s f18, f8, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f8, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f8, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f8, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f8, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f8, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80400000)
li x12, 0x5f7e4020 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f9, 0(x2) # load 0x7ef8654f from memory into f9
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f19, 0(x2) # load 0x80400000 from memory into f19
fsub.s f12, f9, f19, dyn # perform operation
fsub.s f12, f9, f19, rdn # perform operation
fsub.s f12, f9, f19, rmm # perform operation
fsub.s f12, f9, f19, rne # perform operation
fsub.s f12, f9, f19, rtz # perform operation
fsub.s f12, f9, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f12, f9, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f12, f9, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f12, f9, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f12, f9, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f12, f9, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x1)
li x31, 0xc5b59133 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f11, 0(x2) # load 0x7ef8654f from memory into f11
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f10, 0(x2) # load 0x00000001 from memory into f10
fsub.s f31, f11, f10, dyn # perform operation
fsub.s f31, f11, f10, rdn # perform operation
fsub.s f31, f11, f10, rmm # perform operation
fsub.s f31, f11, f10, rne # perform operation
fsub.s f31, f11, f10, rtz # perform operation
fsub.s f31, f11, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f31, f11, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f31, f11, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f31, f11, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f31, f11, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f31, f11, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x80000001)
li x17, 0xaa3efc48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f14, 0(x2) # load 0x7ef8654f from memory into f14
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f13, 0(x2) # load 0x80000001 from memory into f13
fsub.s f17, f14, f13, dyn # perform operation
fsub.s f17, f14, f13, rdn # perform operation
fsub.s f17, f14, f13, rmm # perform operation
fsub.s f17, f14, f13, rne # perform operation
fsub.s f17, f14, f13, rtz # perform operation
fsub.s f17, f14, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f14, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f14, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f14, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f14, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f14, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f800000)
li x29, 0x513db402 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f30, 0(x2) # load 0x7ef8654f from memory into f30
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f12, 0(x2) # load 0x7f800000 from memory into f12
fsub.s f29, f30, f12, dyn # perform operation
fsub.s f29, f30, f12, rdn # perform operation
fsub.s f29, f30, f12, rmm # perform operation
fsub.s f29, f30, f12, rne # perform operation
fsub.s f29, f30, f12, rtz # perform operation
fsub.s f29, f30, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f30, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f30, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f30, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f30, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f30, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0xff800000)
li x24, 0xd35156b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f1, 0(x2) # load 0x7ef8654f from memory into f1
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f16, 0(x2) # load 0xff800000 from memory into f16
fsub.s f24, f1, f16, dyn # perform operation
fsub.s f24, f1, f16, rdn # perform operation
fsub.s f24, f1, f16, rmm # perform operation
fsub.s f24, f1, f16, rne # perform operation
fsub.s f24, f1, f16, rtz # perform operation
fsub.s f24, f1, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f24, f1, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f24, f1, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f24, f1, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f24, f1, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f24, f1, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fc00000)
li x13, 0x6f162fd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f12, 0(x2) # load 0x7ef8654f from memory into f12
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f4, 0(x2) # load 0x7fc00000 from memory into f4
fsub.s f13, f12, f4, dyn # perform operation
fsub.s f13, f12, f4, rdn # perform operation
fsub.s f13, f12, f4, rmm # perform operation
fsub.s f13, f12, f4, rne # perform operation
fsub.s f13, f12, f4, rtz # perform operation
fsub.s f13, f12, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f12, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f12, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f12, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f12, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f12, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fffffff)
li x7, 0x0ca2e15f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f4, 0(x2) # load 0x7ef8654f from memory into f4
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f31, 0(x2) # load 0x7fffffff from memory into f31
fsub.s f7, f4, f31, dyn # perform operation
fsub.s f7, f4, f31, rdn # perform operation
fsub.s f7, f4, f31, rmm # perform operation
fsub.s f7, f4, f31, rne # perform operation
fsub.s f7, f4, f31, rtz # perform operation
fsub.s f7, f4, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f7, f4, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f7, f4, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f7, f4, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f7, f4, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f7, f4, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7f800001)
li x6, 0x135d592f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f4, 0(x2) # load 0x7ef8654f from memory into f4
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f12, 0(x2) # load 0x7f800001 from memory into f12
fsub.s f6, f4, f12, dyn # perform operation
fsub.s f6, f4, f12, rdn # perform operation
fsub.s f6, f4, f12, rmm # perform operation
fsub.s f6, f4, f12, rne # perform operation
fsub.s f6, f4, f12, rtz # perform operation
fsub.s f6, f4, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f4, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f4, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f4, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f4, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f4, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7fbfffff)
li x14, 0xbe848b0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f2, 0(x2) # load 0x7ef8654f from memory into f2
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f29, 0(x2) # load 0x7fbfffff from memory into f29
fsub.s f14, f2, f29, dyn # perform operation
fsub.s f14, f2, f29, rdn # perform operation
fsub.s f14, f2, f29, rmm # perform operation
fsub.s f14, f2, f29, rne # perform operation
fsub.s f14, f2, f29, rtz # perform operation
fsub.s f14, f2, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f2, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f2, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f2, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f2, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f2, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x7ef8654f)
li x8, 0x275caa3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f4, 0(x2) # load 0x7ef8654f from memory into f4
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f28, 0(x2) # load 0x7ef8654f from memory into f28
fsub.s f8, f4, f28, dyn # perform operation
fsub.s f8, f4, f28, rdn # perform operation
fsub.s f8, f4, f28, rmm # perform operation
fsub.s f8, f4, f28, rne # perform operation
fsub.s f8, f4, f28, rtz # perform operation
fsub.s f8, f4, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f4, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f4, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f4, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f4, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f4, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ef8654f fs2 = 0x813d9ab0)
li x4, 0x86fa1664 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f13, 0(x2) # load 0x7ef8654f from memory into f13
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f23, 0(x2) # load 0x813d9ab0 from memory into f23
fsub.s f4, f13, f23, dyn # perform operation
fsub.s f4, f13, f23, rdn # perform operation
fsub.s f4, f13, f23, rmm # perform operation
fsub.s f4, f13, f23, rne # perform operation
fsub.s f4, f13, f23, rtz # perform operation
fsub.s f4, f13, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f4, f13, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f4, f13, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f4, f13, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f4, f13, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f4, f13, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x0)
li x30, 0x60f0a578 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f4, 0(x2) # load 0x813d9ab0 from memory into f4
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f14, 0(x2) # load 0x00000000 from memory into f14
fsub.s f30, f4, f14, dyn # perform operation
fsub.s f30, f4, f14, rdn # perform operation
fsub.s f30, f4, f14, rmm # perform operation
fsub.s f30, f4, f14, rne # perform operation
fsub.s f30, f4, f14, rtz # perform operation
fsub.s f30, f4, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f4, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f4, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f4, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f4, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f4, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80000000)
li x13, 0x22324060 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f31, 0(x2) # load 0x813d9ab0 from memory into f31
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f11, 0(x2) # load 0x80000000 from memory into f11
fsub.s f13, f31, f11, dyn # perform operation
fsub.s f13, f31, f11, rdn # perform operation
fsub.s f13, f31, f11, rmm # perform operation
fsub.s f13, f31, f11, rne # perform operation
fsub.s f13, f31, f11, rtz # perform operation
fsub.s f13, f31, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f31, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f31, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f31, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f31, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f31, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x3f800000)
li x8, 0x8941ac6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f14, 0(x2) # load 0x813d9ab0 from memory into f14
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f5, 0(x2) # load 0x3f800000 from memory into f5
fsub.s f8, f14, f5, dyn # perform operation
fsub.s f8, f14, f5, rdn # perform operation
fsub.s f8, f14, f5, rmm # perform operation
fsub.s f8, f14, f5, rne # perform operation
fsub.s f8, f14, f5, rtz # perform operation
fsub.s f8, f14, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f14, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f14, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f14, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f14, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f14, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xbf800000)
li x13, 0xa27b84ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f23, 0(x2) # load 0x813d9ab0 from memory into f23
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f26, 0(x2) # load 0xbf800000 from memory into f26
fsub.s f13, f23, f26, dyn # perform operation
fsub.s f13, f23, f26, rdn # perform operation
fsub.s f13, f23, f26, rmm # perform operation
fsub.s f13, f23, f26, rne # perform operation
fsub.s f13, f23, f26, rtz # perform operation
fsub.s f13, f23, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f23, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f23, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f23, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f23, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f23, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x3fc00000)
li x17, 0x215e6a8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f4, 0(x2) # load 0x813d9ab0 from memory into f4
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f2, 0(x2) # load 0x3fc00000 from memory into f2
fsub.s f17, f4, f2, dyn # perform operation
fsub.s f17, f4, f2, rdn # perform operation
fsub.s f17, f4, f2, rmm # perform operation
fsub.s f17, f4, f2, rne # perform operation
fsub.s f17, f4, f2, rtz # perform operation
fsub.s f17, f4, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f17, f4, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f17, f4, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f17, f4, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f17, f4, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f17, f4, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xbfc00000)
li x23, 0x707c9a87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f13, 0(x2) # load 0x813d9ab0 from memory into f13
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f1, 0(x2) # load 0xbfc00000 from memory into f1
fsub.s f23, f13, f1, dyn # perform operation
fsub.s f23, f13, f1, rdn # perform operation
fsub.s f23, f13, f1, rmm # perform operation
fsub.s f23, f13, f1, rne # perform operation
fsub.s f23, f13, f1, rtz # perform operation
fsub.s f23, f13, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f23, f13, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f23, f13, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f23, f13, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f23, f13, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f23, f13, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x40000000)
li x29, 0x035afbba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f11, 0(x2) # load 0x813d9ab0 from memory into f11
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f14, 0(x2) # load 0x40000000 from memory into f14
fsub.s f29, f11, f14, dyn # perform operation
fsub.s f29, f11, f14, rdn # perform operation
fsub.s f29, f11, f14, rmm # perform operation
fsub.s f29, f11, f14, rne # perform operation
fsub.s f29, f11, f14, rtz # perform operation
fsub.s f29, f11, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f11, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f11, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f11, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f11, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f11, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xc0000000)
li x13, 0xa469c3d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f19, 0(x2) # load 0x813d9ab0 from memory into f19
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f17, 0(x2) # load 0xc0000000 from memory into f17
fsub.s f13, f19, f17, dyn # perform operation
fsub.s f13, f19, f17, rdn # perform operation
fsub.s f13, f19, f17, rmm # perform operation
fsub.s f13, f19, f17, rne # perform operation
fsub.s f13, f19, f17, rtz # perform operation
fsub.s f13, f19, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f13, f19, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f13, f19, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f13, f19, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f13, f19, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f13, f19, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x800000)
li x26, 0xe531ba30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f18, 0(x2) # load 0x813d9ab0 from memory into f18
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f31, 0(x2) # load 0x00800000 from memory into f31
fsub.s f26, f18, f31, dyn # perform operation
fsub.s f26, f18, f31, rdn # perform operation
fsub.s f26, f18, f31, rmm # perform operation
fsub.s f26, f18, f31, rne # perform operation
fsub.s f26, f18, f31, rtz # perform operation
fsub.s f26, f18, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f26, f18, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f26, f18, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f26, f18, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f26, f18, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f26, f18, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80800000)
li x6, 0x3edcde19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f31, 0(x2) # load 0x813d9ab0 from memory into f31
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f20, 0(x2) # load 0x80800000 from memory into f20
fsub.s f6, f31, f20, dyn # perform operation
fsub.s f6, f31, f20, rdn # perform operation
fsub.s f6, f31, f20, rmm # perform operation
fsub.s f6, f31, f20, rne # perform operation
fsub.s f6, f31, f20, rtz # perform operation
fsub.s f6, f31, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f31, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f31, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f31, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f31, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f31, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f7fffff)
li x10, 0x2e1ab66e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f4, 0(x2) # load 0x813d9ab0 from memory into f4
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f21, 0(x2) # load 0x7f7fffff from memory into f21
fsub.s f10, f4, f21, dyn # perform operation
fsub.s f10, f4, f21, rdn # perform operation
fsub.s f10, f4, f21, rmm # perform operation
fsub.s f10, f4, f21, rne # perform operation
fsub.s f10, f4, f21, rtz # perform operation
fsub.s f10, f4, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f10, f4, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f10, f4, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f10, f4, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f10, f4, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f10, f4, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xff7fffff)
li x28, 0xac2630a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f15, 0(x2) # load 0x813d9ab0 from memory into f15
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f17, 0(x2) # load 0xff7fffff from memory into f17
fsub.s f28, f15, f17, dyn # perform operation
fsub.s f28, f15, f17, rdn # perform operation
fsub.s f28, f15, f17, rmm # perform operation
fsub.s f28, f15, f17, rne # perform operation
fsub.s f28, f15, f17, rtz # perform operation
fsub.s f28, f15, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f28, f15, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f28, f15, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f28, f15, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f28, f15, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f28, f15, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fffff)
li x21, 0xd2b79a53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f1, 0(x2) # load 0x813d9ab0 from memory into f1
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f12, 0(x2) # load 0x007fffff from memory into f12
fsub.s f21, f1, f12, dyn # perform operation
fsub.s f21, f1, f12, rdn # perform operation
fsub.s f21, f1, f12, rmm # perform operation
fsub.s f21, f1, f12, rne # perform operation
fsub.s f21, f1, f12, rtz # perform operation
fsub.s f21, f1, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f21, f1, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f21, f1, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f21, f1, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f21, f1, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f21, f1, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x807fffff)
li x29, 0x5b402bac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f30, 0(x2) # load 0x813d9ab0 from memory into f30
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f23, 0(x2) # load 0x807fffff from memory into f23
fsub.s f29, f30, f23, dyn # perform operation
fsub.s f29, f30, f23, rdn # perform operation
fsub.s f29, f30, f23, rmm # perform operation
fsub.s f29, f30, f23, rne # perform operation
fsub.s f29, f30, f23, rtz # perform operation
fsub.s f29, f30, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f30, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f30, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f30, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f30, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f30, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x400000)
li x8, 0x6ece44fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f17, 0(x2) # load 0x813d9ab0 from memory into f17
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f12, 0(x2) # load 0x00400000 from memory into f12
fsub.s f8, f17, f12, dyn # perform operation
fsub.s f8, f17, f12, rdn # perform operation
fsub.s f8, f17, f12, rmm # perform operation
fsub.s f8, f17, f12, rne # perform operation
fsub.s f8, f17, f12, rtz # perform operation
fsub.s f8, f17, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f8, f17, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f8, f17, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f8, f17, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f8, f17, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f8, f17, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80400000)
li x30, 0xc0817d78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f2, 0(x2) # load 0x813d9ab0 from memory into f2
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f31, 0(x2) # load 0x80400000 from memory into f31
fsub.s f30, f2, f31, dyn # perform operation
fsub.s f30, f2, f31, rdn # perform operation
fsub.s f30, f2, f31, rmm # perform operation
fsub.s f30, f2, f31, rne # perform operation
fsub.s f30, f2, f31, rtz # perform operation
fsub.s f30, f2, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f30, f2, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f30, f2, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f30, f2, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f30, f2, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f30, f2, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x1)
li x29, 0x74df1347 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f10, 0(x2) # load 0x813d9ab0 from memory into f10
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f7, 0(x2) # load 0x00000001 from memory into f7
fsub.s f29, f10, f7, dyn # perform operation
fsub.s f29, f10, f7, rdn # perform operation
fsub.s f29, f10, f7, rmm # perform operation
fsub.s f29, f10, f7, rne # perform operation
fsub.s f29, f10, f7, rtz # perform operation
fsub.s f29, f10, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f29, f10, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f29, f10, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f29, f10, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f29, f10, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f29, f10, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x80000001)
li x14, 0xc69a7f4c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f10, 0(x2) # load 0x813d9ab0 from memory into f10
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f6, 0(x2) # load 0x80000001 from memory into f6
fsub.s f14, f10, f6, dyn # perform operation
fsub.s f14, f10, f6, rdn # perform operation
fsub.s f14, f10, f6, rmm # perform operation
fsub.s f14, f10, f6, rne # perform operation
fsub.s f14, f10, f6, rtz # perform operation
fsub.s f14, f10, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f14, f10, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f14, f10, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f14, f10, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f14, f10, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f14, f10, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f800000)
li x16, 0x19526f7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f28, 0(x2) # load 0x813d9ab0 from memory into f28
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f13, 0(x2) # load 0x7f800000 from memory into f13
fsub.s f16, f28, f13, dyn # perform operation
fsub.s f16, f28, f13, rdn # perform operation
fsub.s f16, f28, f13, rmm # perform operation
fsub.s f16, f28, f13, rne # perform operation
fsub.s f16, f28, f13, rtz # perform operation
fsub.s f16, f28, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f16, f28, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f16, f28, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f16, f28, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f16, f28, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f16, f28, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0xff800000)
li x9, 0x40738f47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f22, 0(x2) # load 0x813d9ab0 from memory into f22
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f2, 0(x2) # load 0xff800000 from memory into f2
fsub.s f9, f22, f2, dyn # perform operation
fsub.s f9, f22, f2, rdn # perform operation
fsub.s f9, f22, f2, rmm # perform operation
fsub.s f9, f22, f2, rne # perform operation
fsub.s f9, f22, f2, rtz # perform operation
fsub.s f9, f22, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f22, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f22, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f22, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f22, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f22, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fc00000)
li x11, 0x32efcf2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f30, 0(x2) # load 0x813d9ab0 from memory into f30
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f13, 0(x2) # load 0x7fc00000 from memory into f13
fsub.s f11, f30, f13, dyn # perform operation
fsub.s f11, f30, f13, rdn # perform operation
fsub.s f11, f30, f13, rmm # perform operation
fsub.s f11, f30, f13, rne # perform operation
fsub.s f11, f30, f13, rtz # perform operation
fsub.s f11, f30, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f11, f30, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f11, f30, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f11, f30, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f11, f30, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f11, f30, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fffffff)
li x20, 0x025ba432 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f8, 0(x2) # load 0x813d9ab0 from memory into f8
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f29, 0(x2) # load 0x7fffffff from memory into f29
fsub.s f20, f8, f29, dyn # perform operation
fsub.s f20, f8, f29, rdn # perform operation
fsub.s f20, f8, f29, rmm # perform operation
fsub.s f20, f8, f29, rne # perform operation
fsub.s f20, f8, f29, rtz # perform operation
fsub.s f20, f8, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f20, f8, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f20, f8, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f20, f8, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f20, f8, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f20, f8, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7f800001)
li x6, 0x3c76bcc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f19, 0(x2) # load 0x813d9ab0 from memory into f19
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f15, 0(x2) # load 0x7f800001 from memory into f15
fsub.s f6, f19, f15, dyn # perform operation
fsub.s f6, f19, f15, rdn # perform operation
fsub.s f6, f19, f15, rmm # perform operation
fsub.s f6, f19, f15, rne # perform operation
fsub.s f6, f19, f15, rtz # perform operation
fsub.s f6, f19, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f6, f19, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f6, f19, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f6, f19, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f6, f19, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f6, f19, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7fbfffff)
li x18, 0x2e09857a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f9, 0(x2) # load 0x813d9ab0 from memory into f9
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f10, 0(x2) # load 0x7fbfffff from memory into f10
fsub.s f18, f9, f10, dyn # perform operation
fsub.s f18, f9, f10, rdn # perform operation
fsub.s f18, f9, f10, rmm # perform operation
fsub.s f18, f9, f10, rne # perform operation
fsub.s f18, f9, f10, rtz # perform operation
fsub.s f18, f9, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f18, f9, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f18, f9, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f18, f9, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f18, f9, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f18, f9, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x7ef8654f)
li x2, 0x6d071153 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f9, 0(x2) # load 0x813d9ab0 from memory into f9
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f27, 0(x2) # load 0x7ef8654f from memory into f27
fsub.s f2, f9, f27, dyn # perform operation
fsub.s f2, f9, f27, rdn # perform operation
fsub.s f2, f9, f27, rmm # perform operation
fsub.s f2, f9, f27, rne # perform operation
fsub.s f2, f9, f27, rtz # perform operation
fsub.s f2, f9, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f2, f9, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f2, f9, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f2, f9, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f2, f9, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f2, f9, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x813d9ab0 fs2 = 0x813d9ab0)
li x9, 0x64e3cbcb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f6, 0(x2) # load 0x813d9ab0 from memory into f6
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f30, 0(x2) # load 0x813d9ab0 from memory into f30
fsub.s f9, f6, f30, dyn # perform operation
fsub.s f9, f6, f30, rdn # perform operation
fsub.s f9, f6, f30, rmm # perform operation
fsub.s f9, f6, f30, rne # perform operation
fsub.s f9, f6, f30, rtz # perform operation
fsub.s f9, f6, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.s f9, f6, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.s f9, f6, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.s f9, f6, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.s f9, f6, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.s f9, f6, f30 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0xc1dd9f57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x348006d8 # load x3 with value 0x348006d8
sw x3, 0(x2) # store 0x348006d8 in memory
flw f21, 0(x2) # load 0x348006d8 from memory into f21
li x3, 0x4c5a8836 # load x3 with value 0x4c5a8836
sw x3, 0(x2) # store 0x4c5a8836 in memory
flw f30, 0(x2) # load 0x4c5a8836 from memory into f30
fsub.s f0, f21, f30 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0xeb47c165 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8191887a # load x3 with value 0x8191887a
sw x3, 0(x2) # store 0x8191887a in memory
flw f14, 0(x2) # load 0x8191887a from memory into f14
li x3, 0x8cbcf827 # load x3 with value 0x8cbcf827
sw x3, 0(x2) # store 0x8cbcf827 in memory
flw f23, 0(x2) # load 0x8cbcf827 from memory into f23
fsub.s f1, f14, f23 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0xdb3fcbda # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf3f9b39 # load x3 with value 0xbf3f9b39
sw x3, 0(x2) # store 0xbf3f9b39 in memory
flw f19, 0(x2) # load 0xbf3f9b39 from memory into f19
li x3, 0xf9d46803 # load x3 with value 0xf9d46803
sw x3, 0(x2) # store 0xf9d46803 in memory
flw f22, 0(x2) # load 0xf9d46803 from memory into f22
fsub.s f2, f19, f22 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x394fc844 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x034f7fa1 # load x3 with value 0x034f7fa1
sw x3, 0(x2) # store 0x034f7fa1 in memory
flw f17, 0(x2) # load 0x034f7fa1 from memory into f17
li x3, 0x836b223b # load x3 with value 0x836b223b
sw x3, 0(x2) # store 0x836b223b in memory
flw f26, 0(x2) # load 0x836b223b from memory into f26
fsub.s f3, f17, f26 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x0bf425da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4e99cff4 # load x3 with value 0x4e99cff4
sw x3, 0(x2) # store 0x4e99cff4 in memory
flw f31, 0(x2) # load 0x4e99cff4 from memory into f31
li x3, 0x5b525a33 # load x3 with value 0x5b525a33
sw x3, 0(x2) # store 0x5b525a33 in memory
flw f26, 0(x2) # load 0x5b525a33 from memory into f26
fsub.s f4, f31, f26 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x3558125e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb61d002a # load x3 with value 0xb61d002a
sw x3, 0(x2) # store 0xb61d002a in memory
flw f7, 0(x2) # load 0xb61d002a from memory into f7
li x3, 0x8d56db70 # load x3 with value 0x8d56db70
sw x3, 0(x2) # store 0x8d56db70 in memory
flw f16, 0(x2) # load 0x8d56db70 from memory into f16
fsub.s f5, f7, f16 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x502417b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6e22ce79 # load x3 with value 0x6e22ce79
sw x3, 0(x2) # store 0x6e22ce79 in memory
flw f3, 0(x2) # load 0x6e22ce79 from memory into f3
li x3, 0xb4a510c3 # load x3 with value 0xb4a510c3
sw x3, 0(x2) # store 0xb4a510c3 in memory
flw f19, 0(x2) # load 0xb4a510c3 from memory into f19
fsub.s f6, f3, f19 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x2247efbb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb522c2d4 # load x3 with value 0xb522c2d4
sw x3, 0(x2) # store 0xb522c2d4 in memory
flw f4, 0(x2) # load 0xb522c2d4 from memory into f4
li x3, 0xdbe4a2ba # load x3 with value 0xdbe4a2ba
sw x3, 0(x2) # store 0xdbe4a2ba in memory
flw f9, 0(x2) # load 0xdbe4a2ba from memory into f9
fsub.s f7, f4, f9 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x0b64a25c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc8b6b618 # load x3 with value 0xc8b6b618
sw x3, 0(x2) # store 0xc8b6b618 in memory
flw f13, 0(x2) # load 0xc8b6b618 from memory into f13
li x3, 0x246196dc # load x3 with value 0x246196dc
sw x3, 0(x2) # store 0x246196dc in memory
flw f16, 0(x2) # load 0x246196dc from memory into f16
fsub.s f8, f13, f16 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0xc9e8e56c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb04e6c8a # load x3 with value 0xb04e6c8a
sw x3, 0(x2) # store 0xb04e6c8a in memory
flw f18, 0(x2) # load 0xb04e6c8a from memory into f18
li x3, 0xa21c36ba # load x3 with value 0xa21c36ba
sw x3, 0(x2) # store 0xa21c36ba in memory
flw f16, 0(x2) # load 0xa21c36ba from memory into f16
fsub.s f9, f18, f16 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x416123b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc947a9e7 # load x3 with value 0xc947a9e7
sw x3, 0(x2) # store 0xc947a9e7 in memory
flw f13, 0(x2) # load 0xc947a9e7 from memory into f13
li x3, 0xdbc85838 # load x3 with value 0xdbc85838
sw x3, 0(x2) # store 0xdbc85838 in memory
flw f26, 0(x2) # load 0xdbc85838 from memory into f26
fsub.s f10, f13, f26 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x510e4904 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa0927dd6 # load x3 with value 0xa0927dd6
sw x3, 0(x2) # store 0xa0927dd6 in memory
flw f17, 0(x2) # load 0xa0927dd6 from memory into f17
li x3, 0xc2e4cca5 # load x3 with value 0xc2e4cca5
sw x3, 0(x2) # store 0xc2e4cca5 in memory
flw f23, 0(x2) # load 0xc2e4cca5 from memory into f23
fsub.s f11, f17, f23 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x44d9bda9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x967053a5 # load x3 with value 0x967053a5
sw x3, 0(x2) # store 0x967053a5 in memory
flw f10, 0(x2) # load 0x967053a5 from memory into f10
li x3, 0x0de0bfbf # load x3 with value 0x0de0bfbf
sw x3, 0(x2) # store 0x0de0bfbf in memory
flw f4, 0(x2) # load 0x0de0bfbf from memory into f4
fsub.s f12, f10, f4 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0xaeb7b4e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x085e45f9 # load x3 with value 0x085e45f9
sw x3, 0(x2) # store 0x085e45f9 in memory
flw f25, 0(x2) # load 0x085e45f9 from memory into f25
li x3, 0x34a4923b # load x3 with value 0x34a4923b
sw x3, 0(x2) # store 0x34a4923b in memory
flw f5, 0(x2) # load 0x34a4923b from memory into f5
fsub.s f13, f25, f5 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x9113ed7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb86c09b5 # load x3 with value 0xb86c09b5
sw x3, 0(x2) # store 0xb86c09b5 in memory
flw f10, 0(x2) # load 0xb86c09b5 from memory into f10
li x3, 0xfd48b69b # load x3 with value 0xfd48b69b
sw x3, 0(x2) # store 0xfd48b69b in memory
flw f13, 0(x2) # load 0xfd48b69b from memory into f13
fsub.s f14, f10, f13 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x36b57542 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd514bcad # load x3 with value 0xd514bcad
sw x3, 0(x2) # store 0xd514bcad in memory
flw f23, 0(x2) # load 0xd514bcad from memory into f23
li x3, 0xd123a0ef # load x3 with value 0xd123a0ef
sw x3, 0(x2) # store 0xd123a0ef in memory
flw f26, 0(x2) # load 0xd123a0ef from memory into f26
fsub.s f15, f23, f26 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x95309637 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8c83eae6 # load x3 with value 0x8c83eae6
sw x3, 0(x2) # store 0x8c83eae6 in memory
flw f2, 0(x2) # load 0x8c83eae6 from memory into f2
li x3, 0x41428bec # load x3 with value 0x41428bec
sw x3, 0(x2) # store 0x41428bec in memory
flw f19, 0(x2) # load 0x41428bec from memory into f19
fsub.s f16, f2, f19 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x35cc0496 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb1b02138 # load x3 with value 0xb1b02138
sw x3, 0(x2) # store 0xb1b02138 in memory
flw f10, 0(x2) # load 0xb1b02138 from memory into f10
li x3, 0x8b23a351 # load x3 with value 0x8b23a351
sw x3, 0(x2) # store 0x8b23a351 in memory
flw f5, 0(x2) # load 0x8b23a351 from memory into f5
fsub.s f17, f10, f5 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x77a115c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc80dfbb3 # load x3 with value 0xc80dfbb3
sw x3, 0(x2) # store 0xc80dfbb3 in memory
flw f27, 0(x2) # load 0xc80dfbb3 from memory into f27
li x3, 0xf9046ed5 # load x3 with value 0xf9046ed5
sw x3, 0(x2) # store 0xf9046ed5 in memory
flw f1, 0(x2) # load 0xf9046ed5 from memory into f1
fsub.s f18, f27, f1 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x7cc68ff0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfad57f03 # load x3 with value 0xfad57f03
sw x3, 0(x2) # store 0xfad57f03 in memory
flw f4, 0(x2) # load 0xfad57f03 from memory into f4
li x3, 0xbef8d90b # load x3 with value 0xbef8d90b
sw x3, 0(x2) # store 0xbef8d90b in memory
flw f1, 0(x2) # load 0xbef8d90b from memory into f1
fsub.s f19, f4, f1 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0xb480ba8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x486e1732 # load x3 with value 0x486e1732
sw x3, 0(x2) # store 0x486e1732 in memory
flw f20, 0(x2) # load 0x486e1732 from memory into f20
li x3, 0xd4face25 # load x3 with value 0xd4face25
sw x3, 0(x2) # store 0xd4face25 in memory
flw f15, 0(x2) # load 0xd4face25 from memory into f15
fsub.s f20, f20, f15 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0xfba59b06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7c71088a # load x3 with value 0x7c71088a
sw x3, 0(x2) # store 0x7c71088a in memory
flw f12, 0(x2) # load 0x7c71088a from memory into f12
li x3, 0x6fc2c9cf # load x3 with value 0x6fc2c9cf
sw x3, 0(x2) # store 0x6fc2c9cf in memory
flw f10, 0(x2) # load 0x6fc2c9cf from memory into f10
fsub.s f21, f12, f10 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0xfd49dedc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6c4a71dd # load x3 with value 0x6c4a71dd
sw x3, 0(x2) # store 0x6c4a71dd in memory
flw f23, 0(x2) # load 0x6c4a71dd from memory into f23
li x3, 0xaeef5725 # load x3 with value 0xaeef5725
sw x3, 0(x2) # store 0xaeef5725 in memory
flw f12, 0(x2) # load 0xaeef5725 from memory into f12
fsub.s f22, f23, f12 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x55b10006 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3196e0d4 # load x3 with value 0x3196e0d4
sw x3, 0(x2) # store 0x3196e0d4 in memory
flw f27, 0(x2) # load 0x3196e0d4 from memory into f27
li x3, 0xfe71f588 # load x3 with value 0xfe71f588
sw x3, 0(x2) # store 0xfe71f588 in memory
flw f22, 0(x2) # load 0xfe71f588 from memory into f22
fsub.s f23, f27, f22 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x5de33c0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7507fb5a # load x3 with value 0x7507fb5a
sw x3, 0(x2) # store 0x7507fb5a in memory
flw f5, 0(x2) # load 0x7507fb5a from memory into f5
li x3, 0xb4708ede # load x3 with value 0xb4708ede
sw x3, 0(x2) # store 0xb4708ede in memory
flw f19, 0(x2) # load 0xb4708ede from memory into f19
fsub.s f24, f5, f19 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x60a69a3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6cac533 # load x3 with value 0xa6cac533
sw x3, 0(x2) # store 0xa6cac533 in memory
flw f30, 0(x2) # load 0xa6cac533 from memory into f30
li x3, 0x39cd202c # load x3 with value 0x39cd202c
sw x3, 0(x2) # store 0x39cd202c in memory
flw f12, 0(x2) # load 0x39cd202c from memory into f12
fsub.s f25, f30, f12 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xca9e65b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xed19e17b # load x3 with value 0xed19e17b
sw x3, 0(x2) # store 0xed19e17b in memory
flw f10, 0(x2) # load 0xed19e17b from memory into f10
li x3, 0x8e334ab8 # load x3 with value 0x8e334ab8
sw x3, 0(x2) # store 0x8e334ab8 in memory
flw f22, 0(x2) # load 0x8e334ab8 from memory into f22
fsub.s f26, f10, f22 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x1efd62a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe0363929 # load x3 with value 0xe0363929
sw x3, 0(x2) # store 0xe0363929 in memory
flw f12, 0(x2) # load 0xe0363929 from memory into f12
li x3, 0xe6b52ae4 # load x3 with value 0xe6b52ae4
sw x3, 0(x2) # store 0xe6b52ae4 in memory
flw f21, 0(x2) # load 0xe6b52ae4 from memory into f21
fsub.s f27, f12, f21 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x415aad0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd7239c1a # load x3 with value 0xd7239c1a
sw x3, 0(x2) # store 0xd7239c1a in memory
flw f7, 0(x2) # load 0xd7239c1a from memory into f7
li x3, 0xebc60b91 # load x3 with value 0xebc60b91
sw x3, 0(x2) # store 0xebc60b91 in memory
flw f25, 0(x2) # load 0xebc60b91 from memory into f25
fsub.s f28, f7, f25 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0xfca5fd30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5e164410 # load x3 with value 0x5e164410
sw x3, 0(x2) # store 0x5e164410 in memory
flw f11, 0(x2) # load 0x5e164410 from memory into f11
li x3, 0x5cfe0884 # load x3 with value 0x5cfe0884
sw x3, 0(x2) # store 0x5cfe0884 in memory
flw f22, 0(x2) # load 0x5cfe0884 from memory into f22
fsub.s f29, f11, f22 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x2aafaddf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf70c42e0 # load x3 with value 0xf70c42e0
sw x3, 0(x2) # store 0xf70c42e0 in memory
flw f31, 0(x2) # load 0xf70c42e0 from memory into f31
li x3, 0x6e477f7a # load x3 with value 0x6e477f7a
sw x3, 0(x2) # store 0x6e477f7a in memory
flw f13, 0(x2) # load 0x6e477f7a from memory into f13
fsub.s f30, f31, f13 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x9f470192 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x65aff6b6 # load x3 with value 0x65aff6b6
sw x3, 0(x2) # store 0x65aff6b6 in memory
flw f6, 0(x2) # load 0x65aff6b6 from memory into f6
li x3, 0x5e7513a9 # load x3 with value 0x5e7513a9
sw x3, 0(x2) # store 0x5e7513a9 in memory
flw f24, 0(x2) # load 0x5e7513a9 from memory into f24
fsub.s f31, f6, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x17, 0xab7737f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5981f5fe # load x3 with value 0x5981f5fe
sw x3, 0(x2) # store 0x5981f5fe in memory
flw f0, 0(x2) # load 0x5981f5fe from memory into f0
li x3, 0x7f281c5a # load x3 with value 0x7f281c5a
sw x3, 0(x2) # store 0x7f281c5a in memory
flw f30, 0(x2) # load 0x7f281c5a from memory into f30
fsub.s f17, f0, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x7, 0xc89a9de9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2ac3aa43 # load x3 with value 0x2ac3aa43
sw x3, 0(x2) # store 0x2ac3aa43 in memory
flw f1, 0(x2) # load 0x2ac3aa43 from memory into f1
li x3, 0xb46e2074 # load x3 with value 0xb46e2074
sw x3, 0(x2) # store 0xb46e2074 in memory
flw f26, 0(x2) # load 0xb46e2074 from memory into f26
fsub.s f7, f1, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x13, 0x9848efb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa2c843bd # load x3 with value 0xa2c843bd
sw x3, 0(x2) # store 0xa2c843bd in memory
flw f2, 0(x2) # load 0xa2c843bd from memory into f2
li x3, 0x982bec7b # load x3 with value 0x982bec7b
sw x3, 0(x2) # store 0x982bec7b in memory
flw f16, 0(x2) # load 0x982bec7b from memory into f16
fsub.s f13, f2, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x22, 0x2b128e4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdc012e99 # load x3 with value 0xdc012e99
sw x3, 0(x2) # store 0xdc012e99 in memory
flw f3, 0(x2) # load 0xdc012e99 from memory into f3
li x3, 0x992690a7 # load x3 with value 0x992690a7
sw x3, 0(x2) # store 0x992690a7 in memory
flw f10, 0(x2) # load 0x992690a7 from memory into f10
fsub.s f22, f3, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x23, 0x19ccc4b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc84441cf # load x3 with value 0xc84441cf
sw x3, 0(x2) # store 0xc84441cf in memory
flw f4, 0(x2) # load 0xc84441cf from memory into f4
li x3, 0x37f37f84 # load x3 with value 0x37f37f84
sw x3, 0(x2) # store 0x37f37f84 in memory
flw f19, 0(x2) # load 0x37f37f84 from memory into f19
fsub.s f23, f4, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x20, 0xd856eaec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8353e39d # load x3 with value 0x8353e39d
sw x3, 0(x2) # store 0x8353e39d in memory
flw f5, 0(x2) # load 0x8353e39d from memory into f5
li x3, 0x8e5d3bca # load x3 with value 0x8e5d3bca
sw x3, 0(x2) # store 0x8e5d3bca in memory
flw f14, 0(x2) # load 0x8e5d3bca from memory into f14
fsub.s f20, f5, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x1, 0x845d21f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf90459bf # load x3 with value 0xf90459bf
sw x3, 0(x2) # store 0xf90459bf in memory
flw f6, 0(x2) # load 0xf90459bf from memory into f6
li x3, 0xa5f2f20e # load x3 with value 0xa5f2f20e
sw x3, 0(x2) # store 0xa5f2f20e in memory
flw f18, 0(x2) # load 0xa5f2f20e from memory into f18
fsub.s f1, f6, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x26, 0xc1dd2afc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf936fbd9 # load x3 with value 0xf936fbd9
sw x3, 0(x2) # store 0xf936fbd9 in memory
flw f7, 0(x2) # load 0xf936fbd9 from memory into f7
li x3, 0x58d22049 # load x3 with value 0x58d22049
sw x3, 0(x2) # store 0x58d22049 in memory
flw f4, 0(x2) # load 0x58d22049 from memory into f4
fsub.s f26, f7, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x1, 0xe8809273 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x75180503 # load x3 with value 0x75180503
sw x3, 0(x2) # store 0x75180503 in memory
flw f8, 0(x2) # load 0x75180503 from memory into f8
li x3, 0x333cba9c # load x3 with value 0x333cba9c
sw x3, 0(x2) # store 0x333cba9c in memory
flw f5, 0(x2) # load 0x333cba9c from memory into f5
fsub.s f1, f8, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x31, 0xc6866844 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0682e81b # load x3 with value 0x0682e81b
sw x3, 0(x2) # store 0x0682e81b in memory
flw f9, 0(x2) # load 0x0682e81b from memory into f9
li x3, 0x6632a57c # load x3 with value 0x6632a57c
sw x3, 0(x2) # store 0x6632a57c in memory
flw f3, 0(x2) # load 0x6632a57c from memory into f3
fsub.s f31, f9, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x5, 0x86ddf83d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x757bb5f6 # load x3 with value 0x757bb5f6
sw x3, 0(x2) # store 0x757bb5f6 in memory
flw f10, 0(x2) # load 0x757bb5f6 from memory into f10
li x3, 0xcdb3cb32 # load x3 with value 0xcdb3cb32
sw x3, 0(x2) # store 0xcdb3cb32 in memory
flw f29, 0(x2) # load 0xcdb3cb32 from memory into f29
fsub.s f5, f10, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x10, 0xeb6e39fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x96f0a514 # load x3 with value 0x96f0a514
sw x3, 0(x2) # store 0x96f0a514 in memory
flw f11, 0(x2) # load 0x96f0a514 from memory into f11
li x3, 0x569701f4 # load x3 with value 0x569701f4
sw x3, 0(x2) # store 0x569701f4 in memory
flw f24, 0(x2) # load 0x569701f4 from memory into f24
fsub.s f10, f11, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x26, 0x8cb84f58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x679c5176 # load x3 with value 0x679c5176
sw x3, 0(x2) # store 0x679c5176 in memory
flw f12, 0(x2) # load 0x679c5176 from memory into f12
li x3, 0x2be2f5f4 # load x3 with value 0x2be2f5f4
sw x3, 0(x2) # store 0x2be2f5f4 in memory
flw f27, 0(x2) # load 0x2be2f5f4 from memory into f27
fsub.s f26, f12, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x21, 0x33ac46b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x16b77864 # load x3 with value 0x16b77864
sw x3, 0(x2) # store 0x16b77864 in memory
flw f13, 0(x2) # load 0x16b77864 from memory into f13
li x3, 0x39a61640 # load x3 with value 0x39a61640
sw x3, 0(x2) # store 0x39a61640 in memory
flw f7, 0(x2) # load 0x39a61640 from memory into f7
fsub.s f21, f13, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x7, 0xedde69b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe6d25b71 # load x3 with value 0xe6d25b71
sw x3, 0(x2) # store 0xe6d25b71 in memory
flw f14, 0(x2) # load 0xe6d25b71 from memory into f14
li x3, 0x5f7ae60f # load x3 with value 0x5f7ae60f
sw x3, 0(x2) # store 0x5f7ae60f in memory
flw f2, 0(x2) # load 0x5f7ae60f from memory into f2
fsub.s f7, f14, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x20, 0x67fdd4ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x631c1935 # load x3 with value 0x631c1935
sw x3, 0(x2) # store 0x631c1935 in memory
flw f15, 0(x2) # load 0x631c1935 from memory into f15
li x3, 0x3490f431 # load x3 with value 0x3490f431
sw x3, 0(x2) # store 0x3490f431 in memory
flw f29, 0(x2) # load 0x3490f431 from memory into f29
fsub.s f20, f15, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x15, 0x4a11512c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdd7cacbd # load x3 with value 0xdd7cacbd
sw x3, 0(x2) # store 0xdd7cacbd in memory
flw f16, 0(x2) # load 0xdd7cacbd from memory into f16
li x3, 0x617e6ea8 # load x3 with value 0x617e6ea8
sw x3, 0(x2) # store 0x617e6ea8 in memory
flw f22, 0(x2) # load 0x617e6ea8 from memory into f22
fsub.s f15, f16, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x16, 0xee7ccfbc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe5cc6818 # load x3 with value 0xe5cc6818
sw x3, 0(x2) # store 0xe5cc6818 in memory
flw f17, 0(x2) # load 0xe5cc6818 from memory into f17
li x3, 0x07a93ad2 # load x3 with value 0x07a93ad2
sw x3, 0(x2) # store 0x07a93ad2 in memory
flw f13, 0(x2) # load 0x07a93ad2 from memory into f13
fsub.s f16, f17, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x26, 0xe45d8699 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa98cf7f8 # load x3 with value 0xa98cf7f8
sw x3, 0(x2) # store 0xa98cf7f8 in memory
flw f18, 0(x2) # load 0xa98cf7f8 from memory into f18
li x3, 0x71df16d5 # load x3 with value 0x71df16d5
sw x3, 0(x2) # store 0x71df16d5 in memory
flw f14, 0(x2) # load 0x71df16d5 from memory into f14
fsub.s f26, f18, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x10, 0x29257243 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x99583a49 # load x3 with value 0x99583a49
sw x3, 0(x2) # store 0x99583a49 in memory
flw f19, 0(x2) # load 0x99583a49 from memory into f19
li x3, 0x9d2eb7f2 # load x3 with value 0x9d2eb7f2
sw x3, 0(x2) # store 0x9d2eb7f2 in memory
flw f26, 0(x2) # load 0x9d2eb7f2 from memory into f26
fsub.s f10, f19, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x12, 0x23564089 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x10cadd9e # load x3 with value 0x10cadd9e
sw x3, 0(x2) # store 0x10cadd9e in memory
flw f20, 0(x2) # load 0x10cadd9e from memory into f20
li x3, 0x416ada8b # load x3 with value 0x416ada8b
sw x3, 0(x2) # store 0x416ada8b in memory
flw f3, 0(x2) # load 0x416ada8b from memory into f3
fsub.s f12, f20, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x20, 0xf60e0de2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa89fa5ed # load x3 with value 0xa89fa5ed
sw x3, 0(x2) # store 0xa89fa5ed in memory
flw f21, 0(x2) # load 0xa89fa5ed from memory into f21
li x3, 0x375045b2 # load x3 with value 0x375045b2
sw x3, 0(x2) # store 0x375045b2 in memory
flw f16, 0(x2) # load 0x375045b2 from memory into f16
fsub.s f20, f21, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x29, 0xb9f7f461 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8cb30ca0 # load x3 with value 0x8cb30ca0
sw x3, 0(x2) # store 0x8cb30ca0 in memory
flw f22, 0(x2) # load 0x8cb30ca0 from memory into f22
li x3, 0x556df1bd # load x3 with value 0x556df1bd
sw x3, 0(x2) # store 0x556df1bd in memory
flw f23, 0(x2) # load 0x556df1bd from memory into f23
fsub.s f29, f22, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x10, 0x9fefa639 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80788339 # load x3 with value 0x80788339
sw x3, 0(x2) # store 0x80788339 in memory
flw f23, 0(x2) # load 0x80788339 from memory into f23
li x3, 0xd40fb007 # load x3 with value 0xd40fb007
sw x3, 0(x2) # store 0xd40fb007 in memory
flw f7, 0(x2) # load 0xd40fb007 from memory into f7
fsub.s f10, f23, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x30, 0x1e0b1504 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7a11144a # load x3 with value 0x7a11144a
sw x3, 0(x2) # store 0x7a11144a in memory
flw f24, 0(x2) # load 0x7a11144a from memory into f24
li x3, 0xd0cdb014 # load x3 with value 0xd0cdb014
sw x3, 0(x2) # store 0xd0cdb014 in memory
flw f31, 0(x2) # load 0xd0cdb014 from memory into f31
fsub.s f30, f24, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x12, 0x5a719ef2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x51b0eb96 # load x3 with value 0x51b0eb96
sw x3, 0(x2) # store 0x51b0eb96 in memory
flw f25, 0(x2) # load 0x51b0eb96 from memory into f25
li x3, 0xd6a9463e # load x3 with value 0xd6a9463e
sw x3, 0(x2) # store 0xd6a9463e in memory
flw f21, 0(x2) # load 0xd6a9463e from memory into f21
fsub.s f12, f25, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x9, 0x3f46a513 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf025e5c3 # load x3 with value 0xf025e5c3
sw x3, 0(x2) # store 0xf025e5c3 in memory
flw f26, 0(x2) # load 0xf025e5c3 from memory into f26
li x3, 0x17b99b5b # load x3 with value 0x17b99b5b
sw x3, 0(x2) # store 0x17b99b5b in memory
flw f5, 0(x2) # load 0x17b99b5b from memory into f5
fsub.s f9, f26, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x18, 0x8a0cda15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc8b14b98 # load x3 with value 0xc8b14b98
sw x3, 0(x2) # store 0xc8b14b98 in memory
flw f27, 0(x2) # load 0xc8b14b98 from memory into f27
li x3, 0x573e40d8 # load x3 with value 0x573e40d8
sw x3, 0(x2) # store 0x573e40d8 in memory
flw f26, 0(x2) # load 0x573e40d8 from memory into f26
fsub.s f18, f27, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x24, 0x64858816 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x97881362 # load x3 with value 0x97881362
sw x3, 0(x2) # store 0x97881362 in memory
flw f28, 0(x2) # load 0x97881362 from memory into f28
li x3, 0x385d6f60 # load x3 with value 0x385d6f60
sw x3, 0(x2) # store 0x385d6f60 in memory
flw f5, 0(x2) # load 0x385d6f60 from memory into f5
fsub.s f24, f28, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x6, 0x13c50e3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfb52f278 # load x3 with value 0xfb52f278
sw x3, 0(x2) # store 0xfb52f278 in memory
flw f29, 0(x2) # load 0xfb52f278 from memory into f29
li x3, 0x1cae8e04 # load x3 with value 0x1cae8e04
sw x3, 0(x2) # store 0x1cae8e04 in memory
flw f31, 0(x2) # load 0x1cae8e04 from memory into f31
fsub.s f6, f29, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x4, 0xd8deacba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x16fd7fa7 # load x3 with value 0x16fd7fa7
sw x3, 0(x2) # store 0x16fd7fa7 in memory
flw f30, 0(x2) # load 0x16fd7fa7 from memory into f30
li x3, 0x2da09980 # load x3 with value 0x2da09980
sw x3, 0(x2) # store 0x2da09980 in memory
flw f5, 0(x2) # load 0x2da09980 from memory into f5
fsub.s f4, f30, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x21, 0xcf98fae3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x621f3f56 # load x3 with value 0x621f3f56
sw x3, 0(x2) # store 0x621f3f56 in memory
flw f31, 0(x2) # load 0x621f3f56 from memory into f31
li x3, 0x88b95d24 # load x3 with value 0x88b95d24
sw x3, 0(x2) # store 0x88b95d24 in memory
flw f26, 0(x2) # load 0x88b95d24 from memory into f26
fsub.s f21, f31, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x1, 0x1b156dbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1d8f75da # load x3 with value 0x1d8f75da
sw x3, 0(x2) # store 0x1d8f75da in memory
flw f26, 0(x2) # load 0x1d8f75da from memory into f26
li x3, 0xaf1f98bd # load x3 with value 0xaf1f98bd
sw x3, 0(x2) # store 0xaf1f98bd in memory
flw f0, 0(x2) # load 0xaf1f98bd from memory into f0
fsub.s f1, f26, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x11, 0x11e14e93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7c99b693 # load x3 with value 0x7c99b693
sw x3, 0(x2) # store 0x7c99b693 in memory
flw f16, 0(x2) # load 0x7c99b693 from memory into f16
li x3, 0xf8dc49a0 # load x3 with value 0xf8dc49a0
sw x3, 0(x2) # store 0xf8dc49a0 in memory
flw f1, 0(x2) # load 0xf8dc49a0 from memory into f1
fsub.s f11, f16, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x31, 0xd6f53c7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa164ca01 # load x3 with value 0xa164ca01
sw x3, 0(x2) # store 0xa164ca01 in memory
flw f14, 0(x2) # load 0xa164ca01 from memory into f14
li x3, 0x204a019f # load x3 with value 0x204a019f
sw x3, 0(x2) # store 0x204a019f in memory
flw f2, 0(x2) # load 0x204a019f from memory into f2
fsub.s f31, f14, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x27, 0x4dfb3c06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x177987d4 # load x3 with value 0x177987d4
sw x3, 0(x2) # store 0x177987d4 in memory
flw f24, 0(x2) # load 0x177987d4 from memory into f24
li x3, 0x57e475f7 # load x3 with value 0x57e475f7
sw x3, 0(x2) # store 0x57e475f7 in memory
flw f3, 0(x2) # load 0x57e475f7 from memory into f3
fsub.s f27, f24, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x26, 0xd25510c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ed60c05 # load x3 with value 0x3ed60c05
sw x3, 0(x2) # store 0x3ed60c05 in memory
flw f19, 0(x2) # load 0x3ed60c05 from memory into f19
li x3, 0x19385131 # load x3 with value 0x19385131
sw x3, 0(x2) # store 0x19385131 in memory
flw f4, 0(x2) # load 0x19385131 from memory into f4
fsub.s f26, f19, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x29, 0xa8947ba2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3d031067 # load x3 with value 0x3d031067
sw x3, 0(x2) # store 0x3d031067 in memory
flw f25, 0(x2) # load 0x3d031067 from memory into f25
li x3, 0x8815283f # load x3 with value 0x8815283f
sw x3, 0(x2) # store 0x8815283f in memory
flw f5, 0(x2) # load 0x8815283f from memory into f5
fsub.s f29, f25, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x10, 0xdb8ccf3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0c393f37 # load x3 with value 0x0c393f37
sw x3, 0(x2) # store 0x0c393f37 in memory
flw f18, 0(x2) # load 0x0c393f37 from memory into f18
li x3, 0x9058a05c # load x3 with value 0x9058a05c
sw x3, 0(x2) # store 0x9058a05c in memory
flw f6, 0(x2) # load 0x9058a05c from memory into f6
fsub.s f10, f18, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x23, 0x2c30c2ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf5f3aaf7 # load x3 with value 0xf5f3aaf7
sw x3, 0(x2) # store 0xf5f3aaf7 in memory
flw f14, 0(x2) # load 0xf5f3aaf7 from memory into f14
li x3, 0x2cf38447 # load x3 with value 0x2cf38447
sw x3, 0(x2) # store 0x2cf38447 in memory
flw f7, 0(x2) # load 0x2cf38447 from memory into f7
fsub.s f23, f14, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x7, 0xbf5ae2a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x528746bf # load x3 with value 0x528746bf
sw x3, 0(x2) # store 0x528746bf in memory
flw f13, 0(x2) # load 0x528746bf from memory into f13
li x3, 0xc17e2bc8 # load x3 with value 0xc17e2bc8
sw x3, 0(x2) # store 0xc17e2bc8 in memory
flw f8, 0(x2) # load 0xc17e2bc8 from memory into f8
fsub.s f7, f13, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x13, 0x87201132 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x42f02389 # load x3 with value 0x42f02389
sw x3, 0(x2) # store 0x42f02389 in memory
flw f20, 0(x2) # load 0x42f02389 from memory into f20
li x3, 0x4328f8d6 # load x3 with value 0x4328f8d6
sw x3, 0(x2) # store 0x4328f8d6 in memory
flw f9, 0(x2) # load 0x4328f8d6 from memory into f9
fsub.s f13, f20, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x23, 0xb4ebe9a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbaf0fa64 # load x3 with value 0xbaf0fa64
sw x3, 0(x2) # store 0xbaf0fa64 in memory
flw f7, 0(x2) # load 0xbaf0fa64 from memory into f7
li x3, 0x7f77ef83 # load x3 with value 0x7f77ef83
sw x3, 0(x2) # store 0x7f77ef83 in memory
flw f10, 0(x2) # load 0x7f77ef83 from memory into f10
fsub.s f23, f7, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x11, 0x1218eab1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb62be878 # load x3 with value 0xb62be878
sw x3, 0(x2) # store 0xb62be878 in memory
flw f28, 0(x2) # load 0xb62be878 from memory into f28
li x3, 0x3201bab3 # load x3 with value 0x3201bab3
sw x3, 0(x2) # store 0x3201bab3 in memory
flw f11, 0(x2) # load 0x3201bab3 from memory into f11
fsub.s f11, f28, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x1, 0x46490964 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x73c32a04 # load x3 with value 0x73c32a04
sw x3, 0(x2) # store 0x73c32a04 in memory
flw f8, 0(x2) # load 0x73c32a04 from memory into f8
li x3, 0xc9e0d188 # load x3 with value 0xc9e0d188
sw x3, 0(x2) # store 0xc9e0d188 in memory
flw f12, 0(x2) # load 0xc9e0d188 from memory into f12
fsub.s f1, f8, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x25, 0xc473cc28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb60270c5 # load x3 with value 0xb60270c5
sw x3, 0(x2) # store 0xb60270c5 in memory
flw f3, 0(x2) # load 0xb60270c5 from memory into f3
li x3, 0x51ad5ba6 # load x3 with value 0x51ad5ba6
sw x3, 0(x2) # store 0x51ad5ba6 in memory
flw f13, 0(x2) # load 0x51ad5ba6 from memory into f13
fsub.s f25, f3, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x1, 0xaae08031 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x505b1e51 # load x3 with value 0x505b1e51
sw x3, 0(x2) # store 0x505b1e51 in memory
flw f19, 0(x2) # load 0x505b1e51 from memory into f19
li x3, 0xaaf14a3f # load x3 with value 0xaaf14a3f
sw x3, 0(x2) # store 0xaaf14a3f in memory
flw f14, 0(x2) # load 0xaaf14a3f from memory into f14
fsub.s f1, f19, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x22, 0x1f2f73e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb4b09bd4 # load x3 with value 0xb4b09bd4
sw x3, 0(x2) # store 0xb4b09bd4 in memory
flw f20, 0(x2) # load 0xb4b09bd4 from memory into f20
li x3, 0x10b60952 # load x3 with value 0x10b60952
sw x3, 0(x2) # store 0x10b60952 in memory
flw f15, 0(x2) # load 0x10b60952 from memory into f15
fsub.s f22, f20, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x4, 0x602a252d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcb2c540f # load x3 with value 0xcb2c540f
sw x3, 0(x2) # store 0xcb2c540f in memory
flw f24, 0(x2) # load 0xcb2c540f from memory into f24
li x3, 0xbc11a6e7 # load x3 with value 0xbc11a6e7
sw x3, 0(x2) # store 0xbc11a6e7 in memory
flw f16, 0(x2) # load 0xbc11a6e7 from memory into f16
fsub.s f4, f24, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x4, 0xc82db831 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x514491ee # load x3 with value 0x514491ee
sw x3, 0(x2) # store 0x514491ee in memory
flw f28, 0(x2) # load 0x514491ee from memory into f28
li x3, 0xe9c99f14 # load x3 with value 0xe9c99f14
sw x3, 0(x2) # store 0xe9c99f14 in memory
flw f17, 0(x2) # load 0xe9c99f14 from memory into f17
fsub.s f4, f28, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x24, 0x9b8ca6bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb4c3e6f8 # load x3 with value 0xb4c3e6f8
sw x3, 0(x2) # store 0xb4c3e6f8 in memory
flw f2, 0(x2) # load 0xb4c3e6f8 from memory into f2
li x3, 0x48093c9e # load x3 with value 0x48093c9e
sw x3, 0(x2) # store 0x48093c9e in memory
flw f18, 0(x2) # load 0x48093c9e from memory into f18
fsub.s f24, f2, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x21, 0x197336d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf7071b2 # load x3 with value 0xbf7071b2
sw x3, 0(x2) # store 0xbf7071b2 in memory
flw f15, 0(x2) # load 0xbf7071b2 from memory into f15
li x3, 0xe65d6767 # load x3 with value 0xe65d6767
sw x3, 0(x2) # store 0xe65d6767 in memory
flw f19, 0(x2) # load 0xe65d6767 from memory into f19
fsub.s f21, f15, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x9, 0x1da612a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb951ede5 # load x3 with value 0xb951ede5
sw x3, 0(x2) # store 0xb951ede5 in memory
flw f22, 0(x2) # load 0xb951ede5 from memory into f22
li x3, 0x4e501343 # load x3 with value 0x4e501343
sw x3, 0(x2) # store 0x4e501343 in memory
flw f20, 0(x2) # load 0x4e501343 from memory into f20
fsub.s f9, f22, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x1, 0x1e08cf19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1827124b # load x3 with value 0x1827124b
sw x3, 0(x2) # store 0x1827124b in memory
flw f25, 0(x2) # load 0x1827124b from memory into f25
li x3, 0x7d52eda6 # load x3 with value 0x7d52eda6
sw x3, 0(x2) # store 0x7d52eda6 in memory
flw f21, 0(x2) # load 0x7d52eda6 from memory into f21
fsub.s f1, f25, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x21, 0x8e32f0cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x39b8904b # load x3 with value 0x39b8904b
sw x3, 0(x2) # store 0x39b8904b in memory
flw f10, 0(x2) # load 0x39b8904b from memory into f10
li x3, 0xadb9edc9 # load x3 with value 0xadb9edc9
sw x3, 0(x2) # store 0xadb9edc9 in memory
flw f22, 0(x2) # load 0xadb9edc9 from memory into f22
fsub.s f21, f10, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x9, 0x60c105ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x97f000e3 # load x3 with value 0x97f000e3
sw x3, 0(x2) # store 0x97f000e3 in memory
flw f1, 0(x2) # load 0x97f000e3 from memory into f1
li x3, 0xe6207914 # load x3 with value 0xe6207914
sw x3, 0(x2) # store 0xe6207914 in memory
flw f23, 0(x2) # load 0xe6207914 from memory into f23
fsub.s f9, f1, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x1, 0xb231fcde # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc71364ef # load x3 with value 0xc71364ef
sw x3, 0(x2) # store 0xc71364ef in memory
flw f9, 0(x2) # load 0xc71364ef from memory into f9
li x3, 0x37649cbe # load x3 with value 0x37649cbe
sw x3, 0(x2) # store 0x37649cbe in memory
flw f24, 0(x2) # load 0x37649cbe from memory into f24
fsub.s f1, f9, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x21, 0xfba21839 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8fba10a9 # load x3 with value 0x8fba10a9
sw x3, 0(x2) # store 0x8fba10a9 in memory
flw f28, 0(x2) # load 0x8fba10a9 from memory into f28
li x3, 0x79433fa9 # load x3 with value 0x79433fa9
sw x3, 0(x2) # store 0x79433fa9 in memory
flw f25, 0(x2) # load 0x79433fa9 from memory into f25
fsub.s f21, f28, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x16, 0xfc09608a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe10f5822 # load x3 with value 0xe10f5822
sw x3, 0(x2) # store 0xe10f5822 in memory
flw f21, 0(x2) # load 0xe10f5822 from memory into f21
li x3, 0x5dd36902 # load x3 with value 0x5dd36902
sw x3, 0(x2) # store 0x5dd36902 in memory
flw f26, 0(x2) # load 0x5dd36902 from memory into f26
fsub.s f16, f21, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x6, 0x71cd95ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9480849e # load x3 with value 0x9480849e
sw x3, 0(x2) # store 0x9480849e in memory
flw f23, 0(x2) # load 0x9480849e from memory into f23
li x3, 0xde8b5593 # load x3 with value 0xde8b5593
sw x3, 0(x2) # store 0xde8b5593 in memory
flw f27, 0(x2) # load 0xde8b5593 from memory into f27
fsub.s f6, f23, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x25, 0x0808bd91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xea2ac2f1 # load x3 with value 0xea2ac2f1
sw x3, 0(x2) # store 0xea2ac2f1 in memory
flw f16, 0(x2) # load 0xea2ac2f1 from memory into f16
li x3, 0x4a10caca # load x3 with value 0x4a10caca
sw x3, 0(x2) # store 0x4a10caca in memory
flw f28, 0(x2) # load 0x4a10caca from memory into f28
fsub.s f25, f16, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x29, 0xaa01a88f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdd11140e # load x3 with value 0xdd11140e
sw x3, 0(x2) # store 0xdd11140e in memory
flw f28, 0(x2) # load 0xdd11140e from memory into f28
li x3, 0x5487b889 # load x3 with value 0x5487b889
sw x3, 0(x2) # store 0x5487b889 in memory
flw f29, 0(x2) # load 0x5487b889 from memory into f29
fsub.s f29, f28, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x30, 0x54aa42e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa19d42e8 # load x3 with value 0xa19d42e8
sw x3, 0(x2) # store 0xa19d42e8 in memory
flw f16, 0(x2) # load 0xa19d42e8 from memory into f16
li x3, 0x5f14efc2 # load x3 with value 0x5f14efc2
sw x3, 0(x2) # store 0x5f14efc2 in memory
flw f30, 0(x2) # load 0x5f14efc2 from memory into f30
fsub.s f30, f16, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x2, 0x1850afbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x147e8f38 # load x3 with value 0x147e8f38
sw x3, 0(x2) # store 0x147e8f38 in memory
flw f25, 0(x2) # load 0x147e8f38 from memory into f25
li x3, 0x5d30400c # load x3 with value 0x5d30400c
sw x3, 0(x2) # store 0x5d30400c in memory
flw f31, 0(x2) # load 0x5d30400c from memory into f31
fsub.s f2, f25, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
