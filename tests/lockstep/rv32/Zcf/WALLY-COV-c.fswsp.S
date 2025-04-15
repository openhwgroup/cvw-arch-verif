///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zcf/WALLY-COV-c.fswsp.S
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
li x16, 0xd6c9942a # initialize rs2
fmv.w.x f16, x29 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -128 # offset stack pointer from signature
c.fswsp f16, 128(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0xd2626f7b # initialize rs2
fmv.w.x f14, x19 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -132 # offset stack pointer from signature
c.fswsp f14, 132(sp)# perform operation

# Testcase cp_imm_mul
li x30, 0xa382911a # initialize rs2
fmv.w.x f30, x17 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -136 # offset stack pointer from signature
c.fswsp f30, 136(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0x5d9a8d60 # initialize rs2
fmv.w.x f29, x13 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -140 # offset stack pointer from signature
c.fswsp f29, 140(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0x54068859 # initialize rs2
fmv.w.x f31, x19 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -144 # offset stack pointer from signature
c.fswsp f31, 144(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0x5f722f40 # initialize rs2
fmv.w.x f12, x3 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -148 # offset stack pointer from signature
c.fswsp f12, 148(sp)# perform operation

# Testcase cp_imm_mul
li x17, 0x77298911 # initialize rs2
fmv.w.x f17, x29 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -152 # offset stack pointer from signature
c.fswsp f17, 152(sp)# perform operation

# Testcase cp_imm_mul
li x20, 0x4b7aad10 # initialize rs2
fmv.w.x f20, x18 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -156 # offset stack pointer from signature
c.fswsp f20, 156(sp)# perform operation

# Testcase cp_imm_mul
li x7, 0xf2f931b9 # initialize rs2
fmv.w.x f7, x19 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -160 # offset stack pointer from signature
c.fswsp f7, 160(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0x7b673380 # initialize rs2
fmv.w.x f12, x31 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -164 # offset stack pointer from signature
c.fswsp f12, 164(sp)# perform operation

# Testcase cp_imm_mul
li x7, 0x424f2374 # initialize rs2
fmv.w.x f7, x25 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -168 # offset stack pointer from signature
c.fswsp f7, 168(sp)# perform operation

# Testcase cp_imm_mul
li x19, 0x26780af3 # initialize rs2
fmv.w.x f19, x21 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -172 # offset stack pointer from signature
c.fswsp f19, 172(sp)# perform operation

# Testcase cp_imm_mul
li x30, 0xdfeb6772 # initialize rs2
fmv.w.x f30, x15 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -176 # offset stack pointer from signature
c.fswsp f30, 176(sp)# perform operation

# Testcase cp_imm_mul
li x7, 0x32fcac8f # initialize rs2
fmv.w.x f7, x21 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -180 # offset stack pointer from signature
c.fswsp f7, 180(sp)# perform operation

# Testcase cp_imm_mul
li x28, 0x80b12d66 # initialize rs2
fmv.w.x f28, x9 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -184 # offset stack pointer from signature
c.fswsp f28, 184(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0x515dc079 # initialize rs2
fmv.w.x f24, x17 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -188 # offset stack pointer from signature
c.fswsp f24, 188(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0xa41b99f9 # initialize rs2
fmv.w.x f8, x19 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -192 # offset stack pointer from signature
c.fswsp f8, 192(sp)# perform operation

# Testcase cp_imm_mul
li x23, 0x233b82bd # initialize rs2
fmv.w.x f23, x11 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -196 # offset stack pointer from signature
c.fswsp f23, 196(sp)# perform operation

# Testcase cp_imm_mul
li x11, 0xa6077dc0 # initialize rs2
fmv.w.x f11, x3 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -200 # offset stack pointer from signature
c.fswsp f11, 200(sp)# perform operation

# Testcase cp_imm_mul
li x25, 0x0754ae4b # initialize rs2
fmv.w.x f25, x28 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -204 # offset stack pointer from signature
c.fswsp f25, 204(sp)# perform operation

# Testcase cp_imm_mul
li x17, 0x3d95f3b1 # initialize rs2
fmv.w.x f17, x6 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -208 # offset stack pointer from signature
c.fswsp f17, 208(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0x37a2c3b8 # initialize rs2
fmv.w.x f27, x1 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -212 # offset stack pointer from signature
c.fswsp f27, 212(sp)# perform operation

# Testcase cp_imm_mul
li x3, 0xc1915137 # initialize rs2
fmv.w.x f3, x10 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -216 # offset stack pointer from signature
c.fswsp f3, 216(sp)# perform operation

# Testcase cp_imm_mul
li x2, 0x8b2e11a1 # initialize rs2
fmv.w.x f2, x12 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -220 # offset stack pointer from signature
c.fswsp f2, 220(sp)# perform operation

# Testcase cp_imm_mul
li x28, 0x0144e20c # initialize rs2
fmv.w.x f28, x12 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -224 # offset stack pointer from signature
c.fswsp f28, 224(sp)# perform operation

# Testcase cp_imm_mul
li x15, 0xc4e5d901 # initialize rs2
fmv.w.x f15, x24 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -228 # offset stack pointer from signature
c.fswsp f15, 228(sp)# perform operation

# Testcase cp_imm_mul
li x30, 0x445cc375 # initialize rs2
fmv.w.x f30, x17 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -232 # offset stack pointer from signature
c.fswsp f30, 232(sp)# perform operation

# Testcase cp_imm_mul
li x13, 0x816ddc43 # initialize rs2
fmv.w.x f13, x15 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -236 # offset stack pointer from signature
c.fswsp f13, 236(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0x8a81c51b # initialize rs2
fmv.w.x f8, x2 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -240 # offset stack pointer from signature
c.fswsp f8, 240(sp)# perform operation

# Testcase cp_imm_mul
li x5, 0xeb5e5146 # initialize rs2
fmv.w.x f5, x30 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -244 # offset stack pointer from signature
c.fswsp f5, 244(sp)# perform operation

# Testcase cp_imm_mul
li x15, 0xa975b3e6 # initialize rs2
fmv.w.x f15, x25 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -248 # offset stack pointer from signature
c.fswsp f15, 248(sp)# perform operation

# Testcase cp_imm_mul
li x16, 0x7dd03ff7 # initialize rs2
fmv.w.x f16, x21 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -252 # offset stack pointer from signature
c.fswsp f16, 252(sp)# perform operation

# Testcase cp_imm_mul
li x2, 0x421e8ad7 # initialize rs2
fmv.w.x f2, x22 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, 0 # offset stack pointer from signature
c.fswsp f2, 0(sp)# perform operation

# Testcase cp_imm_mul
li x22, 0xc62c46e0 # initialize rs2
fmv.w.x f22, x5 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -4 # offset stack pointer from signature
c.fswsp f22, 4(sp)# perform operation

# Testcase cp_imm_mul
li x25, 0x9f2e4033 # initialize rs2
fmv.w.x f25, x7 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -8 # offset stack pointer from signature
c.fswsp f25, 8(sp)# perform operation

# Testcase cp_imm_mul
li x28, 0xae1c3d5e # initialize rs2
fmv.w.x f28, x20 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -12 # offset stack pointer from signature
c.fswsp f28, 12(sp)# perform operation

# Testcase cp_imm_mul
li x17, 0x7d70dd6c # initialize rs2
fmv.w.x f17, x14 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -16 # offset stack pointer from signature
c.fswsp f17, 16(sp)# perform operation

# Testcase cp_imm_mul
li x17, 0x594cdf3e # initialize rs2
fmv.w.x f17, x26 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -20 # offset stack pointer from signature
c.fswsp f17, 20(sp)# perform operation

# Testcase cp_imm_mul
li x5, 0x56cfb90a # initialize rs2
fmv.w.x f5, x8 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -24 # offset stack pointer from signature
c.fswsp f5, 24(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0x079c0cd9 # initialize rs2
fmv.w.x f27, x15 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -28 # offset stack pointer from signature
c.fswsp f27, 28(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0x8b792cfd # initialize rs2
fmv.w.x f8, x28 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -32 # offset stack pointer from signature
c.fswsp f8, 32(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0xf6027469 # initialize rs2
fmv.w.x f12, x13 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -36 # offset stack pointer from signature
c.fswsp f12, 36(sp)# perform operation

# Testcase cp_imm_mul
li x16, 0x3a386c48 # initialize rs2
fmv.w.x f16, x25 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -40 # offset stack pointer from signature
c.fswsp f16, 40(sp)# perform operation

# Testcase cp_imm_mul
li x10, 0xdf06d834 # initialize rs2
fmv.w.x f10, x3 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -44 # offset stack pointer from signature
c.fswsp f10, 44(sp)# perform operation

# Testcase cp_imm_mul
li x22, 0x3d7f3610 # initialize rs2
fmv.w.x f22, x21 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -48 # offset stack pointer from signature
c.fswsp f22, 48(sp)# perform operation

# Testcase cp_imm_mul
li x23, 0x55820874 # initialize rs2
fmv.w.x f23, x19 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -52 # offset stack pointer from signature
c.fswsp f23, 52(sp)# perform operation

# Testcase cp_imm_mul
li x20, 0xf5f159a2 # initialize rs2
fmv.w.x f20, x10 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -56 # offset stack pointer from signature
c.fswsp f20, 56(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0x0abceed2 # initialize rs2
fmv.w.x f24, x3 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -60 # offset stack pointer from signature
c.fswsp f24, 60(sp)# perform operation

# Testcase cp_imm_mul
li x3, 0x4e834fac # initialize rs2
fmv.w.x f3, x31 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -64 # offset stack pointer from signature
c.fswsp f3, 64(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0xb761be70 # initialize rs2
fmv.w.x f27, x16 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -68 # offset stack pointer from signature
c.fswsp f27, 68(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0x1aeaf578 # initialize rs2
fmv.w.x f29, x12 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -72 # offset stack pointer from signature
c.fswsp f29, 72(sp)# perform operation

# Testcase cp_imm_mul
li x9, 0x67093caa # initialize rs2
fmv.w.x f9, x16 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -76 # offset stack pointer from signature
c.fswsp f9, 76(sp)# perform operation

# Testcase cp_imm_mul
li x9, 0xabe825ac # initialize rs2
fmv.w.x f9, x14 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -80 # offset stack pointer from signature
c.fswsp f9, 80(sp)# perform operation

# Testcase cp_imm_mul
li x26, 0x49944400 # initialize rs2
fmv.w.x f26, x6 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -84 # offset stack pointer from signature
c.fswsp f26, 84(sp)# perform operation

# Testcase cp_imm_mul
li x10, 0x115f525c # initialize rs2
fmv.w.x f10, x15 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -88 # offset stack pointer from signature
c.fswsp f10, 88(sp)# perform operation

# Testcase cp_imm_mul
li x19, 0xd21ca9dd # initialize rs2
fmv.w.x f19, x25 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -92 # offset stack pointer from signature
c.fswsp f19, 92(sp)# perform operation

# Testcase cp_imm_mul
li x11, 0x08bf66cd # initialize rs2
fmv.w.x f11, x23 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -96 # offset stack pointer from signature
c.fswsp f11, 96(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0x377e2d6f # initialize rs2
fmv.w.x f24, x25 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -100 # offset stack pointer from signature
c.fswsp f24, 100(sp)# perform operation

# Testcase cp_imm_mul
li x30, 0xdf609220 # initialize rs2
fmv.w.x f30, x9 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -104 # offset stack pointer from signature
c.fswsp f30, 104(sp)# perform operation

# Testcase cp_imm_mul
li x7, 0xbe996ef1 # initialize rs2
fmv.w.x f7, x9 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -108 # offset stack pointer from signature
c.fswsp f7, 108(sp)# perform operation

# Testcase cp_imm_mul
li x18, 0x5f223a17 # initialize rs2
fmv.w.x f18, x7 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -112 # offset stack pointer from signature
c.fswsp f18, 112(sp)# perform operation

# Testcase cp_imm_mul
li x5, 0x7313667a # initialize rs2
fmv.w.x f5, x13 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -116 # offset stack pointer from signature
c.fswsp f5, 116(sp)# perform operation

# Testcase cp_imm_mul
li x2, 0xb5405b77 # initialize rs2
fmv.w.x f2, x7 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -120 # offset stack pointer from signature
c.fswsp f2, 120(sp)# perform operation

# Testcase cp_imm_mul
li x2, 0x3457d493 # initialize rs2
fmv.w.x f2, x10 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -124 # offset stack pointer from signature
c.fswsp f2, 124(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x0, 0x5f654536 # initialize rs2
fmv.w.x f0, x13 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -160 # offset stack pointer from signature
c.fswsp f0, 160(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x1, 0x3a1f1ba1 # initialize rs2
fmv.w.x f1, x29 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -140 # offset stack pointer from signature
c.fswsp f1, 140(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x2, 0x4a901ce8 # initialize rs2
fmv.w.x f2, x18 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -52 # offset stack pointer from signature
c.fswsp f2, 52(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x3, 0xdbfb4720 # initialize rs2
fmv.w.x f3, x30 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -128 # offset stack pointer from signature
c.fswsp f3, 128(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x3c153f0f # initialize rs2
fmv.w.x f4, x3 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -160 # offset stack pointer from signature
c.fswsp f4, 160(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xf62c34a5 # initialize rs2
fmv.w.x f5, x10 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -120 # offset stack pointer from signature
c.fswsp f5, 120(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x0a09eac3 # initialize rs2
fmv.w.x f6, x19 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -236 # offset stack pointer from signature
c.fswsp f6, 236(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x72203ae5 # initialize rs2
fmv.w.x f7, x12 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -60 # offset stack pointer from signature
c.fswsp f7, 60(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x8, 0xfe0a6201 # initialize rs2
fmv.w.x f8, x15 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -104 # offset stack pointer from signature
c.fswsp f8, 104(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x9, 0x0923f89c # initialize rs2
fmv.w.x f9, x1 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -192 # offset stack pointer from signature
c.fswsp f9, 192(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x10, 0x4b3da00e # initialize rs2
fmv.w.x f10, x1 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -84 # offset stack pointer from signature
c.fswsp f10, 84(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x11, 0x2de84669 # initialize rs2
fmv.w.x f11, x24 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -24 # offset stack pointer from signature
c.fswsp f11, 24(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x12, 0x1e5565a6 # initialize rs2
fmv.w.x f12, x10 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -232 # offset stack pointer from signature
c.fswsp f12, 232(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x13, 0xc6d260c9 # initialize rs2
fmv.w.x f13, x2 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -208 # offset stack pointer from signature
c.fswsp f13, 208(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x14, 0x7daaf4c4 # initialize rs2
fmv.w.x f14, x5 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -224 # offset stack pointer from signature
c.fswsp f14, 224(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x15, 0xf80bd5bc # initialize rs2
fmv.w.x f15, x30 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -36 # offset stack pointer from signature
c.fswsp f15, 36(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x16, 0x6427c7eb # initialize rs2
fmv.w.x f16, x24 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, 0 # offset stack pointer from signature
c.fswsp f16, 0(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x17, 0xeaddc4af # initialize rs2
fmv.w.x f17, x5 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -172 # offset stack pointer from signature
c.fswsp f17, 172(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x18, 0x30e7bb10 # initialize rs2
fmv.w.x f18, x28 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -12 # offset stack pointer from signature
c.fswsp f18, 12(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x19, 0x7f78c09e # initialize rs2
fmv.w.x f19, x18 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -76 # offset stack pointer from signature
c.fswsp f19, 76(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x20, 0xef2c22e1 # initialize rs2
fmv.w.x f20, x27 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -188 # offset stack pointer from signature
c.fswsp f20, 188(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x21, 0xe0096794 # initialize rs2
fmv.w.x f21, x12 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -100 # offset stack pointer from signature
c.fswsp f21, 100(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x22, 0x2ccb2141 # initialize rs2
fmv.w.x f22, x13 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -232 # offset stack pointer from signature
c.fswsp f22, 232(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x23, 0x931b0c7a # initialize rs2
fmv.w.x f23, x30 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -36 # offset stack pointer from signature
c.fswsp f23, 36(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x24, 0xb3cc60cb # initialize rs2
fmv.w.x f24, x14 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -60 # offset stack pointer from signature
c.fswsp f24, 60(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x25, 0x02793e03 # initialize rs2
fmv.w.x f25, x9 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -40 # offset stack pointer from signature
c.fswsp f25, 40(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x26, 0xb1a9aaf9 # initialize rs2
fmv.w.x f26, x16 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -180 # offset stack pointer from signature
c.fswsp f26, 180(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x27, 0x8c5e09f1 # initialize rs2
fmv.w.x f27, x13 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -224 # offset stack pointer from signature
c.fswsp f27, 224(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x28, 0xca0e8bd8 # initialize rs2
fmv.w.x f28, x3 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -32 # offset stack pointer from signature
c.fswsp f28, 32(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x29, 0x8827e02d # initialize rs2
fmv.w.x f29, x2 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, 0 # offset stack pointer from signature
c.fswsp f29, 0(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x30, 0x84f0464a # initialize rs2
fmv.w.x f30, x24 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -60 # offset stack pointer from signature
c.fswsp f30, 60(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x31, 0x3ffcf595 # initialize rs2
fmv.w.x f31, x8 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -44 # offset stack pointer from signature
c.fswsp f31, 44(sp)# perform operation

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
