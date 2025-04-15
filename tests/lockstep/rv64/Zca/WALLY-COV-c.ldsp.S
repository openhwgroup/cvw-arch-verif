///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zca/WALLY-COV-c.ldsp.S
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
li x1, 0x79b785925f212a9e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -424 # sub immediate from rs1 to counter offset
c.sdsp x15, 424(sp)   # store value to put something in memory
c.ldsp x1, 424(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x09ee9d1b54ee610e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -144 # sub immediate from rs1 to counter offset
c.sdsp x21, 144(sp)   # store value to put something in memory
c.ldsp x2, 144(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x6680323f53ade875 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -176 # sub immediate from rs1 to counter offset
c.sdsp x17, 176(sp)   # store value to put something in memory
c.ldsp x3, 176(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 16)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xcb33389441ec9b0e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -456 # sub immediate from rs1 to counter offset
c.sdsp x2, 456(sp)   # store value to put something in memory
c.ldsp x4, 456(sp) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 24)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x11b7498ee75d3bf3 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -392 # sub immediate from rs1 to counter offset
c.sdsp x8, 392(sp)   # store value to put something in memory
c.ldsp x5, 392(sp) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 32)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x36dde2453fd94159 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -448 # sub immediate from rs1 to counter offset
c.sdsp x28, 448(sp)   # store value to put something in memory
c.ldsp x6, 448(sp) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 40)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x56d94102cbb1f40b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -488 # sub immediate from rs1 to counter offset
c.sdsp x29, 488(sp)   # store value to put something in memory
c.ldsp x7, 488(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 48)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x1ed0d5a599534c5d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -448 # sub immediate from rs1 to counter offset
c.sdsp x1, 448(sp)   # store value to put something in memory
c.ldsp x8, 448(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 56)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xbcbe29916159615c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -328 # sub immediate from rs1 to counter offset
c.sdsp x22, 328(sp)   # store value to put something in memory
c.ldsp x9, 328(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 64)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xd38516160037c940 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -48 # sub immediate from rs1 to counter offset
c.sdsp x9, 48(sp)   # store value to put something in memory
c.ldsp x10, 48(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 72)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x79283e2d3a23cc09 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -248 # sub immediate from rs1 to counter offset
c.sdsp x13, 248(sp)   # store value to put something in memory
c.ldsp x11, 248(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 80)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x2518b06257895554 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x22, 504(sp)   # store value to put something in memory
c.ldsp x12, 504(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 88)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x407e911f12fea61e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -336 # sub immediate from rs1 to counter offset
c.sdsp x28, 336(sp)   # store value to put something in memory
c.ldsp x13, 336(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 96)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xe53d285288f71a14 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -336 # sub immediate from rs1 to counter offset
c.sdsp x23, 336(sp)   # store value to put something in memory
c.ldsp x14, 336(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x028c4d3682d858cc # initialize rs1
la sp, scratch # base address 
addi sp, sp, -112 # sub immediate from rs1 to counter offset
c.sdsp x19, 112(sp)   # store value to put something in memory
c.ldsp x15, 112(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 112)

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x14018bec94f75995 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -16 # sub immediate from rs1 to counter offset
c.sdsp x12, 16(sp)   # store value to put something in memory
c.ldsp x16, 16(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 120)

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xa379ce96ff9d18ac # initialize rs1
la sp, scratch # base address 
addi sp, sp, -24 # sub immediate from rs1 to counter offset
c.sdsp x5, 24(sp)   # store value to put something in memory
c.ldsp x17, 24(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 128)

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xaf0dc30d0a625f2d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -184 # sub immediate from rs1 to counter offset
c.sdsp x27, 184(sp)   # store value to put something in memory
c.ldsp x18, 184(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 136)

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xc53ff872d2d9b26f # initialize rs1
la sp, scratch # base address 
addi sp, sp, -352 # sub immediate from rs1 to counter offset
c.sdsp x16, 352(sp)   # store value to put something in memory
c.ldsp x19, 352(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 144)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x16069764786f7f3f # initialize rs1
la sp, scratch # base address 
addi sp, sp, -216 # sub immediate from rs1 to counter offset
c.sdsp x18, 216(sp)   # store value to put something in memory
c.ldsp x20, 216(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 152)

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x5548deef487cb573 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -200 # sub immediate from rs1 to counter offset
c.sdsp x25, 200(sp)   # store value to put something in memory
c.ldsp x21, 200(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 160)

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x204dd92670de1644 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -384 # sub immediate from rs1 to counter offset
c.sdsp x22, 384(sp)   # store value to put something in memory
c.ldsp x22, 384(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 168)

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x24bc90e9e08e02f8 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -392 # sub immediate from rs1 to counter offset
c.sdsp x16, 392(sp)   # store value to put something in memory
c.ldsp x23, 392(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 176)

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xd3e0e7083ebbbfeb # initialize rs1
la sp, scratch # base address 
addi sp, sp, -24 # sub immediate from rs1 to counter offset
c.sdsp x13, 24(sp)   # store value to put something in memory
c.ldsp x24, 24(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 184)

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x589b7f25e773acbd # initialize rs1
la sp, scratch # base address 
addi sp, sp, -488 # sub immediate from rs1 to counter offset
c.sdsp x27, 488(sp)   # store value to put something in memory
c.ldsp x25, 488(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 192)

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xaa8e532486d44b8d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -480 # sub immediate from rs1 to counter offset
c.sdsp x28, 480(sp)   # store value to put something in memory
c.ldsp x26, 480(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 200)

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x51836254f93f9a34 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -208 # sub immediate from rs1 to counter offset
c.sdsp x23, 208(sp)   # store value to put something in memory
c.ldsp x27, 208(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 208)

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x366ded6b4831ce39 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -400 # sub immediate from rs1 to counter offset
c.sdsp x2, 400(sp)   # store value to put something in memory
c.ldsp x28, 400(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 216)

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xb77a7b6139635315 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -328 # sub immediate from rs1 to counter offset
c.sdsp x11, 328(sp)   # store value to put something in memory
c.ldsp x29, 328(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 224)

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x015668c3faeca76c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -416 # sub immediate from rs1 to counter offset
c.sdsp x31, 416(sp)   # store value to put something in memory
c.ldsp x30, 416(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 232)

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xd4573c423c52d507 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -408 # sub immediate from rs1 to counter offset
c.sdsp x22, 408(sp)   # store value to put something in memory
c.ldsp x31, 408(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 240)

# Testcase cp_imm_mul
li x12, 0x1e4bd3d18a7031fd # initialize rs1
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.sdsp x15, 0(sp)   # store value to put something in memory
c.ldsp x12, 0(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 248)

# Testcase cp_imm_mul
li x11, 0xaa64f1ecf3106253 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -8 # sub immediate from rs1 to counter offset
c.sdsp x19, 8(sp)   # store value to put something in memory
c.ldsp x11, 8(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 256)

# Testcase cp_imm_mul
li x24, 0xde5c81359e88bc87 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -16 # sub immediate from rs1 to counter offset
c.sdsp x2, 16(sp)   # store value to put something in memory
c.ldsp x24, 16(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 264)

# Testcase cp_imm_mul
li x10, 0x3af279b82760e18c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -24 # sub immediate from rs1 to counter offset
c.sdsp x2, 24(sp)   # store value to put something in memory
c.ldsp x10, 24(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 272)

# Testcase cp_imm_mul
li x14, 0x02fa8904b9709619 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -32 # sub immediate from rs1 to counter offset
c.sdsp x6, 32(sp)   # store value to put something in memory
c.ldsp x14, 32(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 280)

# Testcase cp_imm_mul
li x2, 0xac5851f1ae303a2f # initialize rs1
la sp, scratch # base address 
addi sp, sp, -40 # sub immediate from rs1 to counter offset
c.sdsp x30, 40(sp)   # store value to put something in memory
c.ldsp x2, 40(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 288)

# Testcase cp_imm_mul
li x12, 0xc7126442957b2571 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -48 # sub immediate from rs1 to counter offset
c.sdsp x20, 48(sp)   # store value to put something in memory
c.ldsp x12, 48(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 296)

# Testcase cp_imm_mul
li x14, 0xb48a7c69918d3206 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -56 # sub immediate from rs1 to counter offset
c.sdsp x26, 56(sp)   # store value to put something in memory
c.ldsp x14, 56(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 304)

# Testcase cp_imm_mul
li x15, 0x6361dde0f131adc3 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -64 # sub immediate from rs1 to counter offset
c.sdsp x8, 64(sp)   # store value to put something in memory
c.ldsp x15, 64(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 312)

# Testcase cp_imm_mul
li x26, 0x590a957566540c7c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -72 # sub immediate from rs1 to counter offset
c.sdsp x7, 72(sp)   # store value to put something in memory
c.ldsp x26, 72(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 320)

# Testcase cp_imm_mul
li x29, 0x27bdd8a5f7df6e82 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -80 # sub immediate from rs1 to counter offset
c.sdsp x30, 80(sp)   # store value to put something in memory
c.ldsp x29, 80(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 328)

# Testcase cp_imm_mul
li x31, 0x152e32aa5f828591 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -88 # sub immediate from rs1 to counter offset
c.sdsp x17, 88(sp)   # store value to put something in memory
c.ldsp x31, 88(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 336)

# Testcase cp_imm_mul
li x15, 0xd92db7935adc80be # initialize rs1
la sp, scratch # base address 
addi sp, sp, -96 # sub immediate from rs1 to counter offset
c.sdsp x19, 96(sp)   # store value to put something in memory
c.ldsp x15, 96(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 344)

# Testcase cp_imm_mul
li x20, 0x1299a9442be47d88 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -104 # sub immediate from rs1 to counter offset
c.sdsp x21, 104(sp)   # store value to put something in memory
c.ldsp x20, 104(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 352)

# Testcase cp_imm_mul
li x11, 0x08da5f018e4ab337 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -112 # sub immediate from rs1 to counter offset
c.sdsp x21, 112(sp)   # store value to put something in memory
c.ldsp x11, 112(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 360)

# Testcase cp_imm_mul
li x17, 0xe5f86772607ceff8 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -120 # sub immediate from rs1 to counter offset
c.sdsp x29, 120(sp)   # store value to put something in memory
c.ldsp x17, 120(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 368)

# Testcase cp_imm_mul
li x21, 0xf0f9cf6395dfd42e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -128 # sub immediate from rs1 to counter offset
c.sdsp x26, 128(sp)   # store value to put something in memory
c.ldsp x21, 128(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 376)

# Testcase cp_imm_mul
li x14, 0xc28b531de265dd8f # initialize rs1
la sp, scratch # base address 
addi sp, sp, -136 # sub immediate from rs1 to counter offset
c.sdsp x16, 136(sp)   # store value to put something in memory
c.ldsp x14, 136(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 384)

# Testcase cp_imm_mul
li x12, 0xc2c5138831d25053 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -144 # sub immediate from rs1 to counter offset
c.sdsp x5, 144(sp)   # store value to put something in memory
c.ldsp x12, 144(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 392)

# Testcase cp_imm_mul
li x23, 0x63b8255e7d2a9228 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -152 # sub immediate from rs1 to counter offset
c.sdsp x5, 152(sp)   # store value to put something in memory
c.ldsp x23, 152(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 400)

# Testcase cp_imm_mul
li x8, 0x4cda6dadf19bd63b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -160 # sub immediate from rs1 to counter offset
c.sdsp x19, 160(sp)   # store value to put something in memory
c.ldsp x8, 160(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 408)

# Testcase cp_imm_mul
li x1, 0x62042aaf038416ce # initialize rs1
la sp, scratch # base address 
addi sp, sp, -168 # sub immediate from rs1 to counter offset
c.sdsp x27, 168(sp)   # store value to put something in memory
c.ldsp x1, 168(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 416)

# Testcase cp_imm_mul
li x29, 0xd46bc7c5063de82a # initialize rs1
la sp, scratch # base address 
addi sp, sp, -176 # sub immediate from rs1 to counter offset
c.sdsp x25, 176(sp)   # store value to put something in memory
c.ldsp x29, 176(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 424)

# Testcase cp_imm_mul
li x23, 0xbb5cf2d88c89bc8b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -184 # sub immediate from rs1 to counter offset
c.sdsp x21, 184(sp)   # store value to put something in memory
c.ldsp x23, 184(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 432)

# Testcase cp_imm_mul
li x23, 0xc50a004f2063d25e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -192 # sub immediate from rs1 to counter offset
c.sdsp x8, 192(sp)   # store value to put something in memory
c.ldsp x23, 192(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_imm_mul
li x24, 0xbc865d3c5f2ba78c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -200 # sub immediate from rs1 to counter offset
c.sdsp x6, 200(sp)   # store value to put something in memory
c.ldsp x24, 200(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_imm_mul
li x11, 0xf2cc55831d90550d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -208 # sub immediate from rs1 to counter offset
c.sdsp x31, 208(sp)   # store value to put something in memory
c.ldsp x11, 208(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 456)

# Testcase cp_imm_mul
li x31, 0x8d7a8f75f2b1ff72 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -216 # sub immediate from rs1 to counter offset
c.sdsp x8, 216(sp)   # store value to put something in memory
c.ldsp x31, 216(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 464)

# Testcase cp_imm_mul
li x29, 0xda68052912f82e25 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -224 # sub immediate from rs1 to counter offset
c.sdsp x24, 224(sp)   # store value to put something in memory
c.ldsp x29, 224(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cp_imm_mul
li x21, 0xe335a8fefdd6840a # initialize rs1
la sp, scratch # base address 
addi sp, sp, -232 # sub immediate from rs1 to counter offset
c.sdsp x27, 232(sp)   # store value to put something in memory
c.ldsp x21, 232(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 480)

# Testcase cp_imm_mul
li x1, 0x262e1aa92be393c5 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -240 # sub immediate from rs1 to counter offset
c.sdsp x2, 240(sp)   # store value to put something in memory
c.ldsp x1, 240(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 488)

# Testcase cp_imm_mul
li x20, 0x5e200dd0887b2505 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -248 # sub immediate from rs1 to counter offset
c.sdsp x31, 248(sp)   # store value to put something in memory
c.ldsp x20, 248(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 496)

# Testcase cp_imm_mul
li x7, 0xe2543fee193b6575 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -256 # sub immediate from rs1 to counter offset
c.sdsp x31, 256(sp)   # store value to put something in memory
c.ldsp x7, 256(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 504)

# Testcase cp_imm_mul
li x17, 0xbb548b797e506d46 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -264 # sub immediate from rs1 to counter offset
c.sdsp x7, 264(sp)   # store value to put something in memory
c.ldsp x17, 264(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 512)

# Testcase cp_imm_mul
li x9, 0x4adf5d9ebeee9a33 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -272 # sub immediate from rs1 to counter offset
c.sdsp x5, 272(sp)   # store value to put something in memory
c.ldsp x9, 272(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 520)

# Testcase cp_imm_mul
li x2, 0x223408f195ed6d49 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -280 # sub immediate from rs1 to counter offset
c.sdsp x19, 280(sp)   # store value to put something in memory
c.ldsp x2, 280(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_imm_mul
li x3, 0x288dc04be78e52be # initialize rs1
la sp, scratch # base address 
addi sp, sp, -288 # sub immediate from rs1 to counter offset
c.sdsp x13, 288(sp)   # store value to put something in memory
c.ldsp x3, 288(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_imm_mul
li x3, 0xbadccf59dd932913 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -296 # sub immediate from rs1 to counter offset
c.sdsp x25, 296(sp)   # store value to put something in memory
c.ldsp x3, 296(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 544)

# Testcase cp_imm_mul
li x9, 0xd248ce35f72362ad # initialize rs1
la sp, scratch # base address 
addi sp, sp, -304 # sub immediate from rs1 to counter offset
c.sdsp x24, 304(sp)   # store value to put something in memory
c.ldsp x9, 304(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 552)

# Testcase cp_imm_mul
li x31, 0x65938ea995d6824c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -312 # sub immediate from rs1 to counter offset
c.sdsp x20, 312(sp)   # store value to put something in memory
c.ldsp x31, 312(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 560)

# Testcase cp_imm_mul
li x3, 0xa7b0357a06216c21 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -320 # sub immediate from rs1 to counter offset
c.sdsp x22, 320(sp)   # store value to put something in memory
c.ldsp x3, 320(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 568)

# Testcase cp_imm_mul
li x21, 0xdffa6a227114ac58 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -328 # sub immediate from rs1 to counter offset
c.sdsp x7, 328(sp)   # store value to put something in memory
c.ldsp x21, 328(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 576)

# Testcase cp_imm_mul
li x15, 0x02e683ea54506d9a # initialize rs1
la sp, scratch # base address 
addi sp, sp, -336 # sub immediate from rs1 to counter offset
c.sdsp x23, 336(sp)   # store value to put something in memory
c.ldsp x15, 336(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 584)

# Testcase cp_imm_mul
li x5, 0x81ba71e6fe0c9546 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -344 # sub immediate from rs1 to counter offset
c.sdsp x7, 344(sp)   # store value to put something in memory
c.ldsp x5, 344(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x5, 592)

# Testcase cp_imm_mul
li x5, 0x992b617a2f465888 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -352 # sub immediate from rs1 to counter offset
c.sdsp x30, 352(sp)   # store value to put something in memory
c.ldsp x5, 352(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x5, 600)

# Testcase cp_imm_mul
li x16, 0x8a0f9b9670772beb # initialize rs1
la sp, scratch # base address 
addi sp, sp, -360 # sub immediate from rs1 to counter offset
c.sdsp x11, 360(sp)   # store value to put something in memory
c.ldsp x16, 360(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 608)

# Testcase cp_imm_mul
li x13, 0x93cf975136fa3d5c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -368 # sub immediate from rs1 to counter offset
c.sdsp x3, 368(sp)   # store value to put something in memory
c.ldsp x13, 368(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_imm_mul
li x3, 0xbc99edf8b8386b9b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -376 # sub immediate from rs1 to counter offset
c.sdsp x23, 376(sp)   # store value to put something in memory
c.ldsp x3, 376(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 624)

# Testcase cp_imm_mul
li x12, 0x265c870dabe905da # initialize rs1
la sp, scratch # base address 
addi sp, sp, -384 # sub immediate from rs1 to counter offset
c.sdsp x18, 384(sp)   # store value to put something in memory
c.ldsp x12, 384(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 632)

# Testcase cp_imm_mul
li x17, 0xf37f6b98bdeafcfb # initialize rs1
la sp, scratch # base address 
addi sp, sp, -392 # sub immediate from rs1 to counter offset
c.sdsp x20, 392(sp)   # store value to put something in memory
c.ldsp x17, 392(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 640)

# Testcase cp_imm_mul
li x24, 0x20ce65053a0dd5dc # initialize rs1
la sp, scratch # base address 
addi sp, sp, -400 # sub immediate from rs1 to counter offset
c.sdsp x1, 400(sp)   # store value to put something in memory
c.ldsp x24, 400(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 648)

# Testcase cp_imm_mul
li x2, 0xbc5fd473003d77d5 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -408 # sub immediate from rs1 to counter offset
c.sdsp x13, 408(sp)   # store value to put something in memory
c.ldsp x2, 408(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cp_imm_mul
li x16, 0x0dcd48f9840b6977 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -416 # sub immediate from rs1 to counter offset
c.sdsp x31, 416(sp)   # store value to put something in memory
c.ldsp x16, 416(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 664)

# Testcase cp_imm_mul
li x3, 0x68e5f5e7875694da # initialize rs1
la sp, scratch # base address 
addi sp, sp, -424 # sub immediate from rs1 to counter offset
c.sdsp x30, 424(sp)   # store value to put something in memory
c.ldsp x3, 424(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 672)

# Testcase cp_imm_mul
li x26, 0x5f93afe68bf53502 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -432 # sub immediate from rs1 to counter offset
c.sdsp x10, 432(sp)   # store value to put something in memory
c.ldsp x26, 432(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 680)

# Testcase cp_imm_mul
li x29, 0x8da540b03ea1754b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -440 # sub immediate from rs1 to counter offset
c.sdsp x9, 440(sp)   # store value to put something in memory
c.ldsp x29, 440(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 688)

# Testcase cp_imm_mul
li x15, 0xb12c87da4be4fb77 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -448 # sub immediate from rs1 to counter offset
c.sdsp x21, 448(sp)   # store value to put something in memory
c.ldsp x15, 448(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 696)

# Testcase cp_imm_mul
li x31, 0xba351e284449962b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -456 # sub immediate from rs1 to counter offset
c.sdsp x1, 456(sp)   # store value to put something in memory
c.ldsp x31, 456(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 704)

# Testcase cp_imm_mul
li x31, 0x1ec53d94b4450068 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -464 # sub immediate from rs1 to counter offset
c.sdsp x18, 464(sp)   # store value to put something in memory
c.ldsp x31, 464(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 712)

# Testcase cp_imm_mul
li x27, 0xcefd453341299d56 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -472 # sub immediate from rs1 to counter offset
c.sdsp x31, 472(sp)   # store value to put something in memory
c.ldsp x27, 472(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 720)

# Testcase cp_imm_mul
li x19, 0x24ea4bc7211df2c9 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -480 # sub immediate from rs1 to counter offset
c.sdsp x7, 480(sp)   # store value to put something in memory
c.ldsp x19, 480(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 728)

# Testcase cp_imm_mul
li x10, 0x2483bcb27eab67fa # initialize rs1
la sp, scratch # base address 
addi sp, sp, -488 # sub immediate from rs1 to counter offset
c.sdsp x28, 488(sp)   # store value to put something in memory
c.ldsp x10, 488(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 736)

# Testcase cp_imm_mul
li x28, 0x95b197a3bad8e2fa # initialize rs1
la sp, scratch # base address 
addi sp, sp, -496 # sub immediate from rs1 to counter offset
c.sdsp x18, 496(sp)   # store value to put something in memory
c.ldsp x28, 496(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 744)

# Testcase cp_imm_mul
li x18, 0x888b0b1ce76975ba # initialize rs1
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
c.sdsp x13, 504(sp)   # store value to put something in memory
c.ldsp x18, 504(sp) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 752)

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
