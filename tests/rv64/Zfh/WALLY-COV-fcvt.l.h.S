///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zfh//WALLY-COV-fcvt.l.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.043567
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
li x0, 0x4b694327affaaf8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf36cf468a794c028 # load x3 with value 0xf36cf468a794c028
sw x3, 0(x2) # store 0xf36cf468a794c028 in memory
flh f15, 0(x2) # load 0xf36cf468a794c028 from memory into f15
fcvt.l.h x0, f15 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x029ed58f05e22d38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1e5bfafc91acc148 # load x3 with value 0x1e5bfafc91acc148
sw x3, 0(x2) # store 0x1e5bfafc91acc148 in memory
flh f31, 0(x2) # load 0x1e5bfafc91acc148 from memory into f31
fcvt.l.h x1, f31 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x8f58724cceddd759 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xdfb5f498aa832c4 # load x3 with value 0xdfb5f498aa832c4
sw x3, 0(x2) # store 0xdfb5f498aa832c4 in memory
flh f11, 0(x2) # load 0xdfb5f498aa832c4 from memory into f11
fcvt.l.h x2, f11 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x3fb96191e2d2ec2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb9d5f85164db2912 # load x3 with value 0xb9d5f85164db2912
sw x3, 0(x2) # store 0xb9d5f85164db2912 in memory
flh f17, 0(x2) # load 0xb9d5f85164db2912 from memory into f17
fcvt.l.h x3, f17 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x7f8c0a6de8c08012 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2b12bf47c6f29a0d # load x3 with value 0x2b12bf47c6f29a0d
sw x3, 0(x2) # store 0x2b12bf47c6f29a0d in memory
flh f16, 0(x2) # load 0x2b12bf47c6f29a0d from memory into f16
fcvt.l.h x4, f16 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x06b21751c0f1a0bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x987df124f552c205 # load x3 with value 0x987df124f552c205
sw x3, 0(x2) # store 0x987df124f552c205 in memory
flh f16, 0(x2) # load 0x987df124f552c205 from memory into f16
fcvt.l.h x5, f16 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xa0318712f850de1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf7d229e1fe45fee # load x3 with value 0xf7d229e1fe45fee
sw x3, 0(x2) # store 0xf7d229e1fe45fee in memory
flh f13, 0(x2) # load 0xf7d229e1fe45fee from memory into f13
fcvt.l.h x6, f13 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xca95d9085b46b3a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x819977a2538554e6 # load x3 with value 0x819977a2538554e6
sw x3, 0(x2) # store 0x819977a2538554e6 in memory
flh f24, 0(x2) # load 0x819977a2538554e6 from memory into f24
fcvt.l.h x7, f24 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x6e155adb7b140b17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x24da74efd360b071 # load x3 with value 0x24da74efd360b071
sw x3, 0(x2) # store 0x24da74efd360b071 in memory
flh f1, 0(x2) # load 0x24da74efd360b071 from memory into f1
fcvt.l.h x8, f1 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xdf0c67e429e579f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2e44b097e147a0cd # load x3 with value 0x2e44b097e147a0cd
sw x3, 0(x2) # store 0x2e44b097e147a0cd in memory
flh f15, 0(x2) # load 0x2e44b097e147a0cd from memory into f15
fcvt.l.h x9, f15 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xf2e4d4d1fe49075b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc017951409f0c901 # load x3 with value 0xc017951409f0c901
sw x3, 0(x2) # store 0xc017951409f0c901 in memory
flh f14, 0(x2) # load 0xc017951409f0c901 from memory into f14
fcvt.l.h x10, f14 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xc58bcb3049182ac9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf6770bab05556f95 # load x3 with value 0xf6770bab05556f95
sw x3, 0(x2) # store 0xf6770bab05556f95 in memory
flh f28, 0(x2) # load 0xf6770bab05556f95 from memory into f28
fcvt.l.h x11, f28 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xdbe00e997e09a362 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbb5f4c7f75d6ace2 # load x3 with value 0xbb5f4c7f75d6ace2
sw x3, 0(x2) # store 0xbb5f4c7f75d6ace2 in memory
flh f30, 0(x2) # load 0xbb5f4c7f75d6ace2 from memory into f30
fcvt.l.h x12, f30 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x7e8b482c8601f8d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x31e183ffd42ee19f # load x3 with value 0x31e183ffd42ee19f
sw x3, 0(x2) # store 0x31e183ffd42ee19f in memory
flh f19, 0(x2) # load 0x31e183ffd42ee19f from memory into f19
fcvt.l.h x13, f19 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x31b32fd883049451 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x83632b4ec366b4c1 # load x3 with value 0x83632b4ec366b4c1
sw x3, 0(x2) # store 0x83632b4ec366b4c1 in memory
flh f24, 0(x2) # load 0x83632b4ec366b4c1 from memory into f24
fcvt.l.h x14, f24 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x36cc75a830a4a180 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x52762e8018f94f # load x3 with value 0x52762e8018f94f
sw x3, 0(x2) # store 0x52762e8018f94f in memory
flh f8, 0(x2) # load 0x52762e8018f94f from memory into f8
fcvt.l.h x15, f8 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x77dd02eee1eafb5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x77651782bcc693a1 # load x3 with value 0x77651782bcc693a1
sw x3, 0(x2) # store 0x77651782bcc693a1 in memory
flh f28, 0(x2) # load 0x77651782bcc693a1 from memory into f28
fcvt.l.h x16, f28 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x233aae53c04839b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe53c7f6f57e69ffa # load x3 with value 0xe53c7f6f57e69ffa
sw x3, 0(x2) # store 0xe53c7f6f57e69ffa in memory
flh f22, 0(x2) # load 0xe53c7f6f57e69ffa from memory into f22
fcvt.l.h x17, f22 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xbe67d7a505af88e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8c63bdd9a7a58ab4 # load x3 with value 0x8c63bdd9a7a58ab4
sw x3, 0(x2) # store 0x8c63bdd9a7a58ab4 in memory
flh f8, 0(x2) # load 0x8c63bdd9a7a58ab4 from memory into f8
fcvt.l.h x18, f8 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x4f70c4ead29ef2cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9d08654dd034ec07 # load x3 with value 0x9d08654dd034ec07
sw x3, 0(x2) # store 0x9d08654dd034ec07 in memory
flh f30, 0(x2) # load 0x9d08654dd034ec07 from memory into f30
fcvt.l.h x19, f30 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x72341dc860b9fe8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xdf956dfcad5c4919 # load x3 with value 0xdf956dfcad5c4919
sw x3, 0(x2) # store 0xdf956dfcad5c4919 in memory
flh f18, 0(x2) # load 0xdf956dfcad5c4919 from memory into f18
fcvt.l.h x20, f18 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xf7095638ebd63ffc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6ccd2e869758a7c6 # load x3 with value 0x6ccd2e869758a7c6
sw x3, 0(x2) # store 0x6ccd2e869758a7c6 in memory
flh f4, 0(x2) # load 0x6ccd2e869758a7c6 from memory into f4
fcvt.l.h x21, f4 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x15290eb2f9bbc839 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb5c00ec2acc2e760 # load x3 with value 0xb5c00ec2acc2e760
sw x3, 0(x2) # store 0xb5c00ec2acc2e760 in memory
flh f8, 0(x2) # load 0xb5c00ec2acc2e760 from memory into f8
fcvt.l.h x22, f8 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xcdd3cfe4c06b680e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x598ff53f5b7e5dc1 # load x3 with value 0x598ff53f5b7e5dc1
sw x3, 0(x2) # store 0x598ff53f5b7e5dc1 in memory
flh f11, 0(x2) # load 0x598ff53f5b7e5dc1 from memory into f11
fcvt.l.h x23, f11 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x9b903afac4d19bdc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbf42e5d0b9bbb0af # load x3 with value 0xbf42e5d0b9bbb0af
sw x3, 0(x2) # store 0xbf42e5d0b9bbb0af in memory
flh f7, 0(x2) # load 0xbf42e5d0b9bbb0af from memory into f7
fcvt.l.h x24, f7 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xae6485357a56c927 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa4970e86ff80e4fb # load x3 with value 0xa4970e86ff80e4fb
sw x3, 0(x2) # store 0xa4970e86ff80e4fb in memory
flh f31, 0(x2) # load 0xa4970e86ff80e4fb from memory into f31
fcvt.l.h x25, f31 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x2cf1435e6b4bde1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa9d9037dcb1aa838 # load x3 with value 0xa9d9037dcb1aa838
sw x3, 0(x2) # store 0xa9d9037dcb1aa838 in memory
flh f12, 0(x2) # load 0xa9d9037dcb1aa838 from memory into f12
fcvt.l.h x26, f12 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xf1984b510664115c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x72e814751a3b7c71 # load x3 with value 0x72e814751a3b7c71
sw x3, 0(x2) # store 0x72e814751a3b7c71 in memory
flh f31, 0(x2) # load 0x72e814751a3b7c71 from memory into f31
fcvt.l.h x27, f31 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x097f734cfa116239 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xed4c14861be7c39d # load x3 with value 0xed4c14861be7c39d
sw x3, 0(x2) # store 0xed4c14861be7c39d in memory
flh f7, 0(x2) # load 0xed4c14861be7c39d from memory into f7
fcvt.l.h x28, f7 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x8ff752b079c61302 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4e3bb1d6420577d6 # load x3 with value 0x4e3bb1d6420577d6
sw x3, 0(x2) # store 0x4e3bb1d6420577d6 in memory
flh f22, 0(x2) # load 0x4e3bb1d6420577d6 from memory into f22
fcvt.l.h x29, f22 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xf1486d9c4e5b6a7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9dd3ec4fdf32acf9 # load x3 with value 0x9dd3ec4fdf32acf9
sw x3, 0(x2) # store 0x9dd3ec4fdf32acf9 in memory
flh f3, 0(x2) # load 0x9dd3ec4fdf32acf9 from memory into f3
fcvt.l.h x30, f3 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x8876fc7724ee64a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xcbbabf783410d3a5 # load x3 with value 0xcbbabf783410d3a5
sw x3, 0(x2) # store 0xcbbabf783410d3a5 in memory
flh f20, 0(x2) # load 0xcbbabf783410d3a5 from memory into f20
fcvt.l.h x31, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x27, 0xd9341e2173d6eb42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f11, 0(x2) # load 0x00000000 from memory into f11
fcvt.l.h x27, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
li x1, 0xe6a5d360fc9117b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
fcvt.l.h x1, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
li x17, 0x85f0e1bd13bcc01b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
fcvt.l.h x17, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
li x8, 0x555752adbb576d3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f17, 0(x2) # load 0x0000bc00 from memory into f17
fcvt.l.h x8, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
li x9, 0xba856d5505f35647 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f19, 0(x2) # load 0x00003e00 from memory into f19
fcvt.l.h x9, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
li x13, 0x6e90942792879259 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f3, 0(x2) # load 0x0000be00 from memory into f3
fcvt.l.h x13, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
li x22, 0xc8ad423ca290dfeb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
fcvt.l.h x22, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
li x11, 0x3de63b0bc36d8edb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
fcvt.l.h x11, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
li x8, 0x388d52b388c5121c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
fcvt.l.h x8, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
li x28, 0x2b4ced20e3afed08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f27, 0(x2) # load 0x00008400 from memory into f27
fcvt.l.h x28, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
li x12, 0x78f033a3c47f0db2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
fcvt.l.h x12, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
li x7, 0x53974f83ea7f6dcd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f30, 0(x2) # load 0x0000fbff from memory into f30
fcvt.l.h x7, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
li x30, 0xe3da4b5295d59dbb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
fcvt.l.h x30, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
li x29, 0x3302634cc8bd3664 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
fcvt.l.h x29, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
li x21, 0x5054d0fce66ca968 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f12, 0(x2) # load 0x00000200 from memory into f12
fcvt.l.h x21, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
li x30, 0x28046e057ca6f74b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f28, 0(x2) # load 0x00008200 from memory into f28
fcvt.l.h x30, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x19, 0x71625f015b12f8a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f22, 0(x2) # load 0x00000001 from memory into f22
fcvt.l.h x19, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
li x23, 0xef4b63137c8ec8db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f4, 0(x2) # load 0x00008001 from memory into f4
fcvt.l.h x23, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
li x4, 0x1d902309fd3b5147 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f30, 0(x2) # load 0x00007c00 from memory into f30
fcvt.l.h x4, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
li x24, 0x9a2a375625e87243 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
fcvt.l.h x24, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
li x9, 0x196cabe8cf4e544c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f16, 0(x2) # load 0x00007e00 from memory into f16
fcvt.l.h x9, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
li x15, 0xb635a97f029240f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f31, 0(x2) # load 0x00007fff from memory into f31
fcvt.l.h x15, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
li x13, 0x100218dbdbab76e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
fcvt.l.h x13, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
li x17, 0x0fd50b02bce30bd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f4, 0(x2) # load 0x00007dff from memory into f4
fcvt.l.h x17, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
li x4, 0xb4a7408d72de21ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f7, 0(x2) # load 0x000058b4 from memory into f7
fcvt.l.h x4, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
li x3, 0xd7cbb4a0d8c09886 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
fcvt.l.h x3, f21 # perform operation

# Testcase cp_frm
li x25, 0x2a78b067ba90ae40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf94e528c491dde64 # load x3 with value 0xf94e528c491dde64
sw x3, 0(x2) # store 0xf94e528c491dde64 in memory
flh f21, 0(x2) # load 0xf94e528c491dde64 from memory into f21
fcvt.l.h x25, f21, dyn # perform operation
fcvt.l.h x25, f21, rdn # perform operation
fcvt.l.h x25, f21, rmm # perform operation
fcvt.l.h x25, f21, rne # perform operation
fcvt.l.h x25, f21, rtz # perform operation
fcvt.l.h x25, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.l.h x25, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.l.h x25, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.l.h x25, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.l.h x25, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.l.h x25, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x8, 0xb31caeb5000e5a3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5070b1754399e2e # load x3 with value 0x5070b1754399e2e
sw x3, 0(x2) # store 0x5070b1754399e2e in memory
flh f0, 0(x2) # load 0x5070b1754399e2e from memory into f0
fcvt.l.h x8, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x26, 0xb0f3eb399365500c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6facb3e37b5f8dc2 # load x3 with value 0x6facb3e37b5f8dc2
sw x3, 0(x2) # store 0x6facb3e37b5f8dc2 in memory
flh f1, 0(x2) # load 0x6facb3e37b5f8dc2 from memory into f1
fcvt.l.h x26, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x15, 0x5f1d6118d9cfdb4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb4367d9b4c2b1e5d # load x3 with value 0xb4367d9b4c2b1e5d
sw x3, 0(x2) # store 0xb4367d9b4c2b1e5d in memory
flh f2, 0(x2) # load 0xb4367d9b4c2b1e5d from memory into f2
fcvt.l.h x15, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x31, 0xaf9f8c155f3f8c40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7e00a4a69ccd84e # load x3 with value 0x7e00a4a69ccd84e
sw x3, 0(x2) # store 0x7e00a4a69ccd84e in memory
flh f3, 0(x2) # load 0x7e00a4a69ccd84e from memory into f3
fcvt.l.h x31, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x29, 0x45344bf45b959ae8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x525d4ecba69797e8 # load x3 with value 0x525d4ecba69797e8
sw x3, 0(x2) # store 0x525d4ecba69797e8 in memory
flh f4, 0(x2) # load 0x525d4ecba69797e8 from memory into f4
fcvt.l.h x29, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x5, 0xb125524b2cf63887 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x27dff483e3899fd8 # load x3 with value 0x27dff483e3899fd8
sw x3, 0(x2) # store 0x27dff483e3899fd8 in memory
flh f5, 0(x2) # load 0x27dff483e3899fd8 from memory into f5
fcvt.l.h x5, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x27, 0x32e3d5931602c8ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd78b373ea5783c33 # load x3 with value 0xd78b373ea5783c33
sw x3, 0(x2) # store 0xd78b373ea5783c33 in memory
flh f6, 0(x2) # load 0xd78b373ea5783c33 from memory into f6
fcvt.l.h x27, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x20, 0xa3c878151be9d462 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x18b44f1ce5977e21 # load x3 with value 0x18b44f1ce5977e21
sw x3, 0(x2) # store 0x18b44f1ce5977e21 in memory
flh f7, 0(x2) # load 0x18b44f1ce5977e21 from memory into f7
fcvt.l.h x20, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x22, 0x4df3423e12e3203d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe8d9d29d1108e6b7 # load x3 with value 0xe8d9d29d1108e6b7
sw x3, 0(x2) # store 0xe8d9d29d1108e6b7 in memory
flh f8, 0(x2) # load 0xe8d9d29d1108e6b7 from memory into f8
fcvt.l.h x22, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x20, 0x48c157683ee81b7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4bfb95c3e956aab5 # load x3 with value 0x4bfb95c3e956aab5
sw x3, 0(x2) # store 0x4bfb95c3e956aab5 in memory
flh f9, 0(x2) # load 0x4bfb95c3e956aab5 from memory into f9
fcvt.l.h x20, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x26, 0xea4dd364fc3c4458 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd4a56a24ae0df3f2 # load x3 with value 0xd4a56a24ae0df3f2
sw x3, 0(x2) # store 0xd4a56a24ae0df3f2 in memory
flh f10, 0(x2) # load 0xd4a56a24ae0df3f2 from memory into f10
fcvt.l.h x26, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x5, 0x02d97486f3077eaf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf30ccda485adb3b5 # load x3 with value 0xf30ccda485adb3b5
sw x3, 0(x2) # store 0xf30ccda485adb3b5 in memory
flh f11, 0(x2) # load 0xf30ccda485adb3b5 from memory into f11
fcvt.l.h x5, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x23, 0x72da339dc9bad27f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x180ed92fcfa21661 # load x3 with value 0x180ed92fcfa21661
sw x3, 0(x2) # store 0x180ed92fcfa21661 in memory
flh f12, 0(x2) # load 0x180ed92fcfa21661 from memory into f12
fcvt.l.h x23, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x7, 0xad34b233736e42e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x529d7c44b37ace24 # load x3 with value 0x529d7c44b37ace24
sw x3, 0(x2) # store 0x529d7c44b37ace24 in memory
flh f13, 0(x2) # load 0x529d7c44b37ace24 from memory into f13
fcvt.l.h x7, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x23, 0x05c4813cf1c93f20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xae0552fd1ccf17ee # load x3 with value 0xae0552fd1ccf17ee
sw x3, 0(x2) # store 0xae0552fd1ccf17ee in memory
flh f14, 0(x2) # load 0xae0552fd1ccf17ee from memory into f14
fcvt.l.h x23, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x3, 0xd72d3661c5cff673 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4b068a76d87d9b1e # load x3 with value 0x4b068a76d87d9b1e
sw x3, 0(x2) # store 0x4b068a76d87d9b1e in memory
flh f15, 0(x2) # load 0x4b068a76d87d9b1e from memory into f15
fcvt.l.h x3, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x30, 0xf4c533d4f8f506df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1047b48b5abb689a # load x3 with value 0x1047b48b5abb689a
sw x3, 0(x2) # store 0x1047b48b5abb689a in memory
flh f16, 0(x2) # load 0x1047b48b5abb689a from memory into f16
fcvt.l.h x30, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x28, 0x4f11441760b18607 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8acfa7a0aba9c19f # load x3 with value 0x8acfa7a0aba9c19f
sw x3, 0(x2) # store 0x8acfa7a0aba9c19f in memory
flh f17, 0(x2) # load 0x8acfa7a0aba9c19f from memory into f17
fcvt.l.h x28, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x9, 0x1a8f06868b489654 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x38f1e38281f87261 # load x3 with value 0x38f1e38281f87261
sw x3, 0(x2) # store 0x38f1e38281f87261 in memory
flh f18, 0(x2) # load 0x38f1e38281f87261 from memory into f18
fcvt.l.h x9, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x13, 0xe55ffe344cc56d94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x492af023af5aca4a # load x3 with value 0x492af023af5aca4a
sw x3, 0(x2) # store 0x492af023af5aca4a in memory
flh f19, 0(x2) # load 0x492af023af5aca4a from memory into f19
fcvt.l.h x13, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x20, 0x27edb6ed69ee112c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe3125976e078697d # load x3 with value 0xe3125976e078697d
sw x3, 0(x2) # store 0xe3125976e078697d in memory
flh f20, 0(x2) # load 0xe3125976e078697d from memory into f20
fcvt.l.h x20, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x23, 0xb6163dd8c0c7c25b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe709818c5c060d99 # load x3 with value 0xe709818c5c060d99
sw x3, 0(x2) # store 0xe709818c5c060d99 in memory
flh f21, 0(x2) # load 0xe709818c5c060d99 from memory into f21
fcvt.l.h x23, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x3, 0xc9d69fbda2aa27c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x918b1fd6f855363 # load x3 with value 0x918b1fd6f855363
sw x3, 0(x2) # store 0x918b1fd6f855363 in memory
flh f22, 0(x2) # load 0x918b1fd6f855363 from memory into f22
fcvt.l.h x3, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x11, 0x08b52ff5b0b2477d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf93fdc62927f1002 # load x3 with value 0xf93fdc62927f1002
sw x3, 0(x2) # store 0xf93fdc62927f1002 in memory
flh f23, 0(x2) # load 0xf93fdc62927f1002 from memory into f23
fcvt.l.h x11, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x15, 0x419c4c7fc27bedd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc2c2efbf234a837d # load x3 with value 0xc2c2efbf234a837d
sw x3, 0(x2) # store 0xc2c2efbf234a837d in memory
flh f24, 0(x2) # load 0xc2c2efbf234a837d from memory into f24
fcvt.l.h x15, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x3, 0xe402e289ab089841 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x17f24e30903c587e # load x3 with value 0x17f24e30903c587e
sw x3, 0(x2) # store 0x17f24e30903c587e in memory
flh f25, 0(x2) # load 0x17f24e30903c587e from memory into f25
fcvt.l.h x3, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x15, 0xf3c1db32308116ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc3fd0a702ed2fd00 # load x3 with value 0xc3fd0a702ed2fd00
sw x3, 0(x2) # store 0xc3fd0a702ed2fd00 in memory
flh f26, 0(x2) # load 0xc3fd0a702ed2fd00 from memory into f26
fcvt.l.h x15, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x17, 0x5f0e7947d6105e74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb53131624302de94 # load x3 with value 0xb53131624302de94
sw x3, 0(x2) # store 0xb53131624302de94 in memory
flh f27, 0(x2) # load 0xb53131624302de94 from memory into f27
fcvt.l.h x17, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x15, 0x03da83a66501a948 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x737c06be5d2fb610 # load x3 with value 0x737c06be5d2fb610
sw x3, 0(x2) # store 0x737c06be5d2fb610 in memory
flh f28, 0(x2) # load 0x737c06be5d2fb610 from memory into f28
fcvt.l.h x15, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x4, 0x7559e457422210bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xce8d0dba547ee752 # load x3 with value 0xce8d0dba547ee752
sw x3, 0(x2) # store 0xce8d0dba547ee752 in memory
flh f29, 0(x2) # load 0xce8d0dba547ee752 from memory into f29
fcvt.l.h x4, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x28, 0x51601e3a4c52aa11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xeca75975fda91d4b # load x3 with value 0xeca75975fda91d4b
sw x3, 0(x2) # store 0xeca75975fda91d4b in memory
flh f30, 0(x2) # load 0xeca75975fda91d4b from memory into f30
fcvt.l.h x28, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x19, 0xa2704fd2ae0c6eed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb9f76df2abd4afdd # load x3 with value 0xb9f76df2abd4afdd
sw x3, 0(x2) # store 0xb9f76df2abd4afdd in memory
flh f31, 0(x2) # load 0xb9f76df2abd4afdd from memory into f31
fcvt.l.h x19, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
