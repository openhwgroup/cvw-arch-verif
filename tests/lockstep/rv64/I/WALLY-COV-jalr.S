///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-jalr.S
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
addi x2, x2, 1849 # add immediate to lower part of rs1
jalr x29, x2, -1849 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x3)
la x3, 1f # jump destination address
addi x3, x3, 92 # add immediate to lower part of rs1
jalr x15, x3, -92 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x4, 1f # jump destination address
addi x4, x4, 1844 # add immediate to lower part of rs1
jalr x26, x4, -1844 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x5, 1f # jump destination address
addi x5, x5, -1401 # add immediate to lower part of rs1
jalr x4, x5, 1401 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x6, 1f # jump destination address
addi x6, x6, -369 # add immediate to lower part of rs1
jalr x5, x6, 369 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x7, 1f # jump destination address
addi x7, x7, -1867 # add immediate to lower part of rs1
jalr x9, x7, 1867 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x8)
la x8, 1f # jump destination address
addi x8, x8, 1695 # add immediate to lower part of rs1
jalr x10, x8, -1695 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x9)
la x9, 1f # jump destination address
addi x9, x9, 91 # add immediate to lower part of rs1
jalr x15, x9, -91 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x10)
la x10, 1f # jump destination address
addi x10, x10, -10 # add immediate to lower part of rs1
jalr x29, x10, 10 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x11)
la x11, 1f # jump destination address
addi x11, x11, -1004 # add immediate to lower part of rs1
jalr x14, x11, 1004 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x12)
la x12, 1f # jump destination address
addi x12, x12, 832 # add immediate to lower part of rs1
jalr x29, x12, -832 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x13)
la x13, 1f # jump destination address
addi x13, x13, -1498 # add immediate to lower part of rs1
jalr x1, x13, 1498 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x14)
la x14, 1f # jump destination address
addi x14, x14, -1832 # add immediate to lower part of rs1
jalr x25, x14, 1832 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x15)
la x15, 1f # jump destination address
addi x15, x15, -545 # add immediate to lower part of rs1
jalr x19, x15, 545 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x16)
la x16, 1f # jump destination address
addi x16, x16, 442 # add immediate to lower part of rs1
jalr x23, x16, -442 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x17)
la x17, 1f # jump destination address
addi x17, x17, -1526 # add immediate to lower part of rs1
jalr x15, x17, 1526 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x18)
la x18, 1f # jump destination address
addi x18, x18, -183 # add immediate to lower part of rs1
jalr x27, x18, 183 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x19)
la x19, 1f # jump destination address
addi x19, x19, -1308 # add immediate to lower part of rs1
jalr x11, x19, 1308 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x20)
la x20, 1f # jump destination address
addi x20, x20, 1804 # add immediate to lower part of rs1
jalr x2, x20, -1804 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x21)
la x21, 1f # jump destination address
addi x21, x21, -1241 # add immediate to lower part of rs1
jalr x14, x21, 1241 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x22)
la x22, 1f # jump destination address
addi x22, x22, -1173 # add immediate to lower part of rs1
jalr x30, x22, 1173 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x23)
la x23, 1f # jump destination address
addi x23, x23, 1973 # add immediate to lower part of rs1
jalr x16, x23, -1973 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x24)
la x24, 1f # jump destination address
addi x24, x24, -1718 # add immediate to lower part of rs1
jalr x29, x24, 1718 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x25)
la x25, 1f # jump destination address
addi x25, x25, -1208 # add immediate to lower part of rs1
jalr x15, x25, 1208 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x26)
la x26, 1f # jump destination address
addi x26, x26, 299 # add immediate to lower part of rs1
jalr x1, x26, -299 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x27)
la x27, 1f # jump destination address
addi x27, x27, 260 # add immediate to lower part of rs1
jalr x7, x27, -260 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x28)
la x28, 1f # jump destination address
addi x28, x28, -312 # add immediate to lower part of rs1
jalr x7, x28, 312 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x29)
la x29, 1f # jump destination address
addi x29, x29, 1477 # add immediate to lower part of rs1
jalr x14, x29, -1477 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x30)
la x30, 1f # jump destination address
addi x30, x30, 1841 # add immediate to lower part of rs1
jalr x10, x30, -1841 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x31)
la x31, 1f # jump destination address
addi x31, x31, -602 # add immediate to lower part of rs1
jalr x22, x31, 602 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x0)
la x1, 1f # jump destination address
addi x1, x1, 889 # add immediate to lower part of rs1
jalr x0, x1, -889 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x1)
la x7, 1f # jump destination address
addi x7, x7, 1555 # add immediate to lower part of rs1
jalr x1, x7, -1555 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x2)
la x21, 1f # jump destination address
addi x21, x21, -1582 # add immediate to lower part of rs1
jalr x2, x21, 1582 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x3)
la x10, 1f # jump destination address
addi x10, x10, 174 # add immediate to lower part of rs1
jalr x3, x10, -174 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
la x3, 1f # jump destination address
addi x3, x3, 1899 # add immediate to lower part of rs1
jalr x4, x3, -1899 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
la x27, 1f # jump destination address
addi x27, x27, -376 # add immediate to lower part of rs1
jalr x5, x27, 376 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x27, 1f # jump destination address
addi x27, x27, -817 # add immediate to lower part of rs1
jalr x6, x27, 817 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x18, 1f # jump destination address
addi x18, x18, 798 # add immediate to lower part of rs1
jalr x7, x18, -798 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x8)
la x22, 1f # jump destination address
addi x22, x22, 1418 # add immediate to lower part of rs1
jalr x8, x22, -1418 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x9)
la x21, 1f # jump destination address
addi x21, x21, 444 # add immediate to lower part of rs1
jalr x9, x21, -444 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x10)
la x30, 1f # jump destination address
addi x30, x30, -603 # add immediate to lower part of rs1
jalr x10, x30, 603 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x11)
la x30, 1f # jump destination address
addi x30, x30, -380 # add immediate to lower part of rs1
jalr x11, x30, 380 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x12)
la x21, 1f # jump destination address
addi x21, x21, -1789 # add immediate to lower part of rs1
jalr x12, x21, 1789 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x13)
la x3, 1f # jump destination address
addi x3, x3, -850 # add immediate to lower part of rs1
jalr x13, x3, 850 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x14)
la x15, 1f # jump destination address
addi x15, x15, 650 # add immediate to lower part of rs1
jalr x14, x15, -650 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x15)
la x11, 1f # jump destination address
addi x11, x11, 816 # add immediate to lower part of rs1
jalr x15, x11, -816 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x16)
la x13, 1f # jump destination address
addi x13, x13, -1619 # add immediate to lower part of rs1
jalr x16, x13, 1619 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x17)
la x10, 1f # jump destination address
addi x10, x10, -1711 # add immediate to lower part of rs1
jalr x17, x10, 1711 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x18)
la x11, 1f # jump destination address
addi x11, x11, 1738 # add immediate to lower part of rs1
jalr x18, x11, -1738 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x19)
la x14, 1f # jump destination address
addi x14, x14, 270 # add immediate to lower part of rs1
jalr x19, x14, -270 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x20)
la x14, 1f # jump destination address
addi x14, x14, 1555 # add immediate to lower part of rs1
jalr x20, x14, -1555 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x21)
la x21, 1f # jump destination address
addi x21, x21, 1960 # add immediate to lower part of rs1
jalr x21, x21, -1960 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x22)
la x10, 1f # jump destination address
addi x10, x10, 11 # add immediate to lower part of rs1
jalr x22, x10, -11 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x23)
la x24, 1f # jump destination address
addi x24, x24, 1949 # add immediate to lower part of rs1
jalr x23, x24, -1949 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x24)
la x18, 1f # jump destination address
addi x18, x18, -1107 # add immediate to lower part of rs1
jalr x24, x18, 1107 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x25)
la x1, 1f # jump destination address
addi x1, x1, -158 # add immediate to lower part of rs1
jalr x25, x1, 158 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x26)
la x11, 1f # jump destination address
addi x11, x11, -767 # add immediate to lower part of rs1
jalr x26, x11, 767 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x27)
la x21, 1f # jump destination address
addi x21, x21, -209 # add immediate to lower part of rs1
jalr x27, x21, 209 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x28)
la x9, 1f # jump destination address
addi x9, x9, -663 # add immediate to lower part of rs1
jalr x28, x9, 663 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x29)
la x19, 1f # jump destination address
addi x19, x19, -1388 # add immediate to lower part of rs1
jalr x29, x19, 1388 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x30)
la x2, 1f # jump destination address
addi x2, x2, 1437 # add immediate to lower part of rs1
jalr x30, x2, -1437 # perform operation
nop
nop
1:

# Testcase cp_rd (Test destination rd = x31)
la x6, 1f # jump destination address
addi x6, x6, 928 # add immediate to lower part of rs1
jalr x31, x6, -928 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
la x1, 1f # jump destination address
addi x1, x1, -1056 # add immediate to lower part of rs1
jalr x1, x1, 1056 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
la x2, 1f # jump destination address
addi x2, x2, -49 # add immediate to lower part of rs1
jalr x2, x2, 49 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
la x3, 1f # jump destination address
addi x3, x3, 1131 # add immediate to lower part of rs1
jalr x3, x3, -1131 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
la x4, 1f # jump destination address
addi x4, x4, -1859 # add immediate to lower part of rs1
jalr x4, x4, 1859 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
la x5, 1f # jump destination address
addi x5, x5, 828 # add immediate to lower part of rs1
jalr x5, x5, -828 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
la x6, 1f # jump destination address
addi x6, x6, -1148 # add immediate to lower part of rs1
jalr x6, x6, 1148 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
la x7, 1f # jump destination address
addi x7, x7, 738 # add immediate to lower part of rs1
jalr x7, x7, -738 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
la x8, 1f # jump destination address
addi x8, x8, -127 # add immediate to lower part of rs1
jalr x8, x8, 127 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
la x9, 1f # jump destination address
addi x9, x9, 1335 # add immediate to lower part of rs1
jalr x9, x9, -1335 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
la x10, 1f # jump destination address
addi x10, x10, -72 # add immediate to lower part of rs1
jalr x10, x10, 72 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
la x11, 1f # jump destination address
addi x11, x11, -1074 # add immediate to lower part of rs1
jalr x11, x11, 1074 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
la x12, 1f # jump destination address
addi x12, x12, -844 # add immediate to lower part of rs1
jalr x12, x12, 844 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
la x13, 1f # jump destination address
addi x13, x13, -810 # add immediate to lower part of rs1
jalr x13, x13, 810 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
la x14, 1f # jump destination address
addi x14, x14, 1585 # add immediate to lower part of rs1
jalr x14, x14, -1585 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
la x15, 1f # jump destination address
addi x15, x15, -596 # add immediate to lower part of rs1
jalr x15, x15, 596 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
la x16, 1f # jump destination address
addi x16, x16, -1339 # add immediate to lower part of rs1
jalr x16, x16, 1339 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
la x17, 1f # jump destination address
addi x17, x17, -1629 # add immediate to lower part of rs1
jalr x17, x17, 1629 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
la x18, 1f # jump destination address
addi x18, x18, 1317 # add immediate to lower part of rs1
jalr x18, x18, -1317 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
la x19, 1f # jump destination address
addi x19, x19, 578 # add immediate to lower part of rs1
jalr x19, x19, -578 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
la x20, 1f # jump destination address
addi x20, x20, -1019 # add immediate to lower part of rs1
jalr x20, x20, 1019 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
la x21, 1f # jump destination address
addi x21, x21, 1250 # add immediate to lower part of rs1
jalr x21, x21, -1250 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
la x22, 1f # jump destination address
addi x22, x22, 540 # add immediate to lower part of rs1
jalr x22, x22, -540 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
la x23, 1f # jump destination address
addi x23, x23, 1760 # add immediate to lower part of rs1
jalr x23, x23, -1760 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
la x24, 1f # jump destination address
addi x24, x24, -350 # add immediate to lower part of rs1
jalr x24, x24, 350 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
la x25, 1f # jump destination address
addi x25, x25, -1299 # add immediate to lower part of rs1
jalr x25, x25, 1299 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
la x26, 1f # jump destination address
addi x26, x26, -108 # add immediate to lower part of rs1
jalr x26, x26, 108 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
la x27, 1f # jump destination address
addi x27, x27, -1398 # add immediate to lower part of rs1
jalr x27, x27, 1398 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
la x28, 1f # jump destination address
addi x28, x28, -188 # add immediate to lower part of rs1
jalr x28, x28, 188 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
la x29, 1f # jump destination address
addi x29, x29, -818 # add immediate to lower part of rs1
jalr x29, x29, 818 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
la x30, 1f # jump destination address
addi x30, x30, -1694 # add immediate to lower part of rs1
jalr x30, x30, 1694 # perform operation
nop
nop
1:

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
la x31, 1f # jump destination address
addi x31, x31, -1705 # add immediate to lower part of rs1
jalr x31, x31, 1705 # perform operation
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
la x17, 1f
addi x17, x17, -2 # sub immediate from rs1 to counter offset
jalr x16, x17, 2 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_corners jalr 3 bin
la x20, 1f
addi x20, x20, -3 # sub immediate from rs1 to counter offset
jalr x21, x20, 3 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_corners jalr 4 bin
la x2, 1f
addi x2, x2, -4 # sub immediate from rs1 to counter offset
jalr x18, x2, 4 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_corners jalr 8 bin
la x21, 1f
addi x21, x21, -8 # sub immediate from rs1 to counter offset
jalr x14, x21, 8 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_corners jalr 16 bin
la x11, 1f
addi x11, x11, -16 # sub immediate from rs1 to counter offset
jalr x8, x11, 16 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_corners jalr 32 bin
la x23, 1f
addi x23, x23, -32 # sub immediate from rs1 to counter offset
jalr x11, x23, 32 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_corners jalr 64 bin
la x12, 1f
addi x12, x12, -64 # sub immediate from rs1 to counter offset
jalr x16, x12, 64 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_corners jalr 128 bin
la x21, 1f
addi x21, x21, -128 # sub immediate from rs1 to counter offset
jalr x27, x21, 128 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_corners jalr 256 bin
la x24, 1f
addi x24, x24, -256 # sub immediate from rs1 to counter offset
jalr x14, x24, 256 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_corners jalr 512 bin
la x19, 1f
addi x19, x19, -512 # sub immediate from rs1 to counter offset
jalr x30, x19, 512 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_corners jalr 1023 bin
la x23, 1f
addi x23, x23, -1023 # sub immediate from rs1 to counter offset
jalr x14, x23, 1023 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_corners jalr 1024 bin
la x26, 1f
addi x26, x26, -1024 # sub immediate from rs1 to counter offset
jalr x23, x26, 1024 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_corners jalr 1795 bin
la x28, 1f
addi x28, x28, -1795 # sub immediate from rs1 to counter offset
jalr x22, x28, 1795 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_corners jalr 2047 bin
la x6, 1f
addi x6, x6, -2047 # sub immediate from rs1 to counter offset
jalr x8, x6, 2047 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_corners jalr -2048 bin
la x2, 1f
addi x2, x2, 2047 # increment rs1 by 2047 
addi x2, x2, 1 # increment rs1 to bump it by a total of 2048 to compensate for -2048
jalr x12, x2, -2048 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_corners jalr -2047 bin
la x11, 1f
addi x11, x11, 2047 # sub immediate from rs1 to counter offset
jalr x12, x11, -2047 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_corners jalr -2 bin
la x29, 1f
addi x29, x29, 2 # sub immediate from rs1 to counter offset
jalr x10, x29, -2 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_corners jalr -1 bin
la x9, 1f
addi x9, x9, 1 # sub immediate from rs1 to counter offset
jalr x30, x9, -1 # jump to assigned address to stress immediate
1:

# Testcase cp_gpr/fpr_hazard nohaz test
la x21, arbitraryLabel160
add x16, x12, x17 # perform first operation
jalr x14, x21, 0 # perform second (triggering) operation
arbitraryLabel160:
nop

# Testcase cp_gpr/fpr_hazard nohaz test
la x12, arbitraryLabel161
add x23, x13, x30 # perform first operation
jalr x28, x12, 0 # perform second (triggering) operation
arbitraryLabel161:
nop

# Testcase cp_gpr/fpr_hazard nohaz test
la x13, arbitraryLabel162
add x17, x14, x11 # perform first operation
jalr x7, x13, 0 # perform second (triggering) operation
arbitraryLabel162:
nop

# Testcase cp_gpr/fpr_hazard raw test
add x15, x3, x13 # perform first operation
la x15, arbitraryLabel163
jalr x3, x15, 0 # perform second (triggering) operation
arbitraryLabel163:
nop

# Testcase cp_gpr/fpr_hazard raw test
add x2, x26, x25 # perform first operation
la x2, arbitraryLabel164
jalr x25, x2, 0 # perform second (triggering) operation
arbitraryLabel164:
nop

# Testcase cp_gpr/fpr_hazard raw test
add x28, x31, x30 # perform first operation
la x8, arbitraryLabel165
jalr x15, x8, 0 # perform second (triggering) operation
arbitraryLabel165:
nop

# Testcase cp_gpr/fpr_hazard waw test
la x16, arbitraryLabel166
add x1, x8, x20 # perform first operation
jalr x1, x16, 0 # perform second (triggering) operation
arbitraryLabel166:
nop

# Testcase cp_gpr/fpr_hazard waw test
la x31, arbitraryLabel167
add x26, x28, x24 # perform first operation
jalr x26, x31, 0 # perform second (triggering) operation
arbitraryLabel167:
nop

# Testcase cp_gpr/fpr_hazard waw test
la x23, arbitraryLabel168
add x25, x18, x29 # perform first operation
jalr x25, x23, 0 # perform second (triggering) operation
arbitraryLabel168:
nop

# Testcase cp_gpr/fpr_hazard war test
la x23, arbitraryLabel169
add x28, x6, x11 # perform first operation
jalr x6, x23, 0 # perform second (triggering) operation
arbitraryLabel169:
nop

# Testcase cp_gpr/fpr_hazard war test
la x26, arbitraryLabel170
add x7, x16, x5 # perform first operation
jalr x5, x26, 0 # perform second (triggering) operation
arbitraryLabel170:
nop

# Testcase cp_gpr/fpr_hazard war test
la x6, arbitraryLabel171
add x19, x18, x10 # perform first operation
jalr x7, x6, 0 # perform second (triggering) operation
arbitraryLabel171:
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
