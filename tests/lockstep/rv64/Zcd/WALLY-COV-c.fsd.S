///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zcd/WALLY-COV-c.fsd.S
// David_Harris@hmc.edu

 # testgen_header.S
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

#include "macros.h"

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase cp_rs1 (Test source rs1 = x8)
la x8, scratch # base address
li x13, 0x4ff9aa9fb8e0c885 # initialize rs2 with random value
sd x13, 0(x8) # store 0x4ff9aa9fb8e0c885 in memory
fld f13, 0(x8) # load 0x4ff9aa9fb8e0c885 from memory into fs2
sd x0, 0(x8) # clearing the random value store at scratch
addi x8, x8, -16 # sub immediate from rs1 to counter offset
c.fsd f13, 16(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
la x9, scratch # base address
li x11, 0x7a7665449eab03ae # initialize rs2 with random value
sd x11, 0(x9) # store 0x7a7665449eab03ae in memory
fld f11, 0(x9) # load 0x7a7665449eab03ae from memory into fs2
sd x0, 0(x9) # clearing the random value store at scratch
addi x9, x9, -72 # sub immediate from rs1 to counter offset
c.fsd f11, 72(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
la x10, scratch # base address
li x8, 0x7cd3d5eeb7821219 # initialize rs2 with random value
sd x8, 0(x10) # store 0x7cd3d5eeb7821219 in memory
fld f8, 0(x10) # load 0x7cd3d5eeb7821219 from memory into fs2
sd x0, 0(x10) # clearing the random value store at scratch
addi x10, x10, -72 # sub immediate from rs1 to counter offset
c.fsd f8, 72(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
la x11, scratch # base address
li x13, 0x0d00f81c54738f01 # initialize rs2 with random value
sd x13, 0(x11) # store 0xd00f81c54738f01 in memory
fld f13, 0(x11) # load 0xd00f81c54738f01 from memory into fs2
sd x0, 0(x11) # clearing the random value store at scratch
addi x11, x11, -152 # sub immediate from rs1 to counter offset
c.fsd f13, 152(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
la x12, scratch # base address
li x15, 0x1ddec25225f5bde9 # initialize rs2 with random value
sd x15, 0(x12) # store 0x1ddec25225f5bde9 in memory
fld f15, 0(x12) # load 0x1ddec25225f5bde9 from memory into fs2
sd x0, 0(x12) # clearing the random value store at scratch
addi x12, x12, -72 # sub immediate from rs1 to counter offset
c.fsd f15, 72(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
la x13, scratch # base address
li x14, 0xc3adadd3a0593e73 # initialize rs2 with random value
sd x14, 0(x13) # store 0xc3adadd3a0593e73 in memory
fld f14, 0(x13) # load 0xc3adadd3a0593e73 from memory into fs2
sd x0, 0(x13) # clearing the random value store at scratch
addi x13, x13, -136 # sub immediate from rs1 to counter offset
c.fsd f14, 136(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
la x14, scratch # base address
li x12, 0x81936c6826070b6b # initialize rs2 with random value
sd x12, 0(x14) # store 0x81936c6826070b6b in memory
fld f12, 0(x14) # load 0x81936c6826070b6b from memory into fs2
sd x0, 0(x14) # clearing the random value store at scratch
addi x14, x14, -32 # sub immediate from rs1 to counter offset
c.fsd f12, 32(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
la x15, scratch # base address
li x9, 0x503842e39d7c3c8c # initialize rs2 with random value
sd x9, 0(x15) # store 0x503842e39d7c3c8c in memory
fld f9, 0(x15) # load 0x503842e39d7c3c8c from memory into fs2
sd x0, 0(x15) # clearing the random value store at scratch
addi x15, x15, -168 # sub immediate from rs1 to counter offset
c.fsd f9, 168(x15) # perform operation 

# Testcase cp_fs2 (Test source fs2 = f8)
la x11, scratch # base address
li x8, 0xbdbdf568f978594b # initialize rs2 with random value
sd x8, 0(x11) # store 0xbdbdf568f978594b in memory
fld f8, 0(x11) # load 0xbdbdf568f978594b from memory into fs2
sd x0, 0(x11) # clearing the random value store at scratch
addi x11, x11, -192 # sub immediate from rs1 to counter offset
c.fsd f8, 192(x11) # perform operation 

# Testcase cp_fs2 (Test source fs2 = f9)
la x8, scratch # base address
li x9, 0xaa42b9176e220a3f # initialize rs2 with random value
sd x9, 0(x8) # store 0xaa42b9176e220a3f in memory
fld f9, 0(x8) # load 0xaa42b9176e220a3f from memory into fs2
sd x0, 0(x8) # clearing the random value store at scratch
addi x8, x8, -8 # sub immediate from rs1 to counter offset
c.fsd f9, 8(x8) # perform operation 

# Testcase cp_fs2 (Test source fs2 = f10)
la x12, scratch # base address
li x10, 0x93e4c164cb018792 # initialize rs2 with random value
sd x10, 0(x12) # store 0x93e4c164cb018792 in memory
fld f10, 0(x12) # load 0x93e4c164cb018792 from memory into fs2
sd x0, 0(x12) # clearing the random value store at scratch
addi x12, x12, -224 # sub immediate from rs1 to counter offset
c.fsd f10, 224(x12) # perform operation 

# Testcase cp_fs2 (Test source fs2 = f11)
la x14, scratch # base address
li x11, 0xa8a3bed0640b1ae7 # initialize rs2 with random value
sd x11, 0(x14) # store 0xa8a3bed0640b1ae7 in memory
fld f11, 0(x14) # load 0xa8a3bed0640b1ae7 from memory into fs2
sd x0, 0(x14) # clearing the random value store at scratch
addi x14, x14, -208 # sub immediate from rs1 to counter offset
c.fsd f11, 208(x14) # perform operation 

# Testcase cp_fs2 (Test source fs2 = f12)
la x8, scratch # base address
li x12, 0x6f73fa6f9d96b555 # initialize rs2 with random value
sd x12, 0(x8) # store 0x6f73fa6f9d96b555 in memory
fld f12, 0(x8) # load 0x6f73fa6f9d96b555 from memory into fs2
sd x0, 0(x8) # clearing the random value store at scratch
addi x8, x8, -80 # sub immediate from rs1 to counter offset
c.fsd f12, 80(x8) # perform operation 

# Testcase cp_fs2 (Test source fs2 = f13)
la x12, scratch # base address
li x13, 0xfa9a03b37145a788 # initialize rs2 with random value
sd x13, 0(x12) # store 0xfa9a03b37145a788 in memory
fld f13, 0(x12) # load 0xfa9a03b37145a788 from memory into fs2
sd x0, 0(x12) # clearing the random value store at scratch
addi x12, x12, -152 # sub immediate from rs1 to counter offset
c.fsd f13, 152(x12) # perform operation 

# Testcase cp_fs2 (Test source fs2 = f14)
la x9, scratch # base address
li x14, 0xd5b58af1dbcdab92 # initialize rs2 with random value
sd x14, 0(x9) # store 0xd5b58af1dbcdab92 in memory
fld f14, 0(x9) # load 0xd5b58af1dbcdab92 from memory into fs2
sd x0, 0(x9) # clearing the random value store at scratch
addi x9, x9, -200 # sub immediate from rs1 to counter offset
c.fsd f14, 200(x9) # perform operation 

# Testcase cp_fs2 (Test source fs2 = f15)
la x14, scratch # base address
li x15, 0xd7add635b0e04469 # initialize rs2 with random value
sd x15, 0(x14) # store 0xd7add635b0e04469 in memory
fld f15, 0(x14) # load 0xd7add635b0e04469 from memory into fs2
sd x0, 0(x14) # clearing the random value store at scratch
addi x14, x14, -80 # sub immediate from rs1 to counter offset
c.fsd f15, 80(x14) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x9, 0x3b5595edae3020b9 # initialize rs2 with random value
sd x9, 0(x15) # store 0x3b5595edae3020b9 in memory
fld f9, 0(x15) # load 0x3b5595edae3020b9 from memory into fs2
sd x0, 0(x15) # clearing the random value store at scratch
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.fsd f9, 0(x15) # perform operation 

# Testcase cp_imm_mul
la x13, scratch # base address
li x10, 0x72df8a33ba6451cc # initialize rs2 with random value
sd x10, 0(x13) # store 0x72df8a33ba6451cc in memory
fld f10, 0(x13) # load 0x72df8a33ba6451cc from memory into fs2
sd x0, 0(x13) # clearing the random value store at scratch
addi x13, x13, -8 # sub immediate from rs1 to counter offset
c.fsd f10, 8(x13) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x10, 0x8ff5c78696acf65a # initialize rs2 with random value
sd x10, 0(x9) # store 0x8ff5c78696acf65a in memory
fld f10, 0(x9) # load 0x8ff5c78696acf65a from memory into fs2
sd x0, 0(x9) # clearing the random value store at scratch
addi x9, x9, -16 # sub immediate from rs1 to counter offset
c.fsd f10, 16(x9) # perform operation 

# Testcase cp_imm_mul
la x13, scratch # base address
li x12, 0x48f14e7624c6733c # initialize rs2 with random value
sd x12, 0(x13) # store 0x48f14e7624c6733c in memory
fld f12, 0(x13) # load 0x48f14e7624c6733c from memory into fs2
sd x0, 0(x13) # clearing the random value store at scratch
addi x13, x13, -24 # sub immediate from rs1 to counter offset
c.fsd f12, 24(x13) # perform operation 

# Testcase cp_imm_mul
la x10, scratch # base address
li x15, 0xc454369588ecd07b # initialize rs2 with random value
sd x15, 0(x10) # store 0xc454369588ecd07b in memory
fld f15, 0(x10) # load 0xc454369588ecd07b from memory into fs2
sd x0, 0(x10) # clearing the random value store at scratch
addi x10, x10, -32 # sub immediate from rs1 to counter offset
c.fsd f15, 32(x10) # perform operation 

# Testcase cp_imm_mul
la x10, scratch # base address
li x13, 0x85dedbe7f538a8e9 # initialize rs2 with random value
sd x13, 0(x10) # store 0x85dedbe7f538a8e9 in memory
fld f13, 0(x10) # load 0x85dedbe7f538a8e9 from memory into fs2
sd x0, 0(x10) # clearing the random value store at scratch
addi x10, x10, -40 # sub immediate from rs1 to counter offset
c.fsd f13, 40(x10) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x8, 0x8fff180ad84f1492 # initialize rs2 with random value
sd x8, 0(x9) # store 0x8fff180ad84f1492 in memory
fld f8, 0(x9) # load 0x8fff180ad84f1492 from memory into fs2
sd x0, 0(x9) # clearing the random value store at scratch
addi x9, x9, -48 # sub immediate from rs1 to counter offset
c.fsd f8, 48(x9) # perform operation 

# Testcase cp_imm_mul
la x10, scratch # base address
li x12, 0x04d8a63625152bcc # initialize rs2 with random value
sd x12, 0(x10) # store 0x4d8a63625152bcc in memory
fld f12, 0(x10) # load 0x4d8a63625152bcc from memory into fs2
sd x0, 0(x10) # clearing the random value store at scratch
addi x10, x10, -56 # sub immediate from rs1 to counter offset
c.fsd f12, 56(x10) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x15, 0x8d4bf659f4d6c0c9 # initialize rs2 with random value
sd x15, 0(x8) # store 0x8d4bf659f4d6c0c9 in memory
fld f15, 0(x8) # load 0x8d4bf659f4d6c0c9 from memory into fs2
sd x0, 0(x8) # clearing the random value store at scratch
addi x8, x8, -64 # sub immediate from rs1 to counter offset
c.fsd f15, 64(x8) # perform operation 

# Testcase cp_imm_mul
la x13, scratch # base address
li x14, 0xc0a816d3fee4296f # initialize rs2 with random value
sd x14, 0(x13) # store 0xc0a816d3fee4296f in memory
fld f14, 0(x13) # load 0xc0a816d3fee4296f from memory into fs2
sd x0, 0(x13) # clearing the random value store at scratch
addi x13, x13, -72 # sub immediate from rs1 to counter offset
c.fsd f14, 72(x13) # perform operation 

# Testcase cp_imm_mul
la x14, scratch # base address
li x8, 0x953eb4a0b97d4865 # initialize rs2 with random value
sd x8, 0(x14) # store 0x953eb4a0b97d4865 in memory
fld f8, 0(x14) # load 0x953eb4a0b97d4865 from memory into fs2
sd x0, 0(x14) # clearing the random value store at scratch
addi x14, x14, -80 # sub immediate from rs1 to counter offset
c.fsd f8, 80(x14) # perform operation 

# Testcase cp_imm_mul
la x11, scratch # base address
li x15, 0x8d2a64ef28c14d04 # initialize rs2 with random value
sd x15, 0(x11) # store 0x8d2a64ef28c14d04 in memory
fld f15, 0(x11) # load 0x8d2a64ef28c14d04 from memory into fs2
sd x0, 0(x11) # clearing the random value store at scratch
addi x11, x11, -88 # sub immediate from rs1 to counter offset
c.fsd f15, 88(x11) # perform operation 

# Testcase cp_imm_mul
la x11, scratch # base address
li x9, 0x604be1f1cd264cf6 # initialize rs2 with random value
sd x9, 0(x11) # store 0x604be1f1cd264cf6 in memory
fld f9, 0(x11) # load 0x604be1f1cd264cf6 from memory into fs2
sd x0, 0(x11) # clearing the random value store at scratch
addi x11, x11, -96 # sub immediate from rs1 to counter offset
c.fsd f9, 96(x11) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x13, 0x7003a5fade83352f # initialize rs2 with random value
sd x13, 0(x15) # store 0x7003a5fade83352f in memory
fld f13, 0(x15) # load 0x7003a5fade83352f from memory into fs2
sd x0, 0(x15) # clearing the random value store at scratch
addi x15, x15, -104 # sub immediate from rs1 to counter offset
c.fsd f13, 104(x15) # perform operation 

# Testcase cp_imm_mul
la x13, scratch # base address
li x14, 0xb0736505fe6d6c4a # initialize rs2 with random value
sd x14, 0(x13) # store 0xb0736505fe6d6c4a in memory
fld f14, 0(x13) # load 0xb0736505fe6d6c4a from memory into fs2
sd x0, 0(x13) # clearing the random value store at scratch
addi x13, x13, -112 # sub immediate from rs1 to counter offset
c.fsd f14, 112(x13) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x13, 0x4a197ed2d01c72cf # initialize rs2 with random value
sd x13, 0(x8) # store 0x4a197ed2d01c72cf in memory
fld f13, 0(x8) # load 0x4a197ed2d01c72cf from memory into fs2
sd x0, 0(x8) # clearing the random value store at scratch
addi x8, x8, -120 # sub immediate from rs1 to counter offset
c.fsd f13, 120(x8) # perform operation 

# Testcase cp_imm_mul
la x10, scratch # base address
li x12, 0x5cb35081a3feb824 # initialize rs2 with random value
sd x12, 0(x10) # store 0x5cb35081a3feb824 in memory
fld f12, 0(x10) # load 0x5cb35081a3feb824 from memory into fs2
sd x0, 0(x10) # clearing the random value store at scratch
addi x10, x10, -128 # sub immediate from rs1 to counter offset
c.fsd f12, 128(x10) # perform operation 

# Testcase cp_imm_mul
la x10, scratch # base address
li x13, 0xa34a97b119d17e75 # initialize rs2 with random value
sd x13, 0(x10) # store 0xa34a97b119d17e75 in memory
fld f13, 0(x10) # load 0xa34a97b119d17e75 from memory into fs2
sd x0, 0(x10) # clearing the random value store at scratch
addi x10, x10, -136 # sub immediate from rs1 to counter offset
c.fsd f13, 136(x10) # perform operation 

# Testcase cp_imm_mul
la x10, scratch # base address
li x12, 0x285e4c3ad8a4ca1f # initialize rs2 with random value
sd x12, 0(x10) # store 0x285e4c3ad8a4ca1f in memory
fld f12, 0(x10) # load 0x285e4c3ad8a4ca1f from memory into fs2
sd x0, 0(x10) # clearing the random value store at scratch
addi x10, x10, -144 # sub immediate from rs1 to counter offset
c.fsd f12, 144(x10) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x11, 0xfc98ebac3f1ee7d3 # initialize rs2 with random value
sd x11, 0(x8) # store 0xfc98ebac3f1ee7d3 in memory
fld f11, 0(x8) # load 0xfc98ebac3f1ee7d3 from memory into fs2
sd x0, 0(x8) # clearing the random value store at scratch
addi x8, x8, -152 # sub immediate from rs1 to counter offset
c.fsd f11, 152(x8) # perform operation 

# Testcase cp_imm_mul
la x14, scratch # base address
li x10, 0x5b0b77183199f84a # initialize rs2 with random value
sd x10, 0(x14) # store 0x5b0b77183199f84a in memory
fld f10, 0(x14) # load 0x5b0b77183199f84a from memory into fs2
sd x0, 0(x14) # clearing the random value store at scratch
addi x14, x14, -160 # sub immediate from rs1 to counter offset
c.fsd f10, 160(x14) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x10, 0x1a15f3af5a0cb295 # initialize rs2 with random value
sd x10, 0(x8) # store 0x1a15f3af5a0cb295 in memory
fld f10, 0(x8) # load 0x1a15f3af5a0cb295 from memory into fs2
sd x0, 0(x8) # clearing the random value store at scratch
addi x8, x8, -168 # sub immediate from rs1 to counter offset
c.fsd f10, 168(x8) # perform operation 

# Testcase cp_imm_mul
la x12, scratch # base address
li x11, 0x9cf7fe64851f9add # initialize rs2 with random value
sd x11, 0(x12) # store 0x9cf7fe64851f9add in memory
fld f11, 0(x12) # load 0x9cf7fe64851f9add from memory into fs2
sd x0, 0(x12) # clearing the random value store at scratch
addi x12, x12, -176 # sub immediate from rs1 to counter offset
c.fsd f11, 176(x12) # perform operation 

# Testcase cp_imm_mul
la x12, scratch # base address
li x9, 0x1198f3718e5813d5 # initialize rs2 with random value
sd x9, 0(x12) # store 0x1198f3718e5813d5 in memory
fld f9, 0(x12) # load 0x1198f3718e5813d5 from memory into fs2
sd x0, 0(x12) # clearing the random value store at scratch
addi x12, x12, -184 # sub immediate from rs1 to counter offset
c.fsd f9, 184(x12) # perform operation 

# Testcase cp_imm_mul
la x10, scratch # base address
li x13, 0x644064ccb215a226 # initialize rs2 with random value
sd x13, 0(x10) # store 0x644064ccb215a226 in memory
fld f13, 0(x10) # load 0x644064ccb215a226 from memory into fs2
sd x0, 0(x10) # clearing the random value store at scratch
addi x10, x10, -192 # sub immediate from rs1 to counter offset
c.fsd f13, 192(x10) # perform operation 

# Testcase cp_imm_mul
la x14, scratch # base address
li x13, 0x02acf6ce35da9f46 # initialize rs2 with random value
sd x13, 0(x14) # store 0x2acf6ce35da9f46 in memory
fld f13, 0(x14) # load 0x2acf6ce35da9f46 from memory into fs2
sd x0, 0(x14) # clearing the random value store at scratch
addi x14, x14, -200 # sub immediate from rs1 to counter offset
c.fsd f13, 200(x14) # perform operation 

# Testcase cp_imm_mul
la x11, scratch # base address
li x12, 0xe643845c8cfb7b62 # initialize rs2 with random value
sd x12, 0(x11) # store 0xe643845c8cfb7b62 in memory
fld f12, 0(x11) # load 0xe643845c8cfb7b62 from memory into fs2
sd x0, 0(x11) # clearing the random value store at scratch
addi x11, x11, -208 # sub immediate from rs1 to counter offset
c.fsd f12, 208(x11) # perform operation 

# Testcase cp_imm_mul
la x10, scratch # base address
li x11, 0xd2862fa0a1158171 # initialize rs2 with random value
sd x11, 0(x10) # store 0xd2862fa0a1158171 in memory
fld f11, 0(x10) # load 0xd2862fa0a1158171 from memory into fs2
sd x0, 0(x10) # clearing the random value store at scratch
addi x10, x10, -216 # sub immediate from rs1 to counter offset
c.fsd f11, 216(x10) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x11, 0xa2e7d140a19427e1 # initialize rs2 with random value
sd x11, 0(x8) # store 0xa2e7d140a19427e1 in memory
fld f11, 0(x8) # load 0xa2e7d140a19427e1 from memory into fs2
sd x0, 0(x8) # clearing the random value store at scratch
addi x8, x8, -224 # sub immediate from rs1 to counter offset
c.fsd f11, 224(x8) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x8, 0xc4da3ecd8d8d771c # initialize rs2 with random value
sd x8, 0(x9) # store 0xc4da3ecd8d8d771c in memory
fld f8, 0(x9) # load 0xc4da3ecd8d8d771c from memory into fs2
sd x0, 0(x9) # clearing the random value store at scratch
addi x9, x9, -232 # sub immediate from rs1 to counter offset
c.fsd f8, 232(x9) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x9, 0xc4bd51a6bd6e10ca # initialize rs2 with random value
sd x9, 0(x8) # store 0xc4bd51a6bd6e10ca in memory
fld f9, 0(x8) # load 0xc4bd51a6bd6e10ca from memory into fs2
sd x0, 0(x8) # clearing the random value store at scratch
addi x8, x8, -240 # sub immediate from rs1 to counter offset
c.fsd f9, 240(x8) # perform operation 

# Testcase cp_imm_mul
la x11, scratch # base address
li x9, 0xbb786ef2f77c474f # initialize rs2 with random value
sd x9, 0(x11) # store 0xbb786ef2f77c474f in memory
fld f9, 0(x11) # load 0xbb786ef2f77c474f from memory into fs2
sd x0, 0(x11) # clearing the random value store at scratch
addi x11, x11, -248 # sub immediate from rs1 to counter offset
c.fsd f9, 248(x11) # perform operation 

.EQU SIGSIZE,0


 # testgen_footer.S


write_tohost:
    la t1, tohost
    li t0, 1
    sw t0, 0(t1)
    sw zero, 4(t1)

self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 136

.data 

.section .tohost 
tohost: # write to HTIF
    .dword 0
fromhost:
    .dword 0

.align 4
begin_signature:
    .fill SIGSIZE*8/__riscv_xlen,__riscv_xlen/8,0xdeadbeef
end_signature:

.end
