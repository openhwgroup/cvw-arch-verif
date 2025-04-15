///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/D/WALLY-COV-fsd.S
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
li x3, 0xdc3d0ec1f46f88e7 # load x3 with value 0xdc3d0ec1f46f88e7
sd x3, 0(x2) # store 0xdc3d0ec1f46f88e7 in memory
fld f20, 0(x2) # load 0xdc3d0ec1f46f88e7 from memory into f20
la x1, scratch # base address
addi x1, x1, -408 # sub immediate from rs1 to counter offset
fsd f20, 408(x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
la x2, scratch
li x3, 0x9fe8ab7c2e42bda3 # load x3 with value 0x9fe8ab7c2e42bda3
sd x3, 0(x2) # store 0x9fe8ab7c2e42bda3 in memory
fld f12, 0(x2) # load 0x9fe8ab7c2e42bda3 from memory into f12
la x2, scratch # base address
addi x2, x2, -655 # sub immediate from rs1 to counter offset
fsd f12, 655(x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
la x2, scratch
li x3, 0xdb4d29dcb05540e4 # load x3 with value 0xdb4d29dcb05540e4
sd x3, 0(x2) # store 0xdb4d29dcb05540e4 in memory
fld f17, 0(x2) # load 0xdb4d29dcb05540e4 from memory into f17
la x3, scratch # base address
addi x3, x3, -1458 # sub immediate from rs1 to counter offset
fsd f17, 1458(x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xd566a981e1020d52 # load x3 with value 0xd566a981e1020d52
sd x3, 0(x2) # store 0xd566a981e1020d52 in memory
fld f23, 0(x2) # load 0xd566a981e1020d52 from memory into f23
la x4, scratch # base address
addi x4, x4, -366 # sub immediate from rs1 to counter offset
fsd f23, 366(x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x6ea82ecf18435729 # load x3 with value 0x6ea82ecf18435729
sd x3, 0(x2) # store 0x6ea82ecf18435729 in memory
fld f18, 0(x2) # load 0x6ea82ecf18435729 from memory into f18
la x5, scratch # base address
addi x5, x5, 34 # sub immediate from rs1 to counter offset
fsd f18, -34(x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0xa9af71372cb6e3f6 # load x3 with value 0xa9af71372cb6e3f6
sd x3, 0(x2) # store 0xa9af71372cb6e3f6 in memory
fld f20, 0(x2) # load 0xa9af71372cb6e3f6 from memory into f20
la x6, scratch # base address
addi x6, x6, 671 # sub immediate from rs1 to counter offset
fsd f20, -671(x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x2dc42c76f4c3ca0c # load x3 with value 0x2dc42c76f4c3ca0c
sd x3, 0(x2) # store 0x2dc42c76f4c3ca0c in memory
fld f16, 0(x2) # load 0x2dc42c76f4c3ca0c from memory into f16
la x7, scratch # base address
addi x7, x7, -1660 # sub immediate from rs1 to counter offset
fsd f16, 1660(x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
la x2, scratch
li x3, 0x742904121d123d07 # load x3 with value 0x742904121d123d07
sd x3, 0(x2) # store 0x742904121d123d07 in memory
fld f19, 0(x2) # load 0x742904121d123d07 from memory into f19
la x8, scratch # base address
addi x8, x8, -1063 # sub immediate from rs1 to counter offset
fsd f19, 1063(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
la x2, scratch
li x3, 0xa9868e8552cc2042 # load x3 with value 0xa9868e8552cc2042
sd x3, 0(x2) # store 0xa9868e8552cc2042 in memory
fld f13, 0(x2) # load 0xa9868e8552cc2042 from memory into f13
la x9, scratch # base address
addi x9, x9, 1163 # sub immediate from rs1 to counter offset
fsd f13, -1163(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
la x2, scratch
li x3, 0x3c35aec4bd1ecd03 # load x3 with value 0x3c35aec4bd1ecd03
sd x3, 0(x2) # store 0x3c35aec4bd1ecd03 in memory
fld f5, 0(x2) # load 0x3c35aec4bd1ecd03 from memory into f5
la x10, scratch # base address
addi x10, x10, -1148 # sub immediate from rs1 to counter offset
fsd f5, 1148(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
la x2, scratch
li x3, 0xd8771ae81284ac89 # load x3 with value 0xd8771ae81284ac89
sd x3, 0(x2) # store 0xd8771ae81284ac89 in memory
fld f21, 0(x2) # load 0xd8771ae81284ac89 from memory into f21
la x11, scratch # base address
addi x11, x11, 909 # sub immediate from rs1 to counter offset
fsd f21, -909(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
la x2, scratch
li x3, 0xed33c8987de112c8 # load x3 with value 0xed33c8987de112c8
sd x3, 0(x2) # store 0xed33c8987de112c8 in memory
fld f19, 0(x2) # load 0xed33c8987de112c8 from memory into f19
la x12, scratch # base address
addi x12, x12, 1153 # sub immediate from rs1 to counter offset
fsd f19, -1153(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
la x2, scratch
li x3, 0x2b206e7a27fd4d2d # load x3 with value 0x2b206e7a27fd4d2d
sd x3, 0(x2) # store 0x2b206e7a27fd4d2d in memory
fld f3, 0(x2) # load 0x2b206e7a27fd4d2d from memory into f3
la x13, scratch # base address
addi x13, x13, -750 # sub immediate from rs1 to counter offset
fsd f3, 750(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
la x2, scratch
li x3, 0x81a181461239a617 # load x3 with value 0x81a181461239a617
sd x3, 0(x2) # store 0x81a181461239a617 in memory
fld f1, 0(x2) # load 0x81a181461239a617 from memory into f1
la x14, scratch # base address
addi x14, x14, 1525 # sub immediate from rs1 to counter offset
fsd f1, -1525(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
la x2, scratch
li x3, 0xc38e19533e103a53 # load x3 with value 0xc38e19533e103a53
sd x3, 0(x2) # store 0xc38e19533e103a53 in memory
fld f18, 0(x2) # load 0xc38e19533e103a53 from memory into f18
la x15, scratch # base address
addi x15, x15, 1768 # sub immediate from rs1 to counter offset
fsd f18, -1768(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
la x2, scratch
li x3, 0xafc0b13e40506aa1 # load x3 with value 0xafc0b13e40506aa1
sd x3, 0(x2) # store 0xafc0b13e40506aa1 in memory
fld f28, 0(x2) # load 0xafc0b13e40506aa1 from memory into f28
la x16, scratch # base address
addi x16, x16, 1457 # sub immediate from rs1 to counter offset
fsd f28, -1457(x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
la x2, scratch
li x3, 0x27d769481580bc44 # load x3 with value 0x27d769481580bc44
sd x3, 0(x2) # store 0x27d769481580bc44 in memory
fld f24, 0(x2) # load 0x27d769481580bc44 from memory into f24
la x17, scratch # base address
addi x17, x17, 1524 # sub immediate from rs1 to counter offset
fsd f24, -1524(x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
la x2, scratch
li x3, 0x14279ff037c740ae # load x3 with value 0x14279ff037c740ae
sd x3, 0(x2) # store 0x14279ff037c740ae in memory
fld f9, 0(x2) # load 0x14279ff037c740ae from memory into f9
la x18, scratch # base address
addi x18, x18, 742 # sub immediate from rs1 to counter offset
fsd f9, -742(x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
la x2, scratch
li x3, 0xa3b7d543f53ca802 # load x3 with value 0xa3b7d543f53ca802
sd x3, 0(x2) # store 0xa3b7d543f53ca802 in memory
fld f26, 0(x2) # load 0xa3b7d543f53ca802 from memory into f26
la x19, scratch # base address
addi x19, x19, 1331 # sub immediate from rs1 to counter offset
fsd f26, -1331(x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
la x2, scratch
li x3, 0xcb782824166b0932 # load x3 with value 0xcb782824166b0932
sd x3, 0(x2) # store 0xcb782824166b0932 in memory
fld f25, 0(x2) # load 0xcb782824166b0932 from memory into f25
la x20, scratch # base address
addi x20, x20, -79 # sub immediate from rs1 to counter offset
fsd f25, 79(x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
la x2, scratch
li x3, 0xb4dfd27e7b72a0a2 # load x3 with value 0xb4dfd27e7b72a0a2
sd x3, 0(x2) # store 0xb4dfd27e7b72a0a2 in memory
fld f16, 0(x2) # load 0xb4dfd27e7b72a0a2 from memory into f16
la x21, scratch # base address
addi x21, x21, 1207 # sub immediate from rs1 to counter offset
fsd f16, -1207(x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
la x2, scratch
li x3, 0x247dcd67f898d170 # load x3 with value 0x247dcd67f898d170
sd x3, 0(x2) # store 0x247dcd67f898d170 in memory
fld f24, 0(x2) # load 0x247dcd67f898d170 from memory into f24
la x22, scratch # base address
addi x22, x22, -94 # sub immediate from rs1 to counter offset
fsd f24, 94(x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
la x2, scratch
li x3, 0x569aac1a45dea614 # load x3 with value 0x569aac1a45dea614
sd x3, 0(x2) # store 0x569aac1a45dea614 in memory
fld f19, 0(x2) # load 0x569aac1a45dea614 from memory into f19
la x23, scratch # base address
addi x23, x23, -549 # sub immediate from rs1 to counter offset
fsd f19, 549(x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
la x2, scratch
li x3, 0xb669ea60e06fc51a # load x3 with value 0xb669ea60e06fc51a
sd x3, 0(x2) # store 0xb669ea60e06fc51a in memory
fld f30, 0(x2) # load 0xb669ea60e06fc51a from memory into f30
la x24, scratch # base address
addi x24, x24, 325 # sub immediate from rs1 to counter offset
fsd f30, -325(x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
la x2, scratch
li x3, 0x99c7289ed68664d0 # load x3 with value 0x99c7289ed68664d0
sd x3, 0(x2) # store 0x99c7289ed68664d0 in memory
fld f7, 0(x2) # load 0x99c7289ed68664d0 from memory into f7
la x25, scratch # base address
addi x25, x25, -662 # sub immediate from rs1 to counter offset
fsd f7, 662(x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
la x2, scratch
li x3, 0xfb15ada5410f3eac # load x3 with value 0xfb15ada5410f3eac
sd x3, 0(x2) # store 0xfb15ada5410f3eac in memory
fld f3, 0(x2) # load 0xfb15ada5410f3eac from memory into f3
la x26, scratch # base address
addi x26, x26, 1788 # sub immediate from rs1 to counter offset
fsd f3, -1788(x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
la x2, scratch
li x3, 0x8f15b244752f3658 # load x3 with value 0x8f15b244752f3658
sd x3, 0(x2) # store 0x8f15b244752f3658 in memory
fld f9, 0(x2) # load 0x8f15b244752f3658 from memory into f9
la x27, scratch # base address
addi x27, x27, 878 # sub immediate from rs1 to counter offset
fsd f9, -878(x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
la x2, scratch
li x3, 0xdb4745a14e19e18e # load x3 with value 0xdb4745a14e19e18e
sd x3, 0(x2) # store 0xdb4745a14e19e18e in memory
fld f11, 0(x2) # load 0xdb4745a14e19e18e from memory into f11
la x28, scratch # base address
addi x28, x28, 641 # sub immediate from rs1 to counter offset
fsd f11, -641(x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
la x2, scratch
li x3, 0x1302b4aa57c32959 # load x3 with value 0x1302b4aa57c32959
sd x3, 0(x2) # store 0x1302b4aa57c32959 in memory
fld f23, 0(x2) # load 0x1302b4aa57c32959 from memory into f23
la x29, scratch # base address
addi x29, x29, -1044 # sub immediate from rs1 to counter offset
fsd f23, 1044(x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
la x2, scratch
li x3, 0x23dba8c809b0721c # load x3 with value 0x23dba8c809b0721c
sd x3, 0(x2) # store 0x23dba8c809b0721c in memory
fld f12, 0(x2) # load 0x23dba8c809b0721c from memory into f12
la x30, scratch # base address
addi x30, x30, 920 # sub immediate from rs1 to counter offset
fsd f12, -920(x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
la x2, scratch
li x3, 0x9e6b9cc8a1e98783 # load x3 with value 0x9e6b9cc8a1e98783
sd x3, 0(x2) # store 0x9e6b9cc8a1e98783 in memory
fld f9, 0(x2) # load 0x9e6b9cc8a1e98783 from memory into f9
la x31, scratch # base address
addi x31, x31, 1302 # sub immediate from rs1 to counter offset
fsd f9, -1302(x31) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x586a767465a9bdd0 # load x3 with value 0x586a767465a9bdd0
sd x3, 0(x2) # store 0x586a767465a9bdd0 in memory
fld f12, 0(x2) # load 0x586a767465a9bdd0 from memory into f12
la x30, scratch # base address
addi x30, x30, 0 # sub immediate from rs1 to counter offset
fsd f12, 0(x30) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x20ddc955801a5d56 # load x3 with value 0x20ddc955801a5d56
sd x3, 0(x2) # store 0x20ddc955801a5d56 in memory
fld f8, 0(x2) # load 0x20ddc955801a5d56 from memory into f8
la x12, scratch # base address
addi x12, x12, -1 # sub immediate from rs1 to counter offset
fsd f8, 1(x12) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x408a22c80337dd33 # load x3 with value 0x408a22c80337dd33
sd x3, 0(x2) # store 0x408a22c80337dd33 in memory
fld f31, 0(x2) # load 0x408a22c80337dd33 from memory into f31
la x14, scratch # base address
addi x14, x14, -2 # sub immediate from rs1 to counter offset
fsd f31, 2(x14) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x5b9a46e27eea658e # load x3 with value 0x5b9a46e27eea658e
sd x3, 0(x2) # store 0x5b9a46e27eea658e in memory
fld f1, 0(x2) # load 0x5b9a46e27eea658e from memory into f1
la x6, scratch # base address
addi x6, x6, -3 # sub immediate from rs1 to counter offset
fsd f1, 3(x6) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x091eba5ec2f6fdeb # load x3 with value 0x091eba5ec2f6fdeb
sd x3, 0(x2) # store 0x091eba5ec2f6fdeb in memory
fld f20, 0(x2) # load 0x091eba5ec2f6fdeb from memory into f20
la x9, scratch # base address
addi x9, x9, -4 # sub immediate from rs1 to counter offset
fsd f20, 4(x9) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x180d8ef7fe42fa32 # load x3 with value 0x180d8ef7fe42fa32
sd x3, 0(x2) # store 0x180d8ef7fe42fa32 in memory
fld f15, 0(x2) # load 0x180d8ef7fe42fa32 from memory into f15
la x8, scratch # base address
addi x8, x8, -8 # sub immediate from rs1 to counter offset
fsd f15, 8(x8) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x3a8a483ed8e1c4f3 # load x3 with value 0x3a8a483ed8e1c4f3
sd x3, 0(x2) # store 0x3a8a483ed8e1c4f3 in memory
fld f26, 0(x2) # load 0x3a8a483ed8e1c4f3 from memory into f26
la x9, scratch # base address
addi x9, x9, -16 # sub immediate from rs1 to counter offset
fsd f26, 16(x9) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xa43914158f93e3f6 # load x3 with value 0xa43914158f93e3f6
sd x3, 0(x2) # store 0xa43914158f93e3f6 in memory
fld f10, 0(x2) # load 0xa43914158f93e3f6 from memory into f10
la x12, scratch # base address
addi x12, x12, -32 # sub immediate from rs1 to counter offset
fsd f10, 32(x12) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x5b3ee904b6cf322b # load x3 with value 0x5b3ee904b6cf322b
sd x3, 0(x2) # store 0x5b3ee904b6cf322b in memory
fld f21, 0(x2) # load 0x5b3ee904b6cf322b from memory into f21
la x24, scratch # base address
addi x24, x24, -64 # sub immediate from rs1 to counter offset
fsd f21, 64(x24) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xaf3c4d19938b080c # load x3 with value 0xaf3c4d19938b080c
sd x3, 0(x2) # store 0xaf3c4d19938b080c in memory
fld f7, 0(x2) # load 0xaf3c4d19938b080c from memory into f7
la x13, scratch # base address
addi x13, x13, -128 # sub immediate from rs1 to counter offset
fsd f7, 128(x13) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xc1868e075337f73f # load x3 with value 0xc1868e075337f73f
sd x3, 0(x2) # store 0xc1868e075337f73f in memory
fld f7, 0(x2) # load 0xc1868e075337f73f from memory into f7
la x24, scratch # base address
addi x24, x24, -256 # sub immediate from rs1 to counter offset
fsd f7, 256(x24) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x8f9f41ed7589b5b5 # load x3 with value 0x8f9f41ed7589b5b5
sd x3, 0(x2) # store 0x8f9f41ed7589b5b5 in memory
fld f11, 0(x2) # load 0x8f9f41ed7589b5b5 from memory into f11
la x1, scratch # base address
addi x1, x1, -512 # sub immediate from rs1 to counter offset
fsd f11, 512(x1) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xe69c58bac0244c85 # load x3 with value 0xe69c58bac0244c85
sd x3, 0(x2) # store 0xe69c58bac0244c85 in memory
fld f24, 0(x2) # load 0xe69c58bac0244c85 from memory into f24
la x2, scratch # base address
addi x2, x2, -1023 # sub immediate from rs1 to counter offset
fsd f24, 1023(x2) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x6f7c865c98077456 # load x3 with value 0x6f7c865c98077456
sd x3, 0(x2) # store 0x6f7c865c98077456 in memory
fld f11, 0(x2) # load 0x6f7c865c98077456 from memory into f11
la x21, scratch # base address
addi x21, x21, -1024 # sub immediate from rs1 to counter offset
fsd f11, 1024(x21) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xab0e579d657891a8 # load x3 with value 0xab0e579d657891a8
sd x3, 0(x2) # store 0xab0e579d657891a8 in memory
fld f9, 0(x2) # load 0xab0e579d657891a8 from memory into f9
la x12, scratch # base address
addi x12, x12, -1795 # sub immediate from rs1 to counter offset
fsd f9, 1795(x12) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x7f1c6a0f120b3173 # load x3 with value 0x7f1c6a0f120b3173
sd x3, 0(x2) # store 0x7f1c6a0f120b3173 in memory
fld f17, 0(x2) # load 0x7f1c6a0f120b3173 from memory into f17
la x12, scratch # base address
addi x12, x12, -2047 # sub immediate from rs1 to counter offset
fsd f17, 2047(x12) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xaadf145bef9bdd48 # load x3 with value 0xaadf145bef9bdd48
sd x3, 0(x2) # store 0xaadf145bef9bdd48 in memory
fld f22, 0(x2) # load 0xaadf145bef9bdd48 from memory into f22
la x1, scratch # base address
addi x1, x1, 2047 # increment rs1 by 2047 
addi x1, x1, 1 # increment rs1 to bump it by a total of 2048 to compensate for -2048
fsd f22, -2048(x1) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x8413de0f91594709 # load x3 with value 0x8413de0f91594709
sd x3, 0(x2) # store 0x8413de0f91594709 in memory
fld f24, 0(x2) # load 0x8413de0f91594709 from memory into f24
la x20, scratch # base address
addi x20, x20, 2047 # sub immediate from rs1 to counter offset
fsd f24, -2047(x20) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0x06b9f5b1d1542ef2 # load x3 with value 0x06b9f5b1d1542ef2
sd x3, 0(x2) # store 0x06b9f5b1d1542ef2 in memory
fld f20, 0(x2) # load 0x06b9f5b1d1542ef2 from memory into f20
la x22, scratch # base address
addi x22, x22, 2 # sub immediate from rs1 to counter offset
fsd f20, -2(x22) # perform operation

# Testcase cp_imm_corners
la x2, scratch
li x3, 0xc6e52b90eb0f9c55 # load x3 with value 0xc6e52b90eb0f9c55
sd x3, 0(x2) # store 0xc6e52b90eb0f9c55 in memory
fld f22, 0(x2) # load 0xc6e52b90eb0f9c55 from memory into f22
la x30, scratch # base address
addi x30, x30, 1 # sub immediate from rs1 to counter offset
fsd f22, -1(x30) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x29, scratch
addi x29, x29, 590
add x15, x25, x12 # perform first operation
fsd f27, -590(x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x14, scratch
addi x14, x14, 111
add x11, x26, x6 # perform first operation
fsd f17, -111(x14) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x5, scratch
addi x5, x5, -1726
add x7, x13, x10 # perform first operation
fsd f23, 1726(x5) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x29, scratch
addi x29, x29, -2041
add x29, x29, x0 # perform first operation
fsd f9, 2041(x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x15, scratch
addi x15, x15, -1
fmul.s f7, f7, f0 # perform first operation
fsd f7, 1(x15) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x9, scratch
addi x9, x9, 952
add x30, x30, x0 # perform first operation
fsd f14, -952(x9) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x2, scratch
addi x2, x2, -514
add x24, x19, x3 # perform first operation
fsd f30, 514(x2) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x24, scratch
addi x24, x24, -1217
add x5, x25, x2 # perform first operation
fsd f7, 1217(x24) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x2, scratch
addi x2, x2, -935
add x27, x25, x8 # perform first operation
fsd f26, 935(x2) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x10, scratch
addi x10, x10, -679
add x10, x10, x0 # perform first operation
fsd f5, 679(x10) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x21, scratch
addi x21, x21, 1599
fmul.s f11, f11, f0 # perform first operation
fsd f11, -1599(x21) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x23, scratch
addi x23, x23, 1610
add x22, x22, x0 # perform first operation
fsd f9, -1610(x23) # perform second (triggering) operation

# Testcase cp_fs2 (Test source fs2 = f0)
la x2, scratch
li x3, 0x941cf961eb1be96f # load x3 with value 0x941cf961eb1be96f
sd x3, 0(x2) # store 0x941cf961eb1be96f in memory
fld f0, 0(x2) # load 0x941cf961eb1be96f from memory into f0
la x1, scratch # base address
addi x1, x1, -1462 # sub immediate from rs1 to counter offset
fsd f0, 1462(x1) # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
la x2, scratch
li x3, 0x69e33f677010c703 # load x3 with value 0x69e33f677010c703
sd x3, 0(x2) # store 0x69e33f677010c703 in memory
fld f1, 0(x2) # load 0x69e33f677010c703 from memory into f1
la x13, scratch # base address
addi x13, x13, -902 # sub immediate from rs1 to counter offset
fsd f1, 902(x13) # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
la x2, scratch
li x3, 0x64ab8924629cf55c # load x3 with value 0x64ab8924629cf55c
sd x3, 0(x2) # store 0x64ab8924629cf55c in memory
fld f2, 0(x2) # load 0x64ab8924629cf55c from memory into f2
la x30, scratch # base address
addi x30, x30, 1190 # sub immediate from rs1 to counter offset
fsd f2, -1190(x30) # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
la x2, scratch
li x3, 0x57e9849aea835beb # load x3 with value 0x57e9849aea835beb
sd x3, 0(x2) # store 0x57e9849aea835beb in memory
fld f3, 0(x2) # load 0x57e9849aea835beb from memory into f3
la x18, scratch # base address
addi x18, x18, 373 # sub immediate from rs1 to counter offset
fsd f3, -373(x18) # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x18895f36630bbbf7 # load x3 with value 0x18895f36630bbbf7
sd x3, 0(x2) # store 0x18895f36630bbbf7 in memory
fld f4, 0(x2) # load 0x18895f36630bbbf7 from memory into f4
la x5, scratch # base address
addi x5, x5, 101 # sub immediate from rs1 to counter offset
fsd f4, -101(x5) # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
la x2, scratch
li x3, 0x4c77742734d8469d # load x3 with value 0x4c77742734d8469d
sd x3, 0(x2) # store 0x4c77742734d8469d in memory
fld f5, 0(x2) # load 0x4c77742734d8469d from memory into f5
la x26, scratch # base address
addi x26, x26, 1766 # sub immediate from rs1 to counter offset
fsd f5, -1766(x26) # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x1a5a02f0f3c298a1 # load x3 with value 0x1a5a02f0f3c298a1
sd x3, 0(x2) # store 0x1a5a02f0f3c298a1 in memory
fld f6, 0(x2) # load 0x1a5a02f0f3c298a1 from memory into f6
la x25, scratch # base address
addi x25, x25, 429 # sub immediate from rs1 to counter offset
fsd f6, -429(x25) # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
la x2, scratch
li x3, 0x8ac172555c0f86ad # load x3 with value 0x8ac172555c0f86ad
sd x3, 0(x2) # store 0x8ac172555c0f86ad in memory
fld f7, 0(x2) # load 0x8ac172555c0f86ad from memory into f7
la x4, scratch # base address
addi x4, x4, -1089 # sub immediate from rs1 to counter offset
fsd f7, 1089(x4) # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
la x2, scratch
li x3, 0xbff3110625206cf3 # load x3 with value 0xbff3110625206cf3
sd x3, 0(x2) # store 0xbff3110625206cf3 in memory
fld f8, 0(x2) # load 0xbff3110625206cf3 from memory into f8
la x2, scratch # base address
addi x2, x2, 1830 # sub immediate from rs1 to counter offset
fsd f8, -1830(x2) # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
la x2, scratch
li x3, 0xba9395554a2ce7ed # load x3 with value 0xba9395554a2ce7ed
sd x3, 0(x2) # store 0xba9395554a2ce7ed in memory
fld f9, 0(x2) # load 0xba9395554a2ce7ed from memory into f9
la x16, scratch # base address
addi x16, x16, -2029 # sub immediate from rs1 to counter offset
fsd f9, 2029(x16) # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
la x2, scratch
li x3, 0xab5ecf2df73bf396 # load x3 with value 0xab5ecf2df73bf396
sd x3, 0(x2) # store 0xab5ecf2df73bf396 in memory
fld f10, 0(x2) # load 0xab5ecf2df73bf396 from memory into f10
la x26, scratch # base address
addi x26, x26, 1037 # sub immediate from rs1 to counter offset
fsd f10, -1037(x26) # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
la x2, scratch
li x3, 0x37b5b9c6e6bec130 # load x3 with value 0x37b5b9c6e6bec130
sd x3, 0(x2) # store 0x37b5b9c6e6bec130 in memory
fld f11, 0(x2) # load 0x37b5b9c6e6bec130 from memory into f11
la x24, scratch # base address
addi x24, x24, -664 # sub immediate from rs1 to counter offset
fsd f11, 664(x24) # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
la x2, scratch
li x3, 0x787f83c8f9e51187 # load x3 with value 0x787f83c8f9e51187
sd x3, 0(x2) # store 0x787f83c8f9e51187 in memory
fld f12, 0(x2) # load 0x787f83c8f9e51187 from memory into f12
la x4, scratch # base address
addi x4, x4, -1613 # sub immediate from rs1 to counter offset
fsd f12, 1613(x4) # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
la x2, scratch
li x3, 0xea9c45325bd36d1c # load x3 with value 0xea9c45325bd36d1c
sd x3, 0(x2) # store 0xea9c45325bd36d1c in memory
fld f13, 0(x2) # load 0xea9c45325bd36d1c from memory into f13
la x26, scratch # base address
addi x26, x26, 1739 # sub immediate from rs1 to counter offset
fsd f13, -1739(x26) # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
la x2, scratch
li x3, 0xe907bd2ce983ec8b # load x3 with value 0xe907bd2ce983ec8b
sd x3, 0(x2) # store 0xe907bd2ce983ec8b in memory
fld f14, 0(x2) # load 0xe907bd2ce983ec8b from memory into f14
la x15, scratch # base address
addi x15, x15, 633 # sub immediate from rs1 to counter offset
fsd f14, -633(x15) # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
la x2, scratch
li x3, 0x862ca892476e905d # load x3 with value 0x862ca892476e905d
sd x3, 0(x2) # store 0x862ca892476e905d in memory
fld f15, 0(x2) # load 0x862ca892476e905d from memory into f15
la x23, scratch # base address
addi x23, x23, -1650 # sub immediate from rs1 to counter offset
fsd f15, 1650(x23) # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
la x2, scratch
li x3, 0xd2da282207e4afda # load x3 with value 0xd2da282207e4afda
sd x3, 0(x2) # store 0xd2da282207e4afda in memory
fld f16, 0(x2) # load 0xd2da282207e4afda from memory into f16
la x2, scratch # base address
addi x2, x2, -1828 # sub immediate from rs1 to counter offset
fsd f16, 1828(x2) # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
la x2, scratch
li x3, 0x6cd0c1c71519abe1 # load x3 with value 0x6cd0c1c71519abe1
sd x3, 0(x2) # store 0x6cd0c1c71519abe1 in memory
fld f17, 0(x2) # load 0x6cd0c1c71519abe1 from memory into f17
la x27, scratch # base address
addi x27, x27, -600 # sub immediate from rs1 to counter offset
fsd f17, 600(x27) # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
la x2, scratch
li x3, 0xdb232ebb89ac31de # load x3 with value 0xdb232ebb89ac31de
sd x3, 0(x2) # store 0xdb232ebb89ac31de in memory
fld f18, 0(x2) # load 0xdb232ebb89ac31de from memory into f18
la x15, scratch # base address
addi x15, x15, 317 # sub immediate from rs1 to counter offset
fsd f18, -317(x15) # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
la x2, scratch
li x3, 0xa2ba13b6c5ab230b # load x3 with value 0xa2ba13b6c5ab230b
sd x3, 0(x2) # store 0xa2ba13b6c5ab230b in memory
fld f19, 0(x2) # load 0xa2ba13b6c5ab230b from memory into f19
la x29, scratch # base address
addi x29, x29, -70 # sub immediate from rs1 to counter offset
fsd f19, 70(x29) # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
la x2, scratch
li x3, 0x4cc70889fc51d2e4 # load x3 with value 0x4cc70889fc51d2e4
sd x3, 0(x2) # store 0x4cc70889fc51d2e4 in memory
fld f20, 0(x2) # load 0x4cc70889fc51d2e4 from memory into f20
la x22, scratch # base address
addi x22, x22, -114 # sub immediate from rs1 to counter offset
fsd f20, 114(x22) # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
la x2, scratch
li x3, 0x4eb229c1e89e4322 # load x3 with value 0x4eb229c1e89e4322
sd x3, 0(x2) # store 0x4eb229c1e89e4322 in memory
fld f21, 0(x2) # load 0x4eb229c1e89e4322 from memory into f21
la x2, scratch # base address
addi x2, x2, 1531 # sub immediate from rs1 to counter offset
fsd f21, -1531(x2) # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
la x2, scratch
li x3, 0x3fbd1393ba10dfc9 # load x3 with value 0x3fbd1393ba10dfc9
sd x3, 0(x2) # store 0x3fbd1393ba10dfc9 in memory
fld f22, 0(x2) # load 0x3fbd1393ba10dfc9 from memory into f22
la x23, scratch # base address
addi x23, x23, -1805 # sub immediate from rs1 to counter offset
fsd f22, 1805(x23) # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
la x2, scratch
li x3, 0xbee6359cb6c0b97b # load x3 with value 0xbee6359cb6c0b97b
sd x3, 0(x2) # store 0xbee6359cb6c0b97b in memory
fld f23, 0(x2) # load 0xbee6359cb6c0b97b from memory into f23
la x19, scratch # base address
addi x19, x19, -493 # sub immediate from rs1 to counter offset
fsd f23, 493(x19) # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
la x2, scratch
li x3, 0x3dfd9f8583cb008a # load x3 with value 0x3dfd9f8583cb008a
sd x3, 0(x2) # store 0x3dfd9f8583cb008a in memory
fld f24, 0(x2) # load 0x3dfd9f8583cb008a from memory into f24
la x27, scratch # base address
addi x27, x27, -1995 # sub immediate from rs1 to counter offset
fsd f24, 1995(x27) # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
la x2, scratch
li x3, 0xda9a417cb16141b6 # load x3 with value 0xda9a417cb16141b6
sd x3, 0(x2) # store 0xda9a417cb16141b6 in memory
fld f25, 0(x2) # load 0xda9a417cb16141b6 from memory into f25
la x27, scratch # base address
addi x27, x27, -1394 # sub immediate from rs1 to counter offset
fsd f25, 1394(x27) # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
la x2, scratch
li x3, 0x53fe60190632c0ee # load x3 with value 0x53fe60190632c0ee
sd x3, 0(x2) # store 0x53fe60190632c0ee in memory
fld f26, 0(x2) # load 0x53fe60190632c0ee from memory into f26
la x31, scratch # base address
addi x31, x31, 1839 # sub immediate from rs1 to counter offset
fsd f26, -1839(x31) # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
la x2, scratch
li x3, 0x38114975aa306721 # load x3 with value 0x38114975aa306721
sd x3, 0(x2) # store 0x38114975aa306721 in memory
fld f27, 0(x2) # load 0x38114975aa306721 from memory into f27
la x19, scratch # base address
addi x19, x19, 1869 # sub immediate from rs1 to counter offset
fsd f27, -1869(x19) # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
la x2, scratch
li x3, 0x891ae29988970427 # load x3 with value 0x891ae29988970427
sd x3, 0(x2) # store 0x891ae29988970427 in memory
fld f28, 0(x2) # load 0x891ae29988970427 from memory into f28
la x13, scratch # base address
addi x13, x13, -1364 # sub immediate from rs1 to counter offset
fsd f28, 1364(x13) # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
la x2, scratch
li x3, 0xd34078ce6a4d5221 # load x3 with value 0xd34078ce6a4d5221
sd x3, 0(x2) # store 0xd34078ce6a4d5221 in memory
fld f29, 0(x2) # load 0xd34078ce6a4d5221 from memory into f29
la x11, scratch # base address
addi x11, x11, -1961 # sub immediate from rs1 to counter offset
fsd f29, 1961(x11) # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
la x2, scratch
li x3, 0xaace8c76ce43f7f0 # load x3 with value 0xaace8c76ce43f7f0
sd x3, 0(x2) # store 0xaace8c76ce43f7f0 in memory
fld f30, 0(x2) # load 0xaace8c76ce43f7f0 from memory into f30
la x25, scratch # base address
addi x25, x25, 1611 # sub immediate from rs1 to counter offset
fsd f30, -1611(x25) # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
la x2, scratch
li x3, 0x438fcbe0308c34b9 # load x3 with value 0x438fcbe0308c34b9
sd x3, 0(x2) # store 0x438fcbe0308c34b9 in memory
fld f31, 0(x2) # load 0x438fcbe0308c34b9 from memory into f31
la x21, scratch # base address
addi x21, x21, 798 # sub immediate from rs1 to counter offset
fsd f31, -798(x21) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f31, 0(x2) # load 0x0000000000000000 from memory into f31
la x20, scratch # base address
addi x20, x20, -50 # sub immediate from rs1 to counter offset
fsd f31, 50(x20) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000000)
la x2, scratch
li x3, 0x0000000080000000 # load x3 with value 0x0000000080000000
sd x3, 0(x2) # store 0x0000000080000000 in memory
fld f24, 0(x2) # load 0x0000000080000000 from memory into f24
la x23, scratch # base address
addi x23, x23, 7 # sub immediate from rs1 to counter offset
fsd f24, -7(x23) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f24, 0(x2) # load 0x000000003f800000 from memory into f24
la x13, scratch # base address
addi x13, x13, 1073 # sub immediate from rs1 to counter offset
fsd f24, -1073(x13) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbf800000)
la x2, scratch
li x3, 0x00000000bf800000 # load x3 with value 0x00000000bf800000
sd x3, 0(x2) # store 0x00000000bf800000 in memory
fld f2, 0(x2) # load 0x00000000bf800000 from memory into f2
la x4, scratch # base address
addi x4, x4, -976 # sub immediate from rs1 to counter offset
fsd f2, 976(x4) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3fc00000)
la x2, scratch
li x3, 0x000000003fc00000 # load x3 with value 0x000000003fc00000
sd x3, 0(x2) # store 0x000000003fc00000 in memory
fld f23, 0(x2) # load 0x000000003fc00000 from memory into f23
la x4, scratch # base address
addi x4, x4, 1507 # sub immediate from rs1 to counter offset
fsd f23, -1507(x4) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbfc00000)
la x2, scratch
li x3, 0x00000000bfc00000 # load x3 with value 0x00000000bfc00000
sd x3, 0(x2) # store 0x00000000bfc00000 in memory
fld f11, 0(x2) # load 0x00000000bfc00000 from memory into f11
la x26, scratch # base address
addi x26, x26, 1658 # sub immediate from rs1 to counter offset
fsd f11, -1658(x26) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x40000000)
la x2, scratch
li x3, 0x0000000040000000 # load x3 with value 0x0000000040000000
sd x3, 0(x2) # store 0x0000000040000000 in memory
fld f8, 0(x2) # load 0x0000000040000000 from memory into f8
la x30, scratch # base address
addi x30, x30, 345 # sub immediate from rs1 to counter offset
fsd f8, -345(x30) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0000000)
la x2, scratch
li x3, 0x00000000c0000000 # load x3 with value 0x00000000c0000000
sd x3, 0(x2) # store 0x00000000c0000000 in memory
fld f4, 0(x2) # load 0x00000000c0000000 from memory into f4
la x10, scratch # base address
addi x10, x10, 136 # sub immediate from rs1 to counter offset
fsd f4, -136(x10) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800000)
la x2, scratch
li x3, 0x0000000000800000 # load x3 with value 0x0000000000800000
sd x3, 0(x2) # store 0x0000000000800000 in memory
fld f14, 0(x2) # load 0x0000000000800000 from memory into f14
la x7, scratch # base address
addi x7, x7, 230 # sub immediate from rs1 to counter offset
fsd f14, -230(x7) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80800000)
la x2, scratch
li x3, 0x0000000080800000 # load x3 with value 0x0000000080800000
sd x3, 0(x2) # store 0x0000000080800000 in memory
fld f9, 0(x2) # load 0x0000000080800000 from memory into f9
la x27, scratch # base address
addi x27, x27, 1826 # sub immediate from rs1 to counter offset
fsd f9, -1826(x27) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f7fffff)
la x2, scratch
li x3, 0x000000007f7fffff # load x3 with value 0x000000007f7fffff
sd x3, 0(x2) # store 0x000000007f7fffff in memory
fld f22, 0(x2) # load 0x000000007f7fffff from memory into f22
la x3, scratch # base address
addi x3, x3, 1779 # sub immediate from rs1 to counter offset
fsd f22, -1779(x3) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff7fffff)
la x2, scratch
li x3, 0x00000000ff7fffff # load x3 with value 0x00000000ff7fffff
sd x3, 0(x2) # store 0x00000000ff7fffff in memory
fld f11, 0(x2) # load 0x00000000ff7fffff from memory into f11
la x15, scratch # base address
addi x15, x15, 924 # sub immediate from rs1 to counter offset
fsd f11, -924(x15) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffff)
la x2, scratch
li x3, 0x00000000007fffff # load x3 with value 0x00000000007fffff
sd x3, 0(x2) # store 0x00000000007fffff in memory
fld f17, 0(x2) # load 0x00000000007fffff from memory into f17
la x7, scratch # base address
addi x7, x7, -2002 # sub immediate from rs1 to counter offset
fsd f17, 2002(x7) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x807fffff)
la x2, scratch
li x3, 0x00000000807fffff # load x3 with value 0x00000000807fffff
sd x3, 0(x2) # store 0x00000000807fffff in memory
fld f23, 0(x2) # load 0x00000000807fffff from memory into f23
la x3, scratch # base address
addi x3, x3, 1809 # sub immediate from rs1 to counter offset
fsd f23, -1809(x3) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400000)
la x2, scratch
li x3, 0x0000000000400000 # load x3 with value 0x0000000000400000
sd x3, 0(x2) # store 0x0000000000400000 in memory
fld f4, 0(x2) # load 0x0000000000400000 from memory into f4
la x10, scratch # base address
addi x10, x10, -1331 # sub immediate from rs1 to counter offset
fsd f4, 1331(x10) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80400000)
la x2, scratch
li x3, 0x0000000080400000 # load x3 with value 0x0000000080400000
sd x3, 0(x2) # store 0x0000000080400000 in memory
fld f16, 0(x2) # load 0x0000000080400000 from memory into f16
la x6, scratch # base address
addi x6, x6, 911 # sub immediate from rs1 to counter offset
fsd f16, -911(x6) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f27, 0(x2) # load 0x0000000000000001 from memory into f27
la x7, scratch # base address
addi x7, x7, -1031 # sub immediate from rs1 to counter offset
fsd f27, 1031(x7) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000001)
la x2, scratch
li x3, 0x0000000080000001 # load x3 with value 0x0000000080000001
sd x3, 0(x2) # store 0x0000000080000001 in memory
fld f19, 0(x2) # load 0x0000000080000001 from memory into f19
la x26, scratch # base address
addi x26, x26, 197 # sub immediate from rs1 to counter offset
fsd f19, -197(x26) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800000)
la x2, scratch
li x3, 0x000000007f800000 # load x3 with value 0x000000007f800000
sd x3, 0(x2) # store 0x000000007f800000 in memory
fld f3, 0(x2) # load 0x000000007f800000 from memory into f3
la x27, scratch # base address
addi x27, x27, -1169 # sub immediate from rs1 to counter offset
fsd f3, 1169(x27) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff800000)
la x2, scratch
li x3, 0x00000000ff800000 # load x3 with value 0x00000000ff800000
sd x3, 0(x2) # store 0x00000000ff800000 in memory
fld f3, 0(x2) # load 0x00000000ff800000 from memory into f3
la x8, scratch # base address
addi x8, x8, 1415 # sub immediate from rs1 to counter offset
fsd f3, -1415(x8) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fc00000)
la x2, scratch
li x3, 0x000000007fc00000 # load x3 with value 0x000000007fc00000
sd x3, 0(x2) # store 0x000000007fc00000 in memory
fld f29, 0(x2) # load 0x000000007fc00000 from memory into f29
la x6, scratch # base address
addi x6, x6, 1673 # sub immediate from rs1 to counter offset
fsd f29, -1673(x6) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff)
la x2, scratch
li x3, 0x000000007fffffff # load x3 with value 0x000000007fffffff
sd x3, 0(x2) # store 0x000000007fffffff in memory
fld f20, 0(x2) # load 0x000000007fffffff from memory into f20
la x8, scratch # base address
addi x8, x8, -1077 # sub immediate from rs1 to counter offset
fsd f20, 1077(x8) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff)
la x2, scratch
li x3, 0x00000000ffffffff # load x3 with value 0x00000000ffffffff
sd x3, 0(x2) # store 0x00000000ffffffff in memory
fld f26, 0(x2) # load 0x00000000ffffffff from memory into f26
la x12, scratch # base address
addi x12, x12, -1151 # sub immediate from rs1 to counter offset
fsd f26, 1151(x12) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800001)
la x2, scratch
li x3, 0x000000007f800001 # load x3 with value 0x000000007f800001
sd x3, 0(x2) # store 0x000000007f800001 in memory
fld f28, 0(x2) # load 0x000000007f800001 from memory into f28
la x17, scratch # base address
addi x17, x17, -1249 # sub immediate from rs1 to counter offset
fsd f28, 1249(x17) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fbfffff)
la x2, scratch
li x3, 0x000000007fbfffff # load x3 with value 0x000000007fbfffff
sd x3, 0(x2) # store 0x000000007fbfffff in memory
fld f21, 0(x2) # load 0x000000007fbfffff from memory into f21
la x11, scratch # base address
addi x11, x11, 687 # sub immediate from rs1 to counter offset
fsd f21, -687(x11) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffbfffff)
la x2, scratch
li x3, 0x00000000ffbfffff # load x3 with value 0x00000000ffbfffff
sd x3, 0(x2) # store 0x00000000ffbfffff in memory
fld f31, 0(x2) # load 0x00000000ffbfffff from memory into f31
la x15, scratch # base address
addi x15, x15, 1860 # sub immediate from rs1 to counter offset
fsd f31, -1860(x15) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ef8654f)
la x2, scratch
li x3, 0x000000007ef8654f # load x3 with value 0x000000007ef8654f
sd x3, 0(x2) # store 0x000000007ef8654f in memory
fld f8, 0(x2) # load 0x000000007ef8654f from memory into f8
la x31, scratch # base address
addi x31, x31, 1119 # sub immediate from rs1 to counter offset
fsd f8, -1119(x31) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x813d9ab0)
la x2, scratch
li x3, 0x00000000813d9ab0 # load x3 with value 0x00000000813d9ab0
sd x3, 0(x2) # store 0x00000000813d9ab0 in memory
fld f22, 0(x2) # load 0x00000000813d9ab0 from memory into f22
la x9, scratch # base address
addi x9, x9, -307 # sub immediate from rs1 to counter offset
fsd f22, 307(x9) # perform operation

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
