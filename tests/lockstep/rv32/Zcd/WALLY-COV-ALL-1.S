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
// Tests from: WALLY-COV-c.fld.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase cp_rs1 (Test source rs1 = x8)
la x8, scratch # base address 
addi x8, x8, 104
li x9, 0x20cebeaf # load x9 with 32 MSBs of 0x20cebeaf47b60ed1
li x10, 0x47b60ed1 # load x10 with 32 LSBs 0x20cebeaf47b60ed1
sw x9, 104(x8) # store x9 (0x20cebeaf) in memory
addi x8, x8, 4 # move address up by 4
sw x10, 104(x8) # store x10 (0x47b60ed1) after 4 bytes in memory
addi x8, x8, -4 # move back to scratch
c.fld f15, 104(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
la x9, scratch # base address 
addi x9, x9, 104
li x8, 0x60631104 # load x8 with 32 MSBs of 0x60631104f781773b
li x11, 0xf781773b # load x11 with 32 LSBs 0x60631104f781773b
sw x8, 104(x9) # store x8 (0x60631104) in memory
addi x9, x9, 4 # move address up by 4
sw x11, 104(x9) # store x11 (0xf781773b) after 4 bytes in memory
addi x9, x9, -4 # move back to scratch
c.fld f15, 104(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
la x10, scratch # base address 
addi x10, x10, 200
li x8, 0xdcbc5a98 # load x8 with 32 MSBs of 0xdcbc5a98a1638c5d
li x9, 0xa1638c5d # load x9 with 32 LSBs 0xdcbc5a98a1638c5d
sw x8, 200(x10) # store x8 (0xdcbc5a98) in memory
addi x10, x10, 4 # move address up by 4
sw x9, 200(x10) # store x9 (0xa1638c5d) after 4 bytes in memory
addi x10, x10, -4 # move back to scratch
c.fld f9, 200(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
la x11, scratch # base address 
addi x11, x11, 8
li x8, 0x3260a36a # load x8 with 32 MSBs of 0x3260a36a7f515881
li x9, 0x7f515881 # load x9 with 32 LSBs 0x3260a36a7f515881
sw x8, 8(x11) # store x8 (0x3260a36a) in memory
addi x11, x11, 4 # move address up by 4
sw x9, 8(x11) # store x9 (0x7f515881) after 4 bytes in memory
addi x11, x11, -4 # move back to scratch
c.fld f8, 8(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
la x12, scratch # base address 
addi x12, x12, 224
li x8, 0xa10d746d # load x8 with 32 MSBs of 0xa10d746d6dcb97b1
li x15, 0x6dcb97b1 # load x15 with 32 LSBs 0xa10d746d6dcb97b1
sw x8, 224(x12) # store x8 (0xa10d746d) in memory
addi x12, x12, 4 # move address up by 4
sw x15, 224(x12) # store x15 (0x6dcb97b1) after 4 bytes in memory
addi x12, x12, -4 # move back to scratch
c.fld f10, 224(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
la x13, scratch # base address 
addi x13, x13, 208
li x8, 0xaa68099b # load x8 with 32 MSBs of 0xaa68099bef834e52
li x9, 0xef834e52 # load x9 with 32 LSBs 0xaa68099bef834e52
sw x8, 208(x13) # store x8 (0xaa68099b) in memory
addi x13, x13, 4 # move address up by 4
sw x9, 208(x13) # store x9 (0xef834e52) after 4 bytes in memory
addi x13, x13, -4 # move back to scratch
c.fld f14, 208(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
la x14, scratch # base address 
addi x14, x14, 144
li x8, 0xc66f6177 # load x8 with 32 MSBs of 0xc66f6177436fd655
li x9, 0x436fd655 # load x9 with 32 LSBs 0xc66f6177436fd655
sw x8, 144(x14) # store x8 (0xc66f6177) in memory
addi x14, x14, 4 # move address up by 4
sw x9, 144(x14) # store x9 (0x436fd655) after 4 bytes in memory
addi x14, x14, -4 # move back to scratch
c.fld f13, 144(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
la x15, scratch # base address 
addi x15, x15, 80
li x13, 0xf7c400f2 # load x13 with 32 MSBs of 0xf7c400f28caac5ca
li x9, 0x8caac5ca # load x9 with 32 LSBs 0xf7c400f28caac5ca
sw x13, 80(x15) # store x13 (0xf7c400f2) in memory
addi x15, x15, 4 # move address up by 4
sw x9, 80(x15) # store x9 (0x8caac5ca) after 4 bytes in memory
addi x15, x15, -4 # move back to scratch
c.fld f12, 80(x15) # perform operation

# Testcase cp_fd (Test destination fd = x8)
la x11, scratch # base address 
addi x11, x11, 128
li x8, 0xa1e2fb92 # load x8 with 32 MSBs of 0xa1e2fb921837a682
li x9, 0x1837a682 # load x9 with 32 LSBs 0xa1e2fb921837a682
sw x8, 128(x11) # store x8 (0xa1e2fb92) in memory
addi x11, x11, 4 # move address up by 4
sw x9, 128(x11) # store x9 (0x1837a682) after 4 bytes in memory
addi x11, x11, -4 # move back to scratch
c.fld f8, 128(x11) # perform operation

# Testcase cp_fd (Test destination fd = x9)
la x8, scratch # base address 
addi x8, x8, 192
li x11, 0x97d2a3ba # load x11 with 32 MSBs of 0x97d2a3ba4329377f
li x9, 0x4329377f # load x9 with 32 LSBs 0x97d2a3ba4329377f
sw x11, 192(x8) # store x11 (0x97d2a3ba) in memory
addi x8, x8, 4 # move address up by 4
sw x9, 192(x8) # store x9 (0x4329377f) after 4 bytes in memory
addi x8, x8, -4 # move back to scratch
c.fld f9, 192(x8) # perform operation

# Testcase cp_fd (Test destination fd = x10)
la x11, scratch # base address 
addi x11, x11, 168
li x8, 0xd9c540cf # load x8 with 32 MSBs of 0xd9c540cfb6c516ba
li x9, 0xb6c516ba # load x9 with 32 LSBs 0xd9c540cfb6c516ba
sw x8, 168(x11) # store x8 (0xd9c540cf) in memory
addi x11, x11, 4 # move address up by 4
sw x9, 168(x11) # store x9 (0xb6c516ba) after 4 bytes in memory
addi x11, x11, -4 # move back to scratch
c.fld f10, 168(x11) # perform operation

# Testcase cp_fd (Test destination fd = x11)
la x13, scratch # base address 
addi x13, x13, 0
li x8, 0x89efdff5 # load x8 with 32 MSBs of 0x89efdff56230a04a
li x10, 0x6230a04a # load x10 with 32 LSBs 0x89efdff56230a04a
sw x8, 0(x13) # store x8 (0x89efdff5) in memory
addi x13, x13, 4 # move address up by 4
sw x10, 0(x13) # store x10 (0x6230a04a) after 4 bytes in memory
addi x13, x13, -4 # move back to scratch
c.fld f11, 0(x13) # perform operation

# Testcase cp_fd (Test destination fd = x12)
la x13, scratch # base address 
addi x13, x13, 184
li x10, 0x5d05a0f3 # load x10 with 32 MSBs of 0x5d05a0f3ed6d885a
li x9, 0xed6d885a # load x9 with 32 LSBs 0x5d05a0f3ed6d885a
sw x10, 184(x13) # store x10 (0x5d05a0f3) in memory
addi x13, x13, 4 # move address up by 4
sw x9, 184(x13) # store x9 (0xed6d885a) after 4 bytes in memory
addi x13, x13, -4 # move back to scratch
c.fld f12, 184(x13) # perform operation

# Testcase cp_fd (Test destination fd = x13)
la x12, scratch # base address 
addi x12, x12, 0
li x8, 0xca4f543d # load x8 with 32 MSBs of 0xca4f543d6dfb1511
li x9, 0x6dfb1511 # load x9 with 32 LSBs 0xca4f543d6dfb1511
sw x8, 0(x12) # store x8 (0xca4f543d) in memory
addi x12, x12, 4 # move address up by 4
sw x9, 0(x12) # store x9 (0x6dfb1511) after 4 bytes in memory
addi x12, x12, -4 # move back to scratch
c.fld f13, 0(x12) # perform operation

# Testcase cp_fd (Test destination fd = x14)
la x14, scratch # base address 
addi x14, x14, 160
li x13, 0xc31ff59e # load x13 with 32 MSBs of 0xc31ff59ec8e7fc7a
li x9, 0xc8e7fc7a # load x9 with 32 LSBs 0xc31ff59ec8e7fc7a
sw x13, 160(x14) # store x13 (0xc31ff59e) in memory
addi x14, x14, 4 # move address up by 4
sw x9, 160(x14) # store x9 (0xc8e7fc7a) after 4 bytes in memory
addi x14, x14, -4 # move back to scratch
c.fld f14, 160(x14) # perform operation

# Testcase cp_fd (Test destination fd = x15)
la x11, scratch # base address 
addi x11, x11, 72
li x8, 0x7b19bed3 # load x8 with 32 MSBs of 0x7b19bed3ed139df6
li x14, 0xed139df6 # load x14 with 32 LSBs 0x7b19bed3ed139df6
sw x8, 72(x11) # store x8 (0x7b19bed3) in memory
addi x11, x11, 4 # move address up by 4
sw x14, 72(x11) # store x14 (0xed139df6) after 4 bytes in memory
addi x11, x11, -4 # move back to scratch
c.fld f15, 72(x11) # perform operation

# Testcase cp_imm_mul
la x10, scratch # base address 
addi x10, x10, 0
li x8, 0xcf669d2d # load x8 with 32 MSBs of 0xcf669d2d9bb32583
li x9, 0x9bb32583 # load x9 with 32 LSBs 0xcf669d2d9bb32583
sw x8, 0(x10) # store x8 (0xcf669d2d) in memory
addi x10, x10, 4 # move address up by 4
sw x9, 0(x10) # store x9 (0x9bb32583) after 4 bytes in memory
addi x10, x10, -4 # move back to scratch
c.fld f8, 0(x10) # perform operation

# Testcase cp_imm_mul
la x15, scratch # base address 
addi x15, x15, 8
li x12, 0x04701ab7 # load x12 with 32 MSBs of 0x04701ab75805144f
li x9, 0x5805144f # load x9 with 32 LSBs 0x04701ab75805144f
sw x12, 8(x15) # store x12 (0x04701ab7) in memory
addi x15, x15, 4 # move address up by 4
sw x9, 8(x15) # store x9 (0x5805144f) after 4 bytes in memory
addi x15, x15, -4 # move back to scratch
c.fld f13, 8(x15) # perform operation

# Testcase cp_imm_mul
la x13, scratch # base address 
addi x13, x13, 16
li x8, 0x9e475776 # load x8 with 32 MSBs of 0x9e47577672ad02a3
li x14, 0x72ad02a3 # load x14 with 32 LSBs 0x9e47577672ad02a3
sw x8, 16(x13) # store x8 (0x9e475776) in memory
addi x13, x13, 4 # move address up by 4
sw x14, 16(x13) # store x14 (0x72ad02a3) after 4 bytes in memory
addi x13, x13, -4 # move back to scratch
c.fld f14, 16(x13) # perform operation

# Testcase cp_imm_mul
la x8, scratch # base address 
addi x8, x8, 24
li x15, 0xb0cab4fa # load x15 with 32 MSBs of 0xb0cab4fa8bf7ea28
li x9, 0x8bf7ea28 # load x9 with 32 LSBs 0xb0cab4fa8bf7ea28
sw x15, 24(x8) # store x15 (0xb0cab4fa) in memory
addi x8, x8, 4 # move address up by 4
sw x9, 24(x8) # store x9 (0x8bf7ea28) after 4 bytes in memory
addi x8, x8, -4 # move back to scratch
c.fld f15, 24(x8) # perform operation

# Testcase cp_imm_mul
la x13, scratch # base address 
addi x13, x13, 32
li x8, 0x9f8d4ba3 # load x8 with 32 MSBs of 0x9f8d4ba3634a6487
li x9, 0x634a6487 # load x9 with 32 LSBs 0x9f8d4ba3634a6487
sw x8, 32(x13) # store x8 (0x9f8d4ba3) in memory
addi x13, x13, 4 # move address up by 4
sw x9, 32(x13) # store x9 (0x634a6487) after 4 bytes in memory
addi x13, x13, -4 # move back to scratch
c.fld f11, 32(x13) # perform operation

# Testcase cp_imm_mul
la x15, scratch # base address 
addi x15, x15, 40
li x8, 0x106cbd19 # load x8 with 32 MSBs of 0x106cbd19997e3986
li x10, 0x997e3986 # load x10 with 32 LSBs 0x106cbd19997e3986
sw x8, 40(x15) # store x8 (0x106cbd19) in memory
addi x15, x15, 4 # move address up by 4
sw x10, 40(x15) # store x10 (0x997e3986) after 4 bytes in memory
addi x15, x15, -4 # move back to scratch
c.fld f13, 40(x15) # perform operation

# Testcase cp_imm_mul
la x12, scratch # base address 
addi x12, x12, 48
li x14, 0x4b099196 # load x14 with 32 MSBs of 0x4b099196664c6348
li x9, 0x664c6348 # load x9 with 32 LSBs 0x4b099196664c6348
sw x14, 48(x12) # store x14 (0x4b099196) in memory
addi x12, x12, 4 # move address up by 4
sw x9, 48(x12) # store x9 (0x664c6348) after 4 bytes in memory
addi x12, x12, -4 # move back to scratch
c.fld f11, 48(x12) # perform operation

# Testcase cp_imm_mul
la x9, scratch # base address 
addi x9, x9, 56
li x8, 0x5842cfe4 # load x8 with 32 MSBs of 0x5842cfe4ea63338c
li x12, 0xea63338c # load x12 with 32 LSBs 0x5842cfe4ea63338c
sw x8, 56(x9) # store x8 (0x5842cfe4) in memory
addi x9, x9, 4 # move address up by 4
sw x12, 56(x9) # store x12 (0xea63338c) after 4 bytes in memory
addi x9, x9, -4 # move back to scratch
c.fld f11, 56(x9) # perform operation

# Testcase cp_imm_mul
la x15, scratch # base address 
addi x15, x15, 64
li x8, 0xec82a14e # load x8 with 32 MSBs of 0xec82a14edd32e943
li x9, 0xdd32e943 # load x9 with 32 LSBs 0xec82a14edd32e943
sw x8, 64(x15) # store x8 (0xec82a14e) in memory
addi x15, x15, 4 # move address up by 4
sw x9, 64(x15) # store x9 (0xdd32e943) after 4 bytes in memory
addi x15, x15, -4 # move back to scratch
c.fld f14, 64(x15) # perform operation

# Testcase cp_imm_mul
la x12, scratch # base address 
addi x12, x12, 72
li x15, 0x8ccfbcf2 # load x15 with 32 MSBs of 0x8ccfbcf2928bd5d5
li x9, 0x928bd5d5 # load x9 with 32 LSBs 0x8ccfbcf2928bd5d5
sw x15, 72(x12) # store x15 (0x8ccfbcf2) in memory
addi x12, x12, 4 # move address up by 4
sw x9, 72(x12) # store x9 (0x928bd5d5) after 4 bytes in memory
addi x12, x12, -4 # move back to scratch
c.fld f15, 72(x12) # perform operation

# Testcase cp_imm_mul
la x15, scratch # base address 
addi x15, x15, 80
li x14, 0xedc4d4c1 # load x14 with 32 MSBs of 0xedc4d4c1f92dc85b
li x9, 0xf92dc85b # load x9 with 32 LSBs 0xedc4d4c1f92dc85b
sw x14, 80(x15) # store x14 (0xedc4d4c1) in memory
addi x15, x15, 4 # move address up by 4
sw x9, 80(x15) # store x9 (0xf92dc85b) after 4 bytes in memory
addi x15, x15, -4 # move back to scratch
c.fld f10, 80(x15) # perform operation

# Testcase cp_imm_mul
la x8, scratch # base address 
addi x8, x8, 88
li x14, 0x074efe6a # load x14 with 32 MSBs of 0x074efe6a04b4de7a
li x9, 0x04b4de7a # load x9 with 32 LSBs 0x074efe6a04b4de7a
sw x14, 88(x8) # store x14 (0x074efe6a) in memory
addi x8, x8, 4 # move address up by 4
sw x9, 88(x8) # store x9 (0x04b4de7a) after 4 bytes in memory
addi x8, x8, -4 # move back to scratch
c.fld f12, 88(x8) # perform operation

# Testcase cp_imm_mul
la x11, scratch # base address 
addi x11, x11, 96
li x8, 0x43248598 # load x8 with 32 MSBs of 0x43248598ed69d709
li x9, 0xed69d709 # load x9 with 32 LSBs 0x43248598ed69d709
sw x8, 96(x11) # store x8 (0x43248598) in memory
addi x11, x11, 4 # move address up by 4
sw x9, 96(x11) # store x9 (0xed69d709) after 4 bytes in memory
addi x11, x11, -4 # move back to scratch
c.fld f13, 96(x11) # perform operation

# Testcase cp_imm_mul
la x10, scratch # base address 
addi x10, x10, 104
li x8, 0x71ed57ee # load x8 with 32 MSBs of 0x71ed57ee0c143cd4
li x9, 0x0c143cd4 # load x9 with 32 LSBs 0x71ed57ee0c143cd4
sw x8, 104(x10) # store x8 (0x71ed57ee) in memory
addi x10, x10, 4 # move address up by 4
sw x9, 104(x10) # store x9 (0x0c143cd4) after 4 bytes in memory
addi x10, x10, -4 # move back to scratch
c.fld f9, 104(x10) # perform operation

# Testcase cp_imm_mul
la x13, scratch # base address 
addi x13, x13, 112
li x8, 0x26da1c14 # load x8 with 32 MSBs of 0x26da1c146bb62e5e
li x9, 0x6bb62e5e # load x9 with 32 LSBs 0x26da1c146bb62e5e
sw x8, 112(x13) # store x8 (0x26da1c14) in memory
addi x13, x13, 4 # move address up by 4
sw x9, 112(x13) # store x9 (0x6bb62e5e) after 4 bytes in memory
addi x13, x13, -4 # move back to scratch
c.fld f9, 112(x13) # perform operation

# Testcase cp_imm_mul
la x9, scratch # base address 
addi x9, x9, 120
li x8, 0x7c5fdc4a # load x8 with 32 MSBs of 0x7c5fdc4abd8fc64c
li x14, 0xbd8fc64c # load x14 with 32 LSBs 0x7c5fdc4abd8fc64c
sw x8, 120(x9) # store x8 (0x7c5fdc4a) in memory
addi x9, x9, 4 # move address up by 4
sw x14, 120(x9) # store x14 (0xbd8fc64c) after 4 bytes in memory
addi x9, x9, -4 # move back to scratch
c.fld f14, 120(x9) # perform operation

# Testcase cp_imm_mul
la x15, scratch # base address 
addi x15, x15, 128
li x8, 0x8e409520 # load x8 with 32 MSBs of 0x8e40952044d219bd
li x14, 0x44d219bd # load x14 with 32 LSBs 0x8e40952044d219bd
sw x8, 128(x15) # store x8 (0x8e409520) in memory
addi x15, x15, 4 # move address up by 4
sw x14, 128(x15) # store x14 (0x44d219bd) after 4 bytes in memory
addi x15, x15, -4 # move back to scratch
c.fld f13, 128(x15) # perform operation

# Testcase cp_imm_mul
la x11, scratch # base address 
addi x11, x11, 136
li x8, 0xa910cd5c # load x8 with 32 MSBs of 0xa910cd5cba030619
li x9, 0xba030619 # load x9 with 32 LSBs 0xa910cd5cba030619
sw x8, 136(x11) # store x8 (0xa910cd5c) in memory
addi x11, x11, 4 # move address up by 4
sw x9, 136(x11) # store x9 (0xba030619) after 4 bytes in memory
addi x11, x11, -4 # move back to scratch
c.fld f9, 136(x11) # perform operation

# Testcase cp_imm_mul
la x15, scratch # base address 
addi x15, x15, 144
li x8, 0xe332f4e6 # load x8 with 32 MSBs of 0xe332f4e6739f5ddd
li x9, 0x739f5ddd # load x9 with 32 LSBs 0xe332f4e6739f5ddd
sw x8, 144(x15) # store x8 (0xe332f4e6) in memory
addi x15, x15, 4 # move address up by 4
sw x9, 144(x15) # store x9 (0x739f5ddd) after 4 bytes in memory
addi x15, x15, -4 # move back to scratch
c.fld f10, 144(x15) # perform operation

# Testcase cp_imm_mul
la x14, scratch # base address 
addi x14, x14, 152
li x8, 0xa7809820 # load x8 with 32 MSBs of 0xa7809820e1aed372
li x9, 0xe1aed372 # load x9 with 32 LSBs 0xa7809820e1aed372
sw x8, 152(x14) # store x8 (0xa7809820) in memory
addi x14, x14, 4 # move address up by 4
sw x9, 152(x14) # store x9 (0xe1aed372) after 4 bytes in memory
addi x14, x14, -4 # move back to scratch
c.fld f9, 152(x14) # perform operation

# Testcase cp_imm_mul
la x8, scratch # base address 
addi x8, x8, 160
li x14, 0x9d6a1534 # load x14 with 32 MSBs of 0x9d6a1534c3958927
li x9, 0xc3958927 # load x9 with 32 LSBs 0x9d6a1534c3958927
sw x14, 160(x8) # store x14 (0x9d6a1534) in memory
addi x8, x8, 4 # move address up by 4
sw x9, 160(x8) # store x9 (0xc3958927) after 4 bytes in memory
addi x8, x8, -4 # move back to scratch
c.fld f14, 160(x8) # perform operation

# Testcase cp_imm_mul
la x11, scratch # base address 
addi x11, x11, 168
li x8, 0xae72e578 # load x8 with 32 MSBs of 0xae72e578a8f494e7
li x15, 0xa8f494e7 # load x15 with 32 LSBs 0xae72e578a8f494e7
sw x8, 168(x11) # store x8 (0xae72e578) in memory
addi x11, x11, 4 # move address up by 4
sw x15, 168(x11) # store x15 (0xa8f494e7) after 4 bytes in memory
addi x11, x11, -4 # move back to scratch
c.fld f14, 168(x11) # perform operation

# Testcase cp_imm_mul
la x10, scratch # base address 
addi x10, x10, 176
li x8, 0x54f933db # load x8 with 32 MSBs of 0x54f933db0f4e414e
li x9, 0x0f4e414e # load x9 with 32 LSBs 0x54f933db0f4e414e
sw x8, 176(x10) # store x8 (0x54f933db) in memory
addi x10, x10, 4 # move address up by 4
sw x9, 176(x10) # store x9 (0x0f4e414e) after 4 bytes in memory
addi x10, x10, -4 # move back to scratch
c.fld f9, 176(x10) # perform operation

# Testcase cp_imm_mul
la x9, scratch # base address 
addi x9, x9, 184
li x8, 0xf5897373 # load x8 with 32 MSBs of 0xf58973739ef6c459
li x12, 0x9ef6c459 # load x12 with 32 LSBs 0xf58973739ef6c459
sw x8, 184(x9) # store x8 (0xf5897373) in memory
addi x9, x9, 4 # move address up by 4
sw x12, 184(x9) # store x12 (0x9ef6c459) after 4 bytes in memory
addi x9, x9, -4 # move back to scratch
c.fld f15, 184(x9) # perform operation

# Testcase cp_imm_mul
la x14, scratch # base address 
addi x14, x14, 192
li x8, 0x4e3900ef # load x8 with 32 MSBs of 0x4e3900ef88ad0f8f
li x9, 0x88ad0f8f # load x9 with 32 LSBs 0x4e3900ef88ad0f8f
sw x8, 192(x14) # store x8 (0x4e3900ef) in memory
addi x14, x14, 4 # move address up by 4
sw x9, 192(x14) # store x9 (0x88ad0f8f) after 4 bytes in memory
addi x14, x14, -4 # move back to scratch
c.fld f12, 192(x14) # perform operation

# Testcase cp_imm_mul
la x8, scratch # base address 
addi x8, x8, 200
li x11, 0xc56b39c4 # load x11 with 32 MSBs of 0xc56b39c41afb4e64
li x10, 0x1afb4e64 # load x10 with 32 LSBs 0xc56b39c41afb4e64
sw x11, 200(x8) # store x11 (0xc56b39c4) in memory
addi x8, x8, 4 # move address up by 4
sw x10, 200(x8) # store x10 (0x1afb4e64) after 4 bytes in memory
addi x8, x8, -4 # move back to scratch
c.fld f15, 200(x8) # perform operation

# Testcase cp_imm_mul
la x15, scratch # base address 
addi x15, x15, 208
li x8, 0x8d79502a # load x8 with 32 MSBs of 0x8d79502a867cfd4f
li x9, 0x867cfd4f # load x9 with 32 LSBs 0x8d79502a867cfd4f
sw x8, 208(x15) # store x8 (0x8d79502a) in memory
addi x15, x15, 4 # move address up by 4
sw x9, 208(x15) # store x9 (0x867cfd4f) after 4 bytes in memory
addi x15, x15, -4 # move back to scratch
c.fld f10, 208(x15) # perform operation

# Testcase cp_imm_mul
la x8, scratch # base address 
addi x8, x8, 216
li x10, 0x4b9df9c6 # load x10 with 32 MSBs of 0x4b9df9c69afe3b8f
li x9, 0x9afe3b8f # load x9 with 32 LSBs 0x4b9df9c69afe3b8f
sw x10, 216(x8) # store x10 (0x4b9df9c6) in memory
addi x8, x8, 4 # move address up by 4
sw x9, 216(x8) # store x9 (0x9afe3b8f) after 4 bytes in memory
addi x8, x8, -4 # move back to scratch
c.fld f12, 216(x8) # perform operation

# Testcase cp_imm_mul
la x10, scratch # base address 
addi x10, x10, 224
li x8, 0xbdeb662c # load x8 with 32 MSBs of 0xbdeb662cdc217c73
li x9, 0xdc217c73 # load x9 with 32 LSBs 0xbdeb662cdc217c73
sw x8, 224(x10) # store x8 (0xbdeb662c) in memory
addi x10, x10, 4 # move address up by 4
sw x9, 224(x10) # store x9 (0xdc217c73) after 4 bytes in memory
addi x10, x10, -4 # move back to scratch
c.fld f13, 224(x10) # perform operation

# Testcase cp_imm_mul
la x13, scratch # base address 
addi x13, x13, 232
li x8, 0x1bde1a28 # load x8 with 32 MSBs of 0x1bde1a282b068f70
li x10, 0x2b068f70 # load x10 with 32 LSBs 0x1bde1a282b068f70
sw x8, 232(x13) # store x8 (0x1bde1a28) in memory
addi x13, x13, 4 # move address up by 4
sw x10, 232(x13) # store x10 (0x2b068f70) after 4 bytes in memory
addi x13, x13, -4 # move back to scratch
c.fld f8, 232(x13) # perform operation

# Testcase cp_imm_mul
la x15, scratch # base address 
addi x15, x15, 240
li x8, 0x469e3ca6 # load x8 with 32 MSBs of 0x469e3ca657569307
li x9, 0x57569307 # load x9 with 32 LSBs 0x469e3ca657569307
sw x8, 240(x15) # store x8 (0x469e3ca6) in memory
addi x15, x15, 4 # move address up by 4
sw x9, 240(x15) # store x9 (0x57569307) after 4 bytes in memory
addi x15, x15, -4 # move back to scratch
c.fld f8, 240(x15) # perform operation

# Testcase cp_imm_mul
la x9, scratch # base address 
addi x9, x9, 248
li x8, 0x8ce3cc0a # load x8 with 32 MSBs of 0x8ce3cc0a409ad30a
li x14, 0x409ad30a # load x14 with 32 LSBs 0x8ce3cc0a409ad30a
sw x8, 248(x9) # store x8 (0x8ce3cc0a) in memory
addi x9, x9, 4 # move address up by 4
sw x14, 248(x9) # store x14 (0x409ad30a) after 4 bytes in memory
addi x9, x9, -4 # move back to scratch
c.fld f10, 248(x9) # perform operation

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-c.fsdsp.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase cp_imm_mul
li x10, 0x84929a36 # initialize rs2
fmv.w.x f10, x24 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -256 # offset stack pointer from signature
c.fsdsp f10, 256(sp)# perform operation

# Testcase cp_imm_mul
li x30, 0xb813ac92 # initialize rs2
fmv.w.x f30, x28 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -264 # offset stack pointer from signature
c.fsdsp f30, 264(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0x79a80480 # initialize rs2
fmv.w.x f24, x11 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -272 # offset stack pointer from signature
c.fsdsp f24, 272(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0xad4d9d02 # initialize rs2
fmv.w.x f24, x28 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -280 # offset stack pointer from signature
c.fsdsp f24, 280(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0x24ab52bd # initialize rs2
fmv.w.x f12, x27 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -288 # offset stack pointer from signature
c.fsdsp f12, 288(sp)# perform operation

# Testcase cp_imm_mul
li x9, 0x2b25d79f # initialize rs2
fmv.w.x f9, x12 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -296 # offset stack pointer from signature
c.fsdsp f9, 296(sp)# perform operation

# Testcase cp_imm_mul
li x28, 0x27cc7941 # initialize rs2
fmv.w.x f28, x20 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -304 # offset stack pointer from signature
c.fsdsp f28, 304(sp)# perform operation

# Testcase cp_imm_mul
li x19, 0xd9c4aa81 # initialize rs2
fmv.w.x f19, x9 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -312 # offset stack pointer from signature
c.fsdsp f19, 312(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0x32c9f307 # initialize rs2
fmv.w.x f8, x12 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -320 # offset stack pointer from signature
c.fsdsp f8, 320(sp)# perform operation

# Testcase cp_imm_mul
li x3, 0xf33585c0 # initialize rs2
fmv.w.x f3, x6 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -328 # offset stack pointer from signature
c.fsdsp f3, 328(sp)# perform operation

# Testcase cp_imm_mul
li x10, 0x505acc2e # initialize rs2
fmv.w.x f10, x24 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -336 # offset stack pointer from signature
c.fsdsp f10, 336(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0x581680c6 # initialize rs2
fmv.w.x f24, x10 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -344 # offset stack pointer from signature
c.fsdsp f24, 344(sp)# perform operation

# Testcase cp_imm_mul
li x13, 0xc212ebdf # initialize rs2
fmv.w.x f13, x6 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -352 # offset stack pointer from signature
c.fsdsp f13, 352(sp)# perform operation

# Testcase cp_imm_mul
li x13, 0xf4c2a6ed # initialize rs2
fmv.w.x f13, x19 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -360 # offset stack pointer from signature
c.fsdsp f13, 360(sp)# perform operation

# Testcase cp_imm_mul
li x6, 0x79c0ba53 # initialize rs2
fmv.w.x f6, x18 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -368 # offset stack pointer from signature
c.fsdsp f6, 368(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0x5cb806ba # initialize rs2
fmv.w.x f14, x1 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -376 # offset stack pointer from signature
c.fsdsp f14, 376(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0x10aabd3c # initialize rs2
fmv.w.x f29, x13 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -384 # offset stack pointer from signature
c.fsdsp f29, 384(sp)# perform operation

# Testcase cp_imm_mul
li x19, 0x954b4582 # initialize rs2
fmv.w.x f19, x1 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -392 # offset stack pointer from signature
c.fsdsp f19, 392(sp)# perform operation

# Testcase cp_imm_mul
li x9, 0xc0c10bf1 # initialize rs2
fmv.w.x f9, x16 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -400 # offset stack pointer from signature
c.fsdsp f9, 400(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0x389c5a3a # initialize rs2
fmv.w.x f31, x14 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -408 # offset stack pointer from signature
c.fsdsp f31, 408(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0x76c1f0f2 # initialize rs2
fmv.w.x f14, x26 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -416 # offset stack pointer from signature
c.fsdsp f14, 416(sp)# perform operation

# Testcase cp_imm_mul
li x17, 0x4b2e6bb7 # initialize rs2
fmv.w.x f17, x31 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -424 # offset stack pointer from signature
c.fsdsp f17, 424(sp)# perform operation

# Testcase cp_imm_mul
li x10, 0x500b9fb4 # initialize rs2
fmv.w.x f10, x1 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -432 # offset stack pointer from signature
c.fsdsp f10, 432(sp)# perform operation

# Testcase cp_imm_mul
li x5, 0x79b930dc # initialize rs2
fmv.w.x f5, x9 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -440 # offset stack pointer from signature
c.fsdsp f5, 440(sp)# perform operation

# Testcase cp_imm_mul
li x5, 0x0deaddb3 # initialize rs2
fmv.w.x f5, x30 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -448 # offset stack pointer from signature
c.fsdsp f5, 448(sp)# perform operation

# Testcase cp_imm_mul
li x25, 0xdab476b1 # initialize rs2
fmv.w.x f25, x21 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -456 # offset stack pointer from signature
c.fsdsp f25, 456(sp)# perform operation

# Testcase cp_imm_mul
li x28, 0x7b1cf041 # initialize rs2
fmv.w.x f28, x8 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -464 # offset stack pointer from signature
c.fsdsp f28, 464(sp)# perform operation

# Testcase cp_imm_mul
li x23, 0xe4ec6a26 # initialize rs2
fmv.w.x f23, x2 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -472 # offset stack pointer from signature
c.fsdsp f23, 472(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0xde6ec08d # initialize rs2
fmv.w.x f8, x17 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -480 # offset stack pointer from signature
c.fsdsp f8, 480(sp)# perform operation

# Testcase cp_imm_mul
li x30, 0x5f74ce2d # initialize rs2
fmv.w.x f30, x22 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -488 # offset stack pointer from signature
c.fsdsp f30, 488(sp)# perform operation

# Testcase cp_imm_mul
li x30, 0xd9172a25 # initialize rs2
fmv.w.x f30, x2 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -496 # offset stack pointer from signature
c.fsdsp f30, 496(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0xcafcf7a8 # initialize rs2
fmv.w.x f29, x3 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -504 # offset stack pointer from signature
c.fsdsp f29, 504(sp)# perform operation

# Testcase cp_imm_mul
li x28, 0x4f6d4119 # initialize rs2
fmv.w.x f28, x20 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, 0 # offset stack pointer from signature
c.fsdsp f28, 0(sp)# perform operation

# Testcase cp_imm_mul
li x30, 0x143da2c0 # initialize rs2
fmv.w.x f30, x14 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -8 # offset stack pointer from signature
c.fsdsp f30, 8(sp)# perform operation

# Testcase cp_imm_mul
li x11, 0xb8a6408f # initialize rs2
fmv.w.x f11, x29 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -16 # offset stack pointer from signature
c.fsdsp f11, 16(sp)# perform operation

# Testcase cp_imm_mul
li x6, 0x178c796a # initialize rs2
fmv.w.x f6, x18 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -24 # offset stack pointer from signature
c.fsdsp f6, 24(sp)# perform operation

# Testcase cp_imm_mul
li x1, 0x46105f03 # initialize rs2
fmv.w.x f1, x10 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -32 # offset stack pointer from signature
c.fsdsp f1, 32(sp)# perform operation

# Testcase cp_imm_mul
li x16, 0x6fd5d578 # initialize rs2
fmv.w.x f16, x1 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -40 # offset stack pointer from signature
c.fsdsp f16, 40(sp)# perform operation

# Testcase cp_imm_mul
li x20, 0x52dae397 # initialize rs2
fmv.w.x f20, x16 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -48 # offset stack pointer from signature
c.fsdsp f20, 48(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0xaa080261 # initialize rs2
fmv.w.x f8, x1 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -56 # offset stack pointer from signature
c.fsdsp f8, 56(sp)# perform operation

# Testcase cp_imm_mul
li x17, 0x929ab969 # initialize rs2
fmv.w.x f17, x1 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -64 # offset stack pointer from signature
c.fsdsp f17, 64(sp)# perform operation

# Testcase cp_imm_mul
li x23, 0xba566be4 # initialize rs2
fmv.w.x f23, x10 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -72 # offset stack pointer from signature
c.fsdsp f23, 72(sp)# perform operation

# Testcase cp_imm_mul
li x2, 0x75afe05a # initialize rs2
fmv.w.x f2, x28 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -80 # offset stack pointer from signature
c.fsdsp f2, 80(sp)# perform operation

# Testcase cp_imm_mul
li x6, 0x4d422392 # initialize rs2
fmv.w.x f6, x26 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -88 # offset stack pointer from signature
c.fsdsp f6, 88(sp)# perform operation

# Testcase cp_imm_mul
li x10, 0x3067d376 # initialize rs2
fmv.w.x f10, x25 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -96 # offset stack pointer from signature
c.fsdsp f10, 96(sp)# perform operation

# Testcase cp_imm_mul
li x25, 0xe2be7348 # initialize rs2
fmv.w.x f25, x13 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -104 # offset stack pointer from signature
c.fsdsp f25, 104(sp)# perform operation

# Testcase cp_imm_mul
li x28, 0x90f6cdc2 # initialize rs2
fmv.w.x f28, x11 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -112 # offset stack pointer from signature
c.fsdsp f28, 112(sp)# perform operation

# Testcase cp_imm_mul
li x19, 0x7a37f997 # initialize rs2
fmv.w.x f19, x27 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -120 # offset stack pointer from signature
c.fsdsp f19, 120(sp)# perform operation

# Testcase cp_imm_mul
li x9, 0x2bcb479d # initialize rs2
fmv.w.x f9, x31 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -128 # offset stack pointer from signature
c.fsdsp f9, 128(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0x82e72f69 # initialize rs2
fmv.w.x f24, x31 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -136 # offset stack pointer from signature
c.fsdsp f24, 136(sp)# perform operation

# Testcase cp_imm_mul
li x30, 0x71b66e62 # initialize rs2
fmv.w.x f30, x3 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -144 # offset stack pointer from signature
c.fsdsp f30, 144(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0x10b819f8 # initialize rs2
fmv.w.x f12, x26 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -152 # offset stack pointer from signature
c.fsdsp f12, 152(sp)# perform operation

# Testcase cp_imm_mul
li x26, 0x0146a42d # initialize rs2
fmv.w.x f26, x7 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -160 # offset stack pointer from signature
c.fsdsp f26, 160(sp)# perform operation

# Testcase cp_imm_mul
li x26, 0xfad4171b # initialize rs2
fmv.w.x f26, x29 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -168 # offset stack pointer from signature
c.fsdsp f26, 168(sp)# perform operation

# Testcase cp_imm_mul
li x2, 0x0895fc4e # initialize rs2
fmv.w.x f2, x3 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -176 # offset stack pointer from signature
c.fsdsp f2, 176(sp)# perform operation

# Testcase cp_imm_mul
li x2, 0x8e97f442 # initialize rs2
fmv.w.x f2, x21 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -184 # offset stack pointer from signature
c.fsdsp f2, 184(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0xc15e1f68 # initialize rs2
fmv.w.x f24, x21 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -192 # offset stack pointer from signature
c.fsdsp f24, 192(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0xbb96f520 # initialize rs2
fmv.w.x f24, x21 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -200 # offset stack pointer from signature
c.fsdsp f24, 200(sp)# perform operation

# Testcase cp_imm_mul
li x22, 0x949f24b6 # initialize rs2
fmv.w.x f22, x24 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -208 # offset stack pointer from signature
c.fsdsp f22, 208(sp)# perform operation

# Testcase cp_imm_mul
li x7, 0x3108e3e7 # initialize rs2
fmv.w.x f7, x8 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -216 # offset stack pointer from signature
c.fsdsp f7, 216(sp)# perform operation

# Testcase cp_imm_mul
li x3, 0xf70c2ed6 # initialize rs2
fmv.w.x f3, x8 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -224 # offset stack pointer from signature
c.fsdsp f3, 224(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0x9a25fc2b # initialize rs2
fmv.w.x f12, x14 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -232 # offset stack pointer from signature
c.fsdsp f12, 232(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0xf131a128 # initialize rs2
fmv.w.x f12, x31 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -240 # offset stack pointer from signature
c.fsdsp f12, 240(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0xfc072b44 # initialize rs2
fmv.w.x f31, x1 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -248 # offset stack pointer from signature
c.fsdsp f31, 248(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x0, 0xb86baf8f # initialize rs2
fmv.w.x f0, x18 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -80 # offset stack pointer from signature
c.fsdsp f0, 80(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x1, 0x6cc2bb8e # initialize rs2
fmv.w.x f1, x2 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -504 # offset stack pointer from signature
c.fsdsp f1, 504(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x2, 0xd2c4a7e3 # initialize rs2
fmv.w.x f2, x23 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -416 # offset stack pointer from signature
c.fsdsp f2, 416(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x3, 0x26881723 # initialize rs2
fmv.w.x f3, x11 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -176 # offset stack pointer from signature
c.fsdsp f3, 176(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x39e5e522 # initialize rs2
fmv.w.x f4, x12 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -176 # offset stack pointer from signature
c.fsdsp f4, 176(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x4acab035 # initialize rs2
fmv.w.x f5, x17 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -144 # offset stack pointer from signature
c.fsdsp f5, 144(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x0e782d7d # initialize rs2
fmv.w.x f6, x12 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -400 # offset stack pointer from signature
c.fsdsp f6, 400(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x4ac7f493 # initialize rs2
fmv.w.x f7, x23 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -504 # offset stack pointer from signature
c.fsdsp f7, 504(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x8, 0x4dc60d31 # initialize rs2
fmv.w.x f8, x17 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -296 # offset stack pointer from signature
c.fsdsp f8, 296(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x9, 0x12f125ad # initialize rs2
fmv.w.x f9, x29 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -248 # offset stack pointer from signature
c.fsdsp f9, 248(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x10, 0x2d37b014 # initialize rs2
fmv.w.x f10, x6 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -16 # offset stack pointer from signature
c.fsdsp f10, 16(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x11, 0xb61e90cc # initialize rs2
fmv.w.x f11, x18 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -376 # offset stack pointer from signature
c.fsdsp f11, 376(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x12, 0xecf163d8 # initialize rs2
fmv.w.x f12, x18 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -64 # offset stack pointer from signature
c.fsdsp f12, 64(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x13, 0x0da7e625 # initialize rs2
fmv.w.x f13, x8 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -344 # offset stack pointer from signature
c.fsdsp f13, 344(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x14, 0x563b39dc # initialize rs2
fmv.w.x f14, x19 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -160 # offset stack pointer from signature
c.fsdsp f14, 160(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x15, 0x39b57067 # initialize rs2
fmv.w.x f15, x6 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -24 # offset stack pointer from signature
c.fsdsp f15, 24(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x16, 0x21c51c10 # initialize rs2
fmv.w.x f16, x24 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -376 # offset stack pointer from signature
c.fsdsp f16, 376(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x17, 0x9fd207c1 # initialize rs2
fmv.w.x f17, x21 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -376 # offset stack pointer from signature
c.fsdsp f17, 376(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x18, 0xed6c1ce2 # initialize rs2
fmv.w.x f18, x30 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -504 # offset stack pointer from signature
c.fsdsp f18, 504(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x19, 0xecb11e00 # initialize rs2
fmv.w.x f19, x8 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -256 # offset stack pointer from signature
c.fsdsp f19, 256(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x20, 0x240a4266 # initialize rs2
fmv.w.x f20, x22 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -296 # offset stack pointer from signature
c.fsdsp f20, 296(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x21, 0x08d632d3 # initialize rs2
fmv.w.x f21, x19 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -48 # offset stack pointer from signature
c.fsdsp f21, 48(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x22, 0x06cb7af2 # initialize rs2
fmv.w.x f22, x13 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, 0 # offset stack pointer from signature
c.fsdsp f22, 0(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x23, 0xfe196297 # initialize rs2
fmv.w.x f23, x25 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -176 # offset stack pointer from signature
c.fsdsp f23, 176(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x24, 0x3c48fa22 # initialize rs2
fmv.w.x f24, x11 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -176 # offset stack pointer from signature
c.fsdsp f24, 176(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x25, 0x212f2ff1 # initialize rs2
fmv.w.x f25, x22 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -64 # offset stack pointer from signature
c.fsdsp f25, 64(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x26, 0xb8106287 # initialize rs2
fmv.w.x f26, x17 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -312 # offset stack pointer from signature
c.fsdsp f26, 312(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x27, 0x3f975ac1 # initialize rs2
fmv.w.x f27, x20 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -360 # offset stack pointer from signature
c.fsdsp f27, 360(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x28, 0xa40a8d37 # initialize rs2
fmv.w.x f28, x19 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -176 # offset stack pointer from signature
c.fsdsp f28, 176(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x29, 0x840fed6f # initialize rs2
fmv.w.x f29, x23 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -192 # offset stack pointer from signature
c.fsdsp f29, 192(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x30, 0x664ac148 # initialize rs2
fmv.w.x f30, x1 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -248 # offset stack pointer from signature
c.fsdsp f30, 248(sp)# perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x31, 0xf57de137 # initialize rs2
fmv.w.x f31, x16 # move the random value into fs2
la sp, scratch # base address 
addi sp, sp, -72 # offset stack pointer from signature
c.fsdsp f31, 72(sp)# perform operation

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-c.fsd.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase cp_rs1 (Test source rs1 = x8)
la x8, scratch # base address
li x13, 0xb8e0c885 # initialize rs2 with random value
li x12, 0x5e23c06c # initialize x12 with random value{formatstr.format(rs1val)}
sw x13, 0(x8) # store 0xb8e0c885 in memory
sw x12, 4(x8) # store 0x5e23c06c in memory
fld f13, 0(x8) # load 0x5e23c06cb8e0c885 from memory into fs2
sw x0, 0(x8) # clearing the random value store at scratch
sw x0, 4(x8) # clearing the random value store at 4(scratch)
addi x8, x8, -64 # sub immediate from rs1 to counter offset
c.fsd f13, 64(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
la x9, scratch # base address
li x13, 0x58cb99d1 # initialize rs2 with random value
li x8, 0x7a766544 # initialize x8 with random value{formatstr.format(rs1val)}
sw x13, 0(x9) # store 0x58cb99d1 in memory
sw x8, 4(x9) # store 0x7a766544 in memory
fld f13, 0(x9) # load 0x7a76654458cb99d1 from memory into fs2
sw x0, 0(x9) # clearing the random value store at scratch
sw x0, 4(x9) # clearing the random value store at 4(scratch)
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.fsd f13, 0(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
la x10, scratch # base address
li x8, 0x9e3fe27f # initialize rs2 with random value
li x9, 0xb524ce83 # initialize x9 with random value{formatstr.format(rs1val)}
sw x8, 0(x10) # store 0x9e3fe27f in memory
sw x9, 4(x10) # store 0xb524ce83 in memory
fld f8, 0(x10) # load 0xb524ce839e3fe27f from memory into fs2
sw x0, 0(x10) # clearing the random value store at scratch
sw x0, 4(x10) # clearing the random value store at 4(scratch)
addi x10, x10, -16 # sub immediate from rs1 to counter offset
c.fsd f8, 16(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
la x11, scratch # base address
li x9, 0xccb96809 # initialize rs2 with random value
li x8, 0xa7d5cb8e # initialize x8 with random value{formatstr.format(rs1val)}
sw x9, 0(x11) # store 0xccb96809 in memory
sw x8, 4(x11) # store 0xa7d5cb8e in memory
fld f9, 0(x11) # load 0xa7d5cb8eccb96809 from memory into fs2
sw x0, 0(x11) # clearing the random value store at scratch
sw x0, 4(x11) # clearing the random value store at 4(scratch)
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.fsd f9, 0(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
la x12, scratch # base address
li x13, 0x6d376e95 # initialize rs2 with random value
li x8, 0xb7821219 # initialize x8 with random value{formatstr.format(rs1val)}
sw x13, 0(x12) # store 0x6d376e95 in memory
sw x8, 4(x12) # store 0xb7821219 in memory
fld f13, 0(x12) # load 0xb78212196d376e95 from memory into fs2
sw x0, 0(x12) # clearing the random value store at scratch
sw x0, 4(x12) # clearing the random value store at 4(scratch)
addi x12, x12, -8 # sub immediate from rs1 to counter offset
c.fsd f13, 8(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
la x13, scratch # base address
li x15, 0x120a7b07 # initialize rs2 with random value
li x8, 0xddb38d0c # initialize x8 with random value{formatstr.format(rs1val)}
sw x15, 0(x13) # store 0x120a7b07 in memory
sw x8, 4(x13) # store 0xddb38d0c in memory
fld f15, 0(x13) # load 0xddb38d0c120a7b07 from memory into fs2
sw x0, 0(x13) # clearing the random value store at scratch
sw x0, 4(x13) # clearing the random value store at 4(scratch)
addi x13, x13, -8 # sub immediate from rs1 to counter offset
c.fsd f15, 8(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
la x14, scratch # base address
li x8, 0x146c6795 # initialize rs2 with random value
li x10, 0x250ddd33 # initialize x10 with random value{formatstr.format(rs1val)}
sw x8, 0(x14) # store 0x146c6795 in memory
sw x10, 4(x14) # store 0x250ddd33 in memory
fld f8, 0(x14) # load 0x250ddd33146c6795 from memory into fs2
sw x0, 0(x14) # clearing the random value store at scratch
sw x0, 4(x14) # clearing the random value store at 4(scratch)
addi x14, x14, -80 # sub immediate from rs1 to counter offset
c.fsd f8, 80(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
la x15, scratch # base address
li x10, 0x155ba885 # initialize rs2 with random value
li x8, 0x2c1b76dd # initialize x8 with random value{formatstr.format(rs1val)}
sw x10, 0(x15) # store 0x155ba885 in memory
sw x8, 4(x15) # store 0x2c1b76dd in memory
fld f10, 0(x15) # load 0x2c1b76dd155ba885 from memory into fs2
sw x0, 0(x15) # clearing the random value store at scratch
sw x0, 4(x15) # clearing the random value store at 4(scratch)
addi x15, x15, -200 # sub immediate from rs1 to counter offset
c.fsd f10, 200(x15) # perform operation 

# Testcase cp_fs2 (Test source fs2 = f8)
la x11, scratch # base address
li x8, 0x654e6db7 # initialize rs2 with random value
li x12, 0x7b3b0dfd # initialize x12 with random value{formatstr.format(rs1val)}
sw x8, 0(x11) # store 0x654e6db7 in memory
sw x12, 4(x11) # store 0x7b3b0dfd in memory
fld f8, 0(x11) # load 0x7b3b0dfd654e6db7 from memory into fs2
sw x0, 0(x11) # clearing the random value store at scratch
sw x0, 4(x11) # clearing the random value store at 4(scratch)
addi x11, x11, -208 # sub immediate from rs1 to counter offset
c.fsd f8, 208(x11) # perform operation 

# Testcase cp_fs2 (Test source fs2 = f9)
la x10, scratch # base address
li x9, 0xddc70143 # initialize rs2 with random value
li x8, 0x4355a9e1 # initialize x8 with random value{formatstr.format(rs1val)}
sw x9, 0(x10) # store 0xddc70143 in memory
sw x8, 4(x10) # store 0x4355a9e1 in memory
fld f9, 0(x10) # load 0x4355a9e1ddc70143 from memory into fs2
sw x0, 0(x10) # clearing the random value store at scratch
sw x0, 4(x10) # clearing the random value store at 4(scratch)
addi x10, x10, -232 # sub immediate from rs1 to counter offset
c.fsd f9, 232(x10) # perform operation 

# Testcase cp_fs2 (Test source fs2 = f10)
la x8, scratch # base address
li x10, 0xfca7928f # initialize rs2 with random value
li x13, 0x45c3bc1a # initialize x13 with random value{formatstr.format(rs1val)}
sw x10, 0(x8) # store 0xfca7928f in memory
sw x13, 4(x8) # store 0x45c3bc1a in memory
fld f10, 0(x8) # load 0x45c3bc1afca7928f from memory into fs2
sw x0, 0(x8) # clearing the random value store at scratch
sw x0, 4(x8) # clearing the random value store at 4(scratch)
addi x8, x8, -160 # sub immediate from rs1 to counter offset
c.fsd f10, 160(x8) # perform operation 

# Testcase cp_fs2 (Test source fs2 = f11)
la x10, scratch # base address
li x11, 0x2102c5ef # initialize rs2 with random value
li x8, 0x920e921d # initialize x8 with random value{formatstr.format(rs1val)}
sw x11, 0(x10) # store 0x2102c5ef in memory
sw x8, 4(x10) # store 0x920e921d in memory
fld f11, 0(x10) # load 0x920e921d2102c5ef from memory into fs2
sw x0, 0(x10) # clearing the random value store at scratch
sw x0, 4(x10) # clearing the random value store at 4(scratch)
addi x10, x10, -24 # sub immediate from rs1 to counter offset
c.fsd f11, 24(x10) # perform operation 

# Testcase cp_fs2 (Test source fs2 = f12)
la x14, scratch # base address
li x12, 0x7f1fc339 # initialize rs2 with random value
li x8, 0xfa18f923 # initialize x8 with random value{formatstr.format(rs1val)}
sw x12, 0(x14) # store 0x7f1fc339 in memory
sw x8, 4(x14) # store 0xfa18f923 in memory
fld f12, 0(x14) # load 0xfa18f9237f1fc339 from memory into fs2
sw x0, 0(x14) # clearing the random value store at scratch
sw x0, 4(x14) # clearing the random value store at 4(scratch)
addi x14, x14, -40 # sub immediate from rs1 to counter offset
c.fsd f12, 40(x14) # perform operation 

# Testcase cp_fs2 (Test source fs2 = f13)
la x8, scratch # base address
li x13, 0x9d96b555 # initialize rs2 with random value
li x9, 0x46e20f95 # initialize x9 with random value{formatstr.format(rs1val)}
sw x13, 0(x8) # store 0x9d96b555 in memory
sw x9, 4(x8) # store 0x46e20f95 in memory
fld f13, 0(x8) # load 0x46e20f959d96b555 from memory into fs2
sw x0, 0(x8) # clearing the random value store at scratch
sw x0, 4(x8) # clearing the random value store at 4(scratch)
addi x8, x8, -80 # sub immediate from rs1 to counter offset
c.fsd f13, 80(x8) # perform operation 

# Testcase cp_fs2 (Test source fs2 = f14)
la x13, scratch # base address
li x14, 0xeeff8151 # initialize rs2 with random value
li x8, 0x621548b9 # initialize x8 with random value{formatstr.format(rs1val)}
sw x14, 0(x13) # store 0xeeff8151 in memory
sw x8, 4(x13) # store 0x621548b9 in memory
fld f14, 0(x13) # load 0x621548b9eeff8151 from memory into fs2
sw x0, 0(x13) # clearing the random value store at scratch
sw x0, 4(x13) # clearing the random value store at 4(scratch)
addi x13, x13, -88 # sub immediate from rs1 to counter offset
c.fsd f14, 88(x13) # perform operation 

# Testcase cp_fs2 (Test source fs2 = f15)
la x9, scratch # base address
li x15, 0x89608ac7 # initialize rs2 with random value
li x8, 0xd0acfff0 # initialize x8 with random value{formatstr.format(rs1val)}
sw x15, 0(x9) # store 0x89608ac7 in memory
sw x8, 4(x9) # store 0xd0acfff0 in memory
fld f15, 0(x9) # load 0xd0acfff089608ac7 from memory into fs2
sw x0, 0(x9) # clearing the random value store at scratch
sw x0, 4(x9) # clearing the random value store at 4(scratch)
addi x9, x9, -40 # sub immediate from rs1 to counter offset
c.fsd f15, 40(x9) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x9, 0x9e8a2857 # initialize rs2 with random value
li x8, 0x0c4b9e83 # initialize x8 with random value{formatstr.format(rs1val)}
sw x9, 0(x15) # store 0x9e8a2857 in memory
sw x8, 4(x15) # store 0xc4b9e83 in memory
fld f9, 0(x15) # load 0xc4b9e839e8a2857 from memory into fs2
sw x0, 0(x15) # clearing the random value store at scratch
sw x0, 4(x15) # clearing the random value store at 4(scratch)
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.fsd f9, 0(x15) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x10, 0x5a7cfafe # initialize rs2 with random value
li x8, 0xec1e2f92 # initialize x8 with random value{formatstr.format(rs1val)}
sw x10, 0(x9) # store 0x5a7cfafe in memory
sw x8, 4(x9) # store 0xec1e2f92 in memory
fld f10, 0(x9) # load 0xec1e2f925a7cfafe from memory into fs2
sw x0, 0(x9) # clearing the random value store at scratch
sw x0, 4(x9) # clearing the random value store at 4(scratch)
addi x9, x9, -8 # sub immediate from rs1 to counter offset
c.fsd f10, 8(x9) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x12, 0x47b4a934 # initialize rs2 with random value
li x8, 0x2affb3dd # initialize x8 with random value{formatstr.format(rs1val)}
sw x12, 0(x15) # store 0x47b4a934 in memory
sw x8, 4(x15) # store 0x2affb3dd in memory
fld f12, 0(x15) # load 0x2affb3dd47b4a934 from memory into fs2
sw x0, 0(x15) # clearing the random value store at scratch
sw x0, 4(x15) # clearing the random value store at 4(scratch)
addi x15, x15, -16 # sub immediate from rs1 to counter offset
c.fsd f12, 16(x15) # perform operation 

# Testcase cp_imm_mul
la x13, scratch # base address
li x10, 0xf9574290 # initialize rs2 with random value
li x8, 0x7fb1edb4 # initialize x8 with random value{formatstr.format(rs1val)}
sw x10, 0(x13) # store 0xf9574290 in memory
sw x8, 4(x13) # store 0x7fb1edb4 in memory
fld f10, 0(x13) # load 0x7fb1edb4f9574290 from memory into fs2
sw x0, 0(x13) # clearing the random value store at scratch
sw x0, 4(x13) # clearing the random value store at 4(scratch)
addi x13, x13, -24 # sub immediate from rs1 to counter offset
c.fsd f10, 24(x13) # perform operation 

# Testcase cp_imm_mul
la x13, scratch # base address
li x12, 0x5b6136f4 # initialize rs2 with random value
li x8, 0x3b0cbc4d # initialize x8 with random value{formatstr.format(rs1val)}
sw x12, 0(x13) # store 0x5b6136f4 in memory
sw x8, 4(x13) # store 0x3b0cbc4d in memory
fld f12, 0(x13) # load 0x3b0cbc4d5b6136f4 from memory into fs2
sw x0, 0(x13) # clearing the random value store at scratch
sw x0, 4(x13) # clearing the random value store at 4(scratch)
addi x13, x13, -32 # sub immediate from rs1 to counter offset
c.fsd f12, 32(x13) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x13, 0xf770f431 # initialize rs2 with random value
li x12, 0xc7f68e01 # initialize x12 with random value{formatstr.format(rs1val)}
sw x13, 0(x8) # store 0xf770f431 in memory
sw x12, 4(x8) # store 0xc7f68e01 in memory
fld f13, 0(x8) # load 0xc7f68e01f770f431 from memory into fs2
sw x0, 0(x8) # clearing the random value store at scratch
sw x0, 4(x8) # clearing the random value store at 4(scratch)
addi x8, x8, -40 # sub immediate from rs1 to counter offset
c.fsd f13, 40(x8) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x15, 0x9d27e0c6 # initialize rs2 with random value
li x14, 0xece6a361 # initialize x14 with random value{formatstr.format(rs1val)}
sw x15, 0(x8) # store 0x9d27e0c6 in memory
sw x14, 4(x8) # store 0xece6a361 in memory
fld f15, 0(x8) # load 0xece6a3619d27e0c6 from memory into fs2
sw x0, 0(x8) # clearing the random value store at scratch
sw x0, 4(x8) # clearing the random value store at 4(scratch)
addi x8, x8, -48 # sub immediate from rs1 to counter offset
c.fsd f15, 48(x8) # perform operation 

# Testcase cp_imm_mul
la x11, scratch # base address
li x15, 0x04616d5e # initialize rs2 with random value
li x8, 0xef3d5aac # initialize x8 with random value{formatstr.format(rs1val)}
sw x15, 0(x11) # store 0x4616d5e in memory
sw x8, 4(x11) # store 0xef3d5aac in memory
fld f15, 0(x11) # load 0xef3d5aac4616d5e from memory into fs2
sw x0, 0(x11) # clearing the random value store at scratch
sw x0, 4(x11) # clearing the random value store at 4(scratch)
addi x11, x11, -56 # sub immediate from rs1 to counter offset
c.fsd f15, 56(x11) # perform operation 

# Testcase cp_imm_mul
la x11, scratch # base address
li x15, 0xab276229 # initialize rs2 with random value
li x8, 0x94306067 # initialize x8 with random value{formatstr.format(rs1val)}
sw x15, 0(x11) # store 0xab276229 in memory
sw x8, 4(x11) # store 0x94306067 in memory
fld f15, 0(x11) # load 0x94306067ab276229 from memory into fs2
sw x0, 0(x11) # clearing the random value store at scratch
sw x0, 4(x11) # clearing the random value store at 4(scratch)
addi x11, x11, -64 # sub immediate from rs1 to counter offset
c.fsd f15, 64(x11) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x8, 0xbbfd7b0e # initialize rs2 with random value
li x10, 0xc3aa0ca6 # initialize x10 with random value{formatstr.format(rs1val)}
sw x8, 0(x9) # store 0xbbfd7b0e in memory
sw x10, 4(x9) # store 0xc3aa0ca6 in memory
fld f8, 0(x9) # load 0xc3aa0ca6bbfd7b0e from memory into fs2
sw x0, 0(x9) # clearing the random value store at scratch
sw x0, 4(x9) # clearing the random value store at 4(scratch)
addi x9, x9, -72 # sub immediate from rs1 to counter offset
c.fsd f8, 72(x9) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x13, 0x0c80b3d0 # initialize rs2 with random value
li x15, 0x3be9bc0c # initialize x15 with random value{formatstr.format(rs1val)}
sw x13, 0(x8) # store 0xc80b3d0 in memory
sw x15, 4(x8) # store 0x3be9bc0c in memory
fld f13, 0(x8) # load 0x3be9bc0cc80b3d0 from memory into fs2
sw x0, 0(x8) # clearing the random value store at scratch
sw x0, 4(x8) # clearing the random value store at 4(scratch)
addi x8, x8, -80 # sub immediate from rs1 to counter offset
c.fsd f13, 80(x8) # perform operation 

# Testcase cp_imm_mul
la x12, scratch # base address
li x11, 0x9d58b31e # initialize rs2 with random value
li x8, 0x3f958ddd # initialize x8 with random value{formatstr.format(rs1val)}
sw x11, 0(x12) # store 0x9d58b31e in memory
sw x8, 4(x12) # store 0x3f958ddd in memory
fld f11, 0(x12) # load 0x3f958ddd9d58b31e from memory into fs2
sw x0, 0(x12) # clearing the random value store at scratch
sw x0, 4(x12) # clearing the random value store at 4(scratch)
addi x12, x12, -88 # sub immediate from rs1 to counter offset
c.fsd f11, 88(x12) # perform operation 

# Testcase cp_imm_mul
la x13, scratch # base address
li x14, 0xbc7473a8 # initialize rs2 with random value
li x8, 0xc0a816d3 # initialize x8 with random value{formatstr.format(rs1val)}
sw x14, 0(x13) # store 0xbc7473a8 in memory
sw x8, 4(x13) # store 0xc0a816d3 in memory
fld f14, 0(x13) # load 0xc0a816d3bc7473a8 from memory into fs2
sw x0, 0(x13) # clearing the random value store at scratch
sw x0, 4(x13) # clearing the random value store at 4(scratch)
addi x13, x13, -96 # sub immediate from rs1 to counter offset
c.fsd f14, 96(x13) # perform operation 

# Testcase cp_imm_mul
la x14, scratch # base address
li x8, 0x953eb4a0 # initialize rs2 with random value
li x13, 0x29dd280a # initialize x13 with random value{formatstr.format(rs1val)}
sw x8, 0(x14) # store 0x953eb4a0 in memory
sw x13, 4(x14) # store 0x29dd280a in memory
fld f8, 0(x14) # load 0x29dd280a953eb4a0 from memory into fs2
sw x0, 0(x14) # clearing the random value store at scratch
sw x0, 4(x14) # clearing the random value store at 4(scratch)
addi x14, x14, -104 # sub immediate from rs1 to counter offset
c.fsd f8, 104(x14) # perform operation 

# Testcase cp_imm_mul
la x13, scratch # base address
li x8, 0xc28dc9d6 # initialize rs2 with random value
li x12, 0x7afb8bff # initialize x12 with random value{formatstr.format(rs1val)}
sw x8, 0(x13) # store 0xc28dc9d6 in memory
sw x12, 4(x13) # store 0x7afb8bff in memory
fld f8, 0(x13) # load 0x7afb8bffc28dc9d6 from memory into fs2
sw x0, 0(x13) # clearing the random value store at scratch
sw x0, 4(x13) # clearing the random value store at 4(scratch)
addi x13, x13, -112 # sub immediate from rs1 to counter offset
c.fsd f8, 112(x13) # perform operation 

# Testcase cp_imm_mul
la x11, scratch # base address
li x15, 0xe8f97fb7 # initialize rs2 with random value
li x8, 0xd43aa6d6 # initialize x8 with random value{formatstr.format(rs1val)}
sw x15, 0(x11) # store 0xe8f97fb7 in memory
sw x8, 4(x11) # store 0xd43aa6d6 in memory
fld f15, 0(x11) # load 0xd43aa6d6e8f97fb7 from memory into fs2
sw x0, 0(x11) # clearing the random value store at scratch
sw x0, 4(x11) # clearing the random value store at 4(scratch)
addi x11, x11, -120 # sub immediate from rs1 to counter offset
c.fsd f15, 120(x11) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x15, 0xfaa1b1b9 # initialize rs2 with random value
li x8, 0xb0d2a98b # initialize x8 with random value{formatstr.format(rs1val)}
sw x15, 0(x9) # store 0xfaa1b1b9 in memory
sw x8, 4(x9) # store 0xb0d2a98b in memory
fld f15, 0(x9) # load 0xb0d2a98bfaa1b1b9 from memory into fs2
sw x0, 0(x9) # clearing the random value store at scratch
sw x0, 4(x9) # clearing the random value store at 4(scratch)
addi x9, x9, -128 # sub immediate from rs1 to counter offset
c.fsd f15, 128(x9) # perform operation 

# Testcase cp_imm_mul
la x13, scratch # base address
li x12, 0xde83352f # initialize rs2 with random value
li x8, 0x35fc2359 # initialize x8 with random value{formatstr.format(rs1val)}
sw x12, 0(x13) # store 0xde83352f in memory
sw x8, 4(x13) # store 0x35fc2359 in memory
fld f12, 0(x13) # load 0x35fc2359de83352f from memory into fs2
sw x0, 0(x13) # clearing the random value store at scratch
sw x0, 4(x13) # clearing the random value store at 4(scratch)
addi x13, x13, -136 # sub immediate from rs1 to counter offset
c.fsd f12, 136(x13) # perform operation 

# Testcase cp_imm_mul
la x14, scratch # base address
li x10, 0x23854f22 # initialize rs2 with random value
li x8, 0x9d8856cf # initialize x8 with random value{formatstr.format(rs1val)}
sw x10, 0(x14) # store 0x23854f22 in memory
sw x8, 4(x14) # store 0x9d8856cf in memory
fld f10, 0(x14) # load 0x9d8856cf23854f22 from memory into fs2
sw x0, 0(x14) # clearing the random value store at scratch
sw x0, 4(x14) # clearing the random value store at 4(scratch)
addi x14, x14, -144 # sub immediate from rs1 to counter offset
c.fsd f10, 144(x14) # perform operation 

# Testcase cp_imm_mul
la x13, scratch # base address
li x9, 0xeaef3e30 # initialize rs2 with random value
li x8, 0x41afd276 # initialize x8 with random value{formatstr.format(rs1val)}
sw x9, 0(x13) # store 0xeaef3e30 in memory
sw x8, 4(x13) # store 0x41afd276 in memory
fld f9, 0(x13) # load 0x41afd276eaef3e30 from memory into fs2
sw x0, 0(x13) # clearing the random value store at scratch
sw x0, 4(x13) # clearing the random value store at 4(scratch)
addi x13, x13, -152 # sub immediate from rs1 to counter offset
c.fsd f9, 152(x13) # perform operation 

# Testcase cp_imm_mul
la x11, scratch # base address
li x8, 0x50d98130 # initialize rs2 with random value
li x12, 0xd01c72cf # initialize x12 with random value{formatstr.format(rs1val)}
sw x8, 0(x11) # store 0x50d98130 in memory
sw x12, 4(x11) # store 0xd01c72cf in memory
fld f8, 0(x11) # load 0xd01c72cf50d98130 from memory into fs2
sw x0, 0(x11) # clearing the random value store at scratch
sw x0, 4(x11) # clearing the random value store at 4(scratch)
addi x11, x11, -160 # sub immediate from rs1 to counter offset
c.fsd f8, 160(x11) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x14, 0x2b6d5071 # initialize rs2 with random value
li x8, 0xa3feb824 # initialize x8 with random value{formatstr.format(rs1val)}
sw x14, 0(x15) # store 0x2b6d5071 in memory
sw x8, 4(x15) # store 0xa3feb824 in memory
fld f14, 0(x15) # load 0xa3feb8242b6d5071 from memory into fs2
sw x0, 0(x15) # clearing the random value store at scratch
sw x0, 4(x15) # clearing the random value store at 4(scratch)
addi x15, x15, -168 # sub immediate from rs1 to counter offset
c.fsd f14, 168(x15) # perform operation 

# Testcase cp_imm_mul
la x10, scratch # base address
li x13, 0x103bceaf # initialize rs2 with random value
li x8, 0x749fbd7e # initialize x8 with random value{formatstr.format(rs1val)}
sw x13, 0(x10) # store 0x103bceaf in memory
sw x8, 4(x10) # store 0x749fbd7e in memory
fld f13, 0(x10) # load 0x749fbd7e103bceaf from memory into fs2
sw x0, 0(x10) # clearing the random value store at scratch
sw x0, 4(x10) # clearing the random value store at 4(scratch)
addi x10, x10, -176 # sub immediate from rs1 to counter offset
c.fsd f13, 176(x10) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x8, 0x40591157 # initialize rs2 with random value
li x10, 0x1d8eb9a1 # initialize x10 with random value{formatstr.format(rs1val)}
sw x8, 0(x15) # store 0x40591157 in memory
sw x10, 4(x15) # store 0x1d8eb9a1 in memory
fld f8, 0(x15) # load 0x1d8eb9a140591157 from memory into fs2
sw x0, 0(x15) # clearing the random value store at scratch
sw x0, 4(x15) # clearing the random value store at 4(scratch)
addi x15, x15, -184 # sub immediate from rs1 to counter offset
c.fsd f8, 184(x15) # perform operation 

# Testcase cp_imm_mul
la x13, scratch # base address
li x11, 0x545b2622 # initialize rs2 with random value
li x8, 0x790179e2 # initialize x8 with random value{formatstr.format(rs1val)}
sw x11, 0(x13) # store 0x545b2622 in memory
sw x8, 4(x13) # store 0x790179e2 in memory
fld f11, 0(x13) # load 0x790179e2545b2622 from memory into fs2
sw x0, 0(x13) # clearing the random value store at scratch
sw x0, 4(x13) # clearing the random value store at 4(scratch)
addi x13, x13, -192 # sub immediate from rs1 to counter offset
c.fsd f11, 192(x13) # perform operation 

# Testcase cp_imm_mul
la x11, scratch # base address
li x15, 0x2e215997 # initialize rs2 with random value
li x8, 0x56c920ae # initialize x8 with random value{formatstr.format(rs1val)}
sw x15, 0(x11) # store 0x2e215997 in memory
sw x8, 4(x11) # store 0x56c920ae in memory
fld f15, 0(x11) # load 0x56c920ae2e215997 from memory into fs2
sw x0, 0(x11) # clearing the random value store at scratch
sw x0, 4(x11) # clearing the random value store at 4(scratch)
addi x11, x11, -200 # sub immediate from rs1 to counter offset
c.fsd f15, 200(x11) # perform operation 

# Testcase cp_imm_mul
la x14, scratch # base address
li x10, 0xa533b048 # initialize rs2 with random value
li x8, 0x0a5f0bf7 # initialize x8 with random value{formatstr.format(rs1val)}
sw x10, 0(x14) # store 0xa533b048 in memory
sw x8, 4(x14) # store 0xa5f0bf7 in memory
fld f10, 0(x14) # load 0xa5f0bf7a533b048 from memory into fs2
sw x0, 0(x14) # clearing the random value store at scratch
sw x0, 4(x14) # clearing the random value store at 4(scratch)
addi x14, x14, -208 # sub immediate from rs1 to counter offset
c.fsd f10, 208(x14) # perform operation 

# Testcase cp_imm_mul
la x11, scratch # base address
li x13, 0xfd91eeaf # initialize rs2 with random value
li x8, 0x836a717a # initialize x8 with random value{formatstr.format(rs1val)}
sw x13, 0(x11) # store 0xfd91eeaf in memory
sw x8, 4(x11) # store 0x836a717a in memory
fld f13, 0(x11) # load 0x836a717afd91eeaf from memory into fs2
sw x0, 0(x11) # clearing the random value store at scratch
sw x0, 4(x11) # clearing the random value store at 4(scratch)
addi x11, x11, -216 # sub immediate from rs1 to counter offset
c.fsd f13, 216(x11) # perform operation 

# Testcase cp_imm_mul
la x8, scratch # base address
li x10, 0x602db98a # initialize rs2 with random value
li x9, 0xbabc31a4 # initialize x9 with random value{formatstr.format(rs1val)}
sw x10, 0(x8) # store 0x602db98a in memory
sw x9, 4(x8) # store 0xbabc31a4 in memory
fld f10, 0(x8) # load 0xbabc31a4602db98a from memory into fs2
sw x0, 0(x8) # clearing the random value store at scratch
sw x0, 4(x8) # clearing the random value store at 4(scratch)
addi x8, x8, -224 # sub immediate from rs1 to counter offset
c.fsd f10, 224(x8) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x13, 0xc8afbcb5 # initialize rs2 with random value
li x8, 0x9ccaac9c # initialize x8 with random value{formatstr.format(rs1val)}
sw x13, 0(x15) # store 0xc8afbcb5 in memory
sw x8, 4(x15) # store 0x9ccaac9c in memory
fld f13, 0(x15) # load 0x9ccaac9cc8afbcb5 from memory into fs2
sw x0, 0(x15) # clearing the random value store at scratch
sw x0, 4(x15) # clearing the random value store at 4(scratch)
addi x15, x15, -232 # sub immediate from rs1 to counter offset
c.fsd f13, 232(x15) # perform operation 

# Testcase cp_imm_mul
la x15, scratch # base address
li x11, 0x2cdfce40 # initialize rs2 with random value
li x8, 0x9cf7fe64 # initialize x8 with random value{formatstr.format(rs1val)}
sw x11, 0(x15) # store 0x2cdfce40 in memory
sw x8, 4(x15) # store 0x9cf7fe64 in memory
fld f11, 0(x15) # load 0x9cf7fe642cdfce40 from memory into fs2
sw x0, 0(x15) # clearing the random value store at scratch
sw x0, 4(x15) # clearing the random value store at 4(scratch)
addi x15, x15, -240 # sub immediate from rs1 to counter offset
c.fsd f11, 240(x15) # perform operation 

# Testcase cp_imm_mul
la x9, scratch # base address
li x13, 0x21c7659e # initialize rs2 with random value
li x8, 0x8e5813d5 # initialize x8 with random value{formatstr.format(rs1val)}
sw x13, 0(x9) # store 0x21c7659e in memory
sw x8, 4(x9) # store 0x8e5813d5 in memory
fld f13, 0(x9) # load 0x8e5813d521c7659e from memory into fs2
sw x0, 0(x9) # clearing the random value store at scratch
sw x0, 4(x9) # clearing the random value store at 4(scratch)
addi x9, x9, -248 # sub immediate from rs1 to counter offset
c.fsd f13, 248(x9) # perform operation 

#.EQU SIGSIZE,0


// ******************
// Tests from: WALLY-COV-c.fldsp.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase cp_imm_mul
li x22, 0x5d89a1e8 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
sw x15, 0(sp)   # store value to put something in memory
c.fldsp f22, 0(sp) # perform operation

# Testcase cp_imm_mul
li x13, 0xa43c8bb1 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -8 # sub immediate from rs1 to counter offset
sw x29, 8(sp)   # store value to put something in memory
c.fldsp f13, 8(sp) # perform operation

# Testcase cp_imm_mul
li x5, 0x250b632e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -16 # sub immediate from rs1 to counter offset
sw x13, 16(sp)   # store value to put something in memory
c.fldsp f5, 16(sp) # perform operation

# Testcase cp_imm_mul
li x14, 0x766f6dff # initialize rs1
la sp, scratch # base address 
addi sp, sp, -24 # sub immediate from rs1 to counter offset
sw x2, 24(sp)   # store value to put something in memory
c.fldsp f14, 24(sp) # perform operation

# Testcase cp_imm_mul
li x17, 0xa8f3f09c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -32 # sub immediate from rs1 to counter offset
sw x3, 32(sp)   # store value to put something in memory
c.fldsp f17, 32(sp) # perform operation

# Testcase cp_imm_mul
li x13, 0xdc6ec28a # initialize rs1
la sp, scratch # base address 
addi sp, sp, -40 # sub immediate from rs1 to counter offset
sw x3, 40(sp)   # store value to put something in memory
c.fldsp f13, 40(sp) # perform operation

# Testcase cp_imm_mul
li x16, 0x78c45fea # initialize rs1
la sp, scratch # base address 
addi sp, sp, -48 # sub immediate from rs1 to counter offset
sw x23, 48(sp)   # store value to put something in memory
c.fldsp f16, 48(sp) # perform operation

# Testcase cp_imm_mul
li x13, 0x3638ff67 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -56 # sub immediate from rs1 to counter offset
sw x15, 56(sp)   # store value to put something in memory
c.fldsp f13, 56(sp) # perform operation

# Testcase cp_imm_mul
li x12, 0xf932469e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -64 # sub immediate from rs1 to counter offset
sw x6, 64(sp)   # store value to put something in memory
c.fldsp f12, 64(sp) # perform operation

# Testcase cp_imm_mul
li x7, 0x5a005307 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -72 # sub immediate from rs1 to counter offset
sw x8, 72(sp)   # store value to put something in memory
c.fldsp f7, 72(sp) # perform operation

# Testcase cp_imm_mul
li x15, 0xcce3d4b6 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -80 # sub immediate from rs1 to counter offset
sw x20, 80(sp)   # store value to put something in memory
c.fldsp f15, 80(sp) # perform operation

# Testcase cp_imm_mul
li x6, 0xabd37e9e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -88 # sub immediate from rs1 to counter offset
sw x29, 88(sp)   # store value to put something in memory
c.fldsp f6, 88(sp) # perform operation

# Testcase cp_imm_mul
li x16, 0x85345b50 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -96 # sub immediate from rs1 to counter offset
sw x15, 96(sp)   # store value to put something in memory
c.fldsp f16, 96(sp) # perform operation

# Testcase cp_imm_mul
li x22, 0xa10a49e1 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -104 # sub immediate from rs1 to counter offset
sw x20, 104(sp)   # store value to put something in memory
c.fldsp f22, 104(sp) # perform operation

# Testcase cp_imm_mul
li x29, 0xe465ac89 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -112 # sub immediate from rs1 to counter offset
sw x5, 112(sp)   # store value to put something in memory
c.fldsp f29, 112(sp) # perform operation

# Testcase cp_imm_mul
li x21, 0x9715f2c7 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -120 # sub immediate from rs1 to counter offset
sw x9, 120(sp)   # store value to put something in memory
c.fldsp f21, 120(sp) # perform operation

# Testcase cp_imm_mul
li x12, 0x9a7ccaed # initialize rs1
la sp, scratch # base address 
addi sp, sp, -128 # sub immediate from rs1 to counter offset
sw x25, 128(sp)   # store value to put something in memory
c.fldsp f12, 128(sp) # perform operation

# Testcase cp_imm_mul
li x28, 0x4398918d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -136 # sub immediate from rs1 to counter offset
sw x18, 136(sp)   # store value to put something in memory
c.fldsp f28, 136(sp) # perform operation

# Testcase cp_imm_mul
li x14, 0x424aad74 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -144 # sub immediate from rs1 to counter offset
sw x10, 144(sp)   # store value to put something in memory
c.fldsp f14, 144(sp) # perform operation

# Testcase cp_imm_mul
li x31, 0x8bb564a9 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -152 # sub immediate from rs1 to counter offset
sw x16, 152(sp)   # store value to put something in memory
c.fldsp f31, 152(sp) # perform operation

# Testcase cp_imm_mul
li x21, 0x9bfc5a71 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -160 # sub immediate from rs1 to counter offset
sw x3, 160(sp)   # store value to put something in memory
c.fldsp f21, 160(sp) # perform operation

# Testcase cp_imm_mul
li x5, 0xfdeb8315 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -168 # sub immediate from rs1 to counter offset
sw x2, 168(sp)   # store value to put something in memory
c.fldsp f5, 168(sp) # perform operation

# Testcase cp_imm_mul
li x23, 0x4abc0b3e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -176 # sub immediate from rs1 to counter offset
sw x22, 176(sp)   # store value to put something in memory
c.fldsp f23, 176(sp) # perform operation

# Testcase cp_imm_mul
li x14, 0xb8f1a815 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -184 # sub immediate from rs1 to counter offset
sw x27, 184(sp)   # store value to put something in memory
c.fldsp f14, 184(sp) # perform operation

# Testcase cp_imm_mul
li x25, 0x281abfc6 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -192 # sub immediate from rs1 to counter offset
sw x11, 192(sp)   # store value to put something in memory
c.fldsp f25, 192(sp) # perform operation

# Testcase cp_imm_mul
li x27, 0x90e9032a # initialize rs1
la sp, scratch # base address 
addi sp, sp, -200 # sub immediate from rs1 to counter offset
sw x7, 200(sp)   # store value to put something in memory
c.fldsp f27, 200(sp) # perform operation

# Testcase cp_imm_mul
li x7, 0xade61c5d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -208 # sub immediate from rs1 to counter offset
sw x14, 208(sp)   # store value to put something in memory
c.fldsp f7, 208(sp) # perform operation

# Testcase cp_imm_mul
li x6, 0xebdc3b9b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -216 # sub immediate from rs1 to counter offset
sw x2, 216(sp)   # store value to put something in memory
c.fldsp f6, 216(sp) # perform operation

# Testcase cp_imm_mul
li x6, 0xf1cabca0 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -224 # sub immediate from rs1 to counter offset
sw x1, 224(sp)   # store value to put something in memory
c.fldsp f6, 224(sp) # perform operation

# Testcase cp_imm_mul
li x17, 0x2e15e42c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -232 # sub immediate from rs1 to counter offset
sw x21, 232(sp)   # store value to put something in memory
c.fldsp f17, 232(sp) # perform operation

# Testcase cp_imm_mul
li x27, 0x4d255acd # initialize rs1
la sp, scratch # base address 
addi sp, sp, -240 # sub immediate from rs1 to counter offset
sw x18, 240(sp)   # store value to put something in memory
c.fldsp f27, 240(sp) # perform operation

# Testcase cp_imm_mul
li x3, 0x832b3e59 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -248 # sub immediate from rs1 to counter offset
sw x25, 248(sp)   # store value to put something in memory
c.fldsp f3, 248(sp) # perform operation

# Testcase cp_imm_mul
li x11, 0xd9031525 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -256 # sub immediate from rs1 to counter offset
sw x17, 256(sp)   # store value to put something in memory
c.fldsp f11, 256(sp) # perform operation

# Testcase cp_imm_mul
li x9, 0x8561dfef # initialize rs1
la sp, scratch # base address 
addi sp, sp, -264 # sub immediate from rs1 to counter offset
sw x28, 264(sp)   # store value to put something in memory
c.fldsp f9, 264(sp) # perform operation

# Testcase cp_imm_mul
li x6, 0x3863b49e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -272 # sub immediate from rs1 to counter offset
sw x7, 272(sp)   # store value to put something in memory
c.fldsp f6, 272(sp) # perform operation

# Testcase cp_imm_mul
li x23, 0x2f1f8197 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -280 # sub immediate from rs1 to counter offset
sw x10, 280(sp)   # store value to put something in memory
c.fldsp f23, 280(sp) # perform operation

# Testcase cp_imm_mul
li x10, 0x8bb68536 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -288 # sub immediate from rs1 to counter offset
sw x24, 288(sp)   # store value to put something in memory
c.fldsp f10, 288(sp) # perform operation

# Testcase cp_imm_mul
li x2, 0xf864bf29 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -296 # sub immediate from rs1 to counter offset
sw x10, 296(sp)   # store value to put something in memory
c.fldsp f2, 296(sp) # perform operation

# Testcase cp_imm_mul
li x22, 0xb946c978 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -304 # sub immediate from rs1 to counter offset
sw x6, 304(sp)   # store value to put something in memory
c.fldsp f22, 304(sp) # perform operation

# Testcase cp_imm_mul
li x27, 0x2b57db9f # initialize rs1
la sp, scratch # base address 
addi sp, sp, -312 # sub immediate from rs1 to counter offset
sw x12, 312(sp)   # store value to put something in memory
c.fldsp f27, 312(sp) # perform operation

# Testcase cp_imm_mul
li x30, 0xb5780b3d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -320 # sub immediate from rs1 to counter offset
sw x8, 320(sp)   # store value to put something in memory
c.fldsp f30, 320(sp) # perform operation

# Testcase cp_imm_mul
li x24, 0xe941ab4c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -328 # sub immediate from rs1 to counter offset
sw x31, 328(sp)   # store value to put something in memory
c.fldsp f24, 328(sp) # perform operation

# Testcase cp_imm_mul
li x25, 0x5fea5df7 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -336 # sub immediate from rs1 to counter offset
sw x26, 336(sp)   # store value to put something in memory
c.fldsp f25, 336(sp) # perform operation

# Testcase cp_imm_mul
li x3, 0x1e12bd0e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -344 # sub immediate from rs1 to counter offset
sw x2, 344(sp)   # store value to put something in memory
c.fldsp f3, 344(sp) # perform operation

# Testcase cp_imm_mul
li x16, 0x8d659aa8 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -352 # sub immediate from rs1 to counter offset
sw x9, 352(sp)   # store value to put something in memory
c.fldsp f16, 352(sp) # perform operation

# Testcase cp_imm_mul
li x31, 0xaf7f6cd9 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -360 # sub immediate from rs1 to counter offset
sw x22, 360(sp)   # store value to put something in memory
c.fldsp f31, 360(sp) # perform operation

# Testcase cp_imm_mul
li x7, 0x63fb2d9f # initialize rs1
la sp, scratch # base address 
addi sp, sp, -368 # sub immediate from rs1 to counter offset
sw x10, 368(sp)   # store value to put something in memory
c.fldsp f7, 368(sp) # perform operation

# Testcase cp_imm_mul
li x27, 0x0a55b820 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -376 # sub immediate from rs1 to counter offset
sw x5, 376(sp)   # store value to put something in memory
c.fldsp f27, 376(sp) # perform operation

# Testcase cp_imm_mul
li x26, 0x07fb0d7f # initialize rs1
la sp, scratch # base address 
addi sp, sp, -384 # sub immediate from rs1 to counter offset
sw x22, 384(sp)   # store value to put something in memory
c.fldsp f26, 384(sp) # perform operation

# Testcase cp_imm_mul
li x12, 0x99feb1a9 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -392 # sub immediate from rs1 to counter offset
sw x29, 392(sp)   # store value to put something in memory
c.fldsp f12, 392(sp) # perform operation

# Testcase cp_imm_mul
li x2, 0xfe354adc # initialize rs1
la sp, scratch # base address 
addi sp, sp, -400 # sub immediate from rs1 to counter offset
sw x11, 400(sp)   # store value to put something in memory
c.fldsp f2, 400(sp) # perform operation

# Testcase cp_imm_mul
li x1, 0x8108b54a # initialize rs1
la sp, scratch # base address 
addi sp, sp, -408 # sub immediate from rs1 to counter offset
sw x24, 408(sp)   # store value to put something in memory
c.fldsp f1, 408(sp) # perform operation

# Testcase cp_imm_mul
li x31, 0xd511991e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -416 # sub immediate from rs1 to counter offset
sw x27, 416(sp)   # store value to put something in memory
c.fldsp f31, 416(sp) # perform operation

# Testcase cp_imm_mul
li x15, 0xc3c29f2b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -424 # sub immediate from rs1 to counter offset
sw x28, 424(sp)   # store value to put something in memory
c.fldsp f15, 424(sp) # perform operation

# Testcase cp_imm_mul
li x31, 0xc38f9d03 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -432 # sub immediate from rs1 to counter offset
sw x27, 432(sp)   # store value to put something in memory
c.fldsp f31, 432(sp) # perform operation

# Testcase cp_imm_mul
li x1, 0x8efff5b7 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -440 # sub immediate from rs1 to counter offset
sw x5, 440(sp)   # store value to put something in memory
c.fldsp f1, 440(sp) # perform operation

# Testcase cp_imm_mul
li x2, 0x72a13b16 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -448 # sub immediate from rs1 to counter offset
sw x7, 448(sp)   # store value to put something in memory
c.fldsp f2, 448(sp) # perform operation

# Testcase cp_imm_mul
li x31, 0x4d420400 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -456 # sub immediate from rs1 to counter offset
sw x27, 456(sp)   # store value to put something in memory
c.fldsp f31, 456(sp) # perform operation

# Testcase cp_imm_mul
li x26, 0xcd3b788f # initialize rs1
la sp, scratch # base address 
addi sp, sp, -464 # sub immediate from rs1 to counter offset
sw x7, 464(sp)   # store value to put something in memory
c.fldsp f26, 464(sp) # perform operation

# Testcase cp_imm_mul
li x15, 0xbf2512f4 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -472 # sub immediate from rs1 to counter offset
sw x7, 472(sp)   # store value to put something in memory
c.fldsp f15, 472(sp) # perform operation

# Testcase cp_imm_mul
li x10, 0x64d96f62 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -480 # sub immediate from rs1 to counter offset
sw x29, 480(sp)   # store value to put something in memory
c.fldsp f10, 480(sp) # perform operation

# Testcase cp_imm_mul
li x16, 0xd66e06d9 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -488 # sub immediate from rs1 to counter offset
sw x12, 488(sp)   # store value to put something in memory
c.fldsp f16, 488(sp) # perform operation

# Testcase cp_imm_mul
li x20, 0x655b8a2e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -496 # sub immediate from rs1 to counter offset
sw x2, 496(sp)   # store value to put something in memory
c.fldsp f20, 496(sp) # perform operation

# Testcase cp_imm_mul
li x25, 0x94fdefb0 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -504 # sub immediate from rs1 to counter offset
sw x15, 504(sp)   # store value to put something in memory
c.fldsp f25, 504(sp) # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0xfd0007c1 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -392 # sub immediate from rs1 to counter offset
sw x22, 392(sp)   # store value to put something in memory
c.fldsp f0, 392(sp) # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x3da1089d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -88 # sub immediate from rs1 to counter offset
sw x20, 88(sp)   # store value to put something in memory
c.fldsp f1, 88(sp) # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0xea55d138 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -48 # sub immediate from rs1 to counter offset
sw x14, 48(sp)   # store value to put something in memory
c.fldsp f2, 48(sp) # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0xaabd1e61 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -128 # sub immediate from rs1 to counter offset
sw x21, 128(sp)   # store value to put something in memory
c.fldsp f3, 128(sp) # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x88a61cad # initialize rs1
la sp, scratch # base address 
addi sp, sp, -32 # sub immediate from rs1 to counter offset
sw x29, 32(sp)   # store value to put something in memory
c.fldsp f4, 32(sp) # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xc0330679 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -408 # sub immediate from rs1 to counter offset
sw x4, 408(sp)   # store value to put something in memory
c.fldsp f5, 408(sp) # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x7547255c # initialize rs1
la sp, scratch # base address 
addi sp, sp, -320 # sub immediate from rs1 to counter offset
sw x23, 320(sp)   # store value to put something in memory
c.fldsp f6, 320(sp) # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x01732a00 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -448 # sub immediate from rs1 to counter offset
sw x16, 448(sp)   # store value to put something in memory
c.fldsp f7, 448(sp) # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x2bcec980 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -496 # sub immediate from rs1 to counter offset
sw x12, 496(sp)   # store value to put something in memory
c.fldsp f8, 496(sp) # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0xe58ee992 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -216 # sub immediate from rs1 to counter offset
sw x14, 216(sp)   # store value to put something in memory
c.fldsp f9, 216(sp) # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0xb59a8497 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -128 # sub immediate from rs1 to counter offset
sw x16, 128(sp)   # store value to put something in memory
c.fldsp f10, 128(sp) # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0xc5cf0c90 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -312 # sub immediate from rs1 to counter offset
sw x14, 312(sp)   # store value to put something in memory
c.fldsp f11, 312(sp) # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x966bc272 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -448 # sub immediate from rs1 to counter offset
sw x9, 448(sp)   # store value to put something in memory
c.fldsp f12, 448(sp) # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x24fbee24 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -240 # sub immediate from rs1 to counter offset
sw x7, 240(sp)   # store value to put something in memory
c.fldsp f13, 240(sp) # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x93d35d37 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -80 # sub immediate from rs1 to counter offset
sw x27, 80(sp)   # store value to put something in memory
c.fldsp f14, 80(sp) # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x9b46dc5b # initialize rs1
la sp, scratch # base address 
addi sp, sp, -232 # sub immediate from rs1 to counter offset
sw x7, 232(sp)   # store value to put something in memory
c.fldsp f15, 232(sp) # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0xebbc639d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -256 # sub immediate from rs1 to counter offset
sw x26, 256(sp)   # store value to put something in memory
c.fldsp f16, 256(sp) # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0xe6f1010d # initialize rs1
la sp, scratch # base address 
addi sp, sp, -152 # sub immediate from rs1 to counter offset
sw x14, 152(sp)   # store value to put something in memory
c.fldsp f17, 152(sp) # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x576c61a7 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -104 # sub immediate from rs1 to counter offset
sw x1, 104(sp)   # store value to put something in memory
c.fldsp f18, 104(sp) # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0xe0df0cd1 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -232 # sub immediate from rs1 to counter offset
sw x9, 232(sp)   # store value to put something in memory
c.fldsp f19, 232(sp) # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x10beaf36 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -448 # sub immediate from rs1 to counter offset
sw x17, 448(sp)   # store value to put something in memory
c.fldsp f20, 448(sp) # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0xfbbe5824 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -296 # sub immediate from rs1 to counter offset
sw x16, 296(sp)   # store value to put something in memory
c.fldsp f21, 296(sp) # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x8f2f5376 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -320 # sub immediate from rs1 to counter offset
sw x28, 320(sp)   # store value to put something in memory
c.fldsp f22, 320(sp) # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x5eceafed # initialize rs1
la sp, scratch # base address 
addi sp, sp, -144 # sub immediate from rs1 to counter offset
sw x20, 144(sp)   # store value to put something in memory
c.fldsp f23, 144(sp) # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0xfd7579cf # initialize rs1
la sp, scratch # base address 
addi sp, sp, -400 # sub immediate from rs1 to counter offset
sw x28, 400(sp)   # store value to put something in memory
c.fldsp f24, 400(sp) # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0xca64e5b1 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -288 # sub immediate from rs1 to counter offset
sw x20, 288(sp)   # store value to put something in memory
c.fldsp f25, 288(sp) # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xf91390eb # initialize rs1
la sp, scratch # base address 
addi sp, sp, -360 # sub immediate from rs1 to counter offset
sw x29, 360(sp)   # store value to put something in memory
c.fldsp f26, 360(sp) # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0xbbfafefb # initialize rs1
la sp, scratch # base address 
addi sp, sp, -152 # sub immediate from rs1 to counter offset
sw x27, 152(sp)   # store value to put something in memory
c.fldsp f27, 152(sp) # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x81f26028 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -280 # sub immediate from rs1 to counter offset
sw x9, 280(sp)   # store value to put something in memory
c.fldsp f28, 280(sp) # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0xd574f183 # initialize rs1
la sp, scratch # base address 
addi sp, sp, -384 # sub immediate from rs1 to counter offset
sw x23, 384(sp)   # store value to put something in memory
c.fldsp f29, 384(sp) # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0xb9754f1e # initialize rs1
la sp, scratch # base address 
addi sp, sp, -312 # sub immediate from rs1 to counter offset
sw x18, 312(sp)   # store value to put something in memory
c.fldsp f30, 312(sp) # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x2aad794f # initialize rs1
la sp, scratch # base address 
addi sp, sp, -456 # sub immediate from rs1 to counter offset
sw x17, 456(sp)   # store value to put something in memory
c.fldsp f31, 456(sp) # perform operation

#.EQU SIGSIZE,0
.EQU SIGSIZE,0 #combined


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
