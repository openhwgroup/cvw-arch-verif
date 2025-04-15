///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zcd/WALLY-COV-c.fsdsp.S
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
li x10, 0x84929a36 # initialize rs2
fmv.w.x f10, x24 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -256 # offset stack pointer from signature
c.fsdsp f10, 256(sp)# perform operation

# Testcase cp_imm_mul
li x30, 0xb813ac92 # initialize rs2
fmv.w.x f30, x28 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -264 # offset stack pointer from signature
c.fsdsp f30, 264(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0x79a80480 # initialize rs2
fmv.w.x f24, x11 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -272 # offset stack pointer from signature
c.fsdsp f24, 272(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0xad4d9d02 # initialize rs2
fmv.w.x f24, x28 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -280 # offset stack pointer from signature
c.fsdsp f24, 280(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0x24ab52bd # initialize rs2
fmv.w.x f12, x27 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -288 # offset stack pointer from signature
c.fsdsp f12, 288(sp)# perform operation

# Testcase cp_imm_mul
li x9, 0x2b25d79f # initialize rs2
fmv.w.x f9, x12 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -296 # offset stack pointer from signature
c.fsdsp f9, 296(sp)# perform operation

# Testcase cp_imm_mul
li x28, 0x27cc7941 # initialize rs2
fmv.w.x f28, x20 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -304 # offset stack pointer from signature
c.fsdsp f28, 304(sp)# perform operation

# Testcase cp_imm_mul
li x19, 0xd9c4aa81 # initialize rs2
fmv.w.x f19, x9 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -312 # offset stack pointer from signature
c.fsdsp f19, 312(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0x32c9f307 # initialize rs2
fmv.w.x f8, x12 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -320 # offset stack pointer from signature
c.fsdsp f8, 320(sp)# perform operation

# Testcase cp_imm_mul
li x3, 0xf33585c0 # initialize rs2
fmv.w.x f3, x6 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -328 # offset stack pointer from signature
c.fsdsp f3, 328(sp)# perform operation

# Testcase cp_imm_mul
li x10, 0x505acc2e # initialize rs2
fmv.w.x f10, x24 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -336 # offset stack pointer from signature
c.fsdsp f10, 336(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0x581680c6 # initialize rs2
fmv.w.x f24, x10 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -344 # offset stack pointer from signature
c.fsdsp f24, 344(sp)# perform operation

# Testcase cp_imm_mul
li x13, 0xc212ebdf # initialize rs2
fmv.w.x f13, x6 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -352 # offset stack pointer from signature
c.fsdsp f13, 352(sp)# perform operation

# Testcase cp_imm_mul
li x13, 0xf4c2a6ed # initialize rs2
fmv.w.x f13, x19 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -360 # offset stack pointer from signature
c.fsdsp f13, 360(sp)# perform operation

# Testcase cp_imm_mul
li x6, 0x79c0ba53 # initialize rs2
fmv.w.x f6, x18 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -368 # offset stack pointer from signature
c.fsdsp f6, 368(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0x5cb806ba # initialize rs2
fmv.w.x f14, x1 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -376 # offset stack pointer from signature
c.fsdsp f14, 376(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0x10aabd3c # initialize rs2
fmv.w.x f29, x13 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -384 # offset stack pointer from signature
c.fsdsp f29, 384(sp)# perform operation

# Testcase cp_imm_mul
li x19, 0x954b4582 # initialize rs2
fmv.w.x f19, x1 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -392 # offset stack pointer from signature
c.fsdsp f19, 392(sp)# perform operation

# Testcase cp_imm_mul
li x9, 0xc0c10bf1 # initialize rs2
fmv.w.x f9, x16 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -400 # offset stack pointer from signature
c.fsdsp f9, 400(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0x389c5a3a # initialize rs2
fmv.w.x f31, x14 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -408 # offset stack pointer from signature
c.fsdsp f31, 408(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0x76c1f0f2 # initialize rs2
fmv.w.x f14, x26 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -416 # offset stack pointer from signature
c.fsdsp f14, 416(sp)# perform operation

# Testcase cp_imm_mul
li x17, 0x4b2e6bb7 # initialize rs2
fmv.w.x f17, x31 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -424 # offset stack pointer from signature
c.fsdsp f17, 424(sp)# perform operation

# Testcase cp_imm_mul
li x10, 0x500b9fb4 # initialize rs2
fmv.w.x f10, x1 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -432 # offset stack pointer from signature
c.fsdsp f10, 432(sp)# perform operation

# Testcase cp_imm_mul
li x5, 0x79b930dc # initialize rs2
fmv.w.x f5, x9 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -440 # offset stack pointer from signature
c.fsdsp f5, 440(sp)# perform operation

# Testcase cp_imm_mul
li x5, 0x0deaddb3 # initialize rs2
fmv.w.x f5, x30 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -448 # offset stack pointer from signature
c.fsdsp f5, 448(sp)# perform operation

# Testcase cp_imm_mul
li x25, 0xdab476b1 # initialize rs2
fmv.w.x f25, x21 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -456 # offset stack pointer from signature
c.fsdsp f25, 456(sp)# perform operation

# Testcase cp_imm_mul
li x28, 0x7b1cf041 # initialize rs2
fmv.w.x f28, x8 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -464 # offset stack pointer from signature
c.fsdsp f28, 464(sp)# perform operation

# Testcase cp_imm_mul
li x23, 0xe4ec6a26 # initialize rs2
fmv.w.x f23, x2 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -472 # offset stack pointer from signature
c.fsdsp f23, 472(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0xde6ec08d # initialize rs2
fmv.w.x f8, x17 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -480 # offset stack pointer from signature
c.fsdsp f8, 480(sp)# perform operation

# Testcase cp_imm_mul
li x30, 0x5f74ce2d # initialize rs2
fmv.w.x f30, x22 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -488 # offset stack pointer from signature
c.fsdsp f30, 488(sp)# perform operation

# Testcase cp_imm_mul
li x30, 0xd9172a25 # initialize rs2
fmv.w.x f30, x2 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -496 # offset stack pointer from signature
c.fsdsp f30, 496(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0xcafcf7a8 # initialize rs2
fmv.w.x f29, x3 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -504 # offset stack pointer from signature
c.fsdsp f29, 504(sp)# perform operation

# Testcase cp_imm_mul
li x28, 0x4f6d4119 # initialize rs2
fmv.w.x f28, x20 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, 0 # offset stack pointer from signature
c.fsdsp f28, 0(sp)# perform operation

# Testcase cp_imm_mul
li x30, 0x143da2c0 # initialize rs2
fmv.w.x f30, x14 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -8 # offset stack pointer from signature
c.fsdsp f30, 8(sp)# perform operation

# Testcase cp_imm_mul
li x11, 0xb8a6408f # initialize rs2
fmv.w.x f11, x29 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -16 # offset stack pointer from signature
c.fsdsp f11, 16(sp)# perform operation

# Testcase cp_imm_mul
li x6, 0x178c796a # initialize rs2
fmv.w.x f6, x18 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -24 # offset stack pointer from signature
c.fsdsp f6, 24(sp)# perform operation

# Testcase cp_imm_mul
li x1, 0x46105f03 # initialize rs2
fmv.w.x f1, x10 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -32 # offset stack pointer from signature
c.fsdsp f1, 32(sp)# perform operation

# Testcase cp_imm_mul
li x16, 0x6fd5d578 # initialize rs2
fmv.w.x f16, x1 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -40 # offset stack pointer from signature
c.fsdsp f16, 40(sp)# perform operation

# Testcase cp_imm_mul
li x20, 0x52dae397 # initialize rs2
fmv.w.x f20, x16 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -48 # offset stack pointer from signature
c.fsdsp f20, 48(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0xaa080261 # initialize rs2
fmv.w.x f8, x1 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -56 # offset stack pointer from signature
c.fsdsp f8, 56(sp)# perform operation

# Testcase cp_imm_mul
li x17, 0x929ab969 # initialize rs2
fmv.w.x f17, x1 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -64 # offset stack pointer from signature
c.fsdsp f17, 64(sp)# perform operation

# Testcase cp_imm_mul
li x23, 0xba566be4 # initialize rs2
fmv.w.x f23, x10 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -72 # offset stack pointer from signature
c.fsdsp f23, 72(sp)# perform operation

# Testcase cp_imm_mul
li x2, 0x75afe05a # initialize rs2
fmv.w.x f2, x28 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -80 # offset stack pointer from signature
c.fsdsp f2, 80(sp)# perform operation

# Testcase cp_imm_mul
li x6, 0x4d422392 # initialize rs2
fmv.w.x f6, x26 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -88 # offset stack pointer from signature
c.fsdsp f6, 88(sp)# perform operation

# Testcase cp_imm_mul
li x10, 0x3067d376 # initialize rs2
fmv.w.x f10, x25 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -96 # offset stack pointer from signature
c.fsdsp f10, 96(sp)# perform operation

# Testcase cp_imm_mul
li x25, 0xe2be7348 # initialize rs2
fmv.w.x f25, x13 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -104 # offset stack pointer from signature
c.fsdsp f25, 104(sp)# perform operation

# Testcase cp_imm_mul
li x28, 0x90f6cdc2 # initialize rs2
fmv.w.x f28, x11 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -112 # offset stack pointer from signature
c.fsdsp f28, 112(sp)# perform operation

# Testcase cp_imm_mul
li x19, 0x7a37f997 # initialize rs2
fmv.w.x f19, x27 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -120 # offset stack pointer from signature
c.fsdsp f19, 120(sp)# perform operation

# Testcase cp_imm_mul
li x9, 0x2bcb479d # initialize rs2
fmv.w.x f9, x31 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -128 # offset stack pointer from signature
c.fsdsp f9, 128(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0x82e72f69 # initialize rs2
fmv.w.x f24, x31 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -136 # offset stack pointer from signature
c.fsdsp f24, 136(sp)# perform operation

# Testcase cp_imm_mul
li x30, 0x71b66e62 # initialize rs2
fmv.w.x f30, x3 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -144 # offset stack pointer from signature
c.fsdsp f30, 144(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0x10b819f8 # initialize rs2
fmv.w.x f12, x26 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -152 # offset stack pointer from signature
c.fsdsp f12, 152(sp)# perform operation

# Testcase cp_imm_mul
li x26, 0x0146a42d # initialize rs2
fmv.w.x f26, x7 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -160 # offset stack pointer from signature
c.fsdsp f26, 160(sp)# perform operation

# Testcase cp_imm_mul
li x26, 0xfad4171b # initialize rs2
fmv.w.x f26, x29 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -168 # offset stack pointer from signature
c.fsdsp f26, 168(sp)# perform operation

# Testcase cp_imm_mul
li x2, 0x0895fc4e # initialize rs2
fmv.w.x f2, x3 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -176 # offset stack pointer from signature
c.fsdsp f2, 176(sp)# perform operation

# Testcase cp_imm_mul
li x2, 0x8e97f442 # initialize rs2
fmv.w.x f2, x21 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -184 # offset stack pointer from signature
c.fsdsp f2, 184(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0xc15e1f68 # initialize rs2
fmv.w.x f24, x21 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -192 # offset stack pointer from signature
c.fsdsp f24, 192(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0xbb96f520 # initialize rs2
fmv.w.x f24, x21 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -200 # offset stack pointer from signature
c.fsdsp f24, 200(sp)# perform operation

# Testcase cp_imm_mul
li x22, 0x949f24b6 # initialize rs2
fmv.w.x f22, x24 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -208 # offset stack pointer from signature
c.fsdsp f22, 208(sp)# perform operation

# Testcase cp_imm_mul
li x7, 0x3108e3e7 # initialize rs2
fmv.w.x f7, x8 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -216 # offset stack pointer from signature
c.fsdsp f7, 216(sp)# perform operation

# Testcase cp_imm_mul
li x3, 0xf70c2ed6 # initialize rs2
fmv.w.x f3, x8 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -224 # offset stack pointer from signature
c.fsdsp f3, 224(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0x9a25fc2b # initialize rs2
fmv.w.x f12, x14 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -232 # offset stack pointer from signature
c.fsdsp f12, 232(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0xf131a128 # initialize rs2
fmv.w.x f12, x31 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -240 # offset stack pointer from signature
c.fsdsp f12, 240(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0xfc072b44 # initialize rs2
fmv.w.x f31, x1 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -248 # offset stack pointer from signature
c.fsdsp f31, 248(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x0, 0xb86baf8f # initialize rs2
fmv.w.x f0, x18 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -80 # offset stack pointer from signature
c.fsdsp f0, 80(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x1, 0x6cc2bb8e # initialize rs2
fmv.w.x f1, x2 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -504 # offset stack pointer from signature
c.fsdsp f1, 504(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x2, 0xd2c4a7e3 # initialize rs2
fmv.w.x f2, x23 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -416 # offset stack pointer from signature
c.fsdsp f2, 416(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x3, 0x26881723 # initialize rs2
fmv.w.x f3, x11 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -176 # offset stack pointer from signature
c.fsdsp f3, 176(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x39e5e522 # initialize rs2
fmv.w.x f4, x12 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -176 # offset stack pointer from signature
c.fsdsp f4, 176(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x4acab035 # initialize rs2
fmv.w.x f5, x17 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -144 # offset stack pointer from signature
c.fsdsp f5, 144(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x0e782d7d # initialize rs2
fmv.w.x f6, x12 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -400 # offset stack pointer from signature
c.fsdsp f6, 400(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x4ac7f493 # initialize rs2
fmv.w.x f7, x23 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -504 # offset stack pointer from signature
c.fsdsp f7, 504(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x8, 0x4dc60d31 # initialize rs2
fmv.w.x f8, x17 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -296 # offset stack pointer from signature
c.fsdsp f8, 296(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x9, 0x12f125ad # initialize rs2
fmv.w.x f9, x29 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -248 # offset stack pointer from signature
c.fsdsp f9, 248(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x10, 0x2d37b014 # initialize rs2
fmv.w.x f10, x6 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -16 # offset stack pointer from signature
c.fsdsp f10, 16(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x11, 0xb61e90cc # initialize rs2
fmv.w.x f11, x18 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -376 # offset stack pointer from signature
c.fsdsp f11, 376(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x12, 0xecf163d8 # initialize rs2
fmv.w.x f12, x18 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -64 # offset stack pointer from signature
c.fsdsp f12, 64(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x13, 0x0da7e625 # initialize rs2
fmv.w.x f13, x8 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -344 # offset stack pointer from signature
c.fsdsp f13, 344(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x14, 0x563b39dc # initialize rs2
fmv.w.x f14, x19 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -160 # offset stack pointer from signature
c.fsdsp f14, 160(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x15, 0x39b57067 # initialize rs2
fmv.w.x f15, x6 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -24 # offset stack pointer from signature
c.fsdsp f15, 24(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x16, 0x21c51c10 # initialize rs2
fmv.w.x f16, x24 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -376 # offset stack pointer from signature
c.fsdsp f16, 376(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x17, 0x9fd207c1 # initialize rs2
fmv.w.x f17, x21 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -376 # offset stack pointer from signature
c.fsdsp f17, 376(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x18, 0xed6c1ce2 # initialize rs2
fmv.w.x f18, x30 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -504 # offset stack pointer from signature
c.fsdsp f18, 504(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x19, 0xecb11e00 # initialize rs2
fmv.w.x f19, x8 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -256 # offset stack pointer from signature
c.fsdsp f19, 256(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x20, 0x240a4266 # initialize rs2
fmv.w.x f20, x22 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -296 # offset stack pointer from signature
c.fsdsp f20, 296(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x21, 0x08d632d3 # initialize rs2
fmv.w.x f21, x19 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -48 # offset stack pointer from signature
c.fsdsp f21, 48(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x22, 0x06cb7af2 # initialize rs2
fmv.w.x f22, x13 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, 0 # offset stack pointer from signature
c.fsdsp f22, 0(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x23, 0xfe196297 # initialize rs2
fmv.w.x f23, x25 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -176 # offset stack pointer from signature
c.fsdsp f23, 176(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x24, 0x3c48fa22 # initialize rs2
fmv.w.x f24, x11 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -176 # offset stack pointer from signature
c.fsdsp f24, 176(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x25, 0x212f2ff1 # initialize rs2
fmv.w.x f25, x22 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -64 # offset stack pointer from signature
c.fsdsp f25, 64(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x26, 0xb8106287 # initialize rs2
fmv.w.x f26, x17 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -312 # offset stack pointer from signature
c.fsdsp f26, 312(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x27, 0x3f975ac1 # initialize rs2
fmv.w.x f27, x20 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -360 # offset stack pointer from signature
c.fsdsp f27, 360(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x28, 0xa40a8d37 # initialize rs2
fmv.w.x f28, x19 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -176 # offset stack pointer from signature
c.fsdsp f28, 176(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x29, 0x840fed6f # initialize rs2
fmv.w.x f29, x23 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -192 # offset stack pointer from signature
c.fsdsp f29, 192(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x30, 0x664ac148 # initialize rs2
fmv.w.x f30, x1 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -248 # offset stack pointer from signature
c.fsdsp f30, 248(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x31, 0xf57de137 # initialize rs2
fmv.w.x f31, x16 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -72 # offset stack pointer from signature
c.fsdsp f31, 72(sp)# perform operation

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
