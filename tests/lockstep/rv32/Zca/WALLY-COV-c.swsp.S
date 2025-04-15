///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zca/WALLY-COV-c.swsp.S
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
li x0, 0xf6947a03 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -184 # offset stack pointer from signature
c.swsp x0, 184(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0xd99f5f3f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -88 # offset stack pointer from signature
c.swsp x1, 88(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0xc9fc0c2b # initialize rs2
la sp, scratch # base address 
addi sp, sp, -40 # offset stack pointer from signature
c.swsp x2, 40(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0xecbdaad0 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -68 # offset stack pointer from signature
c.swsp x3, 68(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x3987a57c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -12 # offset stack pointer from signature
c.swsp x4, 12(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x12232868 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -44 # offset stack pointer from signature
c.swsp x5, 44(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x7a97ab17 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -100 # offset stack pointer from signature
c.swsp x6, 100(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x525e0b76 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -140 # offset stack pointer from signature
c.swsp x7, 140(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x4d357338 # initialize rs2
la sp, scratch # base address 
addi sp, sp, 0 # offset stack pointer from signature
c.swsp x8, 0(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x3ada2880 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -196 # offset stack pointer from signature
c.swsp x9, 196(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0xe2195e13 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -68 # offset stack pointer from signature
c.swsp x10, 68(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0xc68d93bc # initialize rs2
la sp, scratch # base address 
addi sp, sp, -144 # offset stack pointer from signature
c.swsp x11, 144(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0xbb1c7fa4 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -240 # offset stack pointer from signature
c.swsp x12, 240(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x3b87065e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -240 # offset stack pointer from signature
c.swsp x13, 240(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x314a0608 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -108 # offset stack pointer from signature
c.swsp x14, 108(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x5c824e19 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -92 # offset stack pointer from signature
c.swsp x15, 92(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0x315efbdb # initialize rs2
la sp, scratch # base address 
addi sp, sp, -92 # offset stack pointer from signature
c.swsp x16, 92(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0x4ea24e35 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -100 # offset stack pointer from signature
c.swsp x17, 100(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0x61e31717 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -44 # offset stack pointer from signature
c.swsp x18, 44(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0x7e8b92ec # initialize rs2
la sp, scratch # base address 
addi sp, sp, -192 # offset stack pointer from signature
c.swsp x19, 192(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0xb90611a6 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -152 # offset stack pointer from signature
c.swsp x20, 152(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0x17334342 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -60 # offset stack pointer from signature
c.swsp x21, 60(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0x5fcaea2c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -80 # offset stack pointer from signature
c.swsp x22, 80(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0x84c3b504 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -12 # offset stack pointer from signature
c.swsp x23, 12(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0x95885086 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -72 # offset stack pointer from signature
c.swsp x24, 72(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0x550cca58 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -180 # offset stack pointer from signature
c.swsp x25, 180(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0x07a8a8b0 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -120 # offset stack pointer from signature
c.swsp x26, 120(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0x1053546a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -140 # offset stack pointer from signature
c.swsp x27, 140(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0xa120a1c1 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -224 # offset stack pointer from signature
c.swsp x28, 224(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0x5f20a723 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -64 # offset stack pointer from signature
c.swsp x29, 64(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0xdb00abff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -28 # offset stack pointer from signature
c.swsp x30, 28(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0x11de3362 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -32 # offset stack pointer from signature
c.swsp x31, 32(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x22, 0x00000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -172 # offset stack pointer from signature
c.swsp x22, 172(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x9, 0x00000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -188 # offset stack pointer from signature
c.swsp x9, 188(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x14, 0x00000002 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -128 # offset stack pointer from signature
c.swsp x14, 128(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x10, 0x80000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -72 # offset stack pointer from signature
c.swsp x10, 72(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x21, 0x80000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -96 # offset stack pointer from signature
c.swsp x21, 96(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x18, 0x7fffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -196 # offset stack pointer from signature
c.swsp x18, 196(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x25, 0x7ffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -4 # offset stack pointer from signature
c.swsp x25, 4(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x17, 0xffffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -40 # offset stack pointer from signature
c.swsp x17, 40(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x3, 0xfffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -128 # offset stack pointer from signature
c.swsp x3, 128(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x19, 0x5bbc8872 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -152 # offset stack pointer from signature
c.swsp x19, 152(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x24, 0xaaaaaaaa # initialize rs2
la sp, scratch # base address 
addi sp, sp, -124 # offset stack pointer from signature
c.swsp x24, 124(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x26, 0x55555555 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -88 # offset stack pointer from signature
c.swsp x26, 88(sp)# perform operation

# Testcase cp_imm_mul
li x19, 0xe1342779 # initialize rs2
la sp, scratch # base address 
addi sp, sp, 0 # offset stack pointer from signature
c.swsp x19, 0(sp)# perform operation

# Testcase cp_imm_mul
li x21, 0xe3ff9a0d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -4 # offset stack pointer from signature
c.swsp x21, 4(sp)# perform operation

# Testcase cp_imm_mul
li x5, 0xcbebb042 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -8 # offset stack pointer from signature
c.swsp x5, 8(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0x16dc8f11 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -12 # offset stack pointer from signature
c.swsp x14, 12(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0x1c1fee45 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -16 # offset stack pointer from signature
c.swsp x29, 16(sp)# perform operation

# Testcase cp_imm_mul
li x10, 0x3cc0102f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -20 # offset stack pointer from signature
c.swsp x10, 20(sp)# perform operation

# Testcase cp_imm_mul
li x1, 0xadb624b0 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -24 # offset stack pointer from signature
c.swsp x1, 24(sp)# perform operation

# Testcase cp_imm_mul
li x18, 0x00dc5f58 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -28 # offset stack pointer from signature
c.swsp x18, 28(sp)# perform operation

# Testcase cp_imm_mul
li x16, 0x3fcd5114 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -32 # offset stack pointer from signature
c.swsp x16, 32(sp)# perform operation

# Testcase cp_imm_mul
li x1, 0x887a85ad # initialize rs2
la sp, scratch # base address 
addi sp, sp, -36 # offset stack pointer from signature
c.swsp x1, 36(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0xfe22c6d5 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -40 # offset stack pointer from signature
c.swsp x14, 40(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0x9a324e13 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -44 # offset stack pointer from signature
c.swsp x14, 44(sp)# perform operation

# Testcase cp_imm_mul
li x3, 0x81d0e558 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -48 # offset stack pointer from signature
c.swsp x3, 48(sp)# perform operation

# Testcase cp_imm_mul
li x21, 0xb6cf981d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -52 # offset stack pointer from signature
c.swsp x21, 52(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0xa49bdaf6 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -56 # offset stack pointer from signature
c.swsp x8, 56(sp)# perform operation

# Testcase cp_imm_mul
li x18, 0x8b5a9947 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -60 # offset stack pointer from signature
c.swsp x18, 60(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0x8ace2b10 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -64 # offset stack pointer from signature
c.swsp x24, 64(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0x7f34c182 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -68 # offset stack pointer from signature
c.swsp x14, 68(sp)# perform operation

# Testcase cp_imm_mul
li x25, 0xd12855a2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -72 # offset stack pointer from signature
c.swsp x25, 72(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0x87e58ce2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -76 # offset stack pointer from signature
c.swsp x29, 76(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0xd3bafe55 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -80 # offset stack pointer from signature
c.swsp x8, 80(sp)# perform operation

# Testcase cp_imm_mul
li x25, 0x94f57c1e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -84 # offset stack pointer from signature
c.swsp x25, 84(sp)# perform operation

# Testcase cp_imm_mul
li x21, 0x10229d22 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -88 # offset stack pointer from signature
c.swsp x21, 88(sp)# perform operation

# Testcase cp_imm_mul
li x7, 0x713039f7 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -92 # offset stack pointer from signature
c.swsp x7, 92(sp)# perform operation

# Testcase cp_imm_mul
li x16, 0x7399ba6d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -96 # offset stack pointer from signature
c.swsp x16, 96(sp)# perform operation

# Testcase cp_imm_mul
li x7, 0x34d65d9d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -100 # offset stack pointer from signature
c.swsp x7, 100(sp)# perform operation

# Testcase cp_imm_mul
li x20, 0x43696300 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -104 # offset stack pointer from signature
c.swsp x20, 104(sp)# perform operation

# Testcase cp_imm_mul
li x19, 0xf31acb30 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -108 # offset stack pointer from signature
c.swsp x19, 108(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0x21bfa6f4 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -112 # offset stack pointer from signature
c.swsp x14, 112(sp)# perform operation

# Testcase cp_imm_mul
li x11, 0x8fb35ff3 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -116 # offset stack pointer from signature
c.swsp x11, 116(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0x4cafbae9 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -120 # offset stack pointer from signature
c.swsp x8, 120(sp)# perform operation

# Testcase cp_imm_mul
li x11, 0x81e63a05 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -124 # offset stack pointer from signature
c.swsp x11, 124(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0xc9a50d91 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -128 # offset stack pointer from signature
c.swsp x27, 128(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0x546162b4 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -132 # offset stack pointer from signature
c.swsp x8, 132(sp)# perform operation

# Testcase cp_imm_mul
li x15, 0x57c2b162 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -136 # offset stack pointer from signature
c.swsp x15, 136(sp)# perform operation

# Testcase cp_imm_mul
li x3, 0xcda2de0f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -140 # offset stack pointer from signature
c.swsp x3, 140(sp)# perform operation

# Testcase cp_imm_mul
li x23, 0xacf04e39 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -144 # offset stack pointer from signature
c.swsp x23, 144(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0xd48ce146 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -148 # offset stack pointer from signature
c.swsp x8, 148(sp)# perform operation

# Testcase cp_imm_mul
li x13, 0x2908eef3 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -152 # offset stack pointer from signature
c.swsp x13, 152(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0xcf475178 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -156 # offset stack pointer from signature
c.swsp x29, 156(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0xec7b3328 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -160 # offset stack pointer from signature
c.swsp x14, 160(sp)# perform operation

# Testcase cp_imm_mul
li x10, 0xf82c0d73 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -164 # offset stack pointer from signature
c.swsp x10, 164(sp)# perform operation

# Testcase cp_imm_mul
li x13, 0xfbabe034 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -168 # offset stack pointer from signature
c.swsp x13, 168(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0x6db0468d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -172 # offset stack pointer from signature
c.swsp x24, 172(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0x072d8049 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -176 # offset stack pointer from signature
c.swsp x12, 176(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0x3651362a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -180 # offset stack pointer from signature
c.swsp x14, 180(sp)# perform operation

# Testcase cp_imm_mul
li x9, 0xc279049e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -184 # offset stack pointer from signature
c.swsp x9, 184(sp)# perform operation

# Testcase cp_imm_mul
li x7, 0xfee90c55 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -188 # offset stack pointer from signature
c.swsp x7, 188(sp)# perform operation

# Testcase cp_imm_mul
li x25, 0x556af14f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -192 # offset stack pointer from signature
c.swsp x25, 192(sp)# perform operation

# Testcase cp_imm_mul
li x26, 0x8da24d2a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -196 # offset stack pointer from signature
c.swsp x26, 196(sp)# perform operation

# Testcase cp_imm_mul
li x30, 0xb3c7f35c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -200 # offset stack pointer from signature
c.swsp x30, 200(sp)# perform operation

# Testcase cp_imm_mul
li x16, 0x2703860b # initialize rs2
la sp, scratch # base address 
addi sp, sp, -204 # offset stack pointer from signature
c.swsp x16, 204(sp)# perform operation

# Testcase cp_imm_mul
li x18, 0xc678349d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -208 # offset stack pointer from signature
c.swsp x18, 208(sp)# perform operation

# Testcase cp_imm_mul
li x7, 0xf62fa65f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -212 # offset stack pointer from signature
c.swsp x7, 212(sp)# perform operation

# Testcase cp_imm_mul
li x18, 0xc8b1d112 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -216 # offset stack pointer from signature
c.swsp x18, 216(sp)# perform operation

# Testcase cp_imm_mul
li x25, 0xe6db574f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -220 # offset stack pointer from signature
c.swsp x25, 220(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0x3d9dea1a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -224 # offset stack pointer from signature
c.swsp x27, 224(sp)# perform operation

# Testcase cp_imm_mul
li x23, 0x1e6d54cb # initialize rs2
la sp, scratch # base address 
addi sp, sp, -228 # offset stack pointer from signature
c.swsp x23, 228(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0x78bef626 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -232 # offset stack pointer from signature
c.swsp x24, 232(sp)# perform operation

# Testcase cp_imm_mul
li x21, 0xb7dbd6bd # initialize rs2
la sp, scratch # base address 
addi sp, sp, -236 # offset stack pointer from signature
c.swsp x21, 236(sp)# perform operation

# Testcase cp_imm_mul
li x5, 0x745c56ea # initialize rs2
la sp, scratch # base address 
addi sp, sp, -240 # offset stack pointer from signature
c.swsp x5, 240(sp)# perform operation

# Testcase cp_imm_mul
li x17, 0x00eddfe5 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -244 # offset stack pointer from signature
c.swsp x17, 244(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0xf0b732a0 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -248 # offset stack pointer from signature
c.swsp x29, 248(sp)# perform operation

# Testcase cp_imm_mul
li x17, 0x1f3a5916 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # offset stack pointer from signature
c.swsp x17, 252(sp)# perform operation

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
