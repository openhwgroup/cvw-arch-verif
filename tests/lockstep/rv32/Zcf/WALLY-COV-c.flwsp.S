///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zcf/WALLY-COV-c.flwsp.S
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
li x28, 0xb2d901c7 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
sw x2, 0(sp)   # store value to put something in memory
c.flwsp f28, 0(sp) # perform operation

# Testcase cp_imm_mul
li x26, 0xd727d7e4 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -4 # sub immediate from rs1 to counter offset
sw x6, 4(sp)   # store value to put something in memory
c.flwsp f26, 4(sp) # perform operation

# Testcase cp_imm_mul
li x25, 0x289d0685 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -8 # sub immediate from rs1 to counter offset
sw x29, 8(sp)   # store value to put something in memory
c.flwsp f25, 8(sp) # perform operation

# Testcase cp_imm_mul
li x26, 0x1c58a66b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -12 # sub immediate from rs1 to counter offset
sw x27, 12(sp)   # store value to put something in memory
c.flwsp f26, 12(sp) # perform operation

# Testcase cp_imm_mul
li x14, 0x401f5de0 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -16 # sub immediate from rs1 to counter offset
sw x22, 16(sp)   # store value to put something in memory
c.flwsp f14, 16(sp) # perform operation

# Testcase cp_imm_mul
li x8, 0x8fd94a6b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -20 # sub immediate from rs1 to counter offset
sw x18, 20(sp)   # store value to put something in memory
c.flwsp f8, 20(sp) # perform operation

# Testcase cp_imm_mul
li x11, 0x8fe1a191 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -24 # sub immediate from rs1 to counter offset
sw x1, 24(sp)   # store value to put something in memory
c.flwsp f11, 24(sp) # perform operation

# Testcase cp_imm_mul
li x6, 0xd30e3f93 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -28 # sub immediate from rs1 to counter offset
sw x18, 28(sp)   # store value to put something in memory
c.flwsp f6, 28(sp) # perform operation

# Testcase cp_imm_mul
li x29, 0x60dee185 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -32 # sub immediate from rs1 to counter offset
sw x2, 32(sp)   # store value to put something in memory
c.flwsp f29, 32(sp) # perform operation

# Testcase cp_imm_mul
li x8, 0xb26526af # initialize rs1
la sp, scratch # base address 
addi sp, sp, -36 # sub immediate from rs1 to counter offset
sw x21, 36(sp)   # store value to put something in memory
c.flwsp f8, 36(sp) # perform operation

# Testcase cp_imm_mul
li x11, 0xcc181849 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -40 # sub immediate from rs1 to counter offset
sw x25, 40(sp)   # store value to put something in memory
c.flwsp f11, 40(sp) # perform operation

# Testcase cp_imm_mul
li x21, 0x806858ed # initialize rs1
la sp, scratch # base address 
addi sp, sp, -44 # sub immediate from rs1 to counter offset
sw x16, 44(sp)   # store value to put something in memory
c.flwsp f21, 44(sp) # perform operation

# Testcase cp_imm_mul
li x21, 0x1355d45f # initialize rs1
la sp, scratch # base address 
addi sp, sp, -48 # sub immediate from rs1 to counter offset
sw x23, 48(sp)   # store value to put something in memory
c.flwsp f21, 48(sp) # perform operation

# Testcase cp_imm_mul
li x28, 0xec8565bc # initialize rs1
la sp, scratch # base address 
addi sp, sp, -52 # sub immediate from rs1 to counter offset
sw x3, 52(sp)   # store value to put something in memory
c.flwsp f28, 52(sp) # perform operation

# Testcase cp_imm_mul
li x22, 0xd29dd061 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -56 # sub immediate from rs1 to counter offset
sw x15, 56(sp)   # store value to put something in memory
c.flwsp f22, 56(sp) # perform operation

# Testcase cp_imm_mul
li x1, 0x90f6d822 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -60 # sub immediate from rs1 to counter offset
sw x19, 60(sp)   # store value to put something in memory
c.flwsp f1, 60(sp) # perform operation

# Testcase cp_imm_mul
li x6, 0x9deb59ca # initialize rs1
la sp, scratch # base address 
addi sp, sp, -64 # sub immediate from rs1 to counter offset
sw x9, 64(sp)   # store value to put something in memory
c.flwsp f6, 64(sp) # perform operation

# Testcase cp_imm_mul
li x1, 0xa22fc7ae # initialize rs1
la sp, scratch # base address 
addi sp, sp, -68 # sub immediate from rs1 to counter offset
sw x16, 68(sp)   # store value to put something in memory
c.flwsp f1, 68(sp) # perform operation

# Testcase cp_imm_mul
li x3, 0x335c64c7 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -72 # sub immediate from rs1 to counter offset
sw x22, 72(sp)   # store value to put something in memory
c.flwsp f3, 72(sp) # perform operation

# Testcase cp_imm_mul
li x12, 0xfab1620a # initialize rs1
la sp, scratch # base address 
addi sp, sp, -76 # sub immediate from rs1 to counter offset
sw x20, 76(sp)   # store value to put something in memory
c.flwsp f12, 76(sp) # perform operation

# Testcase cp_imm_mul
li x27, 0xb47f7f7c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -80 # sub immediate from rs1 to counter offset
sw x12, 80(sp)   # store value to put something in memory
c.flwsp f27, 80(sp) # perform operation

# Testcase cp_imm_mul
li x24, 0x7d59a65d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -84 # sub immediate from rs1 to counter offset
sw x11, 84(sp)   # store value to put something in memory
c.flwsp f24, 84(sp) # perform operation

# Testcase cp_imm_mul
li x12, 0x1f0adc87 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -88 # sub immediate from rs1 to counter offset
sw x17, 88(sp)   # store value to put something in memory
c.flwsp f12, 88(sp) # perform operation

# Testcase cp_imm_mul
li x7, 0xf49e4506 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -92 # sub immediate from rs1 to counter offset
sw x21, 92(sp)   # store value to put something in memory
c.flwsp f7, 92(sp) # perform operation

# Testcase cp_imm_mul
li x17, 0xa79236ff # initialize rs1
la sp, scratch # base address 
addi sp, sp, -96 # sub immediate from rs1 to counter offset
sw x15, 96(sp)   # store value to put something in memory
c.flwsp f17, 96(sp) # perform operation

# Testcase cp_imm_mul
li x17, 0x80d9621e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -100 # sub immediate from rs1 to counter offset
sw x10, 100(sp)   # store value to put something in memory
c.flwsp f17, 100(sp) # perform operation

# Testcase cp_imm_mul
li x26, 0xfd4dd519 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -104 # sub immediate from rs1 to counter offset
sw x25, 104(sp)   # store value to put something in memory
c.flwsp f26, 104(sp) # perform operation

# Testcase cp_imm_mul
li x23, 0x01fe74ce # initialize rs1
la sp, scratch # base address 
addi sp, sp, -108 # sub immediate from rs1 to counter offset
sw x29, 108(sp)   # store value to put something in memory
c.flwsp f23, 108(sp) # perform operation

# Testcase cp_imm_mul
li x29, 0xc5e95b86 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -112 # sub immediate from rs1 to counter offset
sw x6, 112(sp)   # store value to put something in memory
c.flwsp f29, 112(sp) # perform operation

# Testcase cp_imm_mul
li x8, 0x704b004f # initialize rs1
la sp, scratch # base address 
addi sp, sp, -116 # sub immediate from rs1 to counter offset
sw x10, 116(sp)   # store value to put something in memory
c.flwsp f8, 116(sp) # perform operation

# Testcase cp_imm_mul
li x30, 0x1761920f # initialize rs1
la sp, scratch # base address 
addi sp, sp, -120 # sub immediate from rs1 to counter offset
sw x29, 120(sp)   # store value to put something in memory
c.flwsp f30, 120(sp) # perform operation

# Testcase cp_imm_mul
li x12, 0x1802c181 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -124 # sub immediate from rs1 to counter offset
sw x29, 124(sp)   # store value to put something in memory
c.flwsp f12, 124(sp) # perform operation

# Testcase cp_imm_mul
li x5, 0x299d3a95 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -128 # sub immediate from rs1 to counter offset
sw x7, 128(sp)   # store value to put something in memory
c.flwsp f5, 128(sp) # perform operation

# Testcase cp_imm_mul
li x31, 0x69472e71 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -132 # sub immediate from rs1 to counter offset
sw x3, 132(sp)   # store value to put something in memory
c.flwsp f31, 132(sp) # perform operation

# Testcase cp_imm_mul
li x7, 0xe2c4245d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -136 # sub immediate from rs1 to counter offset
sw x18, 136(sp)   # store value to put something in memory
c.flwsp f7, 136(sp) # perform operation

# Testcase cp_imm_mul
li x9, 0x0e53443b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -140 # sub immediate from rs1 to counter offset
sw x21, 140(sp)   # store value to put something in memory
c.flwsp f9, 140(sp) # perform operation

# Testcase cp_imm_mul
li x21, 0x733c02d0 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -144 # sub immediate from rs1 to counter offset
sw x7, 144(sp)   # store value to put something in memory
c.flwsp f21, 144(sp) # perform operation

# Testcase cp_imm_mul
li x6, 0x8f30b85b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -148 # sub immediate from rs1 to counter offset
sw x21, 148(sp)   # store value to put something in memory
c.flwsp f6, 148(sp) # perform operation

# Testcase cp_imm_mul
li x16, 0xcee0513e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -152 # sub immediate from rs1 to counter offset
sw x5, 152(sp)   # store value to put something in memory
c.flwsp f16, 152(sp) # perform operation

# Testcase cp_imm_mul
li x3, 0x2136384d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -156 # sub immediate from rs1 to counter offset
sw x22, 156(sp)   # store value to put something in memory
c.flwsp f3, 156(sp) # perform operation

# Testcase cp_imm_mul
li x28, 0xd88dabe4 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -160 # sub immediate from rs1 to counter offset
sw x20, 160(sp)   # store value to put something in memory
c.flwsp f28, 160(sp) # perform operation

# Testcase cp_imm_mul
li x11, 0x5546b270 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -164 # sub immediate from rs1 to counter offset
sw x19, 164(sp)   # store value to put something in memory
c.flwsp f11, 164(sp) # perform operation

# Testcase cp_imm_mul
li x15, 0x862d6d73 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -168 # sub immediate from rs1 to counter offset
sw x12, 168(sp)   # store value to put something in memory
c.flwsp f15, 168(sp) # perform operation

# Testcase cp_imm_mul
li x22, 0xfa4d42ef # initialize rs1
la sp, scratch # base address 
addi sp, sp, -172 # sub immediate from rs1 to counter offset
sw x9, 172(sp)   # store value to put something in memory
c.flwsp f22, 172(sp) # perform operation

# Testcase cp_imm_mul
li x9, 0xf0831eca # initialize rs1
la sp, scratch # base address 
addi sp, sp, -176 # sub immediate from rs1 to counter offset
sw x14, 176(sp)   # store value to put something in memory
c.flwsp f9, 176(sp) # perform operation

# Testcase cp_imm_mul
li x11, 0x2e8a6787 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -180 # sub immediate from rs1 to counter offset
sw x15, 180(sp)   # store value to put something in memory
c.flwsp f11, 180(sp) # perform operation

# Testcase cp_imm_mul
li x28, 0x2b2f7380 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -184 # sub immediate from rs1 to counter offset
sw x7, 184(sp)   # store value to put something in memory
c.flwsp f28, 184(sp) # perform operation

# Testcase cp_imm_mul
li x18, 0x60b9393d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -188 # sub immediate from rs1 to counter offset
sw x25, 188(sp)   # store value to put something in memory
c.flwsp f18, 188(sp) # perform operation

# Testcase cp_imm_mul
li x1, 0xb86bc392 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -192 # sub immediate from rs1 to counter offset
sw x23, 192(sp)   # store value to put something in memory
c.flwsp f1, 192(sp) # perform operation

# Testcase cp_imm_mul
li x7, 0xdfb17a98 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -196 # sub immediate from rs1 to counter offset
sw x20, 196(sp)   # store value to put something in memory
c.flwsp f7, 196(sp) # perform operation

# Testcase cp_imm_mul
li x24, 0x28499b66 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -200 # sub immediate from rs1 to counter offset
sw x30, 200(sp)   # store value to put something in memory
c.flwsp f24, 200(sp) # perform operation

# Testcase cp_imm_mul
li x17, 0x48404bc7 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -204 # sub immediate from rs1 to counter offset
sw x8, 204(sp)   # store value to put something in memory
c.flwsp f17, 204(sp) # perform operation

# Testcase cp_imm_mul
li x6, 0x143ce1a6 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -208 # sub immediate from rs1 to counter offset
sw x14, 208(sp)   # store value to put something in memory
c.flwsp f6, 208(sp) # perform operation

# Testcase cp_imm_mul
li x26, 0xfc5d43b0 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -212 # sub immediate from rs1 to counter offset
sw x9, 212(sp)   # store value to put something in memory
c.flwsp f26, 212(sp) # perform operation

# Testcase cp_imm_mul
li x1, 0xa67068bb # initialize rs1
la sp, scratch # base address 
addi sp, sp, -216 # sub immediate from rs1 to counter offset
sw x9, 216(sp)   # store value to put something in memory
c.flwsp f1, 216(sp) # perform operation

# Testcase cp_imm_mul
li x13, 0x0dbd365a # initialize rs1
la sp, scratch # base address 
addi sp, sp, -220 # sub immediate from rs1 to counter offset
sw x12, 220(sp)   # store value to put something in memory
c.flwsp f13, 220(sp) # perform operation

# Testcase cp_imm_mul
li x14, 0xd862ea29 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -224 # sub immediate from rs1 to counter offset
sw x12, 224(sp)   # store value to put something in memory
c.flwsp f14, 224(sp) # perform operation

# Testcase cp_imm_mul
li x3, 0x187e973f # initialize rs1
la sp, scratch # base address 
addi sp, sp, -228 # sub immediate from rs1 to counter offset
sw x23, 228(sp)   # store value to put something in memory
c.flwsp f3, 228(sp) # perform operation

# Testcase cp_imm_mul
li x10, 0xa7a25411 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -232 # sub immediate from rs1 to counter offset
sw x12, 232(sp)   # store value to put something in memory
c.flwsp f10, 232(sp) # perform operation

# Testcase cp_imm_mul
li x22, 0x6be9572d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -236 # sub immediate from rs1 to counter offset
sw x11, 236(sp)   # store value to put something in memory
c.flwsp f22, 236(sp) # perform operation

# Testcase cp_imm_mul
li x11, 0x763736af # initialize rs1
la sp, scratch # base address 
addi sp, sp, -240 # sub immediate from rs1 to counter offset
sw x27, 240(sp)   # store value to put something in memory
c.flwsp f11, 240(sp) # perform operation

# Testcase cp_imm_mul
li x5, 0xd7b15a7c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -244 # sub immediate from rs1 to counter offset
sw x21, 244(sp)   # store value to put something in memory
c.flwsp f5, 244(sp) # perform operation

# Testcase cp_imm_mul
li x21, 0xa01144c4 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -248 # sub immediate from rs1 to counter offset
sw x18, 248(sp)   # store value to put something in memory
c.flwsp f21, 248(sp) # perform operation

# Testcase cp_imm_mul
li x23, 0x6ef4258c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
sw x11, 252(sp)   # store value to put something in memory
c.flwsp f23, 252(sp) # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0xe8138fad # initialize rs1
la sp, scratch # base address 
addi sp, sp, -72 # sub immediate from rs1 to counter offset
sw x9, 72(sp)   # store value to put something in memory
c.flwsp f0, 72(sp) # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0xe3b47019 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -240 # sub immediate from rs1 to counter offset
sw x18, 240(sp)   # store value to put something in memory
c.flwsp f1, 240(sp) # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x1a0e986e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -12 # sub immediate from rs1 to counter offset
sw x29, 12(sp)   # store value to put something in memory
c.flwsp f2, 12(sp) # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x7c240c1b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -232 # sub immediate from rs1 to counter offset
sw x6, 232(sp)   # store value to put something in memory
c.flwsp f3, 232(sp) # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x98ff9271 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
sw x8, 252(sp)   # store value to put something in memory
c.flwsp f4, 252(sp) # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x34ad5b4c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -128 # sub immediate from rs1 to counter offset
sw x21, 128(sp)   # store value to put something in memory
c.flwsp f5, 128(sp) # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xc0cd73c6 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -184 # sub immediate from rs1 to counter offset
sw x9, 184(sp)   # store value to put something in memory
c.flwsp f6, 184(sp) # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xe17cda43 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -164 # sub immediate from rs1 to counter offset
sw x5, 164(sp)   # store value to put something in memory
c.flwsp f7, 164(sp) # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x364c0cb4 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -96 # sub immediate from rs1 to counter offset
sw x29, 96(sp)   # store value to put something in memory
c.flwsp f8, 96(sp) # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x8bc79936 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -116 # sub immediate from rs1 to counter offset
sw x17, 116(sp)   # store value to put something in memory
c.flwsp f9, 116(sp) # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x98a04f40 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -188 # sub immediate from rs1 to counter offset
sw x26, 188(sp)   # store value to put something in memory
c.flwsp f10, 188(sp) # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x846e6438 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -44 # sub immediate from rs1 to counter offset
sw x25, 44(sp)   # store value to put something in memory
c.flwsp f11, 44(sp) # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0xad576f6c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -80 # sub immediate from rs1 to counter offset
sw x22, 80(sp)   # store value to put something in memory
c.flwsp f12, 80(sp) # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x1a5580c2 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -240 # sub immediate from rs1 to counter offset
sw x12, 240(sp)   # store value to put something in memory
c.flwsp f13, 240(sp) # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0xcf75bf9f # initialize rs1
la sp, scratch # base address 
addi sp, sp, -168 # sub immediate from rs1 to counter offset
sw x12, 168(sp)   # store value to put something in memory
c.flwsp f14, 168(sp) # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0xa6d344af # initialize rs1
la sp, scratch # base address 
addi sp, sp, -92 # sub immediate from rs1 to counter offset
sw x19, 92(sp)   # store value to put something in memory
c.flwsp f15, 92(sp) # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x7868d7b4 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -180 # sub immediate from rs1 to counter offset
sw x20, 180(sp)   # store value to put something in memory
c.flwsp f16, 180(sp) # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x60857a53 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
sw x10, 0(sp)   # store value to put something in memory
c.flwsp f17, 0(sp) # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0xccd869ac # initialize rs1
la sp, scratch # base address 
addi sp, sp, -68 # sub immediate from rs1 to counter offset
sw x13, 68(sp)   # store value to put something in memory
c.flwsp f18, 68(sp) # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x1dfe2890 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -36 # sub immediate from rs1 to counter offset
sw x8, 36(sp)   # store value to put something in memory
c.flwsp f19, 36(sp) # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0xcf36f064 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -228 # sub immediate from rs1 to counter offset
sw x5, 228(sp)   # store value to put something in memory
c.flwsp f20, 228(sp) # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x94268e48 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -160 # sub immediate from rs1 to counter offset
sw x1, 160(sp)   # store value to put something in memory
c.flwsp f21, 160(sp) # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0xb43c51a8 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -44 # sub immediate from rs1 to counter offset
sw x18, 44(sp)   # store value to put something in memory
c.flwsp f22, 44(sp) # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x6858d588 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -180 # sub immediate from rs1 to counter offset
sw x11, 180(sp)   # store value to put something in memory
c.flwsp f23, 180(sp) # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x4f70a01a # initialize rs1
la sp, scratch # base address 
addi sp, sp, -36 # sub immediate from rs1 to counter offset
sw x17, 36(sp)   # store value to put something in memory
c.flwsp f24, 36(sp) # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x5b5d26c8 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -124 # sub immediate from rs1 to counter offset
sw x7, 124(sp)   # store value to put something in memory
c.flwsp f25, 124(sp) # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xee74aefb # initialize rs1
la sp, scratch # base address 
addi sp, sp, -116 # sub immediate from rs1 to counter offset
sw x23, 116(sp)   # store value to put something in memory
c.flwsp f26, 116(sp) # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x2b625f53 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -144 # sub immediate from rs1 to counter offset
sw x27, 144(sp)   # store value to put something in memory
c.flwsp f27, 144(sp) # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0xffe0906e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -8 # sub immediate from rs1 to counter offset
sw x28, 8(sp)   # store value to put something in memory
c.flwsp f28, 8(sp) # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x7c588b3e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -88 # sub immediate from rs1 to counter offset
sw x21, 88(sp)   # store value to put something in memory
c.flwsp f29, 88(sp) # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x9412add1 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
sw x29, 252(sp)   # store value to put something in memory
c.flwsp f30, 252(sp) # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x2c7e1657 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -160 # sub immediate from rs1 to counter offset
sw x12, 160(sp)   # store value to put something in memory
c.flwsp f31, 160(sp) # perform operation

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
