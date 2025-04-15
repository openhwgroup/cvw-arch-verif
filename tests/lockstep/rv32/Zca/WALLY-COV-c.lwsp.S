///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zca/WALLY-COV-c.lwsp.S
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
li x1, 0xa9b00890 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -80 # sub immediate from rs1 to counter offset
c.swsp x14, 80(sp)   # store value to put something in memory
c.lwsp x1, 80(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x57145fc6 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -72 # sub immediate from rs1 to counter offset
c.swsp x7, 72(sp)   # store value to put something in memory
c.lwsp x2, 72(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 4)

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xb65233e4 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -204 # sub immediate from rs1 to counter offset
c.swsp x11, 204(sp)   # store value to put something in memory
c.lwsp x3, 204(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x8930da60 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -172 # sub immediate from rs1 to counter offset
c.swsp x10, 172(sp)   # store value to put something in memory
c.lwsp x4, 172(sp) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 12)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x75533601 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -64 # sub immediate from rs1 to counter offset
c.swsp x26, 64(sp)   # store value to put something in memory
c.lwsp x5, 64(sp) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 16)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb1dd325e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -168 # sub immediate from rs1 to counter offset
c.swsp x10, 168(sp)   # store value to put something in memory
c.lwsp x6, 168(sp) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 20)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xdd6f8b6d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -112 # sub immediate from rs1 to counter offset
c.swsp x25, 112(sp)   # store value to put something in memory
c.lwsp x7, 112(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 24)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xbef6664e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -92 # sub immediate from rs1 to counter offset
c.swsp x23, 92(sp)   # store value to put something in memory
c.lwsp x8, 92(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 28)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x47c416cb # initialize rs1
la sp, scratch # base address 
addi sp, sp, -52 # sub immediate from rs1 to counter offset
c.swsp x20, 52(sp)   # store value to put something in memory
c.lwsp x9, 52(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 32)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x33effd0a # initialize rs1
la sp, scratch # base address 
addi sp, sp, -208 # sub immediate from rs1 to counter offset
c.swsp x29, 208(sp)   # store value to put something in memory
c.lwsp x10, 208(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 36)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xbe56ef1f # initialize rs1
la sp, scratch # base address 
addi sp, sp, -88 # sub immediate from rs1 to counter offset
c.swsp x15, 88(sp)   # store value to put something in memory
c.lwsp x11, 88(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 40)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xf898ffbd # initialize rs1
la sp, scratch # base address 
addi sp, sp, -68 # sub immediate from rs1 to counter offset
c.swsp x16, 68(sp)   # store value to put something in memory
c.lwsp x12, 68(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 44)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x96c38307 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -144 # sub immediate from rs1 to counter offset
c.swsp x25, 144(sp)   # store value to put something in memory
c.lwsp x13, 144(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 48)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x6b529966 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -60 # sub immediate from rs1 to counter offset
c.swsp x14, 60(sp)   # store value to put something in memory
c.lwsp x14, 60(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 52)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x612b8458 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x26, 0(sp)   # store value to put something in memory
c.lwsp x15, 0(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x9a94fd97 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -172 # sub immediate from rs1 to counter offset
c.swsp x27, 172(sp)   # store value to put something in memory
c.lwsp x16, 172(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 60)

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xc001f167 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -28 # sub immediate from rs1 to counter offset
c.swsp x24, 28(sp)   # store value to put something in memory
c.lwsp x17, 28(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 64)

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x44a7e04b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -56 # sub immediate from rs1 to counter offset
c.swsp x28, 56(sp)   # store value to put something in memory
c.lwsp x18, 56(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 68)

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xfa03e10d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -172 # sub immediate from rs1 to counter offset
c.swsp x17, 172(sp)   # store value to put something in memory
c.lwsp x19, 172(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 72)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xe9985a3c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -52 # sub immediate from rs1 to counter offset
c.swsp x23, 52(sp)   # store value to put something in memory
c.lwsp x20, 52(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 76)

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x21908a1d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -68 # sub immediate from rs1 to counter offset
c.swsp x7, 68(sp)   # store value to put something in memory
c.lwsp x21, 68(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 80)

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xba44622e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -36 # sub immediate from rs1 to counter offset
c.swsp x31, 36(sp)   # store value to put something in memory
c.lwsp x22, 36(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 84)

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xf00e1fd2 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -48 # sub immediate from rs1 to counter offset
c.swsp x13, 48(sp)   # store value to put something in memory
c.lwsp x23, 48(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 88)

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x0ac22985 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -200 # sub immediate from rs1 to counter offset
c.swsp x19, 200(sp)   # store value to put something in memory
c.lwsp x24, 200(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 92)

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x38d21d18 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -200 # sub immediate from rs1 to counter offset
c.swsp x15, 200(sp)   # store value to put something in memory
c.lwsp x25, 200(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 96)

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x0d17a617 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -240 # sub immediate from rs1 to counter offset
c.swsp x8, 240(sp)   # store value to put something in memory
c.lwsp x26, 240(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 100)

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xb0c97d0c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -236 # sub immediate from rs1 to counter offset
c.swsp x1, 236(sp)   # store value to put something in memory
c.lwsp x27, 236(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 104)

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x6f74bb4f # initialize rs1
la sp, scratch # base address 
addi sp, sp, -200 # sub immediate from rs1 to counter offset
c.swsp x29, 200(sp)   # store value to put something in memory
c.lwsp x28, 200(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 108)

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x55db42f1 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -56 # sub immediate from rs1 to counter offset
c.swsp x9, 56(sp)   # store value to put something in memory
c.lwsp x29, 56(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 112)

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xc8776607 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -156 # sub immediate from rs1 to counter offset
c.swsp x5, 156(sp)   # store value to put something in memory
c.lwsp x30, 156(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 116)

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x1ee3aa99 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -40 # sub immediate from rs1 to counter offset
c.swsp x3, 40(sp)   # store value to put something in memory
c.lwsp x31, 40(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 120)

# Testcase cp_imm_mul
li x30, 0xb99f3830 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x19, 0(sp)   # store value to put something in memory
c.lwsp x30, 0(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 124)

# Testcase cp_imm_mul
li x22, 0xd1f1e569 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -4 # sub immediate from rs1 to counter offset
c.swsp x1, 4(sp)   # store value to put something in memory
c.lwsp x22, 4(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 128)

# Testcase cp_imm_mul
li x26, 0x7b70dc13 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -8 # sub immediate from rs1 to counter offset
c.swsp x3, 8(sp)   # store value to put something in memory
c.lwsp x26, 8(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 132)

# Testcase cp_imm_mul
li x6, 0x1dc979a9 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -12 # sub immediate from rs1 to counter offset
c.swsp x11, 12(sp)   # store value to put something in memory
c.lwsp x6, 12(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 136)

# Testcase cp_imm_mul
li x1, 0x38c5a964 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -16 # sub immediate from rs1 to counter offset
c.swsp x30, 16(sp)   # store value to put something in memory
c.lwsp x1, 16(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 140)

# Testcase cp_imm_mul
li x30, 0x1352e213 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -20 # sub immediate from rs1 to counter offset
c.swsp x28, 20(sp)   # store value to put something in memory
c.lwsp x30, 20(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 144)

# Testcase cp_imm_mul
li x24, 0xde9819a0 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -24 # sub immediate from rs1 to counter offset
c.swsp x16, 24(sp)   # store value to put something in memory
c.lwsp x24, 24(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 148)

# Testcase cp_imm_mul
li x13, 0x36256a97 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -28 # sub immediate from rs1 to counter offset
c.swsp x8, 28(sp)   # store value to put something in memory
c.lwsp x13, 28(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 152)

# Testcase cp_imm_mul
li x5, 0x4bdc695a # initialize rs1
la sp, scratch # base address 
addi sp, sp, -32 # sub immediate from rs1 to counter offset
c.swsp x10, 32(sp)   # store value to put something in memory
c.lwsp x5, 32(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x5, 156)

# Testcase cp_imm_mul
li x24, 0x8d6d6265 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -36 # sub immediate from rs1 to counter offset
c.swsp x22, 36(sp)   # store value to put something in memory
c.lwsp x24, 36(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 160)

# Testcase cp_imm_mul
li x13, 0x117627e9 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -40 # sub immediate from rs1 to counter offset
c.swsp x26, 40(sp)   # store value to put something in memory
c.lwsp x13, 40(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 164)

# Testcase cp_imm_mul
li x24, 0x828f00d4 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -44 # sub immediate from rs1 to counter offset
c.swsp x20, 44(sp)   # store value to put something in memory
c.lwsp x24, 44(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 168)

# Testcase cp_imm_mul
li x10, 0x03bb81bd # initialize rs1
la sp, scratch # base address 
addi sp, sp, -48 # sub immediate from rs1 to counter offset
c.swsp x27, 48(sp)   # store value to put something in memory
c.lwsp x10, 48(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 172)

# Testcase cp_imm_mul
li x11, 0x9a836368 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -52 # sub immediate from rs1 to counter offset
c.swsp x12, 52(sp)   # store value to put something in memory
c.lwsp x11, 52(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 176)

# Testcase cp_imm_mul
li x19, 0xffe8ed9c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -56 # sub immediate from rs1 to counter offset
c.swsp x11, 56(sp)   # store value to put something in memory
c.lwsp x19, 56(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 180)

# Testcase cp_imm_mul
li x27, 0xd33ae7be # initialize rs1
la sp, scratch # base address 
addi sp, sp, -60 # sub immediate from rs1 to counter offset
c.swsp x21, 60(sp)   # store value to put something in memory
c.lwsp x27, 60(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 184)

# Testcase cp_imm_mul
li x19, 0x0d50d3db # initialize rs1
la sp, scratch # base address 
addi sp, sp, -64 # sub immediate from rs1 to counter offset
c.swsp x5, 64(sp)   # store value to put something in memory
c.lwsp x19, 64(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 188)

# Testcase cp_imm_mul
li x17, 0xd8deb24b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -68 # sub immediate from rs1 to counter offset
c.swsp x14, 68(sp)   # store value to put something in memory
c.lwsp x17, 68(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 192)

# Testcase cp_imm_mul
li x28, 0x2aa0fbcd # initialize rs1
la sp, scratch # base address 
addi sp, sp, -72 # sub immediate from rs1 to counter offset
c.swsp x18, 72(sp)   # store value to put something in memory
c.lwsp x28, 72(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 196)

# Testcase cp_imm_mul
li x20, 0x244e318e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -76 # sub immediate from rs1 to counter offset
c.swsp x24, 76(sp)   # store value to put something in memory
c.lwsp x20, 76(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 200)

# Testcase cp_imm_mul
li x30, 0x4a14c1ac # initialize rs1
la sp, scratch # base address 
addi sp, sp, -80 # sub immediate from rs1 to counter offset
c.swsp x7, 80(sp)   # store value to put something in memory
c.lwsp x30, 80(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 204)

# Testcase cp_imm_mul
li x1, 0x251d7dd0 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -84 # sub immediate from rs1 to counter offset
c.swsp x2, 84(sp)   # store value to put something in memory
c.lwsp x1, 84(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 208)

# Testcase cp_imm_mul
li x31, 0xd616ba3d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -88 # sub immediate from rs1 to counter offset
c.swsp x27, 88(sp)   # store value to put something in memory
c.lwsp x31, 88(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 212)

# Testcase cp_imm_mul
li x2, 0xba022e4d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -92 # sub immediate from rs1 to counter offset
c.swsp x26, 92(sp)   # store value to put something in memory
c.lwsp x2, 92(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 216)

# Testcase cp_imm_mul
li x15, 0x511c6222 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -96 # sub immediate from rs1 to counter offset
c.swsp x11, 96(sp)   # store value to put something in memory
c.lwsp x15, 96(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 220)

# Testcase cp_imm_mul
li x17, 0x51eeed3f # initialize rs1
la sp, scratch # base address 
addi sp, sp, -100 # sub immediate from rs1 to counter offset
c.swsp x19, 100(sp)   # store value to put something in memory
c.lwsp x17, 100(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 224)

# Testcase cp_imm_mul
li x24, 0x26ddef1a # initialize rs1
la sp, scratch # base address 
addi sp, sp, -104 # sub immediate from rs1 to counter offset
c.swsp x2, 104(sp)   # store value to put something in memory
c.lwsp x24, 104(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 228)

# Testcase cp_imm_mul
li x14, 0x397a4beb # initialize rs1
la sp, scratch # base address 
addi sp, sp, -108 # sub immediate from rs1 to counter offset
c.swsp x21, 108(sp)   # store value to put something in memory
c.lwsp x14, 108(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 232)

# Testcase cp_imm_mul
li x22, 0x6897f40e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -112 # sub immediate from rs1 to counter offset
c.swsp x15, 112(sp)   # store value to put something in memory
c.lwsp x22, 112(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 236)

# Testcase cp_imm_mul
li x6, 0xa527711a # initialize rs1
la sp, scratch # base address 
addi sp, sp, -116 # sub immediate from rs1 to counter offset
c.swsp x1, 116(sp)   # store value to put something in memory
c.lwsp x6, 116(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 240)

# Testcase cp_imm_mul
li x19, 0x38c5ab9d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -120 # sub immediate from rs1 to counter offset
c.swsp x11, 120(sp)   # store value to put something in memory
c.lwsp x19, 120(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 244)

# Testcase cp_imm_mul
li x2, 0x82f18ffe # initialize rs1
la sp, scratch # base address 
addi sp, sp, -124 # sub immediate from rs1 to counter offset
c.swsp x21, 124(sp)   # store value to put something in memory
c.lwsp x2, 124(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 248)

# Testcase cp_imm_mul
li x28, 0xae803a4e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -128 # sub immediate from rs1 to counter offset
c.swsp x20, 128(sp)   # store value to put something in memory
c.lwsp x28, 128(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 252)

# Testcase cp_imm_mul
li x25, 0x5c3a8dc5 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -132 # sub immediate from rs1 to counter offset
c.swsp x17, 132(sp)   # store value to put something in memory
c.lwsp x25, 132(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 256)

# Testcase cp_imm_mul
li x2, 0xb8c41bd6 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -136 # sub immediate from rs1 to counter offset
c.swsp x11, 136(sp)   # store value to put something in memory
c.lwsp x2, 136(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 260)

# Testcase cp_imm_mul
li x17, 0x26b73749 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -140 # sub immediate from rs1 to counter offset
c.swsp x10, 140(sp)   # store value to put something in memory
c.lwsp x17, 140(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 264)

# Testcase cp_imm_mul
li x22, 0x7ef6d2ee # initialize rs1
la sp, scratch # base address 
addi sp, sp, -144 # sub immediate from rs1 to counter offset
c.swsp x1, 144(sp)   # store value to put something in memory
c.lwsp x22, 144(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 268)

# Testcase cp_imm_mul
li x12, 0xcb942fc6 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -148 # sub immediate from rs1 to counter offset
c.swsp x7, 148(sp)   # store value to put something in memory
c.lwsp x12, 148(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 272)

# Testcase cp_imm_mul
li x2, 0xc5082ea4 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -152 # sub immediate from rs1 to counter offset
c.swsp x24, 152(sp)   # store value to put something in memory
c.lwsp x2, 152(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 276)

# Testcase cp_imm_mul
li x6, 0x3e618302 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -156 # sub immediate from rs1 to counter offset
c.swsp x26, 156(sp)   # store value to put something in memory
c.lwsp x6, 156(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 280)

# Testcase cp_imm_mul
li x7, 0xed586c83 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -160 # sub immediate from rs1 to counter offset
c.swsp x31, 160(sp)   # store value to put something in memory
c.lwsp x7, 160(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_imm_mul
li x7, 0x1575eb09 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -164 # sub immediate from rs1 to counter offset
c.swsp x1, 164(sp)   # store value to put something in memory
c.lwsp x7, 164(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 288)

# Testcase cp_imm_mul
li x18, 0xca2ca40b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -168 # sub immediate from rs1 to counter offset
c.swsp x17, 168(sp)   # store value to put something in memory
c.lwsp x18, 168(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 292)

# Testcase cp_imm_mul
li x1, 0x34ba8b87 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -172 # sub immediate from rs1 to counter offset
c.swsp x26, 172(sp)   # store value to put something in memory
c.lwsp x1, 172(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 296)

# Testcase cp_imm_mul
li x27, 0x5b92e671 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -176 # sub immediate from rs1 to counter offset
c.swsp x24, 176(sp)   # store value to put something in memory
c.lwsp x27, 176(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 300)

# Testcase cp_imm_mul
li x6, 0xa7331746 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -180 # sub immediate from rs1 to counter offset
c.swsp x9, 180(sp)   # store value to put something in memory
c.lwsp x6, 180(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 304)

# Testcase cp_imm_mul
li x19, 0xf7dd332d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -184 # sub immediate from rs1 to counter offset
c.swsp x2, 184(sp)   # store value to put something in memory
c.lwsp x19, 184(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 308)

# Testcase cp_imm_mul
li x26, 0x1775d153 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -188 # sub immediate from rs1 to counter offset
c.swsp x15, 188(sp)   # store value to put something in memory
c.lwsp x26, 188(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 312)

# Testcase cp_imm_mul
li x20, 0xdbf12199 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -192 # sub immediate from rs1 to counter offset
c.swsp x19, 192(sp)   # store value to put something in memory
c.lwsp x20, 192(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 316)

# Testcase cp_imm_mul
li x17, 0xa6f914d7 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -196 # sub immediate from rs1 to counter offset
c.swsp x30, 196(sp)   # store value to put something in memory
c.lwsp x17, 196(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 320)

# Testcase cp_imm_mul
li x20, 0x7c0bccbb # initialize rs1
la sp, scratch # base address 
addi sp, sp, -200 # sub immediate from rs1 to counter offset
c.swsp x9, 200(sp)   # store value to put something in memory
c.lwsp x20, 200(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 324)

# Testcase cp_imm_mul
li x28, 0x9f8edf46 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -204 # sub immediate from rs1 to counter offset
c.swsp x29, 204(sp)   # store value to put something in memory
c.lwsp x28, 204(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 328)

# Testcase cp_imm_mul
li x5, 0x6a234067 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -208 # sub immediate from rs1 to counter offset
c.swsp x12, 208(sp)   # store value to put something in memory
c.lwsp x5, 208(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x5, 332)

# Testcase cp_imm_mul
li x28, 0x3a8ea5d4 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -212 # sub immediate from rs1 to counter offset
c.swsp x15, 212(sp)   # store value to put something in memory
c.lwsp x28, 212(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 336)

# Testcase cp_imm_mul
li x28, 0x03fe4194 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -216 # sub immediate from rs1 to counter offset
c.swsp x31, 216(sp)   # store value to put something in memory
c.lwsp x28, 216(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 340)

# Testcase cp_imm_mul
li x27, 0xa100e5ee # initialize rs1
la sp, scratch # base address 
addi sp, sp, -220 # sub immediate from rs1 to counter offset
c.swsp x16, 220(sp)   # store value to put something in memory
c.lwsp x27, 220(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 344)

# Testcase cp_imm_mul
li x18, 0x6b481060 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -224 # sub immediate from rs1 to counter offset
c.swsp x15, 224(sp)   # store value to put something in memory
c.lwsp x18, 224(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 348)

# Testcase cp_imm_mul
li x8, 0xe63cdeda # initialize rs1
la sp, scratch # base address 
addi sp, sp, -228 # sub immediate from rs1 to counter offset
c.swsp x6, 228(sp)   # store value to put something in memory
c.lwsp x8, 228(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 352)

# Testcase cp_imm_mul
li x11, 0x1024fc97 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -232 # sub immediate from rs1 to counter offset
c.swsp x13, 232(sp)   # store value to put something in memory
c.lwsp x11, 232(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 356)

# Testcase cp_imm_mul
li x2, 0x5cd934a1 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -236 # sub immediate from rs1 to counter offset
c.swsp x16, 236(sp)   # store value to put something in memory
c.lwsp x2, 236(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 360)

# Testcase cp_imm_mul
li x3, 0xcab71460 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -240 # sub immediate from rs1 to counter offset
c.swsp x12, 240(sp)   # store value to put something in memory
c.lwsp x3, 240(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 364)

# Testcase cp_imm_mul
li x15, 0x22d94f02 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -244 # sub immediate from rs1 to counter offset
c.swsp x21, 244(sp)   # store value to put something in memory
c.lwsp x15, 244(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 368)

# Testcase cp_imm_mul
li x2, 0x9f328011 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -248 # sub immediate from rs1 to counter offset
c.swsp x18, 248(sp)   # store value to put something in memory
c.lwsp x2, 248(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 372)

# Testcase cp_imm_mul
li x17, 0xceef18fd # initialize rs1
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x8, 252(sp)   # store value to put something in memory
c.lwsp x17, 252(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

.EQU SIGSIZE,380


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
