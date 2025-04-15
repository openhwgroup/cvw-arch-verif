///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zca/WALLY-COV-c.lw.S
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

    
# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x15, 0xd0ca87ba7aa042e4 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -68 # sub immediate from rs1 to counter offset
c.sw x15, 68(x8) # store value to put something in memory
c.lw x8, 68(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x13, 0x5b4e7dd0447ee6d6 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -84 # sub immediate from rs1 to counter offset
c.sw x13, 84(x9) # store value to put something in memory
c.lw x9, 84(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 8)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x14, 0x1fd037699d8c6bd2 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -92 # sub immediate from rs1 to counter offset
c.sw x14, 92(x10) # store value to put something in memory
c.lw x10, 92(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 16)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x14, 0xa62dfdd74daaa81d # initialize rs2
la x11, scratch # base address 
addi x11, x11, -44 # sub immediate from rs1 to counter offset
c.sw x14, 44(x11) # store value to put something in memory
c.lw x11, 44(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 24)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x9, 0x859211e96430b991 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -28 # sub immediate from rs1 to counter offset
c.sw x9, 28(x12) # store value to put something in memory
c.lw x12, 28(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 32)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x15, 0x26a9b5fe07fc58fd # initialize rs2
la x13, scratch # base address 
addi x13, x13, -56 # sub immediate from rs1 to counter offset
c.sw x15, 56(x13) # store value to put something in memory
c.lw x13, 56(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 40)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x12, 0x9b1d6fe991d937e3 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -56 # sub immediate from rs1 to counter offset
c.sw x12, 56(x14) # store value to put something in memory
c.lw x14, 56(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 48)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x11, 0x9dcbcb536bb236ec # initialize rs2
la x15, scratch # base address 
addi x15, x15, -120 # sub immediate from rs1 to counter offset
c.sw x11, 120(x15) # store value to put something in memory
c.lw x15, 120(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x10, 0xc346229951df206f # initialize rs2
la x8, scratch # base address 
addi x8, x8, -96 # sub immediate from rs1 to counter offset
c.sw x10, 96(x8) # store value to put something in memory
c.lw x15, 96(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x14, 0x7459eb462f2ad2e5 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -120 # sub immediate from rs1 to counter offset
c.sw x14, 120(x9) # store value to put something in memory
c.lw x12, 120(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x11, 0xdaf2fdc35ca0726a # initialize rs2
la x10, scratch # base address 
addi x10, x10, -56 # sub immediate from rs1 to counter offset
c.sw x11, 56(x10) # store value to put something in memory
c.lw x8, 56(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x14, 0x08c4b68eab54b9e1 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -88 # sub immediate from rs1 to counter offset
c.sw x14, 88(x11) # store value to put something in memory
c.lw x12, 88(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x15, 0xb741789acb69d9a3 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -92 # sub immediate from rs1 to counter offset
c.sw x15, 92(x12) # store value to put something in memory
c.lw x11, 92(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x10, 0x43028b5d7f8574d7 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -12 # sub immediate from rs1 to counter offset
c.sw x10, 12(x13) # store value to put something in memory
c.lw x14, 12(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x13, 0xd000d8aadee3fdc4 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -84 # sub immediate from rs1 to counter offset
c.sw x13, 84(x14) # store value to put something in memory
c.lw x10, 84(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x9, 0x381358fff287d11c # initialize rs2
la x15, scratch # base address 
addi x15, x15, -108 # sub immediate from rs1 to counter offset
c.sw x9, 108(x15) # store value to put something in memory
c.lw x10, 108(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 120)

# Testcase cp_rd (Test destination rd = x8)
li x15, 0x416d9ce304d5fab5 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -92 # sub immediate from rs1 to counter offset
c.sw x15, 92(x8) # store value to put something in memory
c.lw x8, 92(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cp_rd (Test destination rd = x9)
li x15, 0xf73b5e3946719070 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -92 # sub immediate from rs1 to counter offset
c.sw x15, 92(x12) # store value to put something in memory
c.lw x9, 92(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 136)

# Testcase cp_rd (Test destination rd = x10)
li x8, 0x02fd5886f773fe85 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -56 # sub immediate from rs1 to counter offset
c.sw x8, 56(x12) # store value to put something in memory
c.lw x10, 56(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 144)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x6041a50a268afd4d # initialize rs2
la x14, scratch # base address 
addi x14, x14, -16 # sub immediate from rs1 to counter offset
c.sw x11, 16(x14) # store value to put something in memory
c.lw x11, 16(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 152)

# Testcase cp_rd (Test destination rd = x12)
li x14, 0x820a120f871f5a26 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -40 # sub immediate from rs1 to counter offset
c.sw x14, 40(x12) # store value to put something in memory
c.lw x12, 40(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 160)

# Testcase cp_rd (Test destination rd = x13)
li x10, 0xc5b831a554d3d5a7 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -112 # sub immediate from rs1 to counter offset
c.sw x10, 112(x8) # store value to put something in memory
c.lw x13, 112(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 168)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x03dc3c73b324674f # initialize rs2
la x8, scratch # base address 
addi x8, x8, -12 # sub immediate from rs1 to counter offset
c.sw x14, 12(x8) # store value to put something in memory
c.lw x14, 12(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 176)

# Testcase cp_rd (Test destination rd = x15)
li x14, 0x6d0c5f94ad2446b5 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -68 # sub immediate from rs1 to counter offset
c.sw x14, 68(x8) # store value to put something in memory
c.lw x15, 68(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 184)

# Testcase cp_imm_mul
li x8, 0x3a7d5799265fda75 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x9) # store value to put something in memory
c.lw x14, 0(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 192)

# Testcase cp_imm_mul
li x9, 0x461d5d355b861e8e # initialize rs2
la x11, scratch # base address 
addi x11, x11, -4 # sub immediate from rs1 to counter offset
c.sw x9, 4(x11) # store value to put something in memory
c.lw x13, 4(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 200)

# Testcase cp_imm_mul
li x8, 0x3680c03fe7b682f1 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -8 # sub immediate from rs1 to counter offset
c.sw x8, 8(x15) # store value to put something in memory
c.lw x11, 8(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 208)

# Testcase cp_imm_mul
li x9, 0x8db016c75c0ac93a # initialize rs2
la x8, scratch # base address 
addi x8, x8, -12 # sub immediate from rs1 to counter offset
c.sw x9, 12(x8) # store value to put something in memory
c.lw x12, 12(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 216)

# Testcase cp_imm_mul
li x10, 0xdbbeb47c33b01b88 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -16 # sub immediate from rs1 to counter offset
c.sw x10, 16(x11) # store value to put something in memory
c.lw x15, 16(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 224)

# Testcase cp_imm_mul
li x10, 0x4b3621147c797c6e # initialize rs2
la x11, scratch # base address 
addi x11, x11, -20 # sub immediate from rs1 to counter offset
c.sw x10, 20(x11) # store value to put something in memory
c.lw x9, 20(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 232)

# Testcase cp_imm_mul
li x14, 0x90c276efdff4cbf5 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -24 # sub immediate from rs1 to counter offset
c.sw x14, 24(x11) # store value to put something in memory
c.lw x10, 24(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 240)

# Testcase cp_imm_mul
li x11, 0xc66bb9418ec636ac # initialize rs2
la x13, scratch # base address 
addi x13, x13, -28 # sub immediate from rs1 to counter offset
c.sw x11, 28(x13) # store value to put something in memory
c.lw x9, 28(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 248)

# Testcase cp_imm_mul
li x12, 0xfdf7f788760e3a29 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -32 # sub immediate from rs1 to counter offset
c.sw x12, 32(x14) # store value to put something in memory
c.lw x10, 32(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 256)

# Testcase cp_imm_mul
li x9, 0xaa3cfa541cfc48fb # initialize rs2
la x13, scratch # base address 
addi x13, x13, -36 # sub immediate from rs1 to counter offset
c.sw x9, 36(x13) # store value to put something in memory
c.lw x14, 36(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 264)

# Testcase cp_imm_mul
li x9, 0x744b247e4c43e18b # initialize rs2
la x14, scratch # base address 
addi x14, x14, -40 # sub immediate from rs1 to counter offset
c.sw x9, 40(x14) # store value to put something in memory
c.lw x10, 40(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 272)

# Testcase cp_imm_mul
li x11, 0x324d4bbc1bece548 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -44 # sub immediate from rs1 to counter offset
c.sw x11, 44(x13) # store value to put something in memory
c.lw x8, 44(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 280)

# Testcase cp_imm_mul
li x10, 0x6a6977ca50794778 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -48 # sub immediate from rs1 to counter offset
c.sw x10, 48(x14) # store value to put something in memory
c.lw x13, 48(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 288)

# Testcase cp_imm_mul
li x14, 0xb2b7b982edbb8e84 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -52 # sub immediate from rs1 to counter offset
c.sw x14, 52(x12) # store value to put something in memory
c.lw x13, 52(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 296)

# Testcase cp_imm_mul
li x9, 0xd8dbe2eff29b0dbc # initialize rs2
la x11, scratch # base address 
addi x11, x11, -56 # sub immediate from rs1 to counter offset
c.sw x9, 56(x11) # store value to put something in memory
c.lw x12, 56(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_imm_mul
li x14, 0x5811e0afe3a824d2 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -60 # sub immediate from rs1 to counter offset
c.sw x14, 60(x9) # store value to put something in memory
c.lw x11, 60(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 312)

# Testcase cp_imm_mul
li x10, 0x815d906ee28943b6 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -64 # sub immediate from rs1 to counter offset
c.sw x10, 64(x13) # store value to put something in memory
c.lw x12, 64(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 320)

# Testcase cp_imm_mul
li x11, 0xcddf94df8f287834 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -68 # sub immediate from rs1 to counter offset
c.sw x11, 68(x12) # store value to put something in memory
c.lw x14, 68(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 328)

# Testcase cp_imm_mul
li x9, 0xe978a7027d229ed5 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -72 # sub immediate from rs1 to counter offset
c.sw x9, 72(x15) # store value to put something in memory
c.lw x14, 72(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 336)

# Testcase cp_imm_mul
li x12, 0x247dac6aaa19ec07 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -76 # sub immediate from rs1 to counter offset
c.sw x12, 76(x11) # store value to put something in memory
c.lw x8, 76(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 344)

# Testcase cp_imm_mul
li x13, 0x6281fa69ac96af10 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -80 # sub immediate from rs1 to counter offset
c.sw x13, 80(x12) # store value to put something in memory
c.lw x11, 80(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 352)

# Testcase cp_imm_mul
li x11, 0xa869e9b866a6ded9 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -84 # sub immediate from rs1 to counter offset
c.sw x11, 84(x9) # store value to put something in memory
c.lw x13, 84(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_imm_mul
li x14, 0x2c9c2641ad181a0c # initialize rs2
la x8, scratch # base address 
addi x8, x8, -88 # sub immediate from rs1 to counter offset
c.sw x14, 88(x8) # store value to put something in memory
c.lw x11, 88(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 368)

# Testcase cp_imm_mul
li x10, 0xf867c4c5d0523f22 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -92 # sub immediate from rs1 to counter offset
c.sw x10, 92(x15) # store value to put something in memory
c.lw x14, 92(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 376)

# Testcase cp_imm_mul
li x10, 0x01cd1bdaebf93b07 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -96 # sub immediate from rs1 to counter offset
c.sw x10, 96(x14) # store value to put something in memory
c.lw x9, 96(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 384)

# Testcase cp_imm_mul
li x15, 0xecb27fefd6b981ff # initialize rs2
la x10, scratch # base address 
addi x10, x10, -100 # sub immediate from rs1 to counter offset
c.sw x15, 100(x10) # store value to put something in memory
c.lw x8, 100(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 392)

# Testcase cp_imm_mul
li x8, 0xb608c7186d705d6c # initialize rs2
la x11, scratch # base address 
addi x11, x11, -104 # sub immediate from rs1 to counter offset
c.sw x8, 104(x11) # store value to put something in memory
c.lw x13, 104(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 400)

# Testcase cp_imm_mul
li x8, 0xdacf5bd834f402ab # initialize rs2
la x9, scratch # base address 
addi x9, x9, -108 # sub immediate from rs1 to counter offset
c.sw x8, 108(x9) # store value to put something in memory
c.lw x15, 108(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 408)

# Testcase cp_imm_mul
li x8, 0x8d0ac7597573a64a # initialize rs2
la x14, scratch # base address 
addi x14, x14, -112 # sub immediate from rs1 to counter offset
c.sw x8, 112(x14) # store value to put something in memory
c.lw x10, 112(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 416)

# Testcase cp_imm_mul
li x13, 0xa8c5b4ca06a3a6a4 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -116 # sub immediate from rs1 to counter offset
c.sw x13, 116(x12) # store value to put something in memory
c.lw x11, 116(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 424)

# Testcase cp_imm_mul
li x11, 0x03307d2b9efa846c # initialize rs2
la x13, scratch # base address 
addi x13, x13, -120 # sub immediate from rs1 to counter offset
c.sw x11, 120(x13) # store value to put something in memory
c.lw x9, 120(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 432)

# Testcase cp_imm_mul
li x14, 0xc36d0263a0f7d2e3 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -124 # sub immediate from rs1 to counter offset
c.sw x14, 124(x8) # store value to put something in memory
c.lw x10, 124(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 440)

.EQU SIGSIZE,448


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
