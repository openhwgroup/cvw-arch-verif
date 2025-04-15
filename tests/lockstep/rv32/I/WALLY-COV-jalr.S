///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/I/WALLY-COV-jalr.S
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

    
# Testcase cp_rs1 (Test source rs1 = x1)
la x1, 1f # jump destination address
addi x1, x1, 1023 # add immediate to lower part of rs1
jalr x19, x1, -1023 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x2)
la x2, 1f # jump destination address
addi x2, x2, -570 # add immediate to lower part of rs1
jalr x29, x2, 570 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x3)
la x3, 1f # jump destination address
addi x3, x3, -164 # add immediate to lower part of rs1
jalr x2, x3, 164 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x4, 1f # jump destination address
addi x4, x4, 1888 # add immediate to lower part of rs1
jalr x18, x4, -1888 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x5, 1f # jump destination address
addi x5, x5, 278 # add immediate to lower part of rs1
jalr x18, x5, -278 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
la x6, 1f # jump destination address
addi x6, x6, 75 # add immediate to lower part of rs1
jalr x26, x6, -75 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x7)
la x7, 1f # jump destination address
addi x7, x7, -1076 # add immediate to lower part of rs1
jalr x23, x7, 1076 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x8)
la x8, 1f # jump destination address
addi x8, x8, 545 # add immediate to lower part of rs1
jalr x19, x8, -545 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x9)
la x9, 1f # jump destination address
addi x9, x9, -1791 # add immediate to lower part of rs1
jalr x8, x9, 1791 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x10)
la x10, 1f # jump destination address
addi x10, x10, -1969 # add immediate to lower part of rs1
jalr x25, x10, 1969 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x11)
la x11, 1f # jump destination address
addi x11, x11, -273 # add immediate to lower part of rs1
jalr x25, x11, 273 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x12)
la x12, 1f # jump destination address
addi x12, x12, -1854 # add immediate to lower part of rs1
jalr x20, x12, 1854 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x13)
la x13, 1f # jump destination address
addi x13, x13, 1264 # add immediate to lower part of rs1
jalr x7, x13, -1264 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x14)
la x14, 1f # jump destination address
addi x14, x14, -1976 # add immediate to lower part of rs1
jalr x29, x14, 1976 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x15)
la x15, 1f # jump destination address
addi x15, x15, -1743 # add immediate to lower part of rs1
jalr x1, x15, 1743 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x16)
la x16, 1f # jump destination address
addi x16, x16, 1522 # add immediate to lower part of rs1
jalr x8, x16, -1522 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x17)
la x17, 1f # jump destination address
addi x17, x17, 459 # add immediate to lower part of rs1
jalr x6, x17, -459 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x18)
la x18, 1f # jump destination address
addi x18, x18, 1608 # add immediate to lower part of rs1
jalr x30, x18, -1608 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x19)
la x19, 1f # jump destination address
addi x19, x19, 1723 # add immediate to lower part of rs1
jalr x10, x19, -1723 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x20)
la x20, 1f # jump destination address
addi x20, x20, -977 # add immediate to lower part of rs1
jalr x25, x20, 977 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x21)
la x21, 1f # jump destination address
addi x21, x21, -1279 # add immediate to lower part of rs1
jalr x27, x21, 1279 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x22)
la x22, 1f # jump destination address
addi x22, x22, 243 # add immediate to lower part of rs1
jalr x17, x22, -243 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x23)
la x23, 1f # jump destination address
addi x23, x23, 1128 # add immediate to lower part of rs1
jalr x19, x23, -1128 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x24)
la x24, 1f # jump destination address
addi x24, x24, 1807 # add immediate to lower part of rs1
jalr x31, x24, -1807 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x25)
la x25, 1f # jump destination address
addi x25, x25, -402 # add immediate to lower part of rs1
jalr x11, x25, 402 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x26)
la x26, 1f # jump destination address
addi x26, x26, -277 # add immediate to lower part of rs1
jalr x27, x26, 277 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x27)
la x27, 1f # jump destination address
addi x27, x27, -1788 # add immediate to lower part of rs1
jalr x28, x27, 1788 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x28)
la x28, 1f # jump destination address
addi x28, x28, -1381 # add immediate to lower part of rs1
jalr x8, x28, 1381 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x29)
la x29, 1f # jump destination address
addi x29, x29, 1527 # add immediate to lower part of rs1
jalr x23, x29, -1527 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x30)
la x30, 1f # jump destination address
addi x30, x30, -1173 # add immediate to lower part of rs1
jalr x11, x30, 1173 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x31)
la x31, 1f # jump destination address
addi x31, x31, -195 # add immediate to lower part of rs1
jalr x20, x31, 195 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x0)
la x1, 1f # jump destination address
addi x1, x1, 1150 # add immediate to lower part of rs1
jalr x0, x1, -1150 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x1)
la x29, 1f # jump destination address
addi x29, x29, 1017 # add immediate to lower part of rs1
jalr x1, x29, -1017 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x2)
la x8, 1f # jump destination address
addi x8, x8, 545 # add immediate to lower part of rs1
jalr x2, x8, -545 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x3)
la x31, 1f # jump destination address
addi x31, x31, 1128 # add immediate to lower part of rs1
jalr x3, x31, -1128 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x26, 1f # jump destination address
addi x26, x26, -941 # add immediate to lower part of rs1
jalr x4, x26, 941 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x3, 1f # jump destination address
addi x3, x3, -1368 # add immediate to lower part of rs1
jalr x5, x3, 1368 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x1, 1f # jump destination address
addi x1, x1, -543 # add immediate to lower part of rs1
jalr x6, x1, 543 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x3, 1f # jump destination address
addi x3, x3, 1898 # add immediate to lower part of rs1
jalr x7, x3, -1898 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x8)
la x23, 1f # jump destination address
addi x23, x23, -1196 # add immediate to lower part of rs1
jalr x8, x23, 1196 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x9)
la x22, 1f # jump destination address
addi x22, x22, 2022 # add immediate to lower part of rs1
jalr x9, x22, -2022 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x10)
la x30, 1f # jump destination address
addi x30, x30, 875 # add immediate to lower part of rs1
jalr x10, x30, -875 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x11)
la x27, 1f # jump destination address
addi x27, x27, -1627 # add immediate to lower part of rs1
jalr x11, x27, 1627 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x12)
la x13, 1f # jump destination address
addi x13, x13, 1173 # add immediate to lower part of rs1
jalr x12, x13, -1173 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x13)
la x26, 1f # jump destination address
addi x26, x26, -269 # add immediate to lower part of rs1
jalr x13, x26, 269 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x14)
la x17, 1f # jump destination address
addi x17, x17, -1615 # add immediate to lower part of rs1
jalr x14, x17, 1615 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x15)
la x3, 1f # jump destination address
addi x3, x3, 1949 # add immediate to lower part of rs1
jalr x15, x3, -1949 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x16)
la x30, 1f # jump destination address
addi x30, x30, -1734 # add immediate to lower part of rs1
jalr x16, x30, 1734 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x17)
la x21, 1f # jump destination address
addi x21, x21, 861 # add immediate to lower part of rs1
jalr x17, x21, -861 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x18)
la x28, 1f # jump destination address
addi x28, x28, -122 # add immediate to lower part of rs1
jalr x18, x28, 122 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x19)
la x3, 1f # jump destination address
addi x3, x3, -212 # add immediate to lower part of rs1
jalr x19, x3, 212 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x20)
la x13, 1f # jump destination address
addi x13, x13, 556 # add immediate to lower part of rs1
jalr x20, x13, -556 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x21)
la x22, 1f # jump destination address
addi x22, x22, -1809 # add immediate to lower part of rs1
jalr x21, x22, 1809 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x22)
la x25, 1f # jump destination address
addi x25, x25, 1643 # add immediate to lower part of rs1
jalr x22, x25, -1643 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x23)
la x26, 1f # jump destination address
addi x26, x26, -1578 # add immediate to lower part of rs1
jalr x23, x26, 1578 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x24)
la x30, 1f # jump destination address
addi x30, x30, -648 # add immediate to lower part of rs1
jalr x24, x30, 648 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x25)
la x14, 1f # jump destination address
addi x14, x14, -123 # add immediate to lower part of rs1
jalr x25, x14, 123 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x26)
la x9, 1f # jump destination address
addi x9, x9, 582 # add immediate to lower part of rs1
jalr x26, x9, -582 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x27)
la x6, 1f # jump destination address
addi x6, x6, -946 # add immediate to lower part of rs1
jalr x27, x6, 946 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x28)
la x8, 1f # jump destination address
addi x8, x8, 502 # add immediate to lower part of rs1
jalr x28, x8, -502 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x29)
la x3, 1f # jump destination address
addi x3, x3, 1738 # add immediate to lower part of rs1
jalr x29, x3, -1738 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x30)
la x22, 1f # jump destination address
addi x22, x22, 201 # add immediate to lower part of rs1
jalr x30, x22, -201 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x31)
la x1, 1f # jump destination address
addi x1, x1, -663 # add immediate to lower part of rs1
jalr x31, x1, 663 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
la x1, 1f # jump destination address
addi x1, x1, -1465 # add immediate to lower part of rs1
jalr x1, x1, 1465 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
la x2, 1f # jump destination address
addi x2, x2, -1184 # add immediate to lower part of rs1
jalr x2, x2, 1184 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
la x3, 1f # jump destination address
addi x3, x3, 423 # add immediate to lower part of rs1
jalr x3, x3, -423 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x4, 1f # jump destination address
addi x4, x4, -300 # add immediate to lower part of rs1
jalr x4, x4, 300 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x5, 1f # jump destination address
addi x5, x5, -1859 # add immediate to lower part of rs1
jalr x5, x5, 1859 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x6, 1f # jump destination address
addi x6, x6, -475 # add immediate to lower part of rs1
jalr x6, x6, 475 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x7, 1f # jump destination address
addi x7, x7, -1115 # add immediate to lower part of rs1
jalr x7, x7, 1115 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
la x8, 1f # jump destination address
addi x8, x8, 2015 # add immediate to lower part of rs1
jalr x8, x8, -2015 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
la x9, 1f # jump destination address
addi x9, x9, 159 # add immediate to lower part of rs1
jalr x9, x9, -159 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
la x10, 1f # jump destination address
addi x10, x10, 1055 # add immediate to lower part of rs1
jalr x10, x10, -1055 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
la x11, 1f # jump destination address
addi x11, x11, -127 # add immediate to lower part of rs1
jalr x11, x11, 127 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
la x12, 1f # jump destination address
addi x12, x12, -1241 # add immediate to lower part of rs1
jalr x12, x12, 1241 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
la x13, 1f # jump destination address
addi x13, x13, -266 # add immediate to lower part of rs1
jalr x13, x13, 266 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
la x14, 1f # jump destination address
addi x14, x14, 1986 # add immediate to lower part of rs1
jalr x14, x14, -1986 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
la x15, 1f # jump destination address
addi x15, x15, 892 # add immediate to lower part of rs1
jalr x15, x15, -892 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
la x16, 1f # jump destination address
addi x16, x16, 1789 # add immediate to lower part of rs1
jalr x16, x16, -1789 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
la x17, 1f # jump destination address
addi x17, x17, 21 # add immediate to lower part of rs1
jalr x17, x17, -21 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
la x18, 1f # jump destination address
addi x18, x18, -341 # add immediate to lower part of rs1
jalr x18, x18, 341 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
la x19, 1f # jump destination address
addi x19, x19, 1140 # add immediate to lower part of rs1
jalr x19, x19, -1140 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
la x20, 1f # jump destination address
addi x20, x20, -274 # add immediate to lower part of rs1
jalr x20, x20, 274 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
la x21, 1f # jump destination address
addi x21, x21, 1101 # add immediate to lower part of rs1
jalr x21, x21, -1101 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
la x22, 1f # jump destination address
addi x22, x22, 1818 # add immediate to lower part of rs1
jalr x22, x22, -1818 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
la x23, 1f # jump destination address
addi x23, x23, 1626 # add immediate to lower part of rs1
jalr x23, x23, -1626 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
la x24, 1f # jump destination address
addi x24, x24, 562 # add immediate to lower part of rs1
jalr x24, x24, -562 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
la x25, 1f # jump destination address
addi x25, x25, 1078 # add immediate to lower part of rs1
jalr x25, x25, -1078 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
la x26, 1f # jump destination address
addi x26, x26, 1960 # add immediate to lower part of rs1
jalr x26, x26, -1960 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
la x27, 1f # jump destination address
addi x27, x27, -518 # add immediate to lower part of rs1
jalr x27, x27, 518 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
la x28, 1f # jump destination address
addi x28, x28, 1255 # add immediate to lower part of rs1
jalr x28, x28, -1255 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
la x29, 1f # jump destination address
addi x29, x29, -134 # add immediate to lower part of rs1
jalr x29, x29, 134 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
la x30, 1f # jump destination address
addi x30, x30, 680 # add immediate to lower part of rs1
jalr x30, x30, -680 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
la x31, 1f # jump destination address
addi x31, x31, 506 # add immediate to lower part of rs1
jalr x31, x31, -506 # perform operation
nop
nop
1:

# Testcase cp_offset negative bin
j 2f # jump past backward branch target
1: j 3f # backward jalr target: jump past backward jalr
2: la x1, 1b # backward jalr target
jalr x1 # backward jalr
3: nop # done with sequence

# Testcase cp_offset_lsbs
la x3, jalrlsb1 # load address of label
jalr x1, x3, 1 # jump to label + 1, extra plus 1 should be discarded
nop # something to skip over
jalrlsb1: 
la x3, jalrlsb2 # load address of label
addi x3, x3, 3 # add 3 to address
jalr x1, x3, -2 # jump to label + 1, extra plus 1 should be discarded
nop # something to skip over
jalrlsb2: 

# Testcase cp_imm_corners jalr 1 bin
la x7, 1f
addi x7, x7, -1 # sub immediate from rs1 to counter offset
jalr x13, x7, 1 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_corners jalr 2 bin
la x5, 1f
addi x5, x5, -2 # sub immediate from rs1 to counter offset
jalr x13, x5, 2 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_corners jalr 3 bin
la x20, 1f
addi x20, x20, -3 # sub immediate from rs1 to counter offset
jalr x21, x20, 3 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_corners jalr 4 bin
la x12, 1f
addi x12, x12, -4 # sub immediate from rs1 to counter offset
jalr x22, x12, 4 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_corners jalr 8 bin
la x26, 1f
addi x26, x26, -8 # sub immediate from rs1 to counter offset
jalr x29, x26, 8 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_corners jalr 16 bin
la x23, 1f
addi x23, x23, -16 # sub immediate from rs1 to counter offset
jalr x27, x23, 16 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_corners jalr 32 bin
la x14, 1f
addi x14, x14, -32 # sub immediate from rs1 to counter offset
jalr x1, x14, 32 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_corners jalr 64 bin
la x30, 1f
addi x30, x30, -64 # sub immediate from rs1 to counter offset
jalr x9, x30, 64 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_corners jalr 128 bin
la x6, 1f
addi x6, x6, -128 # sub immediate from rs1 to counter offset
jalr x29, x6, 128 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_corners jalr 256 bin
la x6, 1f
addi x6, x6, -256 # sub immediate from rs1 to counter offset
jalr x2, x6, 256 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_corners jalr 512 bin
la x26, 1f
addi x26, x26, -512 # sub immediate from rs1 to counter offset
jalr x31, x26, 512 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_corners jalr 1023 bin
la x12, 1f
addi x12, x12, -1023 # sub immediate from rs1 to counter offset
jalr x24, x12, 1023 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_corners jalr 1024 bin
la x5, 1f
addi x5, x5, -1024 # sub immediate from rs1 to counter offset
jalr x21, x5, 1024 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_corners jalr 1795 bin
la x9, 1f
addi x9, x9, -1795 # sub immediate from rs1 to counter offset
jalr x31, x9, 1795 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_corners jalr 2047 bin
la x2, 1f
addi x2, x2, -2047 # sub immediate from rs1 to counter offset
jalr x27, x2, 2047 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_corners jalr -2048 bin
la x7, 1f
addi x7, x7, 2047 # increment rs1 by 2047 
addi x7, x7, 1 # increment rs1 to bump it by a total of 2048 to compensate for -2048
jalr x12, x7, -2048 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_corners jalr -2047 bin
la x11, 1f
addi x11, x11, 2047 # sub immediate from rs1 to counter offset
jalr x10, x11, -2047 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_corners jalr -2 bin
la x3, 1f
addi x3, x3, 2 # sub immediate from rs1 to counter offset
jalr x19, x3, -2 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_corners jalr -1 bin
la x25, 1f
addi x25, x25, 1 # sub immediate from rs1 to counter offset
jalr x13, x25, -1 # jump to assigned address to stress immediate
1:

# Testcase cp_gpr/fpr_hazard nohaz test
la x19, arbitraryLabel46
add x13, x12, x17 # perform first operation
jalr x14, x19, 0 # perform second (triggering) operation
arbitraryLabel46:
nop

# Testcase cp_gpr/fpr_hazard nohaz test
la x23, arbitraryLabel47
add x8, x1, x17 # perform first operation
jalr x10, x23, 0 # perform second (triggering) operation
arbitraryLabel47:
nop

# Testcase cp_gpr/fpr_hazard nohaz test
la x20, arbitraryLabel48
add x11, x29, x17 # perform first operation
jalr x10, x20, 0 # perform second (triggering) operation
arbitraryLabel48:
nop

# Testcase cp_gpr/fpr_hazard raw test
add x27, x9, x21 # perform first operation
la x16, arbitraryLabel49
jalr x21, x16, 0 # perform second (triggering) operation
arbitraryLabel49:
nop

# Testcase cp_gpr/fpr_hazard raw test
add x14, x31, x18 # perform first operation
la x17, arbitraryLabel50
jalr x18, x17, 0 # perform second (triggering) operation
arbitraryLabel50:
nop

# Testcase cp_gpr/fpr_hazard raw test
add x14, x18, x11 # perform first operation
la x5, arbitraryLabel51
jalr x14, x5, 0 # perform second (triggering) operation
arbitraryLabel51:
nop

# Testcase cp_gpr/fpr_hazard waw test
la x18, arbitraryLabel52
add x21, x9, x17 # perform first operation
jalr x21, x18, 0 # perform second (triggering) operation
arbitraryLabel52:
nop

# Testcase cp_gpr/fpr_hazard waw test
la x1, arbitraryLabel53
add x25, x14, x22 # perform first operation
jalr x25, x1, 0 # perform second (triggering) operation
arbitraryLabel53:
nop

# Testcase cp_gpr/fpr_hazard waw test
la x14, arbitraryLabel54
add x8, x28, x11 # perform first operation
jalr x8, x14, 0 # perform second (triggering) operation
arbitraryLabel54:
nop

# Testcase cp_gpr/fpr_hazard war test
la x21, arbitraryLabel55
add x26, x23, x8 # perform first operation
jalr x23, x21, 0 # perform second (triggering) operation
arbitraryLabel55:
nop

# Testcase cp_gpr/fpr_hazard war test
la x6, arbitraryLabel56
add x25, x9, x17 # perform first operation
jalr x17, x6, 0 # perform second (triggering) operation
arbitraryLabel56:
nop

# Testcase cp_gpr/fpr_hazard war test
la x6, arbitraryLabel57
add x29, x1, x30 # perform first operation
jalr x13, x6, 0 # perform second (triggering) operation
arbitraryLabel57:
nop

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
