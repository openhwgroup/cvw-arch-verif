///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zfhmin/WALLY-COV-fsh.S
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


# Testcase cp_rs1 (Test source rs1 = x1)
la x2, scratch
li x3, 0x1c42f68f04322139 # load x3 with value 0x1c42f68f04322139
sw x3, 0(x2) # store 0x1c42f68f04322139 in memory
flh f3, 0(x2) # load 0x1c42f68f04322139 from memory into f3
la x1, scratch # base address
addi x1, x1, 869 # sub immediate from rs1 to counter offset
fsh f3, -869(x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
la x2, scratch
li x3, 0x5d3d05b7dcf6d233 # load x3 with value 0x5d3d05b7dcf6d233
sw x3, 0(x2) # store 0x5d3d05b7dcf6d233 in memory
flh f11, 0(x2) # load 0x5d3d05b7dcf6d233 from memory into f11
la x2, scratch # base address
addi x2, x2, 1622 # sub immediate from rs1 to counter offset
fsh f11, -1622(x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
la x2, scratch
li x3, 0x5eab9e0d1e3432cd # load x3 with value 0x5eab9e0d1e3432cd
sw x3, 0(x2) # store 0x5eab9e0d1e3432cd in memory
flh f11, 0(x2) # load 0x5eab9e0d1e3432cd from memory into f11
la x3, scratch # base address
addi x3, x3, 499 # sub immediate from rs1 to counter offset
fsh f11, -499(x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xa43d2ef5ddb5b692 # load x3 with value 0xa43d2ef5ddb5b692
sw x3, 0(x2) # store 0xa43d2ef5ddb5b692 in memory
flh f7, 0(x2) # load 0xa43d2ef5ddb5b692 from memory into f7
la x4, scratch # base address
addi x4, x4, -472 # sub immediate from rs1 to counter offset
fsh f7, 472(x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xf503cece12156b68 # load x3 with value 0xf503cece12156b68
sw x3, 0(x2) # store 0xf503cece12156b68 in memory
flh f27, 0(x2) # load 0xf503cece12156b68 from memory into f27
la x5, scratch # base address
addi x5, x5, 1726 # sub immediate from rs1 to counter offset
fsh f27, -1726(x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x86ef46f4d16bb3c4 # load x3 with value 0x86ef46f4d16bb3c4
sw x3, 0(x2) # store 0x86ef46f4d16bb3c4 in memory
flh f12, 0(x2) # load 0x86ef46f4d16bb3c4 from memory into f12
la x6, scratch # base address
addi x6, x6, -704 # sub immediate from rs1 to counter offset
fsh f12, 704(x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x56b9f6fc945a612f # load x3 with value 0x56b9f6fc945a612f
sw x3, 0(x2) # store 0x56b9f6fc945a612f in memory
flh f18, 0(x2) # load 0x56b9f6fc945a612f from memory into f18
la x7, scratch # base address
addi x7, x7, -331 # sub immediate from rs1 to counter offset
fsh f18, 331(x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
la x2, scratch
li x3, 0x865cf9d1d88c8b17 # load x3 with value 0x865cf9d1d88c8b17
sw x3, 0(x2) # store 0x865cf9d1d88c8b17 in memory
flh f29, 0(x2) # load 0x865cf9d1d88c8b17 from memory into f29
la x8, scratch # base address
addi x8, x8, 620 # sub immediate from rs1 to counter offset
fsh f29, -620(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
la x2, scratch
li x3, 0x324162deedcbdddc # load x3 with value 0x324162deedcbdddc
sw x3, 0(x2) # store 0x324162deedcbdddc in memory
flh f25, 0(x2) # load 0x324162deedcbdddc from memory into f25
la x9, scratch # base address
addi x9, x9, 249 # sub immediate from rs1 to counter offset
fsh f25, -249(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
la x2, scratch
li x3, 0xdf2b5ea5642ec83a # load x3 with value 0xdf2b5ea5642ec83a
sw x3, 0(x2) # store 0xdf2b5ea5642ec83a in memory
flh f22, 0(x2) # load 0xdf2b5ea5642ec83a from memory into f22
la x10, scratch # base address
addi x10, x10, 1094 # sub immediate from rs1 to counter offset
fsh f22, -1094(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
la x2, scratch
li x3, 0x9a95b307aa79353c # load x3 with value 0x9a95b307aa79353c
sw x3, 0(x2) # store 0x9a95b307aa79353c in memory
flh f27, 0(x2) # load 0x9a95b307aa79353c from memory into f27
la x11, scratch # base address
addi x11, x11, 973 # sub immediate from rs1 to counter offset
fsh f27, -973(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
la x2, scratch
li x3, 0x29eb00bc50d34196 # load x3 with value 0x29eb00bc50d34196
sw x3, 0(x2) # store 0x29eb00bc50d34196 in memory
flh f30, 0(x2) # load 0x29eb00bc50d34196 from memory into f30
la x12, scratch # base address
addi x12, x12, -1435 # sub immediate from rs1 to counter offset
fsh f30, 1435(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
la x2, scratch
li x3, 0x919d1422fa30ed3 # load x3 with value 0x919d1422fa30ed3
sw x3, 0(x2) # store 0x919d1422fa30ed3 in memory
flh f9, 0(x2) # load 0x919d1422fa30ed3 from memory into f9
la x13, scratch # base address
addi x13, x13, -107 # sub immediate from rs1 to counter offset
fsh f9, 107(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
la x2, scratch
li x3, 0xa4665036eb815052 # load x3 with value 0xa4665036eb815052
sw x3, 0(x2) # store 0xa4665036eb815052 in memory
flh f28, 0(x2) # load 0xa4665036eb815052 from memory into f28
la x14, scratch # base address
addi x14, x14, 1163 # sub immediate from rs1 to counter offset
fsh f28, -1163(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
la x2, scratch
li x3, 0x7e2355a357e9adc3 # load x3 with value 0x7e2355a357e9adc3
sw x3, 0(x2) # store 0x7e2355a357e9adc3 in memory
flh f20, 0(x2) # load 0x7e2355a357e9adc3 from memory into f20
la x15, scratch # base address
addi x15, x15, 505 # sub immediate from rs1 to counter offset
fsh f20, -505(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
la x2, scratch
li x3, 0xfd85c0996ecc4a29 # load x3 with value 0xfd85c0996ecc4a29
sw x3, 0(x2) # store 0xfd85c0996ecc4a29 in memory
flh f24, 0(x2) # load 0xfd85c0996ecc4a29 from memory into f24
la x16, scratch # base address
addi x16, x16, 559 # sub immediate from rs1 to counter offset
fsh f24, -559(x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
la x2, scratch
li x3, 0x69bfa832582885e1 # load x3 with value 0x69bfa832582885e1
sw x3, 0(x2) # store 0x69bfa832582885e1 in memory
flh f3, 0(x2) # load 0x69bfa832582885e1 from memory into f3
la x17, scratch # base address
addi x17, x17, -199 # sub immediate from rs1 to counter offset
fsh f3, 199(x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
la x2, scratch
li x3, 0xf13f67e1a985bd41 # load x3 with value 0xf13f67e1a985bd41
sw x3, 0(x2) # store 0xf13f67e1a985bd41 in memory
flh f3, 0(x2) # load 0xf13f67e1a985bd41 from memory into f3
la x18, scratch # base address
addi x18, x18, 313 # sub immediate from rs1 to counter offset
fsh f3, -313(x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
la x2, scratch
li x3, 0x6f3c4e4a5e8da8b9 # load x3 with value 0x6f3c4e4a5e8da8b9
sw x3, 0(x2) # store 0x6f3c4e4a5e8da8b9 in memory
flh f9, 0(x2) # load 0x6f3c4e4a5e8da8b9 from memory into f9
la x19, scratch # base address
addi x19, x19, -905 # sub immediate from rs1 to counter offset
fsh f9, 905(x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
la x2, scratch
li x3, 0x9c5586a20806abc9 # load x3 with value 0x9c5586a20806abc9
sw x3, 0(x2) # store 0x9c5586a20806abc9 in memory
flh f26, 0(x2) # load 0x9c5586a20806abc9 from memory into f26
la x20, scratch # base address
addi x20, x20, 1176 # sub immediate from rs1 to counter offset
fsh f26, -1176(x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
la x2, scratch
li x3, 0x5dd0ef4b6ccf68d7 # load x3 with value 0x5dd0ef4b6ccf68d7
sw x3, 0(x2) # store 0x5dd0ef4b6ccf68d7 in memory
flh f14, 0(x2) # load 0x5dd0ef4b6ccf68d7 from memory into f14
la x21, scratch # base address
addi x21, x21, 1785 # sub immediate from rs1 to counter offset
fsh f14, -1785(x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
la x2, scratch
li x3, 0x504a92a721e7695 # load x3 with value 0x504a92a721e7695
sw x3, 0(x2) # store 0x504a92a721e7695 in memory
flh f23, 0(x2) # load 0x504a92a721e7695 from memory into f23
la x22, scratch # base address
addi x22, x22, 134 # sub immediate from rs1 to counter offset
fsh f23, -134(x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
la x2, scratch
li x3, 0xdb4bc461c9e2e988 # load x3 with value 0xdb4bc461c9e2e988
sw x3, 0(x2) # store 0xdb4bc461c9e2e988 in memory
flh f30, 0(x2) # load 0xdb4bc461c9e2e988 from memory into f30
la x23, scratch # base address
addi x23, x23, 898 # sub immediate from rs1 to counter offset
fsh f30, -898(x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
la x2, scratch
li x3, 0xdcd89225cc8549b1 # load x3 with value 0xdcd89225cc8549b1
sw x3, 0(x2) # store 0xdcd89225cc8549b1 in memory
flh f26, 0(x2) # load 0xdcd89225cc8549b1 from memory into f26
la x24, scratch # base address
addi x24, x24, 1200 # sub immediate from rs1 to counter offset
fsh f26, -1200(x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
la x2, scratch
li x3, 0x5a531d9c774fd302 # load x3 with value 0x5a531d9c774fd302
sw x3, 0(x2) # store 0x5a531d9c774fd302 in memory
flh f19, 0(x2) # load 0x5a531d9c774fd302 from memory into f19
la x25, scratch # base address
addi x25, x25, -866 # sub immediate from rs1 to counter offset
fsh f19, 866(x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
la x2, scratch
li x3, 0x421f8a1adc50e971 # load x3 with value 0x421f8a1adc50e971
sw x3, 0(x2) # store 0x421f8a1adc50e971 in memory
flh f13, 0(x2) # load 0x421f8a1adc50e971 from memory into f13
la x26, scratch # base address
addi x26, x26, -1366 # sub immediate from rs1 to counter offset
fsh f13, 1366(x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
la x2, scratch
li x3, 0x1481e8a81112c72c # load x3 with value 0x1481e8a81112c72c
sw x3, 0(x2) # store 0x1481e8a81112c72c in memory
flh f7, 0(x2) # load 0x1481e8a81112c72c from memory into f7
la x27, scratch # base address
addi x27, x27, -1473 # sub immediate from rs1 to counter offset
fsh f7, 1473(x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
la x2, scratch
li x3, 0x8ea60df3f8d36145 # load x3 with value 0x8ea60df3f8d36145
sw x3, 0(x2) # store 0x8ea60df3f8d36145 in memory
flh f22, 0(x2) # load 0x8ea60df3f8d36145 from memory into f22
la x28, scratch # base address
addi x28, x28, -1131 # sub immediate from rs1 to counter offset
fsh f22, 1131(x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
la x2, scratch
li x3, 0x8484341e417e3190 # load x3 with value 0x8484341e417e3190
sw x3, 0(x2) # store 0x8484341e417e3190 in memory
flh f5, 0(x2) # load 0x8484341e417e3190 from memory into f5
la x29, scratch # base address
addi x29, x29, 618 # sub immediate from rs1 to counter offset
fsh f5, -618(x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
la x2, scratch
li x3, 0x8f72c95b287a5fa5 # load x3 with value 0x8f72c95b287a5fa5
sw x3, 0(x2) # store 0x8f72c95b287a5fa5 in memory
flh f15, 0(x2) # load 0x8f72c95b287a5fa5 from memory into f15
la x30, scratch # base address
addi x30, x30, -1833 # sub immediate from rs1 to counter offset
fsh f15, 1833(x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
la x2, scratch
li x3, 0x56aa46e663c7eed8 # load x3 with value 0x56aa46e663c7eed8
sw x3, 0(x2) # store 0x56aa46e663c7eed8 in memory
flh f1, 0(x2) # load 0x56aa46e663c7eed8 from memory into f1
la x31, scratch # base address
addi x31, x31, 1759 # sub immediate from rs1 to counter offset
fsh f1, -1759(x31) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x60aa229f12016846 # load x3 with value 0x60aa229f12016846
sw x3, 0(x2) # store 0x60aa229f12016846 in memory
flh f3, 0(x2) # load 0x60aa229f12016846 from memory into f3
la x10, scratch # base address
addi x10, x10, 0 # sub immediate from rs1 to counter offset
fsh f3, 0(x10) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x7592f87f388b64e2 # load x3 with value 0x7592f87f388b64e2
sw x3, 0(x2) # store 0x7592f87f388b64e2 in memory
flh f19, 0(x2) # load 0x7592f87f388b64e2 from memory into f19
la x16, scratch # base address
addi x16, x16, -1 # sub immediate from rs1 to counter offset
fsh f19, 1(x16) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xc464c3f41f29a0a7 # load x3 with value 0xc464c3f41f29a0a7
sw x3, 0(x2) # store 0xc464c3f41f29a0a7 in memory
flh f21, 0(x2) # load 0xc464c3f41f29a0a7 from memory into f21
la x24, scratch # base address
addi x24, x24, -2 # sub immediate from rs1 to counter offset
fsh f21, 2(x24) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x24d9cae7a1bfe230 # load x3 with value 0x24d9cae7a1bfe230
sw x3, 0(x2) # store 0x24d9cae7a1bfe230 in memory
flh f24, 0(x2) # load 0x24d9cae7a1bfe230 from memory into f24
la x21, scratch # base address
addi x21, x21, -3 # sub immediate from rs1 to counter offset
fsh f24, 3(x21) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x5677f94b0b4d8a48 # load x3 with value 0x5677f94b0b4d8a48
sw x3, 0(x2) # store 0x5677f94b0b4d8a48 in memory
flh f12, 0(x2) # load 0x5677f94b0b4d8a48 from memory into f12
la x3, scratch # base address
addi x3, x3, -4 # sub immediate from rs1 to counter offset
fsh f12, 4(x3) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xbb9539f751123767 # load x3 with value 0xbb9539f751123767
sw x3, 0(x2) # store 0xbb9539f751123767 in memory
flh f2, 0(x2) # load 0xbb9539f751123767 from memory into f2
la x1, scratch # base address
addi x1, x1, -8 # sub immediate from rs1 to counter offset
fsh f2, 8(x1) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x2d6b54ce011ed34e # load x3 with value 0x2d6b54ce011ed34e
sw x3, 0(x2) # store 0x2d6b54ce011ed34e in memory
flh f29, 0(x2) # load 0x2d6b54ce011ed34e from memory into f29
la x12, scratch # base address
addi x12, x12, -16 # sub immediate from rs1 to counter offset
fsh f29, 16(x12) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xb3618b04554005fa # load x3 with value 0xb3618b04554005fa
sw x3, 0(x2) # store 0xb3618b04554005fa in memory
flh f18, 0(x2) # load 0xb3618b04554005fa from memory into f18
la x5, scratch # base address
addi x5, x5, -32 # sub immediate from rs1 to counter offset
fsh f18, 32(x5) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xef89ba33e2e20c9e # load x3 with value 0xef89ba33e2e20c9e
sw x3, 0(x2) # store 0xef89ba33e2e20c9e in memory
flh f25, 0(x2) # load 0xef89ba33e2e20c9e from memory into f25
la x28, scratch # base address
addi x28, x28, -64 # sub immediate from rs1 to counter offset
fsh f25, 64(x28) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xe17fbcac17a7902b # load x3 with value 0xe17fbcac17a7902b
sw x3, 0(x2) # store 0xe17fbcac17a7902b in memory
flh f21, 0(x2) # load 0xe17fbcac17a7902b from memory into f21
la x26, scratch # base address
addi x26, x26, -128 # sub immediate from rs1 to counter offset
fsh f21, 128(x26) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x1b5793c337771f5c # load x3 with value 0x1b5793c337771f5c
sw x3, 0(x2) # store 0x1b5793c337771f5c in memory
flh f23, 0(x2) # load 0x1b5793c337771f5c from memory into f23
la x24, scratch # base address
addi x24, x24, -256 # sub immediate from rs1 to counter offset
fsh f23, 256(x24) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xb2f2f8e991687f94 # load x3 with value 0xb2f2f8e991687f94
sw x3, 0(x2) # store 0xb2f2f8e991687f94 in memory
flh f19, 0(x2) # load 0xb2f2f8e991687f94 from memory into f19
la x12, scratch # base address
addi x12, x12, -512 # sub immediate from rs1 to counter offset
fsh f19, 512(x12) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x2f3e0be2a957b865 # load x3 with value 0x2f3e0be2a957b865
sw x3, 0(x2) # store 0x2f3e0be2a957b865 in memory
flh f8, 0(x2) # load 0x2f3e0be2a957b865 from memory into f8
la x26, scratch # base address
addi x26, x26, -1023 # sub immediate from rs1 to counter offset
fsh f8, 1023(x26) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xeeb93217df273df7 # load x3 with value 0xeeb93217df273df7
sw x3, 0(x2) # store 0xeeb93217df273df7 in memory
flh f16, 0(x2) # load 0xeeb93217df273df7 from memory into f16
la x1, scratch # base address
addi x1, x1, -1024 # sub immediate from rs1 to counter offset
fsh f16, 1024(x1) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x582d08b9f228f27b # load x3 with value 0x582d08b9f228f27b
sw x3, 0(x2) # store 0x582d08b9f228f27b in memory
flh f20, 0(x2) # load 0x582d08b9f228f27b from memory into f20
la x23, scratch # base address
addi x23, x23, -1795 # sub immediate from rs1 to counter offset
fsh f20, 1795(x23) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xc5a23ce03ce6fac9 # load x3 with value 0xc5a23ce03ce6fac9
sw x3, 0(x2) # store 0xc5a23ce03ce6fac9 in memory
flh f14, 0(x2) # load 0xc5a23ce03ce6fac9 from memory into f14
la x2, scratch # base address
addi x2, x2, -2047 # sub immediate from rs1 to counter offset
fsh f14, 2047(x2) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x3c177ae68e50fee5 # load x3 with value 0x3c177ae68e50fee5
sw x3, 0(x2) # store 0x3c177ae68e50fee5 in memory
flh f8, 0(x2) # load 0x3c177ae68e50fee5 from memory into f8
la x29, scratch # base address
addi x29, x29, 2047 # increment rs1 by 2047 
addi x29, x29, 1 # increment rs1 to bump it by a total of 2048 to compensate for -2048
fsh f8, -2048(x29) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xc752188d50f465e9 # load x3 with value 0xc752188d50f465e9
sw x3, 0(x2) # store 0xc752188d50f465e9 in memory
flh f23, 0(x2) # load 0xc752188d50f465e9 from memory into f23
la x6, scratch # base address
addi x6, x6, 2047 # sub immediate from rs1 to counter offset
fsh f23, -2047(x6) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x96d241409dda0b34 # load x3 with value 0x96d241409dda0b34
sw x3, 0(x2) # store 0x96d241409dda0b34 in memory
flh f20, 0(x2) # load 0x96d241409dda0b34 from memory into f20
la x3, scratch # base address
addi x3, x3, 2 # sub immediate from rs1 to counter offset
fsh f20, -2(x3) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x33522d9dc9026c29 # load x3 with value 0x33522d9dc9026c29
sw x3, 0(x2) # store 0x33522d9dc9026c29 in memory
flh f7, 0(x2) # load 0x33522d9dc9026c29 from memory into f7
la x23, scratch # base address
addi x23, x23, 1 # sub immediate from rs1 to counter offset
fsh f7, -1(x23) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x24, scratch
addi x24, x24, -648
add x27, x30, x28 # perform first operation
fsh f11, 648(x24) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x29, scratch
addi x29, x29, -708
add x30, x6, x28 # perform first operation
fsh f9, 708(x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x2, scratch
addi x2, x2, -210
add x15, x3, x1 # perform first operation
fsh f11, 210(x2) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x9, scratch
addi x9, x9, 1097
add x9, x9, x0 # perform first operation
fsh f3, -1097(x9) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x15, scratch
addi x15, x15, 1308
fmul.s f5, f5, f0 # perform first operation
fsh f5, -1308(x15) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x24, scratch
addi x24, x24, -2020
add x10, x10, x0 # perform first operation
fsh f11, 2020(x24) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x25, scratch
addi x25, x25, 1122
add x10, x12, x27 # perform first operation
fsh f24, -1122(x25) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x29, scratch
addi x29, x29, 411
add x25, x21, x7 # perform first operation
fsh f11, -411(x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x29, scratch
addi x29, x29, 777
add x8, x26, x24 # perform first operation
fsh f1, -777(x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x6, scratch
addi x6, x6, -564
add x28, x28, x0 # perform first operation
fsh f1, 564(x6) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x19, scratch
addi x19, x19, 1161
fmul.s f2, f2, f0 # perform first operation
fsh f2, -1161(x19) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x12, scratch
addi x12, x12, 1849
add x13, x13, x0 # perform first operation
fsh f29, -1849(x12) # perform second (triggering) operation

# Testcase cp_fs2 (Test source fs2 = f0)
la x2, scratch
li x3, 0xa3828a469e71bc3d # load x3 with value 0xa3828a469e71bc3d
sw x3, 0(x2) # store 0xa3828a469e71bc3d in memory
flh f0, 0(x2) # load 0xa3828a469e71bc3d from memory into f0
la x15, scratch # base address
addi x15, x15, 871 # sub immediate from rs1 to counter offset
fsh f0, -871(x15) # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
la x2, scratch
li x3, 0x9f4bc36b283c8cd6 # load x3 with value 0x9f4bc36b283c8cd6
sw x3, 0(x2) # store 0x9f4bc36b283c8cd6 in memory
flh f1, 0(x2) # load 0x9f4bc36b283c8cd6 from memory into f1
la x8, scratch # base address
addi x8, x8, 96 # sub immediate from rs1 to counter offset
fsh f1, -96(x8) # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
la x2, scratch
li x3, 0x9be290dcae16bd5 # load x3 with value 0x9be290dcae16bd5
sw x3, 0(x2) # store 0x9be290dcae16bd5 in memory
flh f2, 0(x2) # load 0x9be290dcae16bd5 from memory into f2
la x12, scratch # base address
addi x12, x12, -1202 # sub immediate from rs1 to counter offset
fsh f2, 1202(x12) # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
la x2, scratch
li x3, 0xe702a683cb4e259d # load x3 with value 0xe702a683cb4e259d
sw x3, 0(x2) # store 0xe702a683cb4e259d in memory
flh f3, 0(x2) # load 0xe702a683cb4e259d from memory into f3
la x27, scratch # base address
addi x27, x27, 528 # sub immediate from rs1 to counter offset
fsh f3, -528(x27) # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xc29cb825ff537c6c # load x3 with value 0xc29cb825ff537c6c
sw x3, 0(x2) # store 0xc29cb825ff537c6c in memory
flh f4, 0(x2) # load 0xc29cb825ff537c6c from memory into f4
la x2, scratch # base address
addi x2, x2, -1056 # sub immediate from rs1 to counter offset
fsh f4, 1056(x2) # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xbf9a2f8a42cb6403 # load x3 with value 0xbf9a2f8a42cb6403
sw x3, 0(x2) # store 0xbf9a2f8a42cb6403 in memory
flh f5, 0(x2) # load 0xbf9a2f8a42cb6403 from memory into f5
la x8, scratch # base address
addi x8, x8, 1077 # sub immediate from rs1 to counter offset
fsh f5, -1077(x8) # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x4a2db254e462aca1 # load x3 with value 0x4a2db254e462aca1
sw x3, 0(x2) # store 0x4a2db254e462aca1 in memory
flh f6, 0(x2) # load 0x4a2db254e462aca1 from memory into f6
la x28, scratch # base address
addi x28, x28, -2 # sub immediate from rs1 to counter offset
fsh f6, 2(x28) # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x64e2c21a90e15a47 # load x3 with value 0x64e2c21a90e15a47
sw x3, 0(x2) # store 0x64e2c21a90e15a47 in memory
flh f7, 0(x2) # load 0x64e2c21a90e15a47 from memory into f7
la x20, scratch # base address
addi x20, x20, 1698 # sub immediate from rs1 to counter offset
fsh f7, -1698(x20) # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
la x2, scratch
li x3, 0x5a44419689186485 # load x3 with value 0x5a44419689186485
sw x3, 0(x2) # store 0x5a44419689186485 in memory
flh f8, 0(x2) # load 0x5a44419689186485 from memory into f8
la x5, scratch # base address
addi x5, x5, -1516 # sub immediate from rs1 to counter offset
fsh f8, 1516(x5) # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
la x2, scratch
li x3, 0x34b720fb19e1b097 # load x3 with value 0x34b720fb19e1b097
sw x3, 0(x2) # store 0x34b720fb19e1b097 in memory
flh f9, 0(x2) # load 0x34b720fb19e1b097 from memory into f9
la x16, scratch # base address
addi x16, x16, 1747 # sub immediate from rs1 to counter offset
fsh f9, -1747(x16) # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
la x2, scratch
li x3, 0xf99f878462d540d9 # load x3 with value 0xf99f878462d540d9
sw x3, 0(x2) # store 0xf99f878462d540d9 in memory
flh f10, 0(x2) # load 0xf99f878462d540d9 from memory into f10
la x22, scratch # base address
addi x22, x22, 488 # sub immediate from rs1 to counter offset
fsh f10, -488(x22) # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
la x2, scratch
li x3, 0x4b170bde6b39ae4e # load x3 with value 0x4b170bde6b39ae4e
sw x3, 0(x2) # store 0x4b170bde6b39ae4e in memory
flh f11, 0(x2) # load 0x4b170bde6b39ae4e from memory into f11
la x25, scratch # base address
addi x25, x25, 766 # sub immediate from rs1 to counter offset
fsh f11, -766(x25) # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
la x2, scratch
li x3, 0x529eb703a958cf47 # load x3 with value 0x529eb703a958cf47
sw x3, 0(x2) # store 0x529eb703a958cf47 in memory
flh f12, 0(x2) # load 0x529eb703a958cf47 from memory into f12
la x14, scratch # base address
addi x14, x14, 312 # sub immediate from rs1 to counter offset
fsh f12, -312(x14) # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
la x2, scratch
li x3, 0x48886058d2dc3232 # load x3 with value 0x48886058d2dc3232
sw x3, 0(x2) # store 0x48886058d2dc3232 in memory
flh f13, 0(x2) # load 0x48886058d2dc3232 from memory into f13
la x25, scratch # base address
addi x25, x25, 559 # sub immediate from rs1 to counter offset
fsh f13, -559(x25) # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
la x2, scratch
li x3, 0xff24a314d2ca8f02 # load x3 with value 0xff24a314d2ca8f02
sw x3, 0(x2) # store 0xff24a314d2ca8f02 in memory
flh f14, 0(x2) # load 0xff24a314d2ca8f02 from memory into f14
la x17, scratch # base address
addi x17, x17, 1136 # sub immediate from rs1 to counter offset
fsh f14, -1136(x17) # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
la x2, scratch
li x3, 0xca9522b81518b1cb # load x3 with value 0xca9522b81518b1cb
sw x3, 0(x2) # store 0xca9522b81518b1cb in memory
flh f15, 0(x2) # load 0xca9522b81518b1cb from memory into f15
la x7, scratch # base address
addi x7, x7, -1770 # sub immediate from rs1 to counter offset
fsh f15, 1770(x7) # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
la x2, scratch
li x3, 0xb0023f0a9c50ba91 # load x3 with value 0xb0023f0a9c50ba91
sw x3, 0(x2) # store 0xb0023f0a9c50ba91 in memory
flh f16, 0(x2) # load 0xb0023f0a9c50ba91 from memory into f16
la x3, scratch # base address
addi x3, x3, 556 # sub immediate from rs1 to counter offset
fsh f16, -556(x3) # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
la x2, scratch
li x3, 0xefe3e74b3b1eaaed # load x3 with value 0xefe3e74b3b1eaaed
sw x3, 0(x2) # store 0xefe3e74b3b1eaaed in memory
flh f17, 0(x2) # load 0xefe3e74b3b1eaaed from memory into f17
la x12, scratch # base address
addi x12, x12, -139 # sub immediate from rs1 to counter offset
fsh f17, 139(x12) # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
la x2, scratch
li x3, 0xb9102eb4f748899e # load x3 with value 0xb9102eb4f748899e
sw x3, 0(x2) # store 0xb9102eb4f748899e in memory
flh f18, 0(x2) # load 0xb9102eb4f748899e from memory into f18
la x17, scratch # base address
addi x17, x17, -1151 # sub immediate from rs1 to counter offset
fsh f18, 1151(x17) # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
la x2, scratch
li x3, 0x7d09408666a18952 # load x3 with value 0x7d09408666a18952
sw x3, 0(x2) # store 0x7d09408666a18952 in memory
flh f19, 0(x2) # load 0x7d09408666a18952 from memory into f19
la x1, scratch # base address
addi x1, x1, 1061 # sub immediate from rs1 to counter offset
fsh f19, -1061(x1) # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
la x2, scratch
li x3, 0x21c06a349fb30374 # load x3 with value 0x21c06a349fb30374
sw x3, 0(x2) # store 0x21c06a349fb30374 in memory
flh f20, 0(x2) # load 0x21c06a349fb30374 from memory into f20
la x29, scratch # base address
addi x29, x29, -707 # sub immediate from rs1 to counter offset
fsh f20, 707(x29) # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
la x2, scratch
li x3, 0xd06ea22497976954 # load x3 with value 0xd06ea22497976954
sw x3, 0(x2) # store 0xd06ea22497976954 in memory
flh f21, 0(x2) # load 0xd06ea22497976954 from memory into f21
la x31, scratch # base address
addi x31, x31, 1940 # sub immediate from rs1 to counter offset
fsh f21, -1940(x31) # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
la x2, scratch
li x3, 0x10c950994d73e457 # load x3 with value 0x10c950994d73e457
sw x3, 0(x2) # store 0x10c950994d73e457 in memory
flh f22, 0(x2) # load 0x10c950994d73e457 from memory into f22
la x27, scratch # base address
addi x27, x27, 129 # sub immediate from rs1 to counter offset
fsh f22, -129(x27) # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
la x2, scratch
li x3, 0xf87a8a7fe02bce3f # load x3 with value 0xf87a8a7fe02bce3f
sw x3, 0(x2) # store 0xf87a8a7fe02bce3f in memory
flh f23, 0(x2) # load 0xf87a8a7fe02bce3f from memory into f23
la x22, scratch # base address
addi x22, x22, 451 # sub immediate from rs1 to counter offset
fsh f23, -451(x22) # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
la x2, scratch
li x3, 0x67af9e5b9d3155da # load x3 with value 0x67af9e5b9d3155da
sw x3, 0(x2) # store 0x67af9e5b9d3155da in memory
flh f24, 0(x2) # load 0x67af9e5b9d3155da from memory into f24
la x23, scratch # base address
addi x23, x23, -194 # sub immediate from rs1 to counter offset
fsh f24, 194(x23) # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
la x2, scratch
li x3, 0xb79eecd8ed0e51a5 # load x3 with value 0xb79eecd8ed0e51a5
sw x3, 0(x2) # store 0xb79eecd8ed0e51a5 in memory
flh f25, 0(x2) # load 0xb79eecd8ed0e51a5 from memory into f25
la x29, scratch # base address
addi x29, x29, 1304 # sub immediate from rs1 to counter offset
fsh f25, -1304(x29) # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
la x2, scratch
li x3, 0xdcf991b85c310b6c # load x3 with value 0xdcf991b85c310b6c
sw x3, 0(x2) # store 0xdcf991b85c310b6c in memory
flh f26, 0(x2) # load 0xdcf991b85c310b6c from memory into f26
la x20, scratch # base address
addi x20, x20, 1771 # sub immediate from rs1 to counter offset
fsh f26, -1771(x20) # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
la x2, scratch
li x3, 0xd864194a8366a421 # load x3 with value 0xd864194a8366a421
sw x3, 0(x2) # store 0xd864194a8366a421 in memory
flh f27, 0(x2) # load 0xd864194a8366a421 from memory into f27
la x5, scratch # base address
addi x5, x5, -1990 # sub immediate from rs1 to counter offset
fsh f27, 1990(x5) # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
la x2, scratch
li x3, 0x639bd832b03d769c # load x3 with value 0x639bd832b03d769c
sw x3, 0(x2) # store 0x639bd832b03d769c in memory
flh f28, 0(x2) # load 0x639bd832b03d769c from memory into f28
la x22, scratch # base address
addi x22, x22, 1443 # sub immediate from rs1 to counter offset
fsh f28, -1443(x22) # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
la x2, scratch
li x3, 0x832afb0e668b59b7 # load x3 with value 0x832afb0e668b59b7
sw x3, 0(x2) # store 0x832afb0e668b59b7 in memory
flh f29, 0(x2) # load 0x832afb0e668b59b7 from memory into f29
la x15, scratch # base address
addi x15, x15, -497 # sub immediate from rs1 to counter offset
fsh f29, 497(x15) # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
la x2, scratch
li x3, 0xb8a1340d6a2b805b # load x3 with value 0xb8a1340d6a2b805b
sw x3, 0(x2) # store 0xb8a1340d6a2b805b in memory
flh f30, 0(x2) # load 0xb8a1340d6a2b805b from memory into f30
la x9, scratch # base address
addi x9, x9, -1481 # sub immediate from rs1 to counter offset
fsh f30, 1481(x9) # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
la x2, scratch
li x3, 0x3c85b0362d7f3f24 # load x3 with value 0x3c85b0362d7f3f24
sw x3, 0(x2) # store 0x3c85b0362d7f3f24 in memory
flh f31, 0(x2) # load 0x3c85b0362d7f3f24 from memory into f31
la x14, scratch # base address
addi x14, x14, 1588 # sub immediate from rs1 to counter offset
fsh f31, -1588(x14) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f3, 0(x2) # load 0x00000000 from memory into f3
la x16, scratch # base address
addi x16, x16, 1761 # sub immediate from rs1 to counter offset
fsh f3, -1761(x16) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000)
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f18, 0(x2) # load 0x00008000 from memory into f18
la x29, scratch # base address
addi x29, x29, -401 # sub immediate from rs1 to counter offset
fsh f18, 401(x29) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3c00)
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f2, 0(x2) # load 0x00003c00 from memory into f2
la x19, scratch # base address
addi x19, x19, -1280 # sub immediate from rs1 to counter offset
fsh f2, 1280(x19) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbc00)
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f6, 0(x2) # load 0x0000bc00 from memory into f6
la x19, scratch # base address
addi x19, x19, -1946 # sub immediate from rs1 to counter offset
fsh f6, 1946(x19) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3e00)
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f11, 0(x2) # load 0x00003e00 from memory into f11
la x27, scratch # base address
addi x27, x27, 720 # sub immediate from rs1 to counter offset
fsh f11, -720(x27) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbe00)
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f11, 0(x2) # load 0x0000be00 from memory into f11
la x3, scratch # base address
addi x3, x3, -30 # sub immediate from rs1 to counter offset
fsh f11, 30(x3) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000)
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
la x1, scratch # base address
addi x1, x1, -969 # sub immediate from rs1 to counter offset
fsh f25, 969(x1) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000)
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f13, 0(x2) # load 0x0000c000 from memory into f13
la x2, scratch # base address
addi x2, x2, -329 # sub immediate from rs1 to counter offset
fsh f13, 329(x2) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400)
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f15, 0(x2) # load 0x00000400 from memory into f15
la x20, scratch # base address
addi x20, x20, 483 # sub immediate from rs1 to counter offset
fsh f15, -483(x20) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8400)
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
la x11, scratch # base address
addi x11, x11, -692 # sub immediate from rs1 to counter offset
fsh f26, 692(x11) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7bff)
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f23, 0(x2) # load 0x00007bff from memory into f23
la x27, scratch # base address
addi x27, x27, 1709 # sub immediate from rs1 to counter offset
fsh f23, -1709(x27) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfbff)
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f10, 0(x2) # load 0x0000fbff from memory into f10
la x6, scratch # base address
addi x6, x6, 489 # sub immediate from rs1 to counter offset
fsh f10, -489(x6) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff)
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f5, 0(x2) # load 0x000003ff from memory into f5
la x14, scratch # base address
addi x14, x14, 1056 # sub immediate from rs1 to counter offset
fsh f5, -1056(x14) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x83ff)
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f27, 0(x2) # load 0x000083ff from memory into f27
la x1, scratch # base address
addi x1, x1, -1573 # sub immediate from rs1 to counter offset
fsh f27, 1573(x1) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x200)
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
la x11, scratch # base address
addi x11, x11, 1546 # sub immediate from rs1 to counter offset
fsh f25, -1546(x11) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8200)
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
la x19, scratch # base address
addi x19, x19, -1033 # sub immediate from rs1 to counter offset
fsh f14, 1033(x19) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
la x19, scratch # base address
addi x19, x19, -378 # sub immediate from rs1 to counter offset
fsh f11, 378(x19) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8001)
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
la x20, scratch # base address
addi x20, x20, -491 # sub immediate from rs1 to counter offset
fsh f23, 491(x20) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c00)
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f12, 0(x2) # load 0x00007c00 from memory into f12
la x29, scratch # base address
addi x29, x29, 1377 # sub immediate from rs1 to counter offset
fsh f12, -1377(x29) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc00)
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
la x5, scratch # base address
addi x5, x5, -1394 # sub immediate from rs1 to counter offset
fsh f31, 1394(x5) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e00)
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f13, 0(x2) # load 0x00007e00 from memory into f13
la x18, scratch # base address
addi x18, x18, 407 # sub immediate from rs1 to counter offset
fsh f13, -407(x18) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff)
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f31, 0(x2) # load 0x00007fff from memory into f31
la x28, scratch # base address
addi x28, x28, -1083 # sub immediate from rs1 to counter offset
fsh f31, 1083(x28) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfe00)
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f23, 0(x2) # load 0x0000fe00 from memory into f23
la x6, scratch # base address
addi x6, x6, 732 # sub immediate from rs1 to counter offset
fsh f23, -732(x6) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c01)
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
la x7, scratch # base address
addi x7, x7, 718 # sub immediate from rs1 to counter offset
fsh f26, -718(x7) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7dff)
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f3, 0(x2) # load 0x00007dff from memory into f3
la x28, scratch # base address
addi x28, x28, 1305 # sub immediate from rs1 to counter offset
fsh f3, -1305(x28) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc01)
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f11, 0(x2) # load 0x0000fc01 from memory into f11
la x6, scratch # base address
addi x6, x6, 1449 # sub immediate from rs1 to counter offset
fsh f11, -1449(x6) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x58b4)
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
la x30, scratch # base address
addi x30, x30, -630 # sub immediate from rs1 to counter offset
fsh f10, 630(x30) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc93a)
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f14, 0(x2) # load 0x0000c93a from memory into f14
la x27, scratch # base address
addi x27, x27, -294 # sub immediate from rs1 to counter offset
fsh f14, 294(x27) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
la x8, scratch # base address
addi x8, x8, -888 # sub immediate from rs1 to counter offset
fsh f9, 888(x8) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffe8000)
la x2, scratch
li x3, 0xfffe8000 # load x3 with value 0xfffe8000
sw x3, 0(x2) # store 0xfffe8000 in memory
flw f27, 0(x2) # load 0xfffe8000 from memory into f27
la x9, scratch # base address
addi x9, x9, -1566 # sub immediate from rs1 to counter offset
fsh f27, 1566(x9) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff3c00)
la x2, scratch
li x3, 0x7fff3c00 # load x3 with value 0x7fff3c00
sw x3, 0(x2) # store 0x7fff3c00 in memory
flw f12, 0(x2) # load 0x7fff3c00 from memory into f12
la x15, scratch # base address
addi x15, x15, -1073 # sub immediate from rs1 to counter offset
fsh f12, 1073(x15) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbeefbc00)
la x2, scratch
li x3, 0xbeefbc00 # load x3 with value 0xbeefbc00
sw x3, 0(x2) # store 0xbeefbc00 in memory
flw f26, 0(x2) # load 0xbeefbc00 from memory into f26
la x23, scratch # base address
addi x23, x23, 178 # sub immediate from rs1 to counter offset
fsh f26, -178(x23) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeff0400)
la x2, scratch
li x3, 0xfeff0400 # load x3 with value 0xfeff0400
sw x3, 0(x2) # store 0xfeff0400 in memory
flw f17, 0(x2) # load 0xfeff0400 from memory into f17
la x16, scratch # base address
addi x16, x16, -2005 # sub immediate from rs1 to counter offset
fsh f17, 2005(x16) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfff8400)
la x2, scratch
li x3, 0x0fff8400 # load x3 with value 0x0fff8400
sw x3, 0(x2) # store 0x0fff8400 in memory
flw f26, 0(x2) # load 0x0fff8400 from memory into f26
la x13, scratch # base address
addi x13, x13, 106 # sub immediate from rs1 to counter offset
fsh f26, -106(x13) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefff7bff)
la x2, scratch
li x3, 0xefff7bff # load x3 with value 0xefff7bff
sw x3, 0(x2) # store 0xefff7bff in memory
flw f5, 0(x2) # load 0xefff7bff from memory into f5
la x30, scratch # base address
addi x30, x30, -1093 # sub immediate from rs1 to counter offset
fsh f5, 1093(x30) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0defbff)
la x2, scratch
li x3, 0xc0defbff # load x3 with value 0xc0defbff
sw x3, 0(x2) # store 0xc0defbff in memory
flw f24, 0(x2) # load 0xc0defbff from memory into f24
la x20, scratch # base address
addi x20, x20, 1685 # sub immediate from rs1 to counter offset
fsh f24, -1685(x20) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4f1a7c00)
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with value 0x4f1a7c00
sw x3, 0(x2) # store 0x4f1a7c00 in memory
flw f13, 0(x2) # load 0x4f1a7c00 from memory into f13
la x7, scratch # base address
addi x7, x7, -2012 # sub immediate from rs1 to counter offset
fsh f13, 2012(x7) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffc00)
la x2, scratch
li x3, 0x0ffffc00 # load x3 with value 0x0ffffc00
sw x3, 0(x2) # store 0x0ffffc00 in memory
flw f27, 0(x2) # load 0x0ffffc00 from memory into f27
la x10, scratch # base address
addi x10, x10, 1362 # sub immediate from rs1 to counter offset
fsh f27, -1362(x10) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffef7e00)
la x2, scratch
li x3, 0xffef7e00 # load x3 with value 0xffef7e00
sw x3, 0(x2) # store 0xffef7e00 in memory
flw f3, 0(x2) # load 0xffef7e00 from memory into f3
la x20, scratch # base address
addi x20, x20, -1979 # sub immediate from rs1 to counter offset
fsh f3, 1979(x20) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeef7fff)
la x2, scratch
li x3, 0xfeef7fff # load x3 with value 0xfeef7fff
sw x3, 0(x2) # store 0xfeef7fff in memory
flw f26, 0(x2) # load 0xfeef7fff from memory into f26
la x16, scratch # base address
addi x16, x16, -1087 # sub immediate from rs1 to counter offset
fsh f26, 1087(x16) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b27c01)
la x2, scratch
li x3, 0xa1b27c01 # load x3 with value 0xa1b27c01
sw x3, 0(x2) # store 0xa1b27c01 in memory
flw f5, 0(x2) # load 0xa1b27c01 from memory into f5
la x7, scratch # base address
addi x7, x7, -594 # sub immediate from rs1 to counter offset
fsh f5, 594(x7) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4fd77dff)
la x2, scratch
li x3, 0x4fd77dff # load x3 with value 0x4fd77dff
sw x3, 0(x2) # store 0x4fd77dff in memory
flw f30, 0(x2) # load 0x4fd77dff from memory into f30
la x18, scratch # base address
addi x18, x18, 361 # sub immediate from rs1 to counter offset
fsh f30, -361(x18) # perform operation

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
