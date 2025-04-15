///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zca/WALLY-COV-c.addi16sp.S
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

    
# Testcase cp_imm_mul
li x8, 0x15088dd7 # initialize rs1
c.addi16sp sp, -512 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cp_imm_mul
li x17, 0x10248b27 # initialize rs1
c.addi16sp sp, -496 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 4)

# Testcase cp_imm_mul
li x9, 0x466d55d0 # initialize rs1
c.addi16sp sp, -480 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_imm_mul
li x18, 0x035721e2 # initialize rs1
c.addi16sp sp, -464 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 12)

# Testcase cp_imm_mul
li x6, 0x4630457e # initialize rs1
c.addi16sp sp, -448 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 16)

# Testcase cp_imm_mul
li x3, 0xa20aa328 # initialize rs1
c.addi16sp sp, -432 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 20)

# Testcase cp_imm_mul
li x18, 0x5b71ae40 # initialize rs1
c.addi16sp sp, -416 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 24)

# Testcase cp_imm_mul
li x15, 0xa1e9bb60 # initialize rs1
c.addi16sp sp, -400 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 28)

# Testcase cp_imm_mul
li x21, 0xfd903db2 # initialize rs1
c.addi16sp sp, -384 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 32)

# Testcase cp_imm_mul
li x20, 0x191eabf8 # initialize rs1
c.addi16sp sp, -368 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 36)

# Testcase cp_imm_mul
li x24, 0xc7a26f58 # initialize rs1
c.addi16sp sp, -352 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 40)

# Testcase cp_imm_mul
li x24, 0x0262f918 # initialize rs1
c.addi16sp sp, -336 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 44)

# Testcase cp_imm_mul
li x23, 0xd1877d13 # initialize rs1
c.addi16sp sp, -320 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 48)

# Testcase cp_imm_mul
li x16, 0x5befa036 # initialize rs1
c.addi16sp sp, -304 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 52)

# Testcase cp_imm_mul
li x28, 0x41175f47 # initialize rs1
c.addi16sp sp, -288 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 56)

# Testcase cp_imm_mul
li x21, 0x0bfd8394 # initialize rs1
c.addi16sp sp, -272 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 60)

# Testcase cp_imm_mul
li x19, 0xa55893ed # initialize rs1
c.addi16sp sp, -256 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 64)

# Testcase cp_imm_mul
li x29, 0x21d1c94d # initialize rs1
c.addi16sp sp, -240 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 68)

# Testcase cp_imm_mul
li x11, 0x19cc9700 # initialize rs1
c.addi16sp sp, -224 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 72)

# Testcase cp_imm_mul
li x8, 0xb9ba5144 # initialize rs1
c.addi16sp sp, -208 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 76)

# Testcase cp_imm_mul
li x1, 0x741af798 # initialize rs1
c.addi16sp sp, -192 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 80)

# Testcase cp_imm_mul
li x24, 0xa9bbdefe # initialize rs1
c.addi16sp sp, -176 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 84)

# Testcase cp_imm_mul
li x5, 0xb2d0951c # initialize rs1
c.addi16sp sp, -160 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 88)

# Testcase cp_imm_mul
li x17, 0xc021ce64 # initialize rs1
c.addi16sp sp, -144 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 92)

# Testcase cp_imm_mul
li x9, 0xf4139ce6 # initialize rs1
c.addi16sp sp, -128 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 96)

# Testcase cp_imm_mul
li x9, 0x85dab7f4 # initialize rs1
c.addi16sp sp, -112 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 100)

# Testcase cp_imm_mul
li x30, 0xefd05eda # initialize rs1
c.addi16sp sp, -96 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 104)

# Testcase cp_imm_mul
li x16, 0x9609962d # initialize rs1
c.addi16sp sp, -80 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 108)

# Testcase cp_imm_mul
li x12, 0x3c204007 # initialize rs1
c.addi16sp sp, -64 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 112)

# Testcase cp_imm_mul
li x7, 0x55ca6f88 # initialize rs1
c.addi16sp sp, -48 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 116)

# Testcase cp_imm_mul
li x5, 0x6e5e97f1 # initialize rs1
c.addi16sp sp, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 120)

# Testcase cp_imm_mul
li x12, 0xd5f7fead # initialize rs1
c.addi16sp sp, -16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 124)

# Testcase cp_imm_mul
li x8, 0x4106a67c # initialize rs1
c.addi16sp sp, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 128)

# Testcase cp_imm_mul
li x27, 0x28c7d986 # initialize rs1
c.addi16sp sp, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 132)

# Testcase cp_imm_mul
li x25, 0x3310447c # initialize rs1
c.addi16sp sp, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_imm_mul
li x11, 0xa622a2f2 # initialize rs1
c.addi16sp sp, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 140)

# Testcase cp_imm_mul
li x29, 0x6db321cf # initialize rs1
c.addi16sp sp, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 144)

# Testcase cp_imm_mul
li x13, 0x95bf085d # initialize rs1
c.addi16sp sp, 80 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 148)

# Testcase cp_imm_mul
li x11, 0x7ded6149 # initialize rs1
c.addi16sp sp, 96 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 152)

# Testcase cp_imm_mul
li x18, 0xadee526e # initialize rs1
c.addi16sp sp, 112 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 156)

# Testcase cp_imm_mul
li x17, 0xdfd1c6d2 # initialize rs1
c.addi16sp sp, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 160)

# Testcase cp_imm_mul
li x2, 0x0354ed85 # initialize rs1
c.addi16sp sp, 144 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 164)

# Testcase cp_imm_mul
li x13, 0x5267e99f # initialize rs1
c.addi16sp sp, 160 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 168)

# Testcase cp_imm_mul
li x16, 0x91ae58d0 # initialize rs1
c.addi16sp sp, 176 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 172)

# Testcase cp_imm_mul
li x11, 0x7c02204a # initialize rs1
c.addi16sp sp, 192 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 176)

# Testcase cp_imm_mul
li x25, 0x200065f1 # initialize rs1
c.addi16sp sp, 208 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 180)

# Testcase cp_imm_mul
li x21, 0x4b7939ef # initialize rs1
c.addi16sp sp, 224 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 184)

# Testcase cp_imm_mul
li x27, 0x171bee0b # initialize rs1
c.addi16sp sp, 240 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 188)

# Testcase cp_imm_mul
li x13, 0xd709ef7c # initialize rs1
c.addi16sp sp, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 192)

# Testcase cp_imm_mul
li x10, 0xab26f180 # initialize rs1
c.addi16sp sp, 272 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 196)

# Testcase cp_imm_mul
li x30, 0x8ce0a3e5 # initialize rs1
c.addi16sp sp, 288 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 200)

# Testcase cp_imm_mul
li x3, 0x4abad0a6 # initialize rs1
c.addi16sp sp, 304 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 204)

# Testcase cp_imm_mul
li x22, 0xf8dab8cd # initialize rs1
c.addi16sp sp, 320 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 208)

# Testcase cp_imm_mul
li x8, 0xa22c9c56 # initialize rs1
c.addi16sp sp, 336 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 212)

# Testcase cp_imm_mul
li x15, 0xdc89928e # initialize rs1
c.addi16sp sp, 352 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 216)

# Testcase cp_imm_mul
li x24, 0xac741839 # initialize rs1
c.addi16sp sp, 368 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 220)

# Testcase cp_imm_mul
li x25, 0x863a13c6 # initialize rs1
c.addi16sp sp, 384 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 224)

# Testcase cp_imm_mul
li x28, 0x54390d05 # initialize rs1
c.addi16sp sp, 400 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 228)

# Testcase cp_imm_mul
li x17, 0x7261d04f # initialize rs1
c.addi16sp sp, 416 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 232)

# Testcase cp_imm_mul
li x8, 0x9d4ec8a1 # initialize rs1
c.addi16sp sp, 432 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 236)

# Testcase cp_imm_mul
li x17, 0xf5033302 # initialize rs1
c.addi16sp sp, 448 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 240)

# Testcase cp_imm_mul
li x13, 0xf296a4ef # initialize rs1
c.addi16sp sp, 464 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 244)

# Testcase cp_imm_mul
li x7, 0x9e202551 # initialize rs1
c.addi16sp sp, 480 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 248)

# Testcase cp_imm_mul
li x17, 0x19f85a4e # initialize rs1
c.addi16sp sp, 496 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 252)

.EQU SIGSIZE,256


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
