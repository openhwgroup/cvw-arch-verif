///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/F/WALLY-COV-fmv.x.w.S
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


# Testcase cp_rd (Test destination rd = x0)
la x2, scratch
li x3, 0x0e01ba23 # load x3 with value 0x0e01ba23
sw x3, 0(x2) # store 0x0e01ba23 in memory
flw f11, 0(x2) # load 0x0e01ba23 from memory into f11
fmv.x.w x0, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
la x2, scratch
li x3, 0x3d367b9a # load x3 with value 0x3d367b9a
sw x3, 0(x2) # store 0x3d367b9a in memory
flw f19, 0(x2) # load 0x3d367b9a from memory into f19
fmv.x.w x1, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 4)

# Testcase cp_rd (Test destination rd = x2)
la x2, scratch
li x3, 0xacfe0814 # load x3 with value 0xacfe0814
sw x3, 0(x2) # store 0xacfe0814 in memory
flw f12, 0(x2) # load 0xacfe0814 from memory into f12
fmv.x.w x2, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_rd (Test destination rd = x3)
la x2, scratch
li x3, 0xae6cf967 # load x3 with value 0xae6cf967
sw x3, 0(x2) # store 0xae6cf967 in memory
flw f14, 0(x2) # load 0xae6cf967 from memory into f14
fmv.x.w x3, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 12)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xceee420b # load x3 with value 0xceee420b
sw x3, 0(x2) # store 0xceee420b in memory
flw f23, 0(x2) # load 0xceee420b from memory into f23
fmv.x.w x4, f23 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cp_rd (Test destination rd = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x5b324a00 # load x3 with value 0x5b324a00
sw x3, 0(x2) # store 0x5b324a00 in memory
flw f27, 0(x2) # load 0x5b324a00 from memory into f27
fmv.x.w x5, f27 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 20)

# Testcase cp_rd (Test destination rd = x6)
la x2, scratch
li x3, 0xb4e84131 # load x3 with value 0xb4e84131
sw x3, 0(x2) # store 0xb4e84131 in memory
flw f12, 0(x2) # load 0xb4e84131 from memory into f12
fmv.x.w x6, f12 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 24)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x1dc6dc23 # load x3 with value 0x1dc6dc23
sw x3, 0(x2) # store 0x1dc6dc23 in memory
flw f13, 0(x2) # load 0x1dc6dc23 from memory into f13
fmv.x.w x7, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 28)

# Testcase cp_rd (Test destination rd = x8)
la x2, scratch
li x3, 0xf7ecc420 # load x3 with value 0xf7ecc420
sw x3, 0(x2) # store 0xf7ecc420 in memory
flw f5, 0(x2) # load 0xf7ecc420 from memory into f5
fmv.x.w x8, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 32)

# Testcase cp_rd (Test destination rd = x9)
la x2, scratch
li x3, 0x2ff049a1 # load x3 with value 0x2ff049a1
sw x3, 0(x2) # store 0x2ff049a1 in memory
flw f11, 0(x2) # load 0x2ff049a1 from memory into f11
fmv.x.w x9, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 36)

# Testcase cp_rd (Test destination rd = x10)
la x2, scratch
li x3, 0xa52e3466 # load x3 with value 0xa52e3466
sw x3, 0(x2) # store 0xa52e3466 in memory
flw f7, 0(x2) # load 0xa52e3466 from memory into f7
fmv.x.w x10, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 40)

# Testcase cp_rd (Test destination rd = x11)
la x2, scratch
li x3, 0x2581d93a # load x3 with value 0x2581d93a
sw x3, 0(x2) # store 0x2581d93a in memory
flw f6, 0(x2) # load 0x2581d93a from memory into f6
fmv.x.w x11, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 44)

# Testcase cp_rd (Test destination rd = x12)
la x2, scratch
li x3, 0x6ad9c024 # load x3 with value 0x6ad9c024
sw x3, 0(x2) # store 0x6ad9c024 in memory
flw f11, 0(x2) # load 0x6ad9c024 from memory into f11
fmv.x.w x12, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 48)

# Testcase cp_rd (Test destination rd = x13)
la x2, scratch
li x3, 0x1e23041a # load x3 with value 0x1e23041a
sw x3, 0(x2) # store 0x1e23041a in memory
flw f30, 0(x2) # load 0x1e23041a from memory into f30
fmv.x.w x13, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 52)

# Testcase cp_rd (Test destination rd = x14)
la x2, scratch
li x3, 0xafe5342c # load x3 with value 0xafe5342c
sw x3, 0(x2) # store 0xafe5342c in memory
flw f29, 0(x2) # load 0xafe5342c from memory into f29
fmv.x.w x14, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 56)

# Testcase cp_rd (Test destination rd = x15)
la x2, scratch
li x3, 0xe5c99971 # load x3 with value 0xe5c99971
sw x3, 0(x2) # store 0xe5c99971 in memory
flw f23, 0(x2) # load 0xe5c99971 from memory into f23
fmv.x.w x15, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 60)

# Testcase cp_rd (Test destination rd = x16)
la x2, scratch
li x3, 0x0ef5de1c # load x3 with value 0x0ef5de1c
sw x3, 0(x2) # store 0x0ef5de1c in memory
flw f14, 0(x2) # load 0x0ef5de1c from memory into f14
fmv.x.w x16, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 64)

# Testcase cp_rd (Test destination rd = x17)
la x2, scratch
li x3, 0x8ac4288b # load x3 with value 0x8ac4288b
sw x3, 0(x2) # store 0x8ac4288b in memory
flw f12, 0(x2) # load 0x8ac4288b from memory into f12
fmv.x.w x17, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 68)

# Testcase cp_rd (Test destination rd = x18)
la x2, scratch
li x3, 0xb0bca0aa # load x3 with value 0xb0bca0aa
sw x3, 0(x2) # store 0xb0bca0aa in memory
flw f3, 0(x2) # load 0xb0bca0aa from memory into f3
fmv.x.w x18, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 72)

# Testcase cp_rd (Test destination rd = x19)
la x2, scratch
li x3, 0x911bb1f9 # load x3 with value 0x911bb1f9
sw x3, 0(x2) # store 0x911bb1f9 in memory
flw f8, 0(x2) # load 0x911bb1f9 from memory into f8
fmv.x.w x19, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 76)

# Testcase cp_rd (Test destination rd = x20)
la x2, scratch
li x3, 0xc2eabb9f # load x3 with value 0xc2eabb9f
sw x3, 0(x2) # store 0xc2eabb9f in memory
flw f27, 0(x2) # load 0xc2eabb9f from memory into f27
fmv.x.w x20, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 80)

# Testcase cp_rd (Test destination rd = x21)
la x2, scratch
li x3, 0x05a461d2 # load x3 with value 0x05a461d2
sw x3, 0(x2) # store 0x05a461d2 in memory
flw f13, 0(x2) # load 0x05a461d2 from memory into f13
fmv.x.w x21, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 84)

# Testcase cp_rd (Test destination rd = x22)
la x2, scratch
li x3, 0x2ab48367 # load x3 with value 0x2ab48367
sw x3, 0(x2) # store 0x2ab48367 in memory
flw f2, 0(x2) # load 0x2ab48367 from memory into f2
fmv.x.w x22, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 88)

# Testcase cp_rd (Test destination rd = x23)
la x2, scratch
li x3, 0xaaa82a64 # load x3 with value 0xaaa82a64
sw x3, 0(x2) # store 0xaaa82a64 in memory
flw f14, 0(x2) # load 0xaaa82a64 from memory into f14
fmv.x.w x23, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 92)

# Testcase cp_rd (Test destination rd = x24)
la x2, scratch
li x3, 0xd773b740 # load x3 with value 0xd773b740
sw x3, 0(x2) # store 0xd773b740 in memory
flw f9, 0(x2) # load 0xd773b740 from memory into f9
fmv.x.w x24, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 96)

# Testcase cp_rd (Test destination rd = x25)
la x2, scratch
li x3, 0x1cf138ce # load x3 with value 0x1cf138ce
sw x3, 0(x2) # store 0x1cf138ce in memory
flw f23, 0(x2) # load 0x1cf138ce from memory into f23
fmv.x.w x25, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 100)

# Testcase cp_rd (Test destination rd = x26)
la x2, scratch
li x3, 0x3b436eed # load x3 with value 0x3b436eed
sw x3, 0(x2) # store 0x3b436eed in memory
flw f7, 0(x2) # load 0x3b436eed from memory into f7
fmv.x.w x26, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 104)

# Testcase cp_rd (Test destination rd = x27)
la x2, scratch
li x3, 0x084f8d87 # load x3 with value 0x084f8d87
sw x3, 0(x2) # store 0x084f8d87 in memory
flw f23, 0(x2) # load 0x084f8d87 from memory into f23
fmv.x.w x27, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 108)

# Testcase cp_rd (Test destination rd = x28)
la x2, scratch
li x3, 0x77a5e47b # load x3 with value 0x77a5e47b
sw x3, 0(x2) # store 0x77a5e47b in memory
flw f25, 0(x2) # load 0x77a5e47b from memory into f25
fmv.x.w x28, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 112)

# Testcase cp_rd (Test destination rd = x29)
la x2, scratch
li x3, 0xc3efe5f5 # load x3 with value 0xc3efe5f5
sw x3, 0(x2) # store 0xc3efe5f5 in memory
flw f1, 0(x2) # load 0xc3efe5f5 from memory into f1
fmv.x.w x29, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 116)

# Testcase cp_rd (Test destination rd = x30)
la x2, scratch
li x3, 0x1224402a # load x3 with value 0x1224402a
sw x3, 0(x2) # store 0x1224402a in memory
flw f5, 0(x2) # load 0x1224402a from memory into f5
fmv.x.w x30, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 120)

# Testcase cp_rd (Test destination rd = x31)
la x2, scratch
li x3, 0xd1c695a8 # load x3 with value 0xd1c695a8
sw x3, 0(x2) # store 0xd1c695a8 in memory
flw f2, 0(x2) # load 0xd1c695a8 from memory into f2
fmv.x.w x31, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 124)

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x31, x2 # perform first operation
fmv.x.w x21, f29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x19, x16 # perform first operation
fmv.x.w x29, f11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x31, x25 # perform first operation
fmv.x.w x1, f20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
fmul.s f28, f25, f15 # perform first operation
fmv.x.w x28, f21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x3, x1, x14 # perform first operation
fmv.x.w x1, f9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x6, x30 # perform first operation
fmv.x.w x13, f14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x16, x26 # perform first operation
fmv.x.w x21, f23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x21, x12 # perform first operation
fmv.x.w x13, f25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x13, x29 # perform first operation
fmv.x.w x12, f20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x8, x16, x5 # perform first operation
fmv.x.w x8, f10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x3, x30, x9 # perform first operation
fmv.x.w x3, f27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x31, x22, x24 # perform first operation
fmv.x.w x31, f17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x1, x29, x12 # perform first operation
fmv.x.w x29, f19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x15, x22, x20 # perform first operation
fmv.x.w x20, f29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x28, x13, x27 # perform first operation
fmv.x.w x7, f2 # perform second (triggering) operation

# Testcase cp_fs1 (Test source fs1 = f0)
la x2, scratch
li x3, 0x3a5d9f07 # load x3 with value 0x3a5d9f07
sw x3, 0(x2) # store 0x3a5d9f07 in memory
flw f0, 0(x2) # load 0x3a5d9f07 from memory into f0
fmv.x.w x12, f0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 128)

# Testcase cp_fs1 (Test source fs1 = f1)
la x2, scratch
li x3, 0xf27cc218 # load x3 with value 0xf27cc218
sw x3, 0(x2) # store 0xf27cc218 in memory
flw f1, 0(x2) # load 0xf27cc218 from memory into f1
fmv.x.w x26, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 132)

# Testcase cp_fs1 (Test source fs1 = f2)
la x2, scratch
li x3, 0x6f85943b # load x3 with value 0x6f85943b
sw x3, 0(x2) # store 0x6f85943b in memory
flw f2, 0(x2) # load 0x6f85943b from memory into f2
fmv.x.w x15, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 136)

# Testcase cp_fs1 (Test source fs1 = f3)
la x2, scratch
li x3, 0x5a886768 # load x3 with value 0x5a886768
sw x3, 0(x2) # store 0x5a886768 in memory
flw f3, 0(x2) # load 0x5a886768 from memory into f3
fmv.x.w x13, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 140)

# Testcase cp_fs1 (Test source fs1 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xd3dff421 # load x3 with value 0xd3dff421
sw x3, 0(x2) # store 0xd3dff421 in memory
flw f4, 0(x2) # load 0xd3dff421 from memory into f4
fmv.x.w x8, f4 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 144)

# Testcase cp_fs1 (Test source fs1 = f5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x3d78a9ea # load x3 with value 0x3d78a9ea
sw x3, 0(x2) # store 0x3d78a9ea in memory
flw f5, 0(x2) # load 0x3d78a9ea from memory into f5
fmv.x.w x13, f5 # perform operation
RVTEST_SIGUPD(x7, x0, x13, 148)

# Testcase cp_fs1 (Test source fs1 = f6)
la x2, scratch
li x3, 0x64075183 # load x3 with value 0x64075183
sw x3, 0(x2) # store 0x64075183 in memory
flw f6, 0(x2) # load 0x64075183 from memory into f6
fmv.x.w x26, f6 # perform operation
RVTEST_SIGUPD(x7, x0, x26, 152)

# Testcase cp_fs1 (Test source fs1 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xa0d6ff55 # load x3 with value 0xa0d6ff55
sw x3, 0(x2) # store 0xa0d6ff55 in memory
flw f7, 0(x2) # load 0xa0d6ff55 from memory into f7
fmv.x.w x9, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 156)

# Testcase cp_fs1 (Test source fs1 = f8)
la x2, scratch
li x3, 0x7352782c # load x3 with value 0x7352782c
sw x3, 0(x2) # store 0x7352782c in memory
flw f8, 0(x2) # load 0x7352782c from memory into f8
fmv.x.w x14, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 160)

# Testcase cp_fs1 (Test source fs1 = f9)
la x2, scratch
li x3, 0x01b41c6c # load x3 with value 0x01b41c6c
sw x3, 0(x2) # store 0x01b41c6c in memory
flw f9, 0(x2) # load 0x01b41c6c from memory into f9
fmv.x.w x8, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 164)

# Testcase cp_fs1 (Test source fs1 = f10)
la x2, scratch
li x3, 0x36fc1ce0 # load x3 with value 0x36fc1ce0
sw x3, 0(x2) # store 0x36fc1ce0 in memory
flw f10, 0(x2) # load 0x36fc1ce0 from memory into f10
fmv.x.w x16, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 168)

# Testcase cp_fs1 (Test source fs1 = f11)
la x2, scratch
li x3, 0x1aef2274 # load x3 with value 0x1aef2274
sw x3, 0(x2) # store 0x1aef2274 in memory
flw f11, 0(x2) # load 0x1aef2274 from memory into f11
fmv.x.w x13, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 172)

# Testcase cp_fs1 (Test source fs1 = f12)
la x2, scratch
li x3, 0x90043cbc # load x3 with value 0x90043cbc
sw x3, 0(x2) # store 0x90043cbc in memory
flw f12, 0(x2) # load 0x90043cbc from memory into f12
fmv.x.w x13, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 176)

# Testcase cp_fs1 (Test source fs1 = f13)
la x2, scratch
li x3, 0x66c78101 # load x3 with value 0x66c78101
sw x3, 0(x2) # store 0x66c78101 in memory
flw f13, 0(x2) # load 0x66c78101 from memory into f13
fmv.x.w x31, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 180)

# Testcase cp_fs1 (Test source fs1 = f14)
la x2, scratch
li x3, 0x82a0a479 # load x3 with value 0x82a0a479
sw x3, 0(x2) # store 0x82a0a479 in memory
flw f14, 0(x2) # load 0x82a0a479 from memory into f14
fmv.x.w x26, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 184)

# Testcase cp_fs1 (Test source fs1 = f15)
la x2, scratch
li x3, 0xc7c93179 # load x3 with value 0xc7c93179
sw x3, 0(x2) # store 0xc7c93179 in memory
flw f15, 0(x2) # load 0xc7c93179 from memory into f15
fmv.x.w x31, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 188)

# Testcase cp_fs1 (Test source fs1 = f16)
la x2, scratch
li x3, 0x5ce524c4 # load x3 with value 0x5ce524c4
sw x3, 0(x2) # store 0x5ce524c4 in memory
flw f16, 0(x2) # load 0x5ce524c4 from memory into f16
fmv.x.w x10, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 192)

# Testcase cp_fs1 (Test source fs1 = f17)
la x2, scratch
li x3, 0x9bf8140a # load x3 with value 0x9bf8140a
sw x3, 0(x2) # store 0x9bf8140a in memory
flw f17, 0(x2) # load 0x9bf8140a from memory into f17
fmv.x.w x3, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 196)

# Testcase cp_fs1 (Test source fs1 = f18)
la x2, scratch
li x3, 0x27d5a438 # load x3 with value 0x27d5a438
sw x3, 0(x2) # store 0x27d5a438 in memory
flw f18, 0(x2) # load 0x27d5a438 from memory into f18
fmv.x.w x14, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 200)

# Testcase cp_fs1 (Test source fs1 = f19)
la x2, scratch
li x3, 0xda2f8ac5 # load x3 with value 0xda2f8ac5
sw x3, 0(x2) # store 0xda2f8ac5 in memory
flw f19, 0(x2) # load 0xda2f8ac5 from memory into f19
fmv.x.w x13, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 204)

# Testcase cp_fs1 (Test source fs1 = f20)
la x2, scratch
li x3, 0xf0bf3906 # load x3 with value 0xf0bf3906
sw x3, 0(x2) # store 0xf0bf3906 in memory
flw f20, 0(x2) # load 0xf0bf3906 from memory into f20
fmv.x.w x9, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 208)

# Testcase cp_fs1 (Test source fs1 = f21)
la x2, scratch
li x3, 0xe5ca17c8 # load x3 with value 0xe5ca17c8
sw x3, 0(x2) # store 0xe5ca17c8 in memory
flw f21, 0(x2) # load 0xe5ca17c8 from memory into f21
fmv.x.w x27, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 212)

# Testcase cp_fs1 (Test source fs1 = f22)
la x2, scratch
li x3, 0x82621343 # load x3 with value 0x82621343
sw x3, 0(x2) # store 0x82621343 in memory
flw f22, 0(x2) # load 0x82621343 from memory into f22
fmv.x.w x30, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 216)

# Testcase cp_fs1 (Test source fs1 = f23)
la x2, scratch
li x3, 0x849d0c3d # load x3 with value 0x849d0c3d
sw x3, 0(x2) # store 0x849d0c3d in memory
flw f23, 0(x2) # load 0x849d0c3d from memory into f23
fmv.x.w x2, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 220)

# Testcase cp_fs1 (Test source fs1 = f24)
la x2, scratch
li x3, 0xc652ccbd # load x3 with value 0xc652ccbd
sw x3, 0(x2) # store 0xc652ccbd in memory
flw f24, 0(x2) # load 0xc652ccbd from memory into f24
fmv.x.w x2, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 224)

# Testcase cp_fs1 (Test source fs1 = f25)
la x2, scratch
li x3, 0xb3e7bb6c # load x3 with value 0xb3e7bb6c
sw x3, 0(x2) # store 0xb3e7bb6c in memory
flw f25, 0(x2) # load 0xb3e7bb6c from memory into f25
fmv.x.w x23, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 228)

# Testcase cp_fs1 (Test source fs1 = f26)
la x2, scratch
li x3, 0x7fce7b69 # load x3 with value 0x7fce7b69
sw x3, 0(x2) # store 0x7fce7b69 in memory
flw f26, 0(x2) # load 0x7fce7b69 from memory into f26
fmv.x.w x13, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 232)

# Testcase cp_fs1 (Test source fs1 = f27)
la x2, scratch
li x3, 0x15c21450 # load x3 with value 0x15c21450
sw x3, 0(x2) # store 0x15c21450 in memory
flw f27, 0(x2) # load 0x15c21450 from memory into f27
fmv.x.w x31, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 236)

# Testcase cp_fs1 (Test source fs1 = f28)
la x2, scratch
li x3, 0x5e41f6bb # load x3 with value 0x5e41f6bb
sw x3, 0(x2) # store 0x5e41f6bb in memory
flw f28, 0(x2) # load 0x5e41f6bb from memory into f28
fmv.x.w x27, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 240)

# Testcase cp_fs1 (Test source fs1 = f29)
la x2, scratch
li x3, 0x39009c29 # load x3 with value 0x39009c29
sw x3, 0(x2) # store 0x39009c29 in memory
flw f29, 0(x2) # load 0x39009c29 from memory into f29
fmv.x.w x17, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 244)

# Testcase cp_fs1 (Test source fs1 = f30)
la x2, scratch
li x3, 0xead2a03e # load x3 with value 0xead2a03e
sw x3, 0(x2) # store 0xead2a03e in memory
flw f30, 0(x2) # load 0xead2a03e from memory into f30
fmv.x.w x18, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 248)

# Testcase cp_fs1 (Test source fs1 = f31)
la x2, scratch
li x3, 0xe9931516 # load x3 with value 0xe9931516
sw x3, 0(x2) # store 0xe9931516 in memory
flw f31, 0(x2) # load 0xe9931516 from memory into f31
fmv.x.w x9, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 252)

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f5, 0(x2) # load 0x00000000 from memory into f5
fmv.x.w x3, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 256)

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f15, 0(x2) # load 0x80000000 from memory into f15
fmv.x.w x5, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 260)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f19, 0(x2) # load 0x3f800000 from memory into f19
fmv.x.w x24, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 264)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f27, 0(x2) # load 0xbf800000 from memory into f27
fmv.x.w x16, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 268)

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f22, 0(x2) # load 0x3fc00000 from memory into f22
fmv.x.w x3, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 272)

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f12, 0(x2) # load 0xbfc00000 from memory into f12
fmv.x.w x26, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 276)

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f11, 0(x2) # load 0x40000000 from memory into f11
fmv.x.w x18, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 280)

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f26, 0(x2) # load 0xc0000000 from memory into f26
fmv.x.w x29, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 284)

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f17, 0(x2) # load 0x00800000 from memory into f17
fmv.x.w x18, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 288)

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f30, 0(x2) # load 0x80800000 from memory into f30
fmv.x.w x9, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f9, 0(x2) # load 0x7f7fffff from memory into f9
fmv.x.w x24, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 296)

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f21, 0(x2) # load 0xff7fffff from memory into f21
fmv.x.w x11, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f8, 0(x2) # load 0x007fffff from memory into f8
fmv.x.w x19, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 304)

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f1, 0(x2) # load 0x807fffff from memory into f1
fmv.x.w x24, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 308)

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f24, 0(x2) # load 0x00400000 from memory into f24
fmv.x.w x18, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 312)

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f26, 0(x2) # load 0x80400000 from memory into f26
fmv.x.w x8, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 316)

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f2, 0(x2) # load 0x00000001 from memory into f2
fmv.x.w x12, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 320)

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f31, 0(x2) # load 0x80000001 from memory into f31
fmv.x.w x5, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 324)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f11, 0(x2) # load 0x7f800000 from memory into f11
fmv.x.w x5, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 328)

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f10, 0(x2) # load 0xff800000 from memory into f10
fmv.x.w x30, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 332)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f21, 0(x2) # load 0x7fc00000 from memory into f21
fmv.x.w x8, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f25, 0(x2) # load 0x7fffffff from memory into f25
fmv.x.w x28, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 340)

# Testcase cp_fs1_corners (Test source fs1 value = 0xffffffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff # load x3 with value 0xffffffff
sw x3, 0(x2) # store 0xffffffff in memory
flw f9, 0(x2) # load 0xffffffff from memory into f9
fmv.x.w x30, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 344)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f18, 0(x2) # load 0x7f800001 from memory into f18
fmv.x.w x31, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 348)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f27, 0(x2) # load 0x7fbfffff from memory into f27
fmv.x.w x23, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 352)

# Testcase cp_fs1_corners (Test source fs1 value = 0xffbfffff)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffbfffff # load x3 with value 0xffbfffff
sw x3, 0(x2) # store 0xffbfffff in memory
flw f8, 0(x2) # load 0xffbfffff from memory into f8
fmv.x.w x28, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 356)

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f5, 0(x2) # load 0x7ef8654f from memory into f5
fmv.x.w x30, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 360)

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f28, 0(x2) # load 0x813d9ab0 from memory into f28
fmv.x.w x5, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 364)

.EQU SIGSIZE,368


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
