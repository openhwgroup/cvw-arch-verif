///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zca/WALLY-COV-c.swsp.S
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

    
# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0x46079cbd44cb18e0 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -40 # offset stack pointer from signature
c.swsp x0, 40(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0x5984615f33c13b35 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -216 # offset stack pointer from signature
c.swsp x1, 216(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0x12232868eb470d4c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -96 # offset stack pointer from signature
c.swsp x2, 96(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0x49e53fd9530b461b # initialize rs2
la sp, scratch # base address 
addi sp, sp, -200 # offset stack pointer from signature
c.swsp x3, 200(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xa5a31ba85fd69ccd # initialize rs2
la sp, scratch # base address 
addi sp, sp, -144 # offset stack pointer from signature
c.swsp x4, 144(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xff594c07c22a81b2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -64 # offset stack pointer from signature
c.swsp x5, 64(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xe51aede44b177094 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -152 # offset stack pointer from signature
c.swsp x6, 152(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xbb1c7fa46a2358c2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -44 # offset stack pointer from signature
c.swsp x7, 44(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0xd444aa3cd1fe266f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -20 # offset stack pointer from signature
c.swsp x8, 20(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x5290f41e9aa71bfc # initialize rs2
la sp, scratch # base address 
addi sp, sp, -216 # offset stack pointer from signature
c.swsp x9, 216(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0xf616ca57c4f7f51f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -32 # offset stack pointer from signature
c.swsp x10, 32(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x7dfd8bc736e14b5c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -212 # offset stack pointer from signature
c.swsp x11, 212(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x33e3f1b9556681b0 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -68 # offset stack pointer from signature
c.swsp x12, 68(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x89e779f4f04635b9 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # offset stack pointer from signature
c.swsp x13, 252(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x65977be50eeae103 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -176 # offset stack pointer from signature
c.swsp x14, 176(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x1dbb3bb20400b75a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -176 # offset stack pointer from signature
c.swsp x15, 176(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0x1053546a32ec82b8 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -212 # offset stack pointer from signature
c.swsp x16, 212(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0x328bf1f63531b6d4 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -224 # offset stack pointer from signature
c.swsp x17, 224(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0xecd93e47327094e8 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -220 # offset stack pointer from signature
c.swsp x18, 220(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0x59698c4e7114fd74 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -136 # offset stack pointer from signature
c.swsp x19, 136(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0x0aaf64ded48e213d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -180 # offset stack pointer from signature
c.swsp x20, 180(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0xbd0c6a248cb8c907 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -72 # offset stack pointer from signature
c.swsp x21, 72(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0x85a80b59b7452917 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -240 # offset stack pointer from signature
c.swsp x22, 240(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0xa9b2a7e7cb12fbc0 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -36 # offset stack pointer from signature
c.swsp x23, 36(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0x1456193ed66a5f28 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -172 # offset stack pointer from signature
c.swsp x24, 172(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0x0e9a48e227599f12 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -52 # offset stack pointer from signature
c.swsp x25, 52(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0xf773df85e3369183 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -44 # offset stack pointer from signature
c.swsp x26, 44(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0x7998e06279e743f9 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -148 # offset stack pointer from signature
c.swsp x27, 148(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0xb521bf0fc6221dfb # initialize rs2
la sp, scratch # base address 
addi sp, sp, -244 # offset stack pointer from signature
c.swsp x28, 244(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0xc111d9352754250e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -208 # offset stack pointer from signature
c.swsp x29, 208(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0x169fc097840cae0b # initialize rs2
la sp, scratch # base address 
addi sp, sp, -180 # offset stack pointer from signature
c.swsp x30, 180(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0x1be30475e16359b8 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -44 # offset stack pointer from signature
c.swsp x31, 44(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x22, 0x0000000000000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -228 # offset stack pointer from signature
c.swsp x22, 228(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x14, 0x0000000000000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -236 # offset stack pointer from signature
c.swsp x14, 236(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x20, 0x0000000000000002 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -64 # offset stack pointer from signature
c.swsp x20, 64(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x24, 0x8000000000000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -188 # offset stack pointer from signature
c.swsp x24, 188(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x25, 0x8000000000000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -84 # offset stack pointer from signature
c.swsp x25, 84(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x5, 0x7fffffffffffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -152 # offset stack pointer from signature
c.swsp x5, 152(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x17, 0x7ffffffffffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -80 # offset stack pointer from signature
c.swsp x17, 80(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x9, 0xffffffffffffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -68 # offset stack pointer from signature
c.swsp x9, 68(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x26, 0xfffffffffffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -220 # offset stack pointer from signature
c.swsp x26, 220(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x27, 0x5bbc887763ae86f2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -84 # offset stack pointer from signature
c.swsp x27, 84(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
la sp, scratch # base address 
addi sp, sp, -32 # offset stack pointer from signature
c.swsp x28, 32(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x25, 0x5555555555555555 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -192 # offset stack pointer from signature
c.swsp x25, 192(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x11, 0x00000000ffffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -80 # offset stack pointer from signature
c.swsp x11, 80(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x12, 0x00000000fffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -108 # offset stack pointer from signature
c.swsp x12, 108(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x20, 0x0000000100000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -92 # offset stack pointer from signature
c.swsp x20, 92(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x18, 0x0000000100000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -96 # offset stack pointer from signature
c.swsp x18, 96(sp)# perform operation

# Testcase cp_imm_mul
li x19, 0x5e9d49fb584ef39c # initialize rs2
la sp, scratch # base address 
addi sp, sp, 0 # offset stack pointer from signature
c.swsp x19, 0(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0x8d2115c3100e9a77 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -4 # offset stack pointer from signature
c.swsp x14, 4(sp)# perform operation

# Testcase cp_imm_mul
li x1, 0x825588f2e21db2f1 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -8 # offset stack pointer from signature
c.swsp x1, 8(sp)# perform operation

# Testcase cp_imm_mul
li x7, 0xb29b7ad508f1ee53 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -12 # offset stack pointer from signature
c.swsp x7, 12(sp)# perform operation

# Testcase cp_imm_mul
li x1, 0x50d5a12537a2726d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -16 # offset stack pointer from signature
c.swsp x1, 16(sp)# perform operation

# Testcase cp_imm_mul
li x1, 0x887a85ad91d8fea1 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -20 # offset stack pointer from signature
c.swsp x1, 20(sp)# perform operation

# Testcase cp_imm_mul
li x18, 0xa898dacc25653684 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -24 # offset stack pointer from signature
c.swsp x18, 24(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0x81d0e558ddeb25c1 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -28 # offset stack pointer from signature
c.swsp x12, 28(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0xd41974587693fd88 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -32 # offset stack pointer from signature
c.swsp x8, 32(sp)# perform operation

# Testcase cp_imm_mul
li x10, 0x4daf39df17f0dc41 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -36 # offset stack pointer from signature
c.swsp x10, 36(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0x5c2b707d1aaef612 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -40 # offset stack pointer from signature
c.swsp x27, 40(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0xd084e406df593f09 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -44 # offset stack pointer from signature
c.swsp x27, 44(sp)# perform operation

# Testcase cp_imm_mul
li x17, 0x9e17df6a3a92f564 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -48 # offset stack pointer from signature
c.swsp x17, 48(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0x996dee6f8bf78c53 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -52 # offset stack pointer from signature
c.swsp x29, 52(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0xee70fb89a7f55807 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -56 # offset stack pointer from signature
c.swsp x12, 56(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0x64d42cace8489ea4 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -60 # offset stack pointer from signature
c.swsp x8, 60(sp)# perform operation

# Testcase cp_imm_mul
li x7, 0x9487edaa78190573 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -64 # offset stack pointer from signature
c.swsp x7, 64(sp)# perform operation

# Testcase cp_imm_mul
li x20, 0x05d085b343696300 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -68 # offset stack pointer from signature
c.swsp x20, 68(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0x5f9c0192b870bc60 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -72 # offset stack pointer from signature
c.swsp x14, 72(sp)# perform operation

# Testcase cp_imm_mul
li x28, 0x1b4d49e88fb35ff3 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -76 # offset stack pointer from signature
c.swsp x28, 76(sp)# perform operation

# Testcase cp_imm_mul
li x28, 0x599f71306e8cb999 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -80 # offset stack pointer from signature
c.swsp x28, 80(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0xc9a50d91c8761ab8 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -84 # offset stack pointer from signature
c.swsp x27, 84(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0x546162b45f19ffa1 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -88 # offset stack pointer from signature
c.swsp x8, 88(sp)# perform operation

# Testcase cp_imm_mul
li x26, 0xc2d05e545324811b # initialize rs2
la sp, scratch # base address 
addi sp, sp, -92 # offset stack pointer from signature
c.swsp x26, 92(sp)# perform operation

# Testcase cp_imm_mul
li x28, 0xacf04e392aafd7d4 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -96 # offset stack pointer from signature
c.swsp x28, 96(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0x0a434428af2c8553 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -100 # offset stack pointer from signature
c.swsp x8, 100(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0x8be6d2dc7c7ad8f9 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -104 # offset stack pointer from signature
c.swsp x27, 104(sp)# perform operation

# Testcase cp_imm_mul
li x16, 0x765a7d4b642d7e10 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -108 # offset stack pointer from signature
c.swsp x16, 108(sp)# perform operation

# Testcase cp_imm_mul
li x21, 0xdfe8b658d4e0a828 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -112 # offset stack pointer from signature
c.swsp x21, 112(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0x2a042145f9b57f95 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -116 # offset stack pointer from signature
c.swsp x31, 116(sp)# perform operation

# Testcase cp_imm_mul
li x1, 0xb8a5f7b6aff5597a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -120 # offset stack pointer from signature
c.swsp x1, 120(sp)# perform operation

# Testcase cp_imm_mul
li x20, 0xfa9de24f74da4191 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -124 # offset stack pointer from signature
c.swsp x20, 124(sp)# perform operation

# Testcase cp_imm_mul
li x13, 0x06146484f04df0ea # initialize rs2
la sp, scratch # base address 
addi sp, sp, -128 # offset stack pointer from signature
c.swsp x13, 128(sp)# perform operation

# Testcase cp_imm_mul
li x19, 0x8da24d2a2232068f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -132 # offset stack pointer from signature
c.swsp x19, 132(sp)# perform operation

# Testcase cp_imm_mul
li x23, 0xaf3dc43bd8d59166 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -136 # offset stack pointer from signature
c.swsp x23, 136(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0xc678349df3fafb49 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -140 # offset stack pointer from signature
c.swsp x24, 140(sp)# perform operation

# Testcase cp_imm_mul
li x23, 0x1e713302dcdf7384 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -144 # offset stack pointer from signature
c.swsp x23, 144(sp)# perform operation

# Testcase cp_imm_mul
li x19, 0x4eab5f300933f1cf # initialize rs2
la sp, scratch # base address 
addi sp, sp, -148 # offset stack pointer from signature
c.swsp x19, 148(sp)# perform operation

# Testcase cp_imm_mul
li x6, 0x51ff644edada9700 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -152 # offset stack pointer from signature
c.swsp x6, 152(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0x3c6af2a3ee00d179 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -156 # offset stack pointer from signature
c.swsp x27, 156(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0x745c56eac2243a6e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -160 # offset stack pointer from signature
c.swsp x12, 160(sp)# perform operation

# Testcase cp_imm_mul
li x17, 0x6441d0b91486ed98 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -164 # offset stack pointer from signature
c.swsp x17, 164(sp)# perform operation

# Testcase cp_imm_mul
li x1, 0xa671633a84e01802 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -168 # offset stack pointer from signature
c.swsp x1, 168(sp)# perform operation

# Testcase cp_imm_mul
li x1, 0xb7ab8ddbfe1353c6 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -172 # offset stack pointer from signature
c.swsp x1, 172(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0x521514c163cd0958 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -176 # offset stack pointer from signature
c.swsp x24, 176(sp)# perform operation

# Testcase cp_imm_mul
li x23, 0x854f4cf1360a19e4 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -180 # offset stack pointer from signature
c.swsp x23, 180(sp)# perform operation

# Testcase cp_imm_mul
li x13, 0x0b4da604db35f50e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -184 # offset stack pointer from signature
c.swsp x13, 184(sp)# perform operation

# Testcase cp_imm_mul
li x3, 0x06bcca88954dc182 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -188 # offset stack pointer from signature
c.swsp x3, 188(sp)# perform operation

# Testcase cp_imm_mul
li x26, 0x23713044875706dd # initialize rs2
la sp, scratch # base address 
addi sp, sp, -192 # offset stack pointer from signature
c.swsp x26, 192(sp)# perform operation

# Testcase cp_imm_mul
li x1, 0xadb773e7bb9ae87a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -196 # offset stack pointer from signature
c.swsp x1, 196(sp)# perform operation

# Testcase cp_imm_mul
li x25, 0xcb5e7be728fed67f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -200 # offset stack pointer from signature
c.swsp x25, 200(sp)# perform operation

# Testcase cp_imm_mul
li x15, 0x0f7c76a86e9d4a38 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -204 # offset stack pointer from signature
c.swsp x15, 204(sp)# perform operation

# Testcase cp_imm_mul
li x6, 0xd48f8949b427b739 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -208 # offset stack pointer from signature
c.swsp x6, 208(sp)# perform operation

# Testcase cp_imm_mul
li x19, 0x3f824cfc82cd5e0c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -212 # offset stack pointer from signature
c.swsp x19, 212(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0xe007d444e991baa6 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -216 # offset stack pointer from signature
c.swsp x14, 216(sp)# perform operation

# Testcase cp_imm_mul
li x19, 0x21482f5bae9c1ea2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -220 # offset stack pointer from signature
c.swsp x19, 220(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0x83db817a921fcf04 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -224 # offset stack pointer from signature
c.swsp x29, 224(sp)# perform operation

# Testcase cp_imm_mul
li x22, 0x1115f5dfd65398da # initialize rs2
la sp, scratch # base address 
addi sp, sp, -228 # offset stack pointer from signature
c.swsp x22, 228(sp)# perform operation

# Testcase cp_imm_mul
li x1, 0xaaafcf45fb73058c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -232 # offset stack pointer from signature
c.swsp x1, 232(sp)# perform operation

# Testcase cp_imm_mul
li x2, 0x6c4e239b30895cc6 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -236 # offset stack pointer from signature
c.swsp x2, 236(sp)# perform operation

# Testcase cp_imm_mul
li x6, 0x3c8777fda45ca78e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -240 # offset stack pointer from signature
c.swsp x6, 240(sp)# perform operation

# Testcase cp_imm_mul
li x15, 0xc1ab91b98ad2133f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -244 # offset stack pointer from signature
c.swsp x15, 244(sp)# perform operation

# Testcase cp_imm_mul
li x17, 0x1f644d45bb684916 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -248 # offset stack pointer from signature
c.swsp x17, 248(sp)# perform operation

# Testcase cp_imm_mul
li x18, 0x367a5b5ebb52ce81 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # offset stack pointer from signature
c.swsp x18, 252(sp)# perform operation

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
