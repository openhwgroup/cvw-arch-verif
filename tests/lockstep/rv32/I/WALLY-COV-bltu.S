///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/I/WALLY-COV-bltu.S
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
li x0, 0x2da78482 # initialize rs1
li x22, 0x0eacbe6b # initialize rs2
bltu x0, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x0, 0x0eacbe6b # initialize rs1
li x22, 0x0eacbe6b # initialize rs2
bltu x0, x22, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x7d0bb086 # initialize rs1
li x5, 0x53407e02 # initialize rs2
bltu x1, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x53407e02 # initialize rs1
li x5, 0x53407e02 # initialize rs2
bltu x1, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x33b075e5 # initialize rs1
li x12, 0x727b3318 # initialize rs2
bltu x2, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x727b3318 # initialize rs1
li x12, 0x727b3318 # initialize rs2
bltu x2, x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x67490c49 # initialize rs1
li x7, 0x178cf179 # initialize rs2
bltu x3, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x178cf179 # initialize rs1
li x7, 0x178cf179 # initialize rs2
bltu x3, x7, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x30cde239 # initialize rs1
li x6, 0x3117038e # initialize rs2
bltu x4, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x4, 0x3117038e # initialize rs1
li x6, 0x3117038e # initialize rs2
bltu x4, x6, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xa45075c6 # initialize rs1
li x25, 0xa6bbfdc8 # initialize rs2
bltu x5, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0xa6bbfdc8 # initialize rs1
li x25, 0xa6bbfdc8 # initialize rs2
bltu x5, x25, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x3ccb076b # initialize rs1
li x11, 0x6141059c # initialize rs2
bltu x6, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x6141059c # initialize rs1
li x11, 0x6141059c # initialize rs2
bltu x6, x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xd2ddbf2c # initialize rs1
li x21, 0xb0686d72 # initialize rs2
bltu x7, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0xb0686d72 # initialize rs1
li x21, 0xb0686d72 # initialize rs2
bltu x7, x21, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x8138fa13 # initialize rs1
li x31, 0xe18cd50f # initialize rs2
bltu x8, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0xe18cd50f # initialize rs1
li x31, 0xe18cd50f # initialize rs2
bltu x8, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x600312f4 # initialize rs1
li x31, 0xc890ed77 # initialize rs2
bltu x9, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0xc890ed77 # initialize rs1
li x31, 0xc890ed77 # initialize rs2
bltu x9, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x832ead0b # initialize rs1
li x8, 0x68bc9078 # initialize rs2
bltu x10, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x68bc9078 # initialize rs1
li x8, 0x68bc9078 # initialize rs2
bltu x10, x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xbdbc7405 # initialize rs1
li x1, 0x7e18d2fb # initialize rs2
bltu x11, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x7e18d2fb # initialize rs1
li x1, 0x7e18d2fb # initialize rs2
bltu x11, x1, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xbdf94071 # initialize rs1
li x13, 0xcbad455f # initialize rs2
bltu x12, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0xcbad455f # initialize rs1
li x13, 0xcbad455f # initialize rs2
bltu x12, x13, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x65ddd018 # initialize rs1
li x20, 0xef4ccc08 # initialize rs2
bltu x13, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0xef4ccc08 # initialize rs1
li x20, 0xef4ccc08 # initialize rs2
bltu x13, x20, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xc976a675 # initialize rs1
li x9, 0xf676fe17 # initialize rs2
bltu x14, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0xf676fe17 # initialize rs1
li x9, 0xf676fe17 # initialize rs2
bltu x14, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xcad151e0 # initialize rs1
li x9, 0x93141d1b # initialize rs2
bltu x15, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x93141d1b # initialize rs1
li x9, 0x93141d1b # initialize rs2
bltu x15, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x533113dc # initialize rs1
li x23, 0x66978fef # initialize rs2
bltu x16, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x66978fef # initialize rs1
li x23, 0x66978fef # initialize rs2
bltu x16, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x8ff8e426 # initialize rs1
li x21, 0x01efd4ff # initialize rs2
bltu x17, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x01efd4ff # initialize rs1
li x21, 0x01efd4ff # initialize rs2
bltu x17, x21, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x59d399ea # initialize rs1
li x3, 0xbd15655f # initialize rs2
bltu x18, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0xbd15655f # initialize rs1
li x3, 0xbd15655f # initialize rs2
bltu x18, x3, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x787a7ad3 # initialize rs1
li x24, 0xeadf6029 # initialize rs2
bltu x19, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0xeadf6029 # initialize rs1
li x24, 0xeadf6029 # initialize rs2
bltu x19, x24, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xe179a98a # initialize rs1
li x15, 0xedfa390a # initialize rs2
bltu x20, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0xedfa390a # initialize rs1
li x15, 0xedfa390a # initialize rs2
bltu x20, x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x92e3d10d # initialize rs1
li x15, 0xea3e25ef # initialize rs2
bltu x21, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0xea3e25ef # initialize rs1
li x15, 0xea3e25ef # initialize rs2
bltu x21, x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x07213a84 # initialize rs1
li x31, 0x442ed521 # initialize rs2
bltu x22, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x442ed521 # initialize rs1
li x31, 0x442ed521 # initialize rs2
bltu x22, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xd1d2aa48 # initialize rs1
li x28, 0x00f86894 # initialize rs2
bltu x23, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x00f86894 # initialize rs1
li x28, 0x00f86894 # initialize rs2
bltu x23, x28, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x9a2ae493 # initialize rs1
li x18, 0x00ca0393 # initialize rs2
bltu x24, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x00ca0393 # initialize rs1
li x18, 0x00ca0393 # initialize rs2
bltu x24, x18, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xe6cad200 # initialize rs1
li x22, 0x88278b4b # initialize rs2
bltu x25, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x88278b4b # initialize rs1
li x22, 0x88278b4b # initialize rs2
bltu x25, x22, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xdde1ca1a # initialize rs1
li x15, 0xa1c7a11f # initialize rs2
bltu x26, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0xa1c7a11f # initialize rs1
li x15, 0xa1c7a11f # initialize rs2
bltu x26, x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xef065736 # initialize rs1
li x11, 0xff4cb063 # initialize rs2
bltu x27, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0xff4cb063 # initialize rs1
li x11, 0xff4cb063 # initialize rs2
bltu x27, x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xeaf7bcf6 # initialize rs1
li x15, 0x41f5548b # initialize rs2
bltu x28, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x41f5548b # initialize rs1
li x15, 0x41f5548b # initialize rs2
bltu x28, x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x12557038 # initialize rs1
li x30, 0x1b498e9b # initialize rs2
bltu x29, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x1b498e9b # initialize rs1
li x30, 0x1b498e9b # initialize rs2
bltu x29, x30, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x5617b794 # initialize rs1
li x16, 0x815345a9 # initialize rs2
bltu x30, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x815345a9 # initialize rs1
li x16, 0x815345a9 # initialize rs2
bltu x30, x16, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xa68e60b2 # initialize rs1
li x24, 0x29cafd9b # initialize rs2
bltu x31, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x29cafd9b # initialize rs1
li x24, 0x29cafd9b # initialize rs2
bltu x31, x24, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x0)
li x19, 0xdc39d961 # initialize rs1
li x0, 0xc98f059c # initialize rs2
bltu x19, x0, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0xc98f059c # initialize rs1
li x0, 0xc98f059c # initialize rs2
bltu x19, x0, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x1)
li x29, 0x3149940c # initialize rs1
li x1, 0x9b117e8f # initialize rs2
bltu x29, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x9b117e8f # initialize rs1
li x1, 0x9b117e8f # initialize rs2
bltu x29, x1, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x2)
li x3, 0x05585838 # initialize rs1
li x2, 0x0a085b51 # initialize rs2
bltu x3, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x0a085b51 # initialize rs1
li x2, 0x0a085b51 # initialize rs2
bltu x3, x2, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x3)
li x22, 0x67f420b2 # initialize rs1
li x3, 0x7a357c37 # initialize rs2
bltu x22, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x7a357c37 # initialize rs1
li x3, 0x7a357c37 # initialize rs2
bltu x22, x3, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x4)
li x18, 0x4ad3efbc # initialize rs1
li x4, 0xf3ef8e0f # initialize rs2
bltu x18, x4, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0xf3ef8e0f # initialize rs1
li x4, 0xf3ef8e0f # initialize rs2
bltu x18, x4, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x21, 0x6c95bf81 # initialize rs1
li x5, 0x93dcbe28 # initialize rs2
bltu x21, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x93dcbe28 # initialize rs1
li x5, 0x93dcbe28 # initialize rs2
bltu x21, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x18, 0x8f2d3431 # initialize rs1
li x6, 0xb291fdd0 # initialize rs2
bltu x18, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0xb291fdd0 # initialize rs1
li x6, 0xb291fdd0 # initialize rs2
bltu x18, x6, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x16, 0x9b4d6a15 # initialize rs1
li x7, 0x57ebdf5b # initialize rs2
bltu x16, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x57ebdf5b # initialize rs1
li x7, 0x57ebdf5b # initialize rs2
bltu x16, x7, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x8)
li x11, 0x8f5ad757 # initialize rs1
li x8, 0x3a7d1ed4 # initialize rs2
bltu x11, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x3a7d1ed4 # initialize rs1
li x8, 0x3a7d1ed4 # initialize rs2
bltu x11, x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x9)
li x15, 0x5e1dfd12 # initialize rs1
li x9, 0x59034022 # initialize rs2
bltu x15, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x59034022 # initialize rs1
li x9, 0x59034022 # initialize rs2
bltu x15, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x10)
li x23, 0xab939ada # initialize rs1
li x10, 0x2abfc01f # initialize rs2
bltu x23, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x2abfc01f # initialize rs1
li x10, 0x2abfc01f # initialize rs2
bltu x23, x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x11)
li x15, 0x6e7fba78 # initialize rs1
li x11, 0x52a4dce8 # initialize rs2
bltu x15, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x52a4dce8 # initialize rs1
li x11, 0x52a4dce8 # initialize rs2
bltu x15, x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x12)
li x5, 0xd9101f50 # initialize rs1
li x12, 0x0b2f8ec7 # initialize rs2
bltu x5, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x0b2f8ec7 # initialize rs1
li x12, 0x0b2f8ec7 # initialize rs2
bltu x5, x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x13)
li x3, 0x69758d45 # initialize rs1
li x13, 0x116c6a5b # initialize rs2
bltu x3, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x116c6a5b # initialize rs1
li x13, 0x116c6a5b # initialize rs2
bltu x3, x13, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x14)
li x13, 0x209d88f8 # initialize rs1
li x14, 0x8dcbb5b3 # initialize rs2
bltu x13, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x8dcbb5b3 # initialize rs1
li x14, 0x8dcbb5b3 # initialize rs2
bltu x13, x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x15)
li x25, 0x762371e1 # initialize rs1
li x15, 0x79b1176e # initialize rs2
bltu x25, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x79b1176e # initialize rs1
li x15, 0x79b1176e # initialize rs2
bltu x25, x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x16)
li x1, 0x3343b369 # initialize rs1
li x16, 0x7f759d3f # initialize rs2
bltu x1, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x7f759d3f # initialize rs1
li x16, 0x7f759d3f # initialize rs2
bltu x1, x16, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x17)
li x21, 0xbed44599 # initialize rs1
li x17, 0x12245a18 # initialize rs2
bltu x21, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x12245a18 # initialize rs1
li x17, 0x12245a18 # initialize rs2
bltu x21, x17, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x18)
li x31, 0x301bf722 # initialize rs1
li x18, 0x1bddd9f2 # initialize rs2
bltu x31, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x1bddd9f2 # initialize rs1
li x18, 0x1bddd9f2 # initialize rs2
bltu x31, x18, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x19)
li x15, 0xf8d02035 # initialize rs1
li x19, 0x93008aee # initialize rs2
bltu x15, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x93008aee # initialize rs1
li x19, 0x93008aee # initialize rs2
bltu x15, x19, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x20)
li x29, 0x86f961ea # initialize rs1
li x20, 0x0b31b932 # initialize rs2
bltu x29, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x0b31b932 # initialize rs1
li x20, 0x0b31b932 # initialize rs2
bltu x29, x20, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x21)
li x14, 0x4b774605 # initialize rs1
li x21, 0x227b7dbe # initialize rs2
bltu x14, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x227b7dbe # initialize rs1
li x21, 0x227b7dbe # initialize rs2
bltu x14, x21, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x22)
li x17, 0xa60d40b8 # initialize rs1
li x22, 0x14ea273e # initialize rs2
bltu x17, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x14ea273e # initialize rs1
li x22, 0x14ea273e # initialize rs2
bltu x17, x22, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x23)
li x20, 0x965b8897 # initialize rs1
li x23, 0x57e7da3b # initialize rs2
bltu x20, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x57e7da3b # initialize rs1
li x23, 0x57e7da3b # initialize rs2
bltu x20, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x24)
li x20, 0x6ac35047 # initialize rs1
li x24, 0xbc271aa7 # initialize rs2
bltu x20, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0xbc271aa7 # initialize rs1
li x24, 0xbc271aa7 # initialize rs2
bltu x20, x24, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x25)
li x5, 0x1ef9fb09 # initialize rs1
li x25, 0x91b419f9 # initialize rs2
bltu x5, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x91b419f9 # initialize rs1
li x25, 0x91b419f9 # initialize rs2
bltu x5, x25, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x26)
li x13, 0xd123ab70 # initialize rs1
li x26, 0xdef6fe61 # initialize rs2
bltu x13, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0xdef6fe61 # initialize rs1
li x26, 0xdef6fe61 # initialize rs2
bltu x13, x26, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x27)
li x1, 0x635c4cb6 # initialize rs1
li x27, 0x01a1c078 # initialize rs2
bltu x1, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x01a1c078 # initialize rs1
li x27, 0x01a1c078 # initialize rs2
bltu x1, x27, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x28)
li x2, 0xbfae7e1a # initialize rs1
li x28, 0xe1a92813 # initialize rs2
bltu x2, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0xe1a92813 # initialize rs1
li x28, 0xe1a92813 # initialize rs2
bltu x2, x28, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x29)
li x20, 0x3bdaf0af # initialize rs1
li x29, 0xbb56c3ae # initialize rs2
bltu x20, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0xbb56c3ae # initialize rs1
li x29, 0xbb56c3ae # initialize rs2
bltu x20, x29, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x30)
li x27, 0x06b90143 # initialize rs1
li x30, 0xa51a39aa # initialize rs2
bltu x27, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0xa51a39aa # initialize rs1
li x30, 0xa51a39aa # initialize rs2
bltu x27, x30, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x31)
li x27, 0xe6bb8e3c # initialize rs1
li x31, 0x79901fdc # initialize rs2
bltu x27, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x79901fdc # initialize rs1
li x31, 0x79901fdc # initialize rs2
bltu x27, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x30, 0x00000000 # initialize rs1
li x31, 0xf25b3cf9 # initialize rs2
bltu x30, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0xf25b3cf9 # initialize rs1
li x31, 0xf25b3cf9 # initialize rs2
bltu x30, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x28, 0x00000001 # initialize rs1
li x3, 0xbc4f3694 # initialize rs2
bltu x28, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0xbc4f3694 # initialize rs1
li x3, 0xbc4f3694 # initialize rs2
bltu x28, x3, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x11, 0x00000002 # initialize rs1
li x6, 0x455ff471 # initialize rs2
bltu x11, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x455ff471 # initialize rs1
li x6, 0x455ff471 # initialize rs2
bltu x11, x6, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x3, 0x80000000 # initialize rs1
li x21, 0x1d890aba # initialize rs2
bltu x3, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x1d890aba # initialize rs1
li x21, 0x1d890aba # initialize rs2
bltu x3, x21, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x11, 0x80000001 # initialize rs1
li x7, 0x6208ca7d # initialize rs2
bltu x11, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x6208ca7d # initialize rs1
li x7, 0x6208ca7d # initialize rs2
bltu x11, x7, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x11, 0x7fffffff # initialize rs1
li x18, 0x440ec7d8 # initialize rs2
bltu x11, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x440ec7d8 # initialize rs1
li x18, 0x440ec7d8 # initialize rs2
bltu x11, x18, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x24, 0x7ffffffe # initialize rs1
li x12, 0xe9dc1e46 # initialize rs2
bltu x24, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0xe9dc1e46 # initialize rs1
li x12, 0xe9dc1e46 # initialize rs2
bltu x24, x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x16, 0xffffffff # initialize rs1
li x17, 0x86c81743 # initialize rs2
bltu x16, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x86c81743 # initialize rs1
li x17, 0x86c81743 # initialize rs2
bltu x16, x17, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x23, 0xfffffffe # initialize rs1
li x3, 0x8d26b74c # initialize rs2
bltu x23, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x8d26b74c # initialize rs1
li x3, 0x8d26b74c # initialize rs2
bltu x23, x3, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x16, 0x5bbc8872 # initialize rs1
li x12, 0x9c4e32f8 # initialize rs2
bltu x16, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x9c4e32f8 # initialize rs1
li x12, 0x9c4e32f8 # initialize rs2
bltu x16, x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x17, 0xaaaaaaaa # initialize rs1
li x29, 0xad0f642e # initialize rs2
bltu x17, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0xad0f642e # initialize rs1
li x29, 0xad0f642e # initialize rs2
bltu x17, x29, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x26, 0x55555555 # initialize rs1
li x24, 0x951245f5 # initialize rs2
bltu x26, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x951245f5 # initialize rs1
li x24, 0x951245f5 # initialize rs2
bltu x26, x24, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x14, 0xaf247ece # initialize rs1
li x24, 0x00000000 # initialize rs2
bltu x14, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x00000000 # initialize rs1
li x24, 0x00000000 # initialize rs2
bltu x14, x24, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x17, 0xd25ce929 # initialize rs1
li x27, 0x00000001 # initialize rs2
bltu x17, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x00000001 # initialize rs1
li x27, 0x00000001 # initialize rs2
bltu x17, x27, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x26, 0x9157fc79 # initialize rs1
li x29, 0x00000002 # initialize rs2
bltu x26, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x00000002 # initialize rs1
li x29, 0x00000002 # initialize rs2
bltu x26, x29, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x28, 0x1fc96866 # initialize rs1
li x15, 0x80000000 # initialize rs2
bltu x28, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x80000000 # initialize rs1
li x15, 0x80000000 # initialize rs2
bltu x28, x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x27, 0x51d0758a # initialize rs1
li x3, 0x80000001 # initialize rs2
bltu x27, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x80000001 # initialize rs1
li x3, 0x80000001 # initialize rs2
bltu x27, x3, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x11, 0xf2325d3c # initialize rs1
li x29, 0x7fffffff # initialize rs2
bltu x11, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x7fffffff # initialize rs1
li x29, 0x7fffffff # initialize rs2
bltu x11, x29, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x8, 0xb8dc4262 # initialize rs1
li x26, 0x7ffffffe # initialize rs2
bltu x8, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x7ffffffe # initialize rs1
li x26, 0x7ffffffe # initialize rs2
bltu x8, x26, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x2, 0xf0502816 # initialize rs1
li x23, 0xffffffff # initialize rs2
bltu x2, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0xffffffff # initialize rs1
li x23, 0xffffffff # initialize rs2
bltu x2, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x23, 0xbeffb7db # initialize rs1
li x15, 0xfffffffe # initialize rs2
bltu x23, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0xfffffffe # initialize rs1
li x15, 0xfffffffe # initialize rs2
bltu x23, x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x12, 0x8d5d049b # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
bltu x12, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x5bbc8872 # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
bltu x12, x27, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x15, 0xf176bc80 # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
bltu x15, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0xaaaaaaaa # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
bltu x15, x1, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x20, 0xc7799ab6 # initialize rs1
li x29, 0x55555555 # initialize rs2
bltu x20, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x55555555 # initialize rs1
li x29, 0x55555555 # initialize rs2
bltu x20, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x12, 0x00000000 # initialize rs1
li x26, 0x00000000 # initialize rs2
bltu x12, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x00000000 # initialize rs1
li x26, 0x00000000 # initialize rs2
bltu x12, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x11, 0x00000000 # initialize rs1
li x10, 0x00000001 # initialize rs2
bltu x11, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x00000001 # initialize rs1
li x10, 0x00000001 # initialize rs2
bltu x11, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x1, 0x00000000 # initialize rs1
li x30, 0x00000002 # initialize rs2
bltu x1, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x00000002 # initialize rs1
li x30, 0x00000002 # initialize rs2
bltu x1, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x12, 0x00000000 # initialize rs1
li x20, 0x80000000 # initialize rs2
bltu x12, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x80000000 # initialize rs1
li x20, 0x80000000 # initialize rs2
bltu x12, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x26, 0x00000000 # initialize rs1
li x7, 0x80000001 # initialize rs2
bltu x26, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x80000001 # initialize rs1
li x7, 0x80000001 # initialize rs2
bltu x26, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x5, 0x00000000 # initialize rs1
li x22, 0x7fffffff # initialize rs2
bltu x5, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x7fffffff # initialize rs1
li x22, 0x7fffffff # initialize rs2
bltu x5, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x18, 0x00000000 # initialize rs1
li x17, 0x7ffffffe # initialize rs2
bltu x18, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x7ffffffe # initialize rs1
li x17, 0x7ffffffe # initialize rs2
bltu x18, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x22, 0x00000000 # initialize rs1
li x10, 0xffffffff # initialize rs2
bltu x22, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0xffffffff # initialize rs1
li x10, 0xffffffff # initialize rs2
bltu x22, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x12, 0x00000000 # initialize rs1
li x11, 0xfffffffe # initialize rs2
bltu x12, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0xfffffffe # initialize rs1
li x11, 0xfffffffe # initialize rs2
bltu x12, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x20, 0x00000000 # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
bltu x20, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x5bbc8872 # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
bltu x20, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x20, 0x00000000 # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
bltu x20, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0xaaaaaaaa # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
bltu x20, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x2, 0x00000000 # initialize rs1
li x7, 0x55555555 # initialize rs2
bltu x2, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x55555555 # initialize rs1
li x7, 0x55555555 # initialize rs2
bltu x2, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x26, 0x00000001 # initialize rs1
li x1, 0x00000000 # initialize rs2
bltu x26, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x00000000 # initialize rs1
li x1, 0x00000000 # initialize rs2
bltu x26, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x18, 0x00000001 # initialize rs1
li x15, 0x00000001 # initialize rs2
bltu x18, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x00000001 # initialize rs1
li x15, 0x00000001 # initialize rs2
bltu x18, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x23, 0x00000001 # initialize rs1
li x9, 0x00000002 # initialize rs2
bltu x23, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x00000002 # initialize rs1
li x9, 0x00000002 # initialize rs2
bltu x23, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x22, 0x00000001 # initialize rs1
li x7, 0x80000000 # initialize rs2
bltu x22, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x80000000 # initialize rs1
li x7, 0x80000000 # initialize rs2
bltu x22, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x27, 0x00000001 # initialize rs1
li x2, 0x80000001 # initialize rs2
bltu x27, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x80000001 # initialize rs1
li x2, 0x80000001 # initialize rs2
bltu x27, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x16, 0x00000001 # initialize rs1
li x8, 0x7fffffff # initialize rs2
bltu x16, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x7fffffff # initialize rs1
li x8, 0x7fffffff # initialize rs2
bltu x16, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x19, 0x00000001 # initialize rs1
li x21, 0x7ffffffe # initialize rs2
bltu x19, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x7ffffffe # initialize rs1
li x21, 0x7ffffffe # initialize rs2
bltu x19, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x7, 0x00000001 # initialize rs1
li x21, 0xffffffff # initialize rs2
bltu x7, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0xffffffff # initialize rs1
li x21, 0xffffffff # initialize rs2
bltu x7, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x22, 0x00000001 # initialize rs1
li x8, 0xfffffffe # initialize rs2
bltu x22, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0xfffffffe # initialize rs1
li x8, 0xfffffffe # initialize rs2
bltu x22, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x3, 0x00000001 # initialize rs1
li x31, 0x5bbc8872 # initialize rs2
bltu x3, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x5bbc8872 # initialize rs1
li x31, 0x5bbc8872 # initialize rs2
bltu x3, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x7, 0x00000001 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
bltu x7, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0xaaaaaaaa # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
bltu x7, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x23, 0x00000001 # initialize rs1
li x31, 0x55555555 # initialize rs2
bltu x23, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x55555555 # initialize rs1
li x31, 0x55555555 # initialize rs2
bltu x23, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x30, 0x00000002 # initialize rs1
li x14, 0x00000000 # initialize rs2
bltu x30, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x00000000 # initialize rs1
li x14, 0x00000000 # initialize rs2
bltu x30, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x25, 0x00000002 # initialize rs1
li x11, 0x00000001 # initialize rs2
bltu x25, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x00000001 # initialize rs1
li x11, 0x00000001 # initialize rs2
bltu x25, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x10, 0x00000002 # initialize rs1
li x2, 0x00000002 # initialize rs2
bltu x10, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x00000002 # initialize rs1
li x2, 0x00000002 # initialize rs2
bltu x10, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x13, 0x00000002 # initialize rs1
li x29, 0x80000000 # initialize rs2
bltu x13, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x80000000 # initialize rs1
li x29, 0x80000000 # initialize rs2
bltu x13, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x15, 0x00000002 # initialize rs1
li x1, 0x80000001 # initialize rs2
bltu x15, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x80000001 # initialize rs1
li x1, 0x80000001 # initialize rs2
bltu x15, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x20, 0x00000002 # initialize rs1
li x18, 0x7fffffff # initialize rs2
bltu x20, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x7fffffff # initialize rs1
li x18, 0x7fffffff # initialize rs2
bltu x20, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x15, 0x00000002 # initialize rs1
li x6, 0x7ffffffe # initialize rs2
bltu x15, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x7ffffffe # initialize rs1
li x6, 0x7ffffffe # initialize rs2
bltu x15, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x26, 0x00000002 # initialize rs1
li x29, 0xffffffff # initialize rs2
bltu x26, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0xffffffff # initialize rs1
li x29, 0xffffffff # initialize rs2
bltu x26, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x27, 0x00000002 # initialize rs1
li x12, 0xfffffffe # initialize rs2
bltu x27, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0xfffffffe # initialize rs1
li x12, 0xfffffffe # initialize rs2
bltu x27, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x26, 0x00000002 # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
bltu x26, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x5bbc8872 # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
bltu x26, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x16, 0x00000002 # initialize rs1
li x18, 0xaaaaaaaa # initialize rs2
bltu x16, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0xaaaaaaaa # initialize rs1
li x18, 0xaaaaaaaa # initialize rs2
bltu x16, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x30, 0x00000002 # initialize rs1
li x2, 0x55555555 # initialize rs2
bltu x30, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x55555555 # initialize rs1
li x2, 0x55555555 # initialize rs2
bltu x30, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x28, 0x80000000 # initialize rs1
li x12, 0x00000000 # initialize rs2
bltu x28, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x00000000 # initialize rs1
li x12, 0x00000000 # initialize rs2
bltu x28, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x8, 0x80000000 # initialize rs1
li x18, 0x00000001 # initialize rs2
bltu x8, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x00000001 # initialize rs1
li x18, 0x00000001 # initialize rs2
bltu x8, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x24, 0x80000000 # initialize rs1
li x18, 0x00000002 # initialize rs2
bltu x24, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x00000002 # initialize rs1
li x18, 0x00000002 # initialize rs2
bltu x24, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x9, 0x80000000 # initialize rs1
li x17, 0x80000000 # initialize rs2
bltu x9, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x80000000 # initialize rs1
li x17, 0x80000000 # initialize rs2
bltu x9, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x3, 0x80000000 # initialize rs1
li x16, 0x80000001 # initialize rs2
bltu x3, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x80000001 # initialize rs1
li x16, 0x80000001 # initialize rs2
bltu x3, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x15, 0x80000000 # initialize rs1
li x16, 0x7fffffff # initialize rs2
bltu x15, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x7fffffff # initialize rs1
li x16, 0x7fffffff # initialize rs2
bltu x15, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x19, 0x80000000 # initialize rs1
li x8, 0x7ffffffe # initialize rs2
bltu x19, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x7ffffffe # initialize rs1
li x8, 0x7ffffffe # initialize rs2
bltu x19, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x28, 0x80000000 # initialize rs1
li x31, 0xffffffff # initialize rs2
bltu x28, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0xffffffff # initialize rs1
li x31, 0xffffffff # initialize rs2
bltu x28, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x28, 0x80000000 # initialize rs1
li x7, 0xfffffffe # initialize rs2
bltu x28, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0xfffffffe # initialize rs1
li x7, 0xfffffffe # initialize rs2
bltu x28, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x8, 0x80000000 # initialize rs1
li x20, 0x5bbc8872 # initialize rs2
bltu x8, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x5bbc8872 # initialize rs1
li x20, 0x5bbc8872 # initialize rs2
bltu x8, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x28, 0x80000000 # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
bltu x28, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0xaaaaaaaa # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
bltu x28, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x12, 0x80000000 # initialize rs1
li x9, 0x55555555 # initialize rs2
bltu x12, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x55555555 # initialize rs1
li x9, 0x55555555 # initialize rs2
bltu x12, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x14, 0x80000001 # initialize rs1
li x6, 0x00000000 # initialize rs2
bltu x14, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x00000000 # initialize rs1
li x6, 0x00000000 # initialize rs2
bltu x14, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x29, 0x80000001 # initialize rs1
li x7, 0x00000001 # initialize rs2
bltu x29, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x00000001 # initialize rs1
li x7, 0x00000001 # initialize rs2
bltu x29, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x15, 0x80000001 # initialize rs1
li x21, 0x00000002 # initialize rs2
bltu x15, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x00000002 # initialize rs1
li x21, 0x00000002 # initialize rs2
bltu x15, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x7, 0x80000001 # initialize rs1
li x3, 0x80000000 # initialize rs2
bltu x7, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x80000000 # initialize rs1
li x3, 0x80000000 # initialize rs2
bltu x7, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x8, 0x80000001 # initialize rs1
li x25, 0x80000001 # initialize rs2
bltu x8, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x80000001 # initialize rs1
li x25, 0x80000001 # initialize rs2
bltu x8, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x24, 0x80000001 # initialize rs1
li x2, 0x7fffffff # initialize rs2
bltu x24, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x7fffffff # initialize rs1
li x2, 0x7fffffff # initialize rs2
bltu x24, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x13, 0x80000001 # initialize rs1
li x8, 0x7ffffffe # initialize rs2
bltu x13, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x7ffffffe # initialize rs1
li x8, 0x7ffffffe # initialize rs2
bltu x13, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x10, 0x80000001 # initialize rs1
li x16, 0xffffffff # initialize rs2
bltu x10, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0xffffffff # initialize rs1
li x16, 0xffffffff # initialize rs2
bltu x10, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x23, 0x80000001 # initialize rs1
li x9, 0xfffffffe # initialize rs2
bltu x23, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0xfffffffe # initialize rs1
li x9, 0xfffffffe # initialize rs2
bltu x23, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x17, 0x80000001 # initialize rs1
li x30, 0x5bbc8872 # initialize rs2
bltu x17, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x5bbc8872 # initialize rs1
li x30, 0x5bbc8872 # initialize rs2
bltu x17, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x29, 0x80000001 # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
bltu x29, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0xaaaaaaaa # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
bltu x29, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x24, 0x80000001 # initialize rs1
li x17, 0x55555555 # initialize rs2
bltu x24, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x55555555 # initialize rs1
li x17, 0x55555555 # initialize rs2
bltu x24, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x21, 0x7fffffff # initialize rs1
li x6, 0x00000000 # initialize rs2
bltu x21, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x00000000 # initialize rs1
li x6, 0x00000000 # initialize rs2
bltu x21, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x3, 0x7fffffff # initialize rs1
li x1, 0x00000001 # initialize rs2
bltu x3, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x00000001 # initialize rs1
li x1, 0x00000001 # initialize rs2
bltu x3, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x26, 0x7fffffff # initialize rs1
li x2, 0x00000002 # initialize rs2
bltu x26, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x00000002 # initialize rs1
li x2, 0x00000002 # initialize rs2
bltu x26, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x13, 0x7fffffff # initialize rs1
li x24, 0x80000000 # initialize rs2
bltu x13, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x80000000 # initialize rs1
li x24, 0x80000000 # initialize rs2
bltu x13, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x21, 0x7fffffff # initialize rs1
li x22, 0x80000001 # initialize rs2
bltu x21, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x80000001 # initialize rs1
li x22, 0x80000001 # initialize rs2
bltu x21, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x18, 0x7fffffff # initialize rs1
li x9, 0x7fffffff # initialize rs2
bltu x18, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x7fffffff # initialize rs1
li x9, 0x7fffffff # initialize rs2
bltu x18, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x7, 0x7fffffff # initialize rs1
li x17, 0x7ffffffe # initialize rs2
bltu x7, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x7ffffffe # initialize rs1
li x17, 0x7ffffffe # initialize rs2
bltu x7, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x31, 0x7fffffff # initialize rs1
li x22, 0xffffffff # initialize rs2
bltu x31, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0xffffffff # initialize rs1
li x22, 0xffffffff # initialize rs2
bltu x31, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x3, 0x7fffffff # initialize rs1
li x31, 0xfffffffe # initialize rs2
bltu x3, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0xfffffffe # initialize rs1
li x31, 0xfffffffe # initialize rs2
bltu x3, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x2, 0x7fffffff # initialize rs1
li x17, 0x5bbc8872 # initialize rs2
bltu x2, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x5bbc8872 # initialize rs1
li x17, 0x5bbc8872 # initialize rs2
bltu x2, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x29, 0x7fffffff # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
bltu x29, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0xaaaaaaaa # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
bltu x29, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x8, 0x7fffffff # initialize rs1
li x27, 0x55555555 # initialize rs2
bltu x8, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x55555555 # initialize rs1
li x27, 0x55555555 # initialize rs2
bltu x8, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x12, 0x7ffffffe # initialize rs1
li x24, 0x00000000 # initialize rs2
bltu x12, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x00000000 # initialize rs1
li x24, 0x00000000 # initialize rs2
bltu x12, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x12, 0x7ffffffe # initialize rs1
li x15, 0x00000001 # initialize rs2
bltu x12, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x00000001 # initialize rs1
li x15, 0x00000001 # initialize rs2
bltu x12, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x9, 0x7ffffffe # initialize rs1
li x13, 0x00000002 # initialize rs2
bltu x9, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x00000002 # initialize rs1
li x13, 0x00000002 # initialize rs2
bltu x9, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x1, 0x7ffffffe # initialize rs1
li x10, 0x80000000 # initialize rs2
bltu x1, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x80000000 # initialize rs1
li x10, 0x80000000 # initialize rs2
bltu x1, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x31, 0x7ffffffe # initialize rs1
li x6, 0x80000001 # initialize rs2
bltu x31, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x80000001 # initialize rs1
li x6, 0x80000001 # initialize rs2
bltu x31, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x21, 0x7ffffffe # initialize rs1
li x29, 0x7fffffff # initialize rs2
bltu x21, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x7fffffff # initialize rs1
li x29, 0x7fffffff # initialize rs2
bltu x21, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x9, 0x7ffffffe # initialize rs1
li x22, 0x7ffffffe # initialize rs2
bltu x9, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x7ffffffe # initialize rs1
li x22, 0x7ffffffe # initialize rs2
bltu x9, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x31, 0x7ffffffe # initialize rs1
li x11, 0xffffffff # initialize rs2
bltu x31, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0xffffffff # initialize rs1
li x11, 0xffffffff # initialize rs2
bltu x31, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x3, 0x7ffffffe # initialize rs1
li x15, 0xfffffffe # initialize rs2
bltu x3, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0xfffffffe # initialize rs1
li x15, 0xfffffffe # initialize rs2
bltu x3, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x28, 0x7ffffffe # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
bltu x28, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x5bbc8872 # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
bltu x28, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x21, 0x7ffffffe # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
bltu x21, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0xaaaaaaaa # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
bltu x21, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x17, 0x7ffffffe # initialize rs1
li x7, 0x55555555 # initialize rs2
bltu x17, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x55555555 # initialize rs1
li x7, 0x55555555 # initialize rs2
bltu x17, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x20, 0xffffffff # initialize rs1
li x8, 0x00000000 # initialize rs2
bltu x20, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x00000000 # initialize rs1
li x8, 0x00000000 # initialize rs2
bltu x20, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x5, 0xffffffff # initialize rs1
li x27, 0x00000001 # initialize rs2
bltu x5, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x00000001 # initialize rs1
li x27, 0x00000001 # initialize rs2
bltu x5, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x29, 0xffffffff # initialize rs1
li x30, 0x00000002 # initialize rs2
bltu x29, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x00000002 # initialize rs1
li x30, 0x00000002 # initialize rs2
bltu x29, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x9, 0xffffffff # initialize rs1
li x31, 0x80000000 # initialize rs2
bltu x9, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x80000000 # initialize rs1
li x31, 0x80000000 # initialize rs2
bltu x9, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x19, 0xffffffff # initialize rs1
li x3, 0x80000001 # initialize rs2
bltu x19, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x80000001 # initialize rs1
li x3, 0x80000001 # initialize rs2
bltu x19, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x11, 0xffffffff # initialize rs1
li x29, 0x7fffffff # initialize rs2
bltu x11, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x7fffffff # initialize rs1
li x29, 0x7fffffff # initialize rs2
bltu x11, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x21, 0xffffffff # initialize rs1
li x3, 0x7ffffffe # initialize rs2
bltu x21, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x7ffffffe # initialize rs1
li x3, 0x7ffffffe # initialize rs2
bltu x21, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x25, 0xffffffff # initialize rs1
li x15, 0xffffffff # initialize rs2
bltu x25, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0xffffffff # initialize rs1
li x15, 0xffffffff # initialize rs2
bltu x25, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x15, 0xffffffff # initialize rs1
li x25, 0xfffffffe # initialize rs2
bltu x15, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0xfffffffe # initialize rs1
li x25, 0xfffffffe # initialize rs2
bltu x15, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x24, 0xffffffff # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
bltu x24, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x5bbc8872 # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
bltu x24, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x19, 0xffffffff # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
bltu x19, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0xaaaaaaaa # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
bltu x19, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x27, 0xffffffff # initialize rs1
li x16, 0x55555555 # initialize rs2
bltu x27, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x55555555 # initialize rs1
li x16, 0x55555555 # initialize rs2
bltu x27, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x21, 0xfffffffe # initialize rs1
li x28, 0x00000000 # initialize rs2
bltu x21, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x00000000 # initialize rs1
li x28, 0x00000000 # initialize rs2
bltu x21, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x15, 0xfffffffe # initialize rs1
li x22, 0x00000001 # initialize rs2
bltu x15, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x00000001 # initialize rs1
li x22, 0x00000001 # initialize rs2
bltu x15, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x21, 0xfffffffe # initialize rs1
li x17, 0x00000002 # initialize rs2
bltu x21, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x00000002 # initialize rs1
li x17, 0x00000002 # initialize rs2
bltu x21, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x18, 0xfffffffe # initialize rs1
li x15, 0x80000000 # initialize rs2
bltu x18, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x80000000 # initialize rs1
li x15, 0x80000000 # initialize rs2
bltu x18, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x22, 0xfffffffe # initialize rs1
li x18, 0x80000001 # initialize rs2
bltu x22, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x80000001 # initialize rs1
li x18, 0x80000001 # initialize rs2
bltu x22, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x11, 0xfffffffe # initialize rs1
li x28, 0x7fffffff # initialize rs2
bltu x11, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x7fffffff # initialize rs1
li x28, 0x7fffffff # initialize rs2
bltu x11, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x7, 0xfffffffe # initialize rs1
li x17, 0x7ffffffe # initialize rs2
bltu x7, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x7ffffffe # initialize rs1
li x17, 0x7ffffffe # initialize rs2
bltu x7, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x6, 0xfffffffe # initialize rs1
li x3, 0xffffffff # initialize rs2
bltu x6, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0xffffffff # initialize rs1
li x3, 0xffffffff # initialize rs2
bltu x6, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x8, 0xfffffffe # initialize rs1
li x5, 0xfffffffe # initialize rs2
bltu x8, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0xfffffffe # initialize rs1
li x5, 0xfffffffe # initialize rs2
bltu x8, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x7, 0xfffffffe # initialize rs1
li x2, 0x5bbc8872 # initialize rs2
bltu x7, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x5bbc8872 # initialize rs1
li x2, 0x5bbc8872 # initialize rs2
bltu x7, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x31, 0xfffffffe # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
bltu x31, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0xaaaaaaaa # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
bltu x31, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x31, 0xfffffffe # initialize rs1
li x17, 0x55555555 # initialize rs2
bltu x31, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x55555555 # initialize rs1
li x17, 0x55555555 # initialize rs2
bltu x31, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x18, 0x5bbc8872 # initialize rs1
li x29, 0x00000000 # initialize rs2
bltu x18, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x00000000 # initialize rs1
li x29, 0x00000000 # initialize rs2
bltu x18, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x17, 0x5bbc8872 # initialize rs1
li x18, 0x00000001 # initialize rs2
bltu x17, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x00000001 # initialize rs1
li x18, 0x00000001 # initialize rs2
bltu x17, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x29, 0x5bbc8872 # initialize rs1
li x18, 0x00000002 # initialize rs2
bltu x29, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x00000002 # initialize rs1
li x18, 0x00000002 # initialize rs2
bltu x29, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x18, 0x5bbc8872 # initialize rs1
li x25, 0x80000000 # initialize rs2
bltu x18, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x80000000 # initialize rs1
li x25, 0x80000000 # initialize rs2
bltu x18, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x19, 0x5bbc8872 # initialize rs1
li x2, 0x80000001 # initialize rs2
bltu x19, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x80000001 # initialize rs1
li x2, 0x80000001 # initialize rs2
bltu x19, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x6, 0x5bbc8872 # initialize rs1
li x1, 0x7fffffff # initialize rs2
bltu x6, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x7fffffff # initialize rs1
li x1, 0x7fffffff # initialize rs2
bltu x6, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x17, 0x5bbc8872 # initialize rs1
li x21, 0x7ffffffe # initialize rs2
bltu x17, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x7ffffffe # initialize rs1
li x21, 0x7ffffffe # initialize rs2
bltu x17, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x14, 0x5bbc8872 # initialize rs1
li x12, 0xffffffff # initialize rs2
bltu x14, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0xffffffff # initialize rs1
li x12, 0xffffffff # initialize rs2
bltu x14, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x9, 0x5bbc8872 # initialize rs1
li x24, 0xfffffffe # initialize rs2
bltu x9, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0xfffffffe # initialize rs1
li x24, 0xfffffffe # initialize rs2
bltu x9, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x31, 0x5bbc8872 # initialize rs1
li x21, 0x5bbc8872 # initialize rs2
bltu x31, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x5bbc8872 # initialize rs1
li x21, 0x5bbc8872 # initialize rs2
bltu x31, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x6, 0x5bbc8872 # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
bltu x6, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0xaaaaaaaa # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
bltu x6, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x17, 0x5bbc8872 # initialize rs1
li x22, 0x55555555 # initialize rs2
bltu x17, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x55555555 # initialize rs1
li x22, 0x55555555 # initialize rs2
bltu x17, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x15, 0xaaaaaaaa # initialize rs1
li x8, 0x00000000 # initialize rs2
bltu x15, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x00000000 # initialize rs1
li x8, 0x00000000 # initialize rs2
bltu x15, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x1, 0xaaaaaaaa # initialize rs1
li x24, 0x00000001 # initialize rs2
bltu x1, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x00000001 # initialize rs1
li x24, 0x00000001 # initialize rs2
bltu x1, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x13, 0xaaaaaaaa # initialize rs1
li x10, 0x00000002 # initialize rs2
bltu x13, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x00000002 # initialize rs1
li x10, 0x00000002 # initialize rs2
bltu x13, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x2, 0xaaaaaaaa # initialize rs1
li x10, 0x80000000 # initialize rs2
bltu x2, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x80000000 # initialize rs1
li x10, 0x80000000 # initialize rs2
bltu x2, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x23, 0xaaaaaaaa # initialize rs1
li x14, 0x80000001 # initialize rs2
bltu x23, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x80000001 # initialize rs1
li x14, 0x80000001 # initialize rs2
bltu x23, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x16, 0xaaaaaaaa # initialize rs1
li x9, 0x7fffffff # initialize rs2
bltu x16, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x7fffffff # initialize rs1
li x9, 0x7fffffff # initialize rs2
bltu x16, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x29, 0xaaaaaaaa # initialize rs1
li x5, 0x7ffffffe # initialize rs2
bltu x29, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x7ffffffe # initialize rs1
li x5, 0x7ffffffe # initialize rs2
bltu x29, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x5, 0xaaaaaaaa # initialize rs1
li x8, 0xffffffff # initialize rs2
bltu x5, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0xffffffff # initialize rs1
li x8, 0xffffffff # initialize rs2
bltu x5, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x10, 0xaaaaaaaa # initialize rs1
li x13, 0xfffffffe # initialize rs2
bltu x10, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0xfffffffe # initialize rs1
li x13, 0xfffffffe # initialize rs2
bltu x10, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x24, 0xaaaaaaaa # initialize rs1
li x14, 0x5bbc8872 # initialize rs2
bltu x24, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x5bbc8872 # initialize rs1
li x14, 0x5bbc8872 # initialize rs2
bltu x24, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x21, 0xaaaaaaaa # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
bltu x21, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0xaaaaaaaa # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
bltu x21, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x12, 0xaaaaaaaa # initialize rs1
li x28, 0x55555555 # initialize rs2
bltu x12, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x55555555 # initialize rs1
li x28, 0x55555555 # initialize rs2
bltu x12, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x7, 0x55555555 # initialize rs1
li x31, 0x00000000 # initialize rs2
bltu x7, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x00000000 # initialize rs1
li x31, 0x00000000 # initialize rs2
bltu x7, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x20, 0x55555555 # initialize rs1
li x11, 0x00000001 # initialize rs2
bltu x20, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x00000001 # initialize rs1
li x11, 0x00000001 # initialize rs2
bltu x20, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x20, 0x55555555 # initialize rs1
li x16, 0x00000002 # initialize rs2
bltu x20, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x00000002 # initialize rs1
li x16, 0x00000002 # initialize rs2
bltu x20, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x21, 0x55555555 # initialize rs1
li x15, 0x80000000 # initialize rs2
bltu x21, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x80000000 # initialize rs1
li x15, 0x80000000 # initialize rs2
bltu x21, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x21, 0x55555555 # initialize rs1
li x16, 0x80000001 # initialize rs2
bltu x21, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x80000001 # initialize rs1
li x16, 0x80000001 # initialize rs2
bltu x21, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x29, 0x55555555 # initialize rs1
li x8, 0x7fffffff # initialize rs2
bltu x29, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x7fffffff # initialize rs1
li x8, 0x7fffffff # initialize rs2
bltu x29, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x26, 0x55555555 # initialize rs1
li x17, 0x7ffffffe # initialize rs2
bltu x26, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x7ffffffe # initialize rs1
li x17, 0x7ffffffe # initialize rs2
bltu x26, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x19, 0x55555555 # initialize rs1
li x18, 0xffffffff # initialize rs2
bltu x19, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0xffffffff # initialize rs1
li x18, 0xffffffff # initialize rs2
bltu x19, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x14, 0x55555555 # initialize rs1
li x18, 0xfffffffe # initialize rs2
bltu x14, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0xfffffffe # initialize rs1
li x18, 0xfffffffe # initialize rs2
bltu x14, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x17, 0x55555555 # initialize rs1
li x11, 0x5bbc8872 # initialize rs2
bltu x17, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x5bbc8872 # initialize rs1
li x11, 0x5bbc8872 # initialize rs2
bltu x17, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x3, 0x55555555 # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
bltu x3, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0xaaaaaaaa # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
bltu x3, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x9, 0x55555555 # initialize rs1
li x31, 0x55555555 # initialize rs2
bltu x9, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x55555555 # initialize rs1
li x31, 0x55555555 # initialize rs2
bltu x9, x31, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xfd07a78a # initialize rs1
li x0, 0xd7c57a79 # initialize rs2
bltu x0, x0, 1f # perform operation
nop
nop
1:
# same values in both registers
li x0, 0xd7c57a79 # initialize rs1
li x0, 0xd7c57a79 # initialize rs2
bltu x0, x0, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x52e33381 # initialize rs1
li x1, 0x5cd5429b # initialize rs2
bltu x1, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x5cd5429b # initialize rs1
li x1, 0x5cd5429b # initialize rs2
bltu x1, x1, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xea8a7dea # initialize rs1
li x2, 0xae1ce98a # initialize rs2
bltu x2, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0xae1ce98a # initialize rs1
li x2, 0xae1ce98a # initialize rs2
bltu x2, x2, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xaba0fc43 # initialize rs1
li x3, 0xcb1e4e1c # initialize rs2
bltu x3, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0xcb1e4e1c # initialize rs1
li x3, 0xcb1e4e1c # initialize rs2
bltu x3, x3, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xc9e8c51d # initialize rs1
li x4, 0x6d585f82 # initialize rs2
bltu x4, x4, 1f # perform operation
nop
nop
1:
# same values in both registers
li x4, 0x6d585f82 # initialize rs1
li x4, 0x6d585f82 # initialize rs2
bltu x4, x4, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x45b36768 # initialize rs1
li x5, 0x74b48ef6 # initialize rs2
bltu x5, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x74b48ef6 # initialize rs1
li x5, 0x74b48ef6 # initialize rs2
bltu x5, x5, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xbbb4ac4e # initialize rs1
li x6, 0x60806dcb # initialize rs2
bltu x6, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x60806dcb # initialize rs1
li x6, 0x60806dcb # initialize rs2
bltu x6, x6, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x68c4e901 # initialize rs1
li x7, 0x1ffc6df3 # initialize rs2
bltu x7, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x1ffc6df3 # initialize rs1
li x7, 0x1ffc6df3 # initialize rs2
bltu x7, x7, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xc42615f0 # initialize rs1
li x8, 0x8beff46a # initialize rs2
bltu x8, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x8beff46a # initialize rs1
li x8, 0x8beff46a # initialize rs2
bltu x8, x8, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xc434bc1f # initialize rs1
li x9, 0x1fb90d38 # initialize rs2
bltu x9, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x1fb90d38 # initialize rs1
li x9, 0x1fb90d38 # initialize rs2
bltu x9, x9, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x7c5ad448 # initialize rs1
li x10, 0xcfc471d7 # initialize rs2
bltu x10, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0xcfc471d7 # initialize rs1
li x10, 0xcfc471d7 # initialize rs2
bltu x10, x10, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xb7471326 # initialize rs1
li x11, 0x4dbfec56 # initialize rs2
bltu x11, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x4dbfec56 # initialize rs1
li x11, 0x4dbfec56 # initialize rs2
bltu x11, x11, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x9d5ab378 # initialize rs1
li x12, 0x21d54791 # initialize rs2
bltu x12, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x21d54791 # initialize rs1
li x12, 0x21d54791 # initialize rs2
bltu x12, x12, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xd2136db6 # initialize rs1
li x13, 0xb44c37cb # initialize rs2
bltu x13, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0xb44c37cb # initialize rs1
li x13, 0xb44c37cb # initialize rs2
bltu x13, x13, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x0cb0a667 # initialize rs1
li x14, 0x6e8021f3 # initialize rs2
bltu x14, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x6e8021f3 # initialize rs1
li x14, 0x6e8021f3 # initialize rs2
bltu x14, x14, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x0be790e5 # initialize rs1
li x15, 0x373f41c8 # initialize rs2
bltu x15, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x373f41c8 # initialize rs1
li x15, 0x373f41c8 # initialize rs2
bltu x15, x15, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x7e857524 # initialize rs1
li x16, 0x9e9483ce # initialize rs2
bltu x16, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x9e9483ce # initialize rs1
li x16, 0x9e9483ce # initialize rs2
bltu x16, x16, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x86258343 # initialize rs1
li x17, 0x3c9ab00a # initialize rs2
bltu x17, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x3c9ab00a # initialize rs1
li x17, 0x3c9ab00a # initialize rs2
bltu x17, x17, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x2ef040a5 # initialize rs1
li x18, 0x675b0d56 # initialize rs2
bltu x18, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x675b0d56 # initialize rs1
li x18, 0x675b0d56 # initialize rs2
bltu x18, x18, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x65051d41 # initialize rs1
li x19, 0x26ac5b72 # initialize rs2
bltu x19, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x26ac5b72 # initialize rs1
li x19, 0x26ac5b72 # initialize rs2
bltu x19, x19, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x9256cea8 # initialize rs1
li x20, 0x73344b12 # initialize rs2
bltu x20, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x73344b12 # initialize rs1
li x20, 0x73344b12 # initialize rs2
bltu x20, x20, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xeb850020 # initialize rs1
li x21, 0xb69cbacb # initialize rs2
bltu x21, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0xb69cbacb # initialize rs1
li x21, 0xb69cbacb # initialize rs2
bltu x21, x21, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xa523575c # initialize rs1
li x22, 0x1114a2fe # initialize rs2
bltu x22, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x1114a2fe # initialize rs1
li x22, 0x1114a2fe # initialize rs2
bltu x22, x22, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xc2b70173 # initialize rs1
li x23, 0xdbad3c99 # initialize rs2
bltu x23, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0xdbad3c99 # initialize rs1
li x23, 0xdbad3c99 # initialize rs2
bltu x23, x23, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x3be52d22 # initialize rs1
li x24, 0x11f26d62 # initialize rs2
bltu x24, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x11f26d62 # initialize rs1
li x24, 0x11f26d62 # initialize rs2
bltu x24, x24, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x5b8c17b1 # initialize rs1
li x25, 0xce917af6 # initialize rs2
bltu x25, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0xce917af6 # initialize rs1
li x25, 0xce917af6 # initialize rs2
bltu x25, x25, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x25278b44 # initialize rs1
li x26, 0x74ed181a # initialize rs2
bltu x26, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x74ed181a # initialize rs1
li x26, 0x74ed181a # initialize rs2
bltu x26, x26, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x51ccd4e1 # initialize rs1
li x27, 0xa897f789 # initialize rs2
bltu x27, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0xa897f789 # initialize rs1
li x27, 0xa897f789 # initialize rs2
bltu x27, x27, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x3e1a9527 # initialize rs1
li x28, 0x245fa5af # initialize rs2
bltu x28, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x245fa5af # initialize rs1
li x28, 0x245fa5af # initialize rs2
bltu x28, x28, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xdd491842 # initialize rs1
li x29, 0x369013d1 # initialize rs2
bltu x29, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x369013d1 # initialize rs1
li x29, 0x369013d1 # initialize rs2
bltu x29, x29, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x8d55899b # initialize rs1
li x30, 0xdab7a4ae # initialize rs2
bltu x30, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0xdab7a4ae # initialize rs1
li x30, 0xdab7a4ae # initialize rs2
bltu x30, x30, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x6fb5a773 # initialize rs1
li x31, 0x1a8d10ab # initialize rs2
bltu x31, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x1a8d10ab # initialize rs1
li x31, 0x1a8d10ab # initialize rs2
bltu x31, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_offset negative bin
j 2f # jump past backward branch target
1: j 3f # backward branch target: jump past backward branch
2: bltu x0, x0, 1b # backward branch
3: nop # done with sequence

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x25, x23 # perform first operation
bltu x13, x15, arbitraryLabel25
nop
arbitraryLabel25:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x21, x17, x10 # perform first operation
bltu x8, x6, arbitraryLabel26
nop
arbitraryLabel26:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x30, x8 # perform first operation
bltu x24, x7, arbitraryLabel27
nop
arbitraryLabel27:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x9, x19 # perform first operation
bltu x2, x7, arbitraryLabel28
nop
arbitraryLabel28:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x13, x10, x14 # perform first operation
bltu x17, x13, arbitraryLabel29
nop
arbitraryLabel29:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x18, x17, x27 # perform first operation
bltu x29, x17, arbitraryLabel30
nop
arbitraryLabel30:
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
