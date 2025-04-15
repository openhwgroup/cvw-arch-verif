///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/D/WALLY-COV-fsd.S
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
li x3, 0xdc3d0ec1 # load x3 with 32 MSBs 0x00000000dc3d0ec1
sw x3, 0(x2) # store x3 (0xdc3d0ec1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dc3d0ec1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000dc3d0ec1 from memory into f20
la x1, scratch # base address
addi x1, x1, 1059 # sub immediate from rs1 to counter offset
fsd f20, -1059(x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
la x2, scratch
li x3, 0xfc125f0d # load x3 with 32 MSBs 0x00000000fc125f0d
sw x3, 0(x2) # store x3 (0xfc125f0d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fc125f0d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000fc125f0d from memory into f21
la x2, scratch # base address
addi x2, x2, 510 # sub immediate from rs1 to counter offset
fsd f21, -510(x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
la x2, scratch
li x3, 0x9ba8a66a # load x3 with 32 MSBs 0x000000009ba8a66a
sw x3, 0(x2) # store x3 (0x9ba8a66a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009ba8a66a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000009ba8a66a from memory into f28
la x3, scratch # base address
addi x3, x3, 1088 # sub immediate from rs1 to counter offset
fsd f28, -1088(x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x84f6e54b # load x3 with 32 MSBs 0x0000000084f6e54b
sw x3, 0(x2) # store x3 (0x84f6e54b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000084f6e54b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000084f6e54b from memory into f16
la x4, scratch # base address
addi x4, x4, 1572 # sub immediate from rs1 to counter offset
fsd f16, -1572(x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xc9d4240c # load x3 with 32 MSBs 0x00000000c9d4240c
sw x3, 0(x2) # store x3 (0xc9d4240c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c9d4240c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000c9d4240c from memory into f27
la x5, scratch # base address
addi x5, x5, -1202 # sub immediate from rs1 to counter offset
fsd f27, 1202(x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x1c1c5e2c # load x3 with 32 MSBs 0x000000001c1c5e2c
sw x3, 0(x2) # store x3 (0x1c1c5e2c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001c1c5e2c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000001c1c5e2c from memory into f11
la x6, scratch # base address
addi x6, x6, 640 # sub immediate from rs1 to counter offset
fsd f11, -640(x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x18435729 # load x3 with 32 MSBs 0x0000000018435729
sw x3, 0(x2) # store x3 (0x18435729) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000018435729
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0000000018435729 from memory into f29
la x7, scratch # base address
addi x7, x7, -3 # sub immediate from rs1 to counter offset
fsd f29, 3(x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
la x2, scratch
li x3, 0x9bb22613 # load x3 with 32 MSBs 0x000000009bb22613
sw x3, 0(x2) # store x3 (0x9bb22613) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009bb22613
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000009bb22613 from memory into f3
la x8, scratch # base address
addi x8, x8, 296 # sub immediate from rs1 to counter offset
fsd f3, -296(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
la x2, scratch
li x3, 0x9c413070 # load x3 with 32 MSBs 0x000000009c413070
sw x3, 0(x2) # store x3 (0x9c413070) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009c413070
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000009c413070 from memory into f30
la x9, scratch # base address
addi x9, x9, 986 # sub immediate from rs1 to counter offset
fsd f30, -986(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
la x2, scratch
li x3, 0xa9af7137 # load x3 with 32 MSBs 0x00000000a9af7137
sw x3, 0(x2) # store x3 (0xa9af7137) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a9af7137
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000a9af7137 from memory into f24
la x10, scratch # base address
addi x10, x10, -1022 # sub immediate from rs1 to counter offset
fsd f24, 1022(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
la x2, scratch
li x3, 0x6ef014bb # load x3 with 32 MSBs 0x000000006ef014bb
sw x3, 0(x2) # store x3 (0x6ef014bb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006ef014bb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000006ef014bb from memory into f13
la x11, scratch # base address
addi x11, x11, 1200 # sub immediate from rs1 to counter offset
fsd f13, -1200(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
la x2, scratch
li x3, 0x3ad280f0 # load x3 with 32 MSBs 0x000000003ad280f0
sw x3, 0(x2) # store x3 (0x3ad280f0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003ad280f0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000003ad280f0 from memory into f18
la x12, scratch # base address
addi x12, x12, -964 # sub immediate from rs1 to counter offset
fsd f18, 964(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
la x2, scratch
li x3, 0x1d123d07 # load x3 with 32 MSBs 0x000000001d123d07
sw x3, 0(x2) # store x3 (0x1d123d07) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001d123d07
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000001d123d07 from memory into f31
la x13, scratch # base address
addi x13, x13, -1327 # sub immediate from rs1 to counter offset
fsd f31, 1327(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
la x2, scratch
li x3, 0x06aa0c36 # load x3 with 32 MSBs 0x0000000006aa0c36
sw x3, 0(x2) # store x3 (0x06aa0c36) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000006aa0c36
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000006aa0c36 from memory into f22
la x14, scratch # base address
addi x14, x14, 401 # sub immediate from rs1 to counter offset
fsd f22, -401(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
la x2, scratch
li x3, 0xe1a11e17 # load x3 with 32 MSBs 0x00000000e1a11e17
sw x3, 0(x2) # store x3 (0xe1a11e17) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e1a11e17
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000e1a11e17 from memory into f23
la x15, scratch # base address
addi x15, x15, 777 # sub immediate from rs1 to counter offset
fsd f23, -777(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
la x2, scratch
li x3, 0xa03b947c # load x3 with 32 MSBs 0x00000000a03b947c
sw x3, 0(x2) # store x3 (0xa03b947c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a03b947c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000a03b947c from memory into f22
la x16, scratch # base address
addi x16, x16, 1654 # sub immediate from rs1 to counter offset
fsd f22, -1654(x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
la x2, scratch
li x3, 0xa44f1bbe # load x3 with 32 MSBs 0x00000000a44f1bbe
sw x3, 0(x2) # store x3 (0xa44f1bbe) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a44f1bbe
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000a44f1bbe from memory into f26
la x17, scratch # base address
addi x17, x17, -1395 # sub immediate from rs1 to counter offset
fsd f26, 1395(x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
la x2, scratch
li x3, 0x1fc8ad70 # load x3 with 32 MSBs 0x000000001fc8ad70
sw x3, 0(x2) # store x3 (0x1fc8ad70) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001fc8ad70
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000001fc8ad70 from memory into f16
la x18, scratch # base address
addi x18, x18, -458 # sub immediate from rs1 to counter offset
fsd f16, 458(x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
la x2, scratch
li x3, 0xed33c898 # load x3 with 32 MSBs 0x00000000ed33c898
sw x3, 0(x2) # store x3 (0xed33c898) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ed33c898
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000ed33c898 from memory into f22
la x19, scratch # base address
addi x19, x19, 1013 # sub immediate from rs1 to counter offset
fsd f22, -1013(x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
la x2, scratch
li x3, 0x7e636cfd # load x3 with 32 MSBs 0x000000007e636cfd
sw x3, 0(x2) # store x3 (0x7e636cfd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007e636cfd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000007e636cfd from memory into f15
la x20, scratch # base address
addi x20, x20, -1944 # sub immediate from rs1 to counter offset
fsd f15, 1944(x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
la x2, scratch
li x3, 0xc417f871 # load x3 with 32 MSBs 0x00000000c417f871
sw x3, 0(x2) # store x3 (0xc417f871) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c417f871
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000c417f871 from memory into f7
la x21, scratch # base address
addi x21, x21, 390 # sub immediate from rs1 to counter offset
fsd f7, -390(x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
la x2, scratch
li x3, 0xedeb1a73 # load x3 with 32 MSBs 0x00000000edeb1a73
sw x3, 0(x2) # store x3 (0xedeb1a73) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000edeb1a73
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000edeb1a73 from memory into f12
la x22, scratch # base address
addi x22, x22, -1769 # sub immediate from rs1 to counter offset
fsd f12, 1769(x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
la x2, scratch
li x3, 0xecd12d72 # load x3 with 32 MSBs 0x00000000ecd12d72
sw x3, 0(x2) # store x3 (0xecd12d72) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ecd12d72
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000ecd12d72 from memory into f22
la x23, scratch # base address
addi x23, x23, 1945 # sub immediate from rs1 to counter offset
fsd f22, -1945(x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
la x2, scratch
li x3, 0xc51539b8 # load x3 with 32 MSBs 0x00000000c51539b8
sw x3, 0(x2) # store x3 (0xc51539b8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c51539b8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000c51539b8 from memory into f6
la x24, scratch # base address
addi x24, x24, 1951 # sub immediate from rs1 to counter offset
fsd f6, -1951(x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
la x2, scratch
li x3, 0xf350fa78 # load x3 with 32 MSBs 0x00000000f350fa78
sw x3, 0(x2) # store x3 (0xf350fa78) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f350fa78
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000f350fa78 from memory into f22
la x25, scratch # base address
addi x25, x25, 977 # sub immediate from rs1 to counter offset
fsd f22, -977(x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
la x2, scratch
li x3, 0x6f336889 # load x3 with 32 MSBs 0x000000006f336889
sw x3, 0(x2) # store x3 (0x6f336889) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006f336889
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000006f336889 from memory into f29
la x26, scratch # base address
addi x26, x26, 1359 # sub immediate from rs1 to counter offset
fsd f29, -1359(x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
la x2, scratch
li x3, 0x5710d47d # load x3 with 32 MSBs 0x000000005710d47d
sw x3, 0(x2) # store x3 (0x5710d47d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005710d47d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000005710d47d from memory into f25
la x27, scratch # base address
addi x27, x27, -1627 # sub immediate from rs1 to counter offset
fsd f25, 1627(x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
la x2, scratch
li x3, 0x03231bad # load x3 with 32 MSBs 0x0000000003231bad
sw x3, 0(x2) # store x3 (0x03231bad) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000003231bad
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000003231bad from memory into f22
la x28, scratch # base address
addi x28, x28, -598 # sub immediate from rs1 to counter offset
fsd f22, 598(x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
la x2, scratch
li x3, 0x389c5df4 # load x3 with 32 MSBs 0x00000000389c5df4
sw x3, 0(x2) # store x3 (0x389c5df4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000389c5df4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000389c5df4 from memory into f8
la x29, scratch # base address
addi x29, x29, -825 # sub immediate from rs1 to counter offset
fsd f8, 825(x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
la x2, scratch
li x3, 0x553b48ef # load x3 with 32 MSBs 0x00000000553b48ef
sw x3, 0(x2) # store x3 (0x553b48ef) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000553b48ef
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000553b48ef from memory into f7
la x30, scratch # base address
addi x30, x30, 687 # sub immediate from rs1 to counter offset
fsd f7, -687(x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
la x2, scratch
li x3, 0xa7fa6b9f # load x3 with 32 MSBs 0x00000000a7fa6b9f
sw x3, 0(x2) # store x3 (0xa7fa6b9f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a7fa6b9f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000a7fa6b9f from memory into f13
la x31, scratch # base address
addi x31, x31, 1525 # sub immediate from rs1 to counter offset
fsd f13, -1525(x31) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x6b0c2d04 # load x3 with 32 MSBs 0x000000006b0c2d04
sw x3, 0(x2) # store x3 (0x6b0c2d04) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006b0c2d04
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000006b0c2d04 from memory into f12
la x30, scratch # base address
addi x30, x30, 0 # sub immediate from rs1 to counter offset
fsd f12, 0(x30) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xd002213f # load x3 with 32 MSBs 0x00000000d002213f
sw x3, 0(x2) # store x3 (0xd002213f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d002213f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000d002213f from memory into f27
la x8, scratch # base address
addi x8, x8, -1 # sub immediate from rs1 to counter offset
fsd f27, 1(x8) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x7747e783 # load x3 with 32 MSBs 0x000000007747e783
sw x3, 0(x2) # store x3 (0x7747e783) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007747e783
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000000007747e783 from memory into f27
la x31, scratch # base address
addi x31, x31, -2 # sub immediate from rs1 to counter offset
fsd f27, 2(x31) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x2c8222c2 # load x3 with 32 MSBs 0x000000002c8222c2
sw x3, 0(x2) # store x3 (0x2c8222c2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002c8222c2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000002c8222c2 from memory into f11
la x9, scratch # base address
addi x9, x9, -3 # sub immediate from rs1 to counter offset
fsd f11, 3(x9) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x7eea658e # load x3 with 32 MSBs 0x000000007eea658e
sw x3, 0(x2) # store x3 (0x7eea658e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007eea658e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000007eea658e from memory into f28
la x17, scratch # base address
addi x17, x17, -4 # sub immediate from rs1 to counter offset
fsd f28, 4(x17) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x5b04e5a0 # load x3 with 32 MSBs 0x000000005b04e5a0
sw x3, 0(x2) # store x3 (0x5b04e5a0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005b04e5a0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000005b04e5a0 from memory into f2
la x15, scratch # base address
addi x15, x15, -8 # sub immediate from rs1 to counter offset
fsd f2, 8(x15) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x2229c8bb # load x3 with 32 MSBs 0x000000002229c8bb
sw x3, 0(x2) # store x3 (0x2229c8bb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002229c8bb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000002229c8bb from memory into f25
la x31, scratch # base address
addi x31, x31, -16 # sub immediate from rs1 to counter offset
fsd f25, 16(x31) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x180d8ef7 # load x3 with 32 MSBs 0x00000000180d8ef7
sw x3, 0(x2) # store x3 (0x180d8ef7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000180d8ef7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000180d8ef7 from memory into f13
la x9, scratch # base address
addi x9, x9, -32 # sub immediate from rs1 to counter offset
fsd f13, 32(x9) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x3a8a483e # load x3 with 32 MSBs 0x000000003a8a483e
sw x3, 0(x2) # store x3 (0x3a8a483e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003a8a483e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000003a8a483e from memory into f1
la x3, scratch # base address
addi x3, x3, -64 # sub immediate from rs1 to counter offset
fsd f1, 64(x3) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x5b08a49e # load x3 with 32 MSBs 0x000000005b08a49e
sw x3, 0(x2) # store x3 (0x5b08a49e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005b08a49e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000005b08a49e from memory into f26
la x24, scratch # base address
addi x24, x24, -128 # sub immediate from rs1 to counter offset
fsd f26, 128(x24) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x6d8dff04 # load x3 with 32 MSBs 0x000000006d8dff04
sw x3, 0(x2) # store x3 (0x6d8dff04) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006d8dff04
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000006d8dff04 from memory into f14
la x30, scratch # base address
addi x30, x30, -256 # sub immediate from rs1 to counter offset
fsd f14, 256(x30) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x5b3ee904 # load x3 with 32 MSBs 0x000000005b3ee904
sw x3, 0(x2) # store x3 (0x5b3ee904) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005b3ee904
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000005b3ee904 from memory into f2
la x14, scratch # base address
addi x14, x14, -512 # sub immediate from rs1 to counter offset
fsd f2, 512(x14) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xaf3c4d19 # load x3 with 32 MSBs 0x00000000af3c4d19
sw x3, 0(x2) # store x3 (0xaf3c4d19) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000af3c4d19
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000af3c4d19 from memory into f7
la x13, scratch # base address
addi x13, x13, -1023 # sub immediate from rs1 to counter offset
fsd f7, 1023(x13) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x88e2705f # load x3 with 32 MSBs 0x0000000088e2705f
sw x3, 0(x2) # store x3 (0x88e2705f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000088e2705f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x0000000088e2705f from memory into f30
la x1, scratch # base address
addi x1, x1, -1024 # sub immediate from rs1 to counter offset
fsd f30, 1024(x1) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x4d14fcea # load x3 with 32 MSBs 0x000000004d14fcea
sw x3, 0(x2) # store x3 (0x4d14fcea) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004d14fcea
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000004d14fcea from memory into f13
la x19, scratch # base address
addi x19, x19, -1795 # sub immediate from rs1 to counter offset
fsd f13, 1795(x19) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x13738dce # load x3 with 32 MSBs 0x0000000013738dce
sw x3, 0(x2) # store x3 (0x13738dce) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000013738dce
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000013738dce from memory into f11
la x1, scratch # base address
addi x1, x1, -2047 # sub immediate from rs1 to counter offset
fsd f11, 2047(x1) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x477832c8 # load x3 with 32 MSBs 0x00000000477832c8
sw x3, 0(x2) # store x3 (0x477832c8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000477832c8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000477832c8 from memory into f11
la x19, scratch # base address
addi x19, x19, 2047 # increment rs1 by 2047 
addi x19, x19, 1 # increment rs1 to bump it by a total of 2048 to compensate for -2048
fsd f11, -2048(x19) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xf1f96856 # load x3 with 32 MSBs 0x00000000f1f96856
sw x3, 0(x2) # store x3 (0xf1f96856) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f1f96856
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000f1f96856 from memory into f23
la x26, scratch # base address
addi x26, x26, 2047 # sub immediate from rs1 to counter offset
fsd f23, -2047(x26) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x64e05c2d # load x3 with 32 MSBs 0x0000000064e05c2d
sw x3, 0(x2) # store x3 (0x64e05c2d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000064e05c2d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000064e05c2d from memory into f21
la x8, scratch # base address
addi x8, x8, 2 # sub immediate from rs1 to counter offset
fsd f21, -2(x8) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x8d58c7ce # load x3 with 32 MSBs 0x000000008d58c7ce
sw x3, 0(x2) # store x3 (0x8d58c7ce) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008d58c7ce
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000008d58c7ce from memory into f16
la x21, scratch # base address
addi x21, x21, 1 # sub immediate from rs1 to counter offset
fsd f16, -1(x21) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x20, scratch
addi x20, x20, 1706
add x9, x25, x12 # perform first operation
fsd f3, -1706(x20) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x18, scratch
addi x18, x18, 1715
add x8, x29, x27 # perform first operation
fsd f7, -1715(x18) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x13, scratch
addi x13, x13, 1413
add x16, x9, x21 # perform first operation
fsd f24, -1413(x13) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x10, scratch
addi x10, x10, 815
add x10, x10, x0 # perform first operation
fsd f12, -815(x10) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x10, scratch
addi x10, x10, -1998
fmul.s f26, f26, f0 # perform first operation
fsd f26, 1998(x10) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x31, scratch
addi x31, x31, 220
add x20, x20, x0 # perform first operation
fsd f29, -220(x31) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x25, scratch
addi x25, x25, 856
add x24, x19, x3 # perform first operation
fsd f27, -856(x25) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x21, scratch
addi x21, x21, -1546
add x28, x18, x26 # perform first operation
fsd f14, 1546(x21) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x19, scratch
addi x19, x19, 1146
add x17, x13, x5 # perform first operation
fsd f8, -1146(x19) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x22, scratch
addi x22, x22, 1720
add x22, x22, x0 # perform first operation
fsd f20, -1720(x22) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x12, scratch
addi x12, x12, -359
fmul.s f13, f13, f0 # perform first operation
fsd f23, 359(x12) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x27, scratch
addi x27, x27, -122
add x22, x22, x0 # perform first operation
fsd f20, 122(x27) # perform second (triggering) operation

# Testcase cp_fs2 (Test source fs2 = f0)
la x2, scratch
li x3, 0xdcb6738c # load x3 with 32 MSBs 0x00000000dcb6738c
sw x3, 0(x2) # store x3 (0xdcb6738c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dcb6738c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x00000000dcb6738c from memory into f0
la x1, scratch # base address
addi x1, x1, -1941 # sub immediate from rs1 to counter offset
fsd f0, 1941(x1) # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
la x2, scratch
li x3, 0xceb880ca # load x3 with 32 MSBs 0x00000000ceb880ca
sw x3, 0(x2) # store x3 (0xceb880ca) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ceb880ca
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000ceb880ca from memory into f1
la x29, scratch # base address
addi x29, x29, -1867 # sub immediate from rs1 to counter offset
fsd f1, 1867(x29) # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
la x2, scratch
li x3, 0x9101f036 # load x3 with 32 MSBs 0x000000009101f036
sw x3, 0(x2) # store x3 (0x9101f036) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009101f036
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000009101f036 from memory into f2
la x15, scratch # base address
addi x15, x15, -1795 # sub immediate from rs1 to counter offset
fsd f2, 1795(x15) # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
la x2, scratch
li x3, 0x97821a64 # load x3 with 32 MSBs 0x0000000097821a64
sw x3, 0(x2) # store x3 (0x97821a64) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000097821a64
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000097821a64 from memory into f3
la x13, scratch # base address
addi x13, x13, 1021 # sub immediate from rs1 to counter offset
fsd f3, -1021(x13) # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x1e47ddee # load x3 with 32 MSBs 0x000000001e47ddee
sw x3, 0(x2) # store x3 (0x1e47ddee) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001e47ddee
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x000000001e47ddee from memory into f4
la x13, scratch # base address
addi x13, x13, -871 # sub immediate from rs1 to counter offset
fsd f4, 871(x13) # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xdd36575b # load x3 with 32 MSBs 0x00000000dd36575b
sw x3, 0(x2) # store x3 (0xdd36575b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dd36575b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000dd36575b from memory into f5
la x11, scratch # base address
addi x11, x11, 818 # sub immediate from rs1 to counter offset
fsd f5, -818(x11) # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x18895f36 # load x3 with 32 MSBs 0x0000000018895f36
sw x3, 0(x2) # store x3 (0x18895f36) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000018895f36
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000018895f36 from memory into f6
la x5, scratch # base address
addi x5, x5, -1379 # sub immediate from rs1 to counter offset
fsd f6, 1379(x5) # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x12bc1171 # load x3 with 32 MSBs 0x0000000012bc1171
sw x3, 0(x2) # store x3 (0x12bc1171) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000012bc1171
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000012bc1171 from memory into f7
la x1, scratch # base address
addi x1, x1, -1063 # sub immediate from rs1 to counter offset
fsd f7, 1063(x1) # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
la x2, scratch
li x3, 0x1a5a02f0 # load x3 with 32 MSBs 0x000000001a5a02f0
sw x3, 0(x2) # store x3 (0x1a5a02f0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001a5a02f0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000001a5a02f0 from memory into f8
la x11, scratch # base address
addi x11, x11, 429 # sub immediate from rs1 to counter offset
fsd f8, -429(x11) # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
la x2, scratch
li x3, 0xf8990c49 # load x3 with 32 MSBs 0x00000000f8990c49
sw x3, 0(x2) # store x3 (0xf8990c49) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f8990c49
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000f8990c49 from memory into f9
la x31, scratch # base address
addi x31, x31, 614 # sub immediate from rs1 to counter offset
fsd f9, -614(x31) # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
la x2, scratch
li x3, 0xfe732e29 # load x3 with 32 MSBs 0x00000000fe732e29
sw x3, 0(x2) # store x3 (0xfe732e29) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fe732e29
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000fe732e29 from memory into f10
la x18, scratch # base address
addi x18, x18, -597 # sub immediate from rs1 to counter offset
fsd f10, 597(x18) # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
la x2, scratch
li x3, 0x592b1991 # load x3 with 32 MSBs 0x00000000592b1991
sw x3, 0(x2) # store x3 (0x592b1991) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000592b1991
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000592b1991 from memory into f11
la x26, scratch # base address
addi x26, x26, -675 # sub immediate from rs1 to counter offset
fsd f11, 675(x26) # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
la x2, scratch
li x3, 0x2693f045 # load x3 with 32 MSBs 0x000000002693f045
sw x3, 0(x2) # store x3 (0x2693f045) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002693f045
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000002693f045 from memory into f12
la x24, scratch # base address
addi x24, x24, -586 # sub immediate from rs1 to counter offset
fsd f12, 586(x24) # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
la x2, scratch
li x3, 0x55858b5d # load x3 with 32 MSBs 0x0000000055858b5d
sw x3, 0(x2) # store x3 (0x55858b5d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000055858b5d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000055858b5d from memory into f13
la x10, scratch # base address
addi x10, x10, 1064 # sub immediate from rs1 to counter offset
fsd f13, -1064(x10) # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
la x2, scratch
li x3, 0xaab2fdca # load x3 with 32 MSBs 0x00000000aab2fdca
sw x3, 0(x2) # store x3 (0xaab2fdca) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000aab2fdca
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000aab2fdca from memory into f14
la x26, scratch # base address
addi x26, x26, -1352 # sub immediate from rs1 to counter offset
fsd f14, 1352(x26) # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
la x2, scratch
li x3, 0xe6bec130 # load x3 with 32 MSBs 0x00000000e6bec130
sw x3, 0(x2) # store x3 (0xe6bec130) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e6bec130
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000e6bec130 from memory into f15
la x22, scratch # base address
addi x22, x22, 580 # sub immediate from rs1 to counter offset
fsd f15, -580(x22) # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
la x2, scratch
li x3, 0x70c4c806 # load x3 with 32 MSBs 0x0000000070c4c806
sw x3, 0(x2) # store x3 (0x70c4c806) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000070c4c806
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000070c4c806 from memory into f16
la x5, scratch # base address
addi x5, x5, -302 # sub immediate from rs1 to counter offset
fsd f16, 302(x5) # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
la x2, scratch
li x3, 0xedf55f4c # load x3 with 32 MSBs 0x00000000edf55f4c
sw x3, 0(x2) # store x3 (0xedf55f4c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000edf55f4c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000edf55f4c from memory into f17
la x3, scratch # base address
addi x3, x3, -483 # sub immediate from rs1 to counter offset
fsd f17, 483(x3) # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
la x2, scratch
li x3, 0x02d613d6 # load x3 with 32 MSBs 0x0000000002d613d6
sw x3, 0(x2) # store x3 (0x02d613d6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000002d613d6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000002d613d6 from memory into f18
la x13, scratch # base address
addi x13, x13, -1611 # sub immediate from rs1 to counter offset
fsd f18, 1611(x13) # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
la x2, scratch
li x3, 0x2fb16db5 # load x3 with 32 MSBs 0x000000002fb16db5
sw x3, 0(x2) # store x3 (0x2fb16db5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002fb16db5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000002fb16db5 from memory into f19
la x13, scratch # base address
addi x13, x13, -1556 # sub immediate from rs1 to counter offset
fsd f19, 1556(x13) # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
la x2, scratch
li x3, 0xef3cdbd1 # load x3 with 32 MSBs 0x00000000ef3cdbd1
sw x3, 0(x2) # store x3 (0xef3cdbd1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ef3cdbd1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000ef3cdbd1 from memory into f20
la x28, scratch # base address
addi x28, x28, 245 # sub immediate from rs1 to counter offset
fsd f20, -245(x28) # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
la x2, scratch
li x3, 0x5be2cd48 # load x3 with 32 MSBs 0x000000005be2cd48
sw x3, 0(x2) # store x3 (0x5be2cd48) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005be2cd48
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000005be2cd48 from memory into f21
la x12, scratch # base address
addi x12, x12, 352 # sub immediate from rs1 to counter offset
fsd f21, -352(x12) # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
la x2, scratch
li x3, 0x764aada3 # load x3 with 32 MSBs 0x00000000764aada3
sw x3, 0(x2) # store x3 (0x764aada3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000764aada3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000764aada3 from memory into f22
la x6, scratch # base address
addi x6, x6, 2014 # sub immediate from rs1 to counter offset
fsd f22, -2014(x6) # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
la x2, scratch
li x3, 0x000fcb49 # load x3 with 32 MSBs 0x00000000000fcb49
sw x3, 0(x2) # store x3 (0x000fcb49) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000000fcb49
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000000fcb49 from memory into f23
la x29, scratch # base address
addi x29, x29, -2011 # sub immediate from rs1 to counter offset
fsd f23, 2011(x29) # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
la x2, scratch
li x3, 0x0075fa3c # load x3 with 32 MSBs 0x000000000075fa3c
sw x3, 0(x2) # store x3 (0x0075fa3c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000075fa3c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000000075fa3c from memory into f24
la x9, scratch # base address
addi x9, x9, 1219 # sub immediate from rs1 to counter offset
fsd f24, -1219(x9) # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
la x2, scratch
li x3, 0x4ba1fca6 # load x3 with 32 MSBs 0x000000004ba1fca6
sw x3, 0(x2) # store x3 (0x4ba1fca6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004ba1fca6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000004ba1fca6 from memory into f25
la x19, scratch # base address
addi x19, x19, 317 # sub immediate from rs1 to counter offset
fsd f25, -317(x19) # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
la x2, scratch
li x3, 0xea7db10d # load x3 with 32 MSBs 0x00000000ea7db10d
sw x3, 0(x2) # store x3 (0xea7db10d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ea7db10d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000ea7db10d from memory into f26
la x3, scratch # base address
addi x3, x3, -9 # sub immediate from rs1 to counter offset
fsd f26, 9(x3) # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
la x2, scratch
li x3, 0xa2beaed3 # load x3 with 32 MSBs 0x00000000a2beaed3
sw x3, 0(x2) # store x3 (0xa2beaed3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a2beaed3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000a2beaed3 from memory into f27
la x24, scratch # base address
addi x24, x24, 270 # sub immediate from rs1 to counter offset
fsd f27, -270(x24) # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
la x2, scratch
li x3, 0x4b65ba0e # load x3 with 32 MSBs 0x000000004b65ba0e
sw x3, 0(x2) # store x3 (0x4b65ba0e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004b65ba0e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000004b65ba0e from memory into f28
la x18, scratch # base address
addi x18, x18, 1106 # sub immediate from rs1 to counter offset
fsd f28, -1106(x18) # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
la x2, scratch
li x3, 0xe2a5ef82 # load x3 with 32 MSBs 0x00000000e2a5ef82
sw x3, 0(x2) # store x3 (0xe2a5ef82) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e2a5ef82
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000e2a5ef82 from memory into f29
la x14, scratch # base address
addi x14, x14, 110 # sub immediate from rs1 to counter offset
fsd f29, -110(x14) # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
la x2, scratch
li x3, 0x0d85ea90 # load x3 with 32 MSBs 0x000000000d85ea90
sw x3, 0(x2) # store x3 (0x0d85ea90) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000d85ea90
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000000d85ea90 from memory into f30
la x20, scratch # base address
addi x20, x20, 987 # sub immediate from rs1 to counter offset
fsd f30, -987(x20) # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
la x2, scratch
li x3, 0xb92ddf90 # load x3 with 32 MSBs 0x00000000b92ddf90
sw x3, 0(x2) # store x3 (0xb92ddf90) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b92ddf90
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000b92ddf90 from memory into f31
la x29, scratch # base address
addi x29, x29, 1802 # sub immediate from rs1 to counter offset
fsd f31, -1802(x29) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000000000000 from memory into f31
la x20, scratch # base address
addi x20, x20, -692 # sub immediate from rs1 to counter offset
fsd f31, 692(x20) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000000)
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0x0000000080000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000080000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0000000080000000 from memory into f24
la x18, scratch # base address
addi x18, x18, 815 # sub immediate from rs1 to counter offset
fsd f24, -815(x18) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000003f800000 from memory into f3
la x20, scratch # base address
addi x20, x20, 529 # sub immediate from rs1 to counter offset
fsd f3, -529(x20) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbf800000)
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0x00000000bf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bf800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000bf800000 from memory into f30
la x24, scratch # base address
addi x24, x24, 209 # sub immediate from rs1 to counter offset
fsd f30, -209(x24) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3fc00000)
la x2, scratch
li x3, 0x3fc00000 # load x3 with 32 MSBs 0x000000003fc00000
sw x3, 0(x2) # store x3 (0x3fc00000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003fc00000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000003fc00000 from memory into f6
la x12, scratch # base address
addi x12, x12, 543 # sub immediate from rs1 to counter offset
fsd f6, -543(x12) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbfc00000)
la x2, scratch
li x3, 0xbfc00000 # load x3 with 32 MSBs 0x00000000bfc00000
sw x3, 0(x2) # store x3 (0xbfc00000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bfc00000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000bfc00000 from memory into f12
la x8, scratch # base address
addi x8, x8, 1562 # sub immediate from rs1 to counter offset
fsd f12, -1562(x8) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x40000000)
la x2, scratch
li x3, 0x40000000 # load x3 with 32 MSBs 0x0000000040000000
sw x3, 0(x2) # store x3 (0x40000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000040000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000040000000 from memory into f18
la x25, scratch # base address
addi x25, x25, -1963 # sub immediate from rs1 to counter offset
fsd f18, 1963(x25) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0000000)
la x2, scratch
li x3, 0xc0000000 # load x3 with 32 MSBs 0x00000000c0000000
sw x3, 0(x2) # store x3 (0xc0000000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c0000000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000c0000000 from memory into f16
la x3, scratch # base address
addi x3, x3, -590 # sub immediate from rs1 to counter offset
fsd f16, 590(x3) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800000)
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0x0000000000800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0000000000800000 from memory into f25
la x11, scratch # base address
addi x11, x11, 2045 # sub immediate from rs1 to counter offset
fsd f25, -2045(x11) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80800000)
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0x0000000080800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000080800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0000000080800000 from memory into f20
la x16, scratch # base address
addi x16, x16, 1478 # sub immediate from rs1 to counter offset
fsd f20, -1478(x16) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f7fffff)
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0x000000007f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007f7fffff
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000007f7fffff from memory into f1
la x22, scratch # base address
addi x22, x22, -715 # sub immediate from rs1 to counter offset
fsd f1, 715(x22) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff7fffff)
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x00000000ff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ff7fffff
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000ff7fffff from memory into f29
la x13, scratch # base address
addi x13, x13, 1619 # sub immediate from rs1 to counter offset
fsd f29, -1619(x13) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffff)
la x2, scratch
li x3, 0x007fffff # load x3 with 32 MSBs 0x00000000007fffff
sw x3, 0(x2) # store x3 (0x007fffff) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000007fffff
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000007fffff from memory into f17
la x27, scratch # base address
addi x27, x27, -134 # sub immediate from rs1 to counter offset
fsd f17, 134(x27) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x807fffff)
la x2, scratch
li x3, 0x807fffff # load x3 with 32 MSBs 0x00000000807fffff
sw x3, 0(x2) # store x3 (0x807fffff) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000807fffff
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000807fffff from memory into f23
la x22, scratch # base address
addi x22, x22, 1391 # sub immediate from rs1 to counter offset
fsd f23, -1391(x22) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400000)
la x2, scratch
li x3, 0x00400000 # load x3 with 32 MSBs 0x0000000000400000
sw x3, 0(x2) # store x3 (0x00400000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000400000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000000400000 from memory into f31
la x6, scratch # base address
addi x6, x6, -1137 # sub immediate from rs1 to counter offset
fsd f31, 1137(x6) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80400000)
la x2, scratch
li x3, 0x80400000 # load x3 with 32 MSBs 0x0000000080400000
sw x3, 0(x2) # store x3 (0x80400000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000080400000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000080400000 from memory into f6
la x25, scratch # base address
addi x25, x25, 655 # sub immediate from rs1 to counter offset
fsd f6, -655(x25) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0000000000000001 from memory into f10
la x16, scratch # base address
addi x16, x16, -130 # sub immediate from rs1 to counter offset
fsd f10, 130(x16) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000001)
la x2, scratch
li x3, 0x80000001 # load x3 with 32 MSBs 0x0000000080000001
sw x3, 0(x2) # store x3 (0x80000001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000080000001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000080000001 from memory into f16
la x7, scratch # base address
addi x7, x7, 514 # sub immediate from rs1 to counter offset
fsd f16, -514(x7) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800000)
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x000000007f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000007f800000 from memory into f14
la x23, scratch # base address
addi x23, x23, 1032 # sub immediate from rs1 to counter offset
fsd f14, -1032(x23) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff800000)
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0x00000000ff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ff800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000ff800000 from memory into f31
la x9, scratch # base address
addi x9, x9, 1015 # sub immediate from rs1 to counter offset
fsd f31, -1015(x9) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fc00000)
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0x000000007fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007fc00000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x000000007fc00000 from memory into f10
la x7, scratch # base address
addi x7, x7, 650 # sub immediate from rs1 to counter offset
fsd f10, -650(x7) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff)
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0x000000007fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007fffffff
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000007fffffff from memory into f29
la x6, scratch # base address
addi x6, x6, 1453 # sub immediate from rs1 to counter offset
fsd f29, -1453(x6) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff)
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x00000000ffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffffffff
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000ffffffff from memory into f27
la x17, scratch # base address
addi x17, x17, 1902 # sub immediate from rs1 to counter offset
fsd f27, -1902(x17) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800001)
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0x000000007f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007f800001
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000007f800001 from memory into f28
la x18, scratch # base address
addi x18, x18, -858 # sub immediate from rs1 to counter offset
fsd f28, 858(x18) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fbfffff)
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0x000000007fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007fbfffff
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000007fbfffff from memory into f23
la x26, scratch # base address
addi x26, x26, -1357 # sub immediate from rs1 to counter offset
fsd f23, 1357(x26) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffbfffff)
la x2, scratch
li x3, 0xffbfffff # load x3 with 32 MSBs 0x00000000ffbfffff
sw x3, 0(x2) # store x3 (0xffbfffff) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffbfffff
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000ffbfffff from memory into f6
la x22, scratch # base address
addi x22, x22, 696 # sub immediate from rs1 to counter offset
fsd f6, -696(x22) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ef8654f)
la x2, scratch
li x3, 0x7ef8654f # load x3 with 32 MSBs 0x000000007ef8654f
sw x3, 0(x2) # store x3 (0x7ef8654f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007ef8654f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000007ef8654f from memory into f5
la x9, scratch # base address
addi x9, x9, -1667 # sub immediate from rs1 to counter offset
fsd f5, 1667(x9) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x813d9ab0)
la x2, scratch
li x3, 0x813d9ab0 # load x3 with 32 MSBs 0x00000000813d9ab0
sw x3, 0(x2) # store x3 (0x813d9ab0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000813d9ab0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000813d9ab0 from memory into f31
la x16, scratch # base address
addi x16, x16, -1676 # sub immediate from rs1 to counter offset
fsd f31, 1676(x16) # perform operation

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
