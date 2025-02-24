///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zca//WALLY-COV-c.ldsp.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.984049
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x1)
li x1, 0x56799d9f8b87ba01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x129e742d71d1407e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -208 # sub immediate from rs1 to counter offset
c.sdsp x15, 208(sp)   # store value to put something in memory
c.ldsp x1, 208(sp) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xe016b9d5c9746cfa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xc1d811396a947703 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -360 # sub immediate from rs1 to counter offset
c.sdsp x18, 360(sp)   # store value to put something in memory
c.ldsp x2, 360(sp) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xf803d18183624e79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb769e5f58f804521 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -56 # sub immediate from rs1 to counter offset
c.sdsp x12, 56(sp)   # store value to put something in memory
c.ldsp x3, 56(sp) # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x1dbf1bff86dd0fb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xa0962c95ad79886f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x31, 0(sp)   # store value to put something in memory
c.ldsp x4, 0(sp) # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x9c5b515bc4d59330 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x6626d0fa28307c78 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -448 # sub immediate from rs1 to counter offset
c.sdsp x22, 448(sp)   # store value to put something in memory
c.ldsp x5, 448(sp) # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x37e5115e2ebeb7fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ceb931f617d9690 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -392 # sub immediate from rs1 to counter offset
c.sdsp x12, 392(sp)   # store value to put something in memory
c.ldsp x6, 392(sp) # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xf1e1ace5d232709f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe529f08ee8fd6b76 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -192 # sub immediate from rs1 to counter offset
c.sdsp x12, 192(sp)   # store value to put something in memory
c.ldsp x7, 192(sp) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xced67943be870f79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0ee0e5fe1d97a844 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -296 # sub immediate from rs1 to counter offset
c.sdsp x29, 296(sp)   # store value to put something in memory
c.ldsp x8, 296(sp) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x5d44164303d459f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xbb249bb8cfc1576f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -136 # sub immediate from rs1 to counter offset
c.sdsp x16, 136(sp)   # store value to put something in memory
c.ldsp x9, 136(sp) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xaa1510a96dab5bec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x679d1fafc8004607 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -456 # sub immediate from rs1 to counter offset
c.sdsp x16, 456(sp)   # store value to put something in memory
c.ldsp x10, 456(sp) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x99381cab9a145286 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x025206963d898c35 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x26, 504(sp)   # store value to put something in memory
c.ldsp x11, 504(sp) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x298d6c0bbb84ce8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xde28c5dedfe1e318 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -480 # sub immediate from rs1 to counter offset
c.sdsp x8, 480(sp)   # store value to put something in memory
c.ldsp x12, 480(sp) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x2abfded478cc4df6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xe321c21836767c9e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -400 # sub immediate from rs1 to counter offset
c.sdsp x30, 400(sp)   # store value to put something in memory
c.ldsp x13, 400(sp) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x7abf039d4f82eb9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xa46a8dce33875321 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -336 # sub immediate from rs1 to counter offset
c.sdsp x30, 336(sp)   # store value to put something in memory
c.ldsp x14, 336(sp) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xe5220399c16e030c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0f83946caff4d767 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -200 # sub immediate from rs1 to counter offset
c.sdsp x3, 200(sp)   # store value to put something in memory
c.ldsp x15, 200(sp) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x08f6ecf1823e4d4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xd5f4d54f81137701 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -336 # sub immediate from rs1 to counter offset
c.sdsp x25, 336(sp)   # store value to put something in memory
c.ldsp x16, 336(sp) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x977a3ccbd2f3233c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xa2111baafc7e0b28 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -272 # sub immediate from rs1 to counter offset
c.sdsp x14, 272(sp)   # store value to put something in memory
c.ldsp x17, 272(sp) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x130388d74881a596 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x66d5fc702e751a88 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -456 # sub immediate from rs1 to counter offset
c.sdsp x31, 456(sp)   # store value to put something in memory
c.ldsp x18, 456(sp) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x2ad8aa223b382077 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x1aa0f85fa565e344 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -48 # sub immediate from rs1 to counter offset
c.sdsp x25, 48(sp)   # store value to put something in memory
c.ldsp x19, 48(sp) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xb072a3213b172a41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x4c9d072134413dc3 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -48 # sub immediate from rs1 to counter offset
c.sdsp x15, 48(sp)   # store value to put something in memory
c.ldsp x20, 48(sp) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x889750a86420e30d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x419ae1c610fbe43e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -64 # sub immediate from rs1 to counter offset
c.sdsp x6, 64(sp)   # store value to put something in memory
c.ldsp x21, 64(sp) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x98ca3004bd6908e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x34d835da68d59217 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -160 # sub immediate from rs1 to counter offset
c.sdsp x26, 160(sp)   # store value to put something in memory
c.ldsp x22, 160(sp) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x298e2294710bf4e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xc0d9709c6b59e94e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -96 # sub immediate from rs1 to counter offset
c.sdsp x27, 96(sp)   # store value to put something in memory
c.ldsp x23, 96(sp) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x781afd2aa7d4f6e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0e27633e768996c5 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -384 # sub immediate from rs1 to counter offset
c.sdsp x15, 384(sp)   # store value to put something in memory
c.ldsp x24, 384(sp) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x62e721999c9d523b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x01f87f7f3e911ea4 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -32 # sub immediate from rs1 to counter offset
c.sdsp x23, 32(sp)   # store value to put something in memory
c.ldsp x25, 32(sp) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xd85b20ad8a7c7ae7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0a178d923274d6f1 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -40 # sub immediate from rs1 to counter offset
c.sdsp x11, 40(sp)   # store value to put something in memory
c.ldsp x26, 40(sp) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xd1de8f25dca79302 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5336f215437cbf10 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -280 # sub immediate from rs1 to counter offset
c.sdsp x6, 280(sp)   # store value to put something in memory
c.ldsp x27, 280(sp) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xa6b1d20f1f6ae91d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x04e03fb10344d469 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -80 # sub immediate from rs1 to counter offset
c.sdsp x9, 80(sp)   # store value to put something in memory
c.ldsp x28, 80(sp) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xa96f09d6d5c4a922 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xe95a2bdb7afa8de7 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -288 # sub immediate from rs1 to counter offset
c.sdsp x9, 288(sp)   # store value to put something in memory
c.ldsp x29, 288(sp) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x19c50fedc990d57a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x62f84d738183740d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -440 # sub immediate from rs1 to counter offset
c.sdsp x23, 440(sp)   # store value to put something in memory
c.ldsp x30, 440(sp) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x7a905425e5196d8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x807dbf43012804e7 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -376 # sub immediate from rs1 to counter offset
c.sdsp x24, 376(sp)   # store value to put something in memory
c.ldsp x31, 376(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x3, 0x49d967886c3ae5ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x43284a5937d0b125 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x0, 0(sp)   # store value to put something in memory
c.ldsp x3, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x21, 0x73aedc375fd38a2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x8, 0(sp)   # store value to put something in memory
c.ldsp x21, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x29, 0x9b77ffb684ee7aac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x15, 504(sp)   # store value to put something in memory
c.ldsp x29, 504(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x2, 0xd538980f7481e925 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x73a2dd9a8696edf2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x0, 0(sp)   # store value to put something in memory
c.ldsp x2, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x15, 0xd6a742f9b88af7fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -8 # sub immediate from rs1 to counter offset
c.sdsp x27, 8(sp)   # store value to put something in memory
c.ldsp x15, 8(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x31, 0x66808f4ed178d050 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x30, 504(sp)   # store value to put something in memory
c.ldsp x31, 504(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x26, 0x9556abc1041a7ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x15ecc8706fcd12a0 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x0, 0(sp)   # store value to put something in memory
c.ldsp x26, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x12, 0x14616cf768f516e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000002 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -16 # sub immediate from rs1 to counter offset
c.sdsp x30, 16(sp)   # store value to put something in memory
c.ldsp x12, 16(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x23, 0xec90badedaf930d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000002 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x13, 504(sp)   # store value to put something in memory
c.ldsp x23, 504(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x9, 0x1156977f571c989f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x10b8efecc62558ac # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x0, 0(sp)   # store value to put something in memory
c.ldsp x9, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x13, 0x537baebc1f6f4886 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x24, 0(sp)   # store value to put something in memory
c.ldsp x13, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x24, 0x6789ce011fbb84a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x6, 504(sp)   # store value to put something in memory
c.ldsp x24, 504(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x4, 0x694ed64ca246919f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xab82fd0f95bdc2ad # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x0, 0(sp)   # store value to put something in memory
c.ldsp x4, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x9, 0xfd95e87b4c7944a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8000000000000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -8 # sub immediate from rs1 to counter offset
c.sdsp x10, 8(sp)   # store value to put something in memory
c.ldsp x9, 8(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x3, 0x79caadf97ff60a20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x23, 504(sp)   # store value to put something in memory
c.ldsp x3, 504(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x7, 0x368d47f36800fa3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xe34cc485a65615eb # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x0, 0(sp)   # store value to put something in memory
c.ldsp x7, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x1, 0x0bfdd82ef4462c69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffffffffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x14, 504(sp)   # store value to put something in memory
c.ldsp x1, 504(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x24, 0xd8c34844b50817f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7fffffffffffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x1, 504(sp)   # store value to put something in memory
c.ldsp x24, 504(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x22, 0x2cb94e13eef3cca3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xc2aec7c5d0361831 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x0, 0(sp)   # store value to put something in memory
c.ldsp x22, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x15, 0xe2717c55845e6920 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7ffffffffffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -496 # sub immediate from rs1 to counter offset
c.sdsp x31, 496(sp)   # store value to put something in memory
c.ldsp x15, 496(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x20, 0xd5a01fa58fdb468c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7ffffffffffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x14, 504(sp)   # store value to put something in memory
c.ldsp x20, 504(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x16, 0xe536f188d689522b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x824dd81c0535aadd # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x0, 0(sp)   # store value to put something in memory
c.ldsp x16, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x23, 0x59fac5a68a92d7fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x27, 504(sp)   # store value to put something in memory
c.ldsp x23, 504(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x25, 0x1ff344b8e3195b5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x11, 504(sp)   # store value to put something in memory
c.ldsp x25, 504(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x16, 0x9686273f2b8f9b6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x856fba895bc5bd06 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x0, 0(sp)   # store value to put something in memory
c.ldsp x16, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x14, 0x90daf91b075faa4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfffffffffffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -496 # sub immediate from rs1 to counter offset
c.sdsp x23, 496(sp)   # store value to put something in memory
c.ldsp x14, 496(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x11, 0xf851be7120609ffb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xfffffffffffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x17, 504(sp)   # store value to put something in memory
c.ldsp x11, 504(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x29, 0xa9121739e564a10e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x8fd7a974182305db # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x0, 0(sp)   # store value to put something in memory
c.ldsp x29, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x20, 0x19d931fe5cddccc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5bbc887763ae86f7 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -440 # sub immediate from rs1 to counter offset
c.sdsp x22, 440(sp)   # store value to put something in memory
c.ldsp x20, 440(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x22, 0x3ff0591298c1add9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5bbc887763ae86f7 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x8, 504(sp)   # store value to put something in memory
c.ldsp x22, 504(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x14, 0xcee92fa1636345ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x85b9614c41ab0291 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x0, 0(sp)   # store value to put something in memory
c.ldsp x14, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x4, 0x2bce7f9578a54b6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
la sp, scratch # base address 
addi sp, sp, -336 # sub immediate from rs1 to counter offset
c.sdsp x9, 336(sp)   # store value to put something in memory
c.ldsp x4, 336(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x1, 0xf555f09afe98fbb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x15, 504(sp)   # store value to put something in memory
c.ldsp x1, 504(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x6, 0x83bdf2610ace36ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xe8dd7eb0b4f83db6 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x0, 0(sp)   # store value to put something in memory
c.ldsp x6, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x26, 0xbba6a1903b03e06d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5555555555555555 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -168 # sub immediate from rs1 to counter offset
c.sdsp x13, 168(sp)   # store value to put something in memory
c.ldsp x26, 168(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x6, 0x7afa161200437d4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5555555555555555 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x22, 504(sp)   # store value to put something in memory
c.ldsp x6, 504(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x21, 0xd8737213c8fc60e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xe26513c66de6d754 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x0, 0(sp)   # store value to put something in memory
c.ldsp x21, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x10, 0xe8f95a77a0362d34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000ffffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x14, 504(sp)   # store value to put something in memory
c.ldsp x10, 504(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x2, 0x9e20cac31b4cddbc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000ffffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x8, 504(sp)   # store value to put something in memory
c.ldsp x2, 504(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x15, 0x3713d260d0a23820 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x37b65a2484d902ec # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x0, 0(sp)   # store value to put something in memory
c.ldsp x15, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x7, 0x2b2c9a15d73a9b38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000fffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -496 # sub immediate from rs1 to counter offset
c.sdsp x29, 496(sp)   # store value to put something in memory
c.ldsp x7, 496(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x4, 0xb9b20c850a8d2e58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000fffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x6, 504(sp)   # store value to put something in memory
c.ldsp x4, 504(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x29, 0x5abfcff01df7a683 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x55cfbf04d111c3f2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x0, 0(sp)   # store value to put something in memory
c.ldsp x29, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x1, 0x119bf1cc27beabe6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x27, 0(sp)   # store value to put something in memory
c.ldsp x1, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x5, 0xb7e9ebb082dbe89f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000100000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x17, 504(sp)   # store value to put something in memory
c.ldsp x5, 504(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x4, 0x2bf0e96904664b0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x1649384682682a68 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x0, 0(sp)   # store value to put something in memory
c.ldsp x4, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x31, 0x9457abc7f6eff664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000100000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -8 # sub immediate from rs1 to counter offset
c.sdsp x10, 8(sp)   # store value to put something in memory
c.ldsp x31, 8(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x25, 0x433af814f27efdb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000100000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x21, 504(sp)   # store value to put something in memory
c.ldsp x25, 504(sp) # perform operation

# Testcase cp_imm_mul
li x28, 0x9942d91fa73f3a62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xc129e6722ec6059d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x30, 0(sp)   # store value to put something in memory
c.ldsp x28, 0(sp) # perform operation

# Testcase cp_imm_mul
li x8, 0xa5540f75f41e025f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xd0a77c579b5891f1 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -8 # sub immediate from rs1 to counter offset
c.sdsp x27, 8(sp)   # store value to put something in memory
c.ldsp x8, 8(sp) # perform operation

# Testcase cp_imm_mul
li x20, 0x849668f52319bd80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xdeea5939572879c5 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -16 # sub immediate from rs1 to counter offset
c.sdsp x22, 16(sp)   # store value to put something in memory
c.ldsp x20, 16(sp) # perform operation

# Testcase cp_imm_mul
li x13, 0xec86e228827f086c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x4e1f5f0beeebc5fe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -24 # sub immediate from rs1 to counter offset
c.sdsp x3, 24(sp)   # store value to put something in memory
c.ldsp x13, 24(sp) # perform operation

# Testcase cp_imm_mul
li x31, 0x8b63897aa520305b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x3977f63497ad55b8 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -32 # sub immediate from rs1 to counter offset
c.sdsp x27, 32(sp)   # store value to put something in memory
c.ldsp x31, 32(sp) # perform operation

# Testcase cp_imm_mul
li x29, 0x04583ea47bdc3596 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xa149aa24ee1e56e7 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -40 # sub immediate from rs1 to counter offset
c.sdsp x7, 40(sp)   # store value to put something in memory
c.ldsp x29, 40(sp) # perform operation

# Testcase cp_imm_mul
li x20, 0xf9bd9e7758cd3e26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fa54b5f96057dff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -48 # sub immediate from rs1 to counter offset
c.sdsp x31, 48(sp)   # store value to put something in memory
c.ldsp x20, 48(sp) # perform operation

# Testcase cp_imm_mul
li x5, 0xa6b705ff1f1edb24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x9751fe013c1e3580 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -56 # sub immediate from rs1 to counter offset
c.sdsp x20, 56(sp)   # store value to put something in memory
c.ldsp x5, 56(sp) # perform operation

# Testcase cp_imm_mul
li x9, 0x146542470e597313 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x4328a6706da9c830 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -64 # sub immediate from rs1 to counter offset
c.sdsp x31, 64(sp)   # store value to put something in memory
c.ldsp x9, 64(sp) # perform operation

# Testcase cp_imm_mul
li x16, 0xd4da007164ee9776 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xe4326b2320bb429d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -72 # sub immediate from rs1 to counter offset
c.sdsp x19, 72(sp)   # store value to put something in memory
c.ldsp x16, 72(sp) # perform operation

# Testcase cp_imm_mul
li x25, 0x2896c5d0c89982bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x201539a9434e000e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -80 # sub immediate from rs1 to counter offset
c.sdsp x15, 80(sp)   # store value to put something in memory
c.ldsp x25, 80(sp) # perform operation

# Testcase cp_imm_mul
li x18, 0xf9e730a876b84c38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5107f99937cc793e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -88 # sub immediate from rs1 to counter offset
c.sdsp x8, 88(sp)   # store value to put something in memory
c.ldsp x18, 88(sp) # perform operation

# Testcase cp_imm_mul
li x2, 0xe7830a114062bc9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xbfffa665bf5b0007 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -96 # sub immediate from rs1 to counter offset
c.sdsp x29, 96(sp)   # store value to put something in memory
c.ldsp x2, 96(sp) # perform operation

# Testcase cp_imm_mul
li x26, 0xbb418e8e0e8272e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xd380462a06877a88 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -104 # sub immediate from rs1 to counter offset
c.sdsp x5, 104(sp)   # store value to put something in memory
c.ldsp x26, 104(sp) # perform operation

# Testcase cp_imm_mul
li x19, 0x183602a1ab6d5403 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5d91d711c211913f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -112 # sub immediate from rs1 to counter offset
c.sdsp x9, 112(sp)   # store value to put something in memory
c.ldsp x19, 112(sp) # perform operation

# Testcase cp_imm_mul
li x13, 0x258e2b1fadef886f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xcdb71277da93cf49 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -120 # sub immediate from rs1 to counter offset
c.sdsp x21, 120(sp)   # store value to put something in memory
c.ldsp x13, 120(sp) # perform operation

# Testcase cp_imm_mul
li x2, 0x0c1557eccd5bcbbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x94f4e393891360c0 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -128 # sub immediate from rs1 to counter offset
c.sdsp x29, 128(sp)   # store value to put something in memory
c.ldsp x2, 128(sp) # perform operation

# Testcase cp_imm_mul
li x17, 0x91452334d2428754 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x29c96b75e58f8ccd # initialize rs2
la sp, scratch # base address 
addi sp, sp, -136 # sub immediate from rs1 to counter offset
c.sdsp x31, 136(sp)   # store value to put something in memory
c.ldsp x17, 136(sp) # perform operation

# Testcase cp_imm_mul
li x25, 0x317c66f4064025f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x94242a66801d07ce # initialize rs2
la sp, scratch # base address 
addi sp, sp, -144 # sub immediate from rs1 to counter offset
c.sdsp x8, 144(sp)   # store value to put something in memory
c.ldsp x25, 144(sp) # perform operation

# Testcase cp_imm_mul
li x15, 0xd66779b5e86aa07b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x8b934bacf2c9b07a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -152 # sub immediate from rs1 to counter offset
c.sdsp x16, 152(sp)   # store value to put something in memory
c.ldsp x15, 152(sp) # perform operation

# Testcase cp_imm_mul
li x24, 0x04a77ded8201b07d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xcd452fdba7db9aa9 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -160 # sub immediate from rs1 to counter offset
c.sdsp x12, 160(sp)   # store value to put something in memory
c.ldsp x24, 160(sp) # perform operation

# Testcase cp_imm_mul
li x23, 0x887fd8ee15605ee9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xd18e7b78eed07e97 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -168 # sub immediate from rs1 to counter offset
c.sdsp x27, 168(sp)   # store value to put something in memory
c.ldsp x23, 168(sp) # perform operation

# Testcase cp_imm_mul
li x26, 0x1bdf03d8e688bb89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x141758ccb939ca41 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -176 # sub immediate from rs1 to counter offset
c.sdsp x18, 176(sp)   # store value to put something in memory
c.ldsp x26, 176(sp) # perform operation

# Testcase cp_imm_mul
li x1, 0x57c0d542d322bf41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x9ea7285773ba6d2a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -184 # sub immediate from rs1 to counter offset
c.sdsp x17, 184(sp)   # store value to put something in memory
c.ldsp x1, 184(sp) # perform operation

# Testcase cp_imm_mul
li x11, 0x1b911f249084f291 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5ae0552e564a3079 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -192 # sub immediate from rs1 to counter offset
c.sdsp x14, 192(sp)   # store value to put something in memory
c.ldsp x11, 192(sp) # perform operation

# Testcase cp_imm_mul
li x19, 0x71f8b40d049903c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x72fbd1311f91ab0c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -200 # sub immediate from rs1 to counter offset
c.sdsp x24, 200(sp)   # store value to put something in memory
c.ldsp x19, 200(sp) # perform operation

# Testcase cp_imm_mul
li x29, 0xabdaf693214198a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x20ea212420c0a2c4 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -208 # sub immediate from rs1 to counter offset
c.sdsp x4, 208(sp)   # store value to put something in memory
c.ldsp x29, 208(sp) # perform operation

# Testcase cp_imm_mul
li x30, 0x4ae5f2cfd3e5cd35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x95b9c8889a143c28 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -216 # sub immediate from rs1 to counter offset
c.sdsp x20, 216(sp)   # store value to put something in memory
c.ldsp x30, 216(sp) # perform operation

# Testcase cp_imm_mul
li x3, 0xaabe4d8a4f5bd702 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xf375a061b1112540 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -224 # sub immediate from rs1 to counter offset
c.sdsp x30, 224(sp)   # store value to put something in memory
c.ldsp x3, 224(sp) # perform operation

# Testcase cp_imm_mul
li x10, 0x75f230dd04db105e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x46107869be59108f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -232 # sub immediate from rs1 to counter offset
c.sdsp x16, 232(sp)   # store value to put something in memory
c.ldsp x10, 232(sp) # perform operation

# Testcase cp_imm_mul
li x15, 0xad535160ca54700b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x399afb316fecd5f2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -240 # sub immediate from rs1 to counter offset
c.sdsp x25, 240(sp)   # store value to put something in memory
c.ldsp x15, 240(sp) # perform operation

# Testcase cp_imm_mul
li x19, 0xf03400c223d22d54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0319c6519dd9a159 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -248 # sub immediate from rs1 to counter offset
c.sdsp x18, 248(sp)   # store value to put something in memory
c.ldsp x19, 248(sp) # perform operation

# Testcase cp_imm_mul
li x28, 0x7aeaac3cd6ed7a2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xa653a000c398de39 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -256 # sub immediate from rs1 to counter offset
c.sdsp x5, 256(sp)   # store value to put something in memory
c.ldsp x28, 256(sp) # perform operation

# Testcase cp_imm_mul
li x10, 0x5eb8d29c5aa418be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x79783df0888c3137 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -264 # sub immediate from rs1 to counter offset
c.sdsp x22, 264(sp)   # store value to put something in memory
c.ldsp x10, 264(sp) # perform operation

# Testcase cp_imm_mul
li x27, 0x6ef20c42abc242bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb72ee50a090ff004 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -272 # sub immediate from rs1 to counter offset
c.sdsp x12, 272(sp)   # store value to put something in memory
c.ldsp x27, 272(sp) # perform operation

# Testcase cp_imm_mul
li x22, 0x5846eeb972228741 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x26ebf2cb13b18616 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -280 # sub immediate from rs1 to counter offset
c.sdsp x17, 280(sp)   # store value to put something in memory
c.ldsp x22, 280(sp) # perform operation

# Testcase cp_imm_mul
li x8, 0xa34d3e68637fddef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x6e14c1da8f33626e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -288 # sub immediate from rs1 to counter offset
c.sdsp x3, 288(sp)   # store value to put something in memory
c.ldsp x8, 288(sp) # perform operation

# Testcase cp_imm_mul
li x26, 0xb49297e91f500445 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x120c0776cef893d7 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -296 # sub immediate from rs1 to counter offset
c.sdsp x28, 296(sp)   # store value to put something in memory
c.ldsp x26, 296(sp) # perform operation

# Testcase cp_imm_mul
li x21, 0xb3a6ed7155a0e905 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xc21d7486388afa92 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -304 # sub immediate from rs1 to counter offset
c.sdsp x1, 304(sp)   # store value to put something in memory
c.ldsp x21, 304(sp) # perform operation

# Testcase cp_imm_mul
li x28, 0x7a0c9d610b5345f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x338e42df5f51906a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -312 # sub immediate from rs1 to counter offset
c.sdsp x29, 312(sp)   # store value to put something in memory
c.ldsp x28, 312(sp) # perform operation

# Testcase cp_imm_mul
li x1, 0xe655fa1a6520ce44 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xa13eb77aa8919d61 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -320 # sub immediate from rs1 to counter offset
c.sdsp x27, 320(sp)   # store value to put something in memory
c.ldsp x1, 320(sp) # perform operation

# Testcase cp_imm_mul
li x5, 0x0c0b3558ce703da4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xdef980398fc1d167 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -328 # sub immediate from rs1 to counter offset
c.sdsp x25, 328(sp)   # store value to put something in memory
c.ldsp x5, 328(sp) # perform operation

# Testcase cp_imm_mul
li x13, 0x24e76f424cd10c5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x95c5aea4a7ba5755 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -336 # sub immediate from rs1 to counter offset
c.sdsp x31, 336(sp)   # store value to put something in memory
c.ldsp x13, 336(sp) # perform operation

# Testcase cp_imm_mul
li x30, 0xaab6360fe79f40ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xdf382b62e21652a5 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -344 # sub immediate from rs1 to counter offset
c.sdsp x29, 344(sp)   # store value to put something in memory
c.ldsp x30, 344(sp) # perform operation

# Testcase cp_imm_mul
li x23, 0xa32f6c8efbd712f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x36926c6d886d5d90 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -352 # sub immediate from rs1 to counter offset
c.sdsp x4, 352(sp)   # store value to put something in memory
c.ldsp x23, 352(sp) # perform operation

# Testcase cp_imm_mul
li x11, 0x5b136a614ef5ce1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x2dcaee1663c092f5 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -360 # sub immediate from rs1 to counter offset
c.sdsp x7, 360(sp)   # store value to put something in memory
c.ldsp x11, 360(sp) # perform operation

# Testcase cp_imm_mul
li x20, 0x19e86f2321d2917e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xba75b195da80e102 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -368 # sub immediate from rs1 to counter offset
c.sdsp x10, 368(sp)   # store value to put something in memory
c.ldsp x20, 368(sp) # perform operation

# Testcase cp_imm_mul
li x19, 0xe436d25282395b17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xd894d8f2cdd43d6d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -376 # sub immediate from rs1 to counter offset
c.sdsp x15, 376(sp)   # store value to put something in memory
c.ldsp x19, 376(sp) # perform operation

# Testcase cp_imm_mul
li x13, 0xd901da7cb7402153 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xd3648924cc5fe4e0 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -384 # sub immediate from rs1 to counter offset
c.sdsp x18, 384(sp)   # store value to put something in memory
c.ldsp x13, 384(sp) # perform operation

# Testcase cp_imm_mul
li x30, 0xc2db7aafdd033840 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x063a2532d0e94e8f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -392 # sub immediate from rs1 to counter offset
c.sdsp x31, 392(sp)   # store value to put something in memory
c.ldsp x30, 392(sp) # perform operation

# Testcase cp_imm_mul
li x9, 0x2e76242dd84cdf0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x126c93ff8da7c7da # initialize rs2
la sp, scratch # base address 
addi sp, sp, -400 # sub immediate from rs1 to counter offset
c.sdsp x3, 400(sp)   # store value to put something in memory
c.ldsp x9, 400(sp) # perform operation

# Testcase cp_imm_mul
li x30, 0xfe962f872fe1ebf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xebef5912c1a58e91 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -408 # sub immediate from rs1 to counter offset
c.sdsp x15, 408(sp)   # store value to put something in memory
c.ldsp x30, 408(sp) # perform operation

# Testcase cp_imm_mul
li x13, 0x7d23c1554f48ca93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x2509e6e456b126c9 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -416 # sub immediate from rs1 to counter offset
c.sdsp x23, 416(sp)   # store value to put something in memory
c.ldsp x13, 416(sp) # perform operation

# Testcase cp_imm_mul
li x10, 0x8ddc08e2f89974f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x831c96f85f2658cc # initialize rs2
la sp, scratch # base address 
addi sp, sp, -424 # sub immediate from rs1 to counter offset
c.sdsp x28, 424(sp)   # store value to put something in memory
c.ldsp x10, 424(sp) # perform operation

# Testcase cp_imm_mul
li x2, 0xf74e518da37d4a08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x85f2243df42d6c97 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -432 # sub immediate from rs1 to counter offset
c.sdsp x25, 432(sp)   # store value to put something in memory
c.ldsp x2, 432(sp) # perform operation

# Testcase cp_imm_mul
li x24, 0x2ffc1bcebbc42270 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x4994e0835c8a16f3 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -440 # sub immediate from rs1 to counter offset
c.sdsp x5, 440(sp)   # store value to put something in memory
c.ldsp x24, 440(sp) # perform operation

# Testcase cp_imm_mul
li x17, 0x89d06ea2015ab3c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x6387acb306fc07d3 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -448 # sub immediate from rs1 to counter offset
c.sdsp x4, 448(sp)   # store value to put something in memory
c.ldsp x17, 448(sp) # perform operation

# Testcase cp_imm_mul
li x22, 0xb8cbdc4c269550de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x088349fbd4e4b1fc # initialize rs2
la sp, scratch # base address 
addi sp, sp, -456 # sub immediate from rs1 to counter offset
c.sdsp x31, 456(sp)   # store value to put something in memory
c.ldsp x22, 456(sp) # perform operation

# Testcase cp_imm_mul
li x13, 0xbaf329e833f487f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xdca0371270c6ca84 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -464 # sub immediate from rs1 to counter offset
c.sdsp x17, 464(sp)   # store value to put something in memory
c.ldsp x13, 464(sp) # perform operation

# Testcase cp_imm_mul
li x12, 0x2e89aa0e9d5f784b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x2843c016dcdfa56b # initialize rs2
la sp, scratch # base address 
addi sp, sp, -472 # sub immediate from rs1 to counter offset
c.sdsp x4, 472(sp)   # store value to put something in memory
c.ldsp x12, 472(sp) # perform operation

# Testcase cp_imm_mul
li x10, 0x443e8bff592370af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x85c7a12f0c618e19 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -480 # sub immediate from rs1 to counter offset
c.sdsp x20, 480(sp)   # store value to put something in memory
c.ldsp x10, 480(sp) # perform operation

# Testcase cp_imm_mul
li x17, 0xab5641eba148e504 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5a80f46a81a3b7a8 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -488 # sub immediate from rs1 to counter offset
c.sdsp x30, 488(sp)   # store value to put something in memory
c.ldsp x17, 488(sp) # perform operation

# Testcase cp_imm_mul
li x14, 0xae3b18fa776fa84b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x27b1bc03cf3ac5bf # initialize rs2
la sp, scratch # base address 
addi sp, sp, -496 # sub immediate from rs1 to counter offset
c.sdsp x3, 496(sp)   # store value to put something in memory
c.ldsp x14, 496(sp) # perform operation

# Testcase cp_imm_mul
li x9, 0xf7b466d24cbe3249 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x3faf33e0776ad219 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x19, 504(sp)   # store value to put something in memory
c.ldsp x9, 504(sp) # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
