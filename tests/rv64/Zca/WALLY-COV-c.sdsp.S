///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zca//WALLY-COV-c.sdsp.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.991964
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rs2 (Test source rs2 = x0)
li x17, 0xdab84e6dd9cac24c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x36883491602f03ca # initialize rs2
la sp, scratch # base address 
c.sdsp x0, 496(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x23, 0xcb4ecb08cf4e670b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x4cdd0a7d56b86306 # initialize rs2
la sp, scratch # base address 
c.sdsp x1, 24(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x11, 0x4fe3a06a3629dca2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x839309a46a83a28d # initialize rs2
la sp, scratch # base address 
c.sdsp x2, 400(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x8, 0xc5af9c534049a3b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xed3b79147b75d477 # initialize rs2
la sp, scratch # base address 
c.sdsp x3, 248(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x1, 0xeba208be65165f70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x970ca9b88b7458d1 # initialize rs2
la sp, scratch # base address 
c.sdsp x4, 296(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x18, 0xde7959f8b5b90aa6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x899ffab6ab74b1e6 # initialize rs2
la sp, scratch # base address 
c.sdsp x5, 424(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x25, 0x7e4439468cc401b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7c89c038febe70b6 # initialize rs2
la sp, scratch # base address 
c.sdsp x6, 232(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x1, 0x979ce9bd95a4e466 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x304e890f1def011c # initialize rs2
la sp, scratch # base address 
c.sdsp x7, 200(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x13, 0xc87aad0301cbcffc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd72526fcf57703ca # initialize rs2
la sp, scratch # base address 
c.sdsp x8, 368(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x17, 0x61a2ba0e12e9e019 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x74acf2988cdc7c29 # initialize rs2
la sp, scratch # base address 
c.sdsp x9, 48(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x19, 0x8acfa938646451fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xe92080419936c6b5 # initialize rs2
la sp, scratch # base address 
c.sdsp x10, 136(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x29, 0x39fdd09b1cd87da7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0c47b7d07540682a # initialize rs2
la sp, scratch # base address 
c.sdsp x11, 144(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x1, 0x75be7eee6cd89280 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5b09e14352ccf106 # initialize rs2
la sp, scratch # base address 
c.sdsp x12, 216(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x10, 0x149e38c2f4d92f58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x76b74611450238a7 # initialize rs2
la sp, scratch # base address 
c.sdsp x13, 496(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x6, 0x71b701759f3391e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8f43e4f35c773e24 # initialize rs2
la sp, scratch # base address 
c.sdsp x14, 472(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x11, 0xabde2b90049df701 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x2efb5a1962712d4e # initialize rs2
la sp, scratch # base address 
c.sdsp x15, 120(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x22, 0xe8b1ba20b984a0ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x442f25d2112b94a7 # initialize rs2
la sp, scratch # base address 
c.sdsp x16, 72(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x24, 0x87e5a2359777ef19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xea3777630a01e7f5 # initialize rs2
la sp, scratch # base address 
c.sdsp x17, 24(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x19, 0x66f3f99a627011d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xd6d987a2df8f10dd # initialize rs2
la sp, scratch # base address 
c.sdsp x18, 56(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x14, 0xb90978fbbca5f07e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xb4b68b7930ac48a6 # initialize rs2
la sp, scratch # base address 
c.sdsp x19, 232(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x5, 0x527dd3bc6fac4a97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xde3249a0207b185f # initialize rs2
la sp, scratch # base address 
c.sdsp x20, 352(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x31, 0xef7d4aecf21e5611 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7b9ee47dc35f9a4b # initialize rs2
la sp, scratch # base address 
c.sdsp x21, 440(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x16, 0x531b3fe1dffdb5bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xa58d8f6321bed066 # initialize rs2
la sp, scratch # base address 
c.sdsp x22, 376(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x20, 0x7a6bfa7164770789 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xd9f07bb580ef240b # initialize rs2
la sp, scratch # base address 
c.sdsp x23, 504(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x12, 0xdc3ef5a3f106caf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x6c639feb68e51f9a # initialize rs2
la sp, scratch # base address 
c.sdsp x24, 280(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x19, 0x6defc9ebd289c6bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xa17f238906bda70d # initialize rs2
la sp, scratch # base address 
c.sdsp x25, 288(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x18, 0x62038d034b8c7684 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x27a57d49cfebb4ec # initialize rs2
la sp, scratch # base address 
c.sdsp x26, 256(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x22, 0xc9770b84b00c9477 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xef4e2e5ad54f535e # initialize rs2
la sp, scratch # base address 
c.sdsp x27, 152(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x20, 0x24eb4c48113935f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0f05243c7e6dd40a # initialize rs2
la sp, scratch # base address 
c.sdsp x28, 72(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x16, 0x201d478368824ba0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8b03530ec44b6e3e # initialize rs2
la sp, scratch # base address 
c.sdsp x29, 48(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x10, 0xb4e732012b2aadf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x25870a04eac69d5b # initialize rs2
la sp, scratch # base address 
c.sdsp x30, 240(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x28, 0xebec41f7b68cdb59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x9311c7df7ead2318 # initialize rs2
la sp, scratch # base address 
c.sdsp x31, 176(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x20, 0x3b4e06f87aad3b18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000000 # initialize rs2
la sp, scratch # base address 
c.sdsp x1, 272(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x18, 0x6ddc4fa8d02ae018 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000001 # initialize rs2
la sp, scratch # base address 
c.sdsp x13, 184(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x2, 0x7d60ebd2ac52e2f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000002 # initialize rs2
la sp, scratch # base address 
c.sdsp x22, 160(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x15, 0xa62b6783eed582e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8000000000000000 # initialize rs2
la sp, scratch # base address 
c.sdsp x10, 464(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x9, 0x06750788b029614f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8000000000000001 # initialize rs2
la sp, scratch # base address 
c.sdsp x20, 424(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x17, 0xa3e24244c5bb5cd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7fffffffffffffff # initialize rs2
la sp, scratch # base address 
c.sdsp x23, 40(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x13, 0x94b6e812275ef15c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7ffffffffffffffe # initialize rs2
la sp, scratch # base address 
c.sdsp x26, 64(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x27, 0x562aa7b1ff1f28eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffffffffffff # initialize rs2
la sp, scratch # base address 
c.sdsp x20, 120(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x12, 0x13841fde160775bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfffffffffffffffe # initialize rs2
la sp, scratch # base address 
c.sdsp x1, 456(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x26, 0xf8b479ed79a8058c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5bbc887763ae86f7 # initialize rs2
la sp, scratch # base address 
c.sdsp x12, 40(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x28, 0xa2a4f5cf62ccebeb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
la sp, scratch # base address 
c.sdsp x8, 328(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x7, 0x3b82883a053d3c05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5555555555555555 # initialize rs2
la sp, scratch # base address 
c.sdsp x27, 224(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x15, 0xf2989194598074ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000ffffffff # initialize rs2
la sp, scratch # base address 
c.sdsp x31, 200(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x2, 0x88cb33a8ac7eca5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000fffffffe # initialize rs2
la sp, scratch # base address 
c.sdsp x11, 256(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x22, 0x47a53dc81ea6ad1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000000 # initialize rs2
la sp, scratch # base address 
c.sdsp x11, 392(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x10, 0xb2511dd9c0b474fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000001 # initialize rs2
la sp, scratch # base address 
c.sdsp x27, 24(sp)# perform operation

# Testcase cp_imm_mul
li x21, 0xed0389d7c9baa3aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x19a71577f58b1200 # initialize rs2
la sp, scratch # base address 
c.sdsp x29, 0(sp)# perform operation

# Testcase cp_imm_mul
li x3, 0x0cb4de4e04da588f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xa346c974b0dbb52a # initialize rs2
la sp, scratch # base address 
c.sdsp x19, 8(sp)# perform operation

# Testcase cp_imm_mul
li x7, 0x28f1131144c09b5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x596dbacc6cc9d636 # initialize rs2
la sp, scratch # base address 
c.sdsp x3, 16(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0xe085204342edbdcd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x78906ef8fc32af5b # initialize rs2
la sp, scratch # base address 
c.sdsp x9, 24(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0xf89226aa74032274 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xe0e5e36cb9dd75d8 # initialize rs2
la sp, scratch # base address 
c.sdsp x15, 32(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0x84d9819d88cdc637 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5a83539ed5e0a8d8 # initialize rs2
la sp, scratch # base address 
c.sdsp x10, 40(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0x0c82d4c10cb53490 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x2b63de4c0d7ccd99 # initialize rs2
la sp, scratch # base address 
c.sdsp x30, 48(sp)# perform operation

# Testcase cp_imm_mul
li x7, 0xb2d1f6ee55248238 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xe690b51e10f0d40d # initialize rs2
la sp, scratch # base address 
c.sdsp x26, 56(sp)# perform operation

# Testcase cp_imm_mul
li x30, 0x8cf779a7c12f42a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xf25c5042d2fc1734 # initialize rs2
la sp, scratch # base address 
c.sdsp x2, 64(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0x2872705efe5c24f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x649a7c55153b4468 # initialize rs2
la sp, scratch # base address 
c.sdsp x6, 72(sp)# perform operation

# Testcase cp_imm_mul
li x1, 0x5581fc648824f0f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x6aee6616933b65e8 # initialize rs2
la sp, scratch # base address 
c.sdsp x24, 80(sp)# perform operation

# Testcase cp_imm_mul
li x1, 0x3cbb49d5f53624c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xc7560480ec5f9283 # initialize rs2
la sp, scratch # base address 
c.sdsp x19, 88(sp)# perform operation

# Testcase cp_imm_mul
li x28, 0xc74f902436fd571e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfe1c2b340efcb24c # initialize rs2
la sp, scratch # base address 
c.sdsp x11, 96(sp)# perform operation

# Testcase cp_imm_mul
li x26, 0xa470b972a0e187f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x6bd59dde53710a26 # initialize rs2
la sp, scratch # base address 
c.sdsp x10, 104(sp)# perform operation

# Testcase cp_imm_mul
li x7, 0xb25f1bd34389e6d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x36f202b4a3c1dd80 # initialize rs2
la sp, scratch # base address 
c.sdsp x10, 112(sp)# perform operation

# Testcase cp_imm_mul
li x13, 0x218f0d93f498a9d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x522ef8b1990f058b # initialize rs2
la sp, scratch # base address 
c.sdsp x8, 120(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0x45a9292483a9bfff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x377620e2067ae929 # initialize rs2
la sp, scratch # base address 
c.sdsp x10, 128(sp)# perform operation

# Testcase cp_imm_mul
li x11, 0xf453f10e38e948c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x1d90dba9bcd8ff92 # initialize rs2
la sp, scratch # base address 
c.sdsp x12, 136(sp)# perform operation

# Testcase cp_imm_mul
li x18, 0x15109bf84ea5cbe6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x476d6a13d0a3143b # initialize rs2
la sp, scratch # base address 
c.sdsp x12, 144(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0x53edab61e9cda73e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x78ceaecb32691e13 # initialize rs2
la sp, scratch # base address 
c.sdsp x9, 152(sp)# perform operation

# Testcase cp_imm_mul
li x1, 0x86092661735aeb7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x445c5719afea4b60 # initialize rs2
la sp, scratch # base address 
c.sdsp x12, 160(sp)# perform operation

# Testcase cp_imm_mul
li x13, 0x62312b947815c55f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7f1e043a33519bfb # initialize rs2
la sp, scratch # base address 
c.sdsp x26, 168(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0x1f99c857a9c02c2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x2ffc00c3bc057e5e # initialize rs2
la sp, scratch # base address 
c.sdsp x3, 176(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0x6f449c1960924b3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7b8a0a69e96b2d98 # initialize rs2
la sp, scratch # base address 
c.sdsp x17, 184(sp)# perform operation

# Testcase cp_imm_mul
li x26, 0xd9e3ecae48f6f706 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x53573d90d316b7d6 # initialize rs2
la sp, scratch # base address 
c.sdsp x25, 192(sp)# perform operation

# Testcase cp_imm_mul
li x21, 0x1c95319a0db2373f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7aeaa90e2c58f214 # initialize rs2
la sp, scratch # base address 
c.sdsp x28, 200(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0x8445d65732ad5c0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x1b58f54ef83eae44 # initialize rs2
la sp, scratch # base address 
c.sdsp x4, 208(sp)# perform operation

# Testcase cp_imm_mul
li x26, 0x060ec2360034955f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x65863870ba7a1cb6 # initialize rs2
la sp, scratch # base address 
c.sdsp x3, 216(sp)# perform operation

# Testcase cp_imm_mul
li x6, 0xfe8b9bb4ed4433a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x3f59852f49b42a5c # initialize rs2
la sp, scratch # base address 
c.sdsp x30, 224(sp)# perform operation

# Testcase cp_imm_mul
li x7, 0x803b3a0370fc1f39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x99ab811b91ea8360 # initialize rs2
la sp, scratch # base address 
c.sdsp x13, 232(sp)# perform operation

# Testcase cp_imm_mul
li x3, 0xfd0353fc54d56644 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x4c54ef161b43fab8 # initialize rs2
la sp, scratch # base address 
c.sdsp x11, 240(sp)# perform operation

# Testcase cp_imm_mul
li x18, 0x058cb1b2108be8ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0fdd5f73c2ebbaa1 # initialize rs2
la sp, scratch # base address 
c.sdsp x19, 248(sp)# perform operation

# Testcase cp_imm_mul
li x30, 0x7fdece3edbac5a35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5168e9c3e07a8dfa # initialize rs2
la sp, scratch # base address 
c.sdsp x24, 256(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0xd687e9dbc1f9002a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x6d404eb177cc14cb # initialize rs2
la sp, scratch # base address 
c.sdsp x21, 264(sp)# perform operation

# Testcase cp_imm_mul
li x30, 0xf55608cf4be16a8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xcb8393c2042ce4c0 # initialize rs2
la sp, scratch # base address 
c.sdsp x31, 272(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0x9ac6ecf5f6d002a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x58f19adecc2a1974 # initialize rs2
la sp, scratch # base address 
c.sdsp x18, 280(sp)# perform operation

# Testcase cp_imm_mul
li x11, 0xf01b1f233194e66a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x71f258a51f7ea9eb # initialize rs2
la sp, scratch # base address 
c.sdsp x30, 288(sp)# perform operation

# Testcase cp_imm_mul
li x15, 0x1b4f62b0c9353971 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x168b142e8cdb5fcb # initialize rs2
la sp, scratch # base address 
c.sdsp x9, 296(sp)# perform operation

# Testcase cp_imm_mul
li x25, 0xb7ebbd521dac8154 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x4091c1a80532b617 # initialize rs2
la sp, scratch # base address 
c.sdsp x28, 304(sp)# perform operation

# Testcase cp_imm_mul
li x23, 0xca74c7e859427000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x731d276822f80484 # initialize rs2
la sp, scratch # base address 
c.sdsp x9, 312(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0x30307dd5d7fb707b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x51c27d2554cf765f # initialize rs2
la sp, scratch # base address 
c.sdsp x14, 320(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0xaa45df3fcb7abd8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x883fecc4874f049b # initialize rs2
la sp, scratch # base address 
c.sdsp x4, 328(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0x4b08240cb7e7f921 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xcee5aa69399516c7 # initialize rs2
la sp, scratch # base address 
c.sdsp x8, 336(sp)# perform operation

# Testcase cp_imm_mul
li x13, 0x6508ce4c9baa3e8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x6d3a7751078e6f50 # initialize rs2
la sp, scratch # base address 
c.sdsp x30, 344(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0x91cf95b0a85a9ac0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x257e9cac395f64ad # initialize rs2
la sp, scratch # base address 
c.sdsp x28, 352(sp)# perform operation

# Testcase cp_imm_mul
li x20, 0xe2db6ab91c375084 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x88ad7f75a289f65a # initialize rs2
la sp, scratch # base address 
c.sdsp x11, 360(sp)# perform operation

# Testcase cp_imm_mul
li x20, 0x245a4f398cc6778c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xbe8244ad592449fc # initialize rs2
la sp, scratch # base address 
c.sdsp x4, 368(sp)# perform operation

# Testcase cp_imm_mul
li x21, 0x82a6340ee8611ccd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x65bcc1fd703b7611 # initialize rs2
la sp, scratch # base address 
c.sdsp x11, 376(sp)# perform operation

# Testcase cp_imm_mul
li x30, 0xb2afc56a163d0a7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xe7ccb16e6f27fcf3 # initialize rs2
la sp, scratch # base address 
c.sdsp x31, 384(sp)# perform operation

# Testcase cp_imm_mul
li x23, 0xb70aeecb332ce52d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x6684d57a32c33cf4 # initialize rs2
la sp, scratch # base address 
c.sdsp x2, 392(sp)# perform operation

# Testcase cp_imm_mul
li x28, 0xcd721310110f84a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7d8957da389b6e5c # initialize rs2
la sp, scratch # base address 
c.sdsp x21, 400(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0x702d2edf584d7214 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xafb201878e351f97 # initialize rs2
la sp, scratch # base address 
c.sdsp x19, 408(sp)# perform operation

# Testcase cp_imm_mul
li x17, 0x3c6c53d3439fbd50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8f0b9db45fbd6388 # initialize rs2
la sp, scratch # base address 
c.sdsp x30, 416(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0xa88cde884b5c5890 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xda62fd86e3baa109 # initialize rs2
la sp, scratch # base address 
c.sdsp x11, 424(sp)# perform operation

# Testcase cp_imm_mul
li x13, 0x76d3b53559097832 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5520a0ab9ed8f736 # initialize rs2
la sp, scratch # base address 
c.sdsp x26, 432(sp)# perform operation

# Testcase cp_imm_mul
li x17, 0xdc1feed7dce87c43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x2bcdf39cef2a130c # initialize rs2
la sp, scratch # base address 
c.sdsp x1, 440(sp)# perform operation

# Testcase cp_imm_mul
li x21, 0xe64579633c8c4ea2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xe52ad9b3091fe153 # initialize rs2
la sp, scratch # base address 
c.sdsp x15, 448(sp)# perform operation

# Testcase cp_imm_mul
li x3, 0xd86db8fb494efaf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xf0ca3d6a458feb38 # initialize rs2
la sp, scratch # base address 
c.sdsp x12, 456(sp)# perform operation

# Testcase cp_imm_mul
li x7, 0x14162b06c3492414 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x685af95cc0b9b780 # initialize rs2
la sp, scratch # base address 
c.sdsp x30, 464(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0x5e8942905e891def # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x533f5823c18c00f0 # initialize rs2
la sp, scratch # base address 
c.sdsp x20, 472(sp)# perform operation

# Testcase cp_imm_mul
li x26, 0x8b3c53ff25987679 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xa3eaffb001cf5ef3 # initialize rs2
la sp, scratch # base address 
c.sdsp x3, 480(sp)# perform operation

# Testcase cp_imm_mul
li x10, 0x74dd372106f004db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfb3a6431704e969b # initialize rs2
la sp, scratch # base address 
c.sdsp x1, 488(sp)# perform operation

# Testcase cp_imm_mul
li x2, 0x2eaac264499be8c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x3ca0629a82d7706e # initialize rs2
la sp, scratch # base address 
c.sdsp x21, 496(sp)# perform operation

# Testcase cp_imm_mul
li x23, 0xc243645f4bab2ea5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xa25a8998d3a61166 # initialize rs2
la sp, scratch # base address 
c.sdsp x4, 504(sp)# perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
