///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zca//WALLY-COV-c.lwsp.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.988127
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x1)
li x1, 0x562b43250533fa07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x4fdf079dac5668d7 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -168 # sub immediate from rs1 to counter offset
c.swsp x27, 168(sp)   # store value to put something in memory
c.lwsp x1, 168(sp) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xbcc0de031348f96b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x982fc21c273b9da2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -28 # sub immediate from rs1 to counter offset
c.swsp x13, 28(sp)   # store value to put something in memory
c.lwsp x2, 28(sp) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x7b4ec13a23d05a11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6036a2a0fffbc810 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -112 # sub immediate from rs1 to counter offset
c.swsp x11, 112(sp)   # store value to put something in memory
c.lwsp x3, 112(sp) # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xf36836c6059ba85d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xae2fb9e0394319dc # initialize rs2
la sp, scratch # base address 
addi sp, sp, -156 # sub immediate from rs1 to counter offset
c.swsp x14, 156(sp)   # store value to put something in memory
c.lwsp x4, 156(sp) # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xb2e8179170237e26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xd815f8a45ceaa387 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -208 # sub immediate from rs1 to counter offset
c.swsp x18, 208(sp)   # store value to put something in memory
c.lwsp x5, 208(sp) # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x6f3690e887bb7e4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xb01275948e4f073d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -68 # sub immediate from rs1 to counter offset
c.swsp x18, 68(sp)   # store value to put something in memory
c.lwsp x6, 68(sp) # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xa458b0aa6b924ce5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xcb767fcd3ac79374 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -88 # sub immediate from rs1 to counter offset
c.swsp x16, 88(sp)   # store value to put something in memory
c.lwsp x7, 88(sp) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xb8626a9e83900677 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x2c1339cfbb46afab # initialize rs2
la sp, scratch # base address 
addi sp, sp, -240 # sub immediate from rs1 to counter offset
c.swsp x18, 240(sp)   # store value to put something in memory
c.lwsp x8, 240(sp) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x43b2bf46ff7c5a10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xd4aa9f35e595b18c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -204 # sub immediate from rs1 to counter offset
c.swsp x14, 204(sp)   # store value to put something in memory
c.lwsp x9, 204(sp) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x906d65d73414b4ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9043a332908c7d9b # initialize rs2
la sp, scratch # base address 
addi sp, sp, -72 # sub immediate from rs1 to counter offset
c.swsp x13, 72(sp)   # store value to put something in memory
c.lwsp x10, 72(sp) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x204ddd37a10de5b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x20a1795a3ba4cca7 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -196 # sub immediate from rs1 to counter offset
c.swsp x6, 196(sp)   # store value to put something in memory
c.lwsp x11, 196(sp) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x65beb3df871195ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x047a2e5e19d57670 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -152 # sub immediate from rs1 to counter offset
c.swsp x7, 152(sp)   # store value to put something in memory
c.lwsp x12, 152(sp) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xb961cb96604f9646 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x15ab5c8ec71f095c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -48 # sub immediate from rs1 to counter offset
c.swsp x10, 48(sp)   # store value to put something in memory
c.lwsp x13, 48(sp) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xac636cfabddf9e13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xb39bd9c88c7304d1 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -188 # sub immediate from rs1 to counter offset
c.swsp x24, 188(sp)   # store value to put something in memory
c.lwsp x14, 188(sp) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x32b0b7c26dab0fed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xd3700bbd6cbf70ad # initialize rs2
la sp, scratch # base address 
addi sp, sp, -12 # sub immediate from rs1 to counter offset
c.swsp x5, 12(sp)   # store value to put something in memory
c.lwsp x15, 12(sp) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x38a707f9987619ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x053092410e73f2eb # initialize rs2
la sp, scratch # base address 
addi sp, sp, -220 # sub immediate from rs1 to counter offset
c.swsp x24, 220(sp)   # store value to put something in memory
c.lwsp x16, 220(sp) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x31d33ebbf1cec708 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xeaf37999ba03a46d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -144 # sub immediate from rs1 to counter offset
c.swsp x10, 144(sp)   # store value to put something in memory
c.lwsp x17, 144(sp) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xdbbbc68a15b3185d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xc6e1a1b89f24b0a8 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -76 # sub immediate from rs1 to counter offset
c.swsp x16, 76(sp)   # store value to put something in memory
c.lwsp x18, 76(sp) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xffd551e2577fb265 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xa215095e5ba4d9bd # initialize rs2
la sp, scratch # base address 
addi sp, sp, -240 # sub immediate from rs1 to counter offset
c.swsp x3, 240(sp)   # store value to put something in memory
c.lwsp x19, 240(sp) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xe94a2fd61b8193a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xabec19d993149b34 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -96 # sub immediate from rs1 to counter offset
c.swsp x4, 96(sp)   # store value to put something in memory
c.lwsp x20, 96(sp) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x29b345a26b5aad0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x075aa7335c82d0f0 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -84 # sub immediate from rs1 to counter offset
c.swsp x12, 84(sp)   # store value to put something in memory
c.lwsp x21, 84(sp) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xb2b44a788df98206 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x917f151d46c845b2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -80 # sub immediate from rs1 to counter offset
c.swsp x12, 80(sp)   # store value to put something in memory
c.lwsp x22, 80(sp) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x72048d6a0b536b75 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x99208f8272a9e66e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -48 # sub immediate from rs1 to counter offset
c.swsp x17, 48(sp)   # store value to put something in memory
c.lwsp x23, 48(sp) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x1c3639b758dc5ae4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x2d2e4a8cd76ddab3 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -84 # sub immediate from rs1 to counter offset
c.swsp x4, 84(sp)   # store value to put something in memory
c.lwsp x24, 84(sp) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x9d2e5496b5c323a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xba43e4789217030d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -112 # sub immediate from rs1 to counter offset
c.swsp x16, 112(sp)   # store value to put something in memory
c.lwsp x25, 112(sp) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x44c80351d2b5edda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x195560b1e5f46fa6 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -32 # sub immediate from rs1 to counter offset
c.swsp x13, 32(sp)   # store value to put something in memory
c.lwsp x26, 32(sp) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x7104fe07088bb373 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x71a0f0baa35a8253 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -244 # sub immediate from rs1 to counter offset
c.swsp x7, 244(sp)   # store value to put something in memory
c.lwsp x27, 244(sp) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x0b4627e680bae0e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8812fd2e16ccdc14 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -48 # sub immediate from rs1 to counter offset
c.swsp x6, 48(sp)   # store value to put something in memory
c.lwsp x28, 48(sp) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x060bec2b85d3dfeb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x2dfafda3eeb06078 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -100 # sub immediate from rs1 to counter offset
c.swsp x6, 100(sp)   # store value to put something in memory
c.lwsp x29, 100(sp) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x928332346fbf013a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x83b52361221a622f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -68 # sub immediate from rs1 to counter offset
c.swsp x1, 68(sp)   # store value to put something in memory
c.lwsp x30, 68(sp) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xceca41cb20ef2b01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x13855578a56faf1a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -184 # sub immediate from rs1 to counter offset
c.swsp x27, 184(sp)   # store value to put something in memory
c.lwsp x31, 184(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x20, 0xa9ca718c32a949a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x62609653922fcd22 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x20, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x3, 0x5a89864951f983e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x25, 0(sp)   # store value to put something in memory
c.lwsp x3, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x14, 0x9f6879eca729d45f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x31, 252(sp)   # store value to put something in memory
c.lwsp x14, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x20, 0xd7c847700d67f92a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x36cd835fa2f11145 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x20, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x9, 0x589c401dd1f1f119 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -4 # sub immediate from rs1 to counter offset
c.swsp x19, 4(sp)   # store value to put something in memory
c.lwsp x9, 4(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x22, 0x7a294f20b2a71e70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x16, 252(sp)   # store value to put something in memory
c.lwsp x22, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x8, 0x921afdb4ba18bfe6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xe970753e104dcf4d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x8, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x6, 0xae053d29f060aecc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000002 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -8 # sub immediate from rs1 to counter offset
c.swsp x9, 8(sp)   # store value to put something in memory
c.lwsp x6, 8(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x27, 0x674bb23acbc3e18f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000002 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x29, 252(sp)   # store value to put something in memory
c.lwsp x27, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x26, 0x7522913926fa99b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x027c4909bdb25a3d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x26, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x3, 0xf85f13ebc4f00a8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000080000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x10, 0(sp)   # store value to put something in memory
c.lwsp x3, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x12, 0x9bbef6627b866223 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000080000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x8, 252(sp)   # store value to put something in memory
c.lwsp x12, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x25, 0x2195ab5bab42d70e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x6b6b9af7878f2537 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x25, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x10, 0x7bdb679b13d3c18c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000080000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -4 # sub immediate from rs1 to counter offset
c.swsp x27, 4(sp)   # store value to put something in memory
c.lwsp x10, 4(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x29, 0x88b5dfa9c95953e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000080000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x27, 252(sp)   # store value to put something in memory
c.lwsp x29, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x26, 0xc67abc1692b44539 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xf35b309c3c9c69f3 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x26, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x31, 0x1f709ceb7cff0826 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x000000007fffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x13, 252(sp)   # store value to put something in memory
c.lwsp x31, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x30, 0x830c062f8bf8f15e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x000000007fffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x4, 252(sp)   # store value to put something in memory
c.lwsp x30, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x3, 0xb56592152c2250c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x4c9aac53bcb400fc # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x3, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x4, 0xedf38ceec4fd1084 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x000000007ffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -248 # sub immediate from rs1 to counter offset
c.swsp x22, 248(sp)   # store value to put something in memory
c.lwsp x4, 248(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x3, 0xc245f6016e16bd76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x000000007ffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x13, 252(sp)   # store value to put something in memory
c.lwsp x3, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x24, 0x0d4444da9be9ba37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x8d53ab2d908dcef3 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x24, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x1, 0x3d0ee75d39b909f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000ffffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x21, 252(sp)   # store value to put something in memory
c.lwsp x1, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x30, 0xf853356766498ac2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000ffffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x31, 252(sp)   # store value to put something in memory
c.lwsp x30, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x11, 0x3db858444fcc08b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x263b0005374b675b # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x11, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x17, 0xcf441eb3ac8b0bd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000fffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -248 # sub immediate from rs1 to counter offset
c.swsp x29, 248(sp)   # store value to put something in memory
c.lwsp x17, 248(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x11, 0x2531c346296a2ab8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000fffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x12, 252(sp)   # store value to put something in memory
c.lwsp x11, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x8, 0x2652a0f69c3591d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x6da24d13369ed1df # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x8, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x9, 0xc00edbc8aa952adf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000aaaaaaaa # initialize rs2
la sp, scratch # base address 
addi sp, sp, -168 # sub immediate from rs1 to counter offset
c.swsp x17, 168(sp)   # store value to put something in memory
c.lwsp x9, 168(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x4, 0xb762ef35efafde36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000aaaaaaaa # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x8, 252(sp)   # store value to put something in memory
c.lwsp x4, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x6, 0xab7add77c8a6b1fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x6a2c09001ceff22f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x6, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x22, 0xa755e5df8d9f8473 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000055555555 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -84 # sub immediate from rs1 to counter offset
c.swsp x21, 84(sp)   # store value to put something in memory
c.lwsp x22, 84(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x24, 0xa322f8d0c6a8d6a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000055555555 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x29, 252(sp)   # store value to put something in memory
c.lwsp x24, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x31, 0x1f3b1cbca22f8645 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x64ad115e573000d2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x31, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x23, 0xe062d60585dc895e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000063ae86f7 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -220 # sub immediate from rs1 to counter offset
c.swsp x22, 220(sp)   # store value to put something in memory
c.lwsp x23, 220(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x23, 0xa941eb5e20e257f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000063ae86f7 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x14, 252(sp)   # store value to put something in memory
c.lwsp x23, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x23, 0x19c8e9bc91a9909f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xe34d23f7fbb56a25 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x23, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x23, 0xfb0ff32c6d78e0b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000e3ae86f7 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -220 # sub immediate from rs1 to counter offset
c.swsp x22, 220(sp)   # store value to put something in memory
c.lwsp x23, 220(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x21, 0x140d3c708d079f19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000e3ae86f7 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x29, 252(sp)   # store value to put something in memory
c.lwsp x21, 252(sp) # perform operation

# Testcase cp_imm_mul
li x14, 0xed870b545376ff93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xa8ea8bbdd1d95776 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x16, 0(sp)   # store value to put something in memory
c.lwsp x14, 0(sp) # perform operation

# Testcase cp_imm_mul
li x25, 0x02a1cb847ee614fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8f9116c58b009628 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -4 # sub immediate from rs1 to counter offset
c.swsp x11, 4(sp)   # store value to put something in memory
c.lwsp x25, 4(sp) # perform operation

# Testcase cp_imm_mul
li x16, 0xdb04cfdba25c0c99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x707ad3be94938501 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -8 # sub immediate from rs1 to counter offset
c.swsp x14, 8(sp)   # store value to put something in memory
c.lwsp x16, 8(sp) # perform operation

# Testcase cp_imm_mul
li x3, 0xcd9f35bbd6774a26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x350969a9362fca3f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -12 # sub immediate from rs1 to counter offset
c.swsp x19, 12(sp)   # store value to put something in memory
c.lwsp x3, 12(sp) # perform operation

# Testcase cp_imm_mul
li x3, 0x0f42dace63590408 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x51fed31d60e28930 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -16 # sub immediate from rs1 to counter offset
c.swsp x23, 16(sp)   # store value to put something in memory
c.lwsp x3, 16(sp) # perform operation

# Testcase cp_imm_mul
li x31, 0x50df364e41014939 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x4a5212d8ccdcc321 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -20 # sub immediate from rs1 to counter offset
c.swsp x15, 20(sp)   # store value to put something in memory
c.lwsp x31, 20(sp) # perform operation

# Testcase cp_imm_mul
li x29, 0xee8c8c9e2da62e7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xf4ab521894e848b2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -24 # sub immediate from rs1 to counter offset
c.swsp x14, 24(sp)   # store value to put something in memory
c.lwsp x29, 24(sp) # perform operation

# Testcase cp_imm_mul
li x16, 0x7baff3a15c55d246 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xd1edd466dd62c30a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -28 # sub immediate from rs1 to counter offset
c.swsp x25, 28(sp)   # store value to put something in memory
c.lwsp x16, 28(sp) # perform operation

# Testcase cp_imm_mul
li x29, 0x54bff4db6140eb90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xa9183ba88b83b6a2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -32 # sub immediate from rs1 to counter offset
c.swsp x1, 32(sp)   # store value to put something in memory
c.lwsp x29, 32(sp) # perform operation

# Testcase cp_imm_mul
li x9, 0x965216cbe894f8d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x38b139b255c8a5f7 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -36 # sub immediate from rs1 to counter offset
c.swsp x1, 36(sp)   # store value to put something in memory
c.lwsp x9, 36(sp) # perform operation

# Testcase cp_imm_mul
li x23, 0x37ce0b19974a2294 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xff7f0106a353e403 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -40 # sub immediate from rs1 to counter offset
c.swsp x25, 40(sp)   # store value to put something in memory
c.lwsp x23, 40(sp) # perform operation

# Testcase cp_imm_mul
li x24, 0x8a2484a7c8dc0993 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x3d7ca8a853b73d76 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -44 # sub immediate from rs1 to counter offset
c.swsp x11, 44(sp)   # store value to put something in memory
c.lwsp x24, 44(sp) # perform operation

# Testcase cp_imm_mul
li x11, 0x90be3aded8a866e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5d46b7ddda6fd06e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -48 # sub immediate from rs1 to counter offset
c.swsp x8, 48(sp)   # store value to put something in memory
c.lwsp x11, 48(sp) # perform operation

# Testcase cp_imm_mul
li x10, 0xb2b9ff9f9c689796 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x42d2f5063e82611e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -52 # sub immediate from rs1 to counter offset
c.swsp x21, 52(sp)   # store value to put something in memory
c.lwsp x10, 52(sp) # perform operation

# Testcase cp_imm_mul
li x24, 0xd595d12c17d1ba08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x1db0d51b27ffef90 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -56 # sub immediate from rs1 to counter offset
c.swsp x5, 56(sp)   # store value to put something in memory
c.lwsp x24, 56(sp) # perform operation

# Testcase cp_imm_mul
li x26, 0xcda25d5df1c1d992 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x021d4f488bd5ec38 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -60 # sub immediate from rs1 to counter offset
c.swsp x22, 60(sp)   # store value to put something in memory
c.lwsp x26, 60(sp) # perform operation

# Testcase cp_imm_mul
li x8, 0x920ca053ad396ca9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x277dc2c1216c056d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -64 # sub immediate from rs1 to counter offset
c.swsp x16, 64(sp)   # store value to put something in memory
c.lwsp x8, 64(sp) # perform operation

# Testcase cp_imm_mul
li x15, 0xc3ca2d02a0a7940e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xc49271c3098e6315 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -68 # sub immediate from rs1 to counter offset
c.swsp x25, 68(sp)   # store value to put something in memory
c.lwsp x15, 68(sp) # perform operation

# Testcase cp_imm_mul
li x10, 0x62871387a406d6c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0f437911f2fe35cd # initialize rs2
la sp, scratch # base address 
addi sp, sp, -72 # sub immediate from rs1 to counter offset
c.swsp x22, 72(sp)   # store value to put something in memory
c.lwsp x10, 72(sp) # perform operation

# Testcase cp_imm_mul
li x26, 0x739413267e6832b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xb1e87cb388ecf275 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -76 # sub immediate from rs1 to counter offset
c.swsp x31, 76(sp)   # store value to put something in memory
c.lwsp x26, 76(sp) # perform operation

# Testcase cp_imm_mul
li x7, 0x8601f5eef4695b9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x20ee4f202afd0a13 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -80 # sub immediate from rs1 to counter offset
c.swsp x17, 80(sp)   # store value to put something in memory
c.lwsp x7, 80(sp) # perform operation

# Testcase cp_imm_mul
li x15, 0xf9a6ab301e1b66a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x3c0724504cbf6d47 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -84 # sub immediate from rs1 to counter offset
c.swsp x1, 84(sp)   # store value to put something in memory
c.lwsp x15, 84(sp) # perform operation

# Testcase cp_imm_mul
li x17, 0x0308292d673a8efc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8e45b5e384d6c5c7 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -88 # sub immediate from rs1 to counter offset
c.swsp x24, 88(sp)   # store value to put something in memory
c.lwsp x17, 88(sp) # perform operation

# Testcase cp_imm_mul
li x5, 0xcb98abb2a77e86ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe0fbbdf12f20a07c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -92 # sub immediate from rs1 to counter offset
c.swsp x12, 92(sp)   # store value to put something in memory
c.lwsp x5, 92(sp) # perform operation

# Testcase cp_imm_mul
li x14, 0xb3e96197a1cfb0b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x50f6987c1ce392a0 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -96 # sub immediate from rs1 to counter offset
c.swsp x17, 96(sp)   # store value to put something in memory
c.lwsp x14, 96(sp) # perform operation

# Testcase cp_imm_mul
li x1, 0xb416f1df17f50506 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x99f40c254429f159 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -100 # sub immediate from rs1 to counter offset
c.swsp x28, 100(sp)   # store value to put something in memory
c.lwsp x1, 100(sp) # perform operation

# Testcase cp_imm_mul
li x11, 0x0b03947ce5507fe8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xa23b37911effa002 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -104 # sub immediate from rs1 to counter offset
c.swsp x25, 104(sp)   # store value to put something in memory
c.lwsp x11, 104(sp) # perform operation

# Testcase cp_imm_mul
li x1, 0x92d60a887df0f6f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x022777673c8403d1 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -108 # sub immediate from rs1 to counter offset
c.swsp x23, 108(sp)   # store value to put something in memory
c.lwsp x1, 108(sp) # perform operation

# Testcase cp_imm_mul
li x15, 0xa0340ffabac89ad9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x53bfcc16689f7f32 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -112 # sub immediate from rs1 to counter offset
c.swsp x9, 112(sp)   # store value to put something in memory
c.lwsp x15, 112(sp) # perform operation

# Testcase cp_imm_mul
li x16, 0xa8bd9bac5e2a7cf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x3d33e162edeea4da # initialize rs2
la sp, scratch # base address 
addi sp, sp, -116 # sub immediate from rs1 to counter offset
c.swsp x10, 116(sp)   # store value to put something in memory
c.lwsp x16, 116(sp) # perform operation

# Testcase cp_imm_mul
li x27, 0xe6f73a861d19c9f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfb40d5bb6c9ff194 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -120 # sub immediate from rs1 to counter offset
c.swsp x21, 120(sp)   # store value to put something in memory
c.lwsp x27, 120(sp) # perform operation

# Testcase cp_imm_mul
li x27, 0xb49bbaca223d41e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x360a4acda635cd6c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -124 # sub immediate from rs1 to counter offset
c.swsp x24, 124(sp)   # store value to put something in memory
c.lwsp x27, 124(sp) # perform operation

# Testcase cp_imm_mul
li x5, 0xb33a8083df605fdc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xef8eb3d98f9159d1 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -128 # sub immediate from rs1 to counter offset
c.swsp x12, 128(sp)   # store value to put something in memory
c.lwsp x5, 128(sp) # perform operation

# Testcase cp_imm_mul
li x5, 0xa4b3d02d393cb819 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x19c1175b1f9a0dad # initialize rs2
la sp, scratch # base address 
addi sp, sp, -132 # sub immediate from rs1 to counter offset
c.swsp x23, 132(sp)   # store value to put something in memory
c.lwsp x5, 132(sp) # perform operation

# Testcase cp_imm_mul
li x10, 0x446f12066b982dea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x1e9a0c6e756557ab # initialize rs2
la sp, scratch # base address 
addi sp, sp, -136 # sub immediate from rs1 to counter offset
c.swsp x30, 136(sp)   # store value to put something in memory
c.lwsp x10, 136(sp) # perform operation

# Testcase cp_imm_mul
li x4, 0x15cf0143ac012c47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x01d092384191ea02 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -140 # sub immediate from rs1 to counter offset
c.swsp x26, 140(sp)   # store value to put something in memory
c.lwsp x4, 140(sp) # perform operation

# Testcase cp_imm_mul
li x17, 0x9962db26a518b070 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7f6c581b864e3c3c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -144 # sub immediate from rs1 to counter offset
c.swsp x16, 144(sp)   # store value to put something in memory
c.lwsp x17, 144(sp) # perform operation

# Testcase cp_imm_mul
li x26, 0xb110e5e82ee8aa86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x020b1af5849091b5 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -148 # sub immediate from rs1 to counter offset
c.swsp x13, 148(sp)   # store value to put something in memory
c.lwsp x26, 148(sp) # perform operation

# Testcase cp_imm_mul
li x14, 0x6235d4ddc7224d12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x81f7951747c91899 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -152 # sub immediate from rs1 to counter offset
c.swsp x11, 152(sp)   # store value to put something in memory
c.lwsp x14, 152(sp) # perform operation

# Testcase cp_imm_mul
li x15, 0x2c9959b74e6bc611 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x53e65ba98e77f31b # initialize rs2
la sp, scratch # base address 
addi sp, sp, -156 # sub immediate from rs1 to counter offset
c.swsp x25, 156(sp)   # store value to put something in memory
c.lwsp x15, 156(sp) # perform operation

# Testcase cp_imm_mul
li x1, 0x46e9adceb9250bfb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x6a97460efaa5ea26 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -160 # sub immediate from rs1 to counter offset
c.swsp x30, 160(sp)   # store value to put something in memory
c.lwsp x1, 160(sp) # perform operation

# Testcase cp_imm_mul
li x20, 0xdfa52ce3f0bbaac9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5bc69db2508f59e7 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -164 # sub immediate from rs1 to counter offset
c.swsp x29, 164(sp)   # store value to put something in memory
c.lwsp x20, 164(sp) # perform operation

# Testcase cp_imm_mul
li x19, 0xb368187c7b046f4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x57919cb4693fc948 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -168 # sub immediate from rs1 to counter offset
c.swsp x10, 168(sp)   # store value to put something in memory
c.lwsp x19, 168(sp) # perform operation

# Testcase cp_imm_mul
li x27, 0x70f2c341338f507d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9d2a9eaf1376f530 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -172 # sub immediate from rs1 to counter offset
c.swsp x13, 172(sp)   # store value to put something in memory
c.lwsp x27, 172(sp) # perform operation

# Testcase cp_imm_mul
li x6, 0xefbd723df16fdec1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x467d81d0fd0c24cd # initialize rs2
la sp, scratch # base address 
addi sp, sp, -176 # sub immediate from rs1 to counter offset
c.swsp x14, 176(sp)   # store value to put something in memory
c.lwsp x6, 176(sp) # perform operation

# Testcase cp_imm_mul
li x27, 0x7e1c7589ad129f94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5ac6f516af49c96c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -180 # sub immediate from rs1 to counter offset
c.swsp x16, 180(sp)   # store value to put something in memory
c.lwsp x27, 180(sp) # perform operation

# Testcase cp_imm_mul
li x19, 0xd0c12d496812dc4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x3c78e4696eab791e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -184 # sub immediate from rs1 to counter offset
c.swsp x27, 184(sp)   # store value to put something in memory
c.lwsp x19, 184(sp) # perform operation

# Testcase cp_imm_mul
li x25, 0xbe667b793f4f60f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x70f4aa642094ade3 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -188 # sub immediate from rs1 to counter offset
c.swsp x18, 188(sp)   # store value to put something in memory
c.lwsp x25, 188(sp) # perform operation

# Testcase cp_imm_mul
li x15, 0x1c992db5e2b18442 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7d38c7e212ce2293 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -192 # sub immediate from rs1 to counter offset
c.swsp x24, 192(sp)   # store value to put something in memory
c.lwsp x15, 192(sp) # perform operation

# Testcase cp_imm_mul
li x16, 0x3a24b041ff171a95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xd89c3b3d96b891a0 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -196 # sub immediate from rs1 to counter offset
c.swsp x3, 196(sp)   # store value to put something in memory
c.lwsp x16, 196(sp) # perform operation

# Testcase cp_imm_mul
li x1, 0x763271b7263a8efc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x13b6f39b66a6bbcf # initialize rs2
la sp, scratch # base address 
addi sp, sp, -200 # sub immediate from rs1 to counter offset
c.swsp x17, 200(sp)   # store value to put something in memory
c.lwsp x1, 200(sp) # perform operation

# Testcase cp_imm_mul
li x19, 0x5be3670d932ba8e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7fce3399aec3689d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -204 # sub immediate from rs1 to counter offset
c.swsp x18, 204(sp)   # store value to put something in memory
c.lwsp x19, 204(sp) # perform operation

# Testcase cp_imm_mul
li x18, 0x17e81ed5a3969bb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x69a32417ef9d4de2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -208 # sub immediate from rs1 to counter offset
c.swsp x12, 208(sp)   # store value to put something in memory
c.lwsp x18, 208(sp) # perform operation

# Testcase cp_imm_mul
li x20, 0x2a10ddf094bdb3b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaa7d295000317190 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -212 # sub immediate from rs1 to counter offset
c.swsp x4, 212(sp)   # store value to put something in memory
c.lwsp x20, 212(sp) # perform operation

# Testcase cp_imm_mul
li x27, 0xe679f48d628428ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x2bd75278cda51133 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -216 # sub immediate from rs1 to counter offset
c.swsp x18, 216(sp)   # store value to put something in memory
c.lwsp x27, 216(sp) # perform operation

# Testcase cp_imm_mul
li x18, 0x662d6e4af15179f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x28c02ddd82eaffbd # initialize rs2
la sp, scratch # base address 
addi sp, sp, -220 # sub immediate from rs1 to counter offset
c.swsp x4, 220(sp)   # store value to put something in memory
c.lwsp x18, 220(sp) # perform operation

# Testcase cp_imm_mul
li x6, 0x5c59d6f90fa30d9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x9c789cea904064f6 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -224 # sub immediate from rs1 to counter offset
c.swsp x15, 224(sp)   # store value to put something in memory
c.lwsp x6, 224(sp) # perform operation

# Testcase cp_imm_mul
li x11, 0x85cb3f21cd44de74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xefe698cf123ad66e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -228 # sub immediate from rs1 to counter offset
c.swsp x24, 228(sp)   # store value to put something in memory
c.lwsp x11, 228(sp) # perform operation

# Testcase cp_imm_mul
li x23, 0x29a239f7d17a3f7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8e0f0b3f4cbf7b66 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -232 # sub immediate from rs1 to counter offset
c.swsp x27, 232(sp)   # store value to put something in memory
c.lwsp x23, 232(sp) # perform operation

# Testcase cp_imm_mul
li x17, 0xea0d4f0302082fdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xadd87c261bc565b9 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -236 # sub immediate from rs1 to counter offset
c.swsp x8, 236(sp)   # store value to put something in memory
c.lwsp x17, 236(sp) # perform operation

# Testcase cp_imm_mul
li x16, 0xae24752611f9b1df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7698a7ca2c79c45b # initialize rs2
la sp, scratch # base address 
addi sp, sp, -240 # sub immediate from rs1 to counter offset
c.swsp x5, 240(sp)   # store value to put something in memory
c.lwsp x16, 240(sp) # perform operation

# Testcase cp_imm_mul
li x27, 0xe106ca970e06a17b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x42a3c0c3c5235ba5 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -244 # sub immediate from rs1 to counter offset
c.swsp x6, 244(sp)   # store value to put something in memory
c.lwsp x27, 244(sp) # perform operation

# Testcase cp_imm_mul
li x27, 0x8f5d9c744b704f3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7a7d4c19ae9ace60 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -248 # sub immediate from rs1 to counter offset
c.swsp x10, 248(sp)   # store value to put something in memory
c.lwsp x27, 248(sp) # perform operation

# Testcase cp_imm_mul
li x9, 0x7a548db63b3fe341 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x9c9eb18f6a69594a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x29, 252(sp)   # store value to put something in memory
c.lwsp x9, 252(sp) # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
