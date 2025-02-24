///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/D//WALLY-COV-fsd.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.772741
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


# Testcase cp_rs1 (Test source rs1 = x1)
li x9, 0x59bf8bd391ac4509 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xfcecc6a4e5c9d63c # load x3 with value 0xfcecc6a4e5c9d63c
sd x3, 0(x2) # store 0xfcecc6a4e5c9d63c in memory
fld f16, 0(x2) # load 0xfcecc6a4e5c9d63c from memory into f16
la x1, scratch # base address
addi x1, x1, 1129 # sub immediate from rs1 to counter offset
fsd f16, -1129(x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x21, 0xacbf2867cbeafba2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x59023c446d221718 # load x3 with value 0x59023c446d221718
sd x3, 0(x2) # store 0x59023c446d221718 in memory
fld f17, 0(x2) # load 0x59023c446d221718 from memory into f17
la x2, scratch # base address
addi x2, x2, -227 # sub immediate from rs1 to counter offset
fsd f17, 227(x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x29, 0x91bb29727dbc460e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x94c764386b8bf21f # load x3 with value 0x94c764386b8bf21f
sd x3, 0(x2) # store 0x94c764386b8bf21f in memory
fld f6, 0(x2) # load 0x94c764386b8bf21f from memory into f6
la x3, scratch # base address
addi x3, x3, 2001 # sub immediate from rs1 to counter offset
fsd f6, -2001(x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x6, 0xb6e39c9f31e82cc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xc4fd2c7e6e666471 # load x3 with value 0xc4fd2c7e6e666471
sd x3, 0(x2) # store 0xc4fd2c7e6e666471 in memory
fld f31, 0(x2) # load 0xc4fd2c7e6e666471 from memory into f31
la x4, scratch # base address
addi x4, x4, -129 # sub immediate from rs1 to counter offset
fsd f31, 129(x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x30, 0xbef95aba15928cc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xd85f4c53baca46ed # load x3 with value 0xd85f4c53baca46ed
sd x3, 0(x2) # store 0xd85f4c53baca46ed in memory
fld f20, 0(x2) # load 0xd85f4c53baca46ed from memory into f20
la x5, scratch # base address
addi x5, x5, 248 # sub immediate from rs1 to counter offset
fsd f20, -248(x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x26, 0xe5586b988549581a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x7e39caeb698e5595 # load x3 with value 0x7e39caeb698e5595
sd x3, 0(x2) # store 0x7e39caeb698e5595 in memory
fld f22, 0(x2) # load 0x7e39caeb698e5595 from memory into f22
la x6, scratch # base address
addi x6, x6, -1676 # sub immediate from rs1 to counter offset
fsd f22, 1676(x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x8, 0x013a2cb4155e9011 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x30cbcc2d68827169 # load x3 with value 0x30cbcc2d68827169
sd x3, 0(x2) # store 0x30cbcc2d68827169 in memory
fld f30, 0(x2) # load 0x30cbcc2d68827169 from memory into f30
la x7, scratch # base address
addi x7, x7, 1578 # sub immediate from rs1 to counter offset
fsd f30, -1578(x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x4, 0xa0961f9e979ce8b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xca3c56c849541e03 # load x3 with value 0xca3c56c849541e03
sd x3, 0(x2) # store 0xca3c56c849541e03 in memory
fld f3, 0(x2) # load 0xca3c56c849541e03 from memory into f3
la x8, scratch # base address
addi x8, x8, -1070 # sub immediate from rs1 to counter offset
fsd f3, 1070(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x31, 0xd9173cc7dc1d6342 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x3fbd986422ea87a8 # load x3 with value 0x3fbd986422ea87a8
sd x3, 0(x2) # store 0x3fbd986422ea87a8 in memory
fld f20, 0(x2) # load 0x3fbd986422ea87a8 from memory into f20
la x9, scratch # base address
addi x9, x9, -1173 # sub immediate from rs1 to counter offset
fsd f20, 1173(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x9, 0xe9a10d96b4cfb5a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x8a002bcdd0c65420 # load x3 with value 0x8a002bcdd0c65420
sd x3, 0(x2) # store 0x8a002bcdd0c65420 in memory
fld f8, 0(x2) # load 0x8a002bcdd0c65420 from memory into f8
la x10, scratch # base address
addi x10, x10, 296 # sub immediate from rs1 to counter offset
fsd f8, -296(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x23, 0x652b781333135ab3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xb950c77464843e81 # load x3 with value 0xb950c77464843e81
sd x3, 0(x2) # store 0xb950c77464843e81 in memory
fld f1, 0(x2) # load 0xb950c77464843e81 from memory into f1
la x11, scratch # base address
addi x11, x11, 1374 # sub immediate from rs1 to counter offset
fsd f1, -1374(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x6, 0xb8b43edb903874b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xb9ce520840e20621 # load x3 with value 0xb9ce520840e20621
sd x3, 0(x2) # store 0xb9ce520840e20621 in memory
fld f31, 0(x2) # load 0xb9ce520840e20621 from memory into f31
la x12, scratch # base address
addi x12, x12, 1838 # sub immediate from rs1 to counter offset
fsd f31, -1838(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x11, 0xb7ea1e1ccf7d4b24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xe0307aae3bc189a8 # load x3 with value 0xe0307aae3bc189a8
sd x3, 0(x2) # store 0xe0307aae3bc189a8 in memory
fld f29, 0(x2) # load 0xe0307aae3bc189a8 from memory into f29
la x13, scratch # base address
addi x13, x13, 1408 # sub immediate from rs1 to counter offset
fsd f29, -1408(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x31, 0x3e10f4b46ba1077d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x42203406dfd45284 # load x3 with value 0x42203406dfd45284
sd x3, 0(x2) # store 0x42203406dfd45284 in memory
fld f19, 0(x2) # load 0x42203406dfd45284 from memory into f19
la x14, scratch # base address
addi x14, x14, -1035 # sub immediate from rs1 to counter offset
fsd f19, 1035(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x31, 0x4c0d6dea3c8c1b30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xf82cf43a297ff86d # load x3 with value 0xf82cf43a297ff86d
sd x3, 0(x2) # store 0xf82cf43a297ff86d in memory
fld f11, 0(x2) # load 0xf82cf43a297ff86d from memory into f11
la x15, scratch # base address
addi x15, x15, -1537 # sub immediate from rs1 to counter offset
fsd f11, 1537(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x7, 0x0d53d9e61e9f5304 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x8a79c29dcf57bd35 # load x3 with value 0x8a79c29dcf57bd35
sd x3, 0(x2) # store 0x8a79c29dcf57bd35 in memory
fld f22, 0(x2) # load 0x8a79c29dcf57bd35 from memory into f22
la x16, scratch # base address
addi x16, x16, -1482 # sub immediate from rs1 to counter offset
fsd f22, 1482(x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x26, 0x38e0a87a0d0c24fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x8f29d8df615bdf6e # load x3 with value 0x8f29d8df615bdf6e
sd x3, 0(x2) # store 0x8f29d8df615bdf6e in memory
fld f30, 0(x2) # load 0x8f29d8df615bdf6e from memory into f30
la x17, scratch # base address
addi x17, x17, 654 # sub immediate from rs1 to counter offset
fsd f30, -654(x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x14, 0x201d3514a2cb79bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xca8100601f50b4e6 # load x3 with value 0xca8100601f50b4e6
sd x3, 0(x2) # store 0xca8100601f50b4e6 in memory
fld f26, 0(x2) # load 0xca8100601f50b4e6 from memory into f26
la x18, scratch # base address
addi x18, x18, -894 # sub immediate from rs1 to counter offset
fsd f26, 894(x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x27, 0x471f058d137ed03c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x39a23e377657124b # load x3 with value 0x39a23e377657124b
sd x3, 0(x2) # store 0x39a23e377657124b in memory
fld f1, 0(x2) # load 0x39a23e377657124b from memory into f1
la x19, scratch # base address
addi x19, x19, -1580 # sub immediate from rs1 to counter offset
fsd f1, 1580(x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x1, 0x0e63e66e36bd1843 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x0ca43ef91b5851e5 # load x3 with value 0x0ca43ef91b5851e5
sd x3, 0(x2) # store 0x0ca43ef91b5851e5 in memory
fld f5, 0(x2) # load 0x0ca43ef91b5851e5 from memory into f5
la x20, scratch # base address
addi x20, x20, -316 # sub immediate from rs1 to counter offset
fsd f5, 316(x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x17, 0x684d3c033229ef67 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x49699a10baf4a267 # load x3 with value 0x49699a10baf4a267
sd x3, 0(x2) # store 0x49699a10baf4a267 in memory
fld f8, 0(x2) # load 0x49699a10baf4a267 from memory into f8
la x21, scratch # base address
addi x21, x21, -327 # sub immediate from rs1 to counter offset
fsd f8, 327(x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x31, 0x38f35f9579d2a063 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x7e908b1b3f45e09b # load x3 with value 0x7e908b1b3f45e09b
sd x3, 0(x2) # store 0x7e908b1b3f45e09b in memory
fld f15, 0(x2) # load 0x7e908b1b3f45e09b from memory into f15
la x22, scratch # base address
addi x22, x22, 1156 # sub immediate from rs1 to counter offset
fsd f15, -1156(x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x11, 0x4b18dbab2cbdc32c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x7bbd89cedcde99f1 # load x3 with value 0x7bbd89cedcde99f1
sd x3, 0(x2) # store 0x7bbd89cedcde99f1 in memory
fld f29, 0(x2) # load 0x7bbd89cedcde99f1 from memory into f29
la x23, scratch # base address
addi x23, x23, -376 # sub immediate from rs1 to counter offset
fsd f29, 376(x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x14, 0x3c8c9faf88af7ac9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x493bb298b14b9c1f # load x3 with value 0x493bb298b14b9c1f
sd x3, 0(x2) # store 0x493bb298b14b9c1f in memory
fld f7, 0(x2) # load 0x493bb298b14b9c1f from memory into f7
la x24, scratch # base address
addi x24, x24, 661 # sub immediate from rs1 to counter offset
fsd f7, -661(x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x18, 0x3b17663b3a2c9d9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x54da569a399a95a5 # load x3 with value 0x54da569a399a95a5
sd x3, 0(x2) # store 0x54da569a399a95a5 in memory
fld f31, 0(x2) # load 0x54da569a399a95a5 from memory into f31
la x25, scratch # base address
addi x25, x25, 198 # sub immediate from rs1 to counter offset
fsd f31, -198(x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x11, 0x3f15d02fa29f488b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x18421673a3f3545a # load x3 with value 0x18421673a3f3545a
sd x3, 0(x2) # store 0x18421673a3f3545a in memory
fld f4, 0(x2) # load 0x18421673a3f3545a from memory into f4
la x26, scratch # base address
addi x26, x26, 481 # sub immediate from rs1 to counter offset
fsd f4, -481(x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x1, 0xfafe7cca2feec01d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xaeb2f63d56c913ad # load x3 with value 0xaeb2f63d56c913ad
sd x3, 0(x2) # store 0xaeb2f63d56c913ad in memory
fld f24, 0(x2) # load 0xaeb2f63d56c913ad from memory into f24
la x27, scratch # base address
addi x27, x27, -1220 # sub immediate from rs1 to counter offset
fsd f24, 1220(x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x26, 0xbdcd28c63e31aac7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xc6300cf88361e510 # load x3 with value 0xc6300cf88361e510
sd x3, 0(x2) # store 0xc6300cf88361e510 in memory
fld f9, 0(x2) # load 0xc6300cf88361e510 from memory into f9
la x28, scratch # base address
addi x28, x28, -1809 # sub immediate from rs1 to counter offset
fsd f9, 1809(x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x21, 0xb39bb3108aaafbcf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x4863810dbda39daa # load x3 with value 0x4863810dbda39daa
sd x3, 0(x2) # store 0x4863810dbda39daa in memory
fld f20, 0(x2) # load 0x4863810dbda39daa from memory into f20
la x29, scratch # base address
addi x29, x29, 387 # sub immediate from rs1 to counter offset
fsd f20, -387(x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x19, 0xa22c6ac1dccd62ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x1faad0797daea394 # load x3 with value 0x1faad0797daea394
sd x3, 0(x2) # store 0x1faad0797daea394 in memory
fld f24, 0(x2) # load 0x1faad0797daea394 from memory into f24
la x30, scratch # base address
addi x30, x30, -1302 # sub immediate from rs1 to counter offset
fsd f24, 1302(x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x5, 0x718d705aeaae6c5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xa63dcbfecaffa5db # load x3 with value 0xa63dcbfecaffa5db
sd x3, 0(x2) # store 0xa63dcbfecaffa5db in memory
fld f23, 0(x2) # load 0xa63dcbfecaffa5db from memory into f23
la x31, scratch # base address
addi x31, x31, -1761 # sub immediate from rs1 to counter offset
fsd f23, 1761(x31) # perform operation

# Testcase cp_imm_zero
li x25, 0x74076d3f7c571830 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x5a22c10c01342e56 # load x3 with value 0x5a22c10c01342e56
sd x3, 0(x2) # store 0x5a22c10c01342e56 in memory
fld f13, 0(x2) # load 0x5a22c10c01342e56 from memory into f13
la x2, scratch # base address
addi x2, x2, 0 # sub immediate from rs1 to counter offset
fsd f13, 0(x2) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x29, 0x4ca7c56f3965fd0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f18, 0(x2) # load 0x0000000000000000 from memory into f18
la x28, scratch # base address
addi x28, x28, -1110 # sub immediate from rs1 to counter offset
fsd f18, 1110(x28) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000000)
li x24, 0xca4d241aca649ca6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x0000000080000000 # load x3 with value 0x0000000080000000
sd x3, 0(x2) # store 0x0000000080000000 in memory
fld f29, 0(x2) # load 0x0000000080000000 from memory into f29
la x9, scratch # base address
addi x9, x9, 167 # sub immediate from rs1 to counter offset
fsd f29, -167(x9) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
li x5, 0xb59baa1b640b57a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f23, 0(x2) # load 0x000000003f800000 from memory into f23
la x11, scratch # base address
addi x11, x11, -606 # sub immediate from rs1 to counter offset
fsd f23, 606(x11) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbf800000)
li x18, 0xe4dfa95135e15619 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00000000bf800000 # load x3 with value 0x00000000bf800000
sd x3, 0(x2) # store 0x00000000bf800000 in memory
fld f15, 0(x2) # load 0x00000000bf800000 from memory into f15
la x31, scratch # base address
addi x31, x31, -490 # sub immediate from rs1 to counter offset
fsd f15, 490(x31) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3fc00000)
li x19, 0x66602a3014dde26d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x000000003fc00000 # load x3 with value 0x000000003fc00000
sd x3, 0(x2) # store 0x000000003fc00000 in memory
fld f2, 0(x2) # load 0x000000003fc00000 from memory into f2
la x16, scratch # base address
addi x16, x16, -1545 # sub immediate from rs1 to counter offset
fsd f2, 1545(x16) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbfc00000)
li x6, 0x17817796ad050d44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00000000bfc00000 # load x3 with value 0x00000000bfc00000
sd x3, 0(x2) # store 0x00000000bfc00000 in memory
fld f13, 0(x2) # load 0x00000000bfc00000 from memory into f13
la x23, scratch # base address
addi x23, x23, 1596 # sub immediate from rs1 to counter offset
fsd f13, -1596(x23) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x40000000)
li x5, 0xb74a59f9e2cc4cbc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x0000000040000000 # load x3 with value 0x0000000040000000
sd x3, 0(x2) # store 0x0000000040000000 in memory
fld f18, 0(x2) # load 0x0000000040000000 from memory into f18
la x31, scratch # base address
addi x31, x31, 74 # sub immediate from rs1 to counter offset
fsd f18, -74(x31) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0000000)
li x22, 0x580d93d215d4fc0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00000000c0000000 # load x3 with value 0x00000000c0000000
sd x3, 0(x2) # store 0x00000000c0000000 in memory
fld f9, 0(x2) # load 0x00000000c0000000 from memory into f9
la x8, scratch # base address
addi x8, x8, 1762 # sub immediate from rs1 to counter offset
fsd f9, -1762(x8) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800000)
li x9, 0x7a6e1b5d34ddd2e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x0000000000800000 # load x3 with value 0x0000000000800000
sd x3, 0(x2) # store 0x0000000000800000 in memory
fld f23, 0(x2) # load 0x0000000000800000 from memory into f23
la x5, scratch # base address
addi x5, x5, 833 # sub immediate from rs1 to counter offset
fsd f23, -833(x5) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80800000)
li x13, 0x7fc48cea672f236a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x0000000080800000 # load x3 with value 0x0000000080800000
sd x3, 0(x2) # store 0x0000000080800000 in memory
fld f7, 0(x2) # load 0x0000000080800000 from memory into f7
la x11, scratch # base address
addi x11, x11, 1850 # sub immediate from rs1 to counter offset
fsd f7, -1850(x11) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f7fffff)
li x7, 0xefdf298099b585fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x000000007f7fffff # load x3 with value 0x000000007f7fffff
sd x3, 0(x2) # store 0x000000007f7fffff in memory
fld f11, 0(x2) # load 0x000000007f7fffff from memory into f11
la x12, scratch # base address
addi x12, x12, -45 # sub immediate from rs1 to counter offset
fsd f11, 45(x12) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff7fffff)
li x8, 0x27e5335a710b359b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00000000ff7fffff # load x3 with value 0x00000000ff7fffff
sd x3, 0(x2) # store 0x00000000ff7fffff in memory
fld f18, 0(x2) # load 0x00000000ff7fffff from memory into f18
la x6, scratch # base address
addi x6, x6, 1391 # sub immediate from rs1 to counter offset
fsd f18, -1391(x6) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffff)
li x23, 0x7c186057124329b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00000000007fffff # load x3 with value 0x00000000007fffff
sd x3, 0(x2) # store 0x00000000007fffff in memory
fld f24, 0(x2) # load 0x00000000007fffff from memory into f24
la x2, scratch # base address
addi x2, x2, -1357 # sub immediate from rs1 to counter offset
fsd f24, 1357(x2) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x807fffff)
li x5, 0x73d0dc004e403bed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00000000807fffff # load x3 with value 0x00000000807fffff
sd x3, 0(x2) # store 0x00000000807fffff in memory
fld f31, 0(x2) # load 0x00000000807fffff from memory into f31
la x9, scratch # base address
addi x9, x9, -1275 # sub immediate from rs1 to counter offset
fsd f31, 1275(x9) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400000)
li x7, 0x4aa246b48b1be4b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x0000000000400000 # load x3 with value 0x0000000000400000
sd x3, 0(x2) # store 0x0000000000400000 in memory
fld f20, 0(x2) # load 0x0000000000400000 from memory into f20
la x16, scratch # base address
addi x16, x16, -1149 # sub immediate from rs1 to counter offset
fsd f20, 1149(x16) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80400000)
li x26, 0xe3b0cf934c571dfc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x0000000080400000 # load x3 with value 0x0000000080400000
sd x3, 0(x2) # store 0x0000000080400000 in memory
fld f6, 0(x2) # load 0x0000000080400000 from memory into f6
la x3, scratch # base address
addi x3, x3, -1902 # sub immediate from rs1 to counter offset
fsd f6, 1902(x3) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x17, 0x18ab91e548629a57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f19, 0(x2) # load 0x0000000000000001 from memory into f19
la x23, scratch # base address
addi x23, x23, 1251 # sub immediate from rs1 to counter offset
fsd f19, -1251(x23) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000001)
li x3, 0xd4dcaf59e77de763 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x0000000080000001 # load x3 with value 0x0000000080000001
sd x3, 0(x2) # store 0x0000000080000001 in memory
fld f27, 0(x2) # load 0x0000000080000001 from memory into f27
la x30, scratch # base address
addi x30, x30, 470 # sub immediate from rs1 to counter offset
fsd f27, -470(x30) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800000)
li x8, 0x97039b09f330ba96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x000000007f800000 # load x3 with value 0x000000007f800000
sd x3, 0(x2) # store 0x000000007f800000 in memory
fld f16, 0(x2) # load 0x000000007f800000 from memory into f16
la x19, scratch # base address
addi x19, x19, 417 # sub immediate from rs1 to counter offset
fsd f16, -417(x19) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff800000)
li x12, 0xaab186a7c18c3b69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00000000ff800000 # load x3 with value 0x00000000ff800000
sd x3, 0(x2) # store 0x00000000ff800000 in memory
fld f19, 0(x2) # load 0x00000000ff800000 from memory into f19
la x10, scratch # base address
addi x10, x10, 1975 # sub immediate from rs1 to counter offset
fsd f19, -1975(x10) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fc00000)
li x3, 0x5751c3259025c503 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x000000007fc00000 # load x3 with value 0x000000007fc00000
sd x3, 0(x2) # store 0x000000007fc00000 in memory
fld f8, 0(x2) # load 0x000000007fc00000 from memory into f8
la x20, scratch # base address
addi x20, x20, 1206 # sub immediate from rs1 to counter offset
fsd f8, -1206(x20) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff)
li x21, 0x44167dbf5f97faac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x000000007fffffff # load x3 with value 0x000000007fffffff
sd x3, 0(x2) # store 0x000000007fffffff in memory
fld f9, 0(x2) # load 0x000000007fffffff from memory into f9
la x20, scratch # base address
addi x20, x20, -1456 # sub immediate from rs1 to counter offset
fsd f9, 1456(x20) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800001)
li x13, 0x8b0b4e1c69ce88d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x000000007f800001 # load x3 with value 0x000000007f800001
sd x3, 0(x2) # store 0x000000007f800001 in memory
fld f17, 0(x2) # load 0x000000007f800001 from memory into f17
la x29, scratch # base address
addi x29, x29, -1576 # sub immediate from rs1 to counter offset
fsd f17, 1576(x29) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fbfffff)
li x14, 0x90e25bbeeadeb5c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x000000007fbfffff # load x3 with value 0x000000007fbfffff
sd x3, 0(x2) # store 0x000000007fbfffff in memory
fld f18, 0(x2) # load 0x000000007fbfffff from memory into f18
la x26, scratch # base address
addi x26, x26, -1679 # sub immediate from rs1 to counter offset
fsd f18, 1679(x26) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ef8654f)
li x15, 0x50273b82e39a735d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x000000007ef8654f # load x3 with value 0x000000007ef8654f
sd x3, 0(x2) # store 0x000000007ef8654f in memory
fld f1, 0(x2) # load 0x000000007ef8654f from memory into f1
la x17, scratch # base address
addi x17, x17, -18 # sub immediate from rs1 to counter offset
fsd f1, 18(x17) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x813d9ab0)
li x5, 0x48aa85c1a7911d4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00000000813d9ab0 # load x3 with value 0x00000000813d9ab0
sd x3, 0(x2) # store 0x00000000813d9ab0 in memory
fld f3, 0(x2) # load 0x00000000813d9ab0 from memory into f3
la x24, scratch # base address
addi x24, x24, -2005 # sub immediate from rs1 to counter offset
fsd f3, 2005(x24) # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x19, 0xb4677215a45f78f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xcd62533f8d3c8b9c # load x3 with value 0xcd62533f8d3c8b9c
sd x3, 0(x2) # store 0xcd62533f8d3c8b9c in memory
fld f0, 0(x2) # load 0xcd62533f8d3c8b9c from memory into f0
la x8, scratch # base address
addi x8, x8, -1820 # sub immediate from rs1 to counter offset
fsd f0, 1820(x8) # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x18, 0x1fd09d1d899d8138 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xe45978ae713b5915 # load x3 with value 0xe45978ae713b5915
sd x3, 0(x2) # store 0xe45978ae713b5915 in memory
fld f1, 0(x2) # load 0xe45978ae713b5915 from memory into f1
la x21, scratch # base address
addi x21, x21, -1760 # sub immediate from rs1 to counter offset
fsd f1, 1760(x21) # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x8, 0xb4d38953aa38920e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xd13ad751bc092a64 # load x3 with value 0xd13ad751bc092a64
sd x3, 0(x2) # store 0xd13ad751bc092a64 in memory
fld f2, 0(x2) # load 0xd13ad751bc092a64 from memory into f2
la x12, scratch # base address
addi x12, x12, -913 # sub immediate from rs1 to counter offset
fsd f2, 913(x12) # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x3, 0xb980cc7e5c5a91ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x75e830f5f9d021f9 # load x3 with value 0x75e830f5f9d021f9
sd x3, 0(x2) # store 0x75e830f5f9d021f9 in memory
fld f3, 0(x2) # load 0x75e830f5f9d021f9 from memory into f3
la x2, scratch # base address
addi x2, x2, -1205 # sub immediate from rs1 to counter offset
fsd f3, 1205(x2) # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x31, 0x949dec8688481fde # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xa4afbc163ba631a2 # load x3 with value 0xa4afbc163ba631a2
sd x3, 0(x2) # store 0xa4afbc163ba631a2 in memory
fld f4, 0(x2) # load 0xa4afbc163ba631a2 from memory into f4
la x14, scratch # base address
addi x14, x14, -352 # sub immediate from rs1 to counter offset
fsd f4, 352(x14) # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x15, 0xbe7578cec483e680 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x68f45504989941b3 # load x3 with value 0x68f45504989941b3
sd x3, 0(x2) # store 0x68f45504989941b3 in memory
fld f5, 0(x2) # load 0x68f45504989941b3 from memory into f5
la x9, scratch # base address
addi x9, x9, -1111 # sub immediate from rs1 to counter offset
fsd f5, 1111(x9) # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x7, 0x5c3fe69666640d7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x34b3a9731fa3c359 # load x3 with value 0x34b3a9731fa3c359
sd x3, 0(x2) # store 0x34b3a9731fa3c359 in memory
fld f6, 0(x2) # load 0x34b3a9731fa3c359 from memory into f6
la x5, scratch # base address
addi x5, x5, 1943 # sub immediate from rs1 to counter offset
fsd f6, -1943(x5) # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x6, 0xf89e4c9a4317c46f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xb5ab344b406fdf58 # load x3 with value 0xb5ab344b406fdf58
sd x3, 0(x2) # store 0xb5ab344b406fdf58 in memory
fld f7, 0(x2) # load 0xb5ab344b406fdf58 from memory into f7
la x1, scratch # base address
addi x1, x1, 173 # sub immediate from rs1 to counter offset
fsd f7, -173(x1) # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x27, 0x129a778f459b7890 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xd5436a95086fd8a3 # load x3 with value 0xd5436a95086fd8a3
sd x3, 0(x2) # store 0xd5436a95086fd8a3 in memory
fld f8, 0(x2) # load 0xd5436a95086fd8a3 from memory into f8
la x28, scratch # base address
addi x28, x28, -1916 # sub immediate from rs1 to counter offset
fsd f8, 1916(x28) # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x5, 0x26fc373c4b2fce24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xf4ce010dc02f17ae # load x3 with value 0xf4ce010dc02f17ae
sd x3, 0(x2) # store 0xf4ce010dc02f17ae in memory
fld f9, 0(x2) # load 0xf4ce010dc02f17ae from memory into f9
la x2, scratch # base address
addi x2, x2, 377 # sub immediate from rs1 to counter offset
fsd f9, -377(x2) # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x6, 0x635dc13e1ba217d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xb55b86964be78112 # load x3 with value 0xb55b86964be78112
sd x3, 0(x2) # store 0xb55b86964be78112 in memory
fld f10, 0(x2) # load 0xb55b86964be78112 from memory into f10
la x5, scratch # base address
addi x5, x5, -1498 # sub immediate from rs1 to counter offset
fsd f10, 1498(x5) # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x16, 0x4a36f86a6d36bd61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xd0bc726fd6f92ca8 # load x3 with value 0xd0bc726fd6f92ca8
sd x3, 0(x2) # store 0xd0bc726fd6f92ca8 in memory
fld f11, 0(x2) # load 0xd0bc726fd6f92ca8 from memory into f11
la x26, scratch # base address
addi x26, x26, 1855 # sub immediate from rs1 to counter offset
fsd f11, -1855(x26) # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x29, 0xdc57382a0baa773e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x2f714fde068f02da # load x3 with value 0x2f714fde068f02da
sd x3, 0(x2) # store 0x2f714fde068f02da in memory
fld f12, 0(x2) # load 0x2f714fde068f02da from memory into f12
la x18, scratch # base address
addi x18, x18, -1218 # sub immediate from rs1 to counter offset
fsd f12, 1218(x18) # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x22, 0xbd7f035e316147b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x19def8567eecf4cc # load x3 with value 0x19def8567eecf4cc
sd x3, 0(x2) # store 0x19def8567eecf4cc in memory
fld f13, 0(x2) # load 0x19def8567eecf4cc from memory into f13
la x31, scratch # base address
addi x31, x31, 1785 # sub immediate from rs1 to counter offset
fsd f13, -1785(x31) # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x20, 0xdfaa6d2fea04ba0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x6e1f6f8782326ed9 # load x3 with value 0x6e1f6f8782326ed9
sd x3, 0(x2) # store 0x6e1f6f8782326ed9 in memory
fld f14, 0(x2) # load 0x6e1f6f8782326ed9 from memory into f14
la x10, scratch # base address
addi x10, x10, -503 # sub immediate from rs1 to counter offset
fsd f14, 503(x10) # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x7, 0x70d78310016ac30d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x2ffc431db680a172 # load x3 with value 0x2ffc431db680a172
sd x3, 0(x2) # store 0x2ffc431db680a172 in memory
fld f15, 0(x2) # load 0x2ffc431db680a172 from memory into f15
la x23, scratch # base address
addi x23, x23, 1509 # sub immediate from rs1 to counter offset
fsd f15, -1509(x23) # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x5, 0x71634c32d4c1c123 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xa31c28d78320cbaf # load x3 with value 0xa31c28d78320cbaf
sd x3, 0(x2) # store 0xa31c28d78320cbaf in memory
fld f16, 0(x2) # load 0xa31c28d78320cbaf from memory into f16
la x15, scratch # base address
addi x15, x15, -1813 # sub immediate from rs1 to counter offset
fsd f16, 1813(x15) # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x21, 0x8cded23a7d135636 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x0ce911c96ed39078 # load x3 with value 0x0ce911c96ed39078
sd x3, 0(x2) # store 0x0ce911c96ed39078 in memory
fld f17, 0(x2) # load 0x0ce911c96ed39078 from memory into f17
la x30, scratch # base address
addi x30, x30, 1147 # sub immediate from rs1 to counter offset
fsd f17, -1147(x30) # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x10, 0x3f173d4397244d50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x33f95db7578a6e6a # load x3 with value 0x33f95db7578a6e6a
sd x3, 0(x2) # store 0x33f95db7578a6e6a in memory
fld f18, 0(x2) # load 0x33f95db7578a6e6a from memory into f18
la x20, scratch # base address
addi x20, x20, -1424 # sub immediate from rs1 to counter offset
fsd f18, 1424(x20) # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x26, 0x8251695e75ab8a5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xf462e54c83ca3cf8 # load x3 with value 0xf462e54c83ca3cf8
sd x3, 0(x2) # store 0xf462e54c83ca3cf8 in memory
fld f19, 0(x2) # load 0xf462e54c83ca3cf8 from memory into f19
la x13, scratch # base address
addi x13, x13, 624 # sub immediate from rs1 to counter offset
fsd f19, -624(x13) # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x13, 0x8ec6c4242ca6b46a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xa3d3161eb399cb52 # load x3 with value 0xa3d3161eb399cb52
sd x3, 0(x2) # store 0xa3d3161eb399cb52 in memory
fld f20, 0(x2) # load 0xa3d3161eb399cb52 from memory into f20
la x1, scratch # base address
addi x1, x1, 247 # sub immediate from rs1 to counter offset
fsd f20, -247(x1) # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x8, 0x7f6d4baffc3c7343 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x54858838c833f0c2 # load x3 with value 0x54858838c833f0c2
sd x3, 0(x2) # store 0x54858838c833f0c2 in memory
fld f21, 0(x2) # load 0x54858838c833f0c2 from memory into f21
la x9, scratch # base address
addi x9, x9, -711 # sub immediate from rs1 to counter offset
fsd f21, 711(x9) # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x28, 0x161f54f6706b1157 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x3997b9c726a7a248 # load x3 with value 0x3997b9c726a7a248
sd x3, 0(x2) # store 0x3997b9c726a7a248 in memory
fld f22, 0(x2) # load 0x3997b9c726a7a248 from memory into f22
la x11, scratch # base address
addi x11, x11, -2030 # sub immediate from rs1 to counter offset
fsd f22, 2030(x11) # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x4, 0x475d6b00f2ad7684 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x24412d589d89cd96 # load x3 with value 0x24412d589d89cd96
sd x3, 0(x2) # store 0x24412d589d89cd96 in memory
fld f23, 0(x2) # load 0x24412d589d89cd96 from memory into f23
la x16, scratch # base address
addi x16, x16, -591 # sub immediate from rs1 to counter offset
fsd f23, 591(x16) # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x26, 0x861f0ca1827be0b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xb1d68d4fa6cf6df8 # load x3 with value 0xb1d68d4fa6cf6df8
sd x3, 0(x2) # store 0xb1d68d4fa6cf6df8 in memory
fld f24, 0(x2) # load 0xb1d68d4fa6cf6df8 from memory into f24
la x10, scratch # base address
addi x10, x10, -1901 # sub immediate from rs1 to counter offset
fsd f24, 1901(x10) # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x8, 0xa7b6c22785f9095f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xdc2c07751c904660 # load x3 with value 0xdc2c07751c904660
sd x3, 0(x2) # store 0xdc2c07751c904660 in memory
fld f25, 0(x2) # load 0xdc2c07751c904660 from memory into f25
la x15, scratch # base address
addi x15, x15, -1232 # sub immediate from rs1 to counter offset
fsd f25, 1232(x15) # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x6, 0x2b6597742e5f2667 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xde5aea54bbb8a0c3 # load x3 with value 0xde5aea54bbb8a0c3
sd x3, 0(x2) # store 0xde5aea54bbb8a0c3 in memory
fld f26, 0(x2) # load 0xde5aea54bbb8a0c3 from memory into f26
la x4, scratch # base address
addi x4, x4, 1722 # sub immediate from rs1 to counter offset
fsd f26, -1722(x4) # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x3, 0x58c042279c14d398 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x25d7c43094d35474 # load x3 with value 0x25d7c43094d35474
sd x3, 0(x2) # store 0x25d7c43094d35474 in memory
fld f27, 0(x2) # load 0x25d7c43094d35474 from memory into f27
la x16, scratch # base address
addi x16, x16, 843 # sub immediate from rs1 to counter offset
fsd f27, -843(x16) # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x18, 0x80981511291826d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x018e9bb54a41010a # load x3 with value 0x018e9bb54a41010a
sd x3, 0(x2) # store 0x018e9bb54a41010a in memory
fld f28, 0(x2) # load 0x018e9bb54a41010a from memory into f28
la x31, scratch # base address
addi x31, x31, 289 # sub immediate from rs1 to counter offset
fsd f28, -289(x31) # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x7, 0x5fc8b82850ed1416 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x346ec5ca596a8db7 # load x3 with value 0x346ec5ca596a8db7
sd x3, 0(x2) # store 0x346ec5ca596a8db7 in memory
fld f29, 0(x2) # load 0x346ec5ca596a8db7 from memory into f29
la x11, scratch # base address
addi x11, x11, -883 # sub immediate from rs1 to counter offset
fsd f29, 883(x11) # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x5, 0x27e95d1b2a2da403 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x27c7bf39b7dd1c9f # load x3 with value 0x27c7bf39b7dd1c9f
sd x3, 0(x2) # store 0x27c7bf39b7dd1c9f in memory
fld f30, 0(x2) # load 0x27c7bf39b7dd1c9f from memory into f30
la x11, scratch # base address
addi x11, x11, 1925 # sub immediate from rs1 to counter offset
fsd f30, -1925(x11) # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x7, 0x2d70aeddfcdd1914 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xb47a685de532254d # load x3 with value 0xb47a685de532254d
sd x3, 0(x2) # store 0xb47a685de532254d in memory
fld f31, 0(x2) # load 0xb47a685de532254d from memory into f31
la x21, scratch # base address
addi x21, x21, -975 # sub immediate from rs1 to counter offset
fsd f31, 975(x21) # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
