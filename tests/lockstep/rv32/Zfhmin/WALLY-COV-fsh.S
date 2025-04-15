///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zfhmin/WALLY-COV-fsh.S
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
li x3, 0xcaa7c69d # load x3 with value 0xcaa7c69d
sw x3, 0(x2) # store 0xcaa7c69d in memory
flh f3, 0(x2) # load 0xcaa7c69d from memory into f3
la x1, scratch # base address
addi x1, x1, -1679 # sub immediate from rs1 to counter offset
fsh f3, 1679(x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
la x2, scratch
li x3, 0xed8c1c8b # load x3 with value 0xed8c1c8b
sw x3, 0(x2) # store 0xed8c1c8b in memory
flh f10, 0(x2) # load 0xed8c1c8b from memory into f10
la x2, scratch # base address
addi x2, x2, -705 # sub immediate from rs1 to counter offset
fsh f10, 705(x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
la x2, scratch
li x3, 0x7363f894 # load x3 with value 0x7363f894
sw x3, 0(x2) # store 0x7363f894 in memory
flh f7, 0(x2) # load 0x7363f894 from memory into f7
la x3, scratch # base address
addi x3, x3, -1143 # sub immediate from rs1 to counter offset
fsh f7, 1143(x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x1e3432cd # load x3 with value 0x1e3432cd
sw x3, 0(x2) # store 0x1e3432cd in memory
flh f17, 0(x2) # load 0x1e3432cd from memory into f17
la x4, scratch # base address
addi x4, x4, 654 # sub immediate from rs1 to counter offset
fsh f17, -654(x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xa43d2ef5 # load x3 with value 0xa43d2ef5
sw x3, 0(x2) # store 0xa43d2ef5 in memory
flh f25, 0(x2) # load 0xa43d2ef5 from memory into f25
la x5, scratch # base address
addi x5, x5, -1636 # sub immediate from rs1 to counter offset
fsh f25, 1636(x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xd4b17825 # load x3 with value 0xd4b17825
sw x3, 0(x2) # store 0xd4b17825 in memory
flh f17, 0(x2) # load 0xd4b17825 from memory into f17
la x6, scratch # base address
addi x6, x6, 946 # sub immediate from rs1 to counter offset
fsh f17, -946(x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x53a04207 # load x3 with value 0x53a04207
sw x3, 0(x2) # store 0x53a04207 in memory
flh f31, 0(x2) # load 0x53a04207 from memory into f31
la x7, scratch # base address
addi x7, x7, -415 # sub immediate from rs1 to counter offset
fsh f31, 415(x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
la x2, scratch
li x3, 0xfc9bd3e8 # load x3 with value 0xfc9bd3e8
sw x3, 0(x2) # store 0xfc9bd3e8 in memory
flh f18, 0(x2) # load 0xfc9bd3e8 from memory into f18
la x8, scratch # base address
addi x8, x8, -279 # sub immediate from rs1 to counter offset
fsh f18, 279(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
la x2, scratch
li x3, 0x32c7b36d # load x3 with value 0x32c7b36d
sw x3, 0(x2) # store 0x32c7b36d in memory
flh f31, 0(x2) # load 0x32c7b36d from memory into f31
la x9, scratch # base address
addi x9, x9, 988 # sub immediate from rs1 to counter offset
fsh f31, -988(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
la x2, scratch
li x3, 0x865cf9d1 # load x3 with value 0x865cf9d1
sw x3, 0(x2) # store 0x865cf9d1 in memory
flh f5, 0(x2) # load 0x865cf9d1 from memory into f5
la x10, scratch # base address
addi x10, x10, 1763 # sub immediate from rs1 to counter offset
fsh f5, -1763(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
la x2, scratch
li x3, 0xe3e0f8db # load x3 with value 0xe3e0f8db
sw x3, 0(x2) # store 0xe3e0f8db in memory
flh f25, 0(x2) # load 0xe3e0f8db from memory into f25
la x11, scratch # base address
addi x11, x11, -600 # sub immediate from rs1 to counter offset
fsh f25, 600(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
la x2, scratch
li x3, 0xc0c91010 # load x3 with value 0xc0c91010
sw x3, 0(x2) # store 0xc0c91010 in memory
flh f6, 0(x2) # load 0xc0c91010 from memory into f6
la x12, scratch # base address
addi x12, x12, -1258 # sub immediate from rs1 to counter offset
fsh f6, 1258(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
la x2, scratch
li x3, 0xd3a1dd0f # load x3 with value 0xd3a1dd0f
sw x3, 0(x2) # store 0xd3a1dd0f in memory
flh f28, 0(x2) # load 0xd3a1dd0f from memory into f28
la x13, scratch # base address
addi x13, x13, -1345 # sub immediate from rs1 to counter offset
fsh f28, 1345(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
la x2, scratch
li x3, 0xc8969bf2 # load x3 with value 0xc8969bf2
sw x3, 0(x2) # store 0xc8969bf2 in memory
flh f6, 0(x2) # load 0xc8969bf2 from memory into f6
la x14, scratch # base address
addi x14, x14, -1457 # sub immediate from rs1 to counter offset
fsh f6, 1457(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
la x2, scratch
li x3, 0x55b2c669 # load x3 with value 0x55b2c669
sw x3, 0(x2) # store 0x55b2c669 in memory
flh f10, 0(x2) # load 0x55b2c669 from memory into f10
la x15, scratch # base address
addi x15, x15, 535 # sub immediate from rs1 to counter offset
fsh f10, -535(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
la x2, scratch
li x3, 0x53f17f03 # load x3 with value 0x53f17f03
sw x3, 0(x2) # store 0x53f17f03 in memory
flh f26, 0(x2) # load 0x53f17f03 from memory into f26
la x16, scratch # base address
addi x16, x16, -1676 # sub immediate from rs1 to counter offset
fsh f26, 1676(x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
la x2, scratch
li x3, 0x95726855 # load x3 with value 0x95726855
sw x3, 0(x2) # store 0x95726855 in memory
flh f3, 0(x2) # load 0x95726855 from memory into f3
la x17, scratch # base address
addi x17, x17, 1434 # sub immediate from rs1 to counter offset
fsh f3, -1434(x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
la x2, scratch
li x3, 0xa4665036 # load x3 with value 0xa4665036
sw x3, 0(x2) # store 0xa4665036 in memory
flh f6, 0(x2) # load 0xa4665036 from memory into f6
la x18, scratch # base address
addi x18, x18, 1163 # sub immediate from rs1 to counter offset
fsh f6, -1163(x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
la x2, scratch
li x3, 0x4538abae # load x3 with value 0x4538abae
sw x3, 0(x2) # store 0x4538abae in memory
flh f31, 0(x2) # load 0x4538abae from memory into f31
la x19, scratch # base address
addi x19, x19, -1443 # sub immediate from rs1 to counter offset
fsh f31, 1443(x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
la x2, scratch
li x3, 0xbada11e2 # load x3 with value 0xbada11e2
sw x3, 0(x2) # store 0xbada11e2 in memory
flh f13, 0(x2) # load 0xbada11e2 from memory into f13
la x20, scratch # base address
addi x20, x20, -343 # sub immediate from rs1 to counter offset
fsh f13, 343(x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
la x2, scratch
li x3, 0xeccaf231 # load x3 with value 0xeccaf231
sw x3, 0(x2) # store 0xeccaf231 in memory
flh f20, 0(x2) # load 0xeccaf231 from memory into f20
la x21, scratch # base address
addi x21, x21, 1320 # sub immediate from rs1 to counter offset
fsh f20, -1320(x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
la x2, scratch
li x3, 0x1448aa1a # load x3 with value 0x1448aa1a
sw x3, 0(x2) # store 0x1448aa1a in memory
flh f9, 0(x2) # load 0x1448aa1a from memory into f9
la x22, scratch # base address
addi x22, x22, 1970 # sub immediate from rs1 to counter offset
fsh f9, -1970(x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
la x2, scratch
li x3, 0x68067853 # load x3 with value 0x68067853
sw x3, 0(x2) # store 0x68067853 in memory
flh f30, 0(x2) # load 0x68067853 from memory into f30
la x23, scratch # base address
addi x23, x23, 1745 # sub immediate from rs1 to counter offset
fsh f30, -1745(x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
la x2, scratch
li x3, 0x0926d962 # load x3 with value 0x0926d962
sw x3, 0(x2) # store 0x0926d962 in memory
flh f22, 0(x2) # load 0x0926d962 from memory into f22
la x24, scratch # base address
addi x24, x24, 438 # sub immediate from rs1 to counter offset
fsh f22, -438(x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
la x2, scratch
li x3, 0xc8184e5c # load x3 with value 0xc8184e5c
sw x3, 0(x2) # store 0xc8184e5c in memory
flh f29, 0(x2) # load 0xc8184e5c from memory into f29
la x25, scratch # base address
addi x25, x25, -2 # sub immediate from rs1 to counter offset
fsh f29, 2(x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
la x2, scratch
li x3, 0x405ef6bb # load x3 with value 0x405ef6bb
sw x3, 0(x2) # store 0x405ef6bb in memory
flh f8, 0(x2) # load 0x405ef6bb from memory into f8
la x26, scratch # base address
addi x26, x26, 1725 # sub immediate from rs1 to counter offset
fsh f8, -1725(x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
la x2, scratch
li x3, 0xa677b47f # load x3 with value 0xa677b47f
sw x3, 0(x2) # store 0xa677b47f in memory
flh f25, 0(x2) # load 0xa677b47f from memory into f25
la x27, scratch # base address
addi x27, x27, 181 # sub immediate from rs1 to counter offset
fsh f25, -181(x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
la x2, scratch
li x3, 0xeb8a3126 # load x3 with value 0xeb8a3126
sw x3, 0(x2) # store 0xeb8a3126 in memory
flh f18, 0(x2) # load 0xeb8a3126 from memory into f18
la x28, scratch # base address
addi x28, x28, 159 # sub immediate from rs1 to counter offset
fsh f18, -159(x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
la x2, scratch
li x3, 0xe053471a # load x3 with value 0xe053471a
sw x3, 0(x2) # store 0xe053471a in memory
flh f23, 0(x2) # load 0xe053471a from memory into f23
la x29, scratch # base address
addi x29, x29, -1685 # sub immediate from rs1 to counter offset
fsh f23, 1685(x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
la x2, scratch
li x3, 0xa5a30d96 # load x3 with value 0xa5a30d96
sw x3, 0(x2) # store 0xa5a30d96 in memory
flh f1, 0(x2) # load 0xa5a30d96 from memory into f1
la x30, scratch # base address
addi x30, x30, 1367 # sub immediate from rs1 to counter offset
fsh f1, -1367(x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
la x2, scratch
li x3, 0xdcd89225 # load x3 with value 0xdcd89225
sw x3, 0(x2) # store 0xdcd89225 in memory
flh f20, 0(x2) # load 0xdcd89225 from memory into f20
la x31, scratch # base address
addi x31, x31, -264 # sub immediate from rs1 to counter offset
fsh f20, 264(x31) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x3de07086 # load x3 with value 0x3de07086
sw x3, 0(x2) # store 0x3de07086 in memory
flh f3, 0(x2) # load 0x3de07086 from memory into f3
la x10, scratch # base address
addi x10, x10, 0 # sub immediate from rs1 to counter offset
fsh f3, 0(x10) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x7b4be287 # load x3 with value 0x7b4be287
sw x3, 0(x2) # store 0x7b4be287 in memory
flh f3, 0(x2) # load 0x7b4be287 from memory into f3
la x7, scratch # base address
addi x7, x7, -1 # sub immediate from rs1 to counter offset
fsh f3, 1(x7) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x41aaf407 # load x3 with value 0x41aaf407
sw x3, 0(x2) # store 0x41aaf407 in memory
flh f8, 0(x2) # load 0x41aaf407 from memory into f8
la x3, scratch # base address
addi x3, x3, -2 # sub immediate from rs1 to counter offset
fsh f8, 2(x3) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xee758936 # load x3 with value 0xee758936
sw x3, 0(x2) # store 0xee758936 in memory
flh f21, 0(x2) # load 0xee758936 from memory into f21
la x2, scratch # base address
addi x2, x2, -3 # sub immediate from rs1 to counter offset
fsh f21, 3(x2) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x24d9cae7 # load x3 with value 0x24d9cae7
sw x3, 0(x2) # store 0x24d9cae7 in memory
flh f11, 0(x2) # load 0x24d9cae7 from memory into f11
la x29, scratch # base address
addi x29, x29, -4 # sub immediate from rs1 to counter offset
fsh f11, 4(x29) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x9cfd3f4b # load x3 with value 0x9cfd3f4b
sw x3, 0(x2) # store 0x9cfd3f4b in memory
flh f12, 0(x2) # load 0x9cfd3f4b from memory into f12
la x3, scratch # base address
addi x3, x3, -8 # sub immediate from rs1 to counter offset
fsh f12, 8(x3) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x2ea79d1c # load x3 with value 0x2ea79d1c
sw x3, 0(x2) # store 0x2ea79d1c in memory
flh f2, 0(x2) # load 0x2ea79d1c from memory into f2
la x28, scratch # base address
addi x28, x28, -16 # sub immediate from rs1 to counter offset
fsh f2, 16(x28) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x270e0fce # load x3 with value 0x270e0fce
sw x3, 0(x2) # store 0x270e0fce in memory
flh f30, 0(x2) # load 0x270e0fce from memory into f30
la x9, scratch # base address
addi x9, x9, -32 # sub immediate from rs1 to counter offset
fsh f30, 32(x9) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x011ed34e # load x3 with value 0x011ed34e
sw x3, 0(x2) # store 0x011ed34e in memory
flh f26, 0(x2) # load 0x011ed34e from memory into f26
la x29, scratch # base address
addi x29, x29, -64 # sub immediate from rs1 to counter offset
fsh f26, 64(x29) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x6c2dd052 # load x3 with value 0x6c2dd052
sw x3, 0(x2) # store 0x6c2dd052 in memory
flh f18, 0(x2) # load 0x6c2dd052 from memory into f18
la x5, scratch # base address
addi x5, x5, -128 # sub immediate from rs1 to counter offset
fsh f18, 128(x5) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xf7eae316 # load x3 with value 0xf7eae316
sw x3, 0(x2) # store 0xf7eae316 in memory
flh f3, 0(x2) # load 0xf7eae316 from memory into f3
la x23, scratch # base address
addi x23, x23, -256 # sub immediate from rs1 to counter offset
fsh f3, 256(x23) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xc8686516 # load x3 with value 0xc8686516
sw x3, 0(x2) # store 0xc8686516 in memory
flh f8, 0(x2) # load 0xc8686516 from memory into f8
la x14, scratch # base address
addi x14, x14, -512 # sub immediate from rs1 to counter offset
fsh f8, 512(x14) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x4b0abe92 # load x3 with value 0x4b0abe92
sw x3, 0(x2) # store 0x4b0abe92 in memory
flh f12, 0(x2) # load 0x4b0abe92 from memory into f12
la x3, scratch # base address
addi x3, x3, -1023 # sub immediate from rs1 to counter offset
fsh f12, 1023(x3) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x7749ba50 # load x3 with value 0x7749ba50
sw x3, 0(x2) # store 0x7749ba50 in memory
flh f7, 0(x2) # load 0x7749ba50 from memory into f7
la x11, scratch # base address
addi x11, x11, -1024 # sub immediate from rs1 to counter offset
fsh f7, 1024(x11) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xcf19db21 # load x3 with value 0xcf19db21
sw x3, 0(x2) # store 0xcf19db21 in memory
flh f16, 0(x2) # load 0xcf19db21 from memory into f16
la x22, scratch # base address
addi x22, x22, -1795 # sub immediate from rs1 to counter offset
fsh f16, 1795(x22) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x2f3e0be2 # load x3 with value 0x2f3e0be2
sw x3, 0(x2) # store 0x2f3e0be2 in memory
flh f8, 0(x2) # load 0x2f3e0be2 from memory into f8
la x26, scratch # base address
addi x26, x26, -2047 # sub immediate from rs1 to counter offset
fsh f8, 2047(x26) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xeeb93217 # load x3 with value 0xeeb93217
sw x3, 0(x2) # store 0xeeb93217 in memory
flh f27, 0(x2) # load 0xeeb93217 from memory into f27
la x2, scratch # base address
addi x2, x2, 2047 # increment rs1 by 2047 
addi x2, x2, 1 # increment rs1 to bump it by a total of 2048 to compensate for -2048
fsh f27, -2048(x2) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xe1b7737e # load x3 with value 0xe1b7737e
sw x3, 0(x2) # store 0xe1b7737e in memory
flh f20, 0(x2) # load 0xe1b7737e from memory into f20
la x15, scratch # base address
addi x15, x15, 2047 # sub immediate from rs1 to counter offset
fsh f20, -2047(x15) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x00e9ccda # load x3 with value 0x00e9ccda
sw x3, 0(x2) # store 0x00e9ccda in memory
flh f24, 0(x2) # load 0x00e9ccda from memory into f24
la x18, scratch # base address
addi x18, x18, 2 # sub immediate from rs1 to counter offset
fsh f24, -2(x18) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x38e278c4 # load x3 with value 0x38e278c4
sw x3, 0(x2) # store 0x38e278c4 in memory
flh f14, 0(x2) # load 0x38e278c4 from memory into f14
la x2, scratch # base address
addi x2, x2, 1 # sub immediate from rs1 to counter offset
fsh f14, -1(x2) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x15, scratch
addi x15, x15, -558
add x23, x30, x28 # perform first operation
fsh f24, 558(x15) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x2, scratch
addi x2, x2, -832
add x31, x11, x3 # perform first operation
fsh f6, 832(x2) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x31, scratch
addi x31, x31, 381
add x21, x25, x30 # perform first operation
fsh f7, -381(x31) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x19, scratch
addi x19, x19, 1177
add x19, x19, x0 # perform first operation
fsh f9, -1177(x19) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x30, scratch
addi x30, x30, 418
fmul.s f28, f28, f0 # perform first operation
fsh f28, -418(x30) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x13, scratch
addi x13, x13, 363
add x31, x31, x0 # perform first operation
fsh f25, -363(x13) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x30, scratch
addi x30, x30, -870
add x10, x12, x27 # perform first operation
fsh f17, 870(x30) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x29, scratch
addi x29, x29, 1993
add x13, x14, x12 # perform first operation
fsh f5, -1993(x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x21, scratch
addi x21, x21, -1492
add x5, x6, x15 # perform first operation
fsh f18, 1492(x21) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x29, scratch
addi x29, x29, 1064
add x29, x29, x0 # perform first operation
fsh f19, -1064(x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x1, scratch
addi x1, x1, -1371
fmul.s f23, f23, f0 # perform first operation
fsh f23, 1371(x1) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x13, scratch
addi x13, x13, 281
add x23, x23, x0 # perform first operation
fsh f30, -281(x13) # perform second (triggering) operation

# Testcase cp_fs2 (Test source fs2 = f0)
la x2, scratch
li x3, 0xd4707a63 # load x3 with value 0xd4707a63
sw x3, 0(x2) # store 0xd4707a63 in memory
flh f0, 0(x2) # load 0xd4707a63 from memory into f0
la x15, scratch # base address
addi x15, x15, -1543 # sub immediate from rs1 to counter offset
fsh f0, 1543(x15) # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
la x2, scratch
li x3, 0x9f4bc36b # load x3 with value 0x9f4bc36b
sw x3, 0(x2) # store 0x9f4bc36b in memory
flh f1, 0(x2) # load 0x9f4bc36b from memory into f1
la x15, scratch # base address
addi x15, x15, 1888 # sub immediate from rs1 to counter offset
fsh f1, -1888(x15) # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
la x2, scratch
li x3, 0xb624fbde # load x3 with value 0xb624fbde
sw x3, 0(x2) # store 0xb624fbde in memory
flh f2, 0(x2) # load 0xb624fbde from memory into f2
la x9, scratch # base address
addi x9, x9, 1276 # sub immediate from rs1 to counter offset
fsh f2, -1276(x9) # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
la x2, scratch
li x3, 0x59de8a9e # load x3 with value 0x59de8a9e
sw x3, 0(x2) # store 0x59de8a9e in memory
flh f3, 0(x2) # load 0x59de8a9e from memory into f3
la x1, scratch # base address
addi x1, x1, 1067 # sub immediate from rs1 to counter offset
fsh f3, -1067(x1) # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xe702a683 # load x3 with value 0xe702a683
sw x3, 0(x2) # store 0xe702a683 in memory
flh f4, 0(x2) # load 0xe702a683 from memory into f4
la x13, scratch # base address
addi x13, x13, 1755 # sub immediate from rs1 to counter offset
fsh f4, -1755(x13) # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x76688d82 # load x3 with value 0x76688d82
sw x3, 0(x2) # store 0x76688d82 in memory
flh f5, 0(x2) # load 0x76688d82 from memory into f5
la x2, scratch # base address
addi x2, x2, -1804 # sub immediate from rs1 to counter offset
fsh f5, 1804(x2) # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xa988cade # load x3 with value 0xa988cade
sw x3, 0(x2) # store 0xa988cade in memory
flh f6, 0(x2) # load 0xa988cade from memory into f6
la x10, scratch # base address
addi x10, x10, -1586 # sub immediate from rs1 to counter offset
fsh f6, 1586(x10) # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x0322147a # load x3 with value 0x0322147a
sw x3, 0(x2) # store 0x0322147a in memory
flh f7, 0(x2) # load 0x0322147a from memory into f7
la x12, scratch # base address
addi x12, x12, -1567 # sub immediate from rs1 to counter offset
fsh f7, 1567(x12) # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
la x2, scratch
li x3, 0x35b1ba87 # load x3 with value 0x35b1ba87
sw x3, 0(x2) # store 0x35b1ba87 in memory
flh f8, 0(x2) # load 0x35b1ba87 from memory into f8
la x29, scratch # base address
addi x29, x29, 849 # sub immediate from rs1 to counter offset
fsh f8, -849(x29) # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
la x2, scratch
li x3, 0xec76a4b4 # load x3 with value 0xec76a4b4
sw x3, 0(x2) # store 0xec76a4b4 in memory
flh f9, 0(x2) # load 0xec76a4b4 from memory into f9
la x31, scratch # base address
addi x31, x31, 924 # sub immediate from rs1 to counter offset
fsh f9, -924(x31) # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
la x2, scratch
li x3, 0x06f84d65 # load x3 with value 0x06f84d65
sw x3, 0(x2) # store 0x06f84d65 in memory
flh f10, 0(x2) # load 0x06f84d65 from memory into f10
la x19, scratch # base address
addi x19, x19, -325 # sub immediate from rs1 to counter offset
fsh f10, 325(x19) # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
la x2, scratch
li x3, 0x0819d1b8 # load x3 with value 0x0819d1b8
sw x3, 0(x2) # store 0x0819d1b8 in memory
flh f11, 0(x2) # load 0x0819d1b8 from memory into f11
la x29, scratch # base address
addi x29, x29, -726 # sub immediate from rs1 to counter offset
fsh f11, 726(x29) # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
la x2, scratch
li x3, 0x0cd5b8da # load x3 with value 0x0cd5b8da
sw x3, 0(x2) # store 0x0cd5b8da in memory
flh f12, 0(x2) # load 0x0cd5b8da from memory into f12
la x14, scratch # base address
addi x14, x14, -1157 # sub immediate from rs1 to counter offset
fsh f12, 1157(x14) # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
la x2, scratch
li x3, 0xcbdd76e5 # load x3 with value 0xcbdd76e5
sw x3, 0(x2) # store 0xcbdd76e5 in memory
flh f13, 0(x2) # load 0xcbdd76e5 from memory into f13
la x22, scratch # base address
addi x22, x22, -1885 # sub immediate from rs1 to counter offset
fsh f13, 1885(x22) # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
la x2, scratch
li x3, 0xb2f5e209 # load x3 with value 0xb2f5e209
sw x3, 0(x2) # store 0xb2f5e209 in memory
flh f14, 0(x2) # load 0xb2f5e209 from memory into f14
la x6, scratch # base address
addi x6, x6, -878 # sub immediate from rs1 to counter offset
fsh f14, 878(x6) # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
la x2, scratch
li x3, 0xa87e1a11 # load x3 with value 0xa87e1a11
sw x3, 0(x2) # store 0xa87e1a11 in memory
flh f15, 0(x2) # load 0xa87e1a11 from memory into f15
la x7, scratch # base address
addi x7, x7, -445 # sub immediate from rs1 to counter offset
fsh f15, 445(x7) # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
la x2, scratch
li x3, 0x0a806080 # load x3 with value 0x0a806080
sw x3, 0(x2) # store 0x0a806080 in memory
flh f16, 0(x2) # load 0x0a806080 from memory into f16
la x31, scratch # base address
addi x31, x31, -1015 # sub immediate from rs1 to counter offset
fsh f16, 1015(x31) # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
la x2, scratch
li x3, 0x90204e59 # load x3 with value 0x90204e59
sw x3, 0(x2) # store 0x90204e59 in memory
flh f17, 0(x2) # load 0x90204e59 from memory into f17
la x30, scratch # base address
addi x30, x30, -248 # sub immediate from rs1 to counter offset
fsh f17, 248(x30) # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
la x2, scratch
li x3, 0x4b170bde # load x3 with value 0x4b170bde
sw x3, 0(x2) # store 0x4b170bde in memory
flh f18, 0(x2) # load 0x4b170bde from memory into f18
la x2, scratch # base address
addi x2, x2, -537 # sub immediate from rs1 to counter offset
fsh f18, 537(x2) # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
la x2, scratch
li x3, 0x6b2b6b56 # load x3 with value 0x6b2b6b56
sw x3, 0(x2) # store 0x6b2b6b56 in memory
flh f19, 0(x2) # load 0x6b2b6b56 from memory into f19
la x27, scratch # base address
addi x27, x27, 647 # sub immediate from rs1 to counter offset
fsh f19, -647(x27) # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
la x2, scratch
li x3, 0xb24714da # load x3 with value 0xb24714da
sw x3, 0(x2) # store 0xb24714da in memory
flh f20, 0(x2) # load 0xb24714da from memory into f20
la x23, scratch # base address
addi x23, x23, -988 # sub immediate from rs1 to counter offset
fsh f20, 988(x23) # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
la x2, scratch
li x3, 0x6244e45e # load x3 with value 0x6244e45e
sw x3, 0(x2) # store 0x6244e45e in memory
flh f21, 0(x2) # load 0x6244e45e from memory into f21
la x18, scratch # base address
addi x18, x18, 1377 # sub immediate from rs1 to counter offset
fsh f21, -1377(x18) # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
la x2, scratch
li x3, 0x79a95c45 # load x3 with value 0x79a95c45
sw x3, 0(x2) # store 0x79a95c45 in memory
flh f22, 0(x2) # load 0x79a95c45 from memory into f22
la x17, scratch # base address
addi x17, x17, -1534 # sub immediate from rs1 to counter offset
fsh f22, 1534(x17) # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
la x2, scratch
li x3, 0xbb8fbb0f # load x3 with value 0xbb8fbb0f
sw x3, 0(x2) # store 0xbb8fbb0f in memory
flh f23, 0(x2) # load 0xbb8fbb0f from memory into f23
la x29, scratch # base address
addi x29, x29, -139 # sub immediate from rs1 to counter offset
fsh f23, 139(x29) # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
la x2, scratch
li x3, 0xa45661e6 # load x3 with value 0xa45661e6
sw x3, 0(x2) # store 0xa45661e6 in memory
flh f24, 0(x2) # load 0xa45661e6 from memory into f24
la x13, scratch # base address
addi x13, x13, -1278 # sub immediate from rs1 to counter offset
fsh f24, 1278(x13) # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
la x2, scratch
li x3, 0x04a5ab4c # load x3 with value 0x04a5ab4c
sw x3, 0(x2) # store 0x04a5ab4c in memory
flh f25, 0(x2) # load 0x04a5ab4c from memory into f25
la x1, scratch # base address
addi x1, x1, -769 # sub immediate from rs1 to counter offset
fsh f25, 769(x1) # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
la x2, scratch
li x3, 0x66f6b52a # load x3 with value 0x66f6b52a
sw x3, 0(x2) # store 0x66f6b52a in memory
flh f26, 0(x2) # load 0x66f6b52a from memory into f26
la x30, scratch # base address
addi x30, x30, 759 # sub immediate from rs1 to counter offset
fsh f26, -759(x30) # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
la x2, scratch
li x3, 0xcf07a9e8 # load x3 with value 0xcf07a9e8
sw x3, 0(x2) # store 0xcf07a9e8 in memory
flh f27, 0(x2) # load 0xcf07a9e8 from memory into f27
la x11, scratch # base address
addi x11, x11, 404 # sub immediate from rs1 to counter offset
fsh f27, -404(x11) # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
la x2, scratch
li x3, 0xec1f1f6c # load x3 with value 0xec1f1f6c
sw x3, 0(x2) # store 0xec1f1f6c in memory
flh f28, 0(x2) # load 0xec1f1f6c from memory into f28
la x25, scratch # base address
addi x25, x25, 193 # sub immediate from rs1 to counter offset
fsh f28, -193(x25) # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
la x2, scratch
li x3, 0x80a66588 # load x3 with value 0x80a66588
sw x3, 0(x2) # store 0x80a66588 in memory
flh f29, 0(x2) # load 0x80a66588 from memory into f29
la x7, scratch # base address
addi x7, x7, -1819 # sub immediate from rs1 to counter offset
fsh f29, 1819(x7) # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
la x2, scratch
li x3, 0xd2205668 # load x3 with value 0xd2205668
sw x3, 0(x2) # store 0xd2205668 in memory
flh f30, 0(x2) # load 0xd2205668 from memory into f30
la x10, scratch # base address
addi x10, x10, -1525 # sub immediate from rs1 to counter offset
fsh f30, 1525(x10) # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
la x2, scratch
li x3, 0x429c286c # load x3 with value 0x429c286c
sw x3, 0(x2) # store 0x429c286c in memory
flh f31, 0(x2) # load 0x429c286c from memory into f31
la x19, scratch # base address
addi x19, x19, -1953 # sub immediate from rs1 to counter offset
fsh f31, 1953(x19) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f3, 0(x2) # load 0x00000000 from memory into f3
la x16, scratch # base address
addi x16, x16, 2007 # sub immediate from rs1 to counter offset
fsh f3, -2007(x16) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000)
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
la x17, scratch # base address
addi x17, x17, -1131 # sub immediate from rs1 to counter offset
fsh f2, 1131(x17) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3c00)
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f23, 0(x2) # load 0x00003c00 from memory into f23
la x11, scratch # base address
addi x11, x11, -93 # sub immediate from rs1 to counter offset
fsh f23, 93(x11) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbc00)
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f31, 0(x2) # load 0x0000bc00 from memory into f31
la x27, scratch # base address
addi x27, x27, -1614 # sub immediate from rs1 to counter offset
fsh f31, 1614(x27) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3e00)
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
la x19, scratch # base address
addi x19, x19, 376 # sub immediate from rs1 to counter offset
fsh f6, -376(x19) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbe00)
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f10, 0(x2) # load 0x0000be00 from memory into f10
la x25, scratch # base address
addi x25, x25, 1912 # sub immediate from rs1 to counter offset
fsh f10, -1912(x25) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000)
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
la x23, scratch # base address
addi x23, x23, 720 # sub immediate from rs1 to counter offset
fsh f21, -720(x23) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000)
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
la x8, scratch # base address
addi x8, x8, -381 # sub immediate from rs1 to counter offset
fsh f1, 381(x8) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400)
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f12, 0(x2) # load 0x00000400 from memory into f12
la x9, scratch # base address
addi x9, x9, -933 # sub immediate from rs1 to counter offset
fsh f12, 933(x9) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8400)
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
la x25, scratch # base address
addi x25, x25, 2 # sub immediate from rs1 to counter offset
fsh f24, -2(x25) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7bff)
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f13, 0(x2) # load 0x00007bff from memory into f13
la x2, scratch # base address
addi x2, x2, -279 # sub immediate from rs1 to counter offset
fsh f13, 279(x2) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfbff)
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
la x6, scratch # base address
addi x6, x6, 550 # sub immediate from rs1 to counter offset
fsh f16, -550(x6) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff)
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
la x19, scratch # base address
addi x19, x19, 483 # sub immediate from rs1 to counter offset
fsh f2, -483(x19) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x83ff)
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f26, 0(x2) # load 0x000083ff from memory into f26
la x28, scratch # base address
addi x28, x28, 1373 # sub immediate from rs1 to counter offset
fsh f26, -1373(x28) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x200)
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f12, 0(x2) # load 0x00000200 from memory into f12
la x23, scratch # base address
addi x23, x23, -229 # sub immediate from rs1 to counter offset
fsh f12, 229(x23) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8200)
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f28, 0(x2) # load 0x00008200 from memory into f28
la x22, scratch # base address
addi x22, x22, 685 # sub immediate from rs1 to counter offset
fsh f28, -685(x22) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f10, 0(x2) # load 0x00000001 from memory into f10
la x6, scratch # base address
addi x6, x6, -437 # sub immediate from rs1 to counter offset
fsh f10, 437(x6) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8001)
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f3, 0(x2) # load 0x00008001 from memory into f3
la x1, scratch # base address
addi x1, x1, 1195 # sub immediate from rs1 to counter offset
fsh f3, -1195(x1) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c00)
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f13, 0(x2) # load 0x00007c00 from memory into f13
la x23, scratch # base address
addi x23, x23, 928 # sub immediate from rs1 to counter offset
fsh f13, -928(x23) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc00)
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
la x6, scratch # base address
addi x6, x6, 1815 # sub immediate from rs1 to counter offset
fsh f11, -1815(x6) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e00)
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f1, 0(x2) # load 0x00007e00 from memory into f1
la x9, scratch # base address
addi x9, x9, -1257 # sub immediate from rs1 to counter offset
fsh f1, 1257(x9) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff)
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f22, 0(x2) # load 0x00007fff from memory into f22
la x25, scratch # base address
addi x25, x25, -974 # sub immediate from rs1 to counter offset
fsh f22, 974(x25) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfe00)
la x2, scratch
li x3, 0x0000fe00 # load x3 with value 0x0000fe00
sw x3, 0(x2) # store 0x0000fe00 in memory
flh f23, 0(x2) # load 0x0000fe00 from memory into f23
la x7, scratch # base address
addi x7, x7, 219 # sub immediate from rs1 to counter offset
fsh f23, -219(x7) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c01)
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f15, 0(x2) # load 0x00007c01 from memory into f15
la x5, scratch # base address
addi x5, x5, 463 # sub immediate from rs1 to counter offset
fsh f15, -463(x5) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7dff)
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f19, 0(x2) # load 0x00007dff from memory into f19
la x15, scratch # base address
addi x15, x15, 985 # sub immediate from rs1 to counter offset
fsh f19, -985(x15) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc01)
la x2, scratch
li x3, 0x0000fc01 # load x3 with value 0x0000fc01
sw x3, 0(x2) # store 0x0000fc01 in memory
flh f20, 0(x2) # load 0x0000fc01 from memory into f20
la x7, scratch # base address
addi x7, x7, -279 # sub immediate from rs1 to counter offset
fsh f20, 279(x7) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x58b4)
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
la x25, scratch # base address
addi x25, x25, -1338 # sub immediate from rs1 to counter offset
fsh f13, 1338(x25) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc93a)
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f28, 0(x2) # load 0x0000c93a from memory into f28
la x22, scratch # base address
addi x22, x22, 1439 # sub immediate from rs1 to counter offset
fsh f28, -1439(x22) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f9, 0(x2) # load 0x00000000 from memory into f9
la x8, scratch # base address
addi x8, x8, 974 # sub immediate from rs1 to counter offset
fsh f9, -974(x8) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffe8000)
la x2, scratch
li x3, 0xfffe8000 # load x3 with value 0xfffe8000
sw x3, 0(x2) # store 0xfffe8000 in memory
flw f9, 0(x2) # load 0xfffe8000 from memory into f9
la x14, scratch # base address
addi x14, x14, 1988 # sub immediate from rs1 to counter offset
fsh f9, -1988(x14) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff3c00)
la x2, scratch
li x3, 0x7fff3c00 # load x3 with value 0x7fff3c00
sw x3, 0(x2) # store 0x7fff3c00 in memory
flw f30, 0(x2) # load 0x7fff3c00 from memory into f30
la x13, scratch # base address
addi x13, x13, -557 # sub immediate from rs1 to counter offset
fsh f30, 557(x13) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbeefbc00)
la x2, scratch
li x3, 0xbeefbc00 # load x3 with value 0xbeefbc00
sw x3, 0(x2) # store 0xbeefbc00 in memory
flw f10, 0(x2) # load 0xbeefbc00 from memory into f10
la x12, scratch # base address
addi x12, x12, -1110 # sub immediate from rs1 to counter offset
fsh f10, 1110(x12) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeff0400)
la x2, scratch
li x3, 0xfeff0400 # load x3 with value 0xfeff0400
sw x3, 0(x2) # store 0xfeff0400 in memory
flw f24, 0(x2) # load 0xfeff0400 from memory into f24
la x19, scratch # base address
addi x19, x19, 626 # sub immediate from rs1 to counter offset
fsh f24, -626(x19) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfff8400)
la x2, scratch
li x3, 0x0fff8400 # load x3 with value 0x0fff8400
sw x3, 0(x2) # store 0x0fff8400 in memory
flw f13, 0(x2) # load 0x0fff8400 from memory into f13
la x2, scratch # base address
addi x2, x2, -917 # sub immediate from rs1 to counter offset
fsh f13, 917(x2) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefff7bff)
la x2, scratch
li x3, 0xefff7bff # load x3 with value 0xefff7bff
sw x3, 0(x2) # store 0xefff7bff in memory
flw f10, 0(x2) # load 0xefff7bff from memory into f10
la x25, scratch # base address
addi x25, x25, -22 # sub immediate from rs1 to counter offset
fsh f10, 22(x25) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0defbff)
la x2, scratch
li x3, 0xc0defbff # load x3 with value 0xc0defbff
sw x3, 0(x2) # store 0xc0defbff in memory
flw f21, 0(x2) # load 0xc0defbff from memory into f21
la x19, scratch # base address
addi x19, x19, -2005 # sub immediate from rs1 to counter offset
fsh f21, 2005(x19) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4f1a7c00)
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with value 0x4f1a7c00
sw x3, 0(x2) # store 0x4f1a7c00 in memory
flw f18, 0(x2) # load 0x4f1a7c00 from memory into f18
la x30, scratch # base address
addi x30, x30, -291 # sub immediate from rs1 to counter offset
fsh f18, 291(x30) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffc00)
la x2, scratch
li x3, 0x0ffffc00 # load x3 with value 0x0ffffc00
sw x3, 0(x2) # store 0x0ffffc00 in memory
flw f29, 0(x2) # load 0x0ffffc00 from memory into f29
la x24, scratch # base address
addi x24, x24, 318 # sub immediate from rs1 to counter offset
fsh f29, -318(x24) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffef7e00)
la x2, scratch
li x3, 0xffef7e00 # load x3 with value 0xffef7e00
sw x3, 0(x2) # store 0xffef7e00 in memory
flw f5, 0(x2) # load 0xffef7e00 from memory into f5
la x30, scratch # base address
addi x30, x30, -1587 # sub immediate from rs1 to counter offset
fsh f5, 1587(x30) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeef7fff)
la x2, scratch
li x3, 0xfeef7fff # load x3 with value 0xfeef7fff
sw x3, 0(x2) # store 0xfeef7fff in memory
flw f14, 0(x2) # load 0xfeef7fff from memory into f14
la x2, scratch # base address
addi x2, x2, 1310 # sub immediate from rs1 to counter offset
fsh f14, -1310(x2) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b27c01)
la x2, scratch
li x3, 0xa1b27c01 # load x3 with value 0xa1b27c01
sw x3, 0(x2) # store 0xa1b27c01 in memory
flw f6, 0(x2) # load 0xa1b27c01 from memory into f6
la x14, scratch # base address
addi x14, x14, -1958 # sub immediate from rs1 to counter offset
fsh f6, 1958(x14) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4fd77dff)
la x2, scratch
li x3, 0x4fd77dff # load x3 with value 0x4fd77dff
sw x3, 0(x2) # store 0x4fd77dff in memory
flw f27, 0(x2) # load 0x4fd77dff from memory into f27
la x8, scratch # base address
addi x8, x8, -49 # sub immediate from rs1 to counter offset
fsh f27, 49(x8) # perform operation

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
