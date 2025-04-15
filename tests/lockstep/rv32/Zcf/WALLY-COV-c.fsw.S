///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zcf/WALLY-COV-c.fsw.S
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
