///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zca/WALLY-COV-c.ld.S
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
li x13, 0x9a9c6fa13fa3faa2 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -168 # sub immediate from rs1 to counter offset
c.sd x13, 168(x8) # store value to put something in memory
c.ld x8, 168(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x11, 0x3b001c17b1d63af9 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -96 # sub immediate from rs1 to counter offset
c.sd x11, 96(x9) # store value to put something in memory
c.ld x9, 96(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 8)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x12, 0x144a753ff79d67b6 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -64 # sub immediate from rs1 to counter offset
c.sd x12, 64(x10) # store value to put something in memory
c.ld x10, 64(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 16)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x10, 0xce0ee41b11daedae # initialize rs2
la x11, scratch # base address 
addi x11, x11, -88 # sub immediate from rs1 to counter offset
c.sd x10, 88(x11) # store value to put something in memory
c.ld x11, 88(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 24)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x11, 0x43c01db5ae02d598 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -80 # sub immediate from rs1 to counter offset
c.sd x11, 80(x12) # store value to put something in memory
c.ld x12, 80(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 32)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x11, 0x25a5f5b3f672ff9f # initialize rs2
la x13, scratch # base address 
addi x13, x13, -96 # sub immediate from rs1 to counter offset
c.sd x11, 96(x13) # store value to put something in memory
c.ld x13, 96(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 40)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x13, 0xba8181ea87e34ec5 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -72 # sub immediate from rs1 to counter offset
c.sd x13, 72(x14) # store value to put something in memory
c.ld x14, 72(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 48)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x13, 0x492cf20296258aaa # initialize rs2
la x15, scratch # base address 
addi x15, x15, -88 # sub immediate from rs1 to counter offset
c.sd x13, 88(x15) # store value to put something in memory
c.ld x15, 88(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x10, 0xcba0c9a8d3747e86 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -120 # sub immediate from rs1 to counter offset
c.sd x10, 120(x8) # store value to put something in memory
c.ld x9, 120(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x8, 0xbd0d96f9314afe94 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -136 # sub immediate from rs1 to counter offset
c.sd x8, 136(x9) # store value to put something in memory
c.ld x12, 136(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x8, 0x82c768f41ec5c9ef # initialize rs2
la x10, scratch # base address 
addi x10, x10, -40 # sub immediate from rs1 to counter offset
c.sd x8, 40(x10) # store value to put something in memory
c.ld x14, 40(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x8, 0xc6c4d3e92d389d2a # initialize rs2
la x11, scratch # base address 
addi x11, x11, -240 # sub immediate from rs1 to counter offset
c.sd x8, 240(x11) # store value to put something in memory
c.ld x15, 240(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x8, 0x92beda5b39dd8e28 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -24 # sub immediate from rs1 to counter offset
c.sd x8, 24(x12) # store value to put something in memory
c.ld x11, 24(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x10, 0x655b8ba64bf12f5d # initialize rs2
la x13, scratch # base address 
addi x13, x13, -8 # sub immediate from rs1 to counter offset
c.sd x10, 8(x13) # store value to put something in memory
c.ld x14, 8(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x10, 0x464222a7946a6b8a # initialize rs2
la x14, scratch # base address 
addi x14, x14, -160 # sub immediate from rs1 to counter offset
c.sd x10, 160(x14) # store value to put something in memory
c.ld x15, 160(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x14, 0xf40bd7af12960c92 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -48 # sub immediate from rs1 to counter offset
c.sd x14, 48(x15) # store value to put something in memory
c.ld x10, 48(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 120)

# Testcase cp_rd (Test destination rd = x8)
li x9, 0x372ec8d877417a4b # initialize rs2
la x11, scratch # base address 
addi x11, x11, -112 # sub immediate from rs1 to counter offset
c.sd x9, 112(x11) # store value to put something in memory
c.ld x8, 112(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cp_rd (Test destination rd = x9)
li x11, 0x01c35f108ecfd9cf # initialize rs2
la x12, scratch # base address 
addi x12, x12, -8 # sub immediate from rs1 to counter offset
c.sd x11, 8(x12) # store value to put something in memory
c.ld x9, 8(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 136)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xf3f77db5a8cf8c90 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -120 # sub immediate from rs1 to counter offset
c.sd x10, 120(x9) # store value to put something in memory
c.ld x10, 120(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 144)

# Testcase cp_rd (Test destination rd = x11)
li x12, 0xd9ea9799e84ad632 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -48 # sub immediate from rs1 to counter offset
c.sd x12, 48(x13) # store value to put something in memory
c.ld x11, 48(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 152)

# Testcase cp_rd (Test destination rd = x12)
li x15, 0xfb3c1ac122821655 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -16 # sub immediate from rs1 to counter offset
c.sd x15, 16(x10) # store value to put something in memory
c.ld x12, 16(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 160)

# Testcase cp_rd (Test destination rd = x13)
li x14, 0x06e7a18953599032 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -192 # sub immediate from rs1 to counter offset
c.sd x14, 192(x9) # store value to put something in memory
c.ld x13, 192(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 168)

# Testcase cp_rd (Test destination rd = x14)
li x13, 0xfc665396b7440845 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -64 # sub immediate from rs1 to counter offset
c.sd x13, 64(x12) # store value to put something in memory
c.ld x14, 64(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 176)

# Testcase cp_rd (Test destination rd = x15)
li x11, 0xcb2e82cee37bf35d # initialize rs2
la x15, scratch # base address 
addi x15, x15, -104 # sub immediate from rs1 to counter offset
c.sd x11, 104(x15) # store value to put something in memory
c.ld x15, 104(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 184)

# Testcase cp_imm_mul
li x14, 0x0040bee658dfe8be # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sd x14, 0(x8) # store value to put something in memory
c.ld x12, 0(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 192)

# Testcase cp_imm_mul
li x12, 0x093e2e62f68e7441 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -8 # sub immediate from rs1 to counter offset
c.sd x12, 8(x13) # store value to put something in memory
c.ld x8, 8(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 200)

# Testcase cp_imm_mul
li x8, 0x5a22c05d01999eaf # initialize rs2
la x9, scratch # base address 
addi x9, x9, -16 # sub immediate from rs1 to counter offset
c.sd x8, 16(x9) # store value to put something in memory
c.ld x14, 16(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 208)

# Testcase cp_imm_mul
li x13, 0x46e60f2d0d3cf2a2 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -24 # sub immediate from rs1 to counter offset
c.sd x13, 24(x12) # store value to put something in memory
c.ld x11, 24(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 216)

# Testcase cp_imm_mul
li x11, 0x722320982c866866 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -32 # sub immediate from rs1 to counter offset
c.sd x11, 32(x9) # store value to put something in memory
c.ld x14, 32(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 224)

# Testcase cp_imm_mul
li x8, 0xa573331776d6fe14 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -40 # sub immediate from rs1 to counter offset
c.sd x8, 40(x9) # store value to put something in memory
c.ld x13, 40(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 232)

# Testcase cp_imm_mul
li x13, 0xd16cf9f3d4092bda # initialize rs2
la x9, scratch # base address 
addi x9, x9, -48 # sub immediate from rs1 to counter offset
c.sd x13, 48(x9) # store value to put something in memory
c.ld x12, 48(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 240)

# Testcase cp_imm_mul
li x10, 0xb757c729ef12575f # initialize rs2
la x15, scratch # base address 
addi x15, x15, -56 # sub immediate from rs1 to counter offset
c.sd x10, 56(x15) # store value to put something in memory
c.ld x12, 56(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 248)

# Testcase cp_imm_mul
li x9, 0xb64072969f95d5f0 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -64 # sub immediate from rs1 to counter offset
c.sd x9, 64(x12) # store value to put something in memory
c.ld x14, 64(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 256)

# Testcase cp_imm_mul
li x9, 0x5a8ed9d72aa6588f # initialize rs2
la x13, scratch # base address 
addi x13, x13, -72 # sub immediate from rs1 to counter offset
c.sd x9, 72(x13) # store value to put something in memory
c.ld x11, 72(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 264)

# Testcase cp_imm_mul
li x10, 0x19350a21765205df # initialize rs2
la x8, scratch # base address 
addi x8, x8, -80 # sub immediate from rs1 to counter offset
c.sd x10, 80(x8) # store value to put something in memory
c.ld x15, 80(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 272)

# Testcase cp_imm_mul
li x11, 0xf13e0b26d41e8ba7 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -88 # sub immediate from rs1 to counter offset
c.sd x11, 88(x8) # store value to put something in memory
c.ld x12, 88(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 280)

# Testcase cp_imm_mul
li x13, 0x3f756786392bfc0c # initialize rs2
la x8, scratch # base address 
addi x8, x8, -96 # sub immediate from rs1 to counter offset
c.sd x13, 96(x8) # store value to put something in memory
c.ld x10, 96(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 288)

# Testcase cp_imm_mul
li x12, 0x6023195f48dde874 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -104 # sub immediate from rs1 to counter offset
c.sd x12, 104(x11) # store value to put something in memory
c.ld x14, 104(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 296)

# Testcase cp_imm_mul
li x14, 0xda01695daa4005e3 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -112 # sub immediate from rs1 to counter offset
c.sd x14, 112(x12) # store value to put something in memory
c.ld x15, 112(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 304)

# Testcase cp_imm_mul
li x15, 0xb1ee6fd5e6227530 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -120 # sub immediate from rs1 to counter offset
c.sd x15, 120(x9) # store value to put something in memory
c.ld x12, 120(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 312)

# Testcase cp_imm_mul
li x9, 0x47a0c19e32638eda # initialize rs2
la x14, scratch # base address 
addi x14, x14, -128 # sub immediate from rs1 to counter offset
c.sd x9, 128(x14) # store value to put something in memory
c.ld x10, 128(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cp_imm_mul
li x10, 0x0a87b6ed4cf676b5 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -136 # sub immediate from rs1 to counter offset
c.sd x10, 136(x8) # store value to put something in memory
c.ld x14, 136(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 328)

# Testcase cp_imm_mul
li x11, 0x2e56830a5c94363a # initialize rs2
la x9, scratch # base address 
addi x9, x9, -144 # sub immediate from rs1 to counter offset
c.sd x11, 144(x9) # store value to put something in memory
c.ld x12, 144(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cp_imm_mul
li x8, 0xca3c79d38622cd54 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -152 # sub immediate from rs1 to counter offset
c.sd x8, 152(x13) # store value to put something in memory
c.ld x10, 152(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cp_imm_mul
li x15, 0x4d5c3dddad6c8725 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -160 # sub immediate from rs1 to counter offset
c.sd x15, 160(x13) # store value to put something in memory
c.ld x11, 160(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 352)

# Testcase cp_imm_mul
li x8, 0xc6f919eaf7250e19 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -168 # sub immediate from rs1 to counter offset
c.sd x8, 168(x11) # store value to put something in memory
c.ld x10, 168(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 360)

# Testcase cp_imm_mul
li x10, 0xa3be383ab0e1b1a5 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -176 # sub immediate from rs1 to counter offset
c.sd x10, 176(x12) # store value to put something in memory
c.ld x13, 176(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 368)

# Testcase cp_imm_mul
li x14, 0xbcb459bcb2e51aab # initialize rs2
la x11, scratch # base address 
addi x11, x11, -184 # sub immediate from rs1 to counter offset
c.sd x14, 184(x11) # store value to put something in memory
c.ld x12, 184(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 376)

# Testcase cp_imm_mul
li x14, 0x4a17914bb62117f3 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -192 # sub immediate from rs1 to counter offset
c.sd x14, 192(x13) # store value to put something in memory
c.ld x15, 192(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 384)

# Testcase cp_imm_mul
li x13, 0x9129335fc4ca427d # initialize rs2
la x11, scratch # base address 
addi x11, x11, -200 # sub immediate from rs1 to counter offset
c.sd x13, 200(x11) # store value to put something in memory
c.ld x8, 200(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 392)

# Testcase cp_imm_mul
li x14, 0x4d23fc409764493e # initialize rs2
la x13, scratch # base address 
addi x13, x13, -208 # sub immediate from rs1 to counter offset
c.sd x14, 208(x13) # store value to put something in memory
c.ld x12, 208(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 400)

# Testcase cp_imm_mul
li x11, 0x42808b554f3db437 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -216 # sub immediate from rs1 to counter offset
c.sd x11, 216(x12) # store value to put something in memory
c.ld x13, 216(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 408)

# Testcase cp_imm_mul
li x13, 0x1835f40f1e2c572e # initialize rs2
la x8, scratch # base address 
addi x8, x8, -224 # sub immediate from rs1 to counter offset
c.sd x13, 224(x8) # store value to put something in memory
c.ld x15, 224(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 416)

# Testcase cp_imm_mul
li x10, 0x1831bed5bbc8c239 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -232 # sub immediate from rs1 to counter offset
c.sd x10, 232(x15) # store value to put something in memory
c.ld x8, 232(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 424)

# Testcase cp_imm_mul
li x9, 0x5d5be7fdd784e023 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -240 # sub immediate from rs1 to counter offset
c.sd x9, 240(x14) # store value to put something in memory
c.ld x12, 240(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 432)

# Testcase cp_imm_mul
li x8, 0x2ffbf5b73391b878 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -248 # sub immediate from rs1 to counter offset
c.sd x8, 248(x11) # store value to put something in memory
c.ld x10, 248(x11) # perform operation
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
