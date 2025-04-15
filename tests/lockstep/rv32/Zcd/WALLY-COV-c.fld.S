///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zcd/WALLY-COV-c.fld.S
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
