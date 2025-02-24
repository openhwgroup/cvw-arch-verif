///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/ZfaD//WALLY-COV-fcvtmod.w.d.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.081866
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
li x0, 0x61958fc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa3fcc053 # load x3 with 32 MSBs 0x00000000a3fcc053
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a3fcc053
sw x3, 0(x2) # store x3 (0xa3fcc053) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000a3fcc053 from memory into f20
fcvtmod.w.d x0, f20, rtz # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xb85669e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xab6d3d20 # load x3 with 32 MSBs 0x00000000ab6d3d20
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ab6d3d20
sw x3, 0(x2) # store x3 (0xab6d3d20) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000ab6d3d20 from memory into f9
fcvtmod.w.d x1, f9, rtz # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xb052f232 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf62873d7 # load x3 with 32 MSBs 0x00000000f62873d7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f62873d7
sw x3, 0(x2) # store x3 (0xf62873d7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000f62873d7 from memory into f4
fcvtmod.w.d x2, f4, rtz # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x2e641bed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5c6c7bc9 # load x3 with 32 MSBs 0x000000005c6c7bc9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005c6c7bc9
sw x3, 0(x2) # store x3 (0x5c6c7bc9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000005c6c7bc9 from memory into f15
fcvtmod.w.d x3, f15, rtz # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xbdfdf807 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe668a7c8 # load x3 with 32 MSBs 0x00000000e668a7c8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e668a7c8
sw x3, 0(x2) # store x3 (0xe668a7c8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000e668a7c8 from memory into f13
fcvtmod.w.d x4, f13, rtz # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x5a89c7e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x119cd987 # load x3 with 32 MSBs 0x00000000119cd987
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000119cd987
sw x3, 0(x2) # store x3 (0x119cd987) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000119cd987 from memory into f24
fcvtmod.w.d x5, f24, rtz # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x76afa487 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xfc80fc53 # load x3 with 32 MSBs 0x00000000fc80fc53
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000fc80fc53
sw x3, 0(x2) # store x3 (0xfc80fc53) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000fc80fc53 from memory into f26
fcvtmod.w.d x6, f26, rtz # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x98014fc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd2848be8 # load x3 with 32 MSBs 0x00000000d2848be8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d2848be8
sw x3, 0(x2) # store x3 (0xd2848be8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000d2848be8 from memory into f7
fcvtmod.w.d x7, f7, rtz # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xe20bcb5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x77e365d2 # load x3 with 32 MSBs 0x0000000077e365d2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000077e365d2
sw x3, 0(x2) # store x3 (0x77e365d2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0000000077e365d2 from memory into f27
fcvtmod.w.d x8, f27, rtz # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x3d1da67b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb7685fc7 # load x3 with 32 MSBs 0x00000000b7685fc7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b7685fc7
sw x3, 0(x2) # store x3 (0xb7685fc7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000b7685fc7 from memory into f25
fcvtmod.w.d x9, f25, rtz # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xd00e3446 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xfb9a1a44 # load x3 with 32 MSBs 0x00000000fb9a1a44
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000fb9a1a44
sw x3, 0(x2) # store x3 (0xfb9a1a44) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000fb9a1a44 from memory into f26
fcvtmod.w.d x10, f26, rtz # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xf36dab9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x16d9027b # load x3 with 32 MSBs 0x0000000016d9027b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000016d9027b
sw x3, 0(x2) # store x3 (0x16d9027b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0000000016d9027b from memory into f27
fcvtmod.w.d x11, f27, rtz # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x10d7b657 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc806e3ac # load x3 with 32 MSBs 0x00000000c806e3ac
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c806e3ac
sw x3, 0(x2) # store x3 (0xc806e3ac) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000c806e3ac from memory into f20
fcvtmod.w.d x12, f20, rtz # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xc21d1086 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd231dd23 # load x3 with 32 MSBs 0x00000000d231dd23
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d231dd23
sw x3, 0(x2) # store x3 (0xd231dd23) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000d231dd23 from memory into f18
fcvtmod.w.d x13, f18, rtz # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xa7f3092d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x87e2041d # load x3 with 32 MSBs 0x0000000087e2041d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000087e2041d
sw x3, 0(x2) # store x3 (0x87e2041d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0000000087e2041d from memory into f24
fcvtmod.w.d x14, f24, rtz # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x821034e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8214921a # load x3 with 32 MSBs 0x000000008214921a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008214921a
sw x3, 0(x2) # store x3 (0x8214921a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000008214921a from memory into f14
fcvtmod.w.d x15, f14, rtz # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x8ad5f3c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x01ed79dd # load x3 with 32 MSBs 0x0000000001ed79dd
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000001ed79dd
sw x3, 0(x2) # store x3 (0x01ed79dd) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x0000000001ed79dd from memory into f4
fcvtmod.w.d x16, f4, rtz # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xd52e4962 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xea630dd3 # load x3 with 32 MSBs 0x00000000ea630dd3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ea630dd3
sw x3, 0(x2) # store x3 (0xea630dd3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000ea630dd3 from memory into f9
fcvtmod.w.d x17, f9, rtz # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x2c80fd1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb1cb8793 # load x3 with 32 MSBs 0x00000000b1cb8793
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b1cb8793
sw x3, 0(x2) # store x3 (0xb1cb8793) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000b1cb8793 from memory into f16
fcvtmod.w.d x18, f16, rtz # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x001a7a06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x12a82b80 # load x3 with 32 MSBs 0x0000000012a82b80
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000012a82b80
sw x3, 0(x2) # store x3 (0x12a82b80) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0000000012a82b80 from memory into f9
fcvtmod.w.d x19, f9, rtz # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xd3bc6c01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x664ff711 # load x3 with 32 MSBs 0x00000000664ff711
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000664ff711
sw x3, 0(x2) # store x3 (0x664ff711) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000664ff711 from memory into f1
fcvtmod.w.d x20, f1, rtz # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x3270ec77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe7e363a0 # load x3 with 32 MSBs 0x00000000e7e363a0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e7e363a0
sw x3, 0(x2) # store x3 (0xe7e363a0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000e7e363a0 from memory into f3
fcvtmod.w.d x21, f3, rtz # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x8e3f6c6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x67d26eda # load x3 with 32 MSBs 0x0000000067d26eda
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000067d26eda
sw x3, 0(x2) # store x3 (0x67d26eda) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000067d26eda from memory into f15
fcvtmod.w.d x22, f15, rtz # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x6f32e145 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xfa4abb01 # load x3 with 32 MSBs 0x00000000fa4abb01
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000fa4abb01
sw x3, 0(x2) # store x3 (0xfa4abb01) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000fa4abb01 from memory into f31
fcvtmod.w.d x23, f31, rtz # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x883f0aa5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xcd919d8a # load x3 with 32 MSBs 0x00000000cd919d8a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000cd919d8a
sw x3, 0(x2) # store x3 (0xcd919d8a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000cd919d8a from memory into f29
fcvtmod.w.d x24, f29, rtz # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xee2b25da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb1881d24 # load x3 with 32 MSBs 0x00000000b1881d24
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b1881d24
sw x3, 0(x2) # store x3 (0xb1881d24) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000b1881d24 from memory into f8
fcvtmod.w.d x25, f8, rtz # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x9bae2f55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf6d85724 # load x3 with 32 MSBs 0x00000000f6d85724
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f6d85724
sw x3, 0(x2) # store x3 (0xf6d85724) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000f6d85724 from memory into f2
fcvtmod.w.d x26, f2, rtz # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xa2acdea6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x43188060 # load x3 with 32 MSBs 0x0000000043188060
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000043188060
sw x3, 0(x2) # store x3 (0x43188060) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000043188060 from memory into f6
fcvtmod.w.d x27, f6, rtz # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x9a5244db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8c9cd64d # load x3 with 32 MSBs 0x000000008c9cd64d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008c9cd64d
sw x3, 0(x2) # store x3 (0x8c9cd64d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x000000008c9cd64d from memory into f10
fcvtmod.w.d x28, f10, rtz # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xec89651f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa5518a22 # load x3 with 32 MSBs 0x00000000a5518a22
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a5518a22
sw x3, 0(x2) # store x3 (0xa5518a22) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000a5518a22 from memory into f28
fcvtmod.w.d x29, f28, rtz # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x42f9dc19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8e04546e # load x3 with 32 MSBs 0x000000008e04546e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008e04546e
sw x3, 0(x2) # store x3 (0x8e04546e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000008e04546e from memory into f23
fcvtmod.w.d x30, f23, rtz # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xf37ae084 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf3068c7f # load x3 with 32 MSBs 0x00000000f3068c7f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f3068c7f
sw x3, 0(x2) # store x3 (0xf3068c7f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000f3068c7f from memory into f18
fcvtmod.w.d x31, f18, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x20, 0x057b24e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000000000000 from memory into f19
fcvtmod.w.d x20, f19, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
li x27, 0x2ae7f4c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x8000000000000000 from memory into f24
fcvtmod.w.d x27, f24, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
li x19, 0x423be7aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x3ff0000000000000 from memory into f3
fcvtmod.w.d x19, f3, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
li x3, 0xae21744d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xbff0000000000000 from memory into f17
fcvtmod.w.d x3, f17, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
li x27, 0x7781a36e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x3ff8000000000000 from memory into f13
fcvtmod.w.d x27, f13, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
li x28, 0xfcd0ba7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xbff8000000000000 from memory into f12
fcvtmod.w.d x28, f12, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
li x30, 0xb4af4eba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x4000000000000000 from memory into f19
fcvtmod.w.d x30, f19, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
li x17, 0x5d267fb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xc000000000000000 from memory into f21
fcvtmod.w.d x17, f21, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
li x8, 0x3ef97f72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0010000000000000 from memory into f23
fcvtmod.w.d x8, f23, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
li x11, 0x374e5c1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x8010000000000000 from memory into f10
fcvtmod.w.d x11, f10, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
li x10, 0x610a7cec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x7fefffffffffffff from memory into f1
fcvtmod.w.d x10, f1, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
li x19, 0xff8c6bed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xffefffffffffffff from memory into f27
fcvtmod.w.d x19, f27, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
li x26, 0x2f7967c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000fffffffffffff from memory into f8
fcvtmod.w.d x26, f8, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
li x13, 0xa4b30158 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x800fffffffffffff from memory into f31
fcvtmod.w.d x13, f31, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
li x21, 0xb61c67ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0008000000000000 from memory into f19
fcvtmod.w.d x21, f19, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
li x3, 0xc903d668 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x8008000000000000 from memory into f27
fcvtmod.w.d x3, f27, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x11, 0xe3e415b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000000000001 from memory into f1
fcvtmod.w.d x11, f1, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
li x3, 0x42016088 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x8000000000000001 from memory into f2
fcvtmod.w.d x3, f2, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
li x13, 0x1a4733b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x7ff0000000000000 from memory into f14
fcvtmod.w.d x13, f14, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
li x27, 0x29413929 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xfff0000000000000 from memory into f29
fcvtmod.w.d x27, f29, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
li x29, 0x6748948d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x7ff8000000000000 from memory into f22
fcvtmod.w.d x29, f22, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
li x16, 0xe1d23853 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7fffffffffffffff from memory into f9
fcvtmod.w.d x16, f9, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
li x20, 0x9c505e39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7ff0000000000001 from memory into f10
fcvtmod.w.d x20, f10, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
li x1, 0x31276608 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x7ff7ffffffffffff from memory into f3
fcvtmod.w.d x1, f3, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
li x16, 0x0de1bd78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x5a392534a57711ad from memory into f19
fcvtmod.w.d x16, f19, rtz # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
li x10, 0x25351cb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xa6e895993737426c from memory into f30
fcvtmod.w.d x10, f30, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x28, 0x370c451b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7bb63875 # load x3 with 32 MSBs 0x000000007bb63875
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007bb63875
sw x3, 0(x2) # store x3 (0x7bb63875) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x000000007bb63875 from memory into f0
fcvtmod.w.d x28, f0, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x29, 0x850f1c59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9f3b4465 # load x3 with 32 MSBs 0x000000009f3b4465
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009f3b4465
sw x3, 0(x2) # store x3 (0x9f3b4465) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000009f3b4465 from memory into f1
fcvtmod.w.d x29, f1, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x12, 0xeb94cfb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x28438936 # load x3 with 32 MSBs 0x0000000028438936
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000028438936
sw x3, 0(x2) # store x3 (0x28438936) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0000000028438936 from memory into f2
fcvtmod.w.d x12, f2, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x28, 0xcbbc4e0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2e1c23a1 # load x3 with 32 MSBs 0x000000002e1c23a1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002e1c23a1
sw x3, 0(x2) # store x3 (0x2e1c23a1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000002e1c23a1 from memory into f3
fcvtmod.w.d x28, f3, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x5, 0xeb9b0bdf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb2a3aa23 # load x3 with 32 MSBs 0x00000000b2a3aa23
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b2a3aa23
sw x3, 0(x2) # store x3 (0xb2a3aa23) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000b2a3aa23 from memory into f4
fcvtmod.w.d x5, f4, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x9, 0xa78635f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8077a0bd # load x3 with 32 MSBs 0x000000008077a0bd
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008077a0bd
sw x3, 0(x2) # store x3 (0x8077a0bd) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000008077a0bd from memory into f5
fcvtmod.w.d x9, f5, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x17, 0xa89cc3d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7722c07f # load x3 with 32 MSBs 0x000000007722c07f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007722c07f
sw x3, 0(x2) # store x3 (0x7722c07f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000007722c07f from memory into f6
fcvtmod.w.d x17, f6, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x18, 0x15f0e49a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x41a21b3e # load x3 with 32 MSBs 0x0000000041a21b3e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000041a21b3e
sw x3, 0(x2) # store x3 (0x41a21b3e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000041a21b3e from memory into f7
fcvtmod.w.d x18, f7, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x4, 0x1dfb229b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4fccd44b # load x3 with 32 MSBs 0x000000004fccd44b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004fccd44b
sw x3, 0(x2) # store x3 (0x4fccd44b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000004fccd44b from memory into f8
fcvtmod.w.d x4, f8, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x3, 0x98d9988c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd45d4327 # load x3 with 32 MSBs 0x00000000d45d4327
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d45d4327
sw x3, 0(x2) # store x3 (0xd45d4327) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000d45d4327 from memory into f9
fcvtmod.w.d x3, f9, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x31, 0x7475251f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb2ca0b1f # load x3 with 32 MSBs 0x00000000b2ca0b1f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b2ca0b1f
sw x3, 0(x2) # store x3 (0xb2ca0b1f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000b2ca0b1f from memory into f10
fcvtmod.w.d x31, f10, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x4, 0x3accfced # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x72d17dfa # load x3 with 32 MSBs 0x0000000072d17dfa
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000072d17dfa
sw x3, 0(x2) # store x3 (0x72d17dfa) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000072d17dfa from memory into f11
fcvtmod.w.d x4, f11, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x3, 0xc94ce054 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x052cfc0a # load x3 with 32 MSBs 0x00000000052cfc0a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000052cfc0a
sw x3, 0(x2) # store x3 (0x052cfc0a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000052cfc0a from memory into f12
fcvtmod.w.d x3, f12, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x31, 0x880089fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xdd8f7d65 # load x3 with 32 MSBs 0x00000000dd8f7d65
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000dd8f7d65
sw x3, 0(x2) # store x3 (0xdd8f7d65) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000dd8f7d65 from memory into f13
fcvtmod.w.d x31, f13, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x18, 0xf065ccd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3e73f6d0 # load x3 with 32 MSBs 0x000000003e73f6d0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003e73f6d0
sw x3, 0(x2) # store x3 (0x3e73f6d0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000003e73f6d0 from memory into f14
fcvtmod.w.d x18, f14, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x2, 0x04ccf88d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8ea807b5 # load x3 with 32 MSBs 0x000000008ea807b5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008ea807b5
sw x3, 0(x2) # store x3 (0x8ea807b5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000008ea807b5 from memory into f15
fcvtmod.w.d x2, f15, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x25, 0xe6ce6315 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x26ba3b90 # load x3 with 32 MSBs 0x0000000026ba3b90
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000026ba3b90
sw x3, 0(x2) # store x3 (0x26ba3b90) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000026ba3b90 from memory into f16
fcvtmod.w.d x25, f16, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x24, 0x55a28d96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6dbd0bbb # load x3 with 32 MSBs 0x000000006dbd0bbb
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006dbd0bbb
sw x3, 0(x2) # store x3 (0x6dbd0bbb) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000006dbd0bbb from memory into f17
fcvtmod.w.d x24, f17, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x29, 0xb9dbfbad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd12c6e84 # load x3 with 32 MSBs 0x00000000d12c6e84
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d12c6e84
sw x3, 0(x2) # store x3 (0xd12c6e84) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000d12c6e84 from memory into f18
fcvtmod.w.d x29, f18, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x7, 0x8fc8ad1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x304b8c00 # load x3 with 32 MSBs 0x00000000304b8c00
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000304b8c00
sw x3, 0(x2) # store x3 (0x304b8c00) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000304b8c00 from memory into f19
fcvtmod.w.d x7, f19, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x28, 0x6d722d9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8f549082 # load x3 with 32 MSBs 0x000000008f549082
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008f549082
sw x3, 0(x2) # store x3 (0x8f549082) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000008f549082 from memory into f20
fcvtmod.w.d x28, f20, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x4, 0x8d6e4a55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd3dc002e # load x3 with 32 MSBs 0x00000000d3dc002e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d3dc002e
sw x3, 0(x2) # store x3 (0xd3dc002e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000d3dc002e from memory into f21
fcvtmod.w.d x4, f21, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x28, 0x5dd11888 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf15a2878 # load x3 with 32 MSBs 0x00000000f15a2878
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f15a2878
sw x3, 0(x2) # store x3 (0xf15a2878) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000f15a2878 from memory into f22
fcvtmod.w.d x28, f22, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x31, 0x8213d0d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe81f377b # load x3 with 32 MSBs 0x00000000e81f377b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e81f377b
sw x3, 0(x2) # store x3 (0xe81f377b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000e81f377b from memory into f23
fcvtmod.w.d x31, f23, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x27, 0xb8481199 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x54866f68 # load x3 with 32 MSBs 0x0000000054866f68
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000054866f68
sw x3, 0(x2) # store x3 (0x54866f68) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0000000054866f68 from memory into f24
fcvtmod.w.d x27, f24, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x30, 0x3a6c8f0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3d9affd8 # load x3 with 32 MSBs 0x000000003d9affd8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003d9affd8
sw x3, 0(x2) # store x3 (0x3d9affd8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000003d9affd8 from memory into f25
fcvtmod.w.d x30, f25, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x1, 0x8cf2d190 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xae4b8435 # load x3 with 32 MSBs 0x00000000ae4b8435
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ae4b8435
sw x3, 0(x2) # store x3 (0xae4b8435) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000ae4b8435 from memory into f26
fcvtmod.w.d x1, f26, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x26, 0x7c70991d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc04e8563 # load x3 with 32 MSBs 0x00000000c04e8563
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c04e8563
sw x3, 0(x2) # store x3 (0xc04e8563) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000c04e8563 from memory into f27
fcvtmod.w.d x26, f27, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x24, 0x3e7c3c5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xac72d6a7 # load x3 with 32 MSBs 0x00000000ac72d6a7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ac72d6a7
sw x3, 0(x2) # store x3 (0xac72d6a7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000ac72d6a7 from memory into f28
fcvtmod.w.d x24, f28, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x22, 0xaa125586 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0bcfb6ef # load x3 with 32 MSBs 0x000000000bcfb6ef
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000bcfb6ef
sw x3, 0(x2) # store x3 (0x0bcfb6ef) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000000bcfb6ef from memory into f29
fcvtmod.w.d x22, f29, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x18, 0xe2561f4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x267cfdcd # load x3 with 32 MSBs 0x00000000267cfdcd
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000267cfdcd
sw x3, 0(x2) # store x3 (0x267cfdcd) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000267cfdcd from memory into f30
fcvtmod.w.d x18, f30, rtz # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x22, 0x2c9936a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9c38b77d # load x3 with 32 MSBs 0x000000009c38b77d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009c38b77d
sw x3, 0(x2) # store x3 (0x9c38b77d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000009c38b77d from memory into f31
fcvtmod.w.d x22, f31, rtz # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
