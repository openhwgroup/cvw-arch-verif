///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zfh//WALLY-COV-fsgnjn.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.273340
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
li x4, 0x5029e888f76f6607 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
li x3, 0x1085ac2401891676 # load x3 with value 0x1085ac2401891676
sw x3, 0(x2) # store 0x1085ac2401891676 in memory
flh f26, 0(x2) # load 0x1085ac2401891676 from memory into f26
fsgnjn.h f4, f29, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
li x16, 0xe5e36a5d580bd902 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f22, 0(x2) # load 0x00008000 from memory into f22
li x3, 0xc504ca3227df42c0 # load x3 with value 0xc504ca3227df42c0
sw x3, 0(x2) # store 0xc504ca3227df42c0 in memory
flh f2, 0(x2) # load 0xc504ca3227df42c0 from memory into f2
fsgnjn.h f16, f22, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
li x2, 0xb912dcf1199248dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f14, 0(x2) # load 0x00003c00 from memory into f14
li x3, 0xb74d1feb8a540002 # load x3 with value 0xb74d1feb8a540002
sw x3, 0(x2) # store 0xb74d1feb8a540002 in memory
flh f9, 0(x2) # load 0xb74d1feb8a540002 from memory into f9
fsgnjn.h f2, f14, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
li x30, 0x4d8cd541baadf40c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
li x3, 0x41f1a4c8f4f9282d # load x3 with value 0x41f1a4c8f4f9282d
sw x3, 0(x2) # store 0x41f1a4c8f4f9282d in memory
flh f14, 0(x2) # load 0x41f1a4c8f4f9282d from memory into f14
fsgnjn.h f30, f15, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
li x5, 0x1fcaa10de9b933ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f31, 0(x2) # load 0x00003e00 from memory into f31
li x3, 0x7edffff0336183bb # load x3 with value 0x7edffff0336183bb
sw x3, 0(x2) # store 0x7edffff0336183bb in memory
flh f14, 0(x2) # load 0x7edffff0336183bb from memory into f14
fsgnjn.h f5, f31, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
li x25, 0xdc570c16c93bc39d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
li x3, 0x167f140821d8f41b # load x3 with value 0x167f140821d8f41b
sw x3, 0(x2) # store 0x167f140821d8f41b in memory
flh f28, 0(x2) # load 0x167f140821d8f41b from memory into f28
fsgnjn.h f25, f5, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
li x25, 0x0503da28ecb77492 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f8, 0(x2) # load 0x00004000 from memory into f8
li x3, 0xc84745e0a9c07a34 # load x3 with value 0xc84745e0a9c07a34
sw x3, 0(x2) # store 0xc84745e0a9c07a34 in memory
flh f1, 0(x2) # load 0xc84745e0a9c07a34 from memory into f1
fsgnjn.h f25, f8, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
li x23, 0xacd53bf99e03ed24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f15, 0(x2) # load 0x0000c000 from memory into f15
li x3, 0x3cb5879b0b38b157 # load x3 with value 0x3cb5879b0b38b157
sw x3, 0(x2) # store 0x3cb5879b0b38b157 in memory
flh f27, 0(x2) # load 0x3cb5879b0b38b157 from memory into f27
fsgnjn.h f23, f15, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
li x22, 0xbb242248065156d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
li x3, 0x83c1e958a44f5363 # load x3 with value 0x83c1e958a44f5363
sw x3, 0(x2) # store 0x83c1e958a44f5363 in memory
flh f14, 0(x2) # load 0x83c1e958a44f5363 from memory into f14
fsgnjn.h f22, f30, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
li x24, 0x681daaaa6feab52c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f15, 0(x2) # load 0x00008400 from memory into f15
li x3, 0xe8e1f44ef0af9026 # load x3 with value 0xe8e1f44ef0af9026
sw x3, 0(x2) # store 0xe8e1f44ef0af9026 in memory
flh f2, 0(x2) # load 0xe8e1f44ef0af9026 from memory into f2
fsgnjn.h f24, f15, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
li x17, 0x3175ee87e0bec869 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f5, 0(x2) # load 0x00007bff from memory into f5
li x3, 0xc8abbf8d888c3022 # load x3 with value 0xc8abbf8d888c3022
sw x3, 0(x2) # store 0xc8abbf8d888c3022 in memory
flh f11, 0(x2) # load 0xc8abbf8d888c3022 from memory into f11
fsgnjn.h f17, f5, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
li x23, 0x31ae87f9bde4b0f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f4, 0(x2) # load 0x0000fbff from memory into f4
li x3, 0x5a6433c9bbe7f643 # load x3 with value 0x5a6433c9bbe7f643
sw x3, 0(x2) # store 0x5a6433c9bbe7f643 in memory
flh f15, 0(x2) # load 0x5a6433c9bbe7f643 from memory into f15
fsgnjn.h f23, f4, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
li x26, 0x1e71c76ebdef0b25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f13, 0(x2) # load 0x000003ff from memory into f13
li x3, 0x77080930b21e396d # load x3 with value 0x77080930b21e396d
sw x3, 0(x2) # store 0x77080930b21e396d in memory
flh f16, 0(x2) # load 0x77080930b21e396d from memory into f16
fsgnjn.h f26, f13, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
li x22, 0xef9bba30ba144bec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f31, 0(x2) # load 0x000083ff from memory into f31
li x3, 0xfcf651aa631d0e9e # load x3 with value 0xfcf651aa631d0e9e
sw x3, 0(x2) # store 0xfcf651aa631d0e9e in memory
flh f7, 0(x2) # load 0xfcf651aa631d0e9e from memory into f7
fsgnjn.h f22, f31, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
li x7, 0xe80eb271720aff47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
li x3, 0x253436a951d6031b # load x3 with value 0x253436a951d6031b
sw x3, 0(x2) # store 0x253436a951d6031b in memory
flh f17, 0(x2) # load 0x253436a951d6031b from memory into f17
fsgnjn.h f7, f22, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
li x23, 0xbe5f859f08202d46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
li x3, 0x39ea025f590d5736 # load x3 with value 0x39ea025f590d5736
sw x3, 0(x2) # store 0x39ea025f590d5736 in memory
flh f16, 0(x2) # load 0x39ea025f590d5736 from memory into f16
fsgnjn.h f23, f1, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x5, 0xc3c064d4647f7c59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f7, 0(x2) # load 0x00000001 from memory into f7
li x3, 0x3fdf4011b3e92773 # load x3 with value 0x3fdf4011b3e92773
sw x3, 0(x2) # store 0x3fdf4011b3e92773 in memory
flh f17, 0(x2) # load 0x3fdf4011b3e92773 from memory into f17
fsgnjn.h f5, f7, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
li x7, 0x33128e80e29bd9e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f8, 0(x2) # load 0x00008001 from memory into f8
li x3, 0x8d608026c1ee146c # load x3 with value 0x8d608026c1ee146c
sw x3, 0(x2) # store 0x8d608026c1ee146c in memory
flh f6, 0(x2) # load 0x8d608026c1ee146c from memory into f6
fsgnjn.h f7, f8, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
li x25, 0xe94499c3b907a873 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f15, 0(x2) # load 0x00007c00 from memory into f15
li x3, 0xb8893ec8d875f66c # load x3 with value 0xb8893ec8d875f66c
sw x3, 0(x2) # store 0xb8893ec8d875f66c in memory
flh f19, 0(x2) # load 0xb8893ec8d875f66c from memory into f19
fsgnjn.h f25, f15, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
li x5, 0x5d5f4ec307879304 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f10, 0(x2) # load 0x0000fc00 from memory into f10
li x3, 0xd1f1e1400555d83e # load x3 with value 0xd1f1e1400555d83e
sw x3, 0(x2) # store 0xd1f1e1400555d83e in memory
flh f20, 0(x2) # load 0xd1f1e1400555d83e from memory into f20
fsgnjn.h f5, f10, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
li x21, 0x0a68b1f87e87d4a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f17, 0(x2) # load 0x00007e00 from memory into f17
li x3, 0x6bb146ac687b0c08 # load x3 with value 0x6bb146ac687b0c08
sw x3, 0(x2) # store 0x6bb146ac687b0c08 in memory
flh f1, 0(x2) # load 0x6bb146ac687b0c08 from memory into f1
fsgnjn.h f21, f17, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
li x16, 0x55e4c0c13c7b3c0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f14, 0(x2) # load 0x00007fff from memory into f14
li x3, 0xba03f97a6f70cdd3 # load x3 with value 0xba03f97a6f70cdd3
sw x3, 0(x2) # store 0xba03f97a6f70cdd3 in memory
flh f15, 0(x2) # load 0xba03f97a6f70cdd3 from memory into f15
fsgnjn.h f16, f14, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
li x30, 0x2e62f036a394b19e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f27, 0(x2) # load 0x00007c01 from memory into f27
li x3, 0x2dadaa6bfa4d043b # load x3 with value 0x2dadaa6bfa4d043b
sw x3, 0(x2) # store 0x2dadaa6bfa4d043b in memory
flh f21, 0(x2) # load 0x2dadaa6bfa4d043b from memory into f21
fsgnjn.h f30, f27, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
li x10, 0x462c36f88fd1616d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
li x3, 0xaddfb12f97b4ee08 # load x3 with value 0xaddfb12f97b4ee08
sw x3, 0(x2) # store 0xaddfb12f97b4ee08 in memory
flh f17, 0(x2) # load 0xaddfb12f97b4ee08 from memory into f17
fsgnjn.h f10, f5, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
li x19, 0x3abce7f42250ebd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f20, 0(x2) # load 0x000058b4 from memory into f20
li x3, 0xb7fd207940954135 # load x3 with value 0xb7fd207940954135
sw x3, 0(x2) # store 0xb7fd207940954135 in memory
flh f14, 0(x2) # load 0xb7fd207940954135 from memory into f14
fsgnjn.h f19, f20, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
li x29, 0xd8a5d14930027e87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f16, 0(x2) # load 0x0000c93a from memory into f16
li x3, 0x485e3d9fa9a5097b # load x3 with value 0x485e3d9fa9a5097b
sw x3, 0(x2) # store 0x485e3d9fa9a5097b in memory
flh f4, 0(x2) # load 0x485e3d9fa9a5097b from memory into f4
fsgnjn.h f29, f16, f4 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x26, 0x1e87f05c472e295c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x420fcb25befb7f59 # load x3 with value 0x420fcb25befb7f59
sw x3, 0(x2) # store 0x420fcb25befb7f59 in memory
flh f24, 0(x2) # load 0x420fcb25befb7f59 from memory into f24
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
fsgnjn.h f26, f24, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000)
li x9, 0xff2f8b5a04d90e8a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdbd39236a3860b7f # load x3 with value 0xdbd39236a3860b7f
sw x3, 0(x2) # store 0xdbd39236a3860b7f in memory
flh f16, 0(x2) # load 0xdbd39236a3860b7f from memory into f16
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f20, 0(x2) # load 0x00008000 from memory into f20
fsgnjn.h f9, f16, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3c00)
li x14, 0x3b888e830c128302 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdb3a8fda28a8ff80 # load x3 with value 0xdb3a8fda28a8ff80
sw x3, 0(x2) # store 0xdb3a8fda28a8ff80 in memory
flh f18, 0(x2) # load 0xdb3a8fda28a8ff80 from memory into f18
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f11, 0(x2) # load 0x00003c00 from memory into f11
fsgnjn.h f14, f18, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbc00)
li x15, 0x1543dec7a256d4bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd8e8a31088c81aa2 # load x3 with value 0xd8e8a31088c81aa2
sw x3, 0(x2) # store 0xd8e8a31088c81aa2 in memory
flh f18, 0(x2) # load 0xd8e8a31088c81aa2 from memory into f18
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f1, 0(x2) # load 0x0000bc00 from memory into f1
fsgnjn.h f15, f18, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3e00)
li x16, 0xf47a811aa04333b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaec9a8b6a11c1a2e # load x3 with value 0xaec9a8b6a11c1a2e
sw x3, 0(x2) # store 0xaec9a8b6a11c1a2e in memory
flh f21, 0(x2) # load 0xaec9a8b6a11c1a2e from memory into f21
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f24, 0(x2) # load 0x00003e00 from memory into f24
fsgnjn.h f16, f21, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbe00)
li x27, 0x14b03cad39c58307 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc53859fe3cd76416 # load x3 with value 0xc53859fe3cd76416
sw x3, 0(x2) # store 0xc53859fe3cd76416 in memory
flh f17, 0(x2) # load 0xc53859fe3cd76416 from memory into f17
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
fsgnjn.h f27, f17, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000)
li x31, 0x7d6a80c36ee0834e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x29246403949ab4f8 # load x3 with value 0x29246403949ab4f8
sw x3, 0(x2) # store 0x29246403949ab4f8 in memory
flh f4, 0(x2) # load 0x29246403949ab4f8 from memory into f4
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
fsgnjn.h f31, f4, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000)
li x23, 0x6b5f908aefb38cfd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x94651d8c103f8a4 # load x3 with value 0x94651d8c103f8a4
sw x3, 0(x2) # store 0x94651d8c103f8a4 in memory
flh f14, 0(x2) # load 0x94651d8c103f8a4 from memory into f14
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f31, 0(x2) # load 0x0000c000 from memory into f31
fsgnjn.h f23, f14, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400)
li x2, 0xda7d19a2c9890ef2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3809eb9a64076c46 # load x3 with value 0x3809eb9a64076c46
sw x3, 0(x2) # store 0x3809eb9a64076c46 in memory
flh f14, 0(x2) # load 0x3809eb9a64076c46 from memory into f14
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f15, 0(x2) # load 0x00000400 from memory into f15
fsgnjn.h f2, f14, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8400)
li x3, 0xe1290a0f5da129e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x48f5fc4d2bc7c2f6 # load x3 with value 0x48f5fc4d2bc7c2f6
sw x3, 0(x2) # store 0x48f5fc4d2bc7c2f6 in memory
flh f21, 0(x2) # load 0x48f5fc4d2bc7c2f6 from memory into f21
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
fsgnjn.h f3, f21, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7bff)
li x12, 0x1024a18b9b5a3664 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xde992ed43f03e655 # load x3 with value 0xde992ed43f03e655
sw x3, 0(x2) # store 0xde992ed43f03e655 in memory
flh f4, 0(x2) # load 0xde992ed43f03e655 from memory into f4
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
fsgnjn.h f12, f4, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfbff)
li x30, 0x4193ff0f784e48e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ddaf3fa9bdee7a3 # load x3 with value 0x7ddaf3fa9bdee7a3
sw x3, 0(x2) # store 0x7ddaf3fa9bdee7a3 in memory
flh f2, 0(x2) # load 0x7ddaf3fa9bdee7a3 from memory into f2
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f8, 0(x2) # load 0x0000fbff from memory into f8
fsgnjn.h f30, f2, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff)
li x22, 0x56f2c0ff63f56a46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf7251f351f496978 # load x3 with value 0xf7251f351f496978
sw x3, 0(x2) # store 0xf7251f351f496978 in memory
flh f17, 0(x2) # load 0xf7251f351f496978 from memory into f17
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f14, 0(x2) # load 0x000003ff from memory into f14
fsgnjn.h f22, f17, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x83ff)
li x20, 0x47e97d29b6d3ce3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd71a026bc968fdbb # load x3 with value 0xd71a026bc968fdbb
sw x3, 0(x2) # store 0xd71a026bc968fdbb in memory
flh f16, 0(x2) # load 0xd71a026bc968fdbb from memory into f16
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
fsgnjn.h f20, f16, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x200)
li x1, 0xd377fbc1bb3668a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1b5a87f52870f361 # load x3 with value 0x1b5a87f52870f361
sw x3, 0(x2) # store 0x1b5a87f52870f361 in memory
flh f15, 0(x2) # load 0x1b5a87f52870f361 from memory into f15
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
fsgnjn.h f1, f15, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8200)
li x14, 0xfb2486e26f787ff7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd7bf19403fec81d6 # load x3 with value 0xd7bf19403fec81d6
sw x3, 0(x2) # store 0xd7bf19403fec81d6 in memory
flh f6, 0(x2) # load 0xd7bf19403fec81d6 from memory into f6
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f27, 0(x2) # load 0x00008200 from memory into f27
fsgnjn.h f14, f6, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x12, 0xe4d5a75f7528894d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5b05bb60fe64afc # load x3 with value 0x5b05bb60fe64afc
sw x3, 0(x2) # store 0x5b05bb60fe64afc in memory
flh f11, 0(x2) # load 0x5b05bb60fe64afc from memory into f11
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f22, 0(x2) # load 0x00000001 from memory into f22
fsgnjn.h f12, f11, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8001)
li x7, 0x2533de8d7a944d94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xef83ce7c6e64ef60 # load x3 with value 0xef83ce7c6e64ef60
sw x3, 0(x2) # store 0xef83ce7c6e64ef60 in memory
flh f29, 0(x2) # load 0xef83ce7c6e64ef60 from memory into f29
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f27, 0(x2) # load 0x00008001 from memory into f27
fsgnjn.h f7, f29, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c00)
li x6, 0xaaca953958e705e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6baf4b5bf492766a # load x3 with value 0x6baf4b5bf492766a
sw x3, 0(x2) # store 0x6baf4b5bf492766a in memory
flh f1, 0(x2) # load 0x6baf4b5bf492766a from memory into f1
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f29, 0(x2) # load 0x00007c00 from memory into f29
fsgnjn.h f6, f1, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc00)
li x23, 0xac6a6733aea7753b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x927bc8297ef6dd93 # load x3 with value 0x927bc8297ef6dd93
sw x3, 0(x2) # store 0x927bc8297ef6dd93 in memory
flh f7, 0(x2) # load 0x927bc8297ef6dd93 from memory into f7
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f27, 0(x2) # load 0x0000fc00 from memory into f27
fsgnjn.h f23, f7, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e00)
li x11, 0x9dd792a90dda3b5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x393829f6c5671d2e # load x3 with value 0x393829f6c5671d2e
sw x3, 0(x2) # store 0x393829f6c5671d2e in memory
flh f14, 0(x2) # load 0x393829f6c5671d2e from memory into f14
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f6, 0(x2) # load 0x00007e00 from memory into f6
fsgnjn.h f11, f14, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff)
li x18, 0x1b259ea880610b52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x81493bce1650f9d6 # load x3 with value 0x81493bce1650f9d6
sw x3, 0(x2) # store 0x81493bce1650f9d6 in memory
flh f29, 0(x2) # load 0x81493bce1650f9d6 from memory into f29
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
fsgnjn.h f18, f29, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c01)
li x25, 0x8b1d1d83c2691442 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc90d870937f45290 # load x3 with value 0xc90d870937f45290
sw x3, 0(x2) # store 0xc90d870937f45290 in memory
flh f13, 0(x2) # load 0xc90d870937f45290 from memory into f13
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
fsgnjn.h f25, f13, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7dff)
li x21, 0x88a90525f0a9d877 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x205bcfbe7de19784 # load x3 with value 0x205bcfbe7de19784
sw x3, 0(x2) # store 0x205bcfbe7de19784 in memory
flh f9, 0(x2) # load 0x205bcfbe7de19784 from memory into f9
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
fsgnjn.h f21, f9, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x58b4)
li x29, 0x324cd5b3ae67dcb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x628fd51a18e2c1d7 # load x3 with value 0x628fd51a18e2c1d7
sw x3, 0(x2) # store 0x628fd51a18e2c1d7 in memory
flh f7, 0(x2) # load 0x628fd51a18e2c1d7 from memory into f7
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f16, 0(x2) # load 0x000058b4 from memory into f16
fsgnjn.h f29, f7, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc93a)
li x5, 0x91eede1bace69907 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf0161f6802fc27e7 # load x3 with value 0xf0161f6802fc27e7
sw x3, 0(x2) # store 0xf0161f6802fc27e7 in memory
flh f28, 0(x2) # load 0xf0161f6802fc27e7 from memory into f28
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f25, 0(x2) # load 0x0000c93a from memory into f25
fsgnjn.h f5, f28, f25 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x7070fc93ba56f8ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x63450afec3c4b685 # load x3 with value 0x63450afec3c4b685
sw x3, 0(x2) # store 0x63450afec3c4b685 in memory
flh f12, 0(x2) # load 0x63450afec3c4b685 from memory into f12
li x3, 0xb349e56f038ca3ed # load x3 with value 0xb349e56f038ca3ed
sw x3, 0(x2) # store 0xb349e56f038ca3ed in memory
flh f28, 0(x2) # load 0xb349e56f038ca3ed from memory into f28
fsgnjn.h f0, f12, f28 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x973cb21b29d3a025 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x39659cf271fe50fd # load x3 with value 0x39659cf271fe50fd
sw x3, 0(x2) # store 0x39659cf271fe50fd in memory
flh f22, 0(x2) # load 0x39659cf271fe50fd from memory into f22
li x3, 0x148ca00c4de7a298 # load x3 with value 0x148ca00c4de7a298
sw x3, 0(x2) # store 0x148ca00c4de7a298 in memory
flh f12, 0(x2) # load 0x148ca00c4de7a298 from memory into f12
fsgnjn.h f1, f22, f12 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x0b4fdbe3aec1a71f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x93c1304b5c1fc75 # load x3 with value 0x93c1304b5c1fc75
sw x3, 0(x2) # store 0x93c1304b5c1fc75 in memory
flh f20, 0(x2) # load 0x93c1304b5c1fc75 from memory into f20
li x3, 0xcc85ccec40f4fdda # load x3 with value 0xcc85ccec40f4fdda
sw x3, 0(x2) # store 0xcc85ccec40f4fdda in memory
flh f14, 0(x2) # load 0xcc85ccec40f4fdda from memory into f14
fsgnjn.h f2, f20, f14 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x966dbc4ce6b16c5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf0809e90f1d31f91 # load x3 with value 0xf0809e90f1d31f91
sw x3, 0(x2) # store 0xf0809e90f1d31f91 in memory
flh f1, 0(x2) # load 0xf0809e90f1d31f91 from memory into f1
li x3, 0xee04775ebe28c12c # load x3 with value 0xee04775ebe28c12c
sw x3, 0(x2) # store 0xee04775ebe28c12c in memory
flh f17, 0(x2) # load 0xee04775ebe28c12c from memory into f17
fsgnjn.h f3, f1, f17 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0xf8f29406cfb0269a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4ae479e8b6485187 # load x3 with value 0x4ae479e8b6485187
sw x3, 0(x2) # store 0x4ae479e8b6485187 in memory
flh f11, 0(x2) # load 0x4ae479e8b6485187 from memory into f11
li x3, 0x9b8d53341987ada4 # load x3 with value 0x9b8d53341987ada4
sw x3, 0(x2) # store 0x9b8d53341987ada4 in memory
flh f17, 0(x2) # load 0x9b8d53341987ada4 from memory into f17
fsgnjn.h f4, f11, f17 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0xcf7ab6e6fd3185c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff8dc500db55f34a # load x3 with value 0xff8dc500db55f34a
sw x3, 0(x2) # store 0xff8dc500db55f34a in memory
flh f21, 0(x2) # load 0xff8dc500db55f34a from memory into f21
li x3, 0x523e9034a165e677 # load x3 with value 0x523e9034a165e677
sw x3, 0(x2) # store 0x523e9034a165e677 in memory
flh f11, 0(x2) # load 0x523e9034a165e677 from memory into f11
fsgnjn.h f5, f21, f11 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x329e9f59168ad210 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf2bda32ef64bd65b # load x3 with value 0xf2bda32ef64bd65b
sw x3, 0(x2) # store 0xf2bda32ef64bd65b in memory
flh f23, 0(x2) # load 0xf2bda32ef64bd65b from memory into f23
li x3, 0x5ba08300b4fc6a33 # load x3 with value 0x5ba08300b4fc6a33
sw x3, 0(x2) # store 0x5ba08300b4fc6a33 in memory
flh f29, 0(x2) # load 0x5ba08300b4fc6a33 from memory into f29
fsgnjn.h f6, f23, f29 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0xe15854543545c133 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc932f8ef6b6776 # load x3 with value 0xbfc932f8ef6b6776
sw x3, 0(x2) # store 0xbfc932f8ef6b6776 in memory
flh f30, 0(x2) # load 0xbfc932f8ef6b6776 from memory into f30
li x3, 0x48c87ffdd6f176d2 # load x3 with value 0x48c87ffdd6f176d2
sw x3, 0(x2) # store 0x48c87ffdd6f176d2 in memory
flh f11, 0(x2) # load 0x48c87ffdd6f176d2 from memory into f11
fsgnjn.h f7, f30, f11 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x79a123376f6ac8b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb4514e6090015e6d # load x3 with value 0xb4514e6090015e6d
sw x3, 0(x2) # store 0xb4514e6090015e6d in memory
flh f24, 0(x2) # load 0xb4514e6090015e6d from memory into f24
li x3, 0x1fa21c7ce8c02042 # load x3 with value 0x1fa21c7ce8c02042
sw x3, 0(x2) # store 0x1fa21c7ce8c02042 in memory
flh f30, 0(x2) # load 0x1fa21c7ce8c02042 from memory into f30
fsgnjn.h f8, f24, f30 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x1731818e6594a27f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2ba43c0f69d917d0 # load x3 with value 0x2ba43c0f69d917d0
sw x3, 0(x2) # store 0x2ba43c0f69d917d0 in memory
flh f4, 0(x2) # load 0x2ba43c0f69d917d0 from memory into f4
li x3, 0x3158309213f13fa8 # load x3 with value 0x3158309213f13fa8
sw x3, 0(x2) # store 0x3158309213f13fa8 in memory
flh f6, 0(x2) # load 0x3158309213f13fa8 from memory into f6
fsgnjn.h f9, f4, f6 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x6a69e64f13d0daf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd58cf4061e77d3b3 # load x3 with value 0xd58cf4061e77d3b3
sw x3, 0(x2) # store 0xd58cf4061e77d3b3 in memory
flh f14, 0(x2) # load 0xd58cf4061e77d3b3 from memory into f14
li x3, 0xca7cf3e4b6fbbe66 # load x3 with value 0xca7cf3e4b6fbbe66
sw x3, 0(x2) # store 0xca7cf3e4b6fbbe66 in memory
flh f11, 0(x2) # load 0xca7cf3e4b6fbbe66 from memory into f11
fsgnjn.h f10, f14, f11 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x97f8116b1c5c7611 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8a1a31b2563126f # load x3 with value 0x8a1a31b2563126f
sw x3, 0(x2) # store 0x8a1a31b2563126f in memory
flh f11, 0(x2) # load 0x8a1a31b2563126f from memory into f11
li x3, 0x84a37fba9aeb8a74 # load x3 with value 0x84a37fba9aeb8a74
sw x3, 0(x2) # store 0x84a37fba9aeb8a74 in memory
flh f5, 0(x2) # load 0x84a37fba9aeb8a74 from memory into f5
fsgnjn.h f11, f11, f5 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x9031a866c6de75b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8df11e1ea3c86982 # load x3 with value 0x8df11e1ea3c86982
sw x3, 0(x2) # store 0x8df11e1ea3c86982 in memory
flh f27, 0(x2) # load 0x8df11e1ea3c86982 from memory into f27
li x3, 0x7d86aab9c8b1d771 # load x3 with value 0x7d86aab9c8b1d771
sw x3, 0(x2) # store 0x7d86aab9c8b1d771 in memory
flh f10, 0(x2) # load 0x7d86aab9c8b1d771 from memory into f10
fsgnjn.h f12, f27, f10 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0xe04f1a93c3d80754 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x87d5f8b9eed3b123 # load x3 with value 0x87d5f8b9eed3b123
sw x3, 0(x2) # store 0x87d5f8b9eed3b123 in memory
flh f21, 0(x2) # load 0x87d5f8b9eed3b123 from memory into f21
li x3, 0xad1d168400e266da # load x3 with value 0xad1d168400e266da
sw x3, 0(x2) # store 0xad1d168400e266da in memory
flh f14, 0(x2) # load 0xad1d168400e266da from memory into f14
fsgnjn.h f13, f21, f14 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x4ad0e77ad2cadebc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x23af0fa21ef48300 # load x3 with value 0x23af0fa21ef48300
sw x3, 0(x2) # store 0x23af0fa21ef48300 in memory
flh f12, 0(x2) # load 0x23af0fa21ef48300 from memory into f12
li x3, 0xf6df0318d2389b5b # load x3 with value 0xf6df0318d2389b5b
sw x3, 0(x2) # store 0xf6df0318d2389b5b in memory
flh f9, 0(x2) # load 0xf6df0318d2389b5b from memory into f9
fsgnjn.h f14, f12, f9 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x7e260af32fd95a6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x254157e6040294a # load x3 with value 0x254157e6040294a
sw x3, 0(x2) # store 0x254157e6040294a in memory
flh f8, 0(x2) # load 0x254157e6040294a from memory into f8
li x3, 0xc42e0b202b199fbb # load x3 with value 0xc42e0b202b199fbb
sw x3, 0(x2) # store 0xc42e0b202b199fbb in memory
flh f13, 0(x2) # load 0xc42e0b202b199fbb from memory into f13
fsgnjn.h f15, f8, f13 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0xc649cc4b3b0c55e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x964dd541fa2aa7dd # load x3 with value 0x964dd541fa2aa7dd
sw x3, 0(x2) # store 0x964dd541fa2aa7dd in memory
flh f13, 0(x2) # load 0x964dd541fa2aa7dd from memory into f13
li x3, 0xd4677f8b98a0c11a # load x3 with value 0xd4677f8b98a0c11a
sw x3, 0(x2) # store 0xd4677f8b98a0c11a in memory
flh f27, 0(x2) # load 0xd4677f8b98a0c11a from memory into f27
fsgnjn.h f16, f13, f27 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x26391dce4046257b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe570cf28c8dc4f02 # load x3 with value 0xe570cf28c8dc4f02
sw x3, 0(x2) # store 0xe570cf28c8dc4f02 in memory
flh f7, 0(x2) # load 0xe570cf28c8dc4f02 from memory into f7
li x3, 0xc5e9d1bc513bca76 # load x3 with value 0xc5e9d1bc513bca76
sw x3, 0(x2) # store 0xc5e9d1bc513bca76 in memory
flh f24, 0(x2) # load 0xc5e9d1bc513bca76 from memory into f24
fsgnjn.h f17, f7, f24 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x55c5b0fdf2dbe678 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xddae2d1997f75d56 # load x3 with value 0xddae2d1997f75d56
sw x3, 0(x2) # store 0xddae2d1997f75d56 in memory
flh f21, 0(x2) # load 0xddae2d1997f75d56 from memory into f21
li x3, 0x792c2b70d598b8ca # load x3 with value 0x792c2b70d598b8ca
sw x3, 0(x2) # store 0x792c2b70d598b8ca in memory
flh f16, 0(x2) # load 0x792c2b70d598b8ca from memory into f16
fsgnjn.h f18, f21, f16 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x532d735230a50f76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xefd51c08b2e87206 # load x3 with value 0xefd51c08b2e87206
sw x3, 0(x2) # store 0xefd51c08b2e87206 in memory
flh f17, 0(x2) # load 0xefd51c08b2e87206 from memory into f17
li x3, 0xe37bfe3f1d23477e # load x3 with value 0xe37bfe3f1d23477e
sw x3, 0(x2) # store 0xe37bfe3f1d23477e in memory
flh f29, 0(x2) # load 0xe37bfe3f1d23477e from memory into f29
fsgnjn.h f19, f17, f29 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x583b889c14a1e3bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x979d7a1879967b78 # load x3 with value 0x979d7a1879967b78
sw x3, 0(x2) # store 0x979d7a1879967b78 in memory
flh f12, 0(x2) # load 0x979d7a1879967b78 from memory into f12
li x3, 0xbfa5395be1eabaca # load x3 with value 0xbfa5395be1eabaca
sw x3, 0(x2) # store 0xbfa5395be1eabaca in memory
flh f4, 0(x2) # load 0xbfa5395be1eabaca from memory into f4
fsgnjn.h f20, f12, f4 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0xda4a22f8125f5589 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe02a1cde071b575d # load x3 with value 0xe02a1cde071b575d
sw x3, 0(x2) # store 0xe02a1cde071b575d in memory
flh f10, 0(x2) # load 0xe02a1cde071b575d from memory into f10
li x3, 0x69378fe071f4cf43 # load x3 with value 0x69378fe071f4cf43
sw x3, 0(x2) # store 0x69378fe071f4cf43 in memory
flh f5, 0(x2) # load 0x69378fe071f4cf43 from memory into f5
fsgnjn.h f21, f10, f5 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x9b23c7ae977ed6ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x89495d6ccc68c558 # load x3 with value 0x89495d6ccc68c558
sw x3, 0(x2) # store 0x89495d6ccc68c558 in memory
flh f8, 0(x2) # load 0x89495d6ccc68c558 from memory into f8
li x3, 0xc93cd49a6c653d2 # load x3 with value 0xc93cd49a6c653d2
sw x3, 0(x2) # store 0xc93cd49a6c653d2 in memory
flh f16, 0(x2) # load 0xc93cd49a6c653d2 from memory into f16
fsgnjn.h f22, f8, f16 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x5a8e9bbd86f51fda # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fb1870e502c7412 # load x3 with value 0x3fb1870e502c7412
sw x3, 0(x2) # store 0x3fb1870e502c7412 in memory
flh f24, 0(x2) # load 0x3fb1870e502c7412 from memory into f24
li x3, 0xf3e2117ad25d955 # load x3 with value 0xf3e2117ad25d955
sw x3, 0(x2) # store 0xf3e2117ad25d955 in memory
flh f4, 0(x2) # load 0xf3e2117ad25d955 from memory into f4
fsgnjn.h f23, f24, f4 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x1f7e9617a5aead7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe5b192f4941d898f # load x3 with value 0xe5b192f4941d898f
sw x3, 0(x2) # store 0xe5b192f4941d898f in memory
flh f28, 0(x2) # load 0xe5b192f4941d898f from memory into f28
li x3, 0x22d06d716440f388 # load x3 with value 0x22d06d716440f388
sw x3, 0(x2) # store 0x22d06d716440f388 in memory
flh f22, 0(x2) # load 0x22d06d716440f388 from memory into f22
fsgnjn.h f24, f28, f22 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x16b8710a5df258ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1f3ac9f4d85c8d22 # load x3 with value 0x1f3ac9f4d85c8d22
sw x3, 0(x2) # store 0x1f3ac9f4d85c8d22 in memory
flh f26, 0(x2) # load 0x1f3ac9f4d85c8d22 from memory into f26
li x3, 0x3bbb31a9264b4ff5 # load x3 with value 0x3bbb31a9264b4ff5
sw x3, 0(x2) # store 0x3bbb31a9264b4ff5 in memory
flh f7, 0(x2) # load 0x3bbb31a9264b4ff5 from memory into f7
fsgnjn.h f25, f26, f7 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x9000d1c92f18f20a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1d3ad87494bfa03c # load x3 with value 0x1d3ad87494bfa03c
sw x3, 0(x2) # store 0x1d3ad87494bfa03c in memory
flh f12, 0(x2) # load 0x1d3ad87494bfa03c from memory into f12
li x3, 0xce2818b0d7b7191e # load x3 with value 0xce2818b0d7b7191e
sw x3, 0(x2) # store 0xce2818b0d7b7191e in memory
flh f5, 0(x2) # load 0xce2818b0d7b7191e from memory into f5
fsgnjn.h f26, f12, f5 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0xca1c98ffd118259d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe1a391b06ee67980 # load x3 with value 0xe1a391b06ee67980
sw x3, 0(x2) # store 0xe1a391b06ee67980 in memory
flh f10, 0(x2) # load 0xe1a391b06ee67980 from memory into f10
li x3, 0x66741a39f9078254 # load x3 with value 0x66741a39f9078254
sw x3, 0(x2) # store 0x66741a39f9078254 in memory
flh f29, 0(x2) # load 0x66741a39f9078254 from memory into f29
fsgnjn.h f27, f10, f29 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0xd263cf75fde86be5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc3b2d70226cb4e6a # load x3 with value 0xc3b2d70226cb4e6a
sw x3, 0(x2) # store 0xc3b2d70226cb4e6a in memory
flh f4, 0(x2) # load 0xc3b2d70226cb4e6a from memory into f4
li x3, 0x950585fcce8c57bb # load x3 with value 0x950585fcce8c57bb
sw x3, 0(x2) # store 0x950585fcce8c57bb in memory
flh f30, 0(x2) # load 0x950585fcce8c57bb from memory into f30
fsgnjn.h f28, f4, f30 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0xf1b2556f3b65c0d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbc9b02f958fd8d10 # load x3 with value 0xbc9b02f958fd8d10
sw x3, 0(x2) # store 0xbc9b02f958fd8d10 in memory
flh f15, 0(x2) # load 0xbc9b02f958fd8d10 from memory into f15
li x3, 0x3f108da9229fa68e # load x3 with value 0x3f108da9229fa68e
sw x3, 0(x2) # store 0x3f108da9229fa68e in memory
flh f30, 0(x2) # load 0x3f108da9229fa68e from memory into f30
fsgnjn.h f29, f15, f30 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x2bb411ea460ffe6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1b7cfa2aa149ba09 # load x3 with value 0x1b7cfa2aa149ba09
sw x3, 0(x2) # store 0x1b7cfa2aa149ba09 in memory
flh f26, 0(x2) # load 0x1b7cfa2aa149ba09 from memory into f26
li x3, 0x8bb6fc12063d283b # load x3 with value 0x8bb6fc12063d283b
sw x3, 0(x2) # store 0x8bb6fc12063d283b in memory
flh f20, 0(x2) # load 0x8bb6fc12063d283b from memory into f20
fsgnjn.h f30, f26, f20 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0xb89341f74c180ff4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdaf8b1cc77b841ad # load x3 with value 0xdaf8b1cc77b841ad
sw x3, 0(x2) # store 0xdaf8b1cc77b841ad in memory
flh f12, 0(x2) # load 0xdaf8b1cc77b841ad from memory into f12
li x3, 0xd084fc95f4805a99 # load x3 with value 0xd084fc95f4805a99
sw x3, 0(x2) # store 0xd084fc95f4805a99 in memory
flh f13, 0(x2) # load 0xd084fc95f4805a99 from memory into f13
fsgnjn.h f31, f12, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x3, 0x4b29225cf80d6839 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1c5c564b29146f4f # load x3 with value 0x1c5c564b29146f4f
sw x3, 0(x2) # store 0x1c5c564b29146f4f in memory
flh f0, 0(x2) # load 0x1c5c564b29146f4f from memory into f0
li x3, 0xf56226026cdfa1d7 # load x3 with value 0xf56226026cdfa1d7
sw x3, 0(x2) # store 0xf56226026cdfa1d7 in memory
flh f10, 0(x2) # load 0xf56226026cdfa1d7 from memory into f10
fsgnjn.h f3, f0, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x15, 0xddc193724373ff9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd4c7fdb749ca7f3f # load x3 with value 0xd4c7fdb749ca7f3f
sw x3, 0(x2) # store 0xd4c7fdb749ca7f3f in memory
flh f1, 0(x2) # load 0xd4c7fdb749ca7f3f from memory into f1
li x3, 0xbcbcaaab76235b5f # load x3 with value 0xbcbcaaab76235b5f
sw x3, 0(x2) # store 0xbcbcaaab76235b5f in memory
flh f10, 0(x2) # load 0xbcbcaaab76235b5f from memory into f10
fsgnjn.h f15, f1, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x17, 0x3b71f47402b2beb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb3029a45be5e90cc # load x3 with value 0xb3029a45be5e90cc
sw x3, 0(x2) # store 0xb3029a45be5e90cc in memory
flh f2, 0(x2) # load 0xb3029a45be5e90cc from memory into f2
li x3, 0x727878a36592da1 # load x3 with value 0x727878a36592da1
sw x3, 0(x2) # store 0x727878a36592da1 in memory
flh f21, 0(x2) # load 0x727878a36592da1 from memory into f21
fsgnjn.h f17, f2, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x19, 0x1328b80d82ecb44a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf02e218798fa37e0 # load x3 with value 0xf02e218798fa37e0
sw x3, 0(x2) # store 0xf02e218798fa37e0 in memory
flh f3, 0(x2) # load 0xf02e218798fa37e0 from memory into f3
li x3, 0xe5e4e01ee28d4d3e # load x3 with value 0xe5e4e01ee28d4d3e
sw x3, 0(x2) # store 0xe5e4e01ee28d4d3e in memory
flh f5, 0(x2) # load 0xe5e4e01ee28d4d3e from memory into f5
fsgnjn.h f19, f3, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x4, 0x1ac83e6bb68d25d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcbe42ca3dbe3e336 # load x3 with value 0xcbe42ca3dbe3e336
sw x3, 0(x2) # store 0xcbe42ca3dbe3e336 in memory
flh f4, 0(x2) # load 0xcbe42ca3dbe3e336 from memory into f4
li x3, 0x9da28d035edc3ced # load x3 with value 0x9da28d035edc3ced
sw x3, 0(x2) # store 0x9da28d035edc3ced in memory
flh f3, 0(x2) # load 0x9da28d035edc3ced from memory into f3
fsgnjn.h f4, f4, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x14, 0x8c1e7e4ac6febe70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf1e1021df8f9453 # load x3 with value 0xf1e1021df8f9453
sw x3, 0(x2) # store 0xf1e1021df8f9453 in memory
flh f5, 0(x2) # load 0xf1e1021df8f9453 from memory into f5
li x3, 0x68fd542175c26457 # load x3 with value 0x68fd542175c26457
sw x3, 0(x2) # store 0x68fd542175c26457 in memory
flh f28, 0(x2) # load 0x68fd542175c26457 from memory into f28
fsgnjn.h f14, f5, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x22, 0xb77b235be2d5403d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1b6134bf9e05c7cb # load x3 with value 0x1b6134bf9e05c7cb
sw x3, 0(x2) # store 0x1b6134bf9e05c7cb in memory
flh f6, 0(x2) # load 0x1b6134bf9e05c7cb from memory into f6
li x3, 0x847f977e10b5b50e # load x3 with value 0x847f977e10b5b50e
sw x3, 0(x2) # store 0x847f977e10b5b50e in memory
flh f14, 0(x2) # load 0x847f977e10b5b50e from memory into f14
fsgnjn.h f22, f6, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x31, 0xedb9bf7f8f55a700 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc92141e4afadb057 # load x3 with value 0xc92141e4afadb057
sw x3, 0(x2) # store 0xc92141e4afadb057 in memory
flh f7, 0(x2) # load 0xc92141e4afadb057 from memory into f7
li x3, 0xeca73566d37bc90f # load x3 with value 0xeca73566d37bc90f
sw x3, 0(x2) # store 0xeca73566d37bc90f in memory
flh f19, 0(x2) # load 0xeca73566d37bc90f from memory into f19
fsgnjn.h f31, f7, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x5, 0x6dca6fc95ea7fdc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x33f7e9a76aeeeeb4 # load x3 with value 0x33f7e9a76aeeeeb4
sw x3, 0(x2) # store 0x33f7e9a76aeeeeb4 in memory
flh f8, 0(x2) # load 0x33f7e9a76aeeeeb4 from memory into f8
li x3, 0x31b6e2ddd04f4388 # load x3 with value 0x31b6e2ddd04f4388
sw x3, 0(x2) # store 0x31b6e2ddd04f4388 in memory
flh f1, 0(x2) # load 0x31b6e2ddd04f4388 from memory into f1
fsgnjn.h f5, f8, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x12, 0x4708f5f1693aa760 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x412650d6f2b2740f # load x3 with value 0x412650d6f2b2740f
sw x3, 0(x2) # store 0x412650d6f2b2740f in memory
flh f9, 0(x2) # load 0x412650d6f2b2740f from memory into f9
li x3, 0xbe6883a6c668ccc0 # load x3 with value 0xbe6883a6c668ccc0
sw x3, 0(x2) # store 0xbe6883a6c668ccc0 in memory
flh f11, 0(x2) # load 0xbe6883a6c668ccc0 from memory into f11
fsgnjn.h f12, f9, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x23, 0x2458a20ea665cb47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x31cbc5d40588ab59 # load x3 with value 0x31cbc5d40588ab59
sw x3, 0(x2) # store 0x31cbc5d40588ab59 in memory
flh f10, 0(x2) # load 0x31cbc5d40588ab59 from memory into f10
li x3, 0x3379500bf9764daf # load x3 with value 0x3379500bf9764daf
sw x3, 0(x2) # store 0x3379500bf9764daf in memory
flh f25, 0(x2) # load 0x3379500bf9764daf from memory into f25
fsgnjn.h f23, f10, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x3, 0x4bccbeac505e7eb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x690e66b6e30ce0d1 # load x3 with value 0x690e66b6e30ce0d1
sw x3, 0(x2) # store 0x690e66b6e30ce0d1 in memory
flh f11, 0(x2) # load 0x690e66b6e30ce0d1 from memory into f11
li x3, 0xd2fe6a7840110b34 # load x3 with value 0xd2fe6a7840110b34
sw x3, 0(x2) # store 0xd2fe6a7840110b34 in memory
flh f12, 0(x2) # load 0xd2fe6a7840110b34 from memory into f12
fsgnjn.h f3, f11, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x22, 0x81146363fc3c2215 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc2dc2baf979f31f6 # load x3 with value 0xc2dc2baf979f31f6
sw x3, 0(x2) # store 0xc2dc2baf979f31f6 in memory
flh f12, 0(x2) # load 0xc2dc2baf979f31f6 from memory into f12
li x3, 0xe36ffba3d6af6ccd # load x3 with value 0xe36ffba3d6af6ccd
sw x3, 0(x2) # store 0xe36ffba3d6af6ccd in memory
flh f1, 0(x2) # load 0xe36ffba3d6af6ccd from memory into f1
fsgnjn.h f22, f12, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x4, 0x12c82dcb42e5c8db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7826db5554ad9e94 # load x3 with value 0x7826db5554ad9e94
sw x3, 0(x2) # store 0x7826db5554ad9e94 in memory
flh f13, 0(x2) # load 0x7826db5554ad9e94 from memory into f13
li x3, 0xff359f8fd3f9ba93 # load x3 with value 0xff359f8fd3f9ba93
sw x3, 0(x2) # store 0xff359f8fd3f9ba93 in memory
flh f27, 0(x2) # load 0xff359f8fd3f9ba93 from memory into f27
fsgnjn.h f4, f13, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x13, 0xf7011311a78f22c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x12c9d01fc4dd43d1 # load x3 with value 0x12c9d01fc4dd43d1
sw x3, 0(x2) # store 0x12c9d01fc4dd43d1 in memory
flh f14, 0(x2) # load 0x12c9d01fc4dd43d1 from memory into f14
li x3, 0x990a691e9cbe223e # load x3 with value 0x990a691e9cbe223e
sw x3, 0(x2) # store 0x990a691e9cbe223e in memory
flh f16, 0(x2) # load 0x990a691e9cbe223e from memory into f16
fsgnjn.h f13, f14, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x12, 0x2039d4d07498b55f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd6ed9286a883fb93 # load x3 with value 0xd6ed9286a883fb93
sw x3, 0(x2) # store 0xd6ed9286a883fb93 in memory
flh f15, 0(x2) # load 0xd6ed9286a883fb93 from memory into f15
li x3, 0x557e12c3c6eda9b1 # load x3 with value 0x557e12c3c6eda9b1
sw x3, 0(x2) # store 0x557e12c3c6eda9b1 in memory
flh f31, 0(x2) # load 0x557e12c3c6eda9b1 from memory into f31
fsgnjn.h f12, f15, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x2, 0x059838a0b4add6f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd910e2879f991f8 # load x3 with value 0xd910e2879f991f8
sw x3, 0(x2) # store 0xd910e2879f991f8 in memory
flh f16, 0(x2) # load 0xd910e2879f991f8 from memory into f16
li x3, 0x7b1690889443a09 # load x3 with value 0x7b1690889443a09
sw x3, 0(x2) # store 0x7b1690889443a09 in memory
flh f3, 0(x2) # load 0x7b1690889443a09 from memory into f3
fsgnjn.h f2, f16, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x30, 0xb08c944444070abc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9e6610e512d90216 # load x3 with value 0x9e6610e512d90216
sw x3, 0(x2) # store 0x9e6610e512d90216 in memory
flh f17, 0(x2) # load 0x9e6610e512d90216 from memory into f17
li x3, 0xbb7a802bd1d0a58 # load x3 with value 0xbb7a802bd1d0a58
sw x3, 0(x2) # store 0xbb7a802bd1d0a58 in memory
flh f29, 0(x2) # load 0xbb7a802bd1d0a58 from memory into f29
fsgnjn.h f30, f17, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x8, 0x633b1f7b092fbb03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc5ed125f163a8db1 # load x3 with value 0xc5ed125f163a8db1
sw x3, 0(x2) # store 0xc5ed125f163a8db1 in memory
flh f18, 0(x2) # load 0xc5ed125f163a8db1 from memory into f18
li x3, 0x6df459d91490b948 # load x3 with value 0x6df459d91490b948
sw x3, 0(x2) # store 0x6df459d91490b948 in memory
flh f24, 0(x2) # load 0x6df459d91490b948 from memory into f24
fsgnjn.h f8, f18, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x24, 0x0f8eb508302610a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb1866180d2d36cf # load x3 with value 0xb1866180d2d36cf
sw x3, 0(x2) # store 0xb1866180d2d36cf in memory
flh f19, 0(x2) # load 0xb1866180d2d36cf from memory into f19
li x3, 0x845937b6da5f3c66 # load x3 with value 0x845937b6da5f3c66
sw x3, 0(x2) # store 0x845937b6da5f3c66 in memory
flh f6, 0(x2) # load 0x845937b6da5f3c66 from memory into f6
fsgnjn.h f24, f19, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x28, 0x0f294dd89009f9ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4957d77146176209 # load x3 with value 0x4957d77146176209
sw x3, 0(x2) # store 0x4957d77146176209 in memory
flh f20, 0(x2) # load 0x4957d77146176209 from memory into f20
li x3, 0x4a1f4cde9c51a725 # load x3 with value 0x4a1f4cde9c51a725
sw x3, 0(x2) # store 0x4a1f4cde9c51a725 in memory
flh f9, 0(x2) # load 0x4a1f4cde9c51a725 from memory into f9
fsgnjn.h f28, f20, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x4, 0xa8f633bb96e3fc06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7480ab00268dfdc1 # load x3 with value 0x7480ab00268dfdc1
sw x3, 0(x2) # store 0x7480ab00268dfdc1 in memory
flh f21, 0(x2) # load 0x7480ab00268dfdc1 from memory into f21
li x3, 0xa29f180650028650 # load x3 with value 0xa29f180650028650
sw x3, 0(x2) # store 0xa29f180650028650 in memory
flh f3, 0(x2) # load 0xa29f180650028650 from memory into f3
fsgnjn.h f4, f21, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x7, 0xd5e1d2f15c8af808 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbbefd60a56d82725 # load x3 with value 0xbbefd60a56d82725
sw x3, 0(x2) # store 0xbbefd60a56d82725 in memory
flh f22, 0(x2) # load 0xbbefd60a56d82725 from memory into f22
li x3, 0xb5fb96a940d764d4 # load x3 with value 0xb5fb96a940d764d4
sw x3, 0(x2) # store 0xb5fb96a940d764d4 in memory
flh f21, 0(x2) # load 0xb5fb96a940d764d4 from memory into f21
fsgnjn.h f7, f22, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x23, 0x072b27dbbbf654b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaa35eb88f6b43f6 # load x3 with value 0xaa35eb88f6b43f6
sw x3, 0(x2) # store 0xaa35eb88f6b43f6 in memory
flh f23, 0(x2) # load 0xaa35eb88f6b43f6 from memory into f23
li x3, 0xe1fe9c7befdd2077 # load x3 with value 0xe1fe9c7befdd2077
sw x3, 0(x2) # store 0xe1fe9c7befdd2077 in memory
flh f8, 0(x2) # load 0xe1fe9c7befdd2077 from memory into f8
fsgnjn.h f23, f23, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x11, 0x3d7315fc047a4db8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe34421dd7064c5ca # load x3 with value 0xe34421dd7064c5ca
sw x3, 0(x2) # store 0xe34421dd7064c5ca in memory
flh f24, 0(x2) # load 0xe34421dd7064c5ca from memory into f24
li x3, 0x4023c08efc16228c # load x3 with value 0x4023c08efc16228c
sw x3, 0(x2) # store 0x4023c08efc16228c in memory
flh f20, 0(x2) # load 0x4023c08efc16228c from memory into f20
fsgnjn.h f11, f24, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x3, 0xd013dbc588e3aa28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9c98e8c62e7b192d # load x3 with value 0x9c98e8c62e7b192d
sw x3, 0(x2) # store 0x9c98e8c62e7b192d in memory
flh f25, 0(x2) # load 0x9c98e8c62e7b192d from memory into f25
li x3, 0x488e488942303123 # load x3 with value 0x488e488942303123
sw x3, 0(x2) # store 0x488e488942303123 in memory
flh f30, 0(x2) # load 0x488e488942303123 from memory into f30
fsgnjn.h f3, f25, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x14, 0xb12fb6e519556e2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40a19d892e781f5d # load x3 with value 0x40a19d892e781f5d
sw x3, 0(x2) # store 0x40a19d892e781f5d in memory
flh f26, 0(x2) # load 0x40a19d892e781f5d from memory into f26
li x3, 0x39c2c7257c83efd9 # load x3 with value 0x39c2c7257c83efd9
sw x3, 0(x2) # store 0x39c2c7257c83efd9 in memory
flh f5, 0(x2) # load 0x39c2c7257c83efd9 from memory into f5
fsgnjn.h f14, f26, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x23, 0x4184922ee274256c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd073f80329e0991c # load x3 with value 0xd073f80329e0991c
sw x3, 0(x2) # store 0xd073f80329e0991c in memory
flh f27, 0(x2) # load 0xd073f80329e0991c from memory into f27
li x3, 0x77da8d6a73fc3f5b # load x3 with value 0x77da8d6a73fc3f5b
sw x3, 0(x2) # store 0x77da8d6a73fc3f5b in memory
flh f22, 0(x2) # load 0x77da8d6a73fc3f5b from memory into f22
fsgnjn.h f23, f27, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x26, 0x8efabf5b9377dea0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa8131cd55a1164a1 # load x3 with value 0xa8131cd55a1164a1
sw x3, 0(x2) # store 0xa8131cd55a1164a1 in memory
flh f28, 0(x2) # load 0xa8131cd55a1164a1 from memory into f28
li x3, 0x5b28705c28da1b79 # load x3 with value 0x5b28705c28da1b79
sw x3, 0(x2) # store 0x5b28705c28da1b79 in memory
flh f25, 0(x2) # load 0x5b28705c28da1b79 from memory into f25
fsgnjn.h f26, f28, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x3, 0xf8bd57dcccaf35d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4edf396d2d84b4ef # load x3 with value 0x4edf396d2d84b4ef
sw x3, 0(x2) # store 0x4edf396d2d84b4ef in memory
flh f29, 0(x2) # load 0x4edf396d2d84b4ef from memory into f29
li x3, 0x3a38ca7c03679581 # load x3 with value 0x3a38ca7c03679581
sw x3, 0(x2) # store 0x3a38ca7c03679581 in memory
flh f8, 0(x2) # load 0x3a38ca7c03679581 from memory into f8
fsgnjn.h f3, f29, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x12, 0x5b7887522861f096 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8efa3c31e1d58caa # load x3 with value 0x8efa3c31e1d58caa
sw x3, 0(x2) # store 0x8efa3c31e1d58caa in memory
flh f30, 0(x2) # load 0x8efa3c31e1d58caa from memory into f30
li x3, 0xfb2e60261765783d # load x3 with value 0xfb2e60261765783d
sw x3, 0(x2) # store 0xfb2e60261765783d in memory
flh f8, 0(x2) # load 0xfb2e60261765783d from memory into f8
fsgnjn.h f12, f30, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x7, 0x972098a7610cea90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x52d9037e178845b7 # load x3 with value 0x52d9037e178845b7
sw x3, 0(x2) # store 0x52d9037e178845b7 in memory
flh f31, 0(x2) # load 0x52d9037e178845b7 from memory into f31
li x3, 0x885fc9495979f9fd # load x3 with value 0x885fc9495979f9fd
sw x3, 0(x2) # store 0x885fc9495979f9fd in memory
flh f10, 0(x2) # load 0x885fc9495979f9fd from memory into f10
fsgnjn.h f7, f31, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x16, 0xc71113c1b11155e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe0b7e76297aa97ed # load x3 with value 0xe0b7e76297aa97ed
sw x3, 0(x2) # store 0xe0b7e76297aa97ed in memory
flh f20, 0(x2) # load 0xe0b7e76297aa97ed from memory into f20
li x3, 0x3dcac214d5bc727b # load x3 with value 0x3dcac214d5bc727b
sw x3, 0(x2) # store 0x3dcac214d5bc727b in memory
flh f0, 0(x2) # load 0x3dcac214d5bc727b from memory into f0
fsgnjn.h f16, f20, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x9, 0x05d151b4e82bda85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x68c010bdf0a7869d # load x3 with value 0x68c010bdf0a7869d
sw x3, 0(x2) # store 0x68c010bdf0a7869d in memory
flh f23, 0(x2) # load 0x68c010bdf0a7869d from memory into f23
li x3, 0x131b7ce7c2041afd # load x3 with value 0x131b7ce7c2041afd
sw x3, 0(x2) # store 0x131b7ce7c2041afd in memory
flh f1, 0(x2) # load 0x131b7ce7c2041afd from memory into f1
fsgnjn.h f9, f23, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x6, 0x6e11664be2cdd7a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x18348674802617ad # load x3 with value 0x18348674802617ad
sw x3, 0(x2) # store 0x18348674802617ad in memory
flh f14, 0(x2) # load 0x18348674802617ad from memory into f14
li x3, 0x8a216612bae51a29 # load x3 with value 0x8a216612bae51a29
sw x3, 0(x2) # store 0x8a216612bae51a29 in memory
flh f2, 0(x2) # load 0x8a216612bae51a29 from memory into f2
fsgnjn.h f6, f14, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x17, 0xae875abae3680a7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc1b01ad728dd230d # load x3 with value 0xc1b01ad728dd230d
sw x3, 0(x2) # store 0xc1b01ad728dd230d in memory
flh f18, 0(x2) # load 0xc1b01ad728dd230d from memory into f18
li x3, 0xa3378d0b152f7bfe # load x3 with value 0xa3378d0b152f7bfe
sw x3, 0(x2) # store 0xa3378d0b152f7bfe in memory
flh f3, 0(x2) # load 0xa3378d0b152f7bfe from memory into f3
fsgnjn.h f17, f18, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x14, 0x5a7796083b4f1248 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x438ffa9eb18d3c26 # load x3 with value 0x438ffa9eb18d3c26
sw x3, 0(x2) # store 0x438ffa9eb18d3c26 in memory
flh f8, 0(x2) # load 0x438ffa9eb18d3c26 from memory into f8
li x3, 0xe47b80165a2ee408 # load x3 with value 0xe47b80165a2ee408
sw x3, 0(x2) # store 0xe47b80165a2ee408 in memory
flh f4, 0(x2) # load 0xe47b80165a2ee408 from memory into f4
fsgnjn.h f14, f8, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x29, 0x0d2d3c9ff361d207 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x222268a390e24e1b # load x3 with value 0x222268a390e24e1b
sw x3, 0(x2) # store 0x222268a390e24e1b in memory
flh f9, 0(x2) # load 0x222268a390e24e1b from memory into f9
li x3, 0xce9d73cf7ee34646 # load x3 with value 0xce9d73cf7ee34646
sw x3, 0(x2) # store 0xce9d73cf7ee34646 in memory
flh f5, 0(x2) # load 0xce9d73cf7ee34646 from memory into f5
fsgnjn.h f29, f9, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x28, 0x142e3d6397fd974c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1540c7c33479fef7 # load x3 with value 0x1540c7c33479fef7
sw x3, 0(x2) # store 0x1540c7c33479fef7 in memory
flh f12, 0(x2) # load 0x1540c7c33479fef7 from memory into f12
li x3, 0x2cc0c0635b43101d # load x3 with value 0x2cc0c0635b43101d
sw x3, 0(x2) # store 0x2cc0c0635b43101d in memory
flh f6, 0(x2) # load 0x2cc0c0635b43101d from memory into f6
fsgnjn.h f28, f12, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x18, 0x214e6e31335790e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfd5f035adf085a70 # load x3 with value 0xfd5f035adf085a70
sw x3, 0(x2) # store 0xfd5f035adf085a70 in memory
flh f16, 0(x2) # load 0xfd5f035adf085a70 from memory into f16
li x3, 0xf1b24c1e966483c6 # load x3 with value 0xf1b24c1e966483c6
sw x3, 0(x2) # store 0xf1b24c1e966483c6 in memory
flh f7, 0(x2) # load 0xf1b24c1e966483c6 from memory into f7
fsgnjn.h f18, f16, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x1, 0x7e17a256268731bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xab1340ab848ef864 # load x3 with value 0xab1340ab848ef864
sw x3, 0(x2) # store 0xab1340ab848ef864 in memory
flh f21, 0(x2) # load 0xab1340ab848ef864 from memory into f21
li x3, 0x5b971e4dd19fb083 # load x3 with value 0x5b971e4dd19fb083
sw x3, 0(x2) # store 0x5b971e4dd19fb083 in memory
flh f8, 0(x2) # load 0x5b971e4dd19fb083 from memory into f8
fsgnjn.h f1, f21, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x15, 0x61d13e69b54441bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xab2c76d31546804e # load x3 with value 0xab2c76d31546804e
sw x3, 0(x2) # store 0xab2c76d31546804e in memory
flh f10, 0(x2) # load 0xab2c76d31546804e from memory into f10
li x3, 0x74045c3c0ad8be7f # load x3 with value 0x74045c3c0ad8be7f
sw x3, 0(x2) # store 0x74045c3c0ad8be7f in memory
flh f9, 0(x2) # load 0x74045c3c0ad8be7f from memory into f9
fsgnjn.h f15, f10, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x28, 0xbae0aaba912160a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4962c00f6b6d9429 # load x3 with value 0x4962c00f6b6d9429
sw x3, 0(x2) # store 0x4962c00f6b6d9429 in memory
flh f14, 0(x2) # load 0x4962c00f6b6d9429 from memory into f14
li x3, 0xf070da3508b8a211 # load x3 with value 0xf070da3508b8a211
sw x3, 0(x2) # store 0xf070da3508b8a211 in memory
flh f10, 0(x2) # load 0xf070da3508b8a211 from memory into f10
fsgnjn.h f28, f14, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x26, 0x4cee517b5dc938c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2fcf5651924981d7 # load x3 with value 0x2fcf5651924981d7
sw x3, 0(x2) # store 0x2fcf5651924981d7 in memory
flh f10, 0(x2) # load 0x2fcf5651924981d7 from memory into f10
li x3, 0x84db467e8fefa16f # load x3 with value 0x84db467e8fefa16f
sw x3, 0(x2) # store 0x84db467e8fefa16f in memory
flh f11, 0(x2) # load 0x84db467e8fefa16f from memory into f11
fsgnjn.h f26, f10, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x7, 0x7f29a4b83b0193a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa9062df27bba5a33 # load x3 with value 0xa9062df27bba5a33
sw x3, 0(x2) # store 0xa9062df27bba5a33 in memory
flh f2, 0(x2) # load 0xa9062df27bba5a33 from memory into f2
li x3, 0xff0bc57488052d28 # load x3 with value 0xff0bc57488052d28
sw x3, 0(x2) # store 0xff0bc57488052d28 in memory
flh f12, 0(x2) # load 0xff0bc57488052d28 from memory into f12
fsgnjn.h f7, f2, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x23, 0x77a676dad2d5152b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x830088ba2d94a7b9 # load x3 with value 0x830088ba2d94a7b9
sw x3, 0(x2) # store 0x830088ba2d94a7b9 in memory
flh f10, 0(x2) # load 0x830088ba2d94a7b9 from memory into f10
li x3, 0x4623a058ef7ad5d6 # load x3 with value 0x4623a058ef7ad5d6
sw x3, 0(x2) # store 0x4623a058ef7ad5d6 in memory
flh f13, 0(x2) # load 0x4623a058ef7ad5d6 from memory into f13
fsgnjn.h f23, f10, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x22, 0x018fda1c9268d011 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf3485667e6929d58 # load x3 with value 0xf3485667e6929d58
sw x3, 0(x2) # store 0xf3485667e6929d58 in memory
flh f3, 0(x2) # load 0xf3485667e6929d58 from memory into f3
li x3, 0xf0de96d72ccdde18 # load x3 with value 0xf0de96d72ccdde18
sw x3, 0(x2) # store 0xf0de96d72ccdde18 in memory
flh f14, 0(x2) # load 0xf0de96d72ccdde18 from memory into f14
fsgnjn.h f22, f3, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x2, 0x1a070a0432c82ed6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3d8ddd867042cb43 # load x3 with value 0x3d8ddd867042cb43
sw x3, 0(x2) # store 0x3d8ddd867042cb43 in memory
flh f25, 0(x2) # load 0x3d8ddd867042cb43 from memory into f25
li x3, 0xaaa613122e705a95 # load x3 with value 0xaaa613122e705a95
sw x3, 0(x2) # store 0xaaa613122e705a95 in memory
flh f15, 0(x2) # load 0xaaa613122e705a95 from memory into f15
fsgnjn.h f2, f25, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x29, 0x22edd205180ba484 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x282feeb7d8833e49 # load x3 with value 0x282feeb7d8833e49
sw x3, 0(x2) # store 0x282feeb7d8833e49 in memory
flh f4, 0(x2) # load 0x282feeb7d8833e49 from memory into f4
li x3, 0x1d2ebfb37792da88 # load x3 with value 0x1d2ebfb37792da88
sw x3, 0(x2) # store 0x1d2ebfb37792da88 in memory
flh f16, 0(x2) # load 0x1d2ebfb37792da88 from memory into f16
fsgnjn.h f29, f4, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x29, 0x5eec708f074e9720 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa5fd8c8f240a2cf4 # load x3 with value 0xa5fd8c8f240a2cf4
sw x3, 0(x2) # store 0xa5fd8c8f240a2cf4 in memory
flh f22, 0(x2) # load 0xa5fd8c8f240a2cf4 from memory into f22
li x3, 0xd3bcce2dca1de736 # load x3 with value 0xd3bcce2dca1de736
sw x3, 0(x2) # store 0xd3bcce2dca1de736 in memory
flh f17, 0(x2) # load 0xd3bcce2dca1de736 from memory into f17
fsgnjn.h f29, f22, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x19, 0x4815d780d7c65c52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x315c1fe1fd641a8d # load x3 with value 0x315c1fe1fd641a8d
sw x3, 0(x2) # store 0x315c1fe1fd641a8d in memory
flh f26, 0(x2) # load 0x315c1fe1fd641a8d from memory into f26
li x3, 0x46f5326768b7d2b # load x3 with value 0x46f5326768b7d2b
sw x3, 0(x2) # store 0x46f5326768b7d2b in memory
flh f18, 0(x2) # load 0x46f5326768b7d2b from memory into f18
fsgnjn.h f19, f26, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x24, 0x0cb04a0e2c2da5e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5e4a50cadb6b9cb2 # load x3 with value 0x5e4a50cadb6b9cb2
sw x3, 0(x2) # store 0x5e4a50cadb6b9cb2 in memory
flh f25, 0(x2) # load 0x5e4a50cadb6b9cb2 from memory into f25
li x3, 0x5b0643f6945ea5eb # load x3 with value 0x5b0643f6945ea5eb
sw x3, 0(x2) # store 0x5b0643f6945ea5eb in memory
flh f19, 0(x2) # load 0x5b0643f6945ea5eb from memory into f19
fsgnjn.h f24, f25, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x11, 0x1e99d2c4be9e4fae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf4cc1a64f771f3ec # load x3 with value 0xf4cc1a64f771f3ec
sw x3, 0(x2) # store 0xf4cc1a64f771f3ec in memory
flh f28, 0(x2) # load 0xf4cc1a64f771f3ec from memory into f28
li x3, 0x3e7426dd41646b08 # load x3 with value 0x3e7426dd41646b08
sw x3, 0(x2) # store 0x3e7426dd41646b08 in memory
flh f20, 0(x2) # load 0x3e7426dd41646b08 from memory into f20
fsgnjn.h f11, f28, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x28, 0xc4b80f537fe14291 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x66b57b488fde07b4 # load x3 with value 0x66b57b488fde07b4
sw x3, 0(x2) # store 0x66b57b488fde07b4 in memory
flh f14, 0(x2) # load 0x66b57b488fde07b4 from memory into f14
li x3, 0xdb4de1db3596c189 # load x3 with value 0xdb4de1db3596c189
sw x3, 0(x2) # store 0xdb4de1db3596c189 in memory
flh f21, 0(x2) # load 0xdb4de1db3596c189 from memory into f21
fsgnjn.h f28, f14, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x29, 0xb95fe9bb656ce6c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5999de60a575a3f6 # load x3 with value 0x5999de60a575a3f6
sw x3, 0(x2) # store 0x5999de60a575a3f6 in memory
flh f31, 0(x2) # load 0x5999de60a575a3f6 from memory into f31
li x3, 0x7c137edbb47b0058 # load x3 with value 0x7c137edbb47b0058
sw x3, 0(x2) # store 0x7c137edbb47b0058 in memory
flh f22, 0(x2) # load 0x7c137edbb47b0058 from memory into f22
fsgnjn.h f29, f31, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x17, 0xcb7792606c801fd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7e5bedd1a279a950 # load x3 with value 0x7e5bedd1a279a950
sw x3, 0(x2) # store 0x7e5bedd1a279a950 in memory
flh f28, 0(x2) # load 0x7e5bedd1a279a950 from memory into f28
li x3, 0x1c3605202884139c # load x3 with value 0x1c3605202884139c
sw x3, 0(x2) # store 0x1c3605202884139c in memory
flh f23, 0(x2) # load 0x1c3605202884139c from memory into f23
fsgnjn.h f17, f28, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x29, 0x32cf988e53302d44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8de8b5814ba173a6 # load x3 with value 0x8de8b5814ba173a6
sw x3, 0(x2) # store 0x8de8b5814ba173a6 in memory
flh f23, 0(x2) # load 0x8de8b5814ba173a6 from memory into f23
li x3, 0x8e825f9fe97b8e38 # load x3 with value 0x8e825f9fe97b8e38
sw x3, 0(x2) # store 0x8e825f9fe97b8e38 in memory
flh f24, 0(x2) # load 0x8e825f9fe97b8e38 from memory into f24
fsgnjn.h f29, f23, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x22, 0x037167c558fb41a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1a638f0a400dee33 # load x3 with value 0x1a638f0a400dee33
sw x3, 0(x2) # store 0x1a638f0a400dee33 in memory
flh f28, 0(x2) # load 0x1a638f0a400dee33 from memory into f28
li x3, 0xfc4911a0e2d1da72 # load x3 with value 0xfc4911a0e2d1da72
sw x3, 0(x2) # store 0xfc4911a0e2d1da72 in memory
flh f25, 0(x2) # load 0xfc4911a0e2d1da72 from memory into f25
fsgnjn.h f22, f28, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x6, 0x3c264d365b3c10fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x27f4ab881042e5c5 # load x3 with value 0x27f4ab881042e5c5
sw x3, 0(x2) # store 0x27f4ab881042e5c5 in memory
flh f24, 0(x2) # load 0x27f4ab881042e5c5 from memory into f24
li x3, 0x90738fe00d040f7a # load x3 with value 0x90738fe00d040f7a
sw x3, 0(x2) # store 0x90738fe00d040f7a in memory
flh f26, 0(x2) # load 0x90738fe00d040f7a from memory into f26
fsgnjn.h f6, f24, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x9, 0x0c599a7d6731afdc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x76ce35d4d7b6dd09 # load x3 with value 0x76ce35d4d7b6dd09
sw x3, 0(x2) # store 0x76ce35d4d7b6dd09 in memory
flh f18, 0(x2) # load 0x76ce35d4d7b6dd09 from memory into f18
li x3, 0x7bdee248354ee195 # load x3 with value 0x7bdee248354ee195
sw x3, 0(x2) # store 0x7bdee248354ee195 in memory
flh f27, 0(x2) # load 0x7bdee248354ee195 from memory into f27
fsgnjn.h f9, f18, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x10, 0x94aef441b49b3417 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1f96273fe3a79a46 # load x3 with value 0x1f96273fe3a79a46
sw x3, 0(x2) # store 0x1f96273fe3a79a46 in memory
flh f22, 0(x2) # load 0x1f96273fe3a79a46 from memory into f22
li x3, 0xfe45fee8c9a4994d # load x3 with value 0xfe45fee8c9a4994d
sw x3, 0(x2) # store 0xfe45fee8c9a4994d in memory
flh f28, 0(x2) # load 0xfe45fee8c9a4994d from memory into f28
fsgnjn.h f10, f22, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x27, 0x79acf0f455698ce4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9d5205c29d8cbb0f # load x3 with value 0x9d5205c29d8cbb0f
sw x3, 0(x2) # store 0x9d5205c29d8cbb0f in memory
flh f12, 0(x2) # load 0x9d5205c29d8cbb0f from memory into f12
li x3, 0xf161a2896a048a00 # load x3 with value 0xf161a2896a048a00
sw x3, 0(x2) # store 0xf161a2896a048a00 in memory
flh f29, 0(x2) # load 0xf161a2896a048a00 from memory into f29
fsgnjn.h f27, f12, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x1, 0x4a1bf7f26bd1d854 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x742d2b344c589e # load x3 with value 0x742d2b344c589e
sw x3, 0(x2) # store 0x742d2b344c589e in memory
flh f13, 0(x2) # load 0x742d2b344c589e from memory into f13
li x3, 0x95a548edd5e9a344 # load x3 with value 0x95a548edd5e9a344
sw x3, 0(x2) # store 0x95a548edd5e9a344 in memory
flh f30, 0(x2) # load 0x95a548edd5e9a344 from memory into f30
fsgnjn.h f1, f13, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x2, 0xe15deecd5b8548cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x72906d04cb6831fc # load x3 with value 0x72906d04cb6831fc
sw x3, 0(x2) # store 0x72906d04cb6831fc in memory
flh f16, 0(x2) # load 0x72906d04cb6831fc from memory into f16
li x3, 0xa152bfaf34e823a1 # load x3 with value 0xa152bfaf34e823a1
sw x3, 0(x2) # store 0xa152bfaf34e823a1 in memory
flh f31, 0(x2) # load 0xa152bfaf34e823a1 from memory into f31
fsgnjn.h f2, f16, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
