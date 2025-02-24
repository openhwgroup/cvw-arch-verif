///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/F//WALLY-COV-fcvt.s.l.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.710396
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


# Testcase cp_rs1 (Test source rs1 = x0)
li x2, 0x96fe5516eb50086d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xb1c2f62cff71811f # load immediate value into integer register
fcvt.s.l f2, x0
# Testcase cp_rs1 (Test source rs1 = x1)
li x2, 0x2b49a3d718078a21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x6c5d1d04b109352f # load immediate value into integer register
fcvt.s.l f2, x1
# Testcase cp_rs1 (Test source rs1 = x2)
li x13, 0x6fd12684a6a23cbc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x918f8ee2b1216066 # load immediate value into integer register
fcvt.s.l f13, x2
# Testcase cp_rs1 (Test source rs1 = x3)
li x24, 0x3b4ffae827bde2eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x3103914beb04df6f # load immediate value into integer register
fcvt.s.l f24, x3
# Testcase cp_rs1 (Test source rs1 = x4)
li x22, 0xc72b38270555062f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xc01ece39359fe80f # load immediate value into integer register
fcvt.s.l f22, x4
# Testcase cp_rs1 (Test source rs1 = x5)
li x28, 0x794d9e4107a8323e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x6a2248060a24912e # load immediate value into integer register
fcvt.s.l f28, x5
# Testcase cp_rs1 (Test source rs1 = x6)
li x22, 0xa512800413ca920a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x1d564a59c764c77f # load immediate value into integer register
fcvt.s.l f22, x6
# Testcase cp_rs1 (Test source rs1 = x7)
li x2, 0x0a34da11dcfe3679 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x36810b46b229bae0 # load immediate value into integer register
fcvt.s.l f2, x7
# Testcase cp_rs1 (Test source rs1 = x8)
li x17, 0xdb6a26e6f159a473 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x2217190e5cbffa80 # load immediate value into integer register
fcvt.s.l f17, x8
# Testcase cp_rs1 (Test source rs1 = x9)
li x30, 0x6747ab30000e51ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x2e13ec01f9f99192 # load immediate value into integer register
fcvt.s.l f30, x9
# Testcase cp_rs1 (Test source rs1 = x10)
li x23, 0x0b1be0671034e54a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xe19dda103e210d76 # load immediate value into integer register
fcvt.s.l f23, x10
# Testcase cp_rs1 (Test source rs1 = x11)
li x27, 0x997ec21f447a6e29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x40e1194061578d71 # load immediate value into integer register
fcvt.s.l f27, x11
# Testcase cp_rs1 (Test source rs1 = x12)
li x29, 0x622e6d416b9af70f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xdc92c5ec8d1c215d # load immediate value into integer register
fcvt.s.l f29, x12
# Testcase cp_rs1 (Test source rs1 = x13)
li x21, 0xffc0b2ff9286cf01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xdbafce2c0f0de697 # load immediate value into integer register
fcvt.s.l f21, x13
# Testcase cp_rs1 (Test source rs1 = x14)
li x2, 0x2df7e5424cdf98b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x06189ce1faa95022 # load immediate value into integer register
fcvt.s.l f2, x14
# Testcase cp_rs1 (Test source rs1 = x15)
li x2, 0x250580d373bd367a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xcfc245ae1135df5f # load immediate value into integer register
fcvt.s.l f2, x15
# Testcase cp_rs1 (Test source rs1 = x16)
li x29, 0x8b4dd1b812680053 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xe711ade72ddb5e5c # load immediate value into integer register
fcvt.s.l f29, x16
# Testcase cp_rs1 (Test source rs1 = x17)
li x15, 0x6ffe42dd0cc41e50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x42a5aa011a9f984d # load immediate value into integer register
fcvt.s.l f15, x17
# Testcase cp_rs1 (Test source rs1 = x18)
li x5, 0x38d8debac2b33f29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xb25af50b05901522 # load immediate value into integer register
fcvt.s.l f5, x18
# Testcase cp_rs1 (Test source rs1 = x19)
li x10, 0xbaf155af6d3d0df0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xe690874f607b42ef # load immediate value into integer register
fcvt.s.l f10, x19
# Testcase cp_rs1 (Test source rs1 = x20)
li x14, 0x563860f7266df97c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8c379a3ec606ba2d # load immediate value into integer register
fcvt.s.l f14, x20
# Testcase cp_rs1 (Test source rs1 = x21)
li x1, 0xd37929b002913001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x93d09b21e83e8b91 # load immediate value into integer register
fcvt.s.l f1, x21
# Testcase cp_rs1 (Test source rs1 = x22)
li x16, 0x840c3330e5f1229b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xbbce16cfd46c8ecd # load immediate value into integer register
fcvt.s.l f16, x22
# Testcase cp_rs1 (Test source rs1 = x23)
li x19, 0x94ae00d42f515097 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x3213165053a52975 # load immediate value into integer register
fcvt.s.l f19, x23
# Testcase cp_rs1 (Test source rs1 = x24)
li x30, 0x54e45dc46cd60870 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x39bdce874cafd0dc # load immediate value into integer register
fcvt.s.l f30, x24
# Testcase cp_rs1 (Test source rs1 = x25)
li x8, 0xd42f226819d6ac66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x57a8b3a9835abe12 # load immediate value into integer register
fcvt.s.l f8, x25
# Testcase cp_rs1 (Test source rs1 = x26)
li x17, 0x2cebd0de53a52da5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x4c862f99a67c2ec8 # load immediate value into integer register
fcvt.s.l f17, x26
# Testcase cp_rs1 (Test source rs1 = x27)
li x26, 0xf5a557c7e5c15a56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x9bfdffc6a499ea6a # load immediate value into integer register
fcvt.s.l f26, x27
# Testcase cp_rs1 (Test source rs1 = x28)
li x1, 0xc1cde2ba56f8d200 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x652d2976903cfeb4 # load immediate value into integer register
fcvt.s.l f1, x28
# Testcase cp_rs1 (Test source rs1 = x29)
li x31, 0xec1c73c75f86ecc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xe1ed358748fa2103 # load immediate value into integer register
fcvt.s.l f31, x29
# Testcase cp_rs1 (Test source rs1 = x30)
li x9, 0x4cb2ecee5d121cbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xd040647a1b7abfa4 # load immediate value into integer register
fcvt.s.l f9, x30
# Testcase cp_rs1 (Test source rs1 = x31)
li x6, 0x0c62ae547179c699 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xa504a10321b7c598 # load immediate value into integer register
fcvt.s.l f6, x31
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x27, 0x8e09b14b05175e67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000000 # load immediate value into integer register
fcvt.s.l f27, x1
# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x17, 0x6fd48679cd9eb8dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000001 # load immediate value into integer register
fcvt.s.l f17, x22
# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x19, 0xa4a2ca6ae34f1355 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000002 # load immediate value into integer register
fcvt.s.l f19, x12
# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x7, 0xd6860d0f0e5c250c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8000000000000000 # load immediate value into integer register
fcvt.s.l f7, x22
# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x4, 0xdbeddede384ade32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x8000000000000001 # load immediate value into integer register
fcvt.s.l f4, x7
# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x16, 0x418099aad5131d37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7fffffffffffffff # load immediate value into integer register
fcvt.s.l f16, x9
# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x11, 0x49116ff31ff27ecb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffffffffffe # load immediate value into integer register
fcvt.s.l f11, x22
# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x29, 0x304e99e288ccf97b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffffffffffff # load immediate value into integer register
fcvt.s.l f29, x16
# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x26, 0xc3b49b9b96b4aaf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfffffffffffffffe # load immediate value into integer register
fcvt.s.l f26, x4
# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x25, 0xc3b6cafa40176ea6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5bbc887763ae86f7 # load immediate value into integer register
fcvt.s.l f25, x16
# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x4, 0x9c04f854d4df0bc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # load immediate value into integer register
fcvt.s.l f4, x27
# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x12, 0x7004740d7615e178 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5555555555555555 # load immediate value into integer register
fcvt.s.l f12, x20
# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x8, 0x89227ddde90e01f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000ffffffff # load immediate value into integer register
fcvt.s.l f8, x1
# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x14, 0xfd17bbad8f78b2c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000fffffffe # load immediate value into integer register
fcvt.s.l f14, x13
# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x21, 0x62608aee92d549a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000000 # load immediate value into integer register
fcvt.s.l f21, x11
# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x22, 0x71388f0c9f6de441 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000100000001 # load immediate value into integer register
fcvt.s.l f22, x21
# Testcase cp_frm
li x14, 0x46cd5fa8bf081e0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xe2f8d6e6553d186f # load immediate value into integer register
fcvt.s.l f14, x26, dyn # perform operation
fcvt.s.l f14, x26, rdn # perform operation
fcvt.s.l f14, x26, rmm # perform operation
fcvt.s.l f14, x26, rne # perform operation
fcvt.s.l f14, x26, rtz # perform operation
fcvt.s.l f14, x26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.l f14, x26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.l f14, x26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.l f14, x26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.l f14, x26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.l f14, x26 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x93e328b2fbfd5d17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xcda6ca70bb7fae93 # load immediate value into integer register
fcvt.s.l f0, x5
# Testcase cp_fd (Test destination fd = x1)
li x1, 0xbe7c5d44f9f602b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x83b0699453f85e32 # load immediate value into integer register
fcvt.s.l f1, x5
# Testcase cp_fd (Test destination fd = x2)
li x2, 0x3dbac9f70f13fc8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xff9ab32ccc67aacd # load immediate value into integer register
fcvt.s.l f2, x24
# Testcase cp_fd (Test destination fd = x3)
li x3, 0x31b9c264d4470bb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x2809142b6fe49b48 # load immediate value into integer register
fcvt.s.l f3, x23
# Testcase cp_fd (Test destination fd = x4)
li x4, 0xe338eda8555c873a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x56d5eb12b5507a55 # load immediate value into integer register
fcvt.s.l f4, x14
# Testcase cp_fd (Test destination fd = x5)
li x5, 0x20557e4bfa3e7dbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x4542d556591187d6 # load immediate value into integer register
fcvt.s.l f5, x31
# Testcase cp_fd (Test destination fd = x6)
li x6, 0x20f4ef63a8b42b11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x46fb1cb678ef685e # load immediate value into integer register
fcvt.s.l f6, x24
# Testcase cp_fd (Test destination fd = x7)
li x7, 0x22da4f09f8e81fe1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xf6b915dfecfaad0f # load immediate value into integer register
fcvt.s.l f7, x5
# Testcase cp_fd (Test destination fd = x8)
li x8, 0x82903b4fef3ef6e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x3b7e9485800edbee # load immediate value into integer register
fcvt.s.l f8, x14
# Testcase cp_fd (Test destination fd = x9)
li x9, 0x01f744dbbcf874ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x166f96116a865138 # load immediate value into integer register
fcvt.s.l f9, x25
# Testcase cp_fd (Test destination fd = x10)
li x10, 0x7a8046deec9be29a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xd0ffafa7f2fa6c46 # load immediate value into integer register
fcvt.s.l f10, x6
# Testcase cp_fd (Test destination fd = x11)
li x11, 0x15a399a1f7b20ba3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x74bd4b8bb0c0b122 # load immediate value into integer register
fcvt.s.l f11, x1
# Testcase cp_fd (Test destination fd = x12)
li x12, 0xbaa6dba33e04765d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7666839794236eb5 # load immediate value into integer register
fcvt.s.l f12, x27
# Testcase cp_fd (Test destination fd = x13)
li x13, 0x06655a70b45d999a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7401f28a466882f1 # load immediate value into integer register
fcvt.s.l f13, x14
# Testcase cp_fd (Test destination fd = x14)
li x14, 0x344d477f748895cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xe922247eacf2f8a2 # load immediate value into integer register
fcvt.s.l f14, x22
# Testcase cp_fd (Test destination fd = x15)
li x15, 0x550d2e638052871d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xecd7d9e4f355d6dc # load immediate value into integer register
fcvt.s.l f15, x1
# Testcase cp_fd (Test destination fd = x16)
li x16, 0x0b773951f8bdbf86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0f1970b9e479c0e3 # load immediate value into integer register
fcvt.s.l f16, x8
# Testcase cp_fd (Test destination fd = x17)
li x17, 0xec5b43047fbbce90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x571eb57b22cf4a73 # load immediate value into integer register
fcvt.s.l f17, x21
# Testcase cp_fd (Test destination fd = x18)
li x18, 0x5e9603b6a92ead05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xf521387261cc8ba3 # load immediate value into integer register
fcvt.s.l f18, x23
# Testcase cp_fd (Test destination fd = x19)
li x19, 0xa31d5e2f8369252f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x4e330819b8ab256c # load immediate value into integer register
fcvt.s.l f19, x22
# Testcase cp_fd (Test destination fd = x20)
li x20, 0xadb73f92e2e509af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfc379f9d94283456 # load immediate value into integer register
fcvt.s.l f20, x3
# Testcase cp_fd (Test destination fd = x21)
li x21, 0xe7645aac3f7184dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x03bb092fb0a3a88c # load immediate value into integer register
fcvt.s.l f21, x25
# Testcase cp_fd (Test destination fd = x22)
li x22, 0xd1e5d0d79bf34991 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7f908da38a438fa6 # load immediate value into integer register
fcvt.s.l f22, x5
# Testcase cp_fd (Test destination fd = x23)
li x23, 0x74b858c117b46518 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xb721a52a7833fcc3 # load immediate value into integer register
fcvt.s.l f23, x26
# Testcase cp_fd (Test destination fd = x24)
li x24, 0x9619993b4d704030 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xf53165c4ae443c6b # load immediate value into integer register
fcvt.s.l f24, x4
# Testcase cp_fd (Test destination fd = x25)
li x25, 0xf749607aaa3a9719 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfcfe68cf7502ab17 # load immediate value into integer register
fcvt.s.l f25, x12
# Testcase cp_fd (Test destination fd = x26)
li x26, 0x72cfe7a929a1a5be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8bfbdec090840406 # load immediate value into integer register
fcvt.s.l f26, x1
# Testcase cp_fd (Test destination fd = x27)
li x27, 0xc0ecf0df4f28154f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x877edf347fb6e19e # load immediate value into integer register
fcvt.s.l f27, x12
# Testcase cp_fd (Test destination fd = x28)
li x28, 0x0fdefdb2e1df6917 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x1c692a701fc252df # load immediate value into integer register
fcvt.s.l f28, x7
# Testcase cp_fd (Test destination fd = x29)
li x29, 0xa85fef54cd61fd33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xba7411e75ace412c # load immediate value into integer register
fcvt.s.l f29, x14
# Testcase cp_fd (Test destination fd = x30)
li x30, 0x90bd27e91827433a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xeae42d3670db12d1 # load immediate value into integer register
fcvt.s.l f30, x28
# Testcase cp_fd (Test destination fd = x31)
li x31, 0xcc853d16bfb80e5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x755a66dd61e3a10e # load immediate value into integer register
fcvt.s.l f31, x22
.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
