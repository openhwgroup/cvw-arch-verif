///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zfh//WALLY-COV-fsh.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.277680
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
li x31, 0x03633e5d5caaf936 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xd36dd7e293aee4d6 # load x3 with value 0xd36dd7e293aee4d6
sw x3, 0(x2) # store 0xd36dd7e293aee4d6 in memory
flh f16, 0(x2) # load 0xd36dd7e293aee4d6 from memory into f16
la x1, scratch # base address
addi x1, x1, 1695 # sub immediate from rs1 to counter offset
fsh f16, -1695(x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x27, 0xec8c22ad4a4bc770 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x972233b886e24bca # load x3 with value 0x972233b886e24bca
sw x3, 0(x2) # store 0x972233b886e24bca in memory
flh f23, 0(x2) # load 0x972233b886e24bca from memory into f23
la x2, scratch # base address
addi x2, x2, 1185 # sub immediate from rs1 to counter offset
fsh f23, -1185(x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x26, 0x75755f3d3ebe4bbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x379a3a1f8407f978 # load x3 with value 0x379a3a1f8407f978
sw x3, 0(x2) # store 0x379a3a1f8407f978 in memory
flh f28, 0(x2) # load 0x379a3a1f8407f978 from memory into f28
la x3, scratch # base address
addi x3, x3, -1423 # sub immediate from rs1 to counter offset
fsh f28, 1423(x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x28, 0xfb3f594c838799e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x81d1c6644b211ad3 # load x3 with value 0x81d1c6644b211ad3
sw x3, 0(x2) # store 0x81d1c6644b211ad3 in memory
flh f2, 0(x2) # load 0x81d1c6644b211ad3 from memory into f2
la x4, scratch # base address
addi x4, x4, -1223 # sub immediate from rs1 to counter offset
fsh f2, 1223(x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x11, 0x7e0d5e419ec49669 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x542d0b56a5a26b86 # load x3 with value 0x542d0b56a5a26b86
sw x3, 0(x2) # store 0x542d0b56a5a26b86 in memory
flh f27, 0(x2) # load 0x542d0b56a5a26b86 from memory into f27
la x5, scratch # base address
addi x5, x5, 1936 # sub immediate from rs1 to counter offset
fsh f27, -1936(x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x28, 0xb106212379da7551 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xbeeb1a2d671794ae # load x3 with value 0xbeeb1a2d671794ae
sw x3, 0(x2) # store 0xbeeb1a2d671794ae in memory
flh f9, 0(x2) # load 0xbeeb1a2d671794ae from memory into f9
la x6, scratch # base address
addi x6, x6, -1458 # sub immediate from rs1 to counter offset
fsh f9, 1458(x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x28, 0x45720323d50cb63d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x21bb0863d2c106c0 # load x3 with value 0x21bb0863d2c106c0
sw x3, 0(x2) # store 0x21bb0863d2c106c0 in memory
flh f15, 0(x2) # load 0x21bb0863d2c106c0 from memory into f15
la x7, scratch # base address
addi x7, x7, -113 # sub immediate from rs1 to counter offset
fsh f15, 113(x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x1, 0xe303f7f71924f825 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x47058ede50c2ef09 # load x3 with value 0x47058ede50c2ef09
sw x3, 0(x2) # store 0x47058ede50c2ef09 in memory
flh f29, 0(x2) # load 0x47058ede50c2ef09 from memory into f29
la x8, scratch # base address
addi x8, x8, -570 # sub immediate from rs1 to counter offset
fsh f29, 570(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x30, 0x5f33b9942273ced7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x48a818b0383cc15c # load x3 with value 0x48a818b0383cc15c
sw x3, 0(x2) # store 0x48a818b0383cc15c in memory
flh f22, 0(x2) # load 0x48a818b0383cc15c from memory into f22
la x9, scratch # base address
addi x9, x9, 1634 # sub immediate from rs1 to counter offset
fsh f22, -1634(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x28, 0x33cd98090491482b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xdd413a76dbc12bd1 # load x3 with value 0xdd413a76dbc12bd1
sw x3, 0(x2) # store 0xdd413a76dbc12bd1 in memory
flh f18, 0(x2) # load 0xdd413a76dbc12bd1 from memory into f18
la x10, scratch # base address
addi x10, x10, 1790 # sub immediate from rs1 to counter offset
fsh f18, -1790(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x7, 0xb30a75498dbf8538 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x8d154ad7da05d3d8 # load x3 with value 0x8d154ad7da05d3d8
sw x3, 0(x2) # store 0x8d154ad7da05d3d8 in memory
flh f24, 0(x2) # load 0x8d154ad7da05d3d8 from memory into f24
la x11, scratch # base address
addi x11, x11, 1056 # sub immediate from rs1 to counter offset
fsh f24, -1056(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x21, 0x8b7140b32b50cf14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x98b69237b91398f8 # load x3 with value 0x98b69237b91398f8
sw x3, 0(x2) # store 0x98b69237b91398f8 in memory
flh f31, 0(x2) # load 0x98b69237b91398f8 from memory into f31
la x12, scratch # base address
addi x12, x12, -2024 # sub immediate from rs1 to counter offset
fsh f31, 2024(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x14, 0xd275767120c9a644 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x8daf1a25b2c1ff70 # load x3 with value 0x8daf1a25b2c1ff70
sw x3, 0(x2) # store 0x8daf1a25b2c1ff70 in memory
flh f15, 0(x2) # load 0x8daf1a25b2c1ff70 from memory into f15
la x13, scratch # base address
addi x13, x13, -294 # sub immediate from rs1 to counter offset
fsh f15, 294(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x6, 0xb375a1d8acdbd046 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x270646eb8feb258b # load x3 with value 0x270646eb8feb258b
sw x3, 0(x2) # store 0x270646eb8feb258b in memory
flh f4, 0(x2) # load 0x270646eb8feb258b from memory into f4
la x14, scratch # base address
addi x14, x14, 737 # sub immediate from rs1 to counter offset
fsh f4, -737(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x28, 0x05f2aa9b68ffd7be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x9ca573ae1199c69d # load x3 with value 0x9ca573ae1199c69d
sw x3, 0(x2) # store 0x9ca573ae1199c69d in memory
flh f13, 0(x2) # load 0x9ca573ae1199c69d from memory into f13
la x15, scratch # base address
addi x15, x15, -457 # sub immediate from rs1 to counter offset
fsh f13, 457(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x21, 0x8f2627ed033c227b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xbe10bbb33792e3d7 # load x3 with value 0xbe10bbb33792e3d7
sw x3, 0(x2) # store 0xbe10bbb33792e3d7 in memory
flh f8, 0(x2) # load 0xbe10bbb33792e3d7 from memory into f8
la x16, scratch # base address
addi x16, x16, -1515 # sub immediate from rs1 to counter offset
fsh f8, 1515(x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x19, 0xad8c78742eedd08a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xe19871ed832b481a # load x3 with value 0xe19871ed832b481a
sw x3, 0(x2) # store 0xe19871ed832b481a in memory
flh f14, 0(x2) # load 0xe19871ed832b481a from memory into f14
la x17, scratch # base address
addi x17, x17, 1485 # sub immediate from rs1 to counter offset
fsh f14, -1485(x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x3, 0x2526b8dbac82d6d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xb7f0c74b6d3df230 # load x3 with value 0xb7f0c74b6d3df230
sw x3, 0(x2) # store 0xb7f0c74b6d3df230 in memory
flh f16, 0(x2) # load 0xb7f0c74b6d3df230 from memory into f16
la x18, scratch # base address
addi x18, x18, 757 # sub immediate from rs1 to counter offset
fsh f16, -757(x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x15, 0xdb8ce927ffaca206 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xd9e232da112c5d3c # load x3 with value 0xd9e232da112c5d3c
sw x3, 0(x2) # store 0xd9e232da112c5d3c in memory
flh f10, 0(x2) # load 0xd9e232da112c5d3c from memory into f10
la x19, scratch # base address
addi x19, x19, 1010 # sub immediate from rs1 to counter offset
fsh f10, -1010(x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x6, 0xb2f4bee1d9e724f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x6eaf3a0d88137277 # load x3 with value 0x6eaf3a0d88137277
sw x3, 0(x2) # store 0x6eaf3a0d88137277 in memory
flh f7, 0(x2) # load 0x6eaf3a0d88137277 from memory into f7
la x20, scratch # base address
addi x20, x20, 845 # sub immediate from rs1 to counter offset
fsh f7, -845(x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x28, 0x526068ac05bb9039 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x29ef69bc97a97031 # load x3 with value 0x29ef69bc97a97031
sw x3, 0(x2) # store 0x29ef69bc97a97031 in memory
flh f9, 0(x2) # load 0x29ef69bc97a97031 from memory into f9
la x21, scratch # base address
addi x21, x21, 1177 # sub immediate from rs1 to counter offset
fsh f9, -1177(x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x2, 0x7791f571d830d43c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xe01a0db99b262920 # load x3 with value 0xe01a0db99b262920
sw x3, 0(x2) # store 0xe01a0db99b262920 in memory
flh f20, 0(x2) # load 0xe01a0db99b262920 from memory into f20
la x22, scratch # base address
addi x22, x22, -297 # sub immediate from rs1 to counter offset
fsh f20, 297(x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x14, 0x10f34e3fcc7f0f55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xe38d6803297064e5 # load x3 with value 0xe38d6803297064e5
sw x3, 0(x2) # store 0xe38d6803297064e5 in memory
flh f4, 0(x2) # load 0xe38d6803297064e5 from memory into f4
la x23, scratch # base address
addi x23, x23, 324 # sub immediate from rs1 to counter offset
fsh f4, -324(x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x13, 0xbb46170cbd2f19c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x8ab64a43e4a2009d # load x3 with value 0x8ab64a43e4a2009d
sw x3, 0(x2) # store 0x8ab64a43e4a2009d in memory
flh f29, 0(x2) # load 0x8ab64a43e4a2009d from memory into f29
la x24, scratch # base address
addi x24, x24, 851 # sub immediate from rs1 to counter offset
fsh f29, -851(x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x29, 0xe457cb7b255b69ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x1a77aa0257c10e78 # load x3 with value 0x1a77aa0257c10e78
sw x3, 0(x2) # store 0x1a77aa0257c10e78 in memory
flh f15, 0(x2) # load 0x1a77aa0257c10e78 from memory into f15
la x25, scratch # base address
addi x25, x25, 1586 # sub immediate from rs1 to counter offset
fsh f15, -1586(x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x2, 0x2c09cfa0f317d516 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x952ff24848b1cf1 # load x3 with value 0x952ff24848b1cf1
sw x3, 0(x2) # store 0x952ff24848b1cf1 in memory
flh f25, 0(x2) # load 0x952ff24848b1cf1 from memory into f25
la x26, scratch # base address
addi x26, x26, 402 # sub immediate from rs1 to counter offset
fsh f25, -402(x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x3, 0xf34333cc2fbf8efa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x44309cfc926396d1 # load x3 with value 0x44309cfc926396d1
sw x3, 0(x2) # store 0x44309cfc926396d1 in memory
flh f14, 0(x2) # load 0x44309cfc926396d1 from memory into f14
la x27, scratch # base address
addi x27, x27, -720 # sub immediate from rs1 to counter offset
fsh f14, 720(x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x9, 0x5175583ff598ea00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x26462a3d24df856 # load x3 with value 0x26462a3d24df856
sw x3, 0(x2) # store 0x26462a3d24df856 in memory
flh f11, 0(x2) # load 0x26462a3d24df856 from memory into f11
la x28, scratch # base address
addi x28, x28, -115 # sub immediate from rs1 to counter offset
fsh f11, 115(x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x10, 0x7ced81be9b73ed8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xce54cf2326a3551c # load x3 with value 0xce54cf2326a3551c
sw x3, 0(x2) # store 0xce54cf2326a3551c in memory
flh f20, 0(x2) # load 0xce54cf2326a3551c from memory into f20
la x29, scratch # base address
addi x29, x29, -1056 # sub immediate from rs1 to counter offset
fsh f20, 1056(x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x14, 0xe9531edcfc28776c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xc8cb815f3d0fffd2 # load x3 with value 0xc8cb815f3d0fffd2
sw x3, 0(x2) # store 0xc8cb815f3d0fffd2 in memory
flh f22, 0(x2) # load 0xc8cb815f3d0fffd2 from memory into f22
la x30, scratch # base address
addi x30, x30, 983 # sub immediate from rs1 to counter offset
fsh f22, -983(x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x14, 0x85aa9fe2f1f913cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x5ba2f77917037143 # load x3 with value 0x5ba2f77917037143
sw x3, 0(x2) # store 0x5ba2f77917037143 in memory
flh f1, 0(x2) # load 0x5ba2f77917037143 from memory into f1
la x31, scratch # base address
addi x31, x31, -1315 # sub immediate from rs1 to counter offset
fsh f1, 1315(x31) # perform operation

# Testcase cp_imm_zero
li x23, 0x500ffcca72aed3a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x8b3c35bee022e1c7 # load x3 with value 0x8b3c35bee022e1c7
sw x3, 0(x2) # store 0x8b3c35bee022e1c7 in memory
flh f10, 0(x2) # load 0x8b3c35bee022e1c7 from memory into f10
la x8, scratch # base address
addi x8, x8, 0 # sub immediate from rs1 to counter offset
fsh f10, 0(x8) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x7, 0xafd59d03f9d2f292 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f21, 0(x2) # load 0x00000000 from memory into f21
la x11, scratch # base address
addi x11, x11, -1504 # sub immediate from rs1 to counter offset
fsh f21, 1504(x11) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000)
li x24, 0xcb680f8315ade21e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f15, 0(x2) # load 0x00008000 from memory into f15
la x2, scratch # base address
addi x2, x2, 96 # sub immediate from rs1 to counter offset
fsh f15, -96(x2) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3c00)
li x16, 0x386354af18f92ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f26, 0(x2) # load 0x00003c00 from memory into f26
la x15, scratch # base address
addi x15, x15, 711 # sub immediate from rs1 to counter offset
fsh f26, -711(x15) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbc00)
li x1, 0x1bca1f0f4a86446b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f3, 0(x2) # load 0x0000bc00 from memory into f3
la x6, scratch # base address
addi x6, x6, -650 # sub immediate from rs1 to counter offset
fsh f3, 650(x6) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3e00)
li x16, 0x78d88b81c5dcecfd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f22, 0(x2) # load 0x00003e00 from memory into f22
la x15, scratch # base address
addi x15, x15, 141 # sub immediate from rs1 to counter offset
fsh f22, -141(x15) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbe00)
li x14, 0xea008c4f3b7409b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f29, 0(x2) # load 0x0000be00 from memory into f29
la x10, scratch # base address
addi x10, x10, 374 # sub immediate from rs1 to counter offset
fsh f29, -374(x10) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000)
li x21, 0x5f759dbc92c4b2ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f5, 0(x2) # load 0x00004000 from memory into f5
la x28, scratch # base address
addi x28, x28, 933 # sub immediate from rs1 to counter offset
fsh f5, -933(x28) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000)
li x25, 0xab9b79b3cc34e112 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f29, 0(x2) # load 0x0000c000 from memory into f29
la x30, scratch # base address
addi x30, x30, -1907 # sub immediate from rs1 to counter offset
fsh f29, 1907(x30) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400)
li x18, 0xa9eae5ac1b2f28d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f27, 0(x2) # load 0x00000400 from memory into f27
la x23, scratch # base address
addi x23, x23, -1783 # sub immediate from rs1 to counter offset
fsh f27, 1783(x23) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8400)
li x17, 0x32a2fe6350084a6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
la x5, scratch # base address
addi x5, x5, 677 # sub immediate from rs1 to counter offset
fsh f24, -677(x5) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7bff)
li x16, 0x55380cc1482d1a04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
la x14, scratch # base address
addi x14, x14, 1440 # sub immediate from rs1 to counter offset
fsh f1, -1440(x14) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfbff)
li x8, 0x299390adf8a68bd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f13, 0(x2) # load 0x0000fbff from memory into f13
la x6, scratch # base address
addi x6, x6, -1095 # sub immediate from rs1 to counter offset
fsh f13, 1095(x6) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff)
li x14, 0xb199329cf3132ca0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
la x4, scratch # base address
addi x4, x4, -1626 # sub immediate from rs1 to counter offset
fsh f17, 1626(x4) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x83ff)
li x10, 0x760c2ef74cb99ccb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
la x21, scratch # base address
addi x21, x21, 1306 # sub immediate from rs1 to counter offset
fsh f20, -1306(x21) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x200)
li x7, 0xf01732fbacba7142 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f8, 0(x2) # load 0x00000200 from memory into f8
la x21, scratch # base address
addi x21, x21, 520 # sub immediate from rs1 to counter offset
fsh f8, -520(x21) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8200)
li x6, 0x7c694693dbf14c48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f27, 0(x2) # load 0x00008200 from memory into f27
la x24, scratch # base address
addi x24, x24, 963 # sub immediate from rs1 to counter offset
fsh f27, -963(x24) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x12, 0xd0c5efbd2019dbac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
la x22, scratch # base address
addi x22, x22, -1592 # sub immediate from rs1 to counter offset
fsh f24, 1592(x22) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8001)
li x22, 0x9a28fdbcdcf9d668 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
la x5, scratch # base address
addi x5, x5, -78 # sub immediate from rs1 to counter offset
fsh f24, 78(x5) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c00)
li x10, 0x9de340a2ad76e666 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f3, 0(x2) # load 0x00007c00 from memory into f3
la x5, scratch # base address
addi x5, x5, 1137 # sub immediate from rs1 to counter offset
fsh f3, -1137(x5) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc00)
li x15, 0x3577f4a185c7d730 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
la x14, scratch # base address
addi x14, x14, -745 # sub immediate from rs1 to counter offset
fsh f26, 745(x14) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e00)
li x17, 0x0ed8e2fbbb714f25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f5, 0(x2) # load 0x00007e00 from memory into f5
la x4, scratch # base address
addi x4, x4, 1774 # sub immediate from rs1 to counter offset
fsh f5, -1774(x4) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff)
li x23, 0xea4640a95f14acca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f21, 0(x2) # load 0x00007fff from memory into f21
la x30, scratch # base address
addi x30, x30, 1165 # sub immediate from rs1 to counter offset
fsh f21, -1165(x30) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c01)
li x15, 0x8bc8eb28f809bf4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
la x25, scratch # base address
addi x25, x25, 1212 # sub immediate from rs1 to counter offset
fsh f12, -1212(x25) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7dff)
li x28, 0xffcda4319843ba95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f13, 0(x2) # load 0x00007dff from memory into f13
la x29, scratch # base address
addi x29, x29, -302 # sub immediate from rs1 to counter offset
fsh f13, 302(x29) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x58b4)
li x24, 0xd062fd49af4ad437 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f28, 0(x2) # load 0x000058b4 from memory into f28
la x9, scratch # base address
addi x9, x9, -854 # sub immediate from rs1 to counter offset
fsh f28, 854(x9) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc93a)
li x2, 0xb199999a19d52561 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f15, 0(x2) # load 0x0000c93a from memory into f15
la x7, scratch # base address
addi x7, x7, 449 # sub immediate from rs1 to counter offset
fsh f15, -449(x7) # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x17, 0x2acd9e7225f795e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xd7a674b77b472050 # load x3 with value 0xd7a674b77b472050
sw x3, 0(x2) # store 0xd7a674b77b472050 in memory
flh f0, 0(x2) # load 0xd7a674b77b472050 from memory into f0
la x16, scratch # base address
addi x16, x16, -1412 # sub immediate from rs1 to counter offset
fsh f0, 1412(x16) # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x19, 0xe8fabe11d840e519 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xccdbfd3ce24d49ca # load x3 with value 0xccdbfd3ce24d49ca
sw x3, 0(x2) # store 0xccdbfd3ce24d49ca in memory
flh f1, 0(x2) # load 0xccdbfd3ce24d49ca from memory into f1
la x3, scratch # base address
addi x3, x3, 1398 # sub immediate from rs1 to counter offset
fsh f1, -1398(x3) # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x7, 0xdc4b86b42f8d1cce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x299ba4f2e1b137f4 # load x3 with value 0x299ba4f2e1b137f4
sw x3, 0(x2) # store 0x299ba4f2e1b137f4 in memory
flh f2, 0(x2) # load 0x299ba4f2e1b137f4 from memory into f2
la x23, scratch # base address
addi x23, x23, -115 # sub immediate from rs1 to counter offset
fsh f2, 115(x23) # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x31, 0x09caa169becbe12e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xc555f0853560653d # load x3 with value 0xc555f0853560653d
sw x3, 0(x2) # store 0xc555f0853560653d in memory
flh f3, 0(x2) # load 0xc555f0853560653d from memory into f3
la x18, scratch # base address
addi x18, x18, -103 # sub immediate from rs1 to counter offset
fsh f3, 103(x18) # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x14, 0x722876575fe55ad2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x20fc1c0a1c5cb2bd # load x3 with value 0x20fc1c0a1c5cb2bd
sw x3, 0(x2) # store 0x20fc1c0a1c5cb2bd in memory
flh f4, 0(x2) # load 0x20fc1c0a1c5cb2bd from memory into f4
la x15, scratch # base address
addi x15, x15, -878 # sub immediate from rs1 to counter offset
fsh f4, 878(x15) # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x15, 0x62905f55dd73fb51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x82f054b1fb895ef6 # load x3 with value 0x82f054b1fb895ef6
sw x3, 0(x2) # store 0x82f054b1fb895ef6 in memory
flh f5, 0(x2) # load 0x82f054b1fb895ef6 from memory into f5
la x3, scratch # base address
addi x3, x3, -1957 # sub immediate from rs1 to counter offset
fsh f5, 1957(x3) # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x1, 0x9de2fd57e3e68368 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x4dae20d697ad9d21 # load x3 with value 0x4dae20d697ad9d21
sw x3, 0(x2) # store 0x4dae20d697ad9d21 in memory
flh f6, 0(x2) # load 0x4dae20d697ad9d21 from memory into f6
la x9, scratch # base address
addi x9, x9, -1122 # sub immediate from rs1 to counter offset
fsh f6, 1122(x9) # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x24, 0x83bfa57ff43e792e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x2dd8f22a2930c29 # load x3 with value 0x2dd8f22a2930c29
sw x3, 0(x2) # store 0x2dd8f22a2930c29 in memory
flh f7, 0(x2) # load 0x2dd8f22a2930c29 from memory into f7
la x11, scratch # base address
addi x11, x11, -1580 # sub immediate from rs1 to counter offset
fsh f7, 1580(x11) # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x1, 0xbddc961301fdf33a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x29315460cc8e5277 # load x3 with value 0x29315460cc8e5277
sw x3, 0(x2) # store 0x29315460cc8e5277 in memory
flh f8, 0(x2) # load 0x29315460cc8e5277 from memory into f8
la x23, scratch # base address
addi x23, x23, -1747 # sub immediate from rs1 to counter offset
fsh f8, 1747(x23) # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x28, 0x739980fa511e8cf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xd2a25f551805e65b # load x3 with value 0xd2a25f551805e65b
sw x3, 0(x2) # store 0xd2a25f551805e65b in memory
flh f9, 0(x2) # load 0xd2a25f551805e65b from memory into f9
la x16, scratch # base address
addi x16, x16, 892 # sub immediate from rs1 to counter offset
fsh f9, -892(x16) # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x21, 0x9e33b7f63eb341a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xc50329ed7e5c80e9 # load x3 with value 0xc50329ed7e5c80e9
sw x3, 0(x2) # store 0xc50329ed7e5c80e9 in memory
flh f10, 0(x2) # load 0xc50329ed7e5c80e9 from memory into f10
la x4, scratch # base address
addi x4, x4, -727 # sub immediate from rs1 to counter offset
fsh f10, 727(x4) # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x8, 0x6235727c20bee40e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x42586c3a38c02a42 # load x3 with value 0x42586c3a38c02a42
sw x3, 0(x2) # store 0x42586c3a38c02a42 in memory
flh f11, 0(x2) # load 0x42586c3a38c02a42 from memory into f11
la x22, scratch # base address
addi x22, x22, -725 # sub immediate from rs1 to counter offset
fsh f11, 725(x22) # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x29, 0x37f0bc355c58e6bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x3836f4be85d790f5 # load x3 with value 0x3836f4be85d790f5
sw x3, 0(x2) # store 0x3836f4be85d790f5 in memory
flh f12, 0(x2) # load 0x3836f4be85d790f5 from memory into f12
la x11, scratch # base address
addi x11, x11, -874 # sub immediate from rs1 to counter offset
fsh f12, 874(x11) # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x13, 0xa336149d98eaaedc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xe95e9ab830251a89 # load x3 with value 0xe95e9ab830251a89
sw x3, 0(x2) # store 0xe95e9ab830251a89 in memory
flh f13, 0(x2) # load 0xe95e9ab830251a89 from memory into f13
la x9, scratch # base address
addi x9, x9, -849 # sub immediate from rs1 to counter offset
fsh f13, 849(x9) # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x1, 0x5855d8bcfe644ef9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x209e80b4dc5aa01 # load x3 with value 0x209e80b4dc5aa01
sw x3, 0(x2) # store 0x209e80b4dc5aa01 in memory
flh f14, 0(x2) # load 0x209e80b4dc5aa01 from memory into f14
la x15, scratch # base address
addi x15, x15, 751 # sub immediate from rs1 to counter offset
fsh f14, -751(x15) # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x24, 0x78ceb73e34405c25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x768ab1daf8990905 # load x3 with value 0x768ab1daf8990905
sw x3, 0(x2) # store 0x768ab1daf8990905 in memory
flh f15, 0(x2) # load 0x768ab1daf8990905 from memory into f15
la x16, scratch # base address
addi x16, x16, -1149 # sub immediate from rs1 to counter offset
fsh f15, 1149(x16) # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x11, 0x04d17017f0351845 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xf5fc16875d0ec068 # load x3 with value 0xf5fc16875d0ec068
sw x3, 0(x2) # store 0xf5fc16875d0ec068 in memory
flh f16, 0(x2) # load 0xf5fc16875d0ec068 from memory into f16
la x9, scratch # base address
addi x9, x9, -1486 # sub immediate from rs1 to counter offset
fsh f16, 1486(x9) # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x3, 0xb085ce43a7ac0f68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x2261eee6e741d634 # load x3 with value 0x2261eee6e741d634
sw x3, 0(x2) # store 0x2261eee6e741d634 in memory
flh f17, 0(x2) # load 0x2261eee6e741d634 from memory into f17
la x21, scratch # base address
addi x21, x21, 1480 # sub immediate from rs1 to counter offset
fsh f17, -1480(x21) # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x22, 0xa71f0d9887d51587 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xb799096c4847e985 # load x3 with value 0xb799096c4847e985
sw x3, 0(x2) # store 0xb799096c4847e985 in memory
flh f18, 0(x2) # load 0xb799096c4847e985 from memory into f18
la x27, scratch # base address
addi x27, x27, 1745 # sub immediate from rs1 to counter offset
fsh f18, -1745(x27) # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x20, 0x6e2c28cd3732e2fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x29c16bab74123391 # load x3 with value 0x29c16bab74123391
sw x3, 0(x2) # store 0x29c16bab74123391 in memory
flh f19, 0(x2) # load 0x29c16bab74123391 from memory into f19
la x9, scratch # base address
addi x9, x9, -209 # sub immediate from rs1 to counter offset
fsh f19, 209(x9) # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x2, 0x561eae8211f7db1d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xac2a79906d2738aa # load x3 with value 0xac2a79906d2738aa
sw x3, 0(x2) # store 0xac2a79906d2738aa in memory
flh f20, 0(x2) # load 0xac2a79906d2738aa from memory into f20
la x21, scratch # base address
addi x21, x21, 1350 # sub immediate from rs1 to counter offset
fsh f20, -1350(x21) # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x8, 0x4f5a574eddeb7ba1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x4ad27e4e9fc559ec # load x3 with value 0x4ad27e4e9fc559ec
sw x3, 0(x2) # store 0x4ad27e4e9fc559ec in memory
flh f21, 0(x2) # load 0x4ad27e4e9fc559ec from memory into f21
la x12, scratch # base address
addi x12, x12, 1054 # sub immediate from rs1 to counter offset
fsh f21, -1054(x12) # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x6, 0x9791fde2b48fc604 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x46451b41a85002d9 # load x3 with value 0x46451b41a85002d9
sw x3, 0(x2) # store 0x46451b41a85002d9 in memory
flh f22, 0(x2) # load 0x46451b41a85002d9 from memory into f22
la x26, scratch # base address
addi x26, x26, -1023 # sub immediate from rs1 to counter offset
fsh f22, 1023(x26) # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x16, 0x6e87062897eebe94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xf81482a517c37482 # load x3 with value 0xf81482a517c37482
sw x3, 0(x2) # store 0xf81482a517c37482 in memory
flh f23, 0(x2) # load 0xf81482a517c37482 from memory into f23
la x21, scratch # base address
addi x21, x21, -1766 # sub immediate from rs1 to counter offset
fsh f23, 1766(x21) # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x1, 0x1525a1970a1738aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x5e3a9537a551cda6 # load x3 with value 0x5e3a9537a551cda6
sw x3, 0(x2) # store 0x5e3a9537a551cda6 in memory
flh f24, 0(x2) # load 0x5e3a9537a551cda6 from memory into f24
la x21, scratch # base address
addi x21, x21, 1643 # sub immediate from rs1 to counter offset
fsh f24, -1643(x21) # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x4, 0x7b0f3eea6c4ccc05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xb71a67e31494e195 # load x3 with value 0xb71a67e31494e195
sw x3, 0(x2) # store 0xb71a67e31494e195 in memory
flh f25, 0(x2) # load 0xb71a67e31494e195 from memory into f25
la x11, scratch # base address
addi x11, x11, -491 # sub immediate from rs1 to counter offset
fsh f25, 491(x11) # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x3, 0xdb00935d8847a535 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x99b140c7ded44e84 # load x3 with value 0x99b140c7ded44e84
sw x3, 0(x2) # store 0x99b140c7ded44e84 in memory
flh f26, 0(x2) # load 0x99b140c7ded44e84 from memory into f26
la x16, scratch # base address
addi x16, x16, 564 # sub immediate from rs1 to counter offset
fsh f26, -564(x16) # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x6, 0xd2019eba2380ecb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x504ed8be4dc4d163 # load x3 with value 0x504ed8be4dc4d163
sw x3, 0(x2) # store 0x504ed8be4dc4d163 in memory
flh f27, 0(x2) # load 0x504ed8be4dc4d163 from memory into f27
la x4, scratch # base address
addi x4, x4, 1400 # sub immediate from rs1 to counter offset
fsh f27, -1400(x4) # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x27, 0xe418c2d31782c49f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x662e864dc82998f3 # load x3 with value 0x662e864dc82998f3
sw x3, 0(x2) # store 0x662e864dc82998f3 in memory
flh f28, 0(x2) # load 0x662e864dc82998f3 from memory into f28
la x6, scratch # base address
addi x6, x6, 21 # sub immediate from rs1 to counter offset
fsh f28, -21(x6) # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x13, 0x8c9b16f4b95ac2a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xc79309cfa6ed4f80 # load x3 with value 0xc79309cfa6ed4f80
sw x3, 0(x2) # store 0xc79309cfa6ed4f80 in memory
flh f29, 0(x2) # load 0xc79309cfa6ed4f80 from memory into f29
la x1, scratch # base address
addi x1, x1, -1339 # sub immediate from rs1 to counter offset
fsh f29, 1339(x1) # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x15, 0x35eba2af1296d753 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xf269b5cac4ec4a98 # load x3 with value 0xf269b5cac4ec4a98
sw x3, 0(x2) # store 0xf269b5cac4ec4a98 in memory
flh f30, 0(x2) # load 0xf269b5cac4ec4a98 from memory into f30
la x11, scratch # base address
addi x11, x11, -841 # sub immediate from rs1 to counter offset
fsh f30, 841(x11) # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x16, 0xd51ea27ccdbc1551 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xbc700bbda1986b23 # load x3 with value 0xbc700bbda1986b23
sw x3, 0(x2) # store 0xbc700bbda1986b23 in memory
flh f31, 0(x2) # load 0xbc700bbda1986b23 from memory into f31
la x9, scratch # base address
addi x9, x9, -159 # sub immediate from rs1 to counter offset
fsh f31, 159(x9) # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
