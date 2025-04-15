///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zcd/WALLY-COV-c.fldsp.S
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
li x22, 0x011509641209b656 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
sd x15, 0(sp)   # store value to put something in memory
c.fldsp f22, 0(sp) # perform operation

# Testcase cp_imm_mul
li x17, 0xc5cebb4a26f9ebd4 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -8 # sub immediate from rs1 to counter offset
sd x20, 8(sp)   # store value to put something in memory
c.fldsp f17, 8(sp) # perform operation

# Testcase cp_imm_mul
li x23, 0x0d7569d522dd13e0 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -16 # sub immediate from rs1 to counter offset
sd x3, 16(sp)   # store value to put something in memory
c.fldsp f23, 16(sp) # perform operation

# Testcase cp_imm_mul
li x25, 0x827c1e6ae164aee9 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -24 # sub immediate from rs1 to counter offset
sd x13, 24(sp)   # store value to put something in memory
c.fldsp f25, 24(sp) # perform operation

# Testcase cp_imm_mul
li x18, 0x66c0c5d717cc8f68 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -32 # sub immediate from rs1 to counter offset
sd x29, 32(sp)   # store value to put something in memory
c.fldsp f18, 32(sp) # perform operation

# Testcase cp_imm_mul
li x28, 0xdc6ec28a7b43e8b2 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -40 # sub immediate from rs1 to counter offset
sd x15, 40(sp)   # store value to put something in memory
c.fldsp f28, 40(sp) # perform operation

# Testcase cp_imm_mul
li x16, 0xaf35d4b2bcc4a0e7 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -48 # sub immediate from rs1 to counter offset
sd x23, 48(sp)   # store value to put something in memory
c.fldsp f16, 48(sp) # perform operation

# Testcase cp_imm_mul
li x31, 0x2f681f7f3638ff67 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -56 # sub immediate from rs1 to counter offset
sd x3, 56(sp)   # store value to put something in memory
c.fldsp f31, 56(sp) # perform operation

# Testcase cp_imm_mul
li x12, 0x1cf6d7f4c9412373 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -64 # sub immediate from rs1 to counter offset
sd x15, 64(sp)   # store value to put something in memory
c.fldsp f12, 64(sp) # perform operation

# Testcase cp_imm_mul
li x31, 0x152964cabc7d191c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -72 # sub immediate from rs1 to counter offset
sd x30, 72(sp)   # store value to put something in memory
c.fldsp f31, 72(sp) # perform operation

# Testcase cp_imm_mul
li x23, 0xaddc2d5f9d1af773 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -80 # sub immediate from rs1 to counter offset
sd x11, 80(sp)   # store value to put something in memory
c.fldsp f23, 80(sp) # perform operation

# Testcase cp_imm_mul
li x18, 0x2a2b93bee1b1a2a0 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -88 # sub immediate from rs1 to counter offset
sd x30, 88(sp)   # store value to put something in memory
c.fldsp f18, 88(sp) # perform operation

# Testcase cp_imm_mul
li x16, 0x3a35e6c17fbd28b4 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -96 # sub immediate from rs1 to counter offset
sd x29, 96(sp)   # store value to put something in memory
c.fldsp f16, 96(sp) # perform operation

# Testcase cp_imm_mul
li x10, 0xd9cfaa758bf60fa8 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -104 # sub immediate from rs1 to counter offset
sd x23, 104(sp)   # store value to put something in memory
c.fldsp f10, 104(sp) # perform operation

# Testcase cp_imm_mul
li x29, 0x55480be75ef58436 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -112 # sub immediate from rs1 to counter offset
sd x7, 112(sp)   # store value to put something in memory
c.fldsp f29, 112(sp) # perform operation

# Testcase cp_imm_mul
li x19, 0x7bde4b5d57a6779b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -120 # sub immediate from rs1 to counter offset
sd x10, 120(sp)   # store value to put something in memory
c.fldsp f19, 120(sp) # perform operation

# Testcase cp_imm_mul
li x29, 0x6c464d75b4adfcff # initialize rs1
la sp, scratch # base address 
addi sp, sp, -128 # sub immediate from rs1 to counter offset
sd x24, 128(sp)   # store value to put something in memory
c.fldsp f29, 128(sp) # perform operation

# Testcase cp_imm_mul
li x10, 0xb6ca574e3b07a099 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -136 # sub immediate from rs1 to counter offset
sd x17, 136(sp)   # store value to put something in memory
c.fldsp f10, 136(sp) # perform operation

# Testcase cp_imm_mul
li x25, 0x58deb9693ccc274d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -144 # sub immediate from rs1 to counter offset
sd x30, 144(sp)   # store value to put something in memory
c.fldsp f25, 144(sp) # perform operation

# Testcase cp_imm_mul
li x2, 0xf228740d96c72f32 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -152 # sub immediate from rs1 to counter offset
sd x26, 152(sp)   # store value to put something in memory
c.fldsp f2, 152(sp) # perform operation

# Testcase cp_imm_mul
li x6, 0xfbccbef882ee7f7d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -160 # sub immediate from rs1 to counter offset
sd x10, 160(sp)   # store value to put something in memory
c.fldsp f6, 160(sp) # perform operation

# Testcase cp_imm_mul
li x28, 0x0270c4252700eadf # initialize rs1
la sp, scratch # base address 
addi sp, sp, -168 # sub immediate from rs1 to counter offset
sd x13, 168(sp)   # store value to put something in memory
c.fldsp f28, 168(sp) # perform operation

# Testcase cp_imm_mul
li x22, 0xf1cabca0e6317fe8 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -176 # sub immediate from rs1 to counter offset
sd x26, 176(sp)   # store value to put something in memory
c.fldsp f22, 176(sp) # perform operation

# Testcase cp_imm_mul
li x17, 0xd2f225d6880a58a0 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -184 # sub immediate from rs1 to counter offset
sd x21, 184(sp)   # store value to put something in memory
c.fldsp f17, 184(sp) # perform operation

# Testcase cp_imm_mul
li x10, 0xd9031525a5956735 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -192 # sub immediate from rs1 to counter offset
sd x12, 192(sp)   # store value to put something in memory
c.fldsp f10, 192(sp) # perform operation

# Testcase cp_imm_mul
li x9, 0x5df6864078c18690 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -200 # sub immediate from rs1 to counter offset
sd x28, 200(sp)   # store value to put something in memory
c.fldsp f9, 200(sp) # perform operation

# Testcase cp_imm_mul
li x12, 0x6516244f1eea3e4d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -208 # sub immediate from rs1 to counter offset
sd x6, 208(sp)   # store value to put something in memory
c.fldsp f12, 208(sp) # perform operation

# Testcase cp_imm_mul
li x11, 0x3703ff3d4634f191 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -216 # sub immediate from rs1 to counter offset
sd x12, 216(sp)   # store value to put something in memory
c.fldsp f11, 216(sp) # perform operation

# Testcase cp_imm_mul
li x24, 0x462fd959150ca198 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -224 # sub immediate from rs1 to counter offset
sd x23, 224(sp)   # store value to put something in memory
c.fldsp f24, 224(sp) # perform operation

# Testcase cp_imm_mul
li x19, 0x7dc9b5adc6aa7b31 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -232 # sub immediate from rs1 to counter offset
sd x13, 232(sp)   # store value to put something in memory
c.fldsp f19, 232(sp) # perform operation

# Testcase cp_imm_mul
li x5, 0xe33f0219bf5b6e3b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -240 # sub immediate from rs1 to counter offset
sd x11, 240(sp)   # store value to put something in memory
c.fldsp f5, 240(sp) # perform operation

# Testcase cp_imm_mul
li x29, 0x3708480f795acb3d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -248 # sub immediate from rs1 to counter offset
sd x25, 248(sp)   # store value to put something in memory
c.fldsp f29, 248(sp) # perform operation

# Testcase cp_imm_mul
li x12, 0x367e50434d383342 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -256 # sub immediate from rs1 to counter offset
sd x2, 256(sp)   # store value to put something in memory
c.fldsp f12, 256(sp) # perform operation

# Testcase cp_imm_mul
li x15, 0xf872a5a6447e2b61 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -264 # sub immediate from rs1 to counter offset
sd x22, 264(sp)   # store value to put something in memory
c.fldsp f15, 264(sp) # perform operation

# Testcase cp_imm_mul
li x30, 0x07fb0d7f1b4d6192 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -272 # sub immediate from rs1 to counter offset
sd x17, 272(sp)   # store value to put something in memory
c.fldsp f30, 272(sp) # perform operation

# Testcase cp_imm_mul
li x12, 0x99feb1a9fea72447 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -280 # sub immediate from rs1 to counter offset
sd x29, 280(sp)   # store value to put something in memory
c.fldsp f12, 280(sp) # perform operation

# Testcase cp_imm_mul
li x2, 0x4e880035c6f7b5d0 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -288 # sub immediate from rs1 to counter offset
sd x11, 288(sp)   # store value to put something in memory
c.fldsp f2, 288(sp) # perform operation

# Testcase cp_imm_mul
li x25, 0x8b5e50b4864b731f # initialize rs1
la sp, scratch # base address 
addi sp, sp, -296 # sub immediate from rs1 to counter offset
sd x7, 296(sp)   # store value to put something in memory
c.fldsp f25, 296(sp) # perform operation

# Testcase cp_imm_mul
li x27, 0xd7eb7de0f23b92cd # initialize rs1
la sp, scratch # base address 
addi sp, sp, -304 # sub immediate from rs1 to counter offset
sd x26, 304(sp)   # store value to put something in memory
c.fldsp f27, 304(sp) # perform operation

# Testcase cp_imm_mul
li x26, 0x99018a074bf9fc90 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -312 # sub immediate from rs1 to counter offset
sd x9, 312(sp)   # store value to put something in memory
c.fldsp f26, 312(sp) # perform operation

# Testcase cp_imm_mul
li x17, 0x72a13b16a369a20c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -320 # sub immediate from rs1 to counter offset
sd x27, 320(sp)   # store value to put something in memory
c.fldsp f17, 320(sp) # perform operation

# Testcase cp_imm_mul
li x31, 0x2c5fbce52f803537 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -328 # sub immediate from rs1 to counter offset
sd x27, 328(sp)   # store value to put something in memory
c.fldsp f31, 328(sp) # perform operation

# Testcase cp_imm_mul
li x14, 0x585d353076d0c7d5 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -336 # sub immediate from rs1 to counter offset
sd x11, 336(sp)   # store value to put something in memory
c.fldsp f14, 336(sp) # perform operation

# Testcase cp_imm_mul
li x12, 0xcba3f2a8236f5008 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -344 # sub immediate from rs1 to counter offset
sd x18, 344(sp)   # store value to put something in memory
c.fldsp f12, 344(sp) # perform operation

# Testcase cp_imm_mul
li x24, 0x64d96f62a022ee7e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -352 # sub immediate from rs1 to counter offset
sd x29, 352(sp)   # store value to put something in memory
c.fldsp f24, 352(sp) # perform operation

# Testcase cp_imm_mul
li x16, 0xd80e3ba898726d71 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -360 # sub immediate from rs1 to counter offset
sd x12, 360(sp)   # store value to put something in memory
c.fldsp f16, 360(sp) # perform operation

# Testcase cp_imm_mul
li x26, 0x94fdefb0ad23d20a # initialize rs1
la sp, scratch # base address 
addi sp, sp, -368 # sub immediate from rs1 to counter offset
sd x15, 368(sp)   # store value to put something in memory
c.fldsp f26, 368(sp) # perform operation

# Testcase cp_imm_mul
li x15, 0x18eb8c09d66d850b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -376 # sub immediate from rs1 to counter offset
sd x20, 376(sp)   # store value to put something in memory
c.fldsp f15, 376(sp) # perform operation

# Testcase cp_imm_mul
li x18, 0xe3792835ec74af1e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -384 # sub immediate from rs1 to counter offset
sd x19, 384(sp)   # store value to put something in memory
c.fldsp f18, 384(sp) # perform operation

# Testcase cp_imm_mul
li x28, 0x6ea3a59c83c1dd37 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -392 # sub immediate from rs1 to counter offset
sd x24, 392(sp)   # store value to put something in memory
c.fldsp f28, 392(sp) # perform operation

# Testcase cp_imm_mul
li x18, 0xf1796ba5a2b2f131 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -400 # sub immediate from rs1 to counter offset
sd x3, 400(sp)   # store value to put something in memory
c.fldsp f18, 400(sp) # perform operation

# Testcase cp_imm_mul
li x5, 0x7fa03f638e217b77 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -408 # sub immediate from rs1 to counter offset
sd x17, 408(sp)   # store value to put something in memory
c.fldsp f5, 408(sp) # perform operation

# Testcase cp_imm_mul
li x29, 0xc9fe1745a1b8f481 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -416 # sub immediate from rs1 to counter offset
sd x7, 416(sp)   # store value to put something in memory
c.fldsp f29, 416(sp) # perform operation

# Testcase cp_imm_mul
li x27, 0x576e0e7f68c7b71c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -424 # sub immediate from rs1 to counter offset
sd x3, 424(sp)   # store value to put something in memory
c.fldsp f27, 424(sp) # perform operation

# Testcase cp_imm_mul
li x14, 0x44c12629395c08b0 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -432 # sub immediate from rs1 to counter offset
sd x29, 432(sp)   # store value to put something in memory
c.fldsp f14, 432(sp) # perform operation

# Testcase cp_imm_mul
li x18, 0xf6addb48fc3be275 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -440 # sub immediate from rs1 to counter offset
sd x24, 440(sp)   # store value to put something in memory
c.fldsp f18, 440(sp) # perform operation

# Testcase cp_imm_mul
li x8, 0x96dfd40af4a87aa5 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -448 # sub immediate from rs1 to counter offset
sd x15, 448(sp)   # store value to put something in memory
c.fldsp f8, 448(sp) # perform operation

# Testcase cp_imm_mul
li x5, 0x82aa00c5dba905bf # initialize rs1
la sp, scratch # base address 
addi sp, sp, -456 # sub immediate from rs1 to counter offset
sd x31, 456(sp)   # store value to put something in memory
c.fldsp f5, 456(sp) # perform operation

# Testcase cp_imm_mul
li x16, 0x0834b6d5a55e9523 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -464 # sub immediate from rs1 to counter offset
sd x7, 464(sp)   # store value to put something in memory
c.fldsp f16, 464(sp) # perform operation

# Testcase cp_imm_mul
li x15, 0x139c59f9dabc7f26 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -472 # sub immediate from rs1 to counter offset
sd x9, 472(sp)   # store value to put something in memory
c.fldsp f15, 472(sp) # perform operation

# Testcase cp_imm_mul
li x3, 0x7feaac9765a8e6fc # initialize rs1
la sp, scratch # base address 
addi sp, sp, -480 # sub immediate from rs1 to counter offset
sd x11, 480(sp)   # store value to put something in memory
c.fldsp f3, 480(sp) # perform operation

# Testcase cp_imm_mul
li x24, 0x66e61df046350c8d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -488 # sub immediate from rs1 to counter offset
sd x29, 488(sp)   # store value to put something in memory
c.fldsp f24, 488(sp) # perform operation

# Testcase cp_imm_mul
li x30, 0x18b9f6b43d4663b2 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -496 # sub immediate from rs1 to counter offset
sd x28, 496(sp)   # store value to put something in memory
c.fldsp f30, 496(sp) # perform operation

# Testcase cp_imm_mul
li x13, 0x20b85b7a9b88d107 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
sd x9, 504(sp)   # store value to put something in memory
c.fldsp f13, 504(sp) # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x64225d271efb8bb0 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -296 # sub immediate from rs1 to counter offset
sd x22, 296(sp)   # store value to put something in memory
c.fldsp f0, 296(sp) # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0xd18ae11a83937455 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -32 # sub immediate from rs1 to counter offset
sd x13, 32(sp)   # store value to put something in memory
c.fldsp f1, 32(sp) # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0xe0101b46ceda3ebf # initialize rs1
la sp, scratch # base address 
addi sp, sp, -304 # sub immediate from rs1 to counter offset
sd x14, 304(sp)   # store value to put something in memory
c.fldsp f2, 304(sp) # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0xd61f1e4014cc7e7e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -352 # sub immediate from rs1 to counter offset
sd x31, 352(sp)   # store value to put something in memory
c.fldsp f3, 352(sp) # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x1b8488a75c8b3fd8 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -360 # sub immediate from rs1 to counter offset
sd x1, 360(sp)   # store value to put something in memory
c.fldsp f4, 360(sp) # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8b2b7cd003f1a3aa # initialize rs1
la sp, scratch # base address 
addi sp, sp, -208 # sub immediate from rs1 to counter offset
sd x24, 208(sp)   # store value to put something in memory
c.fldsp f5, 208(sp) # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xf05f44ee6f13c2c1 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -408 # sub immediate from rs1 to counter offset
sd x23, 408(sp)   # store value to put something in memory
c.fldsp f6, 408(sp) # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x93ec57051f85d841 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -352 # sub immediate from rs1 to counter offset
sd x23, 352(sp)   # store value to put something in memory
c.fldsp f7, 352(sp) # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0xc5cf0c90374ac0b6 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -408 # sub immediate from rs1 to counter offset
sd x10, 408(sp)   # store value to put something in memory
c.fldsp f8, 408(sp) # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0xba2ef1ab0e338b19 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -288 # sub immediate from rs1 to counter offset
sd x9, 288(sp)   # store value to put something in memory
c.fldsp f9, 288(sp) # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x1922232d57ea1f4a # initialize rs1
la sp, scratch # base address 
addi sp, sp, -328 # sub immediate from rs1 to counter offset
sd x8, 328(sp)   # store value to put something in memory
c.fldsp f10, 328(sp) # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0xd0e1ef8b4bec1ff8 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -48 # sub immediate from rs1 to counter offset
sd x8, 48(sp)   # store value to put something in memory
c.fldsp f11, 48(sp) # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0xabd44f2c90ad4324 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -224 # sub immediate from rs1 to counter offset
sd x17, 224(sp)   # store value to put something in memory
c.fldsp f12, 224(sp) # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0xea792f717dcb11e7 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -328 # sub immediate from rs1 to counter offset
sd x29, 328(sp)   # store value to put something in memory
c.fldsp f13, 328(sp) # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x7a2c2e846e05098f # initialize rs1
la sp, scratch # base address 
addi sp, sp, -152 # sub immediate from rs1 to counter offset
sd x23, 152(sp)   # store value to put something in memory
c.fldsp f14, 152(sp) # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x4d52421785c50d2b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -232 # sub immediate from rs1 to counter offset
sd x14, 232(sp)   # store value to put something in memory
c.fldsp f15, 232(sp) # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x2b682a055eceafed # initialize rs1
la sp, scratch # base address 
addi sp, sp, -144 # sub immediate from rs1 to counter offset
sd x20, 144(sp)   # store value to put something in memory
c.fldsp f16, 144(sp) # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x6a66d7c5445bf22d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -488 # sub immediate from rs1 to counter offset
sd x3, 488(sp)   # store value to put something in memory
c.fldsp f17, 488(sp) # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x62ef9b39b39d1600 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -328 # sub immediate from rs1 to counter offset
sd x30, 328(sp)   # store value to put something in memory
c.fldsp f18, 328(sp) # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0xe900b354ab24843a # initialize rs1
la sp, scratch # base address 
addi sp, sp, -176 # sub immediate from rs1 to counter offset
sd x19, 176(sp)   # store value to put something in memory
c.fldsp f19, 176(sp) # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x925405a279814c39 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -424 # sub immediate from rs1 to counter offset
sd x31, 424(sp)   # store value to put something in memory
c.fldsp f20, 424(sp) # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x20cebc0429fd0f1c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -432 # sub immediate from rs1 to counter offset
sd x28, 432(sp)   # store value to put something in memory
c.fldsp f21, 432(sp) # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0xed4c8bca1c5acbba # initialize rs1
la sp, scratch # base address 
addi sp, sp, -368 # sub immediate from rs1 to counter offset
sd x30, 368(sp)   # store value to put something in memory
c.fldsp f22, 368(sp) # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x6fe4469d73f6ca9c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
sd x1, 0(sp)   # store value to put something in memory
c.fldsp f23, 0(sp) # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0xeb6d9a41ec2b3d78 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -216 # sub immediate from rs1 to counter offset
sd x7, 216(sp)   # store value to put something in memory
c.fldsp f24, 216(sp) # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0xc72d21bebaae283b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -40 # sub immediate from rs1 to counter offset
sd x6, 40(sp)   # store value to put something in memory
c.fldsp f25, 40(sp) # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x8153f73f7e696ffb # initialize rs1
la sp, scratch # base address 
addi sp, sp, -296 # sub immediate from rs1 to counter offset
sd x25, 296(sp)   # store value to put something in memory
c.fldsp f26, 296(sp) # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x0877a5fdbb0f86d5 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -256 # sub immediate from rs1 to counter offset
sd x22, 256(sp)   # store value to put something in memory
c.fldsp f27, 256(sp) # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0xa7065f950730d612 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -288 # sub immediate from rs1 to counter offset
sd x23, 288(sp)   # store value to put something in memory
c.fldsp f28, 288(sp) # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0xf635561db28e0e81 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -88 # sub immediate from rs1 to counter offset
sd x2, 88(sp)   # store value to put something in memory
c.fldsp f29, 88(sp) # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0xe7ab54538c7cc2f9 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -456 # sub immediate from rs1 to counter offset
sd x20, 456(sp)   # store value to put something in memory
c.fldsp f30, 456(sp) # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0xeaccecd2ae4f0b04 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -304 # sub immediate from rs1 to counter offset
sd x9, 304(sp)   # store value to put something in memory
c.fldsp f31, 304(sp) # perform operation

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
