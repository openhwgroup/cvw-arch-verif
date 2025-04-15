///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/D/WALLY-COV-fld.S
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
la x1, scratch # base address 
addi x1, x1, 125 # sub immediate from rs1 to counter offset
li x7, 0x00000000 # load x3 with 32 LSBs of 0x0000000070c60f42
li x21, 0x70c60f42 # load x3 with 32 MSBs 0x0000000070c60f42
sw x7, -125(x1) # store x3 (0x00000000) in memory
addi x1, x1, 4 # move address up by 4
sw x21, -125(x1) # store x4 (0x70c60f42) in memory 4 bytes after x3
addi x1, x1, - 4 # move back to scratch
fld f7, -125(x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
la x2, scratch # base address 
addi x2, x2, 1021 # sub immediate from rs1 to counter offset
li x24, 0x00000000 # load x3 with 32 LSBs of 0x00000000b435cafd
li x18, 0xb435cafd # load x3 with 32 MSBs 0x00000000b435cafd
sw x24, -1021(x2) # store x3 (0x00000000) in memory
addi x2, x2, 4 # move address up by 4
sw x18, -1021(x2) # store x4 (0xb435cafd) in memory 4 bytes after x3
addi x2, x2, - 4 # move back to scratch
fld f10, -1021(x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
la x3, scratch # base address 
addi x3, x3, 313 # sub immediate from rs1 to counter offset
li x5, 0x00000000 # load x3 with 32 LSBs of 0x000000004b38dbfb
li x12, 0x4b38dbfb # load x3 with 32 MSBs 0x000000004b38dbfb
sw x5, -313(x3) # store x3 (0x00000000) in memory
addi x3, x3, 4 # move address up by 4
sw x12, -313(x3) # store x4 (0x4b38dbfb) in memory 4 bytes after x3
addi x3, x3, - 4 # move back to scratch
fld f24, -313(x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x4, scratch # base address 
addi x4, x4, -479 # sub immediate from rs1 to counter offset
li x11, 0x00000000 # load x3 with 32 LSBs of 0x00000000182a329a
li x17, 0x182a329a # load x3 with 32 MSBs 0x00000000182a329a
sw x11, 479(x4) # store x3 (0x00000000) in memory
addi x4, x4, 4 # move address up by 4
sw x17, 479(x4) # store x4 (0x182a329a) in memory 4 bytes after x3
addi x4, x4, - 4 # move back to scratch
fld f3, 479(x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x5, scratch # base address 
addi x5, x5, -500 # sub immediate from rs1 to counter offset
li x10, 0x00000000 # load x3 with 32 LSBs of 0x00000000ff27a260
li x17, 0xff27a260 # load x3 with 32 MSBs 0x00000000ff27a260
sw x10, 500(x5) # store x3 (0x00000000) in memory
addi x5, x5, 4 # move address up by 4
sw x17, 500(x5) # store x4 (0xff27a260) in memory 4 bytes after x3
addi x5, x5, - 4 # move back to scratch
fld f13, 500(x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x6, scratch # base address 
addi x6, x6, 1848 # sub immediate from rs1 to counter offset
li x20, 0x00000000 # load x3 with 32 LSBs of 0x000000007fd86288
li x3, 0x7fd86288 # load x3 with 32 MSBs 0x000000007fd86288
sw x20, -1848(x6) # store x3 (0x00000000) in memory
addi x6, x6, 4 # move address up by 4
sw x3, -1848(x6) # store x4 (0x7fd86288) in memory 4 bytes after x3
addi x6, x6, - 4 # move back to scratch
fld f19, -1848(x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x7, scratch # base address 
addi x7, x7, 1255 # sub immediate from rs1 to counter offset
li x5, 0x00000000 # load x3 with 32 LSBs of 0x0000000001acecf6
li x17, 0x01acecf6 # load x3 with 32 MSBs 0x0000000001acecf6
sw x5, -1255(x7) # store x3 (0x00000000) in memory
addi x7, x7, 4 # move address up by 4
sw x17, -1255(x7) # store x4 (0x01acecf6) in memory 4 bytes after x3
addi x7, x7, - 4 # move back to scratch
fld f26, -1255(x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
la x8, scratch # base address 
addi x8, x8, -145 # sub immediate from rs1 to counter offset
li x9, 0x00000000 # load x3 with 32 LSBs of 0x00000000ef97dbf2
li x26, 0xef97dbf2 # load x3 with 32 MSBs 0x00000000ef97dbf2
sw x9, 145(x8) # store x3 (0x00000000) in memory
addi x8, x8, 4 # move address up by 4
sw x26, 145(x8) # store x4 (0xef97dbf2) in memory 4 bytes after x3
addi x8, x8, - 4 # move back to scratch
fld f6, 145(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
la x9, scratch # base address 
addi x9, x9, -771 # sub immediate from rs1 to counter offset
li x20, 0x00000000 # load x3 with 32 LSBs of 0x0000000084faa4db
li x5, 0x84faa4db # load x3 with 32 MSBs 0x0000000084faa4db
sw x20, 771(x9) # store x3 (0x00000000) in memory
addi x9, x9, 4 # move address up by 4
sw x5, 771(x9) # store x4 (0x84faa4db) in memory 4 bytes after x3
addi x9, x9, - 4 # move back to scratch
fld f21, 771(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
la x10, scratch # base address 
addi x10, x10, -841 # sub immediate from rs1 to counter offset
li x23, 0x00000000 # load x3 with 32 LSBs of 0x00000000a39b237e
li x24, 0xa39b237e # load x3 with 32 MSBs 0x00000000a39b237e
sw x23, 841(x10) # store x3 (0x00000000) in memory
addi x10, x10, 4 # move address up by 4
sw x24, 841(x10) # store x4 (0xa39b237e) in memory 4 bytes after x3
addi x10, x10, - 4 # move back to scratch
fld f17, 841(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
la x11, scratch # base address 
addi x11, x11, 13 # sub immediate from rs1 to counter offset
li x24, 0x00000000 # load x3 with 32 LSBs of 0x00000000a6ee6cee
li x7, 0xa6ee6cee # load x3 with 32 MSBs 0x00000000a6ee6cee
sw x24, -13(x11) # store x3 (0x00000000) in memory
addi x11, x11, 4 # move address up by 4
sw x7, -13(x11) # store x4 (0xa6ee6cee) in memory 4 bytes after x3
addi x11, x11, - 4 # move back to scratch
fld f10, -13(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
la x12, scratch # base address 
addi x12, x12, 1069 # sub immediate from rs1 to counter offset
li x8, 0x00000000 # load x3 with 32 LSBs of 0x00000000fd71c3c4
li x21, 0xfd71c3c4 # load x3 with 32 MSBs 0x00000000fd71c3c4
sw x8, -1069(x12) # store x3 (0x00000000) in memory
addi x12, x12, 4 # move address up by 4
sw x21, -1069(x12) # store x4 (0xfd71c3c4) in memory 4 bytes after x3
addi x12, x12, - 4 # move back to scratch
fld f31, -1069(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
la x13, scratch # base address 
addi x13, x13, 1813 # sub immediate from rs1 to counter offset
li x6, 0x00000000 # load x3 with 32 LSBs of 0x00000000e45e8d97
li x25, 0xe45e8d97 # load x3 with 32 MSBs 0x00000000e45e8d97
sw x6, -1813(x13) # store x3 (0x00000000) in memory
addi x13, x13, 4 # move address up by 4
sw x25, -1813(x13) # store x4 (0xe45e8d97) in memory 4 bytes after x3
addi x13, x13, - 4 # move back to scratch
fld f21, -1813(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
la x14, scratch # base address 
addi x14, x14, 1047 # sub immediate from rs1 to counter offset
li x5, 0x00000000 # load x3 with 32 LSBs of 0x000000003ce4b561
li x29, 0x3ce4b561 # load x3 with 32 MSBs 0x000000003ce4b561
sw x5, -1047(x14) # store x3 (0x00000000) in memory
addi x14, x14, 4 # move address up by 4
sw x29, -1047(x14) # store x4 (0x3ce4b561) in memory 4 bytes after x3
addi x14, x14, - 4 # move back to scratch
fld f24, -1047(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
la x15, scratch # base address 
addi x15, x15, 1020 # sub immediate from rs1 to counter offset
li x17, 0x00000000 # load x3 with 32 LSBs of 0x00000000867eb7e6
li x13, 0x867eb7e6 # load x3 with 32 MSBs 0x00000000867eb7e6
sw x17, -1020(x15) # store x3 (0x00000000) in memory
addi x15, x15, 4 # move address up by 4
sw x13, -1020(x15) # store x4 (0x867eb7e6) in memory 4 bytes after x3
addi x15, x15, - 4 # move back to scratch
fld f17, -1020(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
la x16, scratch # base address 
addi x16, x16, 1327 # sub immediate from rs1 to counter offset
li x11, 0x00000000 # load x3 with 32 LSBs of 0x00000000d513da53
li x28, 0xd513da53 # load x3 with 32 MSBs 0x00000000d513da53
sw x11, -1327(x16) # store x3 (0x00000000) in memory
addi x16, x16, 4 # move address up by 4
sw x28, -1327(x16) # store x4 (0xd513da53) in memory 4 bytes after x3
addi x16, x16, - 4 # move back to scratch
fld f2, -1327(x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
la x17, scratch # base address 
addi x17, x17, -929 # sub immediate from rs1 to counter offset
li x6, 0x00000000 # load x3 with 32 LSBs of 0x000000002d0080de
li x21, 0x2d0080de # load x3 with 32 MSBs 0x000000002d0080de
sw x6, 929(x17) # store x3 (0x00000000) in memory
addi x17, x17, 4 # move address up by 4
sw x21, 929(x17) # store x4 (0x2d0080de) in memory 4 bytes after x3
addi x17, x17, - 4 # move back to scratch
fld f12, 929(x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
la x18, scratch # base address 
addi x18, x18, -1758 # sub immediate from rs1 to counter offset
li x12, 0x00000000 # load x3 with 32 LSBs of 0x00000000efbf84c7
li x10, 0xefbf84c7 # load x3 with 32 MSBs 0x00000000efbf84c7
sw x12, 1758(x18) # store x3 (0x00000000) in memory
addi x18, x18, 4 # move address up by 4
sw x10, 1758(x18) # store x4 (0xefbf84c7) in memory 4 bytes after x3
addi x18, x18, - 4 # move back to scratch
fld f6, 1758(x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
la x19, scratch # base address 
addi x19, x19, -718 # sub immediate from rs1 to counter offset
li x15, 0x00000000 # load x3 with 32 LSBs of 0x00000000a3427593
li x24, 0xa3427593 # load x3 with 32 MSBs 0x00000000a3427593
sw x15, 718(x19) # store x3 (0x00000000) in memory
addi x19, x19, 4 # move address up by 4
sw x24, 718(x19) # store x4 (0xa3427593) in memory 4 bytes after x3
addi x19, x19, - 4 # move back to scratch
fld f12, 718(x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
la x20, scratch # base address 
addi x20, x20, 1593 # sub immediate from rs1 to counter offset
li x29, 0x00000000 # load x3 with 32 LSBs of 0x0000000094b8fc4c
li x8, 0x94b8fc4c # load x3 with 32 MSBs 0x0000000094b8fc4c
sw x29, -1593(x20) # store x3 (0x00000000) in memory
addi x20, x20, 4 # move address up by 4
sw x8, -1593(x20) # store x4 (0x94b8fc4c) in memory 4 bytes after x3
addi x20, x20, - 4 # move back to scratch
fld f21, -1593(x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
la x21, scratch # base address 
addi x21, x21, -257 # sub immediate from rs1 to counter offset
li x5, 0x00000000 # load x3 with 32 LSBs of 0x000000003291e910
li x31, 0x3291e910 # load x3 with 32 MSBs 0x000000003291e910
sw x5, 257(x21) # store x3 (0x00000000) in memory
addi x21, x21, 4 # move address up by 4
sw x31, 257(x21) # store x4 (0x3291e910) in memory 4 bytes after x3
addi x21, x21, - 4 # move back to scratch
fld f13, 257(x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
la x22, scratch # base address 
addi x22, x22, -52 # sub immediate from rs1 to counter offset
li x28, 0x00000000 # load x3 with 32 LSBs of 0x0000000040e2404c
li x16, 0x40e2404c # load x3 with 32 MSBs 0x0000000040e2404c
sw x28, 52(x22) # store x3 (0x00000000) in memory
addi x22, x22, 4 # move address up by 4
sw x16, 52(x22) # store x4 (0x40e2404c) in memory 4 bytes after x3
addi x22, x22, - 4 # move back to scratch
fld f28, 52(x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
la x23, scratch # base address 
addi x23, x23, 1926 # sub immediate from rs1 to counter offset
li x27, 0x00000000 # load x3 with 32 LSBs of 0x00000000c5606f30
li x21, 0xc5606f30 # load x3 with 32 MSBs 0x00000000c5606f30
sw x27, -1926(x23) # store x3 (0x00000000) in memory
addi x23, x23, 4 # move address up by 4
sw x21, -1926(x23) # store x4 (0xc5606f30) in memory 4 bytes after x3
addi x23, x23, - 4 # move back to scratch
fld f7, -1926(x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
la x24, scratch # base address 
addi x24, x24, 1385 # sub immediate from rs1 to counter offset
li x23, 0x00000000 # load x3 with 32 LSBs of 0x000000009f92fb16
li x31, 0x9f92fb16 # load x3 with 32 MSBs 0x000000009f92fb16
sw x23, -1385(x24) # store x3 (0x00000000) in memory
addi x24, x24, 4 # move address up by 4
sw x31, -1385(x24) # store x4 (0x9f92fb16) in memory 4 bytes after x3
addi x24, x24, - 4 # move back to scratch
fld f31, -1385(x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
la x25, scratch # base address 
addi x25, x25, -193 # sub immediate from rs1 to counter offset
li x24, 0x00000000 # load x3 with 32 LSBs of 0x00000000fe871e11
li x8, 0xfe871e11 # load x3 with 32 MSBs 0x00000000fe871e11
sw x24, 193(x25) # store x3 (0x00000000) in memory
addi x25, x25, 4 # move address up by 4
sw x8, 193(x25) # store x4 (0xfe871e11) in memory 4 bytes after x3
addi x25, x25, - 4 # move back to scratch
fld f15, 193(x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
la x26, scratch # base address 
addi x26, x26, -431 # sub immediate from rs1 to counter offset
li x10, 0x00000000 # load x3 with 32 LSBs of 0x000000000b24899e
li x17, 0x0b24899e # load x3 with 32 MSBs 0x000000000b24899e
sw x10, 431(x26) # store x3 (0x00000000) in memory
addi x26, x26, 4 # move address up by 4
sw x17, 431(x26) # store x4 (0x0b24899e) in memory 4 bytes after x3
addi x26, x26, - 4 # move back to scratch
fld f16, 431(x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
la x27, scratch # base address 
addi x27, x27, 1416 # sub immediate from rs1 to counter offset
li x31, 0x00000000 # load x3 with 32 LSBs of 0x00000000d70b1e67
li x5, 0xd70b1e67 # load x3 with 32 MSBs 0x00000000d70b1e67
sw x31, -1416(x27) # store x3 (0x00000000) in memory
addi x27, x27, 4 # move address up by 4
sw x5, -1416(x27) # store x4 (0xd70b1e67) in memory 4 bytes after x3
addi x27, x27, - 4 # move back to scratch
fld f22, -1416(x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
la x28, scratch # base address 
addi x28, x28, -927 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x000000000bd89a37
li x11, 0x0bd89a37 # load x3 with 32 MSBs 0x000000000bd89a37
sw x1, 927(x28) # store x3 (0x00000000) in memory
addi x28, x28, 4 # move address up by 4
sw x11, 927(x28) # store x4 (0x0bd89a37) in memory 4 bytes after x3
addi x28, x28, - 4 # move back to scratch
fld f5, 927(x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
la x29, scratch # base address 
addi x29, x29, -1604 # sub immediate from rs1 to counter offset
li x7, 0x00000000 # load x3 with 32 LSBs of 0x000000005870a551
li x3, 0x5870a551 # load x3 with 32 MSBs 0x000000005870a551
sw x7, 1604(x29) # store x3 (0x00000000) in memory
addi x29, x29, 4 # move address up by 4
sw x3, 1604(x29) # store x4 (0x5870a551) in memory 4 bytes after x3
addi x29, x29, - 4 # move back to scratch
fld f8, 1604(x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
la x30, scratch # base address 
addi x30, x30, -1501 # sub immediate from rs1 to counter offset
li x20, 0x00000000 # load x3 with 32 LSBs of 0x000000009bd70866
li x5, 0x9bd70866 # load x3 with 32 MSBs 0x000000009bd70866
sw x20, 1501(x30) # store x3 (0x00000000) in memory
addi x30, x30, 4 # move address up by 4
sw x5, 1501(x30) # store x4 (0x9bd70866) in memory 4 bytes after x3
addi x30, x30, - 4 # move back to scratch
fld f21, 1501(x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
la x31, scratch # base address 
addi x31, x31, -1819 # sub immediate from rs1 to counter offset
li x11, 0x00000000 # load x3 with 32 LSBs of 0x00000000498a13e4
li x27, 0x498a13e4 # load x3 with 32 MSBs 0x00000000498a13e4
sw x11, 1819(x31) # store x3 (0x00000000) in memory
addi x31, x31, 4 # move address up by 4
sw x27, 1819(x31) # store x4 (0x498a13e4) in memory 4 bytes after x3
addi x31, x31, - 4 # move back to scratch
fld f18, 1819(x31) # perform operation

# Testcase cp_imm_corners
la x2, scratch # base address 
addi x2, x2, 0 # sub immediate from rs1 to counter offset
li x31, 0x00000000 # load x3 with 32 LSBs of 0x00000000184ac708
li x20, 0x184ac708 # load x3 with 32 MSBs 0x00000000184ac708
sw x31, 0(x2) # store x3 (0x00000000) in memory
addi x2, x2, 4 # move address up by 4
sw x20, 0(x2) # store x4 (0x184ac708) in memory 4 bytes after x3
addi x2, x2, - 4 # move back to scratch
fld f23, 0(x2) # perform operation

# Testcase cp_imm_corners
la x21, scratch # base address 
addi x21, x21, -1 # sub immediate from rs1 to counter offset
li x10, 0x00000000 # load x3 with 32 LSBs of 0x0000000072d8b198
li x26, 0x72d8b198 # load x3 with 32 MSBs 0x0000000072d8b198
sw x10, 1(x21) # store x3 (0x00000000) in memory
addi x21, x21, 4 # move address up by 4
sw x26, 1(x21) # store x4 (0x72d8b198) in memory 4 bytes after x3
addi x21, x21, - 4 # move back to scratch
fld f14, 1(x21) # perform operation

# Testcase cp_imm_corners
la x3, scratch # base address 
addi x3, x3, -2 # sub immediate from rs1 to counter offset
li x17, 0x00000000 # load x3 with 32 LSBs of 0x000000000712ccc7
li x6, 0x0712ccc7 # load x3 with 32 MSBs 0x000000000712ccc7
sw x17, 2(x3) # store x3 (0x00000000) in memory
addi x3, x3, 4 # move address up by 4
sw x6, 2(x3) # store x4 (0x0712ccc7) in memory 4 bytes after x3
addi x3, x3, - 4 # move back to scratch
fld f8, 2(x3) # perform operation

# Testcase cp_imm_corners
la x12, scratch # base address 
addi x12, x12, -3 # sub immediate from rs1 to counter offset
li x7, 0x00000000 # load x3 with 32 LSBs of 0x000000003118d967
li x17, 0x3118d967 # load x3 with 32 MSBs 0x000000003118d967
sw x7, 3(x12) # store x3 (0x00000000) in memory
addi x12, x12, 4 # move address up by 4
sw x17, 3(x12) # store x4 (0x3118d967) in memory 4 bytes after x3
addi x12, x12, - 4 # move back to scratch
fld f10, 3(x12) # perform operation

# Testcase cp_imm_corners
la x8, scratch # base address 
addi x8, x8, -4 # sub immediate from rs1 to counter offset
li x9, 0x00000000 # load x3 with 32 LSBs of 0x000000003b9b2a4f
li x27, 0x3b9b2a4f # load x3 with 32 MSBs 0x000000003b9b2a4f
sw x9, 4(x8) # store x3 (0x00000000) in memory
addi x8, x8, 4 # move address up by 4
sw x27, 4(x8) # store x4 (0x3b9b2a4f) in memory 4 bytes after x3
addi x8, x8, - 4 # move back to scratch
fld f7, 4(x8) # perform operation

# Testcase cp_imm_corners
la x20, scratch # base address 
addi x20, x20, -8 # sub immediate from rs1 to counter offset
li x18, 0x00000000 # load x3 with 32 LSBs of 0x0000000040e363e1
li x21, 0x40e363e1 # load x3 with 32 MSBs 0x0000000040e363e1
sw x18, 8(x20) # store x3 (0x00000000) in memory
addi x20, x20, 4 # move address up by 4
sw x21, 8(x20) # store x4 (0x40e363e1) in memory 4 bytes after x3
addi x20, x20, - 4 # move back to scratch
fld f24, 8(x20) # perform operation

# Testcase cp_imm_corners
la x12, scratch # base address 
addi x12, x12, -16 # sub immediate from rs1 to counter offset
li x27, 0x00000000 # load x3 with 32 LSBs of 0x000000007322bff7
li x7, 0x7322bff7 # load x3 with 32 MSBs 0x000000007322bff7
sw x27, 16(x12) # store x3 (0x00000000) in memory
addi x12, x12, 4 # move address up by 4
sw x7, 16(x12) # store x4 (0x7322bff7) in memory 4 bytes after x3
addi x12, x12, - 4 # move back to scratch
fld f18, 16(x12) # perform operation

# Testcase cp_imm_corners
la x10, scratch # base address 
addi x10, x10, -32 # sub immediate from rs1 to counter offset
li x2, 0x00000000 # load x3 with 32 LSBs of 0x00000000fdf522b7
li x14, 0xfdf522b7 # load x3 with 32 MSBs 0x00000000fdf522b7
sw x2, 32(x10) # store x3 (0x00000000) in memory
addi x10, x10, 4 # move address up by 4
sw x14, 32(x10) # store x4 (0xfdf522b7) in memory 4 bytes after x3
addi x10, x10, - 4 # move back to scratch
fld f24, 32(x10) # perform operation

# Testcase cp_imm_corners
la x12, scratch # base address 
addi x12, x12, -64 # sub immediate from rs1 to counter offset
li x3, 0x00000000 # load x3 with 32 LSBs of 0x00000000ab3d7c04
li x15, 0xab3d7c04 # load x3 with 32 MSBs 0x00000000ab3d7c04
sw x3, 64(x12) # store x3 (0x00000000) in memory
addi x12, x12, 4 # move address up by 4
sw x15, 64(x12) # store x4 (0xab3d7c04) in memory 4 bytes after x3
addi x12, x12, - 4 # move back to scratch
fld f19, 64(x12) # perform operation

# Testcase cp_imm_corners
la x31, scratch # base address 
addi x31, x31, -128 # sub immediate from rs1 to counter offset
li x19, 0x00000000 # load x3 with 32 LSBs of 0x00000000359753e3
li x15, 0x359753e3 # load x3 with 32 MSBs 0x00000000359753e3
sw x19, 128(x31) # store x3 (0x00000000) in memory
addi x31, x31, 4 # move address up by 4
sw x15, 128(x31) # store x4 (0x359753e3) in memory 4 bytes after x3
addi x31, x31, - 4 # move back to scratch
fld f24, 128(x31) # perform operation

# Testcase cp_imm_corners
la x20, scratch # base address 
addi x20, x20, -256 # sub immediate from rs1 to counter offset
li x9, 0x00000000 # load x3 with 32 LSBs of 0x00000000242781db
li x19, 0x242781db # load x3 with 32 MSBs 0x00000000242781db
sw x9, 256(x20) # store x3 (0x00000000) in memory
addi x20, x20, 4 # move address up by 4
sw x19, 256(x20) # store x4 (0x242781db) in memory 4 bytes after x3
addi x20, x20, - 4 # move back to scratch
fld f17, 256(x20) # perform operation

# Testcase cp_imm_corners
la x10, scratch # base address 
addi x10, x10, -512 # sub immediate from rs1 to counter offset
li x7, 0x00000000 # load x3 with 32 LSBs of 0x0000000032be73c7
li x13, 0x32be73c7 # load x3 with 32 MSBs 0x0000000032be73c7
sw x7, 512(x10) # store x3 (0x00000000) in memory
addi x10, x10, 4 # move address up by 4
sw x13, 512(x10) # store x4 (0x32be73c7) in memory 4 bytes after x3
addi x10, x10, - 4 # move back to scratch
fld f25, 512(x10) # perform operation

# Testcase cp_imm_corners
la x24, scratch # base address 
addi x24, x24, -1023 # sub immediate from rs1 to counter offset
li x2, 0x00000000 # load x3 with 32 LSBs of 0x00000000cb4c6097
li x31, 0xcb4c6097 # load x3 with 32 MSBs 0x00000000cb4c6097
sw x2, 1023(x24) # store x3 (0x00000000) in memory
addi x24, x24, 4 # move address up by 4
sw x31, 1023(x24) # store x4 (0xcb4c6097) in memory 4 bytes after x3
addi x24, x24, - 4 # move back to scratch
fld f7, 1023(x24) # perform operation

# Testcase cp_imm_corners
la x15, scratch # base address 
addi x15, x15, -1024 # sub immediate from rs1 to counter offset
li x30, 0x00000000 # load x3 with 32 LSBs of 0x0000000038b6fe66
li x12, 0x38b6fe66 # load x3 with 32 MSBs 0x0000000038b6fe66
sw x30, 1024(x15) # store x3 (0x00000000) in memory
addi x15, x15, 4 # move address up by 4
sw x12, 1024(x15) # store x4 (0x38b6fe66) in memory 4 bytes after x3
addi x15, x15, - 4 # move back to scratch
fld f21, 1024(x15) # perform operation

# Testcase cp_imm_corners
la x23, scratch # base address 
addi x23, x23, -1795 # sub immediate from rs1 to counter offset
li x8, 0x00000000 # load x3 with 32 LSBs of 0x0000000056089eb9
li x12, 0x56089eb9 # load x3 with 32 MSBs 0x0000000056089eb9
sw x8, 1795(x23) # store x3 (0x00000000) in memory
addi x23, x23, 4 # move address up by 4
sw x12, 1795(x23) # store x4 (0x56089eb9) in memory 4 bytes after x3
addi x23, x23, - 4 # move back to scratch
fld f9, 1795(x23) # perform operation

# Testcase cp_imm_corners
la x21, scratch # base address 
addi x21, x21, -2047 # sub immediate from rs1 to counter offset
li x26, 0x00000000 # load x3 with 32 LSBs of 0x000000002d15234c
li x14, 0x2d15234c # load x3 with 32 MSBs 0x000000002d15234c
sw x26, 2047(x21) # store x3 (0x00000000) in memory
addi x21, x21, 4 # move address up by 4
sw x14, 2047(x21) # store x4 (0x2d15234c) in memory 4 bytes after x3
addi x21, x21, - 4 # move back to scratch
fld f17, 2047(x21) # perform operation

# Testcase cp_imm_corners
la x28, scratch # base address 
addi x28, x28, 2047 # increment rs1 by 2047 
addi x28, x28, 1 # increment rs1 to bump it by a total of 2048 to compensate for -2048
li x2, 0x00000000 # load x3 with 32 LSBs of 0x00000000100ada08
li x15, 0x100ada08 # load x3 with 32 MSBs 0x00000000100ada08
sw x2, -2048(x28) # store x3 (0x00000000) in memory
addi x28, x28, 4 # move address up by 4
sw x15, -2048(x28) # store x4 (0x100ada08) in memory 4 bytes after x3
addi x28, x28, - 4 # move back to scratch
fld f12, -2048(x28) # perform operation

# Testcase cp_imm_corners
la x24, scratch # base address 
addi x24, x24, 2047 # sub immediate from rs1 to counter offset
li x18, 0x00000000 # load x3 with 32 LSBs of 0x000000000b66a0de
li x26, 0x0b66a0de # load x3 with 32 MSBs 0x000000000b66a0de
sw x18, -2047(x24) # store x3 (0x00000000) in memory
addi x24, x24, 4 # move address up by 4
sw x26, -2047(x24) # store x4 (0x0b66a0de) in memory 4 bytes after x3
addi x24, x24, - 4 # move back to scratch
fld f22, -2047(x24) # perform operation

# Testcase cp_imm_corners
la x30, scratch # base address 
addi x30, x30, 2 # sub immediate from rs1 to counter offset
li x2, 0x00000000 # load x3 with 32 LSBs of 0x00000000305b6da3
li x9, 0x305b6da3 # load x3 with 32 MSBs 0x00000000305b6da3
sw x2, -2(x30) # store x3 (0x00000000) in memory
addi x30, x30, 4 # move address up by 4
sw x9, -2(x30) # store x4 (0x305b6da3) in memory 4 bytes after x3
addi x30, x30, - 4 # move back to scratch
fld f29, -2(x30) # perform operation

# Testcase cp_imm_corners
la x14, scratch # base address 
addi x14, x14, 1 # sub immediate from rs1 to counter offset
li x23, 0x00000000 # load x3 with 32 LSBs of 0x000000007f71a994
li x11, 0x7f71a994 # load x3 with 32 MSBs 0x000000007f71a994
sw x23, -1(x14) # store x3 (0x00000000) in memory
addi x14, x14, 4 # move address up by 4
sw x11, -1(x14) # store x4 (0x7f71a994) in memory 4 bytes after x3
addi x14, x14, - 4 # move back to scratch
fld f12, -1(x14) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x16, scratch
addi x16, x16, -393
add x1, x23, x18 # perform first operation
fld f6, 393(x16) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x5, scratch
addi x5, x5, 1734
add x21, x29, x12 # perform first operation
fld f28, -1734(x5) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x3, scratch
addi x3, x3, 1655
add x27, x22, x26 # perform first operation
fld f20, -1655(x3) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x6, scratch
addi x6, x6, -1890
fmul.s f31, f16, f23 # perform first operation
fld f31, 1890(x6) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x27, scratch
addi x27, x27, -278
fmul.s f17, f7, f30 # perform first operation
fld f17, 278(x27) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x11, scratch
addi x11, x11, -1737
fmul.s f9, f7, f3 # perform first operation
fld f9, 1737(x11) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x27, scratch
addi x27, x27, -454
fmul.s f7, f25, f28 # perform first operation
fld f25, 454(x27) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x28, scratch
addi x28, x28, -159
fmul.s f9, f5, f27 # perform first operation
fld f27, 159(x28) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x8, scratch
addi x8, x8, 1448
fmul.s f12, f27, f1 # perform first operation
fld f13, -1448(x8) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x9, scratch
addi x9, x9, 312
add x31, x18, x21 # perform first operation
fld f20, -312(x9) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x14, scratch
addi x14, x14, -746
add x12, x29, x23 # perform first operation
fld f15, 746(x14) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x26, scratch
addi x26, x26, -603
add x20, x17, x21 # perform first operation
fld f18, 603(x26) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x3, scratch
addi x3, x3, -1291
add x3, x3, x0 # perform first operation
fld f23, 1291(x3) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x17, scratch
addi x17, x17, 916
add x17, x17, x0 # perform first operation
fld f6, -916(x17) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x2, scratch
addi x2, x2, 1996
add x2, x2, x0 # perform first operation
fld f22, -1996(x2) # perform second (triggering) operation

# Testcase cp_fd (Test destination fd = x0)
la x27, scratch # base address 
addi x27, x27, -1117 # sub immediate from rs1 to counter offset
li x30, 0x00000000 # load x3 with 32 LSBs of 0x00000000d2090467
li x15, 0xd2090467 # load x3 with 32 MSBs 0x00000000d2090467
sw x30, 1117(x27) # store x3 (0x00000000) in memory
addi x27, x27, 4 # move address up by 4
sw x15, 1117(x27) # store x4 (0xd2090467) in memory 4 bytes after x3
addi x27, x27, - 4 # move back to scratch
fld f0, 1117(x27) # perform operation

# Testcase cp_fd (Test destination fd = x1)
la x8, scratch # base address 
addi x8, x8, 719 # sub immediate from rs1 to counter offset
li x17, 0x00000000 # load x3 with 32 LSBs of 0x000000009050af48
li x11, 0x9050af48 # load x3 with 32 MSBs 0x000000009050af48
sw x17, -719(x8) # store x3 (0x00000000) in memory
addi x8, x8, 4 # move address up by 4
sw x11, -719(x8) # store x4 (0x9050af48) in memory 4 bytes after x3
addi x8, x8, - 4 # move back to scratch
fld f1, -719(x8) # perform operation

# Testcase cp_fd (Test destination fd = x2)
la x8, scratch # base address 
addi x8, x8, -665 # sub immediate from rs1 to counter offset
li x12, 0x00000000 # load x3 with 32 LSBs of 0x0000000050278a2d
li x18, 0x50278a2d # load x3 with 32 MSBs 0x0000000050278a2d
sw x12, 665(x8) # store x3 (0x00000000) in memory
addi x8, x8, 4 # move address up by 4
sw x18, 665(x8) # store x4 (0x50278a2d) in memory 4 bytes after x3
addi x8, x8, - 4 # move back to scratch
fld f2, 665(x8) # perform operation

# Testcase cp_fd (Test destination fd = x3)
la x11, scratch # base address 
addi x11, x11, -567 # sub immediate from rs1 to counter offset
li x23, 0x00000000 # load x3 with 32 LSBs of 0x000000004c2b205d
li x10, 0x4c2b205d # load x3 with 32 MSBs 0x000000004c2b205d
sw x23, 567(x11) # store x3 (0x00000000) in memory
addi x11, x11, 4 # move address up by 4
sw x10, 567(x11) # store x4 (0x4c2b205d) in memory 4 bytes after x3
addi x11, x11, - 4 # move back to scratch
fld f3, 567(x11) # perform operation

# Testcase cp_fd (Test destination fd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x9, scratch # base address 
addi x9, x9, 1370 # sub immediate from rs1 to counter offset
li x21, 0x00000000 # load x3 with 32 LSBs of 0x00000000df71cddc
li x28, 0xdf71cddc # load x3 with 32 MSBs 0x00000000df71cddc
sw x21, -1370(x9) # store x3 (0x00000000) in memory
addi x9, x9, 4 # move address up by 4
sw x28, -1370(x9) # store x4 (0xdf71cddc) in memory 4 bytes after x3
addi x9, x9, - 4 # move back to scratch
fld f4, -1370(x9) # perform operation

# Testcase cp_fd (Test destination fd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x10, scratch # base address 
addi x10, x10, -197 # sub immediate from rs1 to counter offset
li x30, 0x00000000 # load x3 with 32 LSBs of 0x000000002fb9931e
li x25, 0x2fb9931e # load x3 with 32 MSBs 0x000000002fb9931e
sw x30, 197(x10) # store x3 (0x00000000) in memory
addi x10, x10, 4 # move address up by 4
sw x25, 197(x10) # store x4 (0x2fb9931e) in memory 4 bytes after x3
addi x10, x10, - 4 # move back to scratch
fld f5, 197(x10) # perform operation

# Testcase cp_fd (Test destination fd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x1, scratch # base address 
addi x1, x1, 291 # sub immediate from rs1 to counter offset
li x28, 0x00000000 # load x3 with 32 LSBs of 0x0000000032c17709
li x22, 0x32c17709 # load x3 with 32 MSBs 0x0000000032c17709
sw x28, -291(x1) # store x3 (0x00000000) in memory
addi x1, x1, 4 # move address up by 4
sw x22, -291(x1) # store x4 (0x32c17709) in memory 4 bytes after x3
addi x1, x1, - 4 # move back to scratch
fld f6, -291(x1) # perform operation

# Testcase cp_fd (Test destination fd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x27, scratch # base address 
addi x27, x27, -1753 # sub immediate from rs1 to counter offset
li x11, 0x00000000 # load x3 with 32 LSBs of 0x00000000850092b0
li x5, 0x850092b0 # load x3 with 32 MSBs 0x00000000850092b0
sw x11, 1753(x27) # store x3 (0x00000000) in memory
addi x27, x27, 4 # move address up by 4
sw x5, 1753(x27) # store x4 (0x850092b0) in memory 4 bytes after x3
addi x27, x27, - 4 # move back to scratch
fld f7, 1753(x27) # perform operation

# Testcase cp_fd (Test destination fd = x8)
la x6, scratch # base address 
addi x6, x6, 1228 # sub immediate from rs1 to counter offset
li x15, 0x00000000 # load x3 with 32 LSBs of 0x000000001da8d553
li x19, 0x1da8d553 # load x3 with 32 MSBs 0x000000001da8d553
sw x15, -1228(x6) # store x3 (0x00000000) in memory
addi x6, x6, 4 # move address up by 4
sw x19, -1228(x6) # store x4 (0x1da8d553) in memory 4 bytes after x3
addi x6, x6, - 4 # move back to scratch
fld f8, -1228(x6) # perform operation

# Testcase cp_fd (Test destination fd = x9)
la x6, scratch # base address 
addi x6, x6, -272 # sub immediate from rs1 to counter offset
li x9, 0x00000000 # load x3 with 32 LSBs of 0x000000008ced8aee
li x8, 0x8ced8aee # load x3 with 32 MSBs 0x000000008ced8aee
sw x9, 272(x6) # store x3 (0x00000000) in memory
addi x6, x6, 4 # move address up by 4
sw x8, 272(x6) # store x4 (0x8ced8aee) in memory 4 bytes after x3
addi x6, x6, - 4 # move back to scratch
fld f9, 272(x6) # perform operation

# Testcase cp_fd (Test destination fd = x10)
la x18, scratch # base address 
addi x18, x18, 382 # sub immediate from rs1 to counter offset
li x12, 0x00000000 # load x3 with 32 LSBs of 0x00000000a35fa70b
li x15, 0xa35fa70b # load x3 with 32 MSBs 0x00000000a35fa70b
sw x12, -382(x18) # store x3 (0x00000000) in memory
addi x18, x18, 4 # move address up by 4
sw x15, -382(x18) # store x4 (0xa35fa70b) in memory 4 bytes after x3
addi x18, x18, - 4 # move back to scratch
fld f10, -382(x18) # perform operation

# Testcase cp_fd (Test destination fd = x11)
la x19, scratch # base address 
addi x19, x19, 697 # sub immediate from rs1 to counter offset
li x11, 0x00000000 # load x3 with 32 LSBs of 0x000000004b2b3f27
li x18, 0x4b2b3f27 # load x3 with 32 MSBs 0x000000004b2b3f27
sw x11, -697(x19) # store x3 (0x00000000) in memory
addi x19, x19, 4 # move address up by 4
sw x18, -697(x19) # store x4 (0x4b2b3f27) in memory 4 bytes after x3
addi x19, x19, - 4 # move back to scratch
fld f11, -697(x19) # perform operation

# Testcase cp_fd (Test destination fd = x12)
la x5, scratch # base address 
addi x5, x5, 1470 # sub immediate from rs1 to counter offset
li x30, 0x00000000 # load x3 with 32 LSBs of 0x0000000040fc7141
li x25, 0x40fc7141 # load x3 with 32 MSBs 0x0000000040fc7141
sw x30, -1470(x5) # store x3 (0x00000000) in memory
addi x5, x5, 4 # move address up by 4
sw x25, -1470(x5) # store x4 (0x40fc7141) in memory 4 bytes after x3
addi x5, x5, - 4 # move back to scratch
fld f12, -1470(x5) # perform operation

# Testcase cp_fd (Test destination fd = x13)
la x6, scratch # base address 
addi x6, x6, 383 # sub immediate from rs1 to counter offset
li x7, 0x00000000 # load x3 with 32 LSBs of 0x00000000d381126c
li x17, 0xd381126c # load x3 with 32 MSBs 0x00000000d381126c
sw x7, -383(x6) # store x3 (0x00000000) in memory
addi x6, x6, 4 # move address up by 4
sw x17, -383(x6) # store x4 (0xd381126c) in memory 4 bytes after x3
addi x6, x6, - 4 # move back to scratch
fld f13, -383(x6) # perform operation

# Testcase cp_fd (Test destination fd = x14)
la x31, scratch # base address 
addi x31, x31, -277 # sub immediate from rs1 to counter offset
li x20, 0x00000000 # load x3 with 32 LSBs of 0x000000006ebd96df
li x9, 0x6ebd96df # load x3 with 32 MSBs 0x000000006ebd96df
sw x20, 277(x31) # store x3 (0x00000000) in memory
addi x31, x31, 4 # move address up by 4
sw x9, 277(x31) # store x4 (0x6ebd96df) in memory 4 bytes after x3
addi x31, x31, - 4 # move back to scratch
fld f14, 277(x31) # perform operation

# Testcase cp_fd (Test destination fd = x15)
la x9, scratch # base address 
addi x9, x9, -1323 # sub immediate from rs1 to counter offset
li x5, 0x00000000 # load x3 with 32 LSBs of 0x000000009a543dcc
li x13, 0x9a543dcc # load x3 with 32 MSBs 0x000000009a543dcc
sw x5, 1323(x9) # store x3 (0x00000000) in memory
addi x9, x9, 4 # move address up by 4
sw x13, 1323(x9) # store x4 (0x9a543dcc) in memory 4 bytes after x3
addi x9, x9, - 4 # move back to scratch
fld f15, 1323(x9) # perform operation

# Testcase cp_fd (Test destination fd = x16)
la x15, scratch # base address 
addi x15, x15, 2008 # sub immediate from rs1 to counter offset
li x31, 0x00000000 # load x3 with 32 LSBs of 0x000000009873d145
li x2, 0x9873d145 # load x3 with 32 MSBs 0x000000009873d145
sw x31, -2008(x15) # store x3 (0x00000000) in memory
addi x15, x15, 4 # move address up by 4
sw x2, -2008(x15) # store x4 (0x9873d145) in memory 4 bytes after x3
addi x15, x15, - 4 # move back to scratch
fld f16, -2008(x15) # perform operation

# Testcase cp_fd (Test destination fd = x17)
la x31, scratch # base address 
addi x31, x31, -1007 # sub immediate from rs1 to counter offset
li x27, 0x00000000 # load x3 with 32 LSBs of 0x000000000b2abd75
li x18, 0x0b2abd75 # load x3 with 32 MSBs 0x000000000b2abd75
sw x27, 1007(x31) # store x3 (0x00000000) in memory
addi x31, x31, 4 # move address up by 4
sw x18, 1007(x31) # store x4 (0x0b2abd75) in memory 4 bytes after x3
addi x31, x31, - 4 # move back to scratch
fld f17, 1007(x31) # perform operation

# Testcase cp_fd (Test destination fd = x18)
la x22, scratch # base address 
addi x22, x22, 10 # sub immediate from rs1 to counter offset
li x9, 0x00000000 # load x3 with 32 LSBs of 0x0000000080b6831d
li x16, 0x80b6831d # load x3 with 32 MSBs 0x0000000080b6831d
sw x9, -10(x22) # store x3 (0x00000000) in memory
addi x22, x22, 4 # move address up by 4
sw x16, -10(x22) # store x4 (0x80b6831d) in memory 4 bytes after x3
addi x22, x22, - 4 # move back to scratch
fld f18, -10(x22) # perform operation

# Testcase cp_fd (Test destination fd = x19)
la x30, scratch # base address 
addi x30, x30, -295 # sub immediate from rs1 to counter offset
li x27, 0x00000000 # load x3 with 32 LSBs of 0x00000000183a2c06
li x10, 0x183a2c06 # load x3 with 32 MSBs 0x00000000183a2c06
sw x27, 295(x30) # store x3 (0x00000000) in memory
addi x30, x30, 4 # move address up by 4
sw x10, 295(x30) # store x4 (0x183a2c06) in memory 4 bytes after x3
addi x30, x30, - 4 # move back to scratch
fld f19, 295(x30) # perform operation

# Testcase cp_fd (Test destination fd = x20)
la x22, scratch # base address 
addi x22, x22, 628 # sub immediate from rs1 to counter offset
li x6, 0x00000000 # load x3 with 32 LSBs of 0x00000000ca59c7d0
li x3, 0xca59c7d0 # load x3 with 32 MSBs 0x00000000ca59c7d0
sw x6, -628(x22) # store x3 (0x00000000) in memory
addi x22, x22, 4 # move address up by 4
sw x3, -628(x22) # store x4 (0xca59c7d0) in memory 4 bytes after x3
addi x22, x22, - 4 # move back to scratch
fld f20, -628(x22) # perform operation

# Testcase cp_fd (Test destination fd = x21)
la x12, scratch # base address 
addi x12, x12, -1286 # sub immediate from rs1 to counter offset
li x20, 0x00000000 # load x3 with 32 LSBs of 0x00000000a07974f8
li x25, 0xa07974f8 # load x3 with 32 MSBs 0x00000000a07974f8
sw x20, 1286(x12) # store x3 (0x00000000) in memory
addi x12, x12, 4 # move address up by 4
sw x25, 1286(x12) # store x4 (0xa07974f8) in memory 4 bytes after x3
addi x12, x12, - 4 # move back to scratch
fld f21, 1286(x12) # perform operation

# Testcase cp_fd (Test destination fd = x22)
la x6, scratch # base address 
addi x6, x6, -822 # sub immediate from rs1 to counter offset
li x11, 0x00000000 # load x3 with 32 LSBs of 0x000000003ab8d428
li x28, 0x3ab8d428 # load x3 with 32 MSBs 0x000000003ab8d428
sw x11, 822(x6) # store x3 (0x00000000) in memory
addi x6, x6, 4 # move address up by 4
sw x28, 822(x6) # store x4 (0x3ab8d428) in memory 4 bytes after x3
addi x6, x6, - 4 # move back to scratch
fld f22, 822(x6) # perform operation

# Testcase cp_fd (Test destination fd = x23)
la x5, scratch # base address 
addi x5, x5, -1213 # sub immediate from rs1 to counter offset
li x9, 0x00000000 # load x3 with 32 LSBs of 0x00000000482529e4
li x16, 0x482529e4 # load x3 with 32 MSBs 0x00000000482529e4
sw x9, 1213(x5) # store x3 (0x00000000) in memory
addi x5, x5, 4 # move address up by 4
sw x16, 1213(x5) # store x4 (0x482529e4) in memory 4 bytes after x3
addi x5, x5, - 4 # move back to scratch
fld f23, 1213(x5) # perform operation

# Testcase cp_fd (Test destination fd = x24)
la x28, scratch # base address 
addi x28, x28, -815 # sub immediate from rs1 to counter offset
li x7, 0x00000000 # load x3 with 32 LSBs of 0x00000000f2d30cf2
li x30, 0xf2d30cf2 # load x3 with 32 MSBs 0x00000000f2d30cf2
sw x7, 815(x28) # store x3 (0x00000000) in memory
addi x28, x28, 4 # move address up by 4
sw x30, 815(x28) # store x4 (0xf2d30cf2) in memory 4 bytes after x3
addi x28, x28, - 4 # move back to scratch
fld f24, 815(x28) # perform operation

# Testcase cp_fd (Test destination fd = x25)
la x23, scratch # base address 
addi x23, x23, -1453 # sub immediate from rs1 to counter offset
li x8, 0x00000000 # load x3 with 32 LSBs of 0x0000000096402b3b
li x2, 0x96402b3b # load x3 with 32 MSBs 0x0000000096402b3b
sw x8, 1453(x23) # store x3 (0x00000000) in memory
addi x23, x23, 4 # move address up by 4
sw x2, 1453(x23) # store x4 (0x96402b3b) in memory 4 bytes after x3
addi x23, x23, - 4 # move back to scratch
fld f25, 1453(x23) # perform operation

# Testcase cp_fd (Test destination fd = x26)
la x15, scratch # base address 
addi x15, x15, -1852 # sub immediate from rs1 to counter offset
li x6, 0x00000000 # load x3 with 32 LSBs of 0x00000000377a5a4b
li x27, 0x377a5a4b # load x3 with 32 MSBs 0x00000000377a5a4b
sw x6, 1852(x15) # store x3 (0x00000000) in memory
addi x15, x15, 4 # move address up by 4
sw x27, 1852(x15) # store x4 (0x377a5a4b) in memory 4 bytes after x3
addi x15, x15, - 4 # move back to scratch
fld f26, 1852(x15) # perform operation

# Testcase cp_fd (Test destination fd = x27)
la x20, scratch # base address 
addi x20, x20, -1561 # sub immediate from rs1 to counter offset
li x25, 0x00000000 # load x3 with 32 LSBs of 0x00000000fbc3094c
li x8, 0xfbc3094c # load x3 with 32 MSBs 0x00000000fbc3094c
sw x25, 1561(x20) # store x3 (0x00000000) in memory
addi x20, x20, 4 # move address up by 4
sw x8, 1561(x20) # store x4 (0xfbc3094c) in memory 4 bytes after x3
addi x20, x20, - 4 # move back to scratch
fld f27, 1561(x20) # perform operation

# Testcase cp_fd (Test destination fd = x28)
la x8, scratch # base address 
addi x8, x8, -1988 # sub immediate from rs1 to counter offset
li x23, 0x00000000 # load x3 with 32 LSBs of 0x000000004aa0637a
li x20, 0x4aa0637a # load x3 with 32 MSBs 0x000000004aa0637a
sw x23, 1988(x8) # store x3 (0x00000000) in memory
addi x8, x8, 4 # move address up by 4
sw x20, 1988(x8) # store x4 (0x4aa0637a) in memory 4 bytes after x3
addi x8, x8, - 4 # move back to scratch
fld f28, 1988(x8) # perform operation

# Testcase cp_fd (Test destination fd = x29)
la x1, scratch # base address 
addi x1, x1, -773 # sub immediate from rs1 to counter offset
li x20, 0x00000000 # load x3 with 32 LSBs of 0x000000006b8fcada
li x15, 0x6b8fcada # load x3 with 32 MSBs 0x000000006b8fcada
sw x20, 773(x1) # store x3 (0x00000000) in memory
addi x1, x1, 4 # move address up by 4
sw x15, 773(x1) # store x4 (0x6b8fcada) in memory 4 bytes after x3
addi x1, x1, - 4 # move back to scratch
fld f29, 773(x1) # perform operation

# Testcase cp_fd (Test destination fd = x30)
la x9, scratch # base address 
addi x9, x9, -503 # sub immediate from rs1 to counter offset
li x31, 0x00000000 # load x3 with 32 LSBs of 0x00000000f092f214
li x23, 0xf092f214 # load x3 with 32 MSBs 0x00000000f092f214
sw x31, 503(x9) # store x3 (0x00000000) in memory
addi x9, x9, 4 # move address up by 4
sw x23, 503(x9) # store x4 (0xf092f214) in memory 4 bytes after x3
addi x9, x9, - 4 # move back to scratch
fld f30, 503(x9) # perform operation

# Testcase cp_fd (Test destination fd = x31)
la x30, scratch # base address 
addi x30, x30, -927 # sub immediate from rs1 to counter offset
li x21, 0x00000000 # load x3 with 32 LSBs of 0x00000000b2b955f5
li x19, 0xb2b955f5 # load x3 with 32 MSBs 0x00000000b2b955f5
sw x21, 927(x30) # store x3 (0x00000000) in memory
addi x30, x30, 4 # move address up by 4
sw x19, 927(x30) # store x4 (0xb2b955f5) in memory 4 bytes after x3
addi x30, x30, - 4 # move back to scratch
fld f31, 927(x30) # perform operation

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
