///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zcd/WALLY-COV-c.fsd.S
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
li x13, 0xb8e0c885 # initialize rs2 with random value
li x12, 0x5e23c06c # initialize x12 with random value{formatstr.format(rs1val)}
sw x13, 0(x8) # store 0xb8e0c885 in memory
sw x12, 4(x8) # store 0x5e23c06c in memory
fld f13, 0(x8) # load 0x5e23c06cb8e0c885 from memory into fs2
sw x0, 0(x8) # clearing the random value store at scratch
sw x0, 4(x8) # clearing the random value store at 4(scratch)
addi x8, x8, -64 # sub immediate from rs1 to counter offset
c.fsd f13, 64(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
la x9, scratch # base address
li x13, 0x58cb99d1 # initialize rs2 with random value
li x8, 0x7a766544 # initialize x8 with random value{formatstr.format(rs1val)}
sw x13, 0(x9) # store 0x58cb99d1 in memory
sw x8, 4(x9) # store 0x7a766544 in memory
fld f13, 0(x9) # load 0x7a76654458cb99d1 from memory into fs2
sw x0, 0(x9) # clearing the random value store at scratch
sw x0, 4(x9) # clearing the random value store at 4(scratch)
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.fsd f13, 0(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
la x10, scratch # base address
li x8, 0x9e3fe27f # initialize rs2 with random value
li x9, 0xb524ce83 # initialize x9 with random value{formatstr.format(rs1val)}
sw x8, 0(x10) # store 0x9e3fe27f in memory
sw x9, 4(x10) # store 0xb524ce83 in memory
fld f8, 0(x10) # load 0xb524ce839e3fe27f from memory into fs2
sw x0, 0(x10) # clearing the random value store at scratch
sw x0, 4(x10) # clearing the random value store at 4(scratch)
addi x10, x10, -16 # sub immediate from rs1 to counter offset
c.fsd f8, 16(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
la x11, scratch # base address
li x9, 0xccb96809 # initialize rs2 with random value
li x8, 0xa7d5cb8e # initialize x8 with random value{formatstr.format(rs1val)}
sw x9, 0(x11) # store 0xccb96809 in memory
sw x8, 4(x11) # store 0xa7d5cb8e in memory
fld f9, 0(x11) # load 0xa7d5cb8eccb96809 from memory into fs2
sw x0, 0(x11) # clearing the random value store at scratch
sw x0, 4(x11) # clearing the random value store at 4(scratch)
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.fsd f9, 0(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
la x12, scratch # base address
li x13, 0x6d376e95 # initialize rs2 with random value
li x8, 0xb7821219 # initialize x8 with random value{formatstr.format(rs1val)}
sw x13, 0(x12) # store 0x6d376e95 in memory
sw x8, 4(x12) # store 0xb7821219 in memory
fld f13, 0(x12) # load 0xb78212196d376e95 from memory into fs2
sw x0, 0(x12) # clearing the random value store at scratch
sw x0, 4(x12) # clearing the random value store at 4(scratch)
addi x12, x12, -8 # sub immediate from rs1 to counter offset
c.fsd f13, 8(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
la x13, scratch # base address
li x15, 0x120a7b07 # initialize rs2 with random value
li x8, 0xddb38d0c # initialize x8 with random value{formatstr.format(rs1val)}
sw x15, 0(x13) # store 0x120a7b07 in memory
sw x8, 4(x13) # store 0xddb38d0c in memory
fld f15, 0(x13) # load 0xddb38d0c120a7b07 from memory into fs2
sw x0, 0(x13) # clearing the random value store at scratch
sw x0, 4(x13) # clearing the random value store at 4(scratch)
addi x13, x13, -8 # sub immediate from rs1 to counter offset
c.fsd f15, 8(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
la x14, scratch # base address
li x8, 0x146c6795 # initialize rs2 with random value
li x10, 0x250ddd33 # initialize x10 with random value{formatstr.format(rs1val)}
sw x8, 0(x14) # store 0x146c6795 in memory
sw x10, 4(x14) # store 0x250ddd33 in memory
fld f8, 0(x14) # load 0x250ddd33146c6795 from memory into fs2
sw x0, 0(x14) # clearing the random value store at scratch
sw x0, 4(x14) # clearing the random value store at 4(scratch)
addi x14, x14, -80 # sub immediate from rs1 to counter offset
c.fsd f8, 80(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
la x15, scratch # base address
li x10, 0x155ba885 # initialize rs2 with random value
li x8, 0x2c1b76dd # initialize x8 with random value{formatstr.format(rs1val)}
sw x10, 0(x15) # store 0x155ba885 in memory
sw x8, 4(x15) # store 0x2c1b76dd in memory
fld f10, 0(x15) # load 0x2c1b76dd155ba885 from memory into fs2
sw x0, 0(x15) # clearing the random value store at scratch
sw x0, 4(x15) # clearing the random value store at 4(scratch)
addi x15, x15, -200 # sub immediate from rs1 to counter offset
c.fsd f10, 200(x15) # perform operation 

# Testcase cp_fs2 (Test source fs2 = f8)
la x11, scratch # base address
li x8, 0x654e6db7 # initialize rs2 with random value
li x12, 0x7b3b0dfd # initialize x12 with random value{formatstr.format(rs1val)}
sw x8, 0(x11) # store 0x654e6db7 in memory
sw x12, 4(x11) # store 0x7b3b0dfd in memory
fld f8, 0(x11) # load 0x7b3b0dfd654e6db7 from memory into fs2
sw x0, 0(x11) # clearing the random value store at scratch
sw x0, 4(x11) # clearing the random value store at 4(scratch)
addi x11, x11, -208 # sub immediate from rs1 to counter offset
c.fsd f8, 208(x11) # perform operation 

# Testcase cp_fs2 (Test source fs2 = f9)
la x10, scratch # base address
li x9, 0xddc70143 # initialize rs2 with random value
li x8, 0x4355a9e1 # initialize x8 with random value{formatstr.format(rs1val)}
sw x9, 0(x10) # store 0xddc70143 in memory
sw x8, 4(x10) # store 0x4355a9e1 in memory
fld f9, 0(x10) # load 0x4355a9e1ddc70143 from memory into fs2
sw x0, 0(x10) # clearing the random value store at scratch
sw x0, 4(x10) # clearing the random value store at 4(scratch)
addi x10, x10, -232 # sub immediate from rs1 to counter offset
c.fsd f9, 232(x10) # perform operation 

# Testcase cp_fs2 (Test source fs2 = f10)
la x8, scratch # base address
li x10, 0xfca7928f # initialize rs2 with random value
li x13, 0x45c3bc1a # initialize x13 with random value{formatstr.format(rs1val)}
sw x10, 0(x8) # store 0xfca7928f in memory
sw x13, 4(x8) # store 0x45c3bc1a in memory
fld f10, 0(x8) # load 0x45c3bc1afca7928f from memory into fs2
sw x0, 0(x8) # clearing the random value store at scratch
sw x0, 4(x8) # clearing the random value store at 4(scratch)
addi x8, x8, -160 # sub immediate from rs1 to counter offset
c.fsd f10, 160(x8) # perform operation 

# Testcase cp_fs2 (Test source fs2 = f11)
la x10, scratch # base address
li x11, 0x2102c5ef # initialize rs2 with random value
li x8, 0x920e921d # initialize x8 with random value{formatstr.format(rs1val)}
sw x11, 0(x10) # store 0x2102c5ef in memory
sw x8, 4(x10) # store 0x920e921d in memory
fld f11, 0(x10) # load 0x920e921d2102c5ef from memory into fs2
sw x0, 0(x10) # clearing the random value store at scratch
sw x0, 4(x10) # clearing the random value store at 4(scratch)
addi x10, x10, -24 # sub immediate from rs1 to counter offset
c.fsd f11, 24(x10) # perform operation 

# Testcase cp_fs2 (Test source fs2 = f12)
la x14, scratch # base address
li x12, 0x7f1fc339 # initialize rs2 with random value
li x8, 0xfa18f923 # initialize x8 with random value{formatstr.format(rs1val)}
sw x12, 0(x14) # store 0x7f1fc339 in memory
sw x8, 4(x14) # store 0xfa18f923 in memory
fld f12, 0(x14) # load 0xfa18f9237f1fc339 from memory into fs2
sw x0, 0(x14) # clearing the random value store at scratch
sw x0, 4(x14) # clearing the random value store at 4(scratch)
addi x14, x14, -40 # sub immediate from rs1 to counter offset
c.fsd f12, 40(x14) # perform operation 

# Testcase cp_fs2 (Test source fs2 = f13)
la x8, scratch # base address
li x13, 0x9d96b555 # initialize rs2 with random value
li x9, 0x46e20f95 # initialize x9 with random value{formatstr.format(rs1val)}
sw x13, 0(x8) # store 0x9d96b555 in memory
sw x9, 4(x8) # store 0x46e20f95 in memory
fld f13, 0(x8) # load 0x46e20f959d96b555 from memory into fs2
sw x0, 0(x8) # clearing the random value store at scratch
sw x0, 4(x8) # clearing the random value store at 4(scratch)
addi x8, x8, -80 # sub immediate from rs1 to counter offset
c.fsd f13, 80(x8) # perform operation 

# Testcase cp_fs2 (Test source fs2 = f14)
la x13, scratch # base address
li x14, 0xeeff8151 # initialize rs2 with random value
li x8, 0x621548b9 # initialize x8 with random value{formatstr.format(rs1val)}
sw x14, 0(x13) # store 0xeeff8151 in memory
sw x8, 4(x13) # store 0x621548b9 in memory
fld f14, 0(x13) # load 0x621548b9eeff8151 from memory into fs2
sw x0, 0(x13) # clearing the random value store at scratch
sw x0, 4(x13) # clearing the random value store at 4(scratch)
addi x13, x13, -88 # sub immediate from rs1 to counter offset
c.fsd f14, 88(x13) # perform operation 

# Testcase cp_fs2 (Test source fs2 = f15)
la x9, scratch # base address
li x15, 0x89608ac7 # initialize rs2 with random value
li x8, 0xd0acfff0 # initialize x8 with random value{formatstr.format(rs1val)}
sw x15, 0(x9) # store 0x89608ac7 in memory
sw x8, 4(x9) # store 0xd0acfff0 in memory
fld f15, 0(x9) # load 0xd0acfff089608ac7 from memory into fs2
sw x0, 0(x9) # clearing the random value store at scratch
sw x0, 4(x9) # clearing the random value store at 4(scratch)
addi x9, x9, -40 # sub immediate from rs1 to counter offset
c.fsd f15, 40(x9) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x9, 0x9e8a2857 # initialize rs2 with random value
li x8, 0x0c4b9e83 # initialize x8 with random value{formatstr.format(rs1val)}
sw x9, 0(x15) # store 0x9e8a2857 in memory
sw x8, 4(x15) # store 0xc4b9e83 in memory
fld f9, 0(x15) # load 0xc4b9e839e8a2857 from memory into fs2
sw x0, 0(x15) # clearing the random value store at scratch
sw x0, 4(x15) # clearing the random value store at 4(scratch)
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.fsd f9, 0(x15) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x10, 0x5a7cfafe # initialize rs2 with random value
li x8, 0xec1e2f92 # initialize x8 with random value{formatstr.format(rs1val)}
sw x10, 0(x9) # store 0x5a7cfafe in memory
sw x8, 4(x9) # store 0xec1e2f92 in memory
fld f10, 0(x9) # load 0xec1e2f925a7cfafe from memory into fs2
sw x0, 0(x9) # clearing the random value store at scratch
sw x0, 4(x9) # clearing the random value store at 4(scratch)
addi x9, x9, -8 # sub immediate from rs1 to counter offset
c.fsd f10, 8(x9) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x12, 0x47b4a934 # initialize rs2 with random value
li x8, 0x2affb3dd # initialize x8 with random value{formatstr.format(rs1val)}
sw x12, 0(x15) # store 0x47b4a934 in memory
sw x8, 4(x15) # store 0x2affb3dd in memory
fld f12, 0(x15) # load 0x2affb3dd47b4a934 from memory into fs2
sw x0, 0(x15) # clearing the random value store at scratch
sw x0, 4(x15) # clearing the random value store at 4(scratch)
addi x15, x15, -16 # sub immediate from rs1 to counter offset
c.fsd f12, 16(x15) # perform operation 

# Testcase cp_imm_mul
la x13, scratch # base address
li x10, 0xf9574290 # initialize rs2 with random value
li x8, 0x7fb1edb4 # initialize x8 with random value{formatstr.format(rs1val)}
sw x10, 0(x13) # store 0xf9574290 in memory
sw x8, 4(x13) # store 0x7fb1edb4 in memory
fld f10, 0(x13) # load 0x7fb1edb4f9574290 from memory into fs2
sw x0, 0(x13) # clearing the random value store at scratch
sw x0, 4(x13) # clearing the random value store at 4(scratch)
addi x13, x13, -24 # sub immediate from rs1 to counter offset
c.fsd f10, 24(x13) # perform operation 

# Testcase cp_imm_mul
la x13, scratch # base address
li x12, 0x5b6136f4 # initialize rs2 with random value
li x8, 0x3b0cbc4d # initialize x8 with random value{formatstr.format(rs1val)}
sw x12, 0(x13) # store 0x5b6136f4 in memory
sw x8, 4(x13) # store 0x3b0cbc4d in memory
fld f12, 0(x13) # load 0x3b0cbc4d5b6136f4 from memory into fs2
sw x0, 0(x13) # clearing the random value store at scratch
sw x0, 4(x13) # clearing the random value store at 4(scratch)
addi x13, x13, -32 # sub immediate from rs1 to counter offset
c.fsd f12, 32(x13) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x13, 0xf770f431 # initialize rs2 with random value
li x12, 0xc7f68e01 # initialize x12 with random value{formatstr.format(rs1val)}
sw x13, 0(x8) # store 0xf770f431 in memory
sw x12, 4(x8) # store 0xc7f68e01 in memory
fld f13, 0(x8) # load 0xc7f68e01f770f431 from memory into fs2
sw x0, 0(x8) # clearing the random value store at scratch
sw x0, 4(x8) # clearing the random value store at 4(scratch)
addi x8, x8, -40 # sub immediate from rs1 to counter offset
c.fsd f13, 40(x8) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x15, 0x9d27e0c6 # initialize rs2 with random value
li x14, 0xece6a361 # initialize x14 with random value{formatstr.format(rs1val)}
sw x15, 0(x8) # store 0x9d27e0c6 in memory
sw x14, 4(x8) # store 0xece6a361 in memory
fld f15, 0(x8) # load 0xece6a3619d27e0c6 from memory into fs2
sw x0, 0(x8) # clearing the random value store at scratch
sw x0, 4(x8) # clearing the random value store at 4(scratch)
addi x8, x8, -48 # sub immediate from rs1 to counter offset
c.fsd f15, 48(x8) # perform operation 

# Testcase cp_imm_mul
la x11, scratch # base address
li x15, 0x04616d5e # initialize rs2 with random value
li x8, 0xef3d5aac # initialize x8 with random value{formatstr.format(rs1val)}
sw x15, 0(x11) # store 0x4616d5e in memory
sw x8, 4(x11) # store 0xef3d5aac in memory
fld f15, 0(x11) # load 0xef3d5aac4616d5e from memory into fs2
sw x0, 0(x11) # clearing the random value store at scratch
sw x0, 4(x11) # clearing the random value store at 4(scratch)
addi x11, x11, -56 # sub immediate from rs1 to counter offset
c.fsd f15, 56(x11) # perform operation 

# Testcase cp_imm_mul
la x11, scratch # base address
li x15, 0xab276229 # initialize rs2 with random value
li x8, 0x94306067 # initialize x8 with random value{formatstr.format(rs1val)}
sw x15, 0(x11) # store 0xab276229 in memory
sw x8, 4(x11) # store 0x94306067 in memory
fld f15, 0(x11) # load 0x94306067ab276229 from memory into fs2
sw x0, 0(x11) # clearing the random value store at scratch
sw x0, 4(x11) # clearing the random value store at 4(scratch)
addi x11, x11, -64 # sub immediate from rs1 to counter offset
c.fsd f15, 64(x11) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x8, 0xbbfd7b0e # initialize rs2 with random value
li x10, 0xc3aa0ca6 # initialize x10 with random value{formatstr.format(rs1val)}
sw x8, 0(x9) # store 0xbbfd7b0e in memory
sw x10, 4(x9) # store 0xc3aa0ca6 in memory
fld f8, 0(x9) # load 0xc3aa0ca6bbfd7b0e from memory into fs2
sw x0, 0(x9) # clearing the random value store at scratch
sw x0, 4(x9) # clearing the random value store at 4(scratch)
addi x9, x9, -72 # sub immediate from rs1 to counter offset
c.fsd f8, 72(x9) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x13, 0x0c80b3d0 # initialize rs2 with random value
li x15, 0x3be9bc0c # initialize x15 with random value{formatstr.format(rs1val)}
sw x13, 0(x8) # store 0xc80b3d0 in memory
sw x15, 4(x8) # store 0x3be9bc0c in memory
fld f13, 0(x8) # load 0x3be9bc0cc80b3d0 from memory into fs2
sw x0, 0(x8) # clearing the random value store at scratch
sw x0, 4(x8) # clearing the random value store at 4(scratch)
addi x8, x8, -80 # sub immediate from rs1 to counter offset
c.fsd f13, 80(x8) # perform operation 

# Testcase cp_imm_mul
la x12, scratch # base address
li x11, 0x9d58b31e # initialize rs2 with random value
li x8, 0x3f958ddd # initialize x8 with random value{formatstr.format(rs1val)}
sw x11, 0(x12) # store 0x9d58b31e in memory
sw x8, 4(x12) # store 0x3f958ddd in memory
fld f11, 0(x12) # load 0x3f958ddd9d58b31e from memory into fs2
sw x0, 0(x12) # clearing the random value store at scratch
sw x0, 4(x12) # clearing the random value store at 4(scratch)
addi x12, x12, -88 # sub immediate from rs1 to counter offset
c.fsd f11, 88(x12) # perform operation 

# Testcase cp_imm_mul
la x13, scratch # base address
li x14, 0xbc7473a8 # initialize rs2 with random value
li x8, 0xc0a816d3 # initialize x8 with random value{formatstr.format(rs1val)}
sw x14, 0(x13) # store 0xbc7473a8 in memory
sw x8, 4(x13) # store 0xc0a816d3 in memory
fld f14, 0(x13) # load 0xc0a816d3bc7473a8 from memory into fs2
sw x0, 0(x13) # clearing the random value store at scratch
sw x0, 4(x13) # clearing the random value store at 4(scratch)
addi x13, x13, -96 # sub immediate from rs1 to counter offset
c.fsd f14, 96(x13) # perform operation 

# Testcase cp_imm_mul
la x14, scratch # base address
li x8, 0x953eb4a0 # initialize rs2 with random value
li x13, 0x29dd280a # initialize x13 with random value{formatstr.format(rs1val)}
sw x8, 0(x14) # store 0x953eb4a0 in memory
sw x13, 4(x14) # store 0x29dd280a in memory
fld f8, 0(x14) # load 0x29dd280a953eb4a0 from memory into fs2
sw x0, 0(x14) # clearing the random value store at scratch
sw x0, 4(x14) # clearing the random value store at 4(scratch)
addi x14, x14, -104 # sub immediate from rs1 to counter offset
c.fsd f8, 104(x14) # perform operation 

# Testcase cp_imm_mul
la x13, scratch # base address
li x8, 0xc28dc9d6 # initialize rs2 with random value
li x12, 0x7afb8bff # initialize x12 with random value{formatstr.format(rs1val)}
sw x8, 0(x13) # store 0xc28dc9d6 in memory
sw x12, 4(x13) # store 0x7afb8bff in memory
fld f8, 0(x13) # load 0x7afb8bffc28dc9d6 from memory into fs2
sw x0, 0(x13) # clearing the random value store at scratch
sw x0, 4(x13) # clearing the random value store at 4(scratch)
addi x13, x13, -112 # sub immediate from rs1 to counter offset
c.fsd f8, 112(x13) # perform operation 

# Testcase cp_imm_mul
la x11, scratch # base address
li x15, 0xe8f97fb7 # initialize rs2 with random value
li x8, 0xd43aa6d6 # initialize x8 with random value{formatstr.format(rs1val)}
sw x15, 0(x11) # store 0xe8f97fb7 in memory
sw x8, 4(x11) # store 0xd43aa6d6 in memory
fld f15, 0(x11) # load 0xd43aa6d6e8f97fb7 from memory into fs2
sw x0, 0(x11) # clearing the random value store at scratch
sw x0, 4(x11) # clearing the random value store at 4(scratch)
addi x11, x11, -120 # sub immediate from rs1 to counter offset
c.fsd f15, 120(x11) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x15, 0xfaa1b1b9 # initialize rs2 with random value
li x8, 0xb0d2a98b # initialize x8 with random value{formatstr.format(rs1val)}
sw x15, 0(x9) # store 0xfaa1b1b9 in memory
sw x8, 4(x9) # store 0xb0d2a98b in memory
fld f15, 0(x9) # load 0xb0d2a98bfaa1b1b9 from memory into fs2
sw x0, 0(x9) # clearing the random value store at scratch
sw x0, 4(x9) # clearing the random value store at 4(scratch)
addi x9, x9, -128 # sub immediate from rs1 to counter offset
c.fsd f15, 128(x9) # perform operation 

# Testcase cp_imm_mul
la x13, scratch # base address
li x12, 0xde83352f # initialize rs2 with random value
li x8, 0x35fc2359 # initialize x8 with random value{formatstr.format(rs1val)}
sw x12, 0(x13) # store 0xde83352f in memory
sw x8, 4(x13) # store 0x35fc2359 in memory
fld f12, 0(x13) # load 0x35fc2359de83352f from memory into fs2
sw x0, 0(x13) # clearing the random value store at scratch
sw x0, 4(x13) # clearing the random value store at 4(scratch)
addi x13, x13, -136 # sub immediate from rs1 to counter offset
c.fsd f12, 136(x13) # perform operation 

# Testcase cp_imm_mul
la x14, scratch # base address
li x10, 0x23854f22 # initialize rs2 with random value
li x8, 0x9d8856cf # initialize x8 with random value{formatstr.format(rs1val)}
sw x10, 0(x14) # store 0x23854f22 in memory
sw x8, 4(x14) # store 0x9d8856cf in memory
fld f10, 0(x14) # load 0x9d8856cf23854f22 from memory into fs2
sw x0, 0(x14) # clearing the random value store at scratch
sw x0, 4(x14) # clearing the random value store at 4(scratch)
addi x14, x14, -144 # sub immediate from rs1 to counter offset
c.fsd f10, 144(x14) # perform operation 

# Testcase cp_imm_mul
la x13, scratch # base address
li x9, 0xeaef3e30 # initialize rs2 with random value
li x8, 0x41afd276 # initialize x8 with random value{formatstr.format(rs1val)}
sw x9, 0(x13) # store 0xeaef3e30 in memory
sw x8, 4(x13) # store 0x41afd276 in memory
fld f9, 0(x13) # load 0x41afd276eaef3e30 from memory into fs2
sw x0, 0(x13) # clearing the random value store at scratch
sw x0, 4(x13) # clearing the random value store at 4(scratch)
addi x13, x13, -152 # sub immediate from rs1 to counter offset
c.fsd f9, 152(x13) # perform operation 

# Testcase cp_imm_mul
la x11, scratch # base address
li x8, 0x50d98130 # initialize rs2 with random value
li x12, 0xd01c72cf # initialize x12 with random value{formatstr.format(rs1val)}
sw x8, 0(x11) # store 0x50d98130 in memory
sw x12, 4(x11) # store 0xd01c72cf in memory
fld f8, 0(x11) # load 0xd01c72cf50d98130 from memory into fs2
sw x0, 0(x11) # clearing the random value store at scratch
sw x0, 4(x11) # clearing the random value store at 4(scratch)
addi x11, x11, -160 # sub immediate from rs1 to counter offset
c.fsd f8, 160(x11) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x14, 0x2b6d5071 # initialize rs2 with random value
li x8, 0xa3feb824 # initialize x8 with random value{formatstr.format(rs1val)}
sw x14, 0(x15) # store 0x2b6d5071 in memory
sw x8, 4(x15) # store 0xa3feb824 in memory
fld f14, 0(x15) # load 0xa3feb8242b6d5071 from memory into fs2
sw x0, 0(x15) # clearing the random value store at scratch
sw x0, 4(x15) # clearing the random value store at 4(scratch)
addi x15, x15, -168 # sub immediate from rs1 to counter offset
c.fsd f14, 168(x15) # perform operation 

# Testcase cp_imm_mul
la x10, scratch # base address
li x13, 0x103bceaf # initialize rs2 with random value
li x8, 0x749fbd7e # initialize x8 with random value{formatstr.format(rs1val)}
sw x13, 0(x10) # store 0x103bceaf in memory
sw x8, 4(x10) # store 0x749fbd7e in memory
fld f13, 0(x10) # load 0x749fbd7e103bceaf from memory into fs2
sw x0, 0(x10) # clearing the random value store at scratch
sw x0, 4(x10) # clearing the random value store at 4(scratch)
addi x10, x10, -176 # sub immediate from rs1 to counter offset
c.fsd f13, 176(x10) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x8, 0x40591157 # initialize rs2 with random value
li x10, 0x1d8eb9a1 # initialize x10 with random value{formatstr.format(rs1val)}
sw x8, 0(x15) # store 0x40591157 in memory
sw x10, 4(x15) # store 0x1d8eb9a1 in memory
fld f8, 0(x15) # load 0x1d8eb9a140591157 from memory into fs2
sw x0, 0(x15) # clearing the random value store at scratch
sw x0, 4(x15) # clearing the random value store at 4(scratch)
addi x15, x15, -184 # sub immediate from rs1 to counter offset
c.fsd f8, 184(x15) # perform operation 

# Testcase cp_imm_mul
la x13, scratch # base address
li x11, 0x545b2622 # initialize rs2 with random value
li x8, 0x790179e2 # initialize x8 with random value{formatstr.format(rs1val)}
sw x11, 0(x13) # store 0x545b2622 in memory
sw x8, 4(x13) # store 0x790179e2 in memory
fld f11, 0(x13) # load 0x790179e2545b2622 from memory into fs2
sw x0, 0(x13) # clearing the random value store at scratch
sw x0, 4(x13) # clearing the random value store at 4(scratch)
addi x13, x13, -192 # sub immediate from rs1 to counter offset
c.fsd f11, 192(x13) # perform operation 

# Testcase cp_imm_mul
la x11, scratch # base address
li x15, 0x2e215997 # initialize rs2 with random value
li x8, 0x56c920ae # initialize x8 with random value{formatstr.format(rs1val)}
sw x15, 0(x11) # store 0x2e215997 in memory
sw x8, 4(x11) # store 0x56c920ae in memory
fld f15, 0(x11) # load 0x56c920ae2e215997 from memory into fs2
sw x0, 0(x11) # clearing the random value store at scratch
sw x0, 4(x11) # clearing the random value store at 4(scratch)
addi x11, x11, -200 # sub immediate from rs1 to counter offset
c.fsd f15, 200(x11) # perform operation 

# Testcase cp_imm_mul
la x14, scratch # base address
li x10, 0xa533b048 # initialize rs2 with random value
li x8, 0x0a5f0bf7 # initialize x8 with random value{formatstr.format(rs1val)}
sw x10, 0(x14) # store 0xa533b048 in memory
sw x8, 4(x14) # store 0xa5f0bf7 in memory
fld f10, 0(x14) # load 0xa5f0bf7a533b048 from memory into fs2
sw x0, 0(x14) # clearing the random value store at scratch
sw x0, 4(x14) # clearing the random value store at 4(scratch)
addi x14, x14, -208 # sub immediate from rs1 to counter offset
c.fsd f10, 208(x14) # perform operation 

# Testcase cp_imm_mul
la x11, scratch # base address
li x13, 0xfd91eeaf # initialize rs2 with random value
li x8, 0x836a717a # initialize x8 with random value{formatstr.format(rs1val)}
sw x13, 0(x11) # store 0xfd91eeaf in memory
sw x8, 4(x11) # store 0x836a717a in memory
fld f13, 0(x11) # load 0x836a717afd91eeaf from memory into fs2
sw x0, 0(x11) # clearing the random value store at scratch
sw x0, 4(x11) # clearing the random value store at 4(scratch)
addi x11, x11, -216 # sub immediate from rs1 to counter offset
c.fsd f13, 216(x11) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x10, 0x602db98a # initialize rs2 with random value
li x9, 0xbabc31a4 # initialize x9 with random value{formatstr.format(rs1val)}
sw x10, 0(x8) # store 0x602db98a in memory
sw x9, 4(x8) # store 0xbabc31a4 in memory
fld f10, 0(x8) # load 0xbabc31a4602db98a from memory into fs2
sw x0, 0(x8) # clearing the random value store at scratch
sw x0, 4(x8) # clearing the random value store at 4(scratch)
addi x8, x8, -224 # sub immediate from rs1 to counter offset
c.fsd f10, 224(x8) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x13, 0xc8afbcb5 # initialize rs2 with random value
li x8, 0x9ccaac9c # initialize x8 with random value{formatstr.format(rs1val)}
sw x13, 0(x15) # store 0xc8afbcb5 in memory
sw x8, 4(x15) # store 0x9ccaac9c in memory
fld f13, 0(x15) # load 0x9ccaac9cc8afbcb5 from memory into fs2
sw x0, 0(x15) # clearing the random value store at scratch
sw x0, 4(x15) # clearing the random value store at 4(scratch)
addi x15, x15, -232 # sub immediate from rs1 to counter offset
c.fsd f13, 232(x15) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x11, 0x2cdfce40 # initialize rs2 with random value
li x8, 0x9cf7fe64 # initialize x8 with random value{formatstr.format(rs1val)}
sw x11, 0(x15) # store 0x2cdfce40 in memory
sw x8, 4(x15) # store 0x9cf7fe64 in memory
fld f11, 0(x15) # load 0x9cf7fe642cdfce40 from memory into fs2
sw x0, 0(x15) # clearing the random value store at scratch
sw x0, 4(x15) # clearing the random value store at 4(scratch)
addi x15, x15, -240 # sub immediate from rs1 to counter offset
c.fsd f11, 240(x15) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x13, 0x21c7659e # initialize rs2 with random value
li x8, 0x8e5813d5 # initialize x8 with random value{formatstr.format(rs1val)}
sw x13, 0(x9) # store 0x21c7659e in memory
sw x8, 4(x9) # store 0x8e5813d5 in memory
fld f13, 0(x9) # load 0x8e5813d521c7659e from memory into fs2
sw x0, 0(x9) # clearing the random value store at scratch
sw x0, 4(x9) # clearing the random value store at 4(scratch)
addi x9, x9, -248 # sub immediate from rs1 to counter offset
c.fsd f13, 248(x9) # perform operation 

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
