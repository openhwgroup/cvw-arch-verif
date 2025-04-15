///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zcd/WALLY-COV-c.fldsp.S
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


# Testcase cp_imm_mul
li x22, 0x5d89a1e8 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
sw x15, 0(sp)   # store value to put something in memory
c.fldsp f22, 0(sp) # perform operation

# Testcase cp_imm_mul
li x13, 0xa43c8bb1 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -8 # sub immediate from rs1 to counter offset
sw x29, 8(sp)   # store value to put something in memory
c.fldsp f13, 8(sp) # perform operation

# Testcase cp_imm_mul
li x5, 0x250b632e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -16 # sub immediate from rs1 to counter offset
sw x13, 16(sp)   # store value to put something in memory
c.fldsp f5, 16(sp) # perform operation

# Testcase cp_imm_mul
li x14, 0x766f6dff # initialize rs1
la sp, scratch # base address 
addi sp, sp, -24 # sub immediate from rs1 to counter offset
sw x2, 24(sp)   # store value to put something in memory
c.fldsp f14, 24(sp) # perform operation

# Testcase cp_imm_mul
li x17, 0xa8f3f09c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -32 # sub immediate from rs1 to counter offset
sw x3, 32(sp)   # store value to put something in memory
c.fldsp f17, 32(sp) # perform operation

# Testcase cp_imm_mul
li x13, 0xdc6ec28a # initialize rs1
la sp, scratch # base address 
addi sp, sp, -40 # sub immediate from rs1 to counter offset
sw x3, 40(sp)   # store value to put something in memory
c.fldsp f13, 40(sp) # perform operation

# Testcase cp_imm_mul
li x16, 0x78c45fea # initialize rs1
la sp, scratch # base address 
addi sp, sp, -48 # sub immediate from rs1 to counter offset
sw x23, 48(sp)   # store value to put something in memory
c.fldsp f16, 48(sp) # perform operation

# Testcase cp_imm_mul
li x13, 0x3638ff67 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -56 # sub immediate from rs1 to counter offset
sw x15, 56(sp)   # store value to put something in memory
c.fldsp f13, 56(sp) # perform operation

# Testcase cp_imm_mul
li x12, 0xf932469e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -64 # sub immediate from rs1 to counter offset
sw x6, 64(sp)   # store value to put something in memory
c.fldsp f12, 64(sp) # perform operation

# Testcase cp_imm_mul
li x7, 0x5a005307 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -72 # sub immediate from rs1 to counter offset
sw x8, 72(sp)   # store value to put something in memory
c.fldsp f7, 72(sp) # perform operation

# Testcase cp_imm_mul
li x15, 0xcce3d4b6 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -80 # sub immediate from rs1 to counter offset
sw x20, 80(sp)   # store value to put something in memory
c.fldsp f15, 80(sp) # perform operation

# Testcase cp_imm_mul
li x6, 0xabd37e9e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -88 # sub immediate from rs1 to counter offset
sw x29, 88(sp)   # store value to put something in memory
c.fldsp f6, 88(sp) # perform operation

# Testcase cp_imm_mul
li x16, 0x85345b50 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -96 # sub immediate from rs1 to counter offset
sw x15, 96(sp)   # store value to put something in memory
c.fldsp f16, 96(sp) # perform operation

# Testcase cp_imm_mul
li x22, 0xa10a49e1 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -104 # sub immediate from rs1 to counter offset
sw x20, 104(sp)   # store value to put something in memory
c.fldsp f22, 104(sp) # perform operation

# Testcase cp_imm_mul
li x29, 0xe465ac89 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -112 # sub immediate from rs1 to counter offset
sw x5, 112(sp)   # store value to put something in memory
c.fldsp f29, 112(sp) # perform operation

# Testcase cp_imm_mul
li x21, 0x9715f2c7 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -120 # sub immediate from rs1 to counter offset
sw x9, 120(sp)   # store value to put something in memory
c.fldsp f21, 120(sp) # perform operation

# Testcase cp_imm_mul
li x12, 0x9a7ccaed # initialize rs1
la sp, scratch # base address 
addi sp, sp, -128 # sub immediate from rs1 to counter offset
sw x25, 128(sp)   # store value to put something in memory
c.fldsp f12, 128(sp) # perform operation

# Testcase cp_imm_mul
li x28, 0x4398918d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -136 # sub immediate from rs1 to counter offset
sw x18, 136(sp)   # store value to put something in memory
c.fldsp f28, 136(sp) # perform operation

# Testcase cp_imm_mul
li x14, 0x424aad74 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -144 # sub immediate from rs1 to counter offset
sw x10, 144(sp)   # store value to put something in memory
c.fldsp f14, 144(sp) # perform operation

# Testcase cp_imm_mul
li x31, 0x8bb564a9 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -152 # sub immediate from rs1 to counter offset
sw x16, 152(sp)   # store value to put something in memory
c.fldsp f31, 152(sp) # perform operation

# Testcase cp_imm_mul
li x21, 0x9bfc5a71 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -160 # sub immediate from rs1 to counter offset
sw x3, 160(sp)   # store value to put something in memory
c.fldsp f21, 160(sp) # perform operation

# Testcase cp_imm_mul
li x5, 0xfdeb8315 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -168 # sub immediate from rs1 to counter offset
sw x2, 168(sp)   # store value to put something in memory
c.fldsp f5, 168(sp) # perform operation

# Testcase cp_imm_mul
li x23, 0x4abc0b3e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -176 # sub immediate from rs1 to counter offset
sw x22, 176(sp)   # store value to put something in memory
c.fldsp f23, 176(sp) # perform operation

# Testcase cp_imm_mul
li x14, 0xb8f1a815 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -184 # sub immediate from rs1 to counter offset
sw x27, 184(sp)   # store value to put something in memory
c.fldsp f14, 184(sp) # perform operation

# Testcase cp_imm_mul
li x25, 0x281abfc6 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -192 # sub immediate from rs1 to counter offset
sw x11, 192(sp)   # store value to put something in memory
c.fldsp f25, 192(sp) # perform operation

# Testcase cp_imm_mul
li x27, 0x90e9032a # initialize rs1
la sp, scratch # base address 
addi sp, sp, -200 # sub immediate from rs1 to counter offset
sw x7, 200(sp)   # store value to put something in memory
c.fldsp f27, 200(sp) # perform operation

# Testcase cp_imm_mul
li x7, 0xade61c5d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -208 # sub immediate from rs1 to counter offset
sw x14, 208(sp)   # store value to put something in memory
c.fldsp f7, 208(sp) # perform operation

# Testcase cp_imm_mul
li x6, 0xebdc3b9b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -216 # sub immediate from rs1 to counter offset
sw x2, 216(sp)   # store value to put something in memory
c.fldsp f6, 216(sp) # perform operation

# Testcase cp_imm_mul
li x6, 0xf1cabca0 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -224 # sub immediate from rs1 to counter offset
sw x1, 224(sp)   # store value to put something in memory
c.fldsp f6, 224(sp) # perform operation

# Testcase cp_imm_mul
li x17, 0x2e15e42c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -232 # sub immediate from rs1 to counter offset
sw x21, 232(sp)   # store value to put something in memory
c.fldsp f17, 232(sp) # perform operation

# Testcase cp_imm_mul
li x27, 0x4d255acd # initialize rs1
la sp, scratch # base address 
addi sp, sp, -240 # sub immediate from rs1 to counter offset
sw x18, 240(sp)   # store value to put something in memory
c.fldsp f27, 240(sp) # perform operation

# Testcase cp_imm_mul
li x3, 0x832b3e59 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -248 # sub immediate from rs1 to counter offset
sw x25, 248(sp)   # store value to put something in memory
c.fldsp f3, 248(sp) # perform operation

# Testcase cp_imm_mul
li x11, 0xd9031525 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -256 # sub immediate from rs1 to counter offset
sw x17, 256(sp)   # store value to put something in memory
c.fldsp f11, 256(sp) # perform operation

# Testcase cp_imm_mul
li x9, 0x8561dfef # initialize rs1
la sp, scratch # base address 
addi sp, sp, -264 # sub immediate from rs1 to counter offset
sw x28, 264(sp)   # store value to put something in memory
c.fldsp f9, 264(sp) # perform operation

# Testcase cp_imm_mul
li x6, 0x3863b49e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -272 # sub immediate from rs1 to counter offset
sw x7, 272(sp)   # store value to put something in memory
c.fldsp f6, 272(sp) # perform operation

# Testcase cp_imm_mul
li x23, 0x2f1f8197 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -280 # sub immediate from rs1 to counter offset
sw x10, 280(sp)   # store value to put something in memory
c.fldsp f23, 280(sp) # perform operation

# Testcase cp_imm_mul
li x10, 0x8bb68536 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -288 # sub immediate from rs1 to counter offset
sw x24, 288(sp)   # store value to put something in memory
c.fldsp f10, 288(sp) # perform operation

# Testcase cp_imm_mul
li x2, 0xf864bf29 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -296 # sub immediate from rs1 to counter offset
sw x10, 296(sp)   # store value to put something in memory
c.fldsp f2, 296(sp) # perform operation

# Testcase cp_imm_mul
li x22, 0xb946c978 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -304 # sub immediate from rs1 to counter offset
sw x6, 304(sp)   # store value to put something in memory
c.fldsp f22, 304(sp) # perform operation

# Testcase cp_imm_mul
li x27, 0x2b57db9f # initialize rs1
la sp, scratch # base address 
addi sp, sp, -312 # sub immediate from rs1 to counter offset
sw x12, 312(sp)   # store value to put something in memory
c.fldsp f27, 312(sp) # perform operation

# Testcase cp_imm_mul
li x30, 0xb5780b3d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -320 # sub immediate from rs1 to counter offset
sw x8, 320(sp)   # store value to put something in memory
c.fldsp f30, 320(sp) # perform operation

# Testcase cp_imm_mul
li x24, 0xe941ab4c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -328 # sub immediate from rs1 to counter offset
sw x31, 328(sp)   # store value to put something in memory
c.fldsp f24, 328(sp) # perform operation

# Testcase cp_imm_mul
li x25, 0x5fea5df7 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -336 # sub immediate from rs1 to counter offset
sw x26, 336(sp)   # store value to put something in memory
c.fldsp f25, 336(sp) # perform operation

# Testcase cp_imm_mul
li x3, 0x1e12bd0e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -344 # sub immediate from rs1 to counter offset
sw x2, 344(sp)   # store value to put something in memory
c.fldsp f3, 344(sp) # perform operation

# Testcase cp_imm_mul
li x16, 0x8d659aa8 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -352 # sub immediate from rs1 to counter offset
sw x9, 352(sp)   # store value to put something in memory
c.fldsp f16, 352(sp) # perform operation

# Testcase cp_imm_mul
li x31, 0xaf7f6cd9 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -360 # sub immediate from rs1 to counter offset
sw x22, 360(sp)   # store value to put something in memory
c.fldsp f31, 360(sp) # perform operation

# Testcase cp_imm_mul
li x7, 0x63fb2d9f # initialize rs1
la sp, scratch # base address 
addi sp, sp, -368 # sub immediate from rs1 to counter offset
sw x10, 368(sp)   # store value to put something in memory
c.fldsp f7, 368(sp) # perform operation

# Testcase cp_imm_mul
li x27, 0x0a55b820 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -376 # sub immediate from rs1 to counter offset
sw x5, 376(sp)   # store value to put something in memory
c.fldsp f27, 376(sp) # perform operation

# Testcase cp_imm_mul
li x26, 0x07fb0d7f # initialize rs1
la sp, scratch # base address 
addi sp, sp, -384 # sub immediate from rs1 to counter offset
sw x22, 384(sp)   # store value to put something in memory
c.fldsp f26, 384(sp) # perform operation

# Testcase cp_imm_mul
li x12, 0x99feb1a9 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -392 # sub immediate from rs1 to counter offset
sw x29, 392(sp)   # store value to put something in memory
c.fldsp f12, 392(sp) # perform operation

# Testcase cp_imm_mul
li x2, 0xfe354adc # initialize rs1
la sp, scratch # base address 
addi sp, sp, -400 # sub immediate from rs1 to counter offset
sw x11, 400(sp)   # store value to put something in memory
c.fldsp f2, 400(sp) # perform operation

# Testcase cp_imm_mul
li x1, 0x8108b54a # initialize rs1
la sp, scratch # base address 
addi sp, sp, -408 # sub immediate from rs1 to counter offset
sw x24, 408(sp)   # store value to put something in memory
c.fldsp f1, 408(sp) # perform operation

# Testcase cp_imm_mul
li x31, 0xd511991e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -416 # sub immediate from rs1 to counter offset
sw x27, 416(sp)   # store value to put something in memory
c.fldsp f31, 416(sp) # perform operation

# Testcase cp_imm_mul
li x15, 0xc3c29f2b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -424 # sub immediate from rs1 to counter offset
sw x28, 424(sp)   # store value to put something in memory
c.fldsp f15, 424(sp) # perform operation

# Testcase cp_imm_mul
li x31, 0xc38f9d03 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -432 # sub immediate from rs1 to counter offset
sw x27, 432(sp)   # store value to put something in memory
c.fldsp f31, 432(sp) # perform operation

# Testcase cp_imm_mul
li x1, 0x8efff5b7 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -440 # sub immediate from rs1 to counter offset
sw x5, 440(sp)   # store value to put something in memory
c.fldsp f1, 440(sp) # perform operation

# Testcase cp_imm_mul
li x2, 0x72a13b16 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -448 # sub immediate from rs1 to counter offset
sw x7, 448(sp)   # store value to put something in memory
c.fldsp f2, 448(sp) # perform operation

# Testcase cp_imm_mul
li x31, 0x4d420400 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -456 # sub immediate from rs1 to counter offset
sw x27, 456(sp)   # store value to put something in memory
c.fldsp f31, 456(sp) # perform operation

# Testcase cp_imm_mul
li x26, 0xcd3b788f # initialize rs1
la sp, scratch # base address 
addi sp, sp, -464 # sub immediate from rs1 to counter offset
sw x7, 464(sp)   # store value to put something in memory
c.fldsp f26, 464(sp) # perform operation

# Testcase cp_imm_mul
li x15, 0xbf2512f4 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -472 # sub immediate from rs1 to counter offset
sw x7, 472(sp)   # store value to put something in memory
c.fldsp f15, 472(sp) # perform operation

# Testcase cp_imm_mul
li x10, 0x64d96f62 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -480 # sub immediate from rs1 to counter offset
sw x29, 480(sp)   # store value to put something in memory
c.fldsp f10, 480(sp) # perform operation

# Testcase cp_imm_mul
li x16, 0xd66e06d9 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -488 # sub immediate from rs1 to counter offset
sw x12, 488(sp)   # store value to put something in memory
c.fldsp f16, 488(sp) # perform operation

# Testcase cp_imm_mul
li x20, 0x655b8a2e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -496 # sub immediate from rs1 to counter offset
sw x2, 496(sp)   # store value to put something in memory
c.fldsp f20, 496(sp) # perform operation

# Testcase cp_imm_mul
li x25, 0x94fdefb0 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
sw x15, 504(sp)   # store value to put something in memory
c.fldsp f25, 504(sp) # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0xfd0007c1 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -392 # sub immediate from rs1 to counter offset
sw x22, 392(sp)   # store value to put something in memory
c.fldsp f0, 392(sp) # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x3da1089d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -88 # sub immediate from rs1 to counter offset
sw x20, 88(sp)   # store value to put something in memory
c.fldsp f1, 88(sp) # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0xea55d138 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -48 # sub immediate from rs1 to counter offset
sw x14, 48(sp)   # store value to put something in memory
c.fldsp f2, 48(sp) # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0xaabd1e61 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -128 # sub immediate from rs1 to counter offset
sw x21, 128(sp)   # store value to put something in memory
c.fldsp f3, 128(sp) # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x88a61cad # initialize rs1
la sp, scratch # base address 
addi sp, sp, -32 # sub immediate from rs1 to counter offset
sw x29, 32(sp)   # store value to put something in memory
c.fldsp f4, 32(sp) # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xc0330679 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -408 # sub immediate from rs1 to counter offset
sw x4, 408(sp)   # store value to put something in memory
c.fldsp f5, 408(sp) # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x7547255c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -320 # sub immediate from rs1 to counter offset
sw x23, 320(sp)   # store value to put something in memory
c.fldsp f6, 320(sp) # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x01732a00 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -448 # sub immediate from rs1 to counter offset
sw x16, 448(sp)   # store value to put something in memory
c.fldsp f7, 448(sp) # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x2bcec980 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -496 # sub immediate from rs1 to counter offset
sw x12, 496(sp)   # store value to put something in memory
c.fldsp f8, 496(sp) # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0xe58ee992 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -216 # sub immediate from rs1 to counter offset
sw x14, 216(sp)   # store value to put something in memory
c.fldsp f9, 216(sp) # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0xb59a8497 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -128 # sub immediate from rs1 to counter offset
sw x16, 128(sp)   # store value to put something in memory
c.fldsp f10, 128(sp) # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0xc5cf0c90 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -312 # sub immediate from rs1 to counter offset
sw x14, 312(sp)   # store value to put something in memory
c.fldsp f11, 312(sp) # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x966bc272 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -448 # sub immediate from rs1 to counter offset
sw x9, 448(sp)   # store value to put something in memory
c.fldsp f12, 448(sp) # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x24fbee24 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -240 # sub immediate from rs1 to counter offset
sw x7, 240(sp)   # store value to put something in memory
c.fldsp f13, 240(sp) # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x93d35d37 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -80 # sub immediate from rs1 to counter offset
sw x27, 80(sp)   # store value to put something in memory
c.fldsp f14, 80(sp) # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x9b46dc5b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -232 # sub immediate from rs1 to counter offset
sw x7, 232(sp)   # store value to put something in memory
c.fldsp f15, 232(sp) # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0xebbc639d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -256 # sub immediate from rs1 to counter offset
sw x26, 256(sp)   # store value to put something in memory
c.fldsp f16, 256(sp) # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0xe6f1010d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -152 # sub immediate from rs1 to counter offset
sw x14, 152(sp)   # store value to put something in memory
c.fldsp f17, 152(sp) # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x576c61a7 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -104 # sub immediate from rs1 to counter offset
sw x1, 104(sp)   # store value to put something in memory
c.fldsp f18, 104(sp) # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0xe0df0cd1 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -232 # sub immediate from rs1 to counter offset
sw x9, 232(sp)   # store value to put something in memory
c.fldsp f19, 232(sp) # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x10beaf36 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -448 # sub immediate from rs1 to counter offset
sw x17, 448(sp)   # store value to put something in memory
c.fldsp f20, 448(sp) # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0xfbbe5824 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -296 # sub immediate from rs1 to counter offset
sw x16, 296(sp)   # store value to put something in memory
c.fldsp f21, 296(sp) # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x8f2f5376 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -320 # sub immediate from rs1 to counter offset
sw x28, 320(sp)   # store value to put something in memory
c.fldsp f22, 320(sp) # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x5eceafed # initialize rs1
la sp, scratch # base address 
addi sp, sp, -144 # sub immediate from rs1 to counter offset
sw x20, 144(sp)   # store value to put something in memory
c.fldsp f23, 144(sp) # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0xfd7579cf # initialize rs1
la sp, scratch # base address 
addi sp, sp, -400 # sub immediate from rs1 to counter offset
sw x28, 400(sp)   # store value to put something in memory
c.fldsp f24, 400(sp) # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0xca64e5b1 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -288 # sub immediate from rs1 to counter offset
sw x20, 288(sp)   # store value to put something in memory
c.fldsp f25, 288(sp) # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xf91390eb # initialize rs1
la sp, scratch # base address 
addi sp, sp, -360 # sub immediate from rs1 to counter offset
sw x29, 360(sp)   # store value to put something in memory
c.fldsp f26, 360(sp) # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0xbbfafefb # initialize rs1
la sp, scratch # base address 
addi sp, sp, -152 # sub immediate from rs1 to counter offset
sw x27, 152(sp)   # store value to put something in memory
c.fldsp f27, 152(sp) # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x81f26028 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -280 # sub immediate from rs1 to counter offset
sw x9, 280(sp)   # store value to put something in memory
c.fldsp f28, 280(sp) # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0xd574f183 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -384 # sub immediate from rs1 to counter offset
sw x23, 384(sp)   # store value to put something in memory
c.fldsp f29, 384(sp) # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0xb9754f1e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -312 # sub immediate from rs1 to counter offset
sw x18, 312(sp)   # store value to put something in memory
c.fldsp f30, 312(sp) # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x2aad794f # initialize rs1
la sp, scratch # base address 
addi sp, sp, -456 # sub immediate from rs1 to counter offset
sw x17, 456(sp)   # store value to put something in memory
c.fldsp f31, 456(sp) # perform operation

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
