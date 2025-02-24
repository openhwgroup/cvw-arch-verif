///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zca//WALLY-COV-c.swsp.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.496978
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rs2 (Test source rs2 = x0)
li x14, 0x21dde71a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x9a318b42 # initialize rs2
la sp, scratch # base address 
c.swsp x0, 156(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x28, 0x8450cbc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5b06412e # initialize rs2
la sp, scratch # base address 
c.swsp x1, 0(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x15, 0x94d917f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xc224121a # initialize rs2
la sp, scratch # base address 
c.swsp x2, 220(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x18, 0x671efa5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x2669d989 # initialize rs2
la sp, scratch # base address 
c.swsp x3, 240(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x26, 0x677a428a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xcaa29a53 # initialize rs2
la sp, scratch # base address 
c.swsp x4, 248(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x21, 0xc94b4de0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xaf362d46 # initialize rs2
la sp, scratch # base address 
c.swsp x5, 152(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x4, 0xdf6a1a5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8435ac75 # initialize rs2
la sp, scratch # base address 
c.swsp x6, 8(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x11, 0x64c38039 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xbea359ff # initialize rs2
la sp, scratch # base address 
c.swsp x7, 248(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x9, 0xd052eac2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8967284b # initialize rs2
la sp, scratch # base address 
c.swsp x8, 112(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x10, 0xbc029d51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x6d27a81c # initialize rs2
la sp, scratch # base address 
c.swsp x9, 56(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x3, 0x5a632cf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8b98ab22 # initialize rs2
la sp, scratch # base address 
c.swsp x10, 24(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x22, 0x1eedbd88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x087f259b # initialize rs2
la sp, scratch # base address 
c.swsp x11, 184(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x16, 0xf3976324 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x2f420268 # initialize rs2
la sp, scratch # base address 
c.swsp x12, 144(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x5, 0xfac7977b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xbc564320 # initialize rs2
la sp, scratch # base address 
c.swsp x13, 180(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x13, 0x0f3d3ca2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xf8324ddf # initialize rs2
la sp, scratch # base address 
c.swsp x14, 128(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x22, 0xaee70aae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x3b0862fc # initialize rs2
la sp, scratch # base address 
c.swsp x15, 164(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x26, 0xb593d9ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0a7eac7d # initialize rs2
la sp, scratch # base address 
c.swsp x16, 244(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x18, 0x7b95a14d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x1fa18dff # initialize rs2
la sp, scratch # base address 
c.swsp x17, 116(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x13, 0x6a233be1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x811120a6 # initialize rs2
la sp, scratch # base address 
c.swsp x18, 60(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x15, 0x81de5b7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x1c7b0a93 # initialize rs2
la sp, scratch # base address 
c.swsp x19, 64(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x4, 0x3565c3aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xd0c39c26 # initialize rs2
la sp, scratch # base address 
c.swsp x20, 244(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x29, 0x37fd7237 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5251b4de # initialize rs2
la sp, scratch # base address 
c.swsp x21, 184(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x7, 0x4dcc4f6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x22b42c63 # initialize rs2
la sp, scratch # base address 
c.swsp x22, 112(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x16, 0xbd527a7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0396285b # initialize rs2
la sp, scratch # base address 
c.swsp x23, 44(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x1, 0xb706c1d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xa5efef1c # initialize rs2
la sp, scratch # base address 
c.swsp x24, 84(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x7, 0x0960461b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x51767196 # initialize rs2
la sp, scratch # base address 
c.swsp x25, 20(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x21, 0xdc737a1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xc9615b1f # initialize rs2
la sp, scratch # base address 
c.swsp x26, 0(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x1, 0x650ecd15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x864e2c53 # initialize rs2
la sp, scratch # base address 
c.swsp x27, 228(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x31, 0x67e3ae50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x89055078 # initialize rs2
la sp, scratch # base address 
c.swsp x28, 236(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x19, 0x2b235b47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xe217242f # initialize rs2
la sp, scratch # base address 
c.swsp x29, 168(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x6, 0xd7d8e773 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xd1ebe452 # initialize rs2
la sp, scratch # base address 
c.swsp x30, 184(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x4, 0x06440722 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xe9922212 # initialize rs2
la sp, scratch # base address 
c.swsp x31, 68(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x22, 0x03bad44a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000 # initialize rs2
la sp, scratch # base address 
c.swsp x4, 160(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x31, 0x4a7349be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000001 # initialize rs2
la sp, scratch # base address 
c.swsp x5, 24(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x13, 0xc4c8b8e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000002 # initialize rs2
la sp, scratch # base address 
c.swsp x28, 132(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x31, 0xe0251146 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000000 # initialize rs2
la sp, scratch # base address 
c.swsp x11, 12(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x10, 0x3375417e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x80000001 # initialize rs2
la sp, scratch # base address 
c.swsp x14, 68(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x25, 0xf1830866 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7fffffff # initialize rs2
la sp, scratch # base address 
c.swsp x29, 180(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x23, 0x9d5ef782 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7ffffffe # initialize rs2
la sp, scratch # base address 
c.swsp x25, 36(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x9, 0xe08a4dab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffff # initialize rs2
la sp, scratch # base address 
c.swsp x6, 112(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x17, 0x0c386114 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfffffffe # initialize rs2
la sp, scratch # base address 
c.swsp x18, 128(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x7, 0x6feff91b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5bbc8877 # initialize rs2
la sp, scratch # base address 
c.swsp x9, 44(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x20, 0x9ab1ceb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaa # initialize rs2
la sp, scratch # base address 
c.swsp x13, 128(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x10, 0x1db03c10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x55555555 # initialize rs2
la sp, scratch # base address 
c.swsp x21, 156(sp)# perform operation

# Testcase cp_imm_mul
li x15, 0x5d364447 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xf51dc12f # initialize rs2
la sp, scratch # base address 
c.swsp x7, 0(sp)# perform operation

# Testcase cp_imm_mul
li x5, 0xd57419c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x555526a6 # initialize rs2
la sp, scratch # base address 
c.swsp x10, 4(sp)# perform operation

# Testcase cp_imm_mul
li x23, 0xf1dd549f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xa739e99b # initialize rs2
la sp, scratch # base address 
c.swsp x11, 8(sp)# perform operation

# Testcase cp_imm_mul
li x13, 0x7f37903b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xbd244145 # initialize rs2
la sp, scratch # base address 
c.swsp x7, 12(sp)# perform operation

# Testcase cp_imm_mul
li x9, 0xfbdcc1ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xec3ec7a1 # initialize rs2
la sp, scratch # base address 
c.swsp x14, 16(sp)# perform operation

# Testcase cp_imm_mul
li x13, 0x072ed500 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x04f7de46 # initialize rs2
la sp, scratch # base address 
c.swsp x7, 20(sp)# perform operation

# Testcase cp_imm_mul
li x23, 0x4708d1e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xec074fb1 # initialize rs2
la sp, scratch # base address 
c.swsp x18, 24(sp)# perform operation

# Testcase cp_imm_mul
li x22, 0xc8bed032 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x2846942e # initialize rs2
la sp, scratch # base address 
c.swsp x31, 28(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0xd25e1ee2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xc877ea0b # initialize rs2
la sp, scratch # base address 
c.swsp x19, 32(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0x9c163464 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x074c0520 # initialize rs2
la sp, scratch # base address 
c.swsp x2, 36(sp)# perform operation

# Testcase cp_imm_mul
li x30, 0xe88671bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xf0b57200 # initialize rs2
la sp, scratch # base address 
c.swsp x24, 40(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0xf6126ea0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x4be3f184 # initialize rs2
la sp, scratch # base address 
c.swsp x3, 44(sp)# perform operation

# Testcase cp_imm_mul
li x11, 0x8a6129b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x06ca48b4 # initialize rs2
la sp, scratch # base address 
c.swsp x8, 48(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0x1f267a5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xc863381f # initialize rs2
la sp, scratch # base address 
c.swsp x7, 52(sp)# perform operation

# Testcase cp_imm_mul
li x15, 0xff486d4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xc68d9acc # initialize rs2
la sp, scratch # base address 
c.swsp x19, 56(sp)# perform operation

# Testcase cp_imm_mul
li x1, 0xe524f083 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xce7b3222 # initialize rs2
la sp, scratch # base address 
c.swsp x13, 60(sp)# perform operation

# Testcase cp_imm_mul
li x6, 0xde3678d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x62753c7d # initialize rs2
la sp, scratch # base address 
c.swsp x31, 64(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0x5535f5e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x99ac1560 # initialize rs2
la sp, scratch # base address 
c.swsp x12, 68(sp)# perform operation

# Testcase cp_imm_mul
li x20, 0x7a13b135 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x33bd4a44 # initialize rs2
la sp, scratch # base address 
c.swsp x9, 72(sp)# perform operation

# Testcase cp_imm_mul
li x22, 0x05e27c82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x86660209 # initialize rs2
la sp, scratch # base address 
c.swsp x2, 76(sp)# perform operation

# Testcase cp_imm_mul
li x30, 0xaf0f01f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x604d37d2 # initialize rs2
la sp, scratch # base address 
c.swsp x13, 80(sp)# perform operation

# Testcase cp_imm_mul
li x22, 0x817cfdb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8c951902 # initialize rs2
la sp, scratch # base address 
c.swsp x3, 84(sp)# perform operation

# Testcase cp_imm_mul
li x10, 0x6e5ef9cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5a5e88f6 # initialize rs2
la sp, scratch # base address 
c.swsp x26, 88(sp)# perform operation

# Testcase cp_imm_mul
li x2, 0xfee29385 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xb9c3736c # initialize rs2
la sp, scratch # base address 
c.swsp x14, 92(sp)# perform operation

# Testcase cp_imm_mul
li x17, 0x7f3ea9e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x4901ae2a # initialize rs2
la sp, scratch # base address 
c.swsp x3, 96(sp)# perform operation

# Testcase cp_imm_mul
li x28, 0x6d0247d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x489e4853 # initialize rs2
la sp, scratch # base address 
c.swsp x15, 100(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0x4c0a206f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x12b1bd70 # initialize rs2
la sp, scratch # base address 
c.swsp x20, 104(sp)# perform operation

# Testcase cp_imm_mul
li x17, 0x9428e937 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xd3b6b97e # initialize rs2
la sp, scratch # base address 
c.swsp x5, 108(sp)# perform operation

# Testcase cp_imm_mul
li x6, 0xdd136a0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x6b9afce7 # initialize rs2
la sp, scratch # base address 
c.swsp x7, 112(sp)# perform operation

# Testcase cp_imm_mul
li x25, 0x6d282937 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xb0193702 # initialize rs2
la sp, scratch # base address 
c.swsp x29, 116(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0x2a26e55d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x2334d070 # initialize rs2
la sp, scratch # base address 
c.swsp x26, 120(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0xd70447c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xf9e1a8b1 # initialize rs2
la sp, scratch # base address 
c.swsp x1, 124(sp)# perform operation

# Testcase cp_imm_mul
li x23, 0xc704fc03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7b20ae1b # initialize rs2
la sp, scratch # base address 
c.swsp x1, 128(sp)# perform operation

# Testcase cp_imm_mul
li x3, 0xc42a1998 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xea57e626 # initialize rs2
la sp, scratch # base address 
c.swsp x11, 132(sp)# perform operation

# Testcase cp_imm_mul
li x19, 0x7fd78b5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x4724b428 # initialize rs2
la sp, scratch # base address 
c.swsp x7, 136(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0x7a5eac23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x952eaaff # initialize rs2
la sp, scratch # base address 
c.swsp x11, 140(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0x9ec27b71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x18362ac2 # initialize rs2
la sp, scratch # base address 
c.swsp x5, 144(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0x906daec2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb4fff4e4 # initialize rs2
la sp, scratch # base address 
c.swsp x20, 148(sp)# perform operation

# Testcase cp_imm_mul
li x20, 0x69fdc060 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x722d4d77 # initialize rs2
la sp, scratch # base address 
c.swsp x14, 152(sp)# perform operation

# Testcase cp_imm_mul
li x19, 0x346da3f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xa5b38fd7 # initialize rs2
la sp, scratch # base address 
c.swsp x21, 156(sp)# perform operation

# Testcase cp_imm_mul
li x6, 0x90acda7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xd2e224dd # initialize rs2
la sp, scratch # base address 
c.swsp x3, 160(sp)# perform operation

# Testcase cp_imm_mul
li x2, 0x01ca9e39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x40d63af9 # initialize rs2
la sp, scratch # base address 
c.swsp x8, 164(sp)# perform operation

# Testcase cp_imm_mul
li x3, 0xe0edaa84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x92e32006 # initialize rs2
la sp, scratch # base address 
c.swsp x6, 168(sp)# perform operation

# Testcase cp_imm_mul
li x18, 0xecccfee9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6a4ccd17 # initialize rs2
la sp, scratch # base address 
c.swsp x11, 172(sp)# perform operation

# Testcase cp_imm_mul
li x9, 0x86f7f15e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xf8be2731 # initialize rs2
la sp, scratch # base address 
c.swsp x21, 176(sp)# perform operation

# Testcase cp_imm_mul
li x2, 0x4be6321e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0cf64954 # initialize rs2
la sp, scratch # base address 
c.swsp x27, 180(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0xe7bb8560 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xf94c68c2 # initialize rs2
la sp, scratch # base address 
c.swsp x7, 184(sp)# perform operation

# Testcase cp_imm_mul
li x3, 0x521be4aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x113495f3 # initialize rs2
la sp, scratch # base address 
c.swsp x16, 188(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0x157ba01e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x212fb76e # initialize rs2
la sp, scratch # base address 
c.swsp x17, 192(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0xc3ac41e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xb042b917 # initialize rs2
la sp, scratch # base address 
c.swsp x25, 196(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0x6dd6de2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x23898513 # initialize rs2
la sp, scratch # base address 
c.swsp x31, 200(sp)# perform operation

# Testcase cp_imm_mul
li x25, 0xf06df2d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x78e81ad6 # initialize rs2
la sp, scratch # base address 
c.swsp x18, 204(sp)# perform operation

# Testcase cp_imm_mul
li x26, 0xc200285c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xa1a63cce # initialize rs2
la sp, scratch # base address 
c.swsp x2, 208(sp)# perform operation

# Testcase cp_imm_mul
li x19, 0xf6eabbf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xe5232f1f # initialize rs2
la sp, scratch # base address 
c.swsp x27, 212(sp)# perform operation

# Testcase cp_imm_mul
li x2, 0x4ebec2a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0f7761e8 # initialize rs2
la sp, scratch # base address 
c.swsp x24, 216(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0x140de8b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x920b6aff # initialize rs2
la sp, scratch # base address 
c.swsp x7, 220(sp)# perform operation

# Testcase cp_imm_mul
li x11, 0x61438158 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5a10c6a3 # initialize rs2
la sp, scratch # base address 
c.swsp x20, 224(sp)# perform operation

# Testcase cp_imm_mul
li x9, 0x2da93a26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xa26c1610 # initialize rs2
la sp, scratch # base address 
c.swsp x25, 228(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0x188b71aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8e0082b9 # initialize rs2
la sp, scratch # base address 
c.swsp x20, 232(sp)# perform operation

# Testcase cp_imm_mul
li x6, 0xe992346e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xa119e938 # initialize rs2
la sp, scratch # base address 
c.swsp x24, 236(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0x180278ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x2f8f3153 # initialize rs2
la sp, scratch # base address 
c.swsp x22, 240(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0xa0718b4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x07ed217e # initialize rs2
la sp, scratch # base address 
c.swsp x7, 244(sp)# perform operation

# Testcase cp_imm_mul
li x9, 0x5a5f9753 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xc54e0fb5 # initialize rs2
la sp, scratch # base address 
c.swsp x27, 248(sp)# perform operation

# Testcase cp_imm_mul
li x11, 0xcaa9f2b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0e197f78 # initialize rs2
la sp, scratch # base address 
c.swsp x28, 252(sp)# perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
