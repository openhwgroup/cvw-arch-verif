///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/D//WALLY-COV-fcvt.w.d.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.853028
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
li x0, 0x5fb5f2af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa9f966e1 # load x3 with 32 MSBs 0x00000000a9f966e1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a9f966e1
sw x3, 0(x2) # store x3 (0xa9f966e1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000a9f966e1 from memory into f3
fcvt.w.d x0, f3 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xce8458ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb501f4df # load x3 with 32 MSBs 0x00000000b501f4df
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b501f4df
sw x3, 0(x2) # store x3 (0xb501f4df) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000b501f4df from memory into f31
fcvt.w.d x1, f31 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x66702bd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xdc99815d # load x3 with 32 MSBs 0x00000000dc99815d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000dc99815d
sw x3, 0(x2) # store x3 (0xdc99815d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000dc99815d from memory into f17
fcvt.w.d x2, f17 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xf2c83ea5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd9221189 # load x3 with 32 MSBs 0x00000000d9221189
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d9221189
sw x3, 0(x2) # store x3 (0xd9221189) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000d9221189 from memory into f3
fcvt.w.d x3, f3 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x3ecf9236 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9cb2b257 # load x3 with 32 MSBs 0x000000009cb2b257
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009cb2b257
sw x3, 0(x2) # store x3 (0x9cb2b257) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000009cb2b257 from memory into f9
fcvt.w.d x4, f9 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x9a5eb69e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x66f8fe22 # load x3 with 32 MSBs 0x0000000066f8fe22
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000066f8fe22
sw x3, 0(x2) # store x3 (0x66f8fe22) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000066f8fe22 from memory into f31
fcvt.w.d x5, f31 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xb8651175 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa5bf7eae # load x3 with 32 MSBs 0x00000000a5bf7eae
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a5bf7eae
sw x3, 0(x2) # store x3 (0xa5bf7eae) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000a5bf7eae from memory into f24
fcvt.w.d x6, f24 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x4fe2af7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe248b40a # load x3 with 32 MSBs 0x00000000e248b40a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e248b40a
sw x3, 0(x2) # store x3 (0xe248b40a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000e248b40a from memory into f9
fcvt.w.d x7, f9 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xc99b8d0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5200ec8f # load x3 with 32 MSBs 0x000000005200ec8f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005200ec8f
sw x3, 0(x2) # store x3 (0x5200ec8f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000005200ec8f from memory into f9
fcvt.w.d x8, f9 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xfe12ad6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3b0f4c38 # load x3 with 32 MSBs 0x000000003b0f4c38
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003b0f4c38
sw x3, 0(x2) # store x3 (0x3b0f4c38) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000003b0f4c38 from memory into f30
fcvt.w.d x9, f30 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x13654dbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x643dbb3d # load x3 with 32 MSBs 0x00000000643dbb3d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000643dbb3d
sw x3, 0(x2) # store x3 (0x643dbb3d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000643dbb3d from memory into f11
fcvt.w.d x10, f11 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x71db42f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe2930110 # load x3 with 32 MSBs 0x00000000e2930110
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e2930110
sw x3, 0(x2) # store x3 (0xe2930110) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000e2930110 from memory into f6
fcvt.w.d x11, f6 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x31644a00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7c8ce2ce # load x3 with 32 MSBs 0x000000007c8ce2ce
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007c8ce2ce
sw x3, 0(x2) # store x3 (0x7c8ce2ce) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000007c8ce2ce from memory into f9
fcvt.w.d x12, f9 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x95d14746 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4bc4ef07 # load x3 with 32 MSBs 0x000000004bc4ef07
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004bc4ef07
sw x3, 0(x2) # store x3 (0x4bc4ef07) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000004bc4ef07 from memory into f8
fcvt.w.d x13, f8 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x43b57d93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8bed2d68 # load x3 with 32 MSBs 0x000000008bed2d68
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008bed2d68
sw x3, 0(x2) # store x3 (0x8bed2d68) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000008bed2d68 from memory into f9
fcvt.w.d x14, f9 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x93ea0bea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8842e86c # load x3 with 32 MSBs 0x000000008842e86c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008842e86c
sw x3, 0(x2) # store x3 (0x8842e86c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000008842e86c from memory into f1
fcvt.w.d x15, f1 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x9125686e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf0ca5f7f # load x3 with 32 MSBs 0x00000000f0ca5f7f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f0ca5f7f
sw x3, 0(x2) # store x3 (0xf0ca5f7f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000f0ca5f7f from memory into f26
fcvt.w.d x16, f26 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xedd73a01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xef399fa9 # load x3 with 32 MSBs 0x00000000ef399fa9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ef399fa9
sw x3, 0(x2) # store x3 (0xef399fa9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000ef399fa9 from memory into f11
fcvt.w.d x17, f11 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x9ca5fbf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0e329a1d # load x3 with 32 MSBs 0x000000000e329a1d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000e329a1d
sw x3, 0(x2) # store x3 (0x0e329a1d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000000e329a1d from memory into f8
fcvt.w.d x18, f8 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x1cba9cca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0c009299 # load x3 with 32 MSBs 0x000000000c009299
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000c009299
sw x3, 0(x2) # store x3 (0x0c009299) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000000c009299 from memory into f18
fcvt.w.d x19, f18 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x726c25e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xee637038 # load x3 with 32 MSBs 0x00000000ee637038
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ee637038
sw x3, 0(x2) # store x3 (0xee637038) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000ee637038 from memory into f9
fcvt.w.d x20, f9 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x5097b7d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2f4bcae6 # load x3 with 32 MSBs 0x000000002f4bcae6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002f4bcae6
sw x3, 0(x2) # store x3 (0x2f4bcae6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000002f4bcae6 from memory into f23
fcvt.w.d x21, f23 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x93868486 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x060b4445 # load x3 with 32 MSBs 0x00000000060b4445
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000060b4445
sw x3, 0(x2) # store x3 (0x060b4445) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000060b4445 from memory into f27
fcvt.w.d x22, f27 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x2ba7a094 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe9dc33b5 # load x3 with 32 MSBs 0x00000000e9dc33b5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e9dc33b5
sw x3, 0(x2) # store x3 (0xe9dc33b5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000e9dc33b5 from memory into f13
fcvt.w.d x23, f13 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xc340703b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa8cd624a # load x3 with 32 MSBs 0x00000000a8cd624a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a8cd624a
sw x3, 0(x2) # store x3 (0xa8cd624a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000a8cd624a from memory into f18
fcvt.w.d x24, f18 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xbfb1b6df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4a773933 # load x3 with 32 MSBs 0x000000004a773933
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004a773933
sw x3, 0(x2) # store x3 (0x4a773933) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000004a773933 from memory into f16
fcvt.w.d x25, f16 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x94304292 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x99d94447 # load x3 with 32 MSBs 0x0000000099d94447
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000099d94447
sw x3, 0(x2) # store x3 (0x99d94447) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000099d94447 from memory into f1
fcvt.w.d x26, f1 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x055cb88e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5f01efd9 # load x3 with 32 MSBs 0x000000005f01efd9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005f01efd9
sw x3, 0(x2) # store x3 (0x5f01efd9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000005f01efd9 from memory into f14
fcvt.w.d x27, f14 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x15d02ab4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x98616580 # load x3 with 32 MSBs 0x0000000098616580
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000098616580
sw x3, 0(x2) # store x3 (0x98616580) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0000000098616580 from memory into f27
fcvt.w.d x28, f27 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xd2c61a2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc5653bea # load x3 with 32 MSBs 0x00000000c5653bea
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c5653bea
sw x3, 0(x2) # store x3 (0xc5653bea) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000c5653bea from memory into f1
fcvt.w.d x29, f1 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x0b942c38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x39355d51 # load x3 with 32 MSBs 0x0000000039355d51
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000039355d51
sw x3, 0(x2) # store x3 (0x39355d51) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0000000039355d51 from memory into f14
fcvt.w.d x30, f14 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x457d8543 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x64232b2b # load x3 with 32 MSBs 0x0000000064232b2b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000064232b2b
sw x3, 0(x2) # store x3 (0x64232b2b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000064232b2b from memory into f11
fcvt.w.d x31, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x31, 0x0bfd41cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0000000000000000 from memory into f24
fcvt.w.d x31, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
li x8, 0xf2332963 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x8000000000000000 from memory into f10
fcvt.w.d x8, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
li x10, 0xf945353c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x3ff0000000000000 from memory into f28
fcvt.w.d x10, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
li x4, 0xfef79de7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xbff0000000000000 from memory into f7
fcvt.w.d x4, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
li x16, 0xd6311f68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x3ff8000000000000 from memory into f10
fcvt.w.d x16, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
li x18, 0x48e3e098 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xbff8000000000000 from memory into f23
fcvt.w.d x18, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
li x27, 0x8733ddc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x4000000000000000 from memory into f28
fcvt.w.d x27, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
li x20, 0xe98f9243 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xc000000000000000 from memory into f8
fcvt.w.d x20, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
li x14, 0x9c3b2af9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0010000000000000 from memory into f20
fcvt.w.d x14, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
li x22, 0xe8d1fc68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x8010000000000000 from memory into f26
fcvt.w.d x22, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
li x28, 0x9396b5db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x7fefffffffffffff from memory into f7
fcvt.w.d x28, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
li x2, 0x09293074 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xffefffffffffffff from memory into f18
fcvt.w.d x2, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
li x6, 0xa1a4e051 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000fffffffffffff from memory into f26
fcvt.w.d x6, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
li x9, 0x10f01e48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x800fffffffffffff from memory into f19
fcvt.w.d x9, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
li x31, 0xb3081517 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0008000000000000 from memory into f12
fcvt.w.d x31, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
li x25, 0x1a746338 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x8008000000000000 from memory into f27
fcvt.w.d x25, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x29, 0x7efedc77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0000000000000001 from memory into f24
fcvt.w.d x29, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
li x29, 0x0549bafc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x8000000000000001 from memory into f17
fcvt.w.d x29, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
li x14, 0x0f223f6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x7ff0000000000000 from memory into f23
fcvt.w.d x14, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
li x29, 0xf7e5570a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xfff0000000000000 from memory into f27
fcvt.w.d x29, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
li x25, 0x84aa593a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7ff8000000000000 from memory into f9
fcvt.w.d x25, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
li x10, 0x2039fff4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7fffffffffffffff from memory into f29
fcvt.w.d x10, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
li x19, 0x71d7228c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x7ff0000000000001 from memory into f3
fcvt.w.d x19, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
li x20, 0xe847a96b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7ff7ffffffffffff from memory into f2
fcvt.w.d x20, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
li x19, 0x0da085d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x5a392534a57711ad from memory into f26
fcvt.w.d x19, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
li x13, 0x31a95ca2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xa6e895993737426c from memory into f9
fcvt.w.d x13, f9 # perform operation

# Testcase cp_frm
li x18, 0x89d14106 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8d6d896c # load x3 with 32 MSBs 0x000000008d6d896c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008d6d896c
sw x3, 0(x2) # store x3 (0x8d6d896c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x000000008d6d896c from memory into f4
fcvt.w.d x18, f4, dyn # perform operation
fcvt.w.d x18, f4, rdn # perform operation
fcvt.w.d x18, f4, rmm # perform operation
fcvt.w.d x18, f4, rne # perform operation
fcvt.w.d x18, f4, rtz # perform operation
fcvt.w.d x18, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.w.d x18, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.w.d x18, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.w.d x18, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.w.d x18, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.w.d x18, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x18, 0x10dc562e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf582df40 # load x3 with 32 MSBs 0x00000000f582df40
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f582df40
sw x3, 0(x2) # store x3 (0xf582df40) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x00000000f582df40 from memory into f0
fcvt.w.d x18, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x14, 0x64e5632e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x828c1494 # load x3 with 32 MSBs 0x00000000828c1494
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000828c1494
sw x3, 0(x2) # store x3 (0x828c1494) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000828c1494 from memory into f1
fcvt.w.d x14, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x27, 0x06d2c115 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x27510256 # load x3 with 32 MSBs 0x0000000027510256
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000027510256
sw x3, 0(x2) # store x3 (0x27510256) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0000000027510256 from memory into f2
fcvt.w.d x27, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x9, 0xf44949e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xea470859 # load x3 with 32 MSBs 0x00000000ea470859
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ea470859
sw x3, 0(x2) # store x3 (0xea470859) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000ea470859 from memory into f3
fcvt.w.d x9, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x15, 0x13d4201e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe3c18cac # load x3 with 32 MSBs 0x00000000e3c18cac
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e3c18cac
sw x3, 0(x2) # store x3 (0xe3c18cac) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000e3c18cac from memory into f4
fcvt.w.d x15, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x12, 0xa55c5190 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x996c7db9 # load x3 with 32 MSBs 0x00000000996c7db9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000996c7db9
sw x3, 0(x2) # store x3 (0x996c7db9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000996c7db9 from memory into f5
fcvt.w.d x12, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x1, 0x95e2fac1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xdb6fa82f # load x3 with 32 MSBs 0x00000000db6fa82f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000db6fa82f
sw x3, 0(x2) # store x3 (0xdb6fa82f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000db6fa82f from memory into f6
fcvt.w.d x1, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x3, 0x0c176b23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x070c378d # load x3 with 32 MSBs 0x00000000070c378d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000070c378d
sw x3, 0(x2) # store x3 (0x070c378d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000070c378d from memory into f7
fcvt.w.d x3, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x18, 0x063ad87c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe431ba7c # load x3 with 32 MSBs 0x00000000e431ba7c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e431ba7c
sw x3, 0(x2) # store x3 (0xe431ba7c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000e431ba7c from memory into f8
fcvt.w.d x18, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x18, 0x11a4f239 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbfc689f0 # load x3 with 32 MSBs 0x00000000bfc689f0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000bfc689f0
sw x3, 0(x2) # store x3 (0xbfc689f0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000bfc689f0 from memory into f9
fcvt.w.d x18, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x23, 0x33b1c4a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8c962434 # load x3 with 32 MSBs 0x000000008c962434
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008c962434
sw x3, 0(x2) # store x3 (0x8c962434) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x000000008c962434 from memory into f10
fcvt.w.d x23, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x23, 0x65a75b57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1c1352a1 # load x3 with 32 MSBs 0x000000001c1352a1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001c1352a1
sw x3, 0(x2) # store x3 (0x1c1352a1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000001c1352a1 from memory into f11
fcvt.w.d x23, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x19, 0x6fc513f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x205c098c # load x3 with 32 MSBs 0x00000000205c098c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000205c098c
sw x3, 0(x2) # store x3 (0x205c098c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000205c098c from memory into f12
fcvt.w.d x19, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x3, 0xa9ce589d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa8260b5b # load x3 with 32 MSBs 0x00000000a8260b5b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a8260b5b
sw x3, 0(x2) # store x3 (0xa8260b5b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000a8260b5b from memory into f13
fcvt.w.d x3, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x6, 0xcadf6fbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x23e81884 # load x3 with 32 MSBs 0x0000000023e81884
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000023e81884
sw x3, 0(x2) # store x3 (0x23e81884) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0000000023e81884 from memory into f14
fcvt.w.d x6, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x6, 0x8c07834c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x208c8bcb # load x3 with 32 MSBs 0x00000000208c8bcb
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000208c8bcb
sw x3, 0(x2) # store x3 (0x208c8bcb) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000208c8bcb from memory into f15
fcvt.w.d x6, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x23, 0xcccd2c2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe04b721b # load x3 with 32 MSBs 0x00000000e04b721b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e04b721b
sw x3, 0(x2) # store x3 (0xe04b721b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000e04b721b from memory into f16
fcvt.w.d x23, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x26, 0x9000388a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf87ed95b # load x3 with 32 MSBs 0x00000000f87ed95b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f87ed95b
sw x3, 0(x2) # store x3 (0xf87ed95b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000f87ed95b from memory into f17
fcvt.w.d x26, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x21, 0xe188e668 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x328c7153 # load x3 with 32 MSBs 0x00000000328c7153
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000328c7153
sw x3, 0(x2) # store x3 (0x328c7153) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000328c7153 from memory into f18
fcvt.w.d x21, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x16, 0x770d66b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2b4eab39 # load x3 with 32 MSBs 0x000000002b4eab39
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002b4eab39
sw x3, 0(x2) # store x3 (0x2b4eab39) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000002b4eab39 from memory into f19
fcvt.w.d x16, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x23, 0x38e7e6c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xaf927a30 # load x3 with 32 MSBs 0x00000000af927a30
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000af927a30
sw x3, 0(x2) # store x3 (0xaf927a30) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000af927a30 from memory into f20
fcvt.w.d x23, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x8, 0x0d6a5848 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1d2be95a # load x3 with 32 MSBs 0x000000001d2be95a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001d2be95a
sw x3, 0(x2) # store x3 (0x1d2be95a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000001d2be95a from memory into f21
fcvt.w.d x8, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x16, 0x0c94380e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe1993843 # load x3 with 32 MSBs 0x00000000e1993843
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e1993843
sw x3, 0(x2) # store x3 (0xe1993843) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000e1993843 from memory into f22
fcvt.w.d x16, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x26, 0x5298ad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x91ee7c58 # load x3 with 32 MSBs 0x0000000091ee7c58
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000091ee7c58
sw x3, 0(x2) # store x3 (0x91ee7c58) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000091ee7c58 from memory into f23
fcvt.w.d x26, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x7, 0xce3a1ec4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb46c22ef # load x3 with 32 MSBs 0x00000000b46c22ef
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b46c22ef
sw x3, 0(x2) # store x3 (0xb46c22ef) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000b46c22ef from memory into f24
fcvt.w.d x7, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x6, 0xb801bdb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x515eac52 # load x3 with 32 MSBs 0x00000000515eac52
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000515eac52
sw x3, 0(x2) # store x3 (0x515eac52) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000515eac52 from memory into f25
fcvt.w.d x6, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x14, 0x7fe4acbb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb18aca1a # load x3 with 32 MSBs 0x00000000b18aca1a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b18aca1a
sw x3, 0(x2) # store x3 (0xb18aca1a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000b18aca1a from memory into f26
fcvt.w.d x14, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x9, 0x49923239 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb8a7ecce # load x3 with 32 MSBs 0x00000000b8a7ecce
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b8a7ecce
sw x3, 0(x2) # store x3 (0xb8a7ecce) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000b8a7ecce from memory into f27
fcvt.w.d x9, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x7, 0x20ca30c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6c1947a6 # load x3 with 32 MSBs 0x000000006c1947a6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006c1947a6
sw x3, 0(x2) # store x3 (0x6c1947a6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000006c1947a6 from memory into f28
fcvt.w.d x7, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x25, 0x1ffbd9e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb9b46ab6 # load x3 with 32 MSBs 0x00000000b9b46ab6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b9b46ab6
sw x3, 0(x2) # store x3 (0xb9b46ab6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000b9b46ab6 from memory into f29
fcvt.w.d x25, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x19, 0x301e14cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4999ec71 # load x3 with 32 MSBs 0x000000004999ec71
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004999ec71
sw x3, 0(x2) # store x3 (0x4999ec71) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000004999ec71 from memory into f30
fcvt.w.d x19, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x24, 0x9741edec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x64cf3a83 # load x3 with 32 MSBs 0x0000000064cf3a83
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000064cf3a83
sw x3, 0(x2) # store x3 (0x64cf3a83) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000064cf3a83 from memory into f31
fcvt.w.d x24, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
