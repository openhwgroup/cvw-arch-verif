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

    

// ******************
// Tests from: WALLY-COV-c.flwsp.S
// ******************


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

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-c.flw.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase cp_rs1 (Test source rs1 = x8)
la x8, scratch # base address 
addi x8, x8, -116 # sub immediate from rs1 to counter offset
li x9, 0x3015b387 # load immediate value into integer register
sw x9, 116(x8) # store value to memory
c.flw f15, 116(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 0)

# Testcase cp_rs1 (Test source rs1 = x9)
la x9, scratch # base address 
addi x9, x9, -36 # sub immediate from rs1 to counter offset
li x13, 0x9609322d # load immediate value into integer register
sw x13, 36(x9) # store value to memory
c.flw f14, 36(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 4)

# Testcase cp_rs1 (Test source rs1 = x10)
la x10, scratch # base address 
addi x10, x10, -4 # sub immediate from rs1 to counter offset
li x9, 0xbbafeb3b # load immediate value into integer register
sw x9, 4(x10) # store value to memory
c.flw f13, 4(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 8)

# Testcase cp_rs1 (Test source rs1 = x11)
la x11, scratch # base address 
addi x11, x11, -8 # sub immediate from rs1 to counter offset
li x13, 0xed3fa3f1 # load immediate value into integer register
sw x13, 8(x11) # store value to memory
c.flw f12, 8(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 12)

# Testcase cp_rs1 (Test source rs1 = x12)
la x12, scratch # base address 
addi x12, x12, -80 # sub immediate from rs1 to counter offset
li x8, 0x6870faf4 # load immediate value into integer register
sw x8, 80(x12) # store value to memory
c.flw f13, 80(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 16)

# Testcase cp_rs1 (Test source rs1 = x13)
la x13, scratch # base address 
addi x13, x13, -104 # sub immediate from rs1 to counter offset
li x11, 0x73d9f256 # load immediate value into integer register
sw x11, 104(x13) # store value to memory
c.flw f9, 104(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 20)

# Testcase cp_rs1 (Test source rs1 = x14)
la x14, scratch # base address 
addi x14, x14, -44 # sub immediate from rs1 to counter offset
li x8, 0xed76d449 # load immediate value into integer register
sw x8, 44(x14) # store value to memory
c.flw f10, 44(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 24)

# Testcase cp_rs1 (Test source rs1 = x15)
la x15, scratch # base address 
addi x15, x15, -20 # sub immediate from rs1 to counter offset
li x9, 0xb59d1482 # load immediate value into integer register
sw x9, 20(x15) # store value to memory
c.flw f12, 20(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 28)

# Testcase cp_fd (Test destination fd = x8)
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
li x11, 0xa7578d3b # load immediate value into integer register
sw x11, 0(x10) # store value to memory
c.flw f8, 0(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 32)

# Testcase cp_fd (Test destination fd = x9)
la x10, scratch # base address 
addi x10, x10, -24 # sub immediate from rs1 to counter offset
li x11, 0x3453d2e9 # load immediate value into integer register
sw x11, 24(x10) # store value to memory
c.flw f9, 24(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 36)

# Testcase cp_fd (Test destination fd = x10)
la x10, scratch # base address 
addi x10, x10, -4 # sub immediate from rs1 to counter offset
li x8, 0x904dbfe3 # load immediate value into integer register
sw x8, 4(x10) # store value to memory
c.flw f10, 4(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 40)

# Testcase cp_fd (Test destination fd = x11)
la x11, scratch # base address 
addi x11, x11, -32 # sub immediate from rs1 to counter offset
li x12, 0x8f2d9d83 # load immediate value into integer register
sw x12, 32(x11) # store value to memory
c.flw f11, 32(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 44)

# Testcase cp_fd (Test destination fd = x12)
la x8, scratch # base address 
addi x8, x8, -108 # sub immediate from rs1 to counter offset
li x11, 0x87ff6fd2 # load immediate value into integer register
sw x11, 108(x8) # store value to memory
c.flw f12, 108(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 48)

# Testcase cp_fd (Test destination fd = x13)
la x12, scratch # base address 
addi x12, x12, -32 # sub immediate from rs1 to counter offset
li x8, 0x749269c4 # load immediate value into integer register
sw x8, 32(x12) # store value to memory
c.flw f13, 32(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 52)

# Testcase cp_fd (Test destination fd = x14)
la x9, scratch # base address 
addi x9, x9, -88 # sub immediate from rs1 to counter offset
li x8, 0x727af2e9 # load immediate value into integer register
sw x8, 88(x9) # store value to memory
c.flw f14, 88(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 56)

# Testcase cp_fd (Test destination fd = x15)
la x15, scratch # base address 
addi x15, x15, -60 # sub immediate from rs1 to counter offset
li x14, 0xb0dc2959 # load immediate value into integer register
sw x14, 60(x15) # store value to memory
c.flw f15, 60(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 60)

# Testcase cp_imm_mul
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
li x10, 0x920cb7c7 # load immediate value into integer register
sw x10, 0(x14) # store value to memory
c.flw f12, 0(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 64)

# Testcase cp_imm_mul
la x9, scratch # base address 
addi x9, x9, -4 # sub immediate from rs1 to counter offset
li x13, 0xf6f4fec9 # load immediate value into integer register
sw x13, 4(x9) # store value to memory
c.flw f14, 4(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 68)

# Testcase cp_imm_mul
la x14, scratch # base address 
addi x14, x14, -8 # sub immediate from rs1 to counter offset
li x11, 0xa2852348 # load immediate value into integer register
sw x11, 8(x14) # store value to memory
c.flw f12, 8(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 72)

# Testcase cp_imm_mul
la x14, scratch # base address 
addi x14, x14, -12 # sub immediate from rs1 to counter offset
li x11, 0x9e6bb68c # load immediate value into integer register
sw x11, 12(x14) # store value to memory
c.flw f10, 12(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 76)

# Testcase cp_imm_mul
la x8, scratch # base address 
addi x8, x8, -16 # sub immediate from rs1 to counter offset
li x10, 0x55ced855 # load immediate value into integer register
sw x10, 16(x8) # store value to memory
c.flw f9, 16(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 80)

# Testcase cp_imm_mul
la x10, scratch # base address 
addi x10, x10, -20 # sub immediate from rs1 to counter offset
li x9, 0x53a7a5be # load immediate value into integer register
sw x9, 20(x10) # store value to memory
c.flw f12, 20(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 84)

# Testcase cp_imm_mul
la x11, scratch # base address 
addi x11, x11, -24 # sub immediate from rs1 to counter offset
li x14, 0x41eaf05c # load immediate value into integer register
sw x14, 24(x11) # store value to memory
c.flw f12, 24(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 88)

# Testcase cp_imm_mul
la x10, scratch # base address 
addi x10, x10, -28 # sub immediate from rs1 to counter offset
li x14, 0x13233e43 # load immediate value into integer register
sw x14, 28(x10) # store value to memory
c.flw f9, 28(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 92)

# Testcase cp_imm_mul
la x8, scratch # base address 
addi x8, x8, -32 # sub immediate from rs1 to counter offset
li x10, 0x1681317c # load immediate value into integer register
sw x10, 32(x8) # store value to memory
c.flw f14, 32(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cp_imm_mul
la x12, scratch # base address 
addi x12, x12, -36 # sub immediate from rs1 to counter offset
li x11, 0x2816e7d4 # load immediate value into integer register
sw x11, 36(x12) # store value to memory
c.flw f14, 36(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 100)

# Testcase cp_imm_mul
la x15, scratch # base address 
addi x15, x15, -40 # sub immediate from rs1 to counter offset
li x12, 0xbf5e648f # load immediate value into integer register
sw x12, 40(x15) # store value to memory
c.flw f9, 40(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 104)

# Testcase cp_imm_mul
la x11, scratch # base address 
addi x11, x11, -44 # sub immediate from rs1 to counter offset
li x10, 0xfdc61ddd # load immediate value into integer register
sw x10, 44(x11) # store value to memory
c.flw f8, 44(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 108)

# Testcase cp_imm_mul
la x14, scratch # base address 
addi x14, x14, -48 # sub immediate from rs1 to counter offset
li x8, 0x01cf355a # load immediate value into integer register
sw x8, 48(x14) # store value to memory
c.flw f15, 48(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 112)

# Testcase cp_imm_mul
la x10, scratch # base address 
addi x10, x10, -52 # sub immediate from rs1 to counter offset
li x15, 0x934f8751 # load immediate value into integer register
sw x15, 52(x10) # store value to memory
c.flw f12, 52(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 116)

# Testcase cp_imm_mul
la x10, scratch # base address 
addi x10, x10, -56 # sub immediate from rs1 to counter offset
li x12, 0xf148cf7d # load immediate value into integer register
sw x12, 56(x10) # store value to memory
c.flw f11, 56(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 120)

# Testcase cp_imm_mul
la x10, scratch # base address 
addi x10, x10, -60 # sub immediate from rs1 to counter offset
li x15, 0x8febc359 # load immediate value into integer register
sw x15, 60(x10) # store value to memory
c.flw f11, 60(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 124)

# Testcase cp_imm_mul
la x9, scratch # base address 
addi x9, x9, -64 # sub immediate from rs1 to counter offset
li x15, 0x9d5e376e # load immediate value into integer register
sw x15, 64(x9) # store value to memory
c.flw f8, 64(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cp_imm_mul
la x13, scratch # base address 
addi x13, x13, -68 # sub immediate from rs1 to counter offset
li x11, 0x145dd9b7 # load immediate value into integer register
sw x11, 68(x13) # store value to memory
c.flw f8, 68(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 132)

# Testcase cp_imm_mul
la x15, scratch # base address 
addi x15, x15, -72 # sub immediate from rs1 to counter offset
li x8, 0x436de27f # load immediate value into integer register
sw x8, 72(x15) # store value to memory
c.flw f13, 72(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 136)

# Testcase cp_imm_mul
la x15, scratch # base address 
addi x15, x15, -76 # sub immediate from rs1 to counter offset
li x14, 0xeced10a7 # load immediate value into integer register
sw x14, 76(x15) # store value to memory
c.flw f9, 76(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 140)

# Testcase cp_imm_mul
la x9, scratch # base address 
addi x9, x9, -80 # sub immediate from rs1 to counter offset
li x11, 0xc2835fb0 # load immediate value into integer register
sw x11, 80(x9) # store value to memory
c.flw f8, 80(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 144)

# Testcase cp_imm_mul
la x8, scratch # base address 
addi x8, x8, -84 # sub immediate from rs1 to counter offset
li x9, 0x1dd7ad4c # load immediate value into integer register
sw x9, 84(x8) # store value to memory
c.flw f11, 84(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 148)

# Testcase cp_imm_mul
la x8, scratch # base address 
addi x8, x8, -88 # sub immediate from rs1 to counter offset
li x14, 0x5bba7969 # load immediate value into integer register
sw x14, 88(x8) # store value to memory
c.flw f15, 88(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 152)

# Testcase cp_imm_mul
la x11, scratch # base address 
addi x11, x11, -92 # sub immediate from rs1 to counter offset
li x9, 0xf712dd3d # load immediate value into integer register
sw x9, 92(x11) # store value to memory
c.flw f10, 92(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 156)

# Testcase cp_imm_mul
la x15, scratch # base address 
addi x15, x15, -96 # sub immediate from rs1 to counter offset
li x11, 0x93241798 # load immediate value into integer register
sw x11, 96(x15) # store value to memory
c.flw f9, 96(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 160)

# Testcase cp_imm_mul
la x12, scratch # base address 
addi x12, x12, -100 # sub immediate from rs1 to counter offset
li x13, 0x7f0b5cd7 # load immediate value into integer register
sw x13, 100(x12) # store value to memory
c.flw f10, 100(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 164)

# Testcase cp_imm_mul
la x11, scratch # base address 
addi x11, x11, -104 # sub immediate from rs1 to counter offset
li x14, 0xfbd74b28 # load immediate value into integer register
sw x14, 104(x11) # store value to memory
c.flw f15, 104(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 168)

# Testcase cp_imm_mul
la x8, scratch # base address 
addi x8, x8, -108 # sub immediate from rs1 to counter offset
li x11, 0x6240720a # load immediate value into integer register
sw x11, 108(x8) # store value to memory
c.flw f10, 108(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 172)

# Testcase cp_imm_mul
la x13, scratch # base address 
addi x13, x13, -112 # sub immediate from rs1 to counter offset
li x15, 0xc9debf6a # load immediate value into integer register
sw x15, 112(x13) # store value to memory
c.flw f12, 112(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_imm_mul
la x14, scratch # base address 
addi x14, x14, -116 # sub immediate from rs1 to counter offset
li x15, 0x1edcde61 # load immediate value into integer register
sw x15, 116(x14) # store value to memory
c.flw f11, 116(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 180)

# Testcase cp_imm_mul
la x8, scratch # base address 
addi x8, x8, -120 # sub immediate from rs1 to counter offset
li x14, 0x759e19d9 # load immediate value into integer register
sw x14, 120(x8) # store value to memory
c.flw f11, 120(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 184)

# Testcase cp_imm_mul
la x11, scratch # base address 
addi x11, x11, -124 # sub immediate from rs1 to counter offset
li x9, 0xff9a64bc # load immediate value into integer register
sw x9, 124(x11) # store value to memory
c.flw f10, 124(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 188)

#.EQU SIGSIZE,192


// ******************
// Tests from: WALLY-COV-c.fsw.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase cp_rs1 (Test source rs1 = x8)
la x8, scratch # base address
li x12, 0x40b4a2bd # initialize rs2 with random value
sw x12, 0(x8) # store 0x40b4a2bd in memory
flw f12, 0(x8) # load 0x40b4a2bd from memory into fs2
sw x0, 0(x8) # clearing the random value store at scratch
addi x8, x8, -28 # sub immediate from rs1 to counter offset
c.fsw f12, 28(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
la x9, scratch # base address
li x14, 0xb890694d # initialize rs2 with random value
sw x14, 0(x9) # store 0xb890694d in memory
flw f14, 0(x9) # load 0xb890694d from memory into fs2
sw x0, 0(x9) # clearing the random value store at scratch
addi x9, x9, -104 # sub immediate from rs1 to counter offset
c.fsw f14, 104(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
la x10, scratch # base address
li x9, 0x461a21e5 # initialize rs2 with random value
sw x9, 0(x10) # store 0x461a21e5 in memory
flw f9, 0(x10) # load 0x461a21e5 from memory into fs2
sw x0, 0(x10) # clearing the random value store at scratch
addi x10, x10, -44 # sub immediate from rs1 to counter offset
c.fsw f9, 44(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
la x11, scratch # base address
li x13, 0x213ef25d # initialize rs2 with random value
sw x13, 0(x11) # store 0x213ef25d in memory
flw f13, 0(x11) # load 0x213ef25d from memory into fs2
sw x0, 0(x11) # clearing the random value store at scratch
addi x11, x11, -112 # sub immediate from rs1 to counter offset
c.fsw f13, 112(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
la x12, scratch # base address
li x11, 0xbfa82161 # initialize rs2 with random value
sw x11, 0(x12) # store 0xbfa82161 in memory
flw f11, 0(x12) # load 0xbfa82161 from memory into fs2
sw x0, 0(x12) # clearing the random value store at scratch
addi x12, x12, -4 # sub immediate from rs1 to counter offset
c.fsw f11, 4(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
la x13, scratch # base address
li x15, 0x8234c42a # initialize rs2 with random value
sw x15, 0(x13) # store 0x8234c42a in memory
flw f15, 0(x13) # load 0x8234c42a from memory into fs2
sw x0, 0(x13) # clearing the random value store at scratch
addi x13, x13, -36 # sub immediate from rs1 to counter offset
c.fsw f15, 36(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
la x14, scratch # base address
li x13, 0x3f37f23d # initialize rs2 with random value
sw x13, 0(x14) # store 0x3f37f23d in memory
flw f13, 0(x14) # load 0x3f37f23d from memory into fs2
sw x0, 0(x14) # clearing the random value store at scratch
addi x14, x14, -92 # sub immediate from rs1 to counter offset
c.fsw f13, 92(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
la x15, scratch # base address
li x10, 0xd1156faf # initialize rs2 with random value
sw x10, 0(x15) # store 0xd1156faf in memory
flw f10, 0(x15) # load 0xd1156faf from memory into fs2
sw x0, 0(x15) # clearing the random value store at scratch
addi x15, x15, -4 # sub immediate from rs1 to counter offset
c.fsw f10, 4(x15) # perform operation 

# Testcase cp_fs2 (Test source fs2 = f8)
la x11, scratch # base address
li x8, 0x33904977 # initialize rs2 with random value
sw x8, 0(x11) # store 0x33904977 in memory
flw f8, 0(x11) # load 0x33904977 from memory into fs2
sw x0, 0(x11) # clearing the random value store at scratch
addi x11, x11, -80 # sub immediate from rs1 to counter offset
c.fsw f8, 80(x11) # perform operation 

# Testcase cp_fs2 (Test source fs2 = f9)
la x13, scratch # base address
li x9, 0x4749361b # initialize rs2 with random value
sw x9, 0(x13) # store 0x4749361b in memory
flw f9, 0(x13) # load 0x4749361b from memory into fs2
sw x0, 0(x13) # clearing the random value store at scratch
addi x13, x13, -48 # sub immediate from rs1 to counter offset
c.fsw f9, 48(x13) # perform operation 

# Testcase cp_fs2 (Test source fs2 = f10)
la x12, scratch # base address
li x10, 0x51865502 # initialize rs2 with random value
sw x10, 0(x12) # store 0x51865502 in memory
flw f10, 0(x12) # load 0x51865502 from memory into fs2
sw x0, 0(x12) # clearing the random value store at scratch
addi x12, x12, -40 # sub immediate from rs1 to counter offset
c.fsw f10, 40(x12) # perform operation 

# Testcase cp_fs2 (Test source fs2 = f11)
la x10, scratch # base address
li x11, 0xa2ac3ff1 # initialize rs2 with random value
sw x11, 0(x10) # store 0xa2ac3ff1 in memory
flw f11, 0(x10) # load 0xa2ac3ff1 from memory into fs2
sw x0, 0(x10) # clearing the random value store at scratch
addi x10, x10, -72 # sub immediate from rs1 to counter offset
c.fsw f11, 72(x10) # perform operation 

# Testcase cp_fs2 (Test source fs2 = f12)
la x13, scratch # base address
li x12, 0xf2497340 # initialize rs2 with random value
sw x12, 0(x13) # store 0xf2497340 in memory
flw f12, 0(x13) # load 0xf2497340 from memory into fs2
sw x0, 0(x13) # clearing the random value store at scratch
addi x13, x13, -44 # sub immediate from rs1 to counter offset
c.fsw f12, 44(x13) # perform operation 

# Testcase cp_fs2 (Test source fs2 = f13)
la x9, scratch # base address
li x13, 0xdec50076 # initialize rs2 with random value
sw x13, 0(x9) # store 0xdec50076 in memory
flw f13, 0(x9) # load 0xdec50076 from memory into fs2
sw x0, 0(x9) # clearing the random value store at scratch
addi x9, x9, -116 # sub immediate from rs1 to counter offset
c.fsw f13, 116(x9) # perform operation 

# Testcase cp_fs2 (Test source fs2 = f14)
la x9, scratch # base address
li x14, 0x00405fea # initialize rs2 with random value
sw x14, 0(x9) # store 0x405fea in memory
flw f14, 0(x9) # load 0x405fea from memory into fs2
sw x0, 0(x9) # clearing the random value store at scratch
addi x9, x9, -36 # sub immediate from rs1 to counter offset
c.fsw f14, 36(x9) # perform operation 

# Testcase cp_fs2 (Test source fs2 = f15)
la x9, scratch # base address
li x15, 0x86f84648 # initialize rs2 with random value
sw x15, 0(x9) # store 0x86f84648 in memory
flw f15, 0(x9) # load 0x86f84648 from memory into fs2
sw x0, 0(x9) # clearing the random value store at scratch
addi x9, x9, -16 # sub immediate from rs1 to counter offset
c.fsw f15, 16(x9) # perform operation 

# Testcase cp_imm_mul
la x12, scratch # base address
li x15, 0x8fa0d79b # initialize rs2 with random value
sw x15, 0(x12) # store 0x8fa0d79b in memory
flw f15, 0(x12) # load 0x8fa0d79b from memory into fs2
sw x0, 0(x12) # clearing the random value store at scratch
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.fsw f15, 0(x12) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x9, 0xaf383fae # initialize rs2 with random value
sw x9, 0(x15) # store 0xaf383fae in memory
flw f9, 0(x15) # load 0xaf383fae from memory into fs2
sw x0, 0(x15) # clearing the random value store at scratch
addi x15, x15, -4 # sub immediate from rs1 to counter offset
c.fsw f9, 4(x15) # perform operation 

# Testcase cp_imm_mul
la x14, scratch # base address
li x11, 0xa254c36d # initialize rs2 with random value
sw x11, 0(x14) # store 0xa254c36d in memory
flw f11, 0(x14) # load 0xa254c36d from memory into fs2
sw x0, 0(x14) # clearing the random value store at scratch
addi x14, x14, -8 # sub immediate from rs1 to counter offset
c.fsw f11, 8(x14) # perform operation 

# Testcase cp_imm_mul
la x13, scratch # base address
li x8, 0xa7cedb54 # initialize rs2 with random value
sw x8, 0(x13) # store 0xa7cedb54 in memory
flw f8, 0(x13) # load 0xa7cedb54 from memory into fs2
sw x0, 0(x13) # clearing the random value store at scratch
addi x13, x13, -12 # sub immediate from rs1 to counter offset
c.fsw f8, 12(x13) # perform operation 

# Testcase cp_imm_mul
la x12, scratch # base address
li x13, 0x28b60bd2 # initialize rs2 with random value
sw x13, 0(x12) # store 0x28b60bd2 in memory
flw f13, 0(x12) # load 0x28b60bd2 from memory into fs2
sw x0, 0(x12) # clearing the random value store at scratch
addi x12, x12, -16 # sub immediate from rs1 to counter offset
c.fsw f13, 16(x12) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x11, 0x03cbb6d4 # initialize rs2 with random value
sw x11, 0(x15) # store 0x3cbb6d4 in memory
flw f11, 0(x15) # load 0x3cbb6d4 from memory into fs2
sw x0, 0(x15) # clearing the random value store at scratch
addi x15, x15, -20 # sub immediate from rs1 to counter offset
c.fsw f11, 20(x15) # perform operation 

# Testcase cp_imm_mul
la x13, scratch # base address
li x9, 0xe6b6b774 # initialize rs2 with random value
sw x9, 0(x13) # store 0xe6b6b774 in memory
flw f9, 0(x13) # load 0xe6b6b774 from memory into fs2
sw x0, 0(x13) # clearing the random value store at scratch
addi x13, x13, -24 # sub immediate from rs1 to counter offset
c.fsw f9, 24(x13) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x10, 0x614da08d # initialize rs2 with random value
sw x10, 0(x8) # store 0x614da08d in memory
flw f10, 0(x8) # load 0x614da08d from memory into fs2
sw x0, 0(x8) # clearing the random value store at scratch
addi x8, x8, -28 # sub immediate from rs1 to counter offset
c.fsw f10, 28(x8) # perform operation 

# Testcase cp_imm_mul
la x13, scratch # base address
li x15, 0x033de596 # initialize rs2 with random value
sw x15, 0(x13) # store 0x33de596 in memory
flw f15, 0(x13) # load 0x33de596 from memory into fs2
sw x0, 0(x13) # clearing the random value store at scratch
addi x13, x13, -32 # sub immediate from rs1 to counter offset
c.fsw f15, 32(x13) # perform operation 

# Testcase cp_imm_mul
la x14, scratch # base address
li x15, 0x84370e99 # initialize rs2 with random value
sw x15, 0(x14) # store 0x84370e99 in memory
flw f15, 0(x14) # load 0x84370e99 from memory into fs2
sw x0, 0(x14) # clearing the random value store at scratch
addi x14, x14, -36 # sub immediate from rs1 to counter offset
c.fsw f15, 36(x14) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x12, 0xf65f1c95 # initialize rs2 with random value
sw x12, 0(x15) # store 0xf65f1c95 in memory
flw f12, 0(x15) # load 0xf65f1c95 from memory into fs2
sw x0, 0(x15) # clearing the random value store at scratch
addi x15, x15, -40 # sub immediate from rs1 to counter offset
c.fsw f12, 40(x15) # perform operation 

# Testcase cp_imm_mul
la x12, scratch # base address
li x14, 0xcab67870 # initialize rs2 with random value
sw x14, 0(x12) # store 0xcab67870 in memory
flw f14, 0(x12) # load 0xcab67870 from memory into fs2
sw x0, 0(x12) # clearing the random value store at scratch
addi x12, x12, -44 # sub immediate from rs1 to counter offset
c.fsw f14, 44(x12) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x12, 0xad3cb7a1 # initialize rs2 with random value
sw x12, 0(x15) # store 0xad3cb7a1 in memory
flw f12, 0(x15) # load 0xad3cb7a1 from memory into fs2
sw x0, 0(x15) # clearing the random value store at scratch
addi x15, x15, -48 # sub immediate from rs1 to counter offset
c.fsw f12, 48(x15) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x12, 0x3e8f17dc # initialize rs2 with random value
sw x12, 0(x15) # store 0x3e8f17dc in memory
flw f12, 0(x15) # load 0x3e8f17dc from memory into fs2
sw x0, 0(x15) # clearing the random value store at scratch
addi x15, x15, -52 # sub immediate from rs1 to counter offset
c.fsw f12, 52(x15) # perform operation 

# Testcase cp_imm_mul
la x12, scratch # base address
li x11, 0x55e567a1 # initialize rs2 with random value
sw x11, 0(x12) # store 0x55e567a1 in memory
flw f11, 0(x12) # load 0x55e567a1 from memory into fs2
sw x0, 0(x12) # clearing the random value store at scratch
addi x12, x12, -56 # sub immediate from rs1 to counter offset
c.fsw f11, 56(x12) # perform operation 

# Testcase cp_imm_mul
la x11, scratch # base address
li x9, 0xc6a8c3ae # initialize rs2 with random value
sw x9, 0(x11) # store 0xc6a8c3ae in memory
flw f9, 0(x11) # load 0xc6a8c3ae from memory into fs2
sw x0, 0(x11) # clearing the random value store at scratch
addi x11, x11, -60 # sub immediate from rs1 to counter offset
c.fsw f9, 60(x11) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x15, 0xb3c02a12 # initialize rs2 with random value
sw x15, 0(x8) # store 0xb3c02a12 in memory
flw f15, 0(x8) # load 0xb3c02a12 from memory into fs2
sw x0, 0(x8) # clearing the random value store at scratch
addi x8, x8, -64 # sub immediate from rs1 to counter offset
c.fsw f15, 64(x8) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x11, 0x3befb84f # initialize rs2 with random value
sw x11, 0(x9) # store 0x3befb84f in memory
flw f11, 0(x9) # load 0x3befb84f from memory into fs2
sw x0, 0(x9) # clearing the random value store at scratch
addi x9, x9, -68 # sub immediate from rs1 to counter offset
c.fsw f11, 68(x9) # perform operation 

# Testcase cp_imm_mul
la x11, scratch # base address
li x13, 0xe79781d1 # initialize rs2 with random value
sw x13, 0(x11) # store 0xe79781d1 in memory
flw f13, 0(x11) # load 0xe79781d1 from memory into fs2
sw x0, 0(x11) # clearing the random value store at scratch
addi x11, x11, -72 # sub immediate from rs1 to counter offset
c.fsw f13, 72(x11) # perform operation 

# Testcase cp_imm_mul
la x14, scratch # base address
li x13, 0x180b9e52 # initialize rs2 with random value
sw x13, 0(x14) # store 0x180b9e52 in memory
flw f13, 0(x14) # load 0x180b9e52 from memory into fs2
sw x0, 0(x14) # clearing the random value store at scratch
addi x14, x14, -76 # sub immediate from rs1 to counter offset
c.fsw f13, 76(x14) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x12, 0xd1d244cd # initialize rs2 with random value
sw x12, 0(x9) # store 0xd1d244cd in memory
flw f12, 0(x9) # load 0xd1d244cd from memory into fs2
sw x0, 0(x9) # clearing the random value store at scratch
addi x9, x9, -80 # sub immediate from rs1 to counter offset
c.fsw f12, 80(x9) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x13, 0xabd3ced6 # initialize rs2 with random value
sw x13, 0(x8) # store 0xabd3ced6 in memory
flw f13, 0(x8) # load 0xabd3ced6 from memory into fs2
sw x0, 0(x8) # clearing the random value store at scratch
addi x8, x8, -84 # sub immediate from rs1 to counter offset
c.fsw f13, 84(x8) # perform operation 

# Testcase cp_imm_mul
la x14, scratch # base address
li x10, 0xec368427 # initialize rs2 with random value
sw x10, 0(x14) # store 0xec368427 in memory
flw f10, 0(x14) # load 0xec368427 from memory into fs2
sw x0, 0(x14) # clearing the random value store at scratch
addi x14, x14, -88 # sub immediate from rs1 to counter offset
c.fsw f10, 88(x14) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x11, 0x705e4681 # initialize rs2 with random value
sw x11, 0(x9) # store 0x705e4681 in memory
flw f11, 0(x9) # load 0x705e4681 from memory into fs2
sw x0, 0(x9) # clearing the random value store at scratch
addi x9, x9, -92 # sub immediate from rs1 to counter offset
c.fsw f11, 92(x9) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x14, 0xd2ca02fe # initialize rs2 with random value
sw x14, 0(x8) # store 0xd2ca02fe in memory
flw f14, 0(x8) # load 0xd2ca02fe from memory into fs2
sw x0, 0(x8) # clearing the random value store at scratch
addi x8, x8, -96 # sub immediate from rs1 to counter offset
c.fsw f14, 96(x8) # perform operation 

# Testcase cp_imm_mul
la x10, scratch # base address
li x11, 0x4ead3df2 # initialize rs2 with random value
sw x11, 0(x10) # store 0x4ead3df2 in memory
flw f11, 0(x10) # load 0x4ead3df2 from memory into fs2
sw x0, 0(x10) # clearing the random value store at scratch
addi x10, x10, -100 # sub immediate from rs1 to counter offset
c.fsw f11, 100(x10) # perform operation 

# Testcase cp_imm_mul
la x11, scratch # base address
li x10, 0x14655c5d # initialize rs2 with random value
sw x10, 0(x11) # store 0x14655c5d in memory
flw f10, 0(x11) # load 0x14655c5d from memory into fs2
sw x0, 0(x11) # clearing the random value store at scratch
addi x11, x11, -104 # sub immediate from rs1 to counter offset
c.fsw f10, 104(x11) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x9, 0x44852a7a # initialize rs2 with random value
sw x9, 0(x15) # store 0x44852a7a in memory
flw f9, 0(x15) # load 0x44852a7a from memory into fs2
sw x0, 0(x15) # clearing the random value store at scratch
addi x15, x15, -108 # sub immediate from rs1 to counter offset
c.fsw f9, 108(x15) # perform operation 

# Testcase cp_imm_mul
la x11, scratch # base address
li x15, 0xb8d24f32 # initialize rs2 with random value
sw x15, 0(x11) # store 0xb8d24f32 in memory
flw f15, 0(x11) # load 0xb8d24f32 from memory into fs2
sw x0, 0(x11) # clearing the random value store at scratch
addi x11, x11, -112 # sub immediate from rs1 to counter offset
c.fsw f15, 112(x11) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x11, 0x7e27438f # initialize rs2 with random value
sw x11, 0(x9) # store 0x7e27438f in memory
flw f11, 0(x9) # load 0x7e27438f from memory into fs2
sw x0, 0(x9) # clearing the random value store at scratch
addi x9, x9, -116 # sub immediate from rs1 to counter offset
c.fsw f11, 116(x9) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x11, 0x5beaaa03 # initialize rs2 with random value
sw x11, 0(x9) # store 0x5beaaa03 in memory
flw f11, 0(x9) # load 0x5beaaa03 from memory into fs2
sw x0, 0(x9) # clearing the random value store at scratch
addi x9, x9, -120 # sub immediate from rs1 to counter offset
c.fsw f11, 120(x9) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x15, 0x0d69c793 # initialize rs2 with random value
sw x15, 0(x9) # store 0xd69c793 in memory
flw f15, 0(x9) # load 0xd69c793 from memory into fs2
sw x0, 0(x9) # clearing the random value store at scratch
addi x9, x9, -124 # sub immediate from rs1 to counter offset
c.fsw f15, 124(x9) # perform operation 

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-c.fswsp.S
// ******************


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

#.EQU SIGSIZE,0
.EQU SIGSIZE,192 #combined


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
