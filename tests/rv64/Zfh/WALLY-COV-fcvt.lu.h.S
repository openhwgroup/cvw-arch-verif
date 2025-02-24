///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zfh//WALLY-COV-fcvt.lu.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.044777
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
li x0, 0x868c0b13fd78e710 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8f86374f9b7d8cd # load x3 with value 0x8f86374f9b7d8cd
sw x3, 0(x2) # store 0x8f86374f9b7d8cd in memory
flh f19, 0(x2) # load 0x8f86374f9b7d8cd from memory into f19
fcvt.lu.h x0, f19 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xc06f2eddb88eb4c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc1ddf8e99914c6c7 # load x3 with value 0xc1ddf8e99914c6c7
sw x3, 0(x2) # store 0xc1ddf8e99914c6c7 in memory
flh f15, 0(x2) # load 0xc1ddf8e99914c6c7 from memory into f15
fcvt.lu.h x1, f15 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xfaddf6c35b70bec8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5f3c4980dd5d778b # load x3 with value 0x5f3c4980dd5d778b
sw x3, 0(x2) # store 0x5f3c4980dd5d778b in memory
flh f10, 0(x2) # load 0x5f3c4980dd5d778b from memory into f10
fcvt.lu.h x2, f10 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x7b779aea8bd773a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6860fb1b3d856d47 # load x3 with value 0x6860fb1b3d856d47
sw x3, 0(x2) # store 0x6860fb1b3d856d47 in memory
flh f20, 0(x2) # load 0x6860fb1b3d856d47 from memory into f20
fcvt.lu.h x3, f20 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x7d57cdb22f7ab74e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5e96c618f2a91d # load x3 with value 0x5e96c618f2a91d
sw x3, 0(x2) # store 0x5e96c618f2a91d in memory
flh f4, 0(x2) # load 0x5e96c618f2a91d from memory into f4
fcvt.lu.h x4, f4 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xa38cd094b05aac7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd7324b5709db8337 # load x3 with value 0xd7324b5709db8337
sw x3, 0(x2) # store 0xd7324b5709db8337 in memory
flh f15, 0(x2) # load 0xd7324b5709db8337 from memory into f15
fcvt.lu.h x5, f15 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xc58c57034afa92e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x612d8dbb54c39a4f # load x3 with value 0x612d8dbb54c39a4f
sw x3, 0(x2) # store 0x612d8dbb54c39a4f in memory
flh f12, 0(x2) # load 0x612d8dbb54c39a4f from memory into f12
fcvt.lu.h x6, f12 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xa1e61d9b8e8fac30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4866e808497a52d1 # load x3 with value 0x4866e808497a52d1
sw x3, 0(x2) # store 0x4866e808497a52d1 in memory
flh f11, 0(x2) # load 0x4866e808497a52d1 from memory into f11
fcvt.lu.h x7, f11 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xb1356d9fc063ce63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb3889e582ba2b8f # load x3 with value 0xb3889e582ba2b8f
sw x3, 0(x2) # store 0xb3889e582ba2b8f in memory
flh f24, 0(x2) # load 0xb3889e582ba2b8f from memory into f24
fcvt.lu.h x8, f24 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x216160f50235a01f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4c448f026535c3d2 # load x3 with value 0x4c448f026535c3d2
sw x3, 0(x2) # store 0x4c448f026535c3d2 in memory
flh f5, 0(x2) # load 0x4c448f026535c3d2 from memory into f5
fcvt.lu.h x9, f5 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xf67f58e7a2e5f863 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xef9446f54dd0e94b # load x3 with value 0xef9446f54dd0e94b
sw x3, 0(x2) # store 0xef9446f54dd0e94b in memory
flh f3, 0(x2) # load 0xef9446f54dd0e94b from memory into f3
fcvt.lu.h x10, f3 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xb24f6a7f40da1aa8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1496d8a34c3cfb34 # load x3 with value 0x1496d8a34c3cfb34
sw x3, 0(x2) # store 0x1496d8a34c3cfb34 in memory
flh f26, 0(x2) # load 0x1496d8a34c3cfb34 from memory into f26
fcvt.lu.h x11, f26 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x66ab68a923813592 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc849800e1e2e8867 # load x3 with value 0xc849800e1e2e8867
sw x3, 0(x2) # store 0xc849800e1e2e8867 in memory
flh f22, 0(x2) # load 0xc849800e1e2e8867 from memory into f22
fcvt.lu.h x12, f22 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x308e6a65af4a909f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa20b52f125d17f66 # load x3 with value 0xa20b52f125d17f66
sw x3, 0(x2) # store 0xa20b52f125d17f66 in memory
flh f15, 0(x2) # load 0xa20b52f125d17f66 from memory into f15
fcvt.lu.h x13, f15 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xfba2536fe5beccba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd6a3627c41d3cd63 # load x3 with value 0xd6a3627c41d3cd63
sw x3, 0(x2) # store 0xd6a3627c41d3cd63 in memory
flh f23, 0(x2) # load 0xd6a3627c41d3cd63 from memory into f23
fcvt.lu.h x14, f23 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x3b13f80fb3810160 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3377a8fcafdbfd27 # load x3 with value 0x3377a8fcafdbfd27
sw x3, 0(x2) # store 0x3377a8fcafdbfd27 in memory
flh f22, 0(x2) # load 0x3377a8fcafdbfd27 from memory into f22
fcvt.lu.h x15, f22 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xd02a6150af98524c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xca67aab463d7dea9 # load x3 with value 0xca67aab463d7dea9
sw x3, 0(x2) # store 0xca67aab463d7dea9 in memory
flh f20, 0(x2) # load 0xca67aab463d7dea9 from memory into f20
fcvt.lu.h x16, f20 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x92c006106c35962c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2ec3d6fd316788b4 # load x3 with value 0x2ec3d6fd316788b4
sw x3, 0(x2) # store 0x2ec3d6fd316788b4 in memory
flh f10, 0(x2) # load 0x2ec3d6fd316788b4 from memory into f10
fcvt.lu.h x17, f10 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xfdc3190f6f496a4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa64161896ee48e8a # load x3 with value 0xa64161896ee48e8a
sw x3, 0(x2) # store 0xa64161896ee48e8a in memory
flh f30, 0(x2) # load 0xa64161896ee48e8a from memory into f30
fcvt.lu.h x18, f30 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x9b7953fcd5bcab41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x33f52aa2baa1a289 # load x3 with value 0x33f52aa2baa1a289
sw x3, 0(x2) # store 0x33f52aa2baa1a289 in memory
flh f25, 0(x2) # load 0x33f52aa2baa1a289 from memory into f25
fcvt.lu.h x19, f25 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x08a5d5ff15c9dc5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa6290827744059c4 # load x3 with value 0xa6290827744059c4
sw x3, 0(x2) # store 0xa6290827744059c4 in memory
flh f23, 0(x2) # load 0xa6290827744059c4 from memory into f23
fcvt.lu.h x20, f23 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x8980de3fbc574ce2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf749bc06e5e6737 # load x3 with value 0xf749bc06e5e6737
sw x3, 0(x2) # store 0xf749bc06e5e6737 in memory
flh f15, 0(x2) # load 0xf749bc06e5e6737 from memory into f15
fcvt.lu.h x21, f15 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x092752c06c867431 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x268979d1584d8046 # load x3 with value 0x268979d1584d8046
sw x3, 0(x2) # store 0x268979d1584d8046 in memory
flh f10, 0(x2) # load 0x268979d1584d8046 from memory into f10
fcvt.lu.h x22, f10 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xd19484a02bb05851 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb2d68b20fb43e8c # load x3 with value 0xb2d68b20fb43e8c
sw x3, 0(x2) # store 0xb2d68b20fb43e8c in memory
flh f13, 0(x2) # load 0xb2d68b20fb43e8c from memory into f13
fcvt.lu.h x23, f13 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xd770ed61926c0314 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6800ca9bc5390ef4 # load x3 with value 0x6800ca9bc5390ef4
sw x3, 0(x2) # store 0x6800ca9bc5390ef4 in memory
flh f26, 0(x2) # load 0x6800ca9bc5390ef4 from memory into f26
fcvt.lu.h x24, f26 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x56d492964ed76533 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xed2381b9890a3ee6 # load x3 with value 0xed2381b9890a3ee6
sw x3, 0(x2) # store 0xed2381b9890a3ee6 in memory
flh f7, 0(x2) # load 0xed2381b9890a3ee6 from memory into f7
fcvt.lu.h x25, f7 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x48689223cea69362 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf9cf44f6fd173814 # load x3 with value 0xf9cf44f6fd173814
sw x3, 0(x2) # store 0xf9cf44f6fd173814 in memory
flh f13, 0(x2) # load 0xf9cf44f6fd173814 from memory into f13
fcvt.lu.h x26, f13 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x1f292052e2f37c45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x26005f37f1d5c93b # load x3 with value 0x26005f37f1d5c93b
sw x3, 0(x2) # store 0x26005f37f1d5c93b in memory
flh f5, 0(x2) # load 0x26005f37f1d5c93b from memory into f5
fcvt.lu.h x27, f5 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x549f229aaa4d0bf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2af61f5dda52870d # load x3 with value 0x2af61f5dda52870d
sw x3, 0(x2) # store 0x2af61f5dda52870d in memory
flh f13, 0(x2) # load 0x2af61f5dda52870d from memory into f13
fcvt.lu.h x28, f13 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xd69d701a16af8ffb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5e03b6ca78ba6527 # load x3 with value 0x5e03b6ca78ba6527
sw x3, 0(x2) # store 0x5e03b6ca78ba6527 in memory
flh f6, 0(x2) # load 0x5e03b6ca78ba6527 from memory into f6
fcvt.lu.h x29, f6 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x7d0105097a51e0e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe43dfbab310e33ad # load x3 with value 0xe43dfbab310e33ad
sw x3, 0(x2) # store 0xe43dfbab310e33ad in memory
flh f9, 0(x2) # load 0xe43dfbab310e33ad from memory into f9
fcvt.lu.h x30, f9 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x7776261aa9144856 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4b81365e2a00c58d # load x3 with value 0x4b81365e2a00c58d
sw x3, 0(x2) # store 0x4b81365e2a00c58d in memory
flh f12, 0(x2) # load 0x4b81365e2a00c58d from memory into f12
fcvt.lu.h x31, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x29, 0xa3a45dba6d88522c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
fcvt.lu.h x29, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
li x10, 0x19ed41b67021a433 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f24, 0(x2) # load 0x00008000 from memory into f24
fcvt.lu.h x10, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
li x14, 0xd58742d50aa129e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
fcvt.lu.h x14, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
li x6, 0x91b690d6bbf7524e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f31, 0(x2) # load 0x0000bc00 from memory into f31
fcvt.lu.h x6, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
li x28, 0x1c96a9ff034d2806 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
fcvt.lu.h x28, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
li x10, 0x667e9f513ee304b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
fcvt.lu.h x10, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
li x13, 0xfb5b235e6b3f7302 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
fcvt.lu.h x13, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
li x7, 0x7983514252a176a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
fcvt.lu.h x7, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
li x27, 0x033f490aa712d24e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
fcvt.lu.h x27, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
li x13, 0x33dab8383bce05ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
fcvt.lu.h x13, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
li x8, 0xe4c4671d4c8d0b86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f23, 0(x2) # load 0x00007bff from memory into f23
fcvt.lu.h x8, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
li x7, 0x3b7240380a9c111a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f15, 0(x2) # load 0x0000fbff from memory into f15
fcvt.lu.h x7, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
li x8, 0x352dd3481b2432f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f19, 0(x2) # load 0x000003ff from memory into f19
fcvt.lu.h x8, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
li x29, 0xb18bfe7a683858be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
fcvt.lu.h x29, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
li x23, 0xa6a4129b207f79b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f12, 0(x2) # load 0x00000200 from memory into f12
fcvt.lu.h x23, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
li x16, 0xd496c527f443dead # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f8, 0(x2) # load 0x00008200 from memory into f8
fcvt.lu.h x16, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x5, 0xe00e61a5fb0c4647 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f30, 0(x2) # load 0x00000001 from memory into f30
fcvt.lu.h x5, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
li x10, 0x0208def76fcad54b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f25, 0(x2) # load 0x00008001 from memory into f25
fcvt.lu.h x10, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
li x12, 0x3aa3552ba5c15f61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f29, 0(x2) # load 0x00007c00 from memory into f29
fcvt.lu.h x12, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
li x20, 0x7bd6f83e59254d33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f12, 0(x2) # load 0x0000fc00 from memory into f12
fcvt.lu.h x20, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
li x31, 0x6c568c1dffafb42e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f1, 0(x2) # load 0x00007e00 from memory into f1
fcvt.lu.h x31, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
li x20, 0x1ff1c3719fefe7e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
fcvt.lu.h x20, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
li x19, 0x3b2818ca56f4b9b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f29, 0(x2) # load 0x00007c01 from memory into f29
fcvt.lu.h x19, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
li x24, 0x7e7550b00b0399e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f9, 0(x2) # load 0x00007dff from memory into f9
fcvt.lu.h x24, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
li x24, 0x2987afd59186f881 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f7, 0(x2) # load 0x000058b4 from memory into f7
fcvt.lu.h x24, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
li x14, 0x6e867c65a142055b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
fcvt.lu.h x14, f30 # perform operation

# Testcase cp_frm
li x19, 0x70fabc3929a79018 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc95974321be34aa2 # load x3 with value 0xc95974321be34aa2
sw x3, 0(x2) # store 0xc95974321be34aa2 in memory
flh f27, 0(x2) # load 0xc95974321be34aa2 from memory into f27
fcvt.lu.h x19, f27, dyn # perform operation
fcvt.lu.h x19, f27, rdn # perform operation
fcvt.lu.h x19, f27, rmm # perform operation
fcvt.lu.h x19, f27, rne # perform operation
fcvt.lu.h x19, f27, rtz # perform operation
fcvt.lu.h x19, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.lu.h x19, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.lu.h x19, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.lu.h x19, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.lu.h x19, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.lu.h x19, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x30, 0x179d3a0cae8dbafb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1c626d00c93c3009 # load x3 with value 0x1c626d00c93c3009
sw x3, 0(x2) # store 0x1c626d00c93c3009 in memory
flh f0, 0(x2) # load 0x1c626d00c93c3009 from memory into f0
fcvt.lu.h x30, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x11, 0x3a61ef0de0687750 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x18e8147ae584c020 # load x3 with value 0x18e8147ae584c020
sw x3, 0(x2) # store 0x18e8147ae584c020 in memory
flh f1, 0(x2) # load 0x18e8147ae584c020 from memory into f1
fcvt.lu.h x11, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x27, 0x2d6dc1bbbf6e58ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf9ffea5119216599 # load x3 with value 0xf9ffea5119216599
sw x3, 0(x2) # store 0xf9ffea5119216599 in memory
flh f2, 0(x2) # load 0xf9ffea5119216599 from memory into f2
fcvt.lu.h x27, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x23, 0xe87deb43e682403d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x97f6576acd9b637a # load x3 with value 0x97f6576acd9b637a
sw x3, 0(x2) # store 0x97f6576acd9b637a in memory
flh f3, 0(x2) # load 0x97f6576acd9b637a from memory into f3
fcvt.lu.h x23, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x3, 0x60b39743d8d9c0dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x62230ca696a25a4b # load x3 with value 0x62230ca696a25a4b
sw x3, 0(x2) # store 0x62230ca696a25a4b in memory
flh f4, 0(x2) # load 0x62230ca696a25a4b from memory into f4
fcvt.lu.h x3, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x13, 0x0c6529282797cea7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf1effb63afd9dcf5 # load x3 with value 0xf1effb63afd9dcf5
sw x3, 0(x2) # store 0xf1effb63afd9dcf5 in memory
flh f5, 0(x2) # load 0xf1effb63afd9dcf5 from memory into f5
fcvt.lu.h x13, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x16, 0xa699224ac633378c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x49df9f35d2310f8 # load x3 with value 0x49df9f35d2310f8
sw x3, 0(x2) # store 0x49df9f35d2310f8 in memory
flh f6, 0(x2) # load 0x49df9f35d2310f8 from memory into f6
fcvt.lu.h x16, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x23, 0x2888317757f46979 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xef6e572f23a9e5f2 # load x3 with value 0xef6e572f23a9e5f2
sw x3, 0(x2) # store 0xef6e572f23a9e5f2 in memory
flh f7, 0(x2) # load 0xef6e572f23a9e5f2 from memory into f7
fcvt.lu.h x23, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x15, 0x9607a8e4fc00364c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5413a7bda1ec41f7 # load x3 with value 0x5413a7bda1ec41f7
sw x3, 0(x2) # store 0x5413a7bda1ec41f7 in memory
flh f8, 0(x2) # load 0x5413a7bda1ec41f7 from memory into f8
fcvt.lu.h x15, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x25, 0x647e23d4aaef1192 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe4c2e4d13b44060c # load x3 with value 0xe4c2e4d13b44060c
sw x3, 0(x2) # store 0xe4c2e4d13b44060c in memory
flh f9, 0(x2) # load 0xe4c2e4d13b44060c from memory into f9
fcvt.lu.h x25, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x28, 0x92edcba4c1ebcd92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x10e9d6a8e32cfeaa # load x3 with value 0x10e9d6a8e32cfeaa
sw x3, 0(x2) # store 0x10e9d6a8e32cfeaa in memory
flh f10, 0(x2) # load 0x10e9d6a8e32cfeaa from memory into f10
fcvt.lu.h x28, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x21, 0xca13311a049be7b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x360d621c8e267eeb # load x3 with value 0x360d621c8e267eeb
sw x3, 0(x2) # store 0x360d621c8e267eeb in memory
flh f11, 0(x2) # load 0x360d621c8e267eeb from memory into f11
fcvt.lu.h x21, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x21, 0x2565a9a005182e23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa0ae31809ba9a3d0 # load x3 with value 0xa0ae31809ba9a3d0
sw x3, 0(x2) # store 0xa0ae31809ba9a3d0 in memory
flh f12, 0(x2) # load 0xa0ae31809ba9a3d0 from memory into f12
fcvt.lu.h x21, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x21, 0x459c4bb40d26c13c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3df46e0c7f9d6345 # load x3 with value 0x3df46e0c7f9d6345
sw x3, 0(x2) # store 0x3df46e0c7f9d6345 in memory
flh f13, 0(x2) # load 0x3df46e0c7f9d6345 from memory into f13
fcvt.lu.h x21, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x11, 0xae73980c33c826cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x46eaf46784bd5a51 # load x3 with value 0x46eaf46784bd5a51
sw x3, 0(x2) # store 0x46eaf46784bd5a51 in memory
flh f14, 0(x2) # load 0x46eaf46784bd5a51 from memory into f14
fcvt.lu.h x11, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x17, 0x24ec18834aed8cd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x13173f94b3671ff1 # load x3 with value 0x13173f94b3671ff1
sw x3, 0(x2) # store 0x13173f94b3671ff1 in memory
flh f15, 0(x2) # load 0x13173f94b3671ff1 from memory into f15
fcvt.lu.h x17, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x18, 0x93a86490ce1886e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7a53ae2733871d82 # load x3 with value 0x7a53ae2733871d82
sw x3, 0(x2) # store 0x7a53ae2733871d82 in memory
flh f16, 0(x2) # load 0x7a53ae2733871d82 from memory into f16
fcvt.lu.h x18, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x31, 0x943c22c07d531169 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x89c081788a5bcdca # load x3 with value 0x89c081788a5bcdca
sw x3, 0(x2) # store 0x89c081788a5bcdca in memory
flh f17, 0(x2) # load 0x89c081788a5bcdca from memory into f17
fcvt.lu.h x31, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x27, 0x919dd6e5fc01b1b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe2f146e22304c129 # load x3 with value 0xe2f146e22304c129
sw x3, 0(x2) # store 0xe2f146e22304c129 in memory
flh f18, 0(x2) # load 0xe2f146e22304c129 from memory into f18
fcvt.lu.h x27, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x27, 0xd892e67b6f592b39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb2353126f1d26b63 # load x3 with value 0xb2353126f1d26b63
sw x3, 0(x2) # store 0xb2353126f1d26b63 in memory
flh f19, 0(x2) # load 0xb2353126f1d26b63 from memory into f19
fcvt.lu.h x27, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x7, 0xc11fb08fc3c2bd36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x603111b436f4593b # load x3 with value 0x603111b436f4593b
sw x3, 0(x2) # store 0x603111b436f4593b in memory
flh f20, 0(x2) # load 0x603111b436f4593b from memory into f20
fcvt.lu.h x7, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x28, 0x9f966e7841b5adf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1831f050e50c6361 # load x3 with value 0x1831f050e50c6361
sw x3, 0(x2) # store 0x1831f050e50c6361 in memory
flh f21, 0(x2) # load 0x1831f050e50c6361 from memory into f21
fcvt.lu.h x28, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x16, 0x75c955872cced82d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8782838bbf3b3985 # load x3 with value 0x8782838bbf3b3985
sw x3, 0(x2) # store 0x8782838bbf3b3985 in memory
flh f22, 0(x2) # load 0x8782838bbf3b3985 from memory into f22
fcvt.lu.h x16, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x30, 0x34c772218adc0d29 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf6212ea1a98d7231 # load x3 with value 0xf6212ea1a98d7231
sw x3, 0(x2) # store 0xf6212ea1a98d7231 in memory
flh f23, 0(x2) # load 0xf6212ea1a98d7231 from memory into f23
fcvt.lu.h x30, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x31, 0x4e123f352f74e2a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa6791b2133d8bce # load x3 with value 0xa6791b2133d8bce
sw x3, 0(x2) # store 0xa6791b2133d8bce in memory
flh f24, 0(x2) # load 0xa6791b2133d8bce from memory into f24
fcvt.lu.h x31, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x5, 0x417a97320248e431 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd4a4206d7f3ac025 # load x3 with value 0xd4a4206d7f3ac025
sw x3, 0(x2) # store 0xd4a4206d7f3ac025 in memory
flh f25, 0(x2) # load 0xd4a4206d7f3ac025 from memory into f25
fcvt.lu.h x5, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x19, 0xcb83d1d39efca4d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf3038794e0958f3e # load x3 with value 0xf3038794e0958f3e
sw x3, 0(x2) # store 0xf3038794e0958f3e in memory
flh f26, 0(x2) # load 0xf3038794e0958f3e from memory into f26
fcvt.lu.h x19, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x4, 0xff002628c8954b9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2fe9e3e3eb82fc6a # load x3 with value 0x2fe9e3e3eb82fc6a
sw x3, 0(x2) # store 0x2fe9e3e3eb82fc6a in memory
flh f27, 0(x2) # load 0x2fe9e3e3eb82fc6a from memory into f27
fcvt.lu.h x4, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x19, 0x2fed6e748b463af9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7d0f06eb9c5dfece # load x3 with value 0x7d0f06eb9c5dfece
sw x3, 0(x2) # store 0x7d0f06eb9c5dfece in memory
flh f28, 0(x2) # load 0x7d0f06eb9c5dfece from memory into f28
fcvt.lu.h x19, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x23, 0x5adefcf375f59c4c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x935ef4e1d8703fb4 # load x3 with value 0x935ef4e1d8703fb4
sw x3, 0(x2) # store 0x935ef4e1d8703fb4 in memory
flh f29, 0(x2) # load 0x935ef4e1d8703fb4 from memory into f29
fcvt.lu.h x23, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x23, 0x5e39b7573ae1c5f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xcc537412b8b8f977 # load x3 with value 0xcc537412b8b8f977
sw x3, 0(x2) # store 0xcc537412b8b8f977 in memory
flh f30, 0(x2) # load 0xcc537412b8b8f977 from memory into f30
fcvt.lu.h x23, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x17, 0xe12f6187257ee570 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x46c12a5a257c5fd5 # load x3 with value 0x46c12a5a257c5fd5
sw x3, 0(x2) # store 0x46c12a5a257c5fd5 in memory
flh f31, 0(x2) # load 0x46c12a5a257c5fd5 from memory into f31
fcvt.lu.h x17, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
