///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zca/WALLY-COV-c.lwsp.S
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

    
# Testcase cp_rd (Test destination rd = x1)
li x1, 0xe918e2aded45a4ec # initialize rs1
la sp, scratch # base address 
addi sp, sp, -216 # sub immediate from rs1 to counter offset
c.swsp x14, 216(sp)   # store value to put something in memory
c.lwsp x1, 216(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xd58ec4c140b469ea # initialize rs1
la sp, scratch # base address 
addi sp, sp, -92 # sub immediate from rs1 to counter offset
c.swsp x26, 92(sp)   # store value to put something in memory
c.lwsp x2, 92(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x13c0774996f3ef89 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -88 # sub immediate from rs1 to counter offset
c.swsp x2, 88(sp)   # store value to put something in memory
c.lwsp x3, 88(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 16)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x3dce726a3f5a4211 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -136 # sub immediate from rs1 to counter offset
c.swsp x18, 136(sp)   # store value to put something in memory
c.lwsp x4, 136(sp) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 24)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xe0d11bdc38c9dba1 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -36 # sub immediate from rs1 to counter offset
c.swsp x11, 36(sp)   # store value to put something in memory
c.lwsp x5, 36(sp) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 32)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x986552ade9bd1100 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -104 # sub immediate from rs1 to counter offset
c.swsp x11, 104(sp)   # store value to put something in memory
c.lwsp x6, 104(sp) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 40)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc58c3ac0e2b0f8bd # initialize rs1
la sp, scratch # base address 
addi sp, sp, -36 # sub immediate from rs1 to counter offset
c.swsp x11, 36(sp)   # store value to put something in memory
c.lwsp x7, 36(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 48)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xd6f27828cc6390da # initialize rs1
la sp, scratch # base address 
addi sp, sp, -212 # sub immediate from rs1 to counter offset
c.swsp x7, 212(sp)   # store value to put something in memory
c.lwsp x8, 212(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 56)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x132bda6c9d9063fa # initialize rs1
la sp, scratch # base address 
addi sp, sp, -32 # sub immediate from rs1 to counter offset
c.swsp x30, 32(sp)   # store value to put something in memory
c.lwsp x9, 32(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 64)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xbb4447c028545c18 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -108 # sub immediate from rs1 to counter offset
c.swsp x23, 108(sp)   # store value to put something in memory
c.lwsp x10, 108(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 72)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xd9180cb8e093078b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x30, 0(sp)   # store value to put something in memory
c.lwsp x11, 0(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 80)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xe05f1c1ba59e0103 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -192 # sub immediate from rs1 to counter offset
c.swsp x23, 192(sp)   # store value to put something in memory
c.lwsp x12, 192(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 88)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x3f27dbab3dfc6cb1 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -72 # sub immediate from rs1 to counter offset
c.swsp x16, 72(sp)   # store value to put something in memory
c.lwsp x13, 72(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 96)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x6441727ee6fa6f0b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -192 # sub immediate from rs1 to counter offset
c.swsp x10, 192(sp)   # store value to put something in memory
c.lwsp x14, 192(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xc0ccf91365f435ef # initialize rs1
la sp, scratch # base address 
addi sp, sp, -188 # sub immediate from rs1 to counter offset
c.swsp x20, 188(sp)   # store value to put something in memory
c.lwsp x15, 188(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 112)

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xf00e1fd2828b364b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -244 # sub immediate from rs1 to counter offset
c.swsp x25, 244(sp)   # store value to put something in memory
c.lwsp x16, 244(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 120)

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x0a6f83198d9b07e5 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -232 # sub immediate from rs1 to counter offset
c.swsp x19, 232(sp)   # store value to put something in memory
c.lwsp x17, 232(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 128)

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x0d17a617f862b112 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -236 # sub immediate from rs1 to counter offset
c.swsp x3, 236(sp)   # store value to put something in memory
c.lwsp x18, 236(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 136)

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x8f4e8e2190eaba9f # initialize rs1
la sp, scratch # base address 
addi sp, sp, -228 # sub immediate from rs1 to counter offset
c.swsp x1, 228(sp)   # store value to put something in memory
c.lwsp x19, 228(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 144)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x55db42f1613ae526 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -128 # sub immediate from rs1 to counter offset
c.swsp x28, 128(sp)   # store value to put something in memory
c.lwsp x20, 128(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 152)

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x102789646614427c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -212 # sub immediate from rs1 to counter offset
c.swsp x5, 212(sp)   # store value to put something in memory
c.lwsp x21, 212(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 160)

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xe49422e0658cf03b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x13, 0(sp)   # store value to put something in memory
c.lwsp x22, 0(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 168)

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x66bf6192a2ed2763 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -132 # sub immediate from rs1 to counter offset
c.swsp x23, 132(sp)   # store value to put something in memory
c.lwsp x23, 132(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 176)

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x67752cb7bd84244f # initialize rs1
la sp, scratch # base address 
addi sp, sp, -104 # sub immediate from rs1 to counter offset
c.swsp x23, 104(sp)   # store value to put something in memory
c.lwsp x24, 104(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 184)

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x49dcca005496f0bb # initialize rs1
la sp, scratch # base address 
addi sp, sp, -144 # sub immediate from rs1 to counter offset
c.swsp x20, 144(sp)   # store value to put something in memory
c.lwsp x25, 144(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 192)

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xe4de97d02bbf3340 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -148 # sub immediate from rs1 to counter offset
c.swsp x28, 148(sp)   # store value to put something in memory
c.lwsp x26, 148(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 200)

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xa3e23d3c43097ac4 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x22, 0(sp)   # store value to put something in memory
c.lwsp x27, 0(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 208)

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x72f4827ae3dcda98 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -216 # sub immediate from rs1 to counter offset
c.swsp x28, 216(sp)   # store value to put something in memory
c.lwsp x28, 216(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 216)

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x9863f450b8f9494a # initialize rs1
la sp, scratch # base address 
addi sp, sp, -92 # sub immediate from rs1 to counter offset
c.swsp x1, 92(sp)   # store value to put something in memory
c.lwsp x29, 92(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 224)

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x96be4c627b2d94c5 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -124 # sub immediate from rs1 to counter offset
c.swsp x25, 124(sp)   # store value to put something in memory
c.lwsp x30, 124(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 232)

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x04da7801b9c0af84 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -24 # sub immediate from rs1 to counter offset
c.swsp x27, 24(sp)   # store value to put something in memory
c.lwsp x31, 24(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 240)

# Testcase cp_imm_mul
li x30, 0x116bbc73b99f3830 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x19, 0(sp)   # store value to put something in memory
c.lwsp x30, 0(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_imm_mul
li x29, 0xca2d0947109f4feb # initialize rs1
la sp, scratch # base address 
addi sp, sp, -4 # sub immediate from rs1 to counter offset
c.swsp x22, 4(sp)   # store value to put something in memory
c.lwsp x29, 4(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 256)

# Testcase cp_imm_mul
li x1, 0xe94d5b06b9092d7f # initialize rs1
la sp, scratch # base address 
addi sp, sp, -8 # sub immediate from rs1 to counter offset
c.swsp x23, 8(sp)   # store value to put something in memory
c.lwsp x1, 8(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_imm_mul
li x7, 0x99bd346da9741118 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -12 # sub immediate from rs1 to counter offset
c.swsp x14, 12(sp)   # store value to put something in memory
c.lwsp x7, 12(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 272)

# Testcase cp_imm_mul
li x31, 0xcedc76e862cedd7a # initialize rs1
la sp, scratch # base address 
addi sp, sp, -16 # sub immediate from rs1 to counter offset
c.swsp x12, 16(sp)   # store value to put something in memory
c.lwsp x31, 16(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 280)

# Testcase cp_imm_mul
li x22, 0x97640e6e244c7a09 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -20 # sub immediate from rs1 to counter offset
c.swsp x15, 20(sp)   # store value to put something in memory
c.lwsp x22, 20(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 288)

# Testcase cp_imm_mul
li x23, 0x848a574f9ba20da6 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -24 # sub immediate from rs1 to counter offset
c.swsp x3, 24(sp)   # store value to put something in memory
c.lwsp x23, 24(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 296)

# Testcase cp_imm_mul
li x18, 0xca0a9926b25842ad # initialize rs1
la sp, scratch # base address 
addi sp, sp, -28 # sub immediate from rs1 to counter offset
c.swsp x23, 28(sp)   # store value to put something in memory
c.lwsp x18, 28(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 304)

# Testcase cp_imm_mul
li x6, 0x54f45dcf58c868d0 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -32 # sub immediate from rs1 to counter offset
c.swsp x31, 32(sp)   # store value to put something in memory
c.lwsp x6, 32(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 312)

# Testcase cp_imm_mul
li x23, 0xeae63906835d0912 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -36 # sub immediate from rs1 to counter offset
c.swsp x12, 36(sp)   # store value to put something in memory
c.lwsp x23, 36(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 320)

# Testcase cp_imm_mul
li x20, 0x533c0b77559ebf41 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -40 # sub immediate from rs1 to counter offset
c.swsp x19, 40(sp)   # store value to put something in memory
c.lwsp x20, 40(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 328)

# Testcase cp_imm_mul
li x27, 0x0d50d3dbecc45c95 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -44 # sub immediate from rs1 to counter offset
c.swsp x24, 44(sp)   # store value to put something in memory
c.lwsp x27, 44(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 336)

# Testcase cp_imm_mul
li x17, 0x834154ff2c2b6adc # initialize rs1
la sp, scratch # base address 
addi sp, sp, -48 # sub immediate from rs1 to counter offset
c.swsp x14, 48(sp)   # store value to put something in memory
c.lwsp x17, 48(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 344)

# Testcase cp_imm_mul
li x31, 0x78b1ab2467371470 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -52 # sub immediate from rs1 to counter offset
c.swsp x21, 52(sp)   # store value to put something in memory
c.lwsp x31, 52(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 352)

# Testcase cp_imm_mul
li x24, 0x4a14c1acde0db5f2 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -56 # sub immediate from rs1 to counter offset
c.swsp x11, 56(sp)   # store value to put something in memory
c.lwsp x24, 56(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 360)

# Testcase cp_imm_mul
li x1, 0x7dda8e6a1f1bd751 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -60 # sub immediate from rs1 to counter offset
c.swsp x2, 60(sp)   # store value to put something in memory
c.lwsp x1, 60(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 368)

# Testcase cp_imm_mul
li x3, 0x511c62227a63c53d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -64 # sub immediate from rs1 to counter offset
c.swsp x6, 64(sp)   # store value to put something in memory
c.lwsp x3, 64(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 376)

# Testcase cp_imm_mul
li x17, 0x6484ab4b4b645ce0 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -68 # sub immediate from rs1 to counter offset
c.swsp x19, 68(sp)   # store value to put something in memory
c.lwsp x17, 68(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 384)

# Testcase cp_imm_mul
li x26, 0xf6e16395130f16e0 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -72 # sub immediate from rs1 to counter offset
c.swsp x14, 72(sp)   # store value to put something in memory
c.lwsp x26, 72(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 392)

# Testcase cp_imm_mul
li x15, 0xb657e64bccb50ea4 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -76 # sub immediate from rs1 to counter offset
c.swsp x25, 76(sp)   # store value to put something in memory
c.lwsp x15, 76(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 400)

# Testcase cp_imm_mul
li x8, 0x38c5ab9da5306ea9 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -80 # sub immediate from rs1 to counter offset
c.swsp x1, 80(sp)   # store value to put something in memory
c.lwsp x8, 80(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 408)

# Testcase cp_imm_mul
li x2, 0x75ac78ca51ff09cf # initialize rs1
la sp, scratch # base address 
addi sp, sp, -84 # sub immediate from rs1 to counter offset
c.swsp x21, 84(sp)   # store value to put something in memory
c.lwsp x2, 84(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 416)

# Testcase cp_imm_mul
li x8, 0x194a02e62b1f828e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -88 # sub immediate from rs1 to counter offset
c.swsp x23, 88(sp)   # store value to put something in memory
c.lwsp x8, 88(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 424)

# Testcase cp_imm_mul
li x11, 0x86d624c34c55d8d1 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -92 # sub immediate from rs1 to counter offset
c.swsp x15, 92(sp)   # store value to put something in memory
c.lwsp x11, 92(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 432)

# Testcase cp_imm_mul
li x8, 0x7161482fa81488e4 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -96 # sub immediate from rs1 to counter offset
c.swsp x13, 96(sp)   # store value to put something in memory
c.lwsp x8, 96(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 440)

# Testcase cp_imm_mul
li x17, 0x44c0c9e20000e417 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -100 # sub immediate from rs1 to counter offset
c.swsp x12, 100(sp)   # store value to put something in memory
c.lwsp x17, 100(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 448)

# Testcase cp_imm_mul
li x13, 0x3e61830286949bd4 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -104 # sub immediate from rs1 to counter offset
c.swsp x27, 104(sp)   # store value to put something in memory
c.lwsp x13, 104(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 456)

# Testcase cp_imm_mul
li x7, 0x4c9d38591575eb09 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -108 # sub immediate from rs1 to counter offset
c.swsp x31, 108(sp)   # store value to put something in memory
c.lwsp x7, 108(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 464)

# Testcase cp_imm_mul
li x18, 0x283daee5ca2ca40b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -112 # sub immediate from rs1 to counter offset
c.swsp x17, 112(sp)   # store value to put something in memory
c.lwsp x18, 112(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 472)

# Testcase cp_imm_mul
li x8, 0xd378a452d132045f # initialize rs1
la sp, scratch # base address 
addi sp, sp, -116 # sub immediate from rs1 to counter offset
c.swsp x1, 116(sp)   # store value to put something in memory
c.lwsp x8, 116(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 480)

# Testcase cp_imm_mul
li x11, 0x31d74b80a1ed5d89 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -120 # sub immediate from rs1 to counter offset
c.swsp x5, 120(sp)   # store value to put something in memory
c.lwsp x11, 120(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 488)

# Testcase cp_imm_mul
li x15, 0xfbfdd5d24c913000 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -124 # sub immediate from rs1 to counter offset
c.swsp x21, 124(sp)   # store value to put something in memory
c.lwsp x15, 124(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 496)

# Testcase cp_imm_mul
li x10, 0xb3f6df6c70df6b82 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -128 # sub immediate from rs1 to counter offset
c.swsp x19, 128(sp)   # store value to put something in memory
c.lwsp x10, 128(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 504)

# Testcase cp_imm_mul
li x23, 0xe76038c5ead65d8e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -132 # sub immediate from rs1 to counter offset
c.swsp x19, 132(sp)   # store value to put something in memory
c.lwsp x23, 132(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 512)

# Testcase cp_imm_mul
li x11, 0xed34d6211c017335 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -136 # sub immediate from rs1 to counter offset
c.swsp x27, 136(sp)   # store value to put something in memory
c.lwsp x11, 136(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 520)

# Testcase cp_imm_mul
li x9, 0xff6d42e215610865 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -140 # sub immediate from rs1 to counter offset
c.swsp x16, 140(sp)   # store value to put something in memory
c.lwsp x9, 140(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 528)

# Testcase cp_imm_mul
li x22, 0x1b80cf2bdd567ac2 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -144 # sub immediate from rs1 to counter offset
c.swsp x25, 144(sp)   # store value to put something in memory
c.lwsp x22, 144(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 536)

# Testcase cp_imm_mul
li x22, 0x5912e596b1f471fc # initialize rs1
la sp, scratch # base address 
addi sp, sp, -148 # sub immediate from rs1 to counter offset
c.swsp x27, 148(sp)   # store value to put something in memory
c.lwsp x22, 148(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 544)

# Testcase cp_imm_mul
li x3, 0x4cb37903aeeb8487 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -152 # sub immediate from rs1 to counter offset
c.swsp x5, 152(sp)   # store value to put something in memory
c.lwsp x3, 152(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 552)

# Testcase cp_imm_mul
li x10, 0xa7ea8f536d09ebde # initialize rs1
la sp, scratch # base address 
addi sp, sp, -156 # sub immediate from rs1 to counter offset
c.swsp x14, 156(sp)   # store value to put something in memory
c.lwsp x10, 156(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 560)

# Testcase cp_imm_mul
li x22, 0xfac4a8990ebe7f70 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -160 # sub immediate from rs1 to counter offset
c.swsp x6, 160(sp)   # store value to put something in memory
c.lwsp x22, 160(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 568)

# Testcase cp_imm_mul
li x6, 0x3d14a3facab71460 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -164 # sub immediate from rs1 to counter offset
c.swsp x3, 164(sp)   # store value to put something in memory
c.lwsp x6, 164(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 576)

# Testcase cp_imm_mul
li x6, 0x4222ec699f328011 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -168 # sub immediate from rs1 to counter offset
c.swsp x15, 168(sp)   # store value to put something in memory
c.lwsp x6, 168(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 584)

# Testcase cp_imm_mul
li x17, 0x7486d6c3e76e4f60 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -172 # sub immediate from rs1 to counter offset
c.swsp x13, 172(sp)   # store value to put something in memory
c.lwsp x17, 172(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 592)

# Testcase cp_imm_mul
li x1, 0x522f8a6696c084f2 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -176 # sub immediate from rs1 to counter offset
c.swsp x28, 176(sp)   # store value to put something in memory
c.lwsp x1, 176(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 600)

# Testcase cp_imm_mul
li x2, 0xec422263e09c2415 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -180 # sub immediate from rs1 to counter offset
c.swsp x30, 180(sp)   # store value to put something in memory
c.lwsp x2, 180(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 608)

# Testcase cp_imm_mul
li x3, 0x248d04c863926f3d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -184 # sub immediate from rs1 to counter offset
c.swsp x15, 184(sp)   # store value to put something in memory
c.lwsp x3, 184(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 616)

# Testcase cp_imm_mul
li x18, 0x89e3206895f41d73 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -188 # sub immediate from rs1 to counter offset
c.swsp x2, 188(sp)   # store value to put something in memory
c.lwsp x18, 188(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 624)

# Testcase cp_imm_mul
li x6, 0x7d055695bb7d1fba # initialize rs1
la sp, scratch # base address 
addi sp, sp, -192 # sub immediate from rs1 to counter offset
c.swsp x21, 192(sp)   # store value to put something in memory
c.lwsp x6, 192(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 632)

# Testcase cp_imm_mul
li x10, 0xc653345c0fd4cdf9 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -196 # sub immediate from rs1 to counter offset
c.swsp x15, 196(sp)   # store value to put something in memory
c.lwsp x10, 196(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 640)

# Testcase cp_imm_mul
li x10, 0xb91903fcd62242ae # initialize rs1
la sp, scratch # base address 
addi sp, sp, -200 # sub immediate from rs1 to counter offset
c.swsp x9, 200(sp)   # store value to put something in memory
c.lwsp x10, 200(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 648)

# Testcase cp_imm_mul
li x29, 0x86ef74ae15bbbea1 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -204 # sub immediate from rs1 to counter offset
c.swsp x17, 204(sp)   # store value to put something in memory
c.lwsp x29, 204(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 656)

# Testcase cp_imm_mul
li x2, 0x865310cb838b440d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -208 # sub immediate from rs1 to counter offset
c.swsp x19, 208(sp)   # store value to put something in memory
c.lwsp x2, 208(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 664)

# Testcase cp_imm_mul
li x18, 0xe6c4cd5ee97eeec3 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -212 # sub immediate from rs1 to counter offset
c.swsp x9, 212(sp)   # store value to put something in memory
c.lwsp x18, 212(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 672)

# Testcase cp_imm_mul
li x14, 0x8466571edfa79111 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -216 # sub immediate from rs1 to counter offset
c.swsp x11, 216(sp)   # store value to put something in memory
c.lwsp x14, 216(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 680)

# Testcase cp_imm_mul
li x27, 0x5aad0cae7ba2520a # initialize rs1
la sp, scratch # base address 
addi sp, sp, -220 # sub immediate from rs1 to counter offset
c.swsp x24, 220(sp)   # store value to put something in memory
c.lwsp x27, 220(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 688)

# Testcase cp_imm_mul
li x27, 0x5d824329a2f57b9c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -224 # sub immediate from rs1 to counter offset
c.swsp x20, 224(sp)   # store value to put something in memory
c.lwsp x27, 224(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 696)

# Testcase cp_imm_mul
li x17, 0xc3aa77f49ea2a225 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -228 # sub immediate from rs1 to counter offset
c.swsp x24, 228(sp)   # store value to put something in memory
c.lwsp x17, 228(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 704)

# Testcase cp_imm_mul
li x25, 0x4b11b367d2d4a384 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -232 # sub immediate from rs1 to counter offset
c.swsp x9, 232(sp)   # store value to put something in memory
c.lwsp x25, 232(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_imm_mul
li x17, 0x212c5a5b50f2f713 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -236 # sub immediate from rs1 to counter offset
c.swsp x23, 236(sp)   # store value to put something in memory
c.lwsp x17, 236(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 720)

# Testcase cp_imm_mul
li x22, 0x36171fcf571ea6ba # initialize rs1
la sp, scratch # base address 
addi sp, sp, -240 # sub immediate from rs1 to counter offset
c.swsp x12, 240(sp)   # store value to put something in memory
c.lwsp x22, 240(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 728)

# Testcase cp_imm_mul
li x18, 0x84ed2ed6846bcfee # initialize rs1
la sp, scratch # base address 
addi sp, sp, -244 # sub immediate from rs1 to counter offset
c.swsp x14, 244(sp)   # store value to put something in memory
c.lwsp x18, 244(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 736)

# Testcase cp_imm_mul
li x31, 0x36aa6697d7589bdc # initialize rs1
la sp, scratch # base address 
addi sp, sp, -248 # sub immediate from rs1 to counter offset
c.swsp x19, 248(sp)   # store value to put something in memory
c.lwsp x31, 248(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 744)

# Testcase cp_imm_mul
li x6, 0x8d4b9afcec21efbe # initialize rs1
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x26, 252(sp)   # store value to put something in memory
c.lwsp x6, 252(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 752)

.EQU SIGSIZE,760


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
