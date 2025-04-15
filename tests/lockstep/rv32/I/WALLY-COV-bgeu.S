///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/I/WALLY-COV-bgeu.S
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

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0xf8a33dd2 # initialize rs1
li x19, 0x66b069e3 # initialize rs2
bgeu x0, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x0, 0x66b069e3 # initialize rs1
li x19, 0x66b069e3 # initialize rs2
bgeu x0, x19, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x7ee3fd67 # initialize rs1
li x22, 0x5246d701 # initialize rs2
bgeu x1, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x5246d701 # initialize rs1
li x22, 0x5246d701 # initialize rs2
bgeu x1, x22, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x8f57803b # initialize rs1
li x26, 0xbf5ffedf # initialize rs2
bgeu x2, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0xbf5ffedf # initialize rs1
li x26, 0xbf5ffedf # initialize rs2
bgeu x2, x26, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xf13d0f87 # initialize rs1
li x18, 0xccc3de2b # initialize rs2
bgeu x3, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0xccc3de2b # initialize rs1
li x18, 0xccc3de2b # initialize rs2
bgeu x3, x18, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x91da1276 # initialize rs1
li x16, 0x61304a5d # initialize rs2
bgeu x4, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x4, 0x61304a5d # initialize rs1
li x16, 0x61304a5d # initialize rs2
bgeu x4, x16, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xd78ed74a # initialize rs1
li x25, 0x5fdb97b6 # initialize rs2
bgeu x5, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x5fdb97b6 # initialize rs1
li x25, 0x5fdb97b6 # initialize rs2
bgeu x5, x25, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x3ca8326b # initialize rs1
li x12, 0x00a8a460 # initialize rs2
bgeu x6, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x00a8a460 # initialize rs1
li x12, 0x00a8a460 # initialize rs2
bgeu x6, x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xb1b7289f # initialize rs1
li x31, 0x395f6376 # initialize rs2
bgeu x7, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x395f6376 # initialize rs1
li x31, 0x395f6376 # initialize rs2
bgeu x7, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xd937cde7 # initialize rs1
li x17, 0xc9bbbff1 # initialize rs2
bgeu x8, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0xc9bbbff1 # initialize rs1
li x17, 0xc9bbbff1 # initialize rs2
bgeu x8, x17, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x2783f86c # initialize rs1
li x18, 0xcb6fdbc5 # initialize rs2
bgeu x9, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0xcb6fdbc5 # initialize rs1
li x18, 0xcb6fdbc5 # initialize rs2
bgeu x9, x18, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xabd6d396 # initialize rs1
li x23, 0x2b8810b0 # initialize rs2
bgeu x10, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x2b8810b0 # initialize rs1
li x23, 0x2b8810b0 # initialize rs2
bgeu x10, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xe783fe8e # initialize rs1
li x20, 0x1d250a68 # initialize rs2
bgeu x11, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x1d250a68 # initialize rs1
li x20, 0x1d250a68 # initialize rs2
bgeu x11, x20, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xbd360d93 # initialize rs1
li x19, 0xf416945b # initialize rs2
bgeu x12, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0xf416945b # initialize rs1
li x19, 0xf416945b # initialize rs2
bgeu x12, x19, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x694952c7 # initialize rs1
li x7, 0x77eef23e # initialize rs2
bgeu x13, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x77eef23e # initialize rs1
li x7, 0x77eef23e # initialize rs2
bgeu x13, x7, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xc4b9e67e # initialize rs1
li x18, 0xd0373871 # initialize rs2
bgeu x14, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0xd0373871 # initialize rs1
li x18, 0xd0373871 # initialize rs2
bgeu x14, x18, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x2948911c # initialize rs1
li x8, 0x3c802d29 # initialize rs2
bgeu x15, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x3c802d29 # initialize rs1
li x8, 0x3c802d29 # initialize rs2
bgeu x15, x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x24d4ac04 # initialize rs1
li x1, 0xdfc553b3 # initialize rs2
bgeu x16, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0xdfc553b3 # initialize rs1
li x1, 0xdfc553b3 # initialize rs2
bgeu x16, x1, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x6be5f67b # initialize rs1
li x7, 0x0cd465a8 # initialize rs2
bgeu x17, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x0cd465a8 # initialize rs1
li x7, 0x0cd465a8 # initialize rs2
bgeu x17, x7, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x8e11987f # initialize rs1
li x13, 0xac6ff974 # initialize rs2
bgeu x18, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0xac6ff974 # initialize rs1
li x13, 0xac6ff974 # initialize rs2
bgeu x18, x13, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x80eb8016 # initialize rs1
li x28, 0x02bfc849 # initialize rs2
bgeu x19, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x02bfc849 # initialize rs1
li x28, 0x02bfc849 # initialize rs2
bgeu x19, x28, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xb98f477a # initialize rs1
li x29, 0x41663076 # initialize rs2
bgeu x20, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x41663076 # initialize rs1
li x29, 0x41663076 # initialize rs2
bgeu x20, x29, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x7f00281b # initialize rs1
li x5, 0x3191f1f5 # initialize rs2
bgeu x21, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x3191f1f5 # initialize rs1
li x5, 0x3191f1f5 # initialize rs2
bgeu x21, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xdff99143 # initialize rs1
li x3, 0x7f2cb08e # initialize rs2
bgeu x22, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x7f2cb08e # initialize rs1
li x3, 0x7f2cb08e # initialize rs2
bgeu x22, x3, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xe1dd5f9b # initialize rs1
li x12, 0x20985703 # initialize rs2
bgeu x23, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x20985703 # initialize rs1
li x12, 0x20985703 # initialize rs2
bgeu x23, x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xefdaf9c9 # initialize rs1
li x22, 0x6456b7fd # initialize rs2
bgeu x24, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x6456b7fd # initialize rs1
li x22, 0x6456b7fd # initialize rs2
bgeu x24, x22, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x16d32dfc # initialize rs1
li x13, 0x7649316d # initialize rs2
bgeu x25, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x7649316d # initialize rs1
li x13, 0x7649316d # initialize rs2
bgeu x25, x13, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x20ccdc58 # initialize rs1
li x23, 0x973d7f9b # initialize rs2
bgeu x26, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x973d7f9b # initialize rs1
li x23, 0x973d7f9b # initialize rs2
bgeu x26, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xaddd05e9 # initialize rs1
li x26, 0xe9d1bed0 # initialize rs2
bgeu x27, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0xe9d1bed0 # initialize rs1
li x26, 0xe9d1bed0 # initialize rs2
bgeu x27, x26, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x9076ba52 # initialize rs1
li x26, 0xd8289731 # initialize rs2
bgeu x28, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0xd8289731 # initialize rs1
li x26, 0xd8289731 # initialize rs2
bgeu x28, x26, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x8c0d4576 # initialize rs1
li x8, 0x1d7579fc # initialize rs2
bgeu x29, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x1d7579fc # initialize rs1
li x8, 0x1d7579fc # initialize rs2
bgeu x29, x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x7a0c400a # initialize rs1
li x3, 0x0b491466 # initialize rs2
bgeu x30, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x0b491466 # initialize rs1
li x3, 0x0b491466 # initialize rs2
bgeu x30, x3, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xfddd17d5 # initialize rs1
li x15, 0x93b197fa # initialize rs2
bgeu x31, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x93b197fa # initialize rs1
li x15, 0x93b197fa # initialize rs2
bgeu x31, x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x0)
li x20, 0x5b33ea85 # initialize rs1
li x0, 0x682c4ddb # initialize rs2
bgeu x20, x0, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x682c4ddb # initialize rs1
li x0, 0x682c4ddb # initialize rs2
bgeu x20, x0, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x1)
li x23, 0x3b91974d # initialize rs1
li x1, 0x2e64693d # initialize rs2
bgeu x23, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x2e64693d # initialize rs1
li x1, 0x2e64693d # initialize rs2
bgeu x23, x1, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x2)
li x11, 0xb8e6d84b # initialize rs1
li x2, 0xd33a0d0f # initialize rs2
bgeu x11, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0xd33a0d0f # initialize rs1
li x2, 0xd33a0d0f # initialize rs2
bgeu x11, x2, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x3)
li x29, 0xa7af7cf6 # initialize rs1
li x3, 0x3897ed04 # initialize rs2
bgeu x29, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x3897ed04 # initialize rs1
li x3, 0x3897ed04 # initialize rs2
bgeu x29, x3, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x7, 0xa4e55e49 # initialize rs1
li x4, 0xa530ec28 # initialize rs2
bgeu x7, x4, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0xa530ec28 # initialize rs1
li x4, 0xa530ec28 # initialize rs2
bgeu x7, x4, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x4, 0xe739f45d # initialize rs1
li x5, 0x0d0f9f0f # initialize rs2
bgeu x4, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x4, 0x0d0f9f0f # initialize rs1
li x5, 0x0d0f9f0f # initialize rs2
bgeu x4, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x15, 0x4f337a1c # initialize rs1
li x6, 0x8548e7ef # initialize rs2
bgeu x15, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x8548e7ef # initialize rs1
li x6, 0x8548e7ef # initialize rs2
bgeu x15, x6, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x28, 0xe3bb749f # initialize rs1
li x7, 0xee698c9f # initialize rs2
bgeu x28, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0xee698c9f # initialize rs1
li x7, 0xee698c9f # initialize rs2
bgeu x28, x7, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x8)
li x16, 0x7692282f # initialize rs1
li x8, 0xe7d6f25d # initialize rs2
bgeu x16, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0xe7d6f25d # initialize rs1
li x8, 0xe7d6f25d # initialize rs2
bgeu x16, x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x9)
li x29, 0x825dadd4 # initialize rs1
li x9, 0x60a3041b # initialize rs2
bgeu x29, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x60a3041b # initialize rs1
li x9, 0x60a3041b # initialize rs2
bgeu x29, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x10)
li x27, 0xa61cf851 # initialize rs1
li x10, 0x35b1e367 # initialize rs2
bgeu x27, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x35b1e367 # initialize rs1
li x10, 0x35b1e367 # initialize rs2
bgeu x27, x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x11)
li x26, 0x60490ba7 # initialize rs1
li x11, 0x302d8645 # initialize rs2
bgeu x26, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x302d8645 # initialize rs1
li x11, 0x302d8645 # initialize rs2
bgeu x26, x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x12)
li x17, 0x53cf8fe2 # initialize rs1
li x12, 0x68433658 # initialize rs2
bgeu x17, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x68433658 # initialize rs1
li x12, 0x68433658 # initialize rs2
bgeu x17, x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x13)
li x11, 0x81308ab2 # initialize rs1
li x13, 0x859cf730 # initialize rs2
bgeu x11, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x859cf730 # initialize rs1
li x13, 0x859cf730 # initialize rs2
bgeu x11, x13, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x14)
li x30, 0x995a0364 # initialize rs1
li x14, 0xf14ce2c3 # initialize rs2
bgeu x30, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0xf14ce2c3 # initialize rs1
li x14, 0xf14ce2c3 # initialize rs2
bgeu x30, x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x15)
li x7, 0x871510a5 # initialize rs1
li x15, 0x6aded01f # initialize rs2
bgeu x7, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x6aded01f # initialize rs1
li x15, 0x6aded01f # initialize rs2
bgeu x7, x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x16)
li x10, 0xe63ff1f0 # initialize rs1
li x16, 0xc153315b # initialize rs2
bgeu x10, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0xc153315b # initialize rs1
li x16, 0xc153315b # initialize rs2
bgeu x10, x16, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x17)
li x23, 0x3f82b6c0 # initialize rs1
li x17, 0xe89460ad # initialize rs2
bgeu x23, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0xe89460ad # initialize rs1
li x17, 0xe89460ad # initialize rs2
bgeu x23, x17, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x18)
li x31, 0xfa54f723 # initialize rs1
li x18, 0xffaf5500 # initialize rs2
bgeu x31, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0xffaf5500 # initialize rs1
li x18, 0xffaf5500 # initialize rs2
bgeu x31, x18, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x19)
li x9, 0x9e9f976a # initialize rs1
li x19, 0xe6ee78fe # initialize rs2
bgeu x9, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0xe6ee78fe # initialize rs1
li x19, 0xe6ee78fe # initialize rs2
bgeu x9, x19, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x20)
li x22, 0x0baed2d8 # initialize rs1
li x20, 0x28b99096 # initialize rs2
bgeu x22, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x28b99096 # initialize rs1
li x20, 0x28b99096 # initialize rs2
bgeu x22, x20, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x21)
li x8, 0xce19bf3c # initialize rs1
li x21, 0x7702f43e # initialize rs2
bgeu x8, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x7702f43e # initialize rs1
li x21, 0x7702f43e # initialize rs2
bgeu x8, x21, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x22)
li x30, 0x5d3a4f9a # initialize rs1
li x22, 0x83770d91 # initialize rs2
bgeu x30, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x83770d91 # initialize rs1
li x22, 0x83770d91 # initialize rs2
bgeu x30, x22, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x23)
li x30, 0x36fa971c # initialize rs1
li x23, 0xcc5102bd # initialize rs2
bgeu x30, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0xcc5102bd # initialize rs1
li x23, 0xcc5102bd # initialize rs2
bgeu x30, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x24)
li x2, 0xc20f0aef # initialize rs1
li x24, 0x10a9ec0e # initialize rs2
bgeu x2, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x10a9ec0e # initialize rs1
li x24, 0x10a9ec0e # initialize rs2
bgeu x2, x24, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x25)
li x18, 0x9ac3ffb3 # initialize rs1
li x25, 0x221dbcc4 # initialize rs2
bgeu x18, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x221dbcc4 # initialize rs1
li x25, 0x221dbcc4 # initialize rs2
bgeu x18, x25, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x26)
li x28, 0xf160fbef # initialize rs1
li x26, 0xa4ace232 # initialize rs2
bgeu x28, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0xa4ace232 # initialize rs1
li x26, 0xa4ace232 # initialize rs2
bgeu x28, x26, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x27)
li x25, 0xc8395969 # initialize rs1
li x27, 0x0b8cb251 # initialize rs2
bgeu x25, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x0b8cb251 # initialize rs1
li x27, 0x0b8cb251 # initialize rs2
bgeu x25, x27, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x28)
li x9, 0xbf0b2234 # initialize rs1
li x28, 0x2b3e0d39 # initialize rs2
bgeu x9, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x2b3e0d39 # initialize rs1
li x28, 0x2b3e0d39 # initialize rs2
bgeu x9, x28, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x29)
li x5, 0x2c5a2a2b # initialize rs1
li x29, 0x386be445 # initialize rs2
bgeu x5, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x386be445 # initialize rs1
li x29, 0x386be445 # initialize rs2
bgeu x5, x29, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x30)
li x22, 0x622d539e # initialize rs1
li x30, 0x7126ce11 # initialize rs2
bgeu x22, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x7126ce11 # initialize rs1
li x30, 0x7126ce11 # initialize rs2
bgeu x22, x30, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x31)
li x24, 0x2751e459 # initialize rs1
li x31, 0xd22c7853 # initialize rs2
bgeu x24, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0xd22c7853 # initialize rs1
li x31, 0xd22c7853 # initialize rs2
bgeu x24, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x22, 0x00000000 # initialize rs1
li x11, 0xda8d6526 # initialize rs2
bgeu x22, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0xda8d6526 # initialize rs1
li x11, 0xda8d6526 # initialize rs2
bgeu x22, x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x9, 0x00000001 # initialize rs1
li x18, 0x473f9cb2 # initialize rs2
bgeu x9, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x473f9cb2 # initialize rs1
li x18, 0x473f9cb2 # initialize rs2
bgeu x9, x18, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x15, 0x00000002 # initialize rs1
li x23, 0x3ec15aa4 # initialize rs2
bgeu x15, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x3ec15aa4 # initialize rs1
li x23, 0x3ec15aa4 # initialize rs2
bgeu x15, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x9, 0x80000000 # initialize rs1
li x17, 0x27282b98 # initialize rs2
bgeu x9, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x27282b98 # initialize rs1
li x17, 0x27282b98 # initialize rs2
bgeu x9, x17, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x14, 0x80000001 # initialize rs1
li x6, 0xb853ee59 # initialize rs2
bgeu x14, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0xb853ee59 # initialize rs1
li x6, 0xb853ee59 # initialize rs2
bgeu x14, x6, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x11, 0x7fffffff # initialize rs1
li x30, 0xbc1f822a # initialize rs2
bgeu x11, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0xbc1f822a # initialize rs1
li x30, 0xbc1f822a # initialize rs2
bgeu x11, x30, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x16, 0x7ffffffe # initialize rs1
li x25, 0xe11ead8b # initialize rs2
bgeu x16, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0xe11ead8b # initialize rs1
li x25, 0xe11ead8b # initialize rs2
bgeu x16, x25, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x27, 0xffffffff # initialize rs1
li x13, 0x636dc17a # initialize rs2
bgeu x27, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x636dc17a # initialize rs1
li x13, 0x636dc17a # initialize rs2
bgeu x27, x13, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x2, 0xfffffffe # initialize rs1
li x10, 0x2b1e1493 # initialize rs2
bgeu x2, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x2b1e1493 # initialize rs1
li x10, 0x2b1e1493 # initialize rs2
bgeu x2, x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x27, 0x5bbc8872 # initialize rs1
li x24, 0x3c768c76 # initialize rs2
bgeu x27, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x3c768c76 # initialize rs1
li x24, 0x3c768c76 # initialize rs2
bgeu x27, x24, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x18, 0xaaaaaaaa # initialize rs1
li x27, 0xd3fb4803 # initialize rs2
bgeu x18, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0xd3fb4803 # initialize rs1
li x27, 0xd3fb4803 # initialize rs2
bgeu x18, x27, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x5, 0x55555555 # initialize rs1
li x31, 0x7f13b4ce # initialize rs2
bgeu x5, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x7f13b4ce # initialize rs1
li x31, 0x7f13b4ce # initialize rs2
bgeu x5, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x31, 0x5f7b5777 # initialize rs1
li x20, 0x00000000 # initialize rs2
bgeu x31, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x00000000 # initialize rs1
li x20, 0x00000000 # initialize rs2
bgeu x31, x20, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x2, 0xdfe284d1 # initialize rs1
li x8, 0x00000001 # initialize rs2
bgeu x2, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x00000001 # initialize rs1
li x8, 0x00000001 # initialize rs2
bgeu x2, x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x2, 0x02f8c330 # initialize rs1
li x24, 0x00000002 # initialize rs2
bgeu x2, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x00000002 # initialize rs1
li x24, 0x00000002 # initialize rs2
bgeu x2, x24, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x29, 0x8a7e293d # initialize rs1
li x26, 0x80000000 # initialize rs2
bgeu x29, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x80000000 # initialize rs1
li x26, 0x80000000 # initialize rs2
bgeu x29, x26, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x17, 0xf6248450 # initialize rs1
li x26, 0x80000001 # initialize rs2
bgeu x17, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x80000001 # initialize rs1
li x26, 0x80000001 # initialize rs2
bgeu x17, x26, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x12, 0xc4a6943b # initialize rs1
li x22, 0x7fffffff # initialize rs2
bgeu x12, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x7fffffff # initialize rs1
li x22, 0x7fffffff # initialize rs2
bgeu x12, x22, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x23, 0xf603661d # initialize rs1
li x18, 0x7ffffffe # initialize rs2
bgeu x23, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x7ffffffe # initialize rs1
li x18, 0x7ffffffe # initialize rs2
bgeu x23, x18, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x13, 0x8d275ed0 # initialize rs1
li x6, 0xffffffff # initialize rs2
bgeu x13, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0xffffffff # initialize rs1
li x6, 0xffffffff # initialize rs2
bgeu x13, x6, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x11, 0xa462e3b9 # initialize rs1
li x23, 0xfffffffe # initialize rs2
bgeu x11, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0xfffffffe # initialize rs1
li x23, 0xfffffffe # initialize rs2
bgeu x11, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x25, 0x28e179c5 # initialize rs1
li x9, 0x5bbc8872 # initialize rs2
bgeu x25, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x5bbc8872 # initialize rs1
li x9, 0x5bbc8872 # initialize rs2
bgeu x25, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x2, 0xbbc80f36 # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
bgeu x2, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0xaaaaaaaa # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
bgeu x2, x28, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x7, 0x51f48bd6 # initialize rs1
li x10, 0x55555555 # initialize rs2
bgeu x7, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x55555555 # initialize rs1
li x10, 0x55555555 # initialize rs2
bgeu x7, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x27, 0x00000000 # initialize rs1
li x20, 0x00000000 # initialize rs2
bgeu x27, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x00000000 # initialize rs1
li x20, 0x00000000 # initialize rs2
bgeu x27, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x22, 0x00000000 # initialize rs1
li x16, 0x00000001 # initialize rs2
bgeu x22, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x00000001 # initialize rs1
li x16, 0x00000001 # initialize rs2
bgeu x22, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x20, 0x00000000 # initialize rs1
li x5, 0x00000002 # initialize rs2
bgeu x20, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x00000002 # initialize rs1
li x5, 0x00000002 # initialize rs2
bgeu x20, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x12, 0x00000000 # initialize rs1
li x9, 0x80000000 # initialize rs2
bgeu x12, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x80000000 # initialize rs1
li x9, 0x80000000 # initialize rs2
bgeu x12, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x5, 0x00000000 # initialize rs1
li x19, 0x80000001 # initialize rs2
bgeu x5, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x80000001 # initialize rs1
li x19, 0x80000001 # initialize rs2
bgeu x5, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x11, 0x00000000 # initialize rs1
li x12, 0x7fffffff # initialize rs2
bgeu x11, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x7fffffff # initialize rs1
li x12, 0x7fffffff # initialize rs2
bgeu x11, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x19, 0x00000000 # initialize rs1
li x12, 0x7ffffffe # initialize rs2
bgeu x19, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x7ffffffe # initialize rs1
li x12, 0x7ffffffe # initialize rs2
bgeu x19, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x15, 0x00000000 # initialize rs1
li x3, 0xffffffff # initialize rs2
bgeu x15, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0xffffffff # initialize rs1
li x3, 0xffffffff # initialize rs2
bgeu x15, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x6, 0x00000000 # initialize rs1
li x11, 0xfffffffe # initialize rs2
bgeu x6, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0xfffffffe # initialize rs1
li x11, 0xfffffffe # initialize rs2
bgeu x6, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x14, 0x00000000 # initialize rs1
li x17, 0x5bbc8872 # initialize rs2
bgeu x14, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x5bbc8872 # initialize rs1
li x17, 0x5bbc8872 # initialize rs2
bgeu x14, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x6, 0x00000000 # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
bgeu x6, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0xaaaaaaaa # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
bgeu x6, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x1, 0x00000000 # initialize rs1
li x11, 0x55555555 # initialize rs2
bgeu x1, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x55555555 # initialize rs1
li x11, 0x55555555 # initialize rs2
bgeu x1, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x9, 0x00000001 # initialize rs1
li x23, 0x00000000 # initialize rs2
bgeu x9, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x00000000 # initialize rs1
li x23, 0x00000000 # initialize rs2
bgeu x9, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x7, 0x00000001 # initialize rs1
li x29, 0x00000001 # initialize rs2
bgeu x7, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x00000001 # initialize rs1
li x29, 0x00000001 # initialize rs2
bgeu x7, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x7, 0x00000001 # initialize rs1
li x26, 0x00000002 # initialize rs2
bgeu x7, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x00000002 # initialize rs1
li x26, 0x00000002 # initialize rs2
bgeu x7, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x14, 0x00000001 # initialize rs1
li x21, 0x80000000 # initialize rs2
bgeu x14, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x80000000 # initialize rs1
li x21, 0x80000000 # initialize rs2
bgeu x14, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x31, 0x00000001 # initialize rs1
li x18, 0x80000001 # initialize rs2
bgeu x31, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x80000001 # initialize rs1
li x18, 0x80000001 # initialize rs2
bgeu x31, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x29, 0x00000001 # initialize rs1
li x30, 0x7fffffff # initialize rs2
bgeu x29, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x7fffffff # initialize rs1
li x30, 0x7fffffff # initialize rs2
bgeu x29, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x17, 0x00000001 # initialize rs1
li x9, 0x7ffffffe # initialize rs2
bgeu x17, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x7ffffffe # initialize rs1
li x9, 0x7ffffffe # initialize rs2
bgeu x17, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x18, 0x00000001 # initialize rs1
li x6, 0xffffffff # initialize rs2
bgeu x18, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0xffffffff # initialize rs1
li x6, 0xffffffff # initialize rs2
bgeu x18, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x2, 0x00000001 # initialize rs1
li x27, 0xfffffffe # initialize rs2
bgeu x2, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0xfffffffe # initialize rs1
li x27, 0xfffffffe # initialize rs2
bgeu x2, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x21, 0x00000001 # initialize rs1
li x25, 0x5bbc8872 # initialize rs2
bgeu x21, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x5bbc8872 # initialize rs1
li x25, 0x5bbc8872 # initialize rs2
bgeu x21, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x16, 0x00000001 # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
bgeu x16, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0xaaaaaaaa # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
bgeu x16, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x21, 0x00000001 # initialize rs1
li x22, 0x55555555 # initialize rs2
bgeu x21, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x55555555 # initialize rs1
li x22, 0x55555555 # initialize rs2
bgeu x21, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x15, 0x00000002 # initialize rs1
li x25, 0x00000000 # initialize rs2
bgeu x15, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x00000000 # initialize rs1
li x25, 0x00000000 # initialize rs2
bgeu x15, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x15, 0x00000002 # initialize rs1
li x2, 0x00000001 # initialize rs2
bgeu x15, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x00000001 # initialize rs1
li x2, 0x00000001 # initialize rs2
bgeu x15, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x20, 0x00000002 # initialize rs1
li x19, 0x00000002 # initialize rs2
bgeu x20, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x00000002 # initialize rs1
li x19, 0x00000002 # initialize rs2
bgeu x20, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x12, 0x00000002 # initialize rs1
li x20, 0x80000000 # initialize rs2
bgeu x12, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x80000000 # initialize rs1
li x20, 0x80000000 # initialize rs2
bgeu x12, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x7, 0x00000002 # initialize rs1
li x25, 0x80000001 # initialize rs2
bgeu x7, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x80000001 # initialize rs1
li x25, 0x80000001 # initialize rs2
bgeu x7, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x13, 0x00000002 # initialize rs1
li x29, 0x7fffffff # initialize rs2
bgeu x13, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x7fffffff # initialize rs1
li x29, 0x7fffffff # initialize rs2
bgeu x13, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x14, 0x00000002 # initialize rs1
li x7, 0x7ffffffe # initialize rs2
bgeu x14, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x7ffffffe # initialize rs1
li x7, 0x7ffffffe # initialize rs2
bgeu x14, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x12, 0x00000002 # initialize rs1
li x5, 0xffffffff # initialize rs2
bgeu x12, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0xffffffff # initialize rs1
li x5, 0xffffffff # initialize rs2
bgeu x12, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x12, 0x00000002 # initialize rs1
li x24, 0xfffffffe # initialize rs2
bgeu x12, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0xfffffffe # initialize rs1
li x24, 0xfffffffe # initialize rs2
bgeu x12, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x28, 0x00000002 # initialize rs1
li x14, 0x5bbc8872 # initialize rs2
bgeu x28, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x5bbc8872 # initialize rs1
li x14, 0x5bbc8872 # initialize rs2
bgeu x28, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x16, 0x00000002 # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
bgeu x16, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0xaaaaaaaa # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
bgeu x16, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x10, 0x00000002 # initialize rs1
li x24, 0x55555555 # initialize rs2
bgeu x10, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x55555555 # initialize rs1
li x24, 0x55555555 # initialize rs2
bgeu x10, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x18, 0x80000000 # initialize rs1
li x8, 0x00000000 # initialize rs2
bgeu x18, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x00000000 # initialize rs1
li x8, 0x00000000 # initialize rs2
bgeu x18, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x21, 0x80000000 # initialize rs1
li x13, 0x00000001 # initialize rs2
bgeu x21, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x00000001 # initialize rs1
li x13, 0x00000001 # initialize rs2
bgeu x21, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x13, 0x80000000 # initialize rs1
li x1, 0x00000002 # initialize rs2
bgeu x13, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x00000002 # initialize rs1
li x1, 0x00000002 # initialize rs2
bgeu x13, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x13, 0x80000000 # initialize rs1
li x31, 0x80000000 # initialize rs2
bgeu x13, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x80000000 # initialize rs1
li x31, 0x80000000 # initialize rs2
bgeu x13, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x26, 0x80000000 # initialize rs1
li x11, 0x80000001 # initialize rs2
bgeu x26, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x80000001 # initialize rs1
li x11, 0x80000001 # initialize rs2
bgeu x26, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x20, 0x80000000 # initialize rs1
li x28, 0x7fffffff # initialize rs2
bgeu x20, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x7fffffff # initialize rs1
li x28, 0x7fffffff # initialize rs2
bgeu x20, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x14, 0x80000000 # initialize rs1
li x19, 0x7ffffffe # initialize rs2
bgeu x14, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x7ffffffe # initialize rs1
li x19, 0x7ffffffe # initialize rs2
bgeu x14, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x8, 0x80000000 # initialize rs1
li x27, 0xffffffff # initialize rs2
bgeu x8, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0xffffffff # initialize rs1
li x27, 0xffffffff # initialize rs2
bgeu x8, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x9, 0x80000000 # initialize rs1
li x19, 0xfffffffe # initialize rs2
bgeu x9, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0xfffffffe # initialize rs1
li x19, 0xfffffffe # initialize rs2
bgeu x9, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x25, 0x80000000 # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
bgeu x25, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x5bbc8872 # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
bgeu x25, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x24, 0x80000000 # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
bgeu x24, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0xaaaaaaaa # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
bgeu x24, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x16, 0x80000000 # initialize rs1
li x28, 0x55555555 # initialize rs2
bgeu x16, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x55555555 # initialize rs1
li x28, 0x55555555 # initialize rs2
bgeu x16, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x15, 0x80000001 # initialize rs1
li x9, 0x00000000 # initialize rs2
bgeu x15, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x00000000 # initialize rs1
li x9, 0x00000000 # initialize rs2
bgeu x15, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x1, 0x80000001 # initialize rs1
li x8, 0x00000001 # initialize rs2
bgeu x1, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x00000001 # initialize rs1
li x8, 0x00000001 # initialize rs2
bgeu x1, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x6, 0x80000001 # initialize rs1
li x13, 0x00000002 # initialize rs2
bgeu x6, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x00000002 # initialize rs1
li x13, 0x00000002 # initialize rs2
bgeu x6, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x12, 0x80000001 # initialize rs1
li x21, 0x80000000 # initialize rs2
bgeu x12, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x80000000 # initialize rs1
li x21, 0x80000000 # initialize rs2
bgeu x12, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x30, 0x80000001 # initialize rs1
li x8, 0x80000001 # initialize rs2
bgeu x30, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x80000001 # initialize rs1
li x8, 0x80000001 # initialize rs2
bgeu x30, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x19, 0x80000001 # initialize rs1
li x27, 0x7fffffff # initialize rs2
bgeu x19, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x7fffffff # initialize rs1
li x27, 0x7fffffff # initialize rs2
bgeu x19, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x16, 0x80000001 # initialize rs1
li x5, 0x7ffffffe # initialize rs2
bgeu x16, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x7ffffffe # initialize rs1
li x5, 0x7ffffffe # initialize rs2
bgeu x16, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x22, 0x80000001 # initialize rs1
li x18, 0xffffffff # initialize rs2
bgeu x22, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0xffffffff # initialize rs1
li x18, 0xffffffff # initialize rs2
bgeu x22, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x31, 0x80000001 # initialize rs1
li x18, 0xfffffffe # initialize rs2
bgeu x31, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0xfffffffe # initialize rs1
li x18, 0xfffffffe # initialize rs2
bgeu x31, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x21, 0x80000001 # initialize rs1
li x30, 0x5bbc8872 # initialize rs2
bgeu x21, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x5bbc8872 # initialize rs1
li x30, 0x5bbc8872 # initialize rs2
bgeu x21, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x6, 0x80000001 # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
bgeu x6, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0xaaaaaaaa # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
bgeu x6, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x13, 0x80000001 # initialize rs1
li x25, 0x55555555 # initialize rs2
bgeu x13, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x55555555 # initialize rs1
li x25, 0x55555555 # initialize rs2
bgeu x13, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x8, 0x7fffffff # initialize rs1
li x27, 0x00000000 # initialize rs2
bgeu x8, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x00000000 # initialize rs1
li x27, 0x00000000 # initialize rs2
bgeu x8, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x26, 0x7fffffff # initialize rs1
li x1, 0x00000001 # initialize rs2
bgeu x26, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x00000001 # initialize rs1
li x1, 0x00000001 # initialize rs2
bgeu x26, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x24, 0x7fffffff # initialize rs1
li x13, 0x00000002 # initialize rs2
bgeu x24, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x00000002 # initialize rs1
li x13, 0x00000002 # initialize rs2
bgeu x24, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x11, 0x7fffffff # initialize rs1
li x17, 0x80000000 # initialize rs2
bgeu x11, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x80000000 # initialize rs1
li x17, 0x80000000 # initialize rs2
bgeu x11, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x7, 0x7fffffff # initialize rs1
li x24, 0x80000001 # initialize rs2
bgeu x7, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x80000001 # initialize rs1
li x24, 0x80000001 # initialize rs2
bgeu x7, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x25, 0x7fffffff # initialize rs1
li x6, 0x7fffffff # initialize rs2
bgeu x25, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x7fffffff # initialize rs1
li x6, 0x7fffffff # initialize rs2
bgeu x25, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x3, 0x7fffffff # initialize rs1
li x16, 0x7ffffffe # initialize rs2
bgeu x3, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x7ffffffe # initialize rs1
li x16, 0x7ffffffe # initialize rs2
bgeu x3, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x13, 0x7fffffff # initialize rs1
li x8, 0xffffffff # initialize rs2
bgeu x13, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0xffffffff # initialize rs1
li x8, 0xffffffff # initialize rs2
bgeu x13, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x27, 0x7fffffff # initialize rs1
li x24, 0xfffffffe # initialize rs2
bgeu x27, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0xfffffffe # initialize rs1
li x24, 0xfffffffe # initialize rs2
bgeu x27, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x28, 0x7fffffff # initialize rs1
li x9, 0x5bbc8872 # initialize rs2
bgeu x28, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x5bbc8872 # initialize rs1
li x9, 0x5bbc8872 # initialize rs2
bgeu x28, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x6, 0x7fffffff # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
bgeu x6, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0xaaaaaaaa # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
bgeu x6, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x15, 0x7fffffff # initialize rs1
li x30, 0x55555555 # initialize rs2
bgeu x15, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x55555555 # initialize rs1
li x30, 0x55555555 # initialize rs2
bgeu x15, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x5, 0x7ffffffe # initialize rs1
li x18, 0x00000000 # initialize rs2
bgeu x5, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x00000000 # initialize rs1
li x18, 0x00000000 # initialize rs2
bgeu x5, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x19, 0x7ffffffe # initialize rs1
li x28, 0x00000001 # initialize rs2
bgeu x19, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x00000001 # initialize rs1
li x28, 0x00000001 # initialize rs2
bgeu x19, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x13, 0x7ffffffe # initialize rs1
li x21, 0x00000002 # initialize rs2
bgeu x13, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x00000002 # initialize rs1
li x21, 0x00000002 # initialize rs2
bgeu x13, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x13, 0x7ffffffe # initialize rs1
li x25, 0x80000000 # initialize rs2
bgeu x13, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x80000000 # initialize rs1
li x25, 0x80000000 # initialize rs2
bgeu x13, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x13, 0x7ffffffe # initialize rs1
li x17, 0x80000001 # initialize rs2
bgeu x13, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x80000001 # initialize rs1
li x17, 0x80000001 # initialize rs2
bgeu x13, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x12, 0x7ffffffe # initialize rs1
li x24, 0x7fffffff # initialize rs2
bgeu x12, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x7fffffff # initialize rs1
li x24, 0x7fffffff # initialize rs2
bgeu x12, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x11, 0x7ffffffe # initialize rs1
li x15, 0x7ffffffe # initialize rs2
bgeu x11, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x7ffffffe # initialize rs1
li x15, 0x7ffffffe # initialize rs2
bgeu x11, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x30, 0x7ffffffe # initialize rs1
li x28, 0xffffffff # initialize rs2
bgeu x30, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0xffffffff # initialize rs1
li x28, 0xffffffff # initialize rs2
bgeu x30, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x31, 0x7ffffffe # initialize rs1
li x5, 0xfffffffe # initialize rs2
bgeu x31, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0xfffffffe # initialize rs1
li x5, 0xfffffffe # initialize rs2
bgeu x31, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x1, 0x7ffffffe # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
bgeu x1, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x5bbc8872 # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
bgeu x1, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x26, 0x7ffffffe # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
bgeu x26, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0xaaaaaaaa # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
bgeu x26, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x9, 0x7ffffffe # initialize rs1
li x20, 0x55555555 # initialize rs2
bgeu x9, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x55555555 # initialize rs1
li x20, 0x55555555 # initialize rs2
bgeu x9, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x25, 0xffffffff # initialize rs1
li x1, 0x00000000 # initialize rs2
bgeu x25, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x00000000 # initialize rs1
li x1, 0x00000000 # initialize rs2
bgeu x25, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x8, 0xffffffff # initialize rs1
li x3, 0x00000001 # initialize rs2
bgeu x8, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x00000001 # initialize rs1
li x3, 0x00000001 # initialize rs2
bgeu x8, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x6, 0xffffffff # initialize rs1
li x3, 0x00000002 # initialize rs2
bgeu x6, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x00000002 # initialize rs1
li x3, 0x00000002 # initialize rs2
bgeu x6, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x29, 0xffffffff # initialize rs1
li x31, 0x80000000 # initialize rs2
bgeu x29, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x80000000 # initialize rs1
li x31, 0x80000000 # initialize rs2
bgeu x29, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x12, 0xffffffff # initialize rs1
li x13, 0x80000001 # initialize rs2
bgeu x12, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x80000001 # initialize rs1
li x13, 0x80000001 # initialize rs2
bgeu x12, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x30, 0xffffffff # initialize rs1
li x13, 0x7fffffff # initialize rs2
bgeu x30, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x7fffffff # initialize rs1
li x13, 0x7fffffff # initialize rs2
bgeu x30, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x7, 0xffffffff # initialize rs1
li x1, 0x7ffffffe # initialize rs2
bgeu x7, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x7ffffffe # initialize rs1
li x1, 0x7ffffffe # initialize rs2
bgeu x7, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x11, 0xffffffff # initialize rs1
li x24, 0xffffffff # initialize rs2
bgeu x11, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0xffffffff # initialize rs1
li x24, 0xffffffff # initialize rs2
bgeu x11, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x23, 0xffffffff # initialize rs1
li x11, 0xfffffffe # initialize rs2
bgeu x23, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0xfffffffe # initialize rs1
li x11, 0xfffffffe # initialize rs2
bgeu x23, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x23, 0xffffffff # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
bgeu x23, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x5bbc8872 # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
bgeu x23, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x29, 0xffffffff # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
bgeu x29, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0xaaaaaaaa # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
bgeu x29, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x15, 0xffffffff # initialize rs1
li x8, 0x55555555 # initialize rs2
bgeu x15, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x55555555 # initialize rs1
li x8, 0x55555555 # initialize rs2
bgeu x15, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x14, 0xfffffffe # initialize rs1
li x22, 0x00000000 # initialize rs2
bgeu x14, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x00000000 # initialize rs1
li x22, 0x00000000 # initialize rs2
bgeu x14, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x9, 0xfffffffe # initialize rs1
li x14, 0x00000001 # initialize rs2
bgeu x9, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x00000001 # initialize rs1
li x14, 0x00000001 # initialize rs2
bgeu x9, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x3, 0xfffffffe # initialize rs1
li x19, 0x00000002 # initialize rs2
bgeu x3, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x00000002 # initialize rs1
li x19, 0x00000002 # initialize rs2
bgeu x3, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x12, 0xfffffffe # initialize rs1
li x19, 0x80000000 # initialize rs2
bgeu x12, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x80000000 # initialize rs1
li x19, 0x80000000 # initialize rs2
bgeu x12, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x17, 0xfffffffe # initialize rs1
li x25, 0x80000001 # initialize rs2
bgeu x17, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x80000001 # initialize rs1
li x25, 0x80000001 # initialize rs2
bgeu x17, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x11, 0xfffffffe # initialize rs1
li x5, 0x7fffffff # initialize rs2
bgeu x11, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x7fffffff # initialize rs1
li x5, 0x7fffffff # initialize rs2
bgeu x11, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x14, 0xfffffffe # initialize rs1
li x8, 0x7ffffffe # initialize rs2
bgeu x14, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x7ffffffe # initialize rs1
li x8, 0x7ffffffe # initialize rs2
bgeu x14, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x13, 0xfffffffe # initialize rs1
li x9, 0xffffffff # initialize rs2
bgeu x13, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0xffffffff # initialize rs1
li x9, 0xffffffff # initialize rs2
bgeu x13, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x10, 0xfffffffe # initialize rs1
li x14, 0xfffffffe # initialize rs2
bgeu x10, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0xfffffffe # initialize rs1
li x14, 0xfffffffe # initialize rs2
bgeu x10, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x25, 0xfffffffe # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
bgeu x25, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x5bbc8872 # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
bgeu x25, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x29, 0xfffffffe # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
bgeu x29, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0xaaaaaaaa # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
bgeu x29, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x1, 0xfffffffe # initialize rs1
li x31, 0x55555555 # initialize rs2
bgeu x1, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x55555555 # initialize rs1
li x31, 0x55555555 # initialize rs2
bgeu x1, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x27, 0x5bbc8872 # initialize rs1
li x10, 0x00000000 # initialize rs2
bgeu x27, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x00000000 # initialize rs1
li x10, 0x00000000 # initialize rs2
bgeu x27, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x9, 0x5bbc8872 # initialize rs1
li x15, 0x00000001 # initialize rs2
bgeu x9, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x00000001 # initialize rs1
li x15, 0x00000001 # initialize rs2
bgeu x9, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x17, 0x5bbc8872 # initialize rs1
li x10, 0x00000002 # initialize rs2
bgeu x17, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x00000002 # initialize rs1
li x10, 0x00000002 # initialize rs2
bgeu x17, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x1, 0x5bbc8872 # initialize rs1
li x5, 0x80000000 # initialize rs2
bgeu x1, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x80000000 # initialize rs1
li x5, 0x80000000 # initialize rs2
bgeu x1, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x19, 0x5bbc8872 # initialize rs1
li x8, 0x80000001 # initialize rs2
bgeu x19, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x80000001 # initialize rs1
li x8, 0x80000001 # initialize rs2
bgeu x19, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x10, 0x5bbc8872 # initialize rs1
li x16, 0x7fffffff # initialize rs2
bgeu x10, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x7fffffff # initialize rs1
li x16, 0x7fffffff # initialize rs2
bgeu x10, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x19, 0x5bbc8872 # initialize rs1
li x30, 0x7ffffffe # initialize rs2
bgeu x19, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x7ffffffe # initialize rs1
li x30, 0x7ffffffe # initialize rs2
bgeu x19, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x15, 0x5bbc8872 # initialize rs1
li x18, 0xffffffff # initialize rs2
bgeu x15, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0xffffffff # initialize rs1
li x18, 0xffffffff # initialize rs2
bgeu x15, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x31, 0x5bbc8872 # initialize rs1
li x21, 0xfffffffe # initialize rs2
bgeu x31, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0xfffffffe # initialize rs1
li x21, 0xfffffffe # initialize rs2
bgeu x31, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x31, 0x5bbc8872 # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
bgeu x31, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x5bbc8872 # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
bgeu x31, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x31, 0x5bbc8872 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
bgeu x31, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0xaaaaaaaa # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
bgeu x31, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x17, 0x5bbc8872 # initialize rs1
li x24, 0x55555555 # initialize rs2
bgeu x17, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x55555555 # initialize rs1
li x24, 0x55555555 # initialize rs2
bgeu x17, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x18, 0xaaaaaaaa # initialize rs1
li x15, 0x00000000 # initialize rs2
bgeu x18, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x00000000 # initialize rs1
li x15, 0x00000000 # initialize rs2
bgeu x18, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x9, 0xaaaaaaaa # initialize rs1
li x8, 0x00000001 # initialize rs2
bgeu x9, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x00000001 # initialize rs1
li x8, 0x00000001 # initialize rs2
bgeu x9, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x24, 0xaaaaaaaa # initialize rs1
li x22, 0x00000002 # initialize rs2
bgeu x24, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x00000002 # initialize rs1
li x22, 0x00000002 # initialize rs2
bgeu x24, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x21, 0xaaaaaaaa # initialize rs1
li x31, 0x80000000 # initialize rs2
bgeu x21, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x80000000 # initialize rs1
li x31, 0x80000000 # initialize rs2
bgeu x21, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x8, 0xaaaaaaaa # initialize rs1
li x17, 0x80000001 # initialize rs2
bgeu x8, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x80000001 # initialize rs1
li x17, 0x80000001 # initialize rs2
bgeu x8, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x25, 0xaaaaaaaa # initialize rs1
li x15, 0x7fffffff # initialize rs2
bgeu x25, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x7fffffff # initialize rs1
li x15, 0x7fffffff # initialize rs2
bgeu x25, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x27, 0xaaaaaaaa # initialize rs1
li x7, 0x7ffffffe # initialize rs2
bgeu x27, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x7ffffffe # initialize rs1
li x7, 0x7ffffffe # initialize rs2
bgeu x27, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x14, 0xaaaaaaaa # initialize rs1
li x31, 0xffffffff # initialize rs2
bgeu x14, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0xffffffff # initialize rs1
li x31, 0xffffffff # initialize rs2
bgeu x14, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x1, 0xaaaaaaaa # initialize rs1
li x23, 0xfffffffe # initialize rs2
bgeu x1, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0xfffffffe # initialize rs1
li x23, 0xfffffffe # initialize rs2
bgeu x1, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x27, 0xaaaaaaaa # initialize rs1
li x1, 0x5bbc8872 # initialize rs2
bgeu x27, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x5bbc8872 # initialize rs1
li x1, 0x5bbc8872 # initialize rs2
bgeu x27, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x24, 0xaaaaaaaa # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
bgeu x24, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0xaaaaaaaa # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
bgeu x24, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x22, 0xaaaaaaaa # initialize rs1
li x10, 0x55555555 # initialize rs2
bgeu x22, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x55555555 # initialize rs1
li x10, 0x55555555 # initialize rs2
bgeu x22, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x18, 0x55555555 # initialize rs1
li x31, 0x00000000 # initialize rs2
bgeu x18, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x00000000 # initialize rs1
li x31, 0x00000000 # initialize rs2
bgeu x18, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x23, 0x55555555 # initialize rs1
li x25, 0x00000001 # initialize rs2
bgeu x23, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x00000001 # initialize rs1
li x25, 0x00000001 # initialize rs2
bgeu x23, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x24, 0x55555555 # initialize rs1
li x6, 0x00000002 # initialize rs2
bgeu x24, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x00000002 # initialize rs1
li x6, 0x00000002 # initialize rs2
bgeu x24, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x1, 0x55555555 # initialize rs1
li x9, 0x80000000 # initialize rs2
bgeu x1, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x80000000 # initialize rs1
li x9, 0x80000000 # initialize rs2
bgeu x1, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x10, 0x55555555 # initialize rs1
li x2, 0x80000001 # initialize rs2
bgeu x10, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x80000001 # initialize rs1
li x2, 0x80000001 # initialize rs2
bgeu x10, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x26, 0x55555555 # initialize rs1
li x19, 0x7fffffff # initialize rs2
bgeu x26, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x7fffffff # initialize rs1
li x19, 0x7fffffff # initialize rs2
bgeu x26, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x14, 0x55555555 # initialize rs1
li x3, 0x7ffffffe # initialize rs2
bgeu x14, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x7ffffffe # initialize rs1
li x3, 0x7ffffffe # initialize rs2
bgeu x14, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x17, 0x55555555 # initialize rs1
li x6, 0xffffffff # initialize rs2
bgeu x17, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0xffffffff # initialize rs1
li x6, 0xffffffff # initialize rs2
bgeu x17, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x3, 0x55555555 # initialize rs1
li x21, 0xfffffffe # initialize rs2
bgeu x3, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0xfffffffe # initialize rs1
li x21, 0xfffffffe # initialize rs2
bgeu x3, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x1, 0x55555555 # initialize rs1
li x2, 0x5bbc8872 # initialize rs2
bgeu x1, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x5bbc8872 # initialize rs1
li x2, 0x5bbc8872 # initialize rs2
bgeu x1, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x17, 0x55555555 # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
bgeu x17, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0xaaaaaaaa # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
bgeu x17, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x1, 0x55555555 # initialize rs1
li x25, 0x55555555 # initialize rs2
bgeu x1, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x55555555 # initialize rs1
li x25, 0x55555555 # initialize rs2
bgeu x1, x25, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x82b7c995 # initialize rs1
li x0, 0xa85abc42 # initialize rs2
bgeu x0, x0, 1f # perform operation
nop
nop
1:
# same values in both registers
li x0, 0xa85abc42 # initialize rs1
li x0, 0xa85abc42 # initialize rs2
bgeu x0, x0, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x20666af7 # initialize rs1
li x1, 0xd341236e # initialize rs2
bgeu x1, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0xd341236e # initialize rs1
li x1, 0xd341236e # initialize rs2
bgeu x1, x1, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x09976aad # initialize rs1
li x2, 0x38271a56 # initialize rs2
bgeu x2, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x38271a56 # initialize rs1
li x2, 0x38271a56 # initialize rs2
bgeu x2, x2, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xad1dc8e6 # initialize rs1
li x3, 0x1baf481a # initialize rs2
bgeu x3, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x1baf481a # initialize rs1
li x3, 0x1baf481a # initialize rs2
bgeu x3, x3, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x0d3ac0e1 # initialize rs1
li x4, 0xf4af723c # initialize rs2
bgeu x4, x4, 1f # perform operation
nop
nop
1:
# same values in both registers
li x4, 0xf4af723c # initialize rs1
li x4, 0xf4af723c # initialize rs2
bgeu x4, x4, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x31c43883 # initialize rs1
li x5, 0x402cc38a # initialize rs2
bgeu x5, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x402cc38a # initialize rs1
li x5, 0x402cc38a # initialize rs2
bgeu x5, x5, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x700477c4 # initialize rs1
li x6, 0xc74de182 # initialize rs2
bgeu x6, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0xc74de182 # initialize rs1
li x6, 0xc74de182 # initialize rs2
bgeu x6, x6, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xea417495 # initialize rs1
li x7, 0x006fc953 # initialize rs2
bgeu x7, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x006fc953 # initialize rs1
li x7, 0x006fc953 # initialize rs2
bgeu x7, x7, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x9e47398a # initialize rs1
li x8, 0x71f98c45 # initialize rs2
bgeu x8, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x71f98c45 # initialize rs1
li x8, 0x71f98c45 # initialize rs2
bgeu x8, x8, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x84c42a58 # initialize rs1
li x9, 0xf9d66907 # initialize rs2
bgeu x9, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0xf9d66907 # initialize rs1
li x9, 0xf9d66907 # initialize rs2
bgeu x9, x9, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x466e7956 # initialize rs1
li x10, 0x6f07873a # initialize rs2
bgeu x10, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x6f07873a # initialize rs1
li x10, 0x6f07873a # initialize rs2
bgeu x10, x10, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xccf2a3df # initialize rs1
li x11, 0xc708c48f # initialize rs2
bgeu x11, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0xc708c48f # initialize rs1
li x11, 0xc708c48f # initialize rs2
bgeu x11, x11, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xcf32c386 # initialize rs1
li x12, 0xbbc713dd # initialize rs2
bgeu x12, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0xbbc713dd # initialize rs1
li x12, 0xbbc713dd # initialize rs2
bgeu x12, x12, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xc1d3074d # initialize rs1
li x13, 0xa16d0564 # initialize rs2
bgeu x13, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0xa16d0564 # initialize rs1
li x13, 0xa16d0564 # initialize rs2
bgeu x13, x13, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xbfaa2bcf # initialize rs1
li x14, 0xc4e30192 # initialize rs2
bgeu x14, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0xc4e30192 # initialize rs1
li x14, 0xc4e30192 # initialize rs2
bgeu x14, x14, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x66a2e17f # initialize rs1
li x15, 0x69f53771 # initialize rs2
bgeu x15, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x69f53771 # initialize rs1
li x15, 0x69f53771 # initialize rs2
bgeu x15, x15, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x87ca7418 # initialize rs1
li x16, 0x22449ffc # initialize rs2
bgeu x16, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x22449ffc # initialize rs1
li x16, 0x22449ffc # initialize rs2
bgeu x16, x16, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x3929898f # initialize rs1
li x17, 0x23605ace # initialize rs2
bgeu x17, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x23605ace # initialize rs1
li x17, 0x23605ace # initialize rs2
bgeu x17, x17, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x1ed7908a # initialize rs1
li x18, 0x726a18cc # initialize rs2
bgeu x18, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x726a18cc # initialize rs1
li x18, 0x726a18cc # initialize rs2
bgeu x18, x18, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x1027e6a6 # initialize rs1
li x19, 0x8c2df752 # initialize rs2
bgeu x19, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x8c2df752 # initialize rs1
li x19, 0x8c2df752 # initialize rs2
bgeu x19, x19, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xbcffdc78 # initialize rs1
li x20, 0xf7be3d07 # initialize rs2
bgeu x20, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0xf7be3d07 # initialize rs1
li x20, 0xf7be3d07 # initialize rs2
bgeu x20, x20, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x36907b2a # initialize rs1
li x21, 0x0baa95e7 # initialize rs2
bgeu x21, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x0baa95e7 # initialize rs1
li x21, 0x0baa95e7 # initialize rs2
bgeu x21, x21, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x3fa930e5 # initialize rs1
li x22, 0x665fde3b # initialize rs2
bgeu x22, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x665fde3b # initialize rs1
li x22, 0x665fde3b # initialize rs2
bgeu x22, x22, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x1aacf9b1 # initialize rs1
li x23, 0x502c0ad5 # initialize rs2
bgeu x23, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x502c0ad5 # initialize rs1
li x23, 0x502c0ad5 # initialize rs2
bgeu x23, x23, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x129516d4 # initialize rs1
li x24, 0x22e02aad # initialize rs2
bgeu x24, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x22e02aad # initialize rs1
li x24, 0x22e02aad # initialize rs2
bgeu x24, x24, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xcf38bb1a # initialize rs1
li x25, 0x00eb23d4 # initialize rs2
bgeu x25, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x00eb23d4 # initialize rs1
li x25, 0x00eb23d4 # initialize rs2
bgeu x25, x25, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xb98f4829 # initialize rs1
li x26, 0x9e263804 # initialize rs2
bgeu x26, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x9e263804 # initialize rs1
li x26, 0x9e263804 # initialize rs2
bgeu x26, x26, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x8f29fc9a # initialize rs1
li x27, 0x85352355 # initialize rs2
bgeu x27, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x85352355 # initialize rs1
li x27, 0x85352355 # initialize rs2
bgeu x27, x27, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x8929aad8 # initialize rs1
li x28, 0x773d491d # initialize rs2
bgeu x28, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x773d491d # initialize rs1
li x28, 0x773d491d # initialize rs2
bgeu x28, x28, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xb9a86b4e # initialize rs1
li x29, 0x3e6b2f2e # initialize rs2
bgeu x29, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x3e6b2f2e # initialize rs1
li x29, 0x3e6b2f2e # initialize rs2
bgeu x29, x29, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x9045820f # initialize rs1
li x30, 0x1f80075a # initialize rs2
bgeu x30, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x1f80075a # initialize rs1
li x30, 0x1f80075a # initialize rs2
bgeu x30, x30, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xf46cb8f8 # initialize rs1
li x31, 0xefd22975 # initialize rs2
bgeu x31, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0xefd22975 # initialize rs1
li x31, 0xefd22975 # initialize rs2
bgeu x31, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_offset negative bin
j 2f # jump past backward branch target
1: j 3f # backward branch target: jump past backward branch
2: bgeu x0, x0, 1b # backward branch
3: nop # done with sequence

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x8, x26 # perform first operation
bgeu x2, x17, arbitraryLabel13
nop
arbitraryLabel13:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x12, x6 # perform first operation
bgeu x30, x19, arbitraryLabel14
nop
arbitraryLabel14:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x11, x31, x10 # perform first operation
bgeu x21, x19, arbitraryLabel15
nop
arbitraryLabel15:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x29, x3, x5 # perform first operation
bgeu x29, x13, arbitraryLabel16
nop
arbitraryLabel16:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x14, x8 # perform first operation
bgeu x6, x21, arbitraryLabel17
nop
arbitraryLabel17:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x14, x18, x11 # perform first operation
bgeu x30, x9, arbitraryLabel18
nop
arbitraryLabel18:
nop
 # perform second (triggering) operation

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
