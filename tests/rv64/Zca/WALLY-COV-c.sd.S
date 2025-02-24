///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zca//WALLY-COV-c.sd.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.991189
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rs2 (Test source rs2 = x8)
li x22, 0xb7603110fb77100d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x8, 0x58e9d334cccbd334 # initialize rs2 with random value
addi x12, x12, -144 # sub immediate from rs1 to counter offset
c.sd x8, 144(x12) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x9)
li x6, 0x1f377c9d1ddfd6cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x9, 0xc7241076219b680e # initialize rs2 with random value
addi x15, x15, -208 # sub immediate from rs1 to counter offset
c.sd x9, 208(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x10)
li x5, 0x2f66d2b394963d1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x10, 0xfa6bbcd16867fe84 # initialize rs2 with random value
addi x11, x11, -16 # sub immediate from rs1 to counter offset
c.sd x10, 16(x11) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x11)
li x12, 0x2e6a551869fa88ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x11, 0xf74a99dff8d06855 # initialize rs2 with random value
addi x12, x12, -192 # sub immediate from rs1 to counter offset
c.sd x11, 192(x12) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x12)
li x1, 0x7ca5f03e2a59bfa3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x12, 0x1dfcda6491999407 # initialize rs2 with random value
addi x13, x13, -80 # sub immediate from rs1 to counter offset
c.sd x12, 80(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x13)
li x15, 0x5be81ed782efded8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x13, 0x86d7df6a43e5e395 # initialize rs2 with random value
addi x14, x14, -216 # sub immediate from rs1 to counter offset
c.sd x13, 216(x14) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x14)
li x2, 0x5692ffd9b2ccf07e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x14, 0x884bf10c2f8f3f71 # initialize rs2 with random value
addi x15, x15, -208 # sub immediate from rs1 to counter offset
c.sd x14, 208(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x15)
li x27, 0xb4f1bb1c60bd319b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x15, 0x5cfa186250340843 # initialize rs2 with random value
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sd x15, 0(x14) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x29, 0x2fadb3632221fe0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x14, 0x0000000000000000 # initialize rs2 with random value
addi x10, x10, -232 # sub immediate from rs1 to counter offset
c.sd x14, 232(x10) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x21, 0x69f0a2cb62989632 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x15, 0x0000000000000001 # initialize rs2 with random value
addi x13, x13, -40 # sub immediate from rs1 to counter offset
c.sd x15, 40(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x22, 0x496efe74019e8ad1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x9, 0x0000000000000002 # initialize rs2 with random value
addi x14, x14, -152 # sub immediate from rs1 to counter offset
c.sd x9, 152(x14) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x19, 0xa2c6855dc8936b4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x14, 0x8000000000000000 # initialize rs2 with random value
addi x12, x12, -240 # sub immediate from rs1 to counter offset
c.sd x14, 240(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x6, 0x14890156b2166f24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x9, 0x8000000000000001 # initialize rs2 with random value
addi x15, x15, -192 # sub immediate from rs1 to counter offset
c.sd x9, 192(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x31, 0x46515ada43c7bf87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x10, 0x7fffffffffffffff # initialize rs2 with random value
addi x13, x13, -88 # sub immediate from rs1 to counter offset
c.sd x10, 88(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x24, 0x2b0faa9e01013ac1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x10, 0x7ffffffffffffffe # initialize rs2 with random value
addi x14, x14, -200 # sub immediate from rs1 to counter offset
c.sd x10, 200(x14) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x19, 0x1fab6d81eac7157e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x13, 0xffffffffffffffff # initialize rs2 with random value
addi x11, x11, -40 # sub immediate from rs1 to counter offset
c.sd x13, 40(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x8, 0x8ace1def96b5fde9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x10, 0xfffffffffffffffe # initialize rs2 with random value
addi x11, x11, -56 # sub immediate from rs1 to counter offset
c.sd x10, 56(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x21, 0x622f9833adf5ad48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x8, 0x5bbc887763ae86f7 # initialize rs2 with random value
addi x14, x14, -112 # sub immediate from rs1 to counter offset
c.sd x8, 112(x14) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x29, 0x1890eada7e69aaa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2 with random value
addi x12, x12, -192 # sub immediate from rs1 to counter offset
c.sd x15, 192(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x29, 0x170241ba9b970a98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x14, 0x5555555555555555 # initialize rs2 with random value
addi x8, x8, -200 # sub immediate from rs1 to counter offset
c.sd x14, 200(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x24, 0xc08d4ca26d8a393c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x14, 0x00000000ffffffff # initialize rs2 with random value
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sd x14, 0(x10) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x18, 0xd765aeaf9362ab74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x14, 0x00000000fffffffe # initialize rs2 with random value
addi x10, x10, -112 # sub immediate from rs1 to counter offset
c.sd x14, 112(x10) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x21, 0x0eeb48a510108d7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x15, 0x0000000100000000 # initialize rs2 with random value
addi x11, x11, -240 # sub immediate from rs1 to counter offset
c.sd x15, 240(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x17, 0x0074d99195e3d03c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x15, 0x0000000100000001 # initialize rs2 with random value
addi x13, x13, -176 # sub immediate from rs1 to counter offset
c.sd x15, 176(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x8)
li x26, 0x5cdca80d10ad95a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x15, 0xb7f92fca188c6f48 # initialize rs2 with random value
addi x8, x8, -160 # sub immediate from rs1 to counter offset
c.sd x15, 160(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
li x18, 0xf772cd24ca8ab502 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address
li x8, 0x40a35ee69411f800 # initialize rs2 with random value
addi x9, x9, -120 # sub immediate from rs1 to counter offset
c.sd x8, 120(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
li x3, 0x9c734e2bd3bc86ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x13, 0xa7e82f293e1c74b9 # initialize rs2 with random value
addi x10, x10, -120 # sub immediate from rs1 to counter offset
c.sd x13, 120(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
li x4, 0x5bacbe5cc5ea02a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x10, 0x4f52da6107194687 # initialize rs2 with random value
addi x11, x11, -64 # sub immediate from rs1 to counter offset
c.sd x10, 64(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
li x18, 0x7c0d3e50cbaee276 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x14, 0xf70285f0fd4d1f7a # initialize rs2 with random value
addi x12, x12, -248 # sub immediate from rs1 to counter offset
c.sd x14, 248(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
li x7, 0xe64b1beb0bf31190 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x9, 0x93a97f31f1c347d4 # initialize rs2 with random value
addi x13, x13, -112 # sub immediate from rs1 to counter offset
c.sd x9, 112(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
li x31, 0x5119dae2954af759 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x15, 0xcf55ab9851970a0d # initialize rs2 with random value
addi x14, x14, -80 # sub immediate from rs1 to counter offset
c.sd x15, 80(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
li x22, 0x1d3e4ef1592d491c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x9, 0x7ed6e95c44c988f3 # initialize rs2 with random value
addi x15, x15, -48 # sub immediate from rs1 to counter offset
c.sd x9, 48(x15) # perform operation 

# Testcase cp_imm_mul
li x27, 0xf9983976be62aa9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x10, 0x20425d43f1d8b3e6 # initialize rs2 with random value
addi x13, x13, -0 # sub immediate from rs1 to counter offset
c.sd x10, 0(x13) # perform operation 

# Testcase cp_imm_mul
li x22, 0xb73b121cdeb7a173 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x11, 0xdd10f3492ad1b796 # initialize rs2 with random value
addi x12, x12, -8 # sub immediate from rs1 to counter offset
c.sd x11, 8(x12) # perform operation 

# Testcase cp_imm_mul
li x17, 0xf42bb147280419e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x10, 0x218ee6b233550e51 # initialize rs2 with random value
addi x8, x8, -16 # sub immediate from rs1 to counter offset
c.sd x10, 16(x8) # perform operation 

# Testcase cp_imm_mul
li x16, 0x0f196382d1281a48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x12, 0x41ba24def2d69b12 # initialize rs2 with random value
addi x13, x13, -24 # sub immediate from rs1 to counter offset
c.sd x12, 24(x13) # perform operation 

# Testcase cp_imm_mul
li x24, 0x637152d0a697ce64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x12, 0xe79ef936d92ef1d0 # initialize rs2 with random value
addi x8, x8, -32 # sub immediate from rs1 to counter offset
c.sd x12, 32(x8) # perform operation 

# Testcase cp_imm_mul
li x28, 0xdd92fde174736585 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x14, 0x4e2d0ca2c9399cb5 # initialize rs2 with random value
addi x10, x10, -40 # sub immediate from rs1 to counter offset
c.sd x14, 40(x10) # perform operation 

# Testcase cp_imm_mul
li x19, 0x1529e8e5e7273b17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x15, 0x9400314bfd003b71 # initialize rs2 with random value
addi x10, x10, -48 # sub immediate from rs1 to counter offset
c.sd x15, 48(x10) # perform operation 

# Testcase cp_imm_mul
li x3, 0x5ed02e133bf7a7bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x10, 0x572c3ba634bbbc87 # initialize rs2 with random value
addi x14, x14, -56 # sub immediate from rs1 to counter offset
c.sd x10, 56(x14) # perform operation 

# Testcase cp_imm_mul
li x15, 0x750c0a7e3adb26b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x15, 0x712ae5be50a8a01d # initialize rs2 with random value
addi x12, x12, -64 # sub immediate from rs1 to counter offset
c.sd x15, 64(x12) # perform operation 

# Testcase cp_imm_mul
li x15, 0x0145cc3f541be7b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x8, 0x6cc36177ea66c4fc # initialize rs2 with random value
addi x15, x15, -72 # sub immediate from rs1 to counter offset
c.sd x8, 72(x15) # perform operation 

# Testcase cp_imm_mul
li x4, 0xbeb2c92190ba111f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x10, 0x36e8c662770a8eb6 # initialize rs2 with random value
addi x14, x14, -80 # sub immediate from rs1 to counter offset
c.sd x10, 80(x14) # perform operation 

# Testcase cp_imm_mul
li x31, 0xfc5ca85aa6d5c22f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x9, 0xe31c54708b2660d9 # initialize rs2 with random value
addi x11, x11, -88 # sub immediate from rs1 to counter offset
c.sd x9, 88(x11) # perform operation 

# Testcase cp_imm_mul
li x22, 0x2d800de54850100b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x13, 0x8fb23917bb9e6847 # initialize rs2 with random value
addi x12, x12, -96 # sub immediate from rs1 to counter offset
c.sd x13, 96(x12) # perform operation 

# Testcase cp_imm_mul
li x10, 0x34e6dbdd109720d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x14, 0x0e088df07df587d9 # initialize rs2 with random value
addi x8, x8, -104 # sub immediate from rs1 to counter offset
c.sd x14, 104(x8) # perform operation 

# Testcase cp_imm_mul
li x17, 0x3555de183419a603 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x8, 0xe564e934fda86329 # initialize rs2 with random value
addi x14, x14, -112 # sub immediate from rs1 to counter offset
c.sd x8, 112(x14) # perform operation 

# Testcase cp_imm_mul
li x20, 0x333cf225307e6cb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x14, 0xe1ab7cbb225bda1c # initialize rs2 with random value
addi x15, x15, -120 # sub immediate from rs1 to counter offset
c.sd x14, 120(x15) # perform operation 

# Testcase cp_imm_mul
li x27, 0x424287da1a4af772 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x15, 0xe8e53ba74382b73f # initialize rs2 with random value
addi x12, x12, -128 # sub immediate from rs1 to counter offset
c.sd x15, 128(x12) # perform operation 

# Testcase cp_imm_mul
li x20, 0xbf14d190e79b9e85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x13, 0x0727ad19ebc3a0ac # initialize rs2 with random value
addi x14, x14, -136 # sub immediate from rs1 to counter offset
c.sd x13, 136(x14) # perform operation 

# Testcase cp_imm_mul
li x22, 0xe7f5493993b006c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x12, 0x74ebaec435e7a44f # initialize rs2 with random value
addi x15, x15, -144 # sub immediate from rs1 to counter offset
c.sd x12, 144(x15) # perform operation 

# Testcase cp_imm_mul
li x5, 0x4057cf418aee8804 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x14, 0x5ea3c7a03426c1eb # initialize rs2 with random value
addi x12, x12, -152 # sub immediate from rs1 to counter offset
c.sd x14, 152(x12) # perform operation 

# Testcase cp_imm_mul
li x7, 0x303bed7c7ecf3a5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x13, 0xf209e4acc571f8be # initialize rs2 with random value
addi x8, x8, -160 # sub immediate from rs1 to counter offset
c.sd x13, 160(x8) # perform operation 

# Testcase cp_imm_mul
li x26, 0x60573a90822a6f90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x11, 0x7a1abbb91e81f797 # initialize rs2 with random value
addi x15, x15, -168 # sub immediate from rs1 to counter offset
c.sd x11, 168(x15) # perform operation 

# Testcase cp_imm_mul
li x21, 0xa5645418d9241726 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x11, 0xeb49d95ad569c556 # initialize rs2 with random value
addi x13, x13, -176 # sub immediate from rs1 to counter offset
c.sd x11, 176(x13) # perform operation 

# Testcase cp_imm_mul
li x31, 0x98bc463183559cb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x15, 0x0f05ca1e3959c8d2 # initialize rs2 with random value
addi x8, x8, -184 # sub immediate from rs1 to counter offset
c.sd x15, 184(x8) # perform operation 

# Testcase cp_imm_mul
li x9, 0x6ce4fc9b2bd86f4c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x12, 0x9f8ca8412795c054 # initialize rs2 with random value
addi x8, x8, -192 # sub immediate from rs1 to counter offset
c.sd x12, 192(x8) # perform operation 

# Testcase cp_imm_mul
li x17, 0x277d372ab1fc230f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x13, 0x5c2063108f9fdba6 # initialize rs2 with random value
addi x15, x15, -200 # sub immediate from rs1 to counter offset
c.sd x13, 200(x15) # perform operation 

# Testcase cp_imm_mul
li x6, 0x5a06d1e5b744726a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x11, 0x901d8208af2ef13b # initialize rs2 with random value
addi x10, x10, -208 # sub immediate from rs1 to counter offset
c.sd x11, 208(x10) # perform operation 

# Testcase cp_imm_mul
li x24, 0x78f487deea2857dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x15, 0x289a8105b8e9cea8 # initialize rs2 with random value
addi x14, x14, -216 # sub immediate from rs1 to counter offset
c.sd x15, 216(x14) # perform operation 

# Testcase cp_imm_mul
li x4, 0xa30f657b86f66b0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x10, 0xad6d53c4b20c383f # initialize rs2 with random value
addi x14, x14, -224 # sub immediate from rs1 to counter offset
c.sd x10, 224(x14) # perform operation 

# Testcase cp_imm_mul
li x11, 0xc0184b4d28436a53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x14, 0x8e288e6ac4389242 # initialize rs2 with random value
addi x12, x12, -232 # sub immediate from rs1 to counter offset
c.sd x14, 232(x12) # perform operation 

# Testcase cp_imm_mul
li x18, 0xdd61b8cc9e192b28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address
li x11, 0x3f32dbed3be16b73 # initialize rs2 with random value
addi x9, x9, -240 # sub immediate from rs1 to counter offset
c.sd x11, 240(x9) # perform operation 

# Testcase cp_imm_mul
li x5, 0xb0b2739854a4c4cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x14, 0x1a352459ba6465d0 # initialize rs2 with random value
addi x15, x15, -248 # sub immediate from rs1 to counter offset
c.sd x14, 248(x15) # perform operation 

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
