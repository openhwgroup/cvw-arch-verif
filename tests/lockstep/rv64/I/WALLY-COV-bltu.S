///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-bltu.S
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
li x0, 0xfe7e88f707cc1fda # initialize rs1
li x22, 0xb8443149a0ffe85b # initialize rs2
bltu x0, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x0, 0xb8443149a0ffe85b # initialize rs1
li x22, 0xb8443149a0ffe85b # initialize rs2
bltu x0, x22, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xfd690ebc1c54dce0 # initialize rs1
li x17, 0x7d0bb086d3f2d078 # initialize rs2
bltu x1, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x7d0bb086d3f2d078 # initialize rs1
li x17, 0x7d0bb086d3f2d078 # initialize rs2
bltu x1, x17, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xdd417afe61d48e13 # initialize rs1
li x25, 0x59331c5877fa3ccb # initialize rs2
bltu x2, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x59331c5877fa3ccb # initialize rs1
li x25, 0x59331c5877fa3ccb # initialize rs2
bltu x2, x25, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xa073c1bee61d7e7b # initialize rs1
li x21, 0xb78ab2d06f19534a # initialize rs2
bltu x3, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0xb78ab2d06f19534a # initialize rs1
li x21, 0xb78ab2d06f19534a # initialize rs2
bltu x3, x21, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x30cde239c2ee58f4 # initialize rs1
li x6, 0x87aa60d0b65c84b7 # initialize rs2
bltu x4, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x4, 0x87aa60d0b65c84b7 # initialize rs1
li x6, 0x87aa60d0b65c84b7 # initialize rs2
bltu x4, x6, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x9504670520a614a5 # initialize rs1
li x17, 0x5eb8dd4a3ccb076b # initialize rs2
bltu x5, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x5eb8dd4a3ccb076b # initialize rs1
li x17, 0x5eb8dd4a3ccb076b # initialize rs2
bltu x5, x17, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x1f5cdba6a6e304bb # initialize rs1
li x21, 0xc01e2639a69f67cd # initialize rs2
bltu x6, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0xc01e2639a69f67cd # initialize rs1
li x21, 0xc01e2639a69f67cd # initialize rs2
bltu x6, x21, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x2091cec83e071fe4 # initialize rs1
li x25, 0x460ac8f9832ead0b # initialize rs2
bltu x7, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x460ac8f9832ead0b # initialize rs1
li x25, 0x460ac8f9832ead0b # initialize rs2
bltu x7, x25, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x7e18d2fb894639b2 # initialize rs1
li x15, 0xf631508cbcf0e168 # initialize rs2
bltu x8, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0xf631508cbcf0e168 # initialize rs1
li x15, 0xf631508cbcf0e168 # initialize rs2
bltu x8, x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xcbad455f5744c6c6 # initialize rs1
li x31, 0x673f4b080ba66e4c # initialize rs2
bltu x9, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x673f4b080ba66e4c # initialize rs1
li x31, 0x673f4b080ba66e4c # initialize rs2
bltu x9, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xef4ccc084aff5e7e # initialize rs1
li x25, 0xc976a675f7401f97 # initialize rs2
bltu x10, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0xc976a675f7401f97 # initialize rs1
li x25, 0xc976a675f7401f97 # initialize rs2
bltu x10, x25, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xcad151e0a3e0970e # initialize rs1
li x29, 0xee587cfb8f55ed15 # initialize rs2
bltu x11, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0xee587cfb8f55ed15 # initialize rs1
li x29, 0xee587cfb8f55ed15 # initialize rs2
bltu x11, x29, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xb881314a1bf69872 # initialize rs1
li x29, 0xa2b83ef3bf3553fc # initialize rs2
bltu x12, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0xa2b83ef3bf3553fc # initialize rs1
li x29, 0xa2b83ef3bf3553fc # initialize rs2
bltu x12, x29, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x25db354389026601 # initialize rs1
li x31, 0x59d399eadd61bf52 # initialize rs2
bltu x13, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x59d399eadd61bf52 # initialize rs1
li x31, 0x59d399eadd61bf52 # initialize rs2
bltu x13, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xeadf6029b1885166 # initialize rs1
li x25, 0xf94710e369a32c60 # initialize rs2
bltu x14, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0xf94710e369a32c60 # initialize rs1
li x25, 0xf94710e369a32c60 # initialize rs2
bltu x14, x25, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xe179a98adb08d641 # initialize rs1
li x9, 0xe06b9e275341402e # initialize rs2
bltu x15, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0xe06b9e275341402e # initialize rs1
li x9, 0xe06b9e275341402e # initialize rs2
bltu x15, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xda5043d59c3422e5 # initialize rs1
li x15, 0xea3e25ef243d8ee2 # initialize rs2
bltu x16, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0xea3e25ef243d8ee2 # initialize rs1
li x15, 0xea3e25ef243d8ee2 # initialize rs2
bltu x16, x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xdb5625447274c4ba # initialize rs1
li x1, 0x0ac567e8d1d2aa48 # initialize rs2
bltu x17, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x0ac567e8d1d2aa48 # initialize rs1
li x1, 0x0ac567e8d1d2aa48 # initialize rs2
bltu x17, x1, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xc2f4fda6c4bd8f9b # initialize rs1
li x26, 0x00ca0393c611196c # initialize rs2
bltu x18, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x00ca0393c611196c # initialize rs1
li x26, 0x00ca0393c611196c # initialize rs2
bltu x18, x26, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xe6cad2000faafefe # initialize rs1
li x18, 0x63ebc11088278b4b # initialize rs2
bltu x19, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x63ebc11088278b4b # initialize rs1
li x18, 0x63ebc11088278b4b # initialize rs2
bltu x19, x18, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xa1c7a11f177f6559 # initialize rs1
li x2, 0xff4cb0638f5b39bb # initialize rs2
bltu x20, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0xff4cb0638f5b39bb # initialize rs1
li x2, 0xff4cb0638f5b39bb # initialize rs2
bltu x20, x2, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xeaf7bcf630b165d5 # initialize rs1
li x15, 0x3f1f5d494fbdafe2 # initialize rs2
bltu x21, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x3f1f5d494fbdafe2 # initialize rs1
li x15, 0x3f1f5d494fbdafe2 # initialize rs2
bltu x21, x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xa4cc018fc44e772b # initialize rs1
li x7, 0x7e279ff623d127dc # initialize rs2
bltu x22, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x7e279ff623d127dc # initialize rs1
li x7, 0x7e279ff623d127dc # initialize rs2
bltu x22, x7, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x988d8f83c9f4b612 # initialize rs1
li x5, 0xf98b7042bb311ab8 # initialize rs2
bltu x23, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0xf98b7042bb311ab8 # initialize rs1
li x5, 0xf98b7042bb311ab8 # initialize rs2
bltu x23, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xa2c9f2fdcf6ee9d2 # initialize rs1
li x12, 0x572cc9640d4a1a3d # initialize rs2
bltu x24, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x572cc9640d4a1a3d # initialize rs1
li x12, 0x572cc9640d4a1a3d # initialize rs2
bltu x24, x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x907958ea23f0bb6d # initialize rs1
li x3, 0x67eed71ba42c3977 # initialize rs2
bltu x25, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x67eed71ba42c3977 # initialize rs1
li x3, 0x67eed71ba42c3977 # initialize rs2
bltu x25, x3, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x62f6ccba6254e185 # initialize rs1
li x10, 0x27b98f31f38cbdf1 # initialize rs2
bltu x26, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x27b98f31f38cbdf1 # initialize rs1
li x10, 0x27b98f31f38cbdf1 # initialize rs2
bltu x26, x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x75f72da4a3345b0b # initialize rs1
li x16, 0xa36574135d0ad835 # initialize rs2
bltu x27, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0xa36574135d0ad835 # initialize rs1
li x16, 0xa36574135d0ad835 # initialize rs2
bltu x27, x16, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x5c0085d182084098 # initialize rs1
li x27, 0xd3a6cceeda0c8d27 # initialize rs2
bltu x28, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0xd3a6cceeda0c8d27 # initialize rs1
li x27, 0xd3a6cceeda0c8d27 # initialize rs2
bltu x28, x27, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x7ed370bb665aaa8f # initialize rs1
li x16, 0x5e256adab77d7b17 # initialize rs2
bltu x29, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x5e256adab77d7b17 # initialize rs1
li x16, 0x5e256adab77d7b17 # initialize rs2
bltu x29, x16, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xe348c394fb6c9153 # initialize rs1
li x11, 0xc933374a24c3e477 # initialize rs2
bltu x30, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0xc933374a24c3e477 # initialize rs1
li x11, 0xc933374a24c3e477 # initialize rs2
bltu x30, x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x3640b7ea5f651f74 # initialize rs1
li x11, 0x4c933cb6f8d0a086 # initialize rs2
bltu x31, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x4c933cb6f8d0a086 # initialize rs1
li x11, 0x4c933cb6f8d0a086 # initialize rs2
bltu x31, x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x0)
li x19, 0xc98f059c68ee9f87 # initialize rs1
li x0, 0x11504f8702007349 # initialize rs2
bltu x19, x0, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x11504f8702007349 # initialize rs1
li x0, 0x11504f8702007349 # initialize rs2
bltu x19, x0, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x1)
li x15, 0xad1c8002b0d19c42 # initialize rs1
li x1, 0x67f420b2da02f523 # initialize rs2
bltu x15, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x67f420b2da02f523 # initialize rs1
li x1, 0x67f420b2da02f523 # initialize rs2
bltu x15, x1, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x2)
li x19, 0x6c26c7ebf3ef8e0f # initialize rs1
li x2, 0xea3642d94a66be60 # initialize rs2
bltu x19, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0xea3642d94a66be60 # initialize rs1
li x2, 0xea3642d94a66be60 # initialize rs2
bltu x19, x2, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x3)
li x13, 0xcf854fdc8ffcae68 # initialize rs1
li x3, 0x8fe6d1eb44cf063e # initialize rs2
bltu x13, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x8fe6d1eb44cf063e # initialize rs1
li x3, 0x8fe6d1eb44cf063e # initialize rs2
bltu x13, x3, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x5, 0x3efdbea69b4d6a15 # initialize rs1
li x4, 0x8f5ad757c5a60bf0 # initialize rs2
bltu x5, x4, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x8f5ad757c5a60bf0 # initialize rs1
li x4, 0x8f5ad757c5a60bf0 # initialize rs2
bltu x5, x4, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x5)
li x15, 0x0e6168705e1dfd12 # initialize rs1
li x5, 0xe5de94e60f92d045 # initialize rs2
bltu x15, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0xe5de94e60f92d045 # initialize rs1
li x5, 0xe5de94e60f92d045 # initialize rs2
bltu x15, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x5, 0x464db67c0871cfdb # initialize rs1
li x6, 0xaeb318fc6418dc09 # initialize rs2
bltu x5, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0xaeb318fc6418dc09 # initialize rs1
li x6, 0xaeb318fc6418dc09 # initialize rs2
bltu x5, x6, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x3, 0xed4482e5036ad8cb # initialize rs1
li x7, 0xa84b6c8201a48cf9 # initialize rs2
bltu x3, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0xa84b6c8201a48cf9 # initialize rs1
li x7, 0xa84b6c8201a48cf9 # initialize rs2
bltu x3, x7, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x8)
li x18, 0x1a69cf962f9aab4f # initialize rs1
li x8, 0x209d88f88ff7edd6 # initialize rs2
bltu x18, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x209d88f88ff7edd6 # initialize rs1
li x8, 0x209d88f88ff7edd6 # initialize rs2
bltu x18, x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x9)
li x2, 0x5b3c1b9d79b1176e # initialize rs1
li x9, 0xb8ff2c22a81b893c # initialize rs2
bltu x2, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0xb8ff2c22a81b893c # initialize rs1
li x9, 0xb8ff2c22a81b893c # initialize rs2
bltu x2, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x10)
li x1, 0x7f759d3fbc0df101 # initialize rs1
li x10, 0x4f4434886aac5f51 # initialize rs2
bltu x1, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x4f4434886aac5f51 # initialize rs1
li x10, 0x4f4434886aac5f51 # initialize rs2
bltu x1, x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x11)
li x31, 0x301bf722bff91f04 # initialize rs1
li x11, 0xf1fa654941b6959f # initialize rs2
bltu x31, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0xf1fa654941b6959f # initialize rs1
li x11, 0xf1fa654941b6959f # initialize rs2
bltu x31, x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x12)
li x2, 0x241a51c2f8d02035 # initialize rs1
li x12, 0x93008aeefa8df004 # initialize rs2
bltu x2, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x93008aeefa8df004 # initialize rs1
li x12, 0x93008aeefa8df004 # initialize rs2
bltu x2, x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x13)
li x31, 0x86f961eaf0cbbfa8 # initialize rs1
li x13, 0x0b31b9329dd2d6be # initialize rs2
bltu x31, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x0b31b9329dd2d6be # initialize rs1
li x13, 0x0b31b9329dd2d6be # initialize rs2
bltu x31, x13, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x14)
li x7, 0xe737476fe6484a8c # initialize rs1
li x14, 0x91c5e4a5573e178d # initialize rs2
bltu x7, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x91c5e4a5573e178d # initialize rs1
li x14, 0x91c5e4a5573e178d # initialize rs2
bltu x7, x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x15)
li x20, 0x71652c91965b8897 # initialize rs1
li x15, 0x06d2403b160c7c88 # initialize rs2
bltu x20, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x06d2403b160c7c88 # initialize rs1
li x15, 0x06d2403b160c7c88 # initialize rs2
bltu x20, x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x16)
li x14, 0x3a72b58f6199ac3f # initialize rs1
li x16, 0x48727d86215849ae # initialize rs2
bltu x14, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x48727d86215849ae # initialize rs1
li x16, 0x48727d86215849ae # initialize rs2
bltu x14, x16, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x17)
li x18, 0x008ee08e78544525 # initialize rs1
li x17, 0x5a61c3c468324317 # initialize rs2
bltu x18, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x5a61c3c468324317 # initialize rs1
li x17, 0x5a61c3c468324317 # initialize rs2
bltu x18, x17, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x18)
li x26, 0xfdb8ba9bc0b375b7 # initialize rs1
li x18, 0xdef6fe6190a2a928 # initialize rs2
bltu x26, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0xdef6fe6190a2a928 # initialize rs1
li x18, 0xdef6fe6190a2a928 # initialize rs2
bltu x26, x18, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x19)
li x9, 0x01a1c078e5db7535 # initialize rs1
li x19, 0xd1c2117d913350f5 # initialize rs2
bltu x9, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0xd1c2117d913350f5 # initialize rs1
li x19, 0xd1c2117d913350f5 # initialize rs2
bltu x9, x19, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x20)
li x25, 0xe1a92813b247d708 # initialize rs1
li x20, 0xa447b224ef752572 # initialize rs2
bltu x25, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0xa447b224ef752572 # initialize rs1
li x20, 0xa447b224ef752572 # initialize rs2
bltu x25, x20, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x21)
li x30, 0xbb56c3aec07cab89 # initialize rs1
li x21, 0xa89e8ee8b3ddd2e2 # initialize rs2
bltu x30, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0xa89e8ee8b3ddd2e2 # initialize rs1
li x21, 0xa89e8ee8b3ddd2e2 # initialize rs2
bltu x30, x21, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x22)
li x26, 0xdec7904a40ec6073 # initialize rs1
li x22, 0xd7169a8924959f33 # initialize rs2
bltu x26, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0xd7169a8924959f33 # initialize rs1
li x22, 0xd7169a8924959f33 # initialize rs2
bltu x26, x22, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x23)
li x16, 0xfa26d95323f09353 # initialize rs1
li x23, 0x82a0ec7ffe9158e0 # initialize rs2
bltu x16, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x82a0ec7ffe9158e0 # initialize rs1
li x23, 0x82a0ec7ffe9158e0 # initialize rs2
bltu x16, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x24)
li x31, 0x2f02acb4a8d4bcdf # initialize rs1
li x24, 0xd4b06f2bb8ded949 # initialize rs2
bltu x31, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0xd4b06f2bb8ded949 # initialize rs1
li x24, 0xd4b06f2bb8ded949 # initialize rs2
bltu x31, x24, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x25)
li x16, 0xd71ebe464b2f3ac8 # initialize rs1
li x25, 0xd753e6b98d97a1a2 # initialize rs2
bltu x16, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0xd753e6b98d97a1a2 # initialize rs1
li x25, 0xd753e6b98d97a1a2 # initialize rs2
bltu x16, x25, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x26)
li x25, 0xfe1fc7d7859deeae # initialize rs1
li x26, 0xa1c79cc30bc29a3a # initialize rs2
bltu x25, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0xa1c79cc30bc29a3a # initialize rs1
li x26, 0xa1c79cc30bc29a3a # initialize rs2
bltu x25, x26, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x27)
li x19, 0xa5cbf4644cc7cbf9 # initialize rs1
li x27, 0x84cd0e615982fc34 # initialize rs2
bltu x19, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x84cd0e615982fc34 # initialize rs1
li x27, 0x84cd0e615982fc34 # initialize rs2
bltu x19, x27, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x28)
li x12, 0x7d8b348871ac2509 # initialize rs1
li x28, 0x8f50e45a733ac563 # initialize rs2
bltu x12, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x8f50e45a733ac563 # initialize rs1
li x28, 0x8f50e45a733ac563 # initialize rs2
bltu x12, x28, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x29)
li x1, 0xf28c31ecc236fe3c # initialize rs1
li x29, 0x08e40d1c6a1ba700 # initialize rs2
bltu x1, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x08e40d1c6a1ba700 # initialize rs1
li x29, 0x08e40d1c6a1ba700 # initialize rs2
bltu x1, x29, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x30)
li x7, 0x62a6431ee4053025 # initialize rs1
li x30, 0x87b3aac74f93cc90 # initialize rs2
bltu x7, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x87b3aac74f93cc90 # initialize rs1
li x30, 0x87b3aac74f93cc90 # initialize rs2
bltu x7, x30, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x31)
li x7, 0xb81ca80c906c64b4 # initialize rs1
li x31, 0x95a0dfa6687cca40 # initialize rs2
bltu x7, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x95a0dfa6687cca40 # initialize rs1
li x31, 0x95a0dfa6687cca40 # initialize rs2
bltu x7, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x30, 0x0000000000000000 # initialize rs1
li x31, 0x0b243844f25b3cf9 # initialize rs2
bltu x30, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x0b243844f25b3cf9 # initialize rs1
li x31, 0x0b243844f25b3cf9 # initialize rs2
bltu x30, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x6, 0x0000000000000001 # initialize rs1
li x28, 0x0ff09b9cbc4f3694 # initialize rs2
bltu x6, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x0ff09b9cbc4f3694 # initialize rs1
li x28, 0x0ff09b9cbc4f3694 # initialize rs2
bltu x6, x28, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x25, 0x0000000000000002 # initialize rs1
li x7, 0x1d890aba03d5f220 # initialize rs2
bltu x25, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x1d890aba03d5f220 # initialize rs1
li x7, 0x1d890aba03d5f220 # initialize rs2
bltu x25, x7, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x29, 0x8000000000000000 # initialize rs1
li x20, 0x90833184bd412b70 # initialize rs2
bltu x29, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x90833184bd412b70 # initialize rs1
li x20, 0x90833184bd412b70 # initialize rs2
bltu x29, x20, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x24, 0x8000000000000001 # initialize rs1
li x14, 0xbb0c09a842f8cef5 # initialize rs2
bltu x24, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0xbb0c09a842f8cef5 # initialize rs1
li x14, 0xbb0c09a842f8cef5 # initialize rs2
bltu x24, x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x27, 0x7fffffffffffffff # initialize rs1
li x25, 0x165e2ef3736133a0 # initialize rs2
bltu x27, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x165e2ef3736133a0 # initialize rs1
li x25, 0x165e2ef3736133a0 # initialize rs2
bltu x27, x25, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x24, 0x7ffffffffffffffe # initialize rs1
li x14, 0x7a39de3bf8e8fd7e # initialize rs2
bltu x24, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x7a39de3bf8e8fd7e # initialize rs1
li x14, 0x7a39de3bf8e8fd7e # initialize rs2
bltu x24, x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x26, 0xffffffffffffffff # initialize rs1
li x12, 0x522b09169c4e32f8 # initialize rs2
bltu x26, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x522b09169c4e32f8 # initialize rs1
li x12, 0x522b09169c4e32f8 # initialize rs2
bltu x26, x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x17, 0xfffffffffffffffe # initialize rs1
li x29, 0x9e8b529b53d713d2 # initialize rs2
bltu x17, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x9e8b529b53d713d2 # initialize rs1
li x29, 0x9e8b529b53d713d2 # initialize rs2
bltu x17, x29, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x65e2596f39738904 # initialize rs2
bltu x17, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x65e2596f39738904 # initialize rs1
li x12, 0x65e2596f39738904 # initialize rs2
bltu x17, x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0xe7297c648fbe3596 # initialize rs2
bltu x26, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0xe7297c648fbe3596 # initialize rs1
li x23, 0xe7297c648fbe3596 # initialize rs2
bltu x26, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x7, 0x5555555555555555 # initialize rs1
li x13, 0x2590fa7555b5348e # initialize rs2
bltu x7, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x2590fa7555b5348e # initialize rs1
li x13, 0x2590fa7555b5348e # initialize rs2
bltu x7, x13, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x28, 0x00000000ffffffff # initialize rs1
li x25, 0x2f53be8c6591cab9 # initialize rs2
bltu x28, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x2f53be8c6591cab9 # initialize rs1
li x25, 0x2f53be8c6591cab9 # initialize rs2
bltu x28, x25, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x29, 0x00000000fffffffe # initialize rs1
li x1, 0x2a01ff28a945bdfc # initialize rs2
bltu x29, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x2a01ff28a945bdfc # initialize rs1
li x1, 0x2a01ff28a945bdfc # initialize rs2
bltu x29, x1, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x19, 0x0000000100000000 # initialize rs1
li x2, 0xa4590da9e8029223 # initialize rs2
bltu x19, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0xa4590da9e8029223 # initialize rs1
li x2, 0xa4590da9e8029223 # initialize rs2
bltu x19, x2, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x23, 0x0000000100000001 # initialize rs1
li x5, 0x2b447b9b9b96b4ee # initialize rs2
bltu x23, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x2b447b9b9b96b4ee # initialize rs1
li x5, 0x2b447b9b9b96b4ee # initialize rs2
bltu x23, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x14, 0x669072ab3e976f5f # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
bltu x14, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x0000000000000000 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
bltu x14, x24, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x14, 0xa33f228eff6e2272 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
bltu x14, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x0000000000000001 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
bltu x14, x19, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x16, 0x9b4f6f456edfe2ea # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
bltu x16, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x0000000000000002 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
bltu x16, x21, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x24, 0x2b50317384f30c6f # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
bltu x24, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x8000000000000000 # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
bltu x24, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x26, 0xb77e159e81b04461 # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
bltu x26, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x8000000000000001 # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
bltu x26, x27, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x29, 0x3a174e68beffb7db # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
bltu x29, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x7fffffffffffffff # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
bltu x29, x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x18, 0x731a083a5eb07022 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
bltu x18, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x7ffffffffffffffe # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
bltu x18, x7, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x31, 0x659c11a634e04927 # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
bltu x31, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0xffffffffffffffff # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
bltu x31, x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x8, 0x7eb6937e9a703b2c # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
bltu x8, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0xfffffffffffffffe # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
bltu x8, x1, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x18, 0x9cfff97b63d52844 # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
bltu x18, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
bltu x18, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x16, 0xc03c64798dc7694e # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x16, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x16, x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x24, 0xa153459c6a044531 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
bltu x24, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x5555555555555555 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
bltu x24, x2, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x17, 0x246fbb13e747934d # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
bltu x17, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x00000000ffffffff # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
bltu x17, x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x28, 0xd0581f3b467961c5 # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
bltu x28, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x00000000fffffffe # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
bltu x28, x7, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x3, 0x4bd55bfc03fef833 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
bltu x3, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x0000000100000000 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
bltu x3, x6, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x3, 0x472064d1c6754e87 # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
bltu x3, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x0000000100000001 # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
bltu x3, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x12, 0x0000000000000000 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
bltu x12, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x0000000000000000 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
bltu x12, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x8, 0x0000000000000000 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
bltu x8, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x0000000000000001 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
bltu x8, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x17, 0x0000000000000000 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
bltu x17, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x0000000000000002 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
bltu x17, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x19, 0x0000000000000000 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
bltu x19, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x8000000000000000 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
bltu x19, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x1, 0x0000000000000000 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
bltu x1, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x8000000000000001 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
bltu x1, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x13, 0x0000000000000000 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
bltu x13, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x7fffffffffffffff # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
bltu x13, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x30, 0x0000000000000000 # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
bltu x30, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x7ffffffffffffffe # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
bltu x30, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x29, 0x0000000000000000 # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
bltu x29, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0xffffffffffffffff # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
bltu x29, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x15, 0x0000000000000000 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
bltu x15, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0xfffffffffffffffe # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
bltu x15, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x8, 0x0000000000000000 # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
bltu x8, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
bltu x8, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x0000000000000000 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x19, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x19, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x22, 0x0000000000000000 # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
bltu x22, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x5555555555555555 # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
bltu x22, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x12, 0x0000000000000000 # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
bltu x12, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x00000000ffffffff # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
bltu x12, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x7, 0x0000000000000000 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
bltu x7, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x00000000fffffffe # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
bltu x7, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x3, 0x0000000000000000 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
bltu x3, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x0000000100000000 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
bltu x3, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x19, 0x0000000000000000 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
bltu x19, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x0000000100000001 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
bltu x19, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x1, 0x0000000000000001 # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
bltu x1, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x0000000000000000 # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
bltu x1, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x5, 0x0000000000000001 # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
bltu x5, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x0000000000000001 # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
bltu x5, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x12, 0x0000000000000001 # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
bltu x12, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x0000000000000002 # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
bltu x12, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x6, 0x0000000000000001 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
bltu x6, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x8000000000000000 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
bltu x6, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x22, 0x0000000000000001 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
bltu x22, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x8000000000000001 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
bltu x22, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x19, 0x0000000000000001 # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
bltu x19, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x7fffffffffffffff # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
bltu x19, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x20, 0x0000000000000001 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
bltu x20, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x7ffffffffffffffe # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
bltu x20, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x16, 0x0000000000000001 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
bltu x16, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0xffffffffffffffff # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
bltu x16, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x8, 0x0000000000000001 # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
bltu x8, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0xfffffffffffffffe # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
bltu x8, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x29, 0x0000000000000001 # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
bltu x29, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
bltu x29, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x0000000000000001 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x31, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x31, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x18, 0x0000000000000001 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
bltu x18, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x5555555555555555 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
bltu x18, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x9, 0x0000000000000001 # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
bltu x9, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x00000000ffffffff # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
bltu x9, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x31, 0x0000000000000001 # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
bltu x31, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x00000000fffffffe # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
bltu x31, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x28, 0x0000000000000001 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
bltu x28, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x0000000100000000 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
bltu x28, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x18, 0x0000000000000001 # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
bltu x18, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x0000000100000001 # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
bltu x18, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x14, 0x0000000000000002 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
bltu x14, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x0000000000000000 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
bltu x14, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x25, 0x0000000000000002 # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
bltu x25, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x0000000000000001 # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
bltu x25, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x21, 0x0000000000000002 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
bltu x21, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x0000000000000002 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
bltu x21, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x20, 0x0000000000000002 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
bltu x20, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x8000000000000000 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
bltu x20, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x14, 0x0000000000000002 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
bltu x14, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x8000000000000001 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
bltu x14, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x22, 0x0000000000000002 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
bltu x22, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x7fffffffffffffff # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
bltu x22, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x29, 0x0000000000000002 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
bltu x29, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x7ffffffffffffffe # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
bltu x29, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x2, 0x0000000000000002 # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
bltu x2, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0xffffffffffffffff # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
bltu x2, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x9, 0x0000000000000002 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
bltu x9, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0xfffffffffffffffe # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
bltu x9, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x10, 0x0000000000000002 # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
bltu x10, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
bltu x10, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x0000000000000002 # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x3, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x3, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x27, 0x0000000000000002 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
bltu x27, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x5555555555555555 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
bltu x27, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x6, 0x0000000000000002 # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
bltu x6, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x00000000ffffffff # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
bltu x6, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x7, 0x0000000000000002 # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
bltu x7, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x00000000fffffffe # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
bltu x7, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x22, 0x0000000000000002 # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
bltu x22, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x0000000100000000 # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
bltu x22, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x17, 0x0000000000000002 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
bltu x17, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x0000000100000001 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
bltu x17, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x25, 0x8000000000000000 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
bltu x25, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x0000000000000000 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
bltu x25, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x24, 0x8000000000000000 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
bltu x24, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x0000000000000001 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
bltu x24, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x19, 0x8000000000000000 # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
bltu x19, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x0000000000000002 # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
bltu x19, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x24, 0x8000000000000000 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
bltu x24, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x8000000000000000 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
bltu x24, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x3, 0x8000000000000000 # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
bltu x3, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x8000000000000001 # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
bltu x3, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x3, 0x8000000000000000 # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
bltu x3, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x7fffffffffffffff # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
bltu x3, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x31, 0x8000000000000000 # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
bltu x31, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x7ffffffffffffffe # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
bltu x31, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x27, 0x8000000000000000 # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
bltu x27, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0xffffffffffffffff # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
bltu x27, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x23, 0x8000000000000000 # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
bltu x23, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0xfffffffffffffffe # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
bltu x23, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x13, 0x8000000000000000 # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
bltu x13, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
bltu x13, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0x8000000000000000 # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x27, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x27, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x3, 0x8000000000000000 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
bltu x3, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x5555555555555555 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
bltu x3, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x19, 0x8000000000000000 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
bltu x19, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x00000000ffffffff # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
bltu x19, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x13, 0x8000000000000000 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
bltu x13, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x00000000fffffffe # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
bltu x13, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x27, 0x8000000000000000 # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
bltu x27, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x0000000100000000 # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
bltu x27, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x19, 0x8000000000000000 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
bltu x19, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x0000000100000001 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
bltu x19, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x28, 0x8000000000000001 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
bltu x28, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x0000000000000000 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
bltu x28, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x28, 0x8000000000000001 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
bltu x28, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x0000000000000001 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
bltu x28, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x6, 0x8000000000000001 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
bltu x6, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x0000000000000002 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
bltu x6, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x13, 0x8000000000000001 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
bltu x13, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x8000000000000000 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
bltu x13, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x28, 0x8000000000000001 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
bltu x28, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x8000000000000001 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
bltu x28, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x3, 0x8000000000000001 # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
bltu x3, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x7fffffffffffffff # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
bltu x3, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x31, 0x8000000000000001 # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
bltu x31, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x7ffffffffffffffe # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
bltu x31, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x26, 0x8000000000000001 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
bltu x26, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0xffffffffffffffff # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
bltu x26, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x17, 0x8000000000000001 # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
bltu x17, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0xfffffffffffffffe # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
bltu x17, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x17, 0x8000000000000001 # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
bltu x17, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
bltu x17, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x8000000000000001 # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x24, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x24, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x12, 0x8000000000000001 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
bltu x12, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x5555555555555555 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
bltu x12, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x17, 0x8000000000000001 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
bltu x17, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x00000000ffffffff # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
bltu x17, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x11, 0x8000000000000001 # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
bltu x11, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x00000000fffffffe # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
bltu x11, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x5, 0x8000000000000001 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
bltu x5, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x0000000100000000 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
bltu x5, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x11, 0x8000000000000001 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
bltu x11, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x0000000100000001 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
bltu x11, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x21, 0x7fffffffffffffff # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
bltu x21, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x0000000000000000 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
bltu x21, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x29, 0x7fffffffffffffff # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
bltu x29, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x0000000000000001 # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
bltu x29, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x10, 0x7fffffffffffffff # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
bltu x10, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x0000000000000002 # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
bltu x10, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x25, 0x7fffffffffffffff # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
bltu x25, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x8000000000000000 # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
bltu x25, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x23, 0x7fffffffffffffff # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
bltu x23, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x8000000000000001 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
bltu x23, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x25, 0x7fffffffffffffff # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
bltu x25, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x7fffffffffffffff # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
bltu x25, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x8, 0x7fffffffffffffff # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
bltu x8, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x7ffffffffffffffe # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
bltu x8, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x13, 0x7fffffffffffffff # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
bltu x13, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0xffffffffffffffff # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
bltu x13, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x5, 0x7fffffffffffffff # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
bltu x5, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0xfffffffffffffffe # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
bltu x5, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x13, 0x7fffffffffffffff # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
bltu x13, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
bltu x13, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x7fffffffffffffff # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x28, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x28, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x16, 0x7fffffffffffffff # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
bltu x16, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x5555555555555555 # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
bltu x16, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x25, 0x7fffffffffffffff # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
bltu x25, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x00000000ffffffff # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
bltu x25, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x2, 0x7fffffffffffffff # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
bltu x2, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x00000000fffffffe # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
bltu x2, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x13, 0x7fffffffffffffff # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
bltu x13, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x0000000100000000 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
bltu x13, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x27, 0x7fffffffffffffff # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
bltu x27, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x0000000100000001 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
bltu x27, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x31, 0x7ffffffffffffffe # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
bltu x31, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x0000000000000000 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
bltu x31, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x13, 0x7ffffffffffffffe # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
bltu x13, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x0000000000000001 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
bltu x13, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x13, 0x7ffffffffffffffe # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
bltu x13, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x0000000000000002 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
bltu x13, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x2, 0x7ffffffffffffffe # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
bltu x2, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x8000000000000000 # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
bltu x2, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x19, 0x7ffffffffffffffe # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
bltu x19, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x8000000000000001 # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
bltu x19, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x5, 0x7ffffffffffffffe # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
bltu x5, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x7fffffffffffffff # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
bltu x5, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x15, 0x7ffffffffffffffe # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
bltu x15, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x7ffffffffffffffe # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
bltu x15, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x11, 0x7ffffffffffffffe # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
bltu x11, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0xffffffffffffffff # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
bltu x11, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x28, 0x7ffffffffffffffe # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
bltu x28, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0xfffffffffffffffe # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
bltu x28, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x1, 0x7ffffffffffffffe # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
bltu x1, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
bltu x1, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0x7ffffffffffffffe # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x15, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x15, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x15, 0x7ffffffffffffffe # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
bltu x15, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x5555555555555555 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
bltu x15, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x3, 0x7ffffffffffffffe # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
bltu x3, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x00000000ffffffff # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
bltu x3, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x23, 0x7ffffffffffffffe # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
bltu x23, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x00000000fffffffe # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
bltu x23, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x5, 0x7ffffffffffffffe # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
bltu x5, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x0000000100000000 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
bltu x5, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x23, 0x7ffffffffffffffe # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
bltu x23, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x0000000100000001 # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
bltu x23, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x20, 0xffffffffffffffff # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
bltu x20, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x0000000000000000 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
bltu x20, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x22, 0xffffffffffffffff # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
bltu x22, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x0000000000000001 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
bltu x22, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x8, 0xffffffffffffffff # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
bltu x8, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x0000000000000002 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
bltu x8, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x15, 0xffffffffffffffff # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
bltu x15, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x8000000000000000 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
bltu x15, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x9, 0xffffffffffffffff # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
bltu x9, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x8000000000000001 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
bltu x9, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x22, 0xffffffffffffffff # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
bltu x22, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x7fffffffffffffff # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
bltu x22, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x28, 0xffffffffffffffff # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
bltu x28, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x7ffffffffffffffe # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
bltu x28, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x27, 0xffffffffffffffff # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
bltu x27, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0xffffffffffffffff # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
bltu x27, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x22, 0xffffffffffffffff # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
bltu x22, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0xfffffffffffffffe # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
bltu x22, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x30, 0xffffffffffffffff # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
bltu x30, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
bltu x30, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0xffffffffffffffff # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x31, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x31, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x8, 0xffffffffffffffff # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
bltu x8, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x5555555555555555 # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
bltu x8, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x19, 0xffffffffffffffff # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
bltu x19, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x00000000ffffffff # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
bltu x19, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x19, 0xffffffffffffffff # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
bltu x19, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x00000000fffffffe # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
bltu x19, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x29, 0xffffffffffffffff # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
bltu x29, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x0000000100000000 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
bltu x29, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x21, 0xffffffffffffffff # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
bltu x21, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x0000000100000001 # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
bltu x21, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x25, 0xfffffffffffffffe # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
bltu x25, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x0000000000000000 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
bltu x25, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x23, 0xfffffffffffffffe # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
bltu x23, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x0000000000000001 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
bltu x23, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x31, 0xfffffffffffffffe # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
bltu x31, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x0000000000000002 # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
bltu x31, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x13, 0xfffffffffffffffe # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
bltu x13, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x8000000000000000 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
bltu x13, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x1, 0xfffffffffffffffe # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
bltu x1, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x8000000000000001 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
bltu x1, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x11, 0xfffffffffffffffe # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
bltu x11, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x7fffffffffffffff # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
bltu x11, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x31, 0xfffffffffffffffe # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
bltu x31, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x7ffffffffffffffe # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
bltu x31, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x27, 0xfffffffffffffffe # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
bltu x27, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0xffffffffffffffff # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
bltu x27, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x9, 0xfffffffffffffffe # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
bltu x9, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0xfffffffffffffffe # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
bltu x9, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x31, 0xfffffffffffffffe # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
bltu x31, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
bltu x31, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0xfffffffffffffffe # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x22, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x22, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x16, 0xfffffffffffffffe # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
bltu x16, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x5555555555555555 # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
bltu x16, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x8, 0xfffffffffffffffe # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
bltu x8, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x00000000ffffffff # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
bltu x8, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x8, 0xfffffffffffffffe # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
bltu x8, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x00000000fffffffe # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
bltu x8, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x31, 0xfffffffffffffffe # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
bltu x31, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x0000000100000000 # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
bltu x31, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x17, 0xfffffffffffffffe # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
bltu x17, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x0000000100000001 # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
bltu x17, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
bltu x27, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x0000000000000000 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
bltu x27, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
bltu x10, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x0000000000000001 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
bltu x10, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
bltu x20, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x0000000000000002 # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
bltu x20, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
bltu x9, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x8000000000000000 # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
bltu x9, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
bltu x8, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x8000000000000001 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
bltu x8, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
bltu x12, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x7fffffffffffffff # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
bltu x12, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
bltu x29, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x7ffffffffffffffe # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
bltu x29, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
bltu x7, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0xffffffffffffffff # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
bltu x7, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
bltu x27, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0xfffffffffffffffe # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
bltu x27, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
bltu x26, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
bltu x26, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x31, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x31, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
bltu x8, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x5555555555555555 # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
bltu x8, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
bltu x5, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x00000000ffffffff # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
bltu x5, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
bltu x29, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x00000000fffffffe # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
bltu x29, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
bltu x2, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x0000000100000000 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
bltu x2, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
bltu x31, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x0000000100000001 # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
bltu x31, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
bltu x18, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x0000000000000000 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
bltu x18, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
bltu x3, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x0000000000000001 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
bltu x3, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
bltu x31, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x0000000000000002 # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
bltu x31, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
bltu x6, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x8000000000000000 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
bltu x6, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
bltu x29, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x8000000000000001 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
bltu x29, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
bltu x5, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x7fffffffffffffff # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
bltu x5, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
bltu x3, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x7ffffffffffffffe # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
bltu x3, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
bltu x24, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0xffffffffffffffff # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
bltu x24, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
bltu x7, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0xfffffffffffffffe # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
bltu x7, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
bltu x30, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
bltu x30, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x6, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x6, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
bltu x26, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x5555555555555555 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
bltu x26, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
bltu x12, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x00000000ffffffff # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
bltu x12, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
bltu x3, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x00000000fffffffe # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
bltu x3, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
bltu x19, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x0000000100000000 # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
bltu x19, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
bltu x2, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x0000000100000001 # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
bltu x2, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x12, 0x5555555555555555 # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
bltu x12, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x0000000000000000 # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
bltu x12, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x25, 0x5555555555555555 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
bltu x25, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x0000000000000001 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
bltu x25, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x27, 0x5555555555555555 # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
bltu x27, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x0000000000000002 # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
bltu x27, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x10, 0x5555555555555555 # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
bltu x10, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x8000000000000000 # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
bltu x10, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x17, 0x5555555555555555 # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
bltu x17, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x8000000000000001 # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
bltu x17, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x12, 0x5555555555555555 # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
bltu x12, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x7fffffffffffffff # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
bltu x12, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x27, 0x5555555555555555 # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
bltu x27, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x7ffffffffffffffe # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
bltu x27, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x20, 0x5555555555555555 # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
bltu x20, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0xffffffffffffffff # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
bltu x20, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x7, 0x5555555555555555 # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
bltu x7, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0xfffffffffffffffe # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
bltu x7, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x3, 0x5555555555555555 # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
bltu x3, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
bltu x3, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x5555555555555555 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x30, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x30, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x5, 0x5555555555555555 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
bltu x5, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x5555555555555555 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
bltu x5, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x15, 0x5555555555555555 # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
bltu x15, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x00000000ffffffff # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
bltu x15, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x9, 0x5555555555555555 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
bltu x9, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x00000000fffffffe # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
bltu x9, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x31, 0x5555555555555555 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
bltu x31, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x0000000100000000 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
bltu x31, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x30, 0x5555555555555555 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
bltu x30, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x0000000100000001 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
bltu x30, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x10, 0x00000000ffffffff # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
bltu x10, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x0000000000000000 # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
bltu x10, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x26, 0x00000000ffffffff # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
bltu x26, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x0000000000000001 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
bltu x26, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x8, 0x00000000ffffffff # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
bltu x8, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x0000000000000002 # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
bltu x8, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x13, 0x00000000ffffffff # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
bltu x13, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x8000000000000000 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
bltu x13, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x12, 0x00000000ffffffff # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
bltu x12, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x8000000000000001 # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
bltu x12, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x28, 0x00000000ffffffff # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
bltu x28, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x7fffffffffffffff # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
bltu x28, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x30, 0x00000000ffffffff # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
bltu x30, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x7ffffffffffffffe # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
bltu x30, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x3, 0x00000000ffffffff # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
bltu x3, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0xffffffffffffffff # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
bltu x3, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x26, 0x00000000ffffffff # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
bltu x26, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0xfffffffffffffffe # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
bltu x26, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x30, 0x00000000ffffffff # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
bltu x30, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
bltu x30, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x00000000ffffffff # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x11, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x11, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x7, 0x00000000ffffffff # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
bltu x7, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x5555555555555555 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
bltu x7, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x18, 0x00000000ffffffff # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
bltu x18, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x00000000ffffffff # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
bltu x18, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x21, 0x00000000ffffffff # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
bltu x21, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x00000000fffffffe # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
bltu x21, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x5, 0x00000000ffffffff # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
bltu x5, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x0000000100000000 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
bltu x5, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x28, 0x00000000ffffffff # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
bltu x28, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x0000000100000001 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
bltu x28, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x12, 0x00000000fffffffe # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
bltu x12, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x0000000000000000 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
bltu x12, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x28, 0x00000000fffffffe # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
bltu x28, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x0000000000000001 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
bltu x28, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x18, 0x00000000fffffffe # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
bltu x18, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x0000000000000002 # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
bltu x18, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x16, 0x00000000fffffffe # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
bltu x16, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x8000000000000000 # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
bltu x16, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x22, 0x00000000fffffffe # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
bltu x22, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x8000000000000001 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
bltu x22, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x11, 0x00000000fffffffe # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
bltu x11, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x7fffffffffffffff # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
bltu x11, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x13, 0x00000000fffffffe # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
bltu x13, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x7ffffffffffffffe # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
bltu x13, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x16, 0x00000000fffffffe # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
bltu x16, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0xffffffffffffffff # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
bltu x16, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x11, 0x00000000fffffffe # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
bltu x11, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0xfffffffffffffffe # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
bltu x11, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x13, 0x00000000fffffffe # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
bltu x13, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
bltu x13, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x00000000fffffffe # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x24, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x24, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x9, 0x00000000fffffffe # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
bltu x9, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x5555555555555555 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
bltu x9, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x30, 0x00000000fffffffe # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
bltu x30, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x00000000ffffffff # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
bltu x30, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x8, 0x00000000fffffffe # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
bltu x8, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x00000000fffffffe # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
bltu x8, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x20, 0x00000000fffffffe # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
bltu x20, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x0000000100000000 # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
bltu x20, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x6, 0x00000000fffffffe # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
bltu x6, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x0000000100000001 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
bltu x6, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x31, 0x0000000100000000 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
bltu x31, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x0000000000000000 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
bltu x31, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x25, 0x0000000100000000 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
bltu x25, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x0000000000000001 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
bltu x25, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x9, 0x0000000100000000 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
bltu x9, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x0000000000000002 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
bltu x9, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x27, 0x0000000100000000 # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
bltu x27, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x8000000000000000 # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
bltu x27, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x25, 0x0000000100000000 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
bltu x25, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x8000000000000001 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
bltu x25, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x8, 0x0000000100000000 # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
bltu x8, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x7fffffffffffffff # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
bltu x8, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x1, 0x0000000100000000 # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
bltu x1, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x7ffffffffffffffe # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
bltu x1, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x23, 0x0000000100000000 # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
bltu x23, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0xffffffffffffffff # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
bltu x23, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x24, 0x0000000100000000 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
bltu x24, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0xfffffffffffffffe # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
bltu x24, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x20, 0x0000000100000000 # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
bltu x20, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
bltu x20, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x0000000100000000 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x26, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x26, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x18, 0x0000000100000000 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
bltu x18, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x5555555555555555 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
bltu x18, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x19, 0x0000000100000000 # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
bltu x19, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x00000000ffffffff # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
bltu x19, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x24, 0x0000000100000000 # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
bltu x24, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x00000000fffffffe # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
bltu x24, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x11, 0x0000000100000000 # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
bltu x11, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x0000000100000000 # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
bltu x11, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x17, 0x0000000100000000 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
bltu x17, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x0000000100000001 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
bltu x17, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x23, 0x0000000100000001 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
bltu x23, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x0000000000000000 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
bltu x23, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x27, 0x0000000100000001 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
bltu x27, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x0000000000000001 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
bltu x27, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x18, 0x0000000100000001 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
bltu x18, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x0000000000000002 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
bltu x18, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x20, 0x0000000100000001 # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
bltu x20, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x8000000000000000 # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
bltu x20, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x29, 0x0000000100000001 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
bltu x29, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x8000000000000001 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
bltu x29, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x5, 0x0000000100000001 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
bltu x5, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x7fffffffffffffff # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
bltu x5, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x18, 0x0000000100000001 # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
bltu x18, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x7ffffffffffffffe # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
bltu x18, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x9, 0x0000000100000001 # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
bltu x9, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0xffffffffffffffff # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
bltu x9, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x22, 0x0000000100000001 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
bltu x22, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0xfffffffffffffffe # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
bltu x22, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x3, 0x0000000100000001 # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
bltu x3, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
bltu x3, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x0000000100000001 # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x7, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
bltu x7, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x20, 0x0000000100000001 # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
bltu x20, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x5555555555555555 # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
bltu x20, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x1, 0x0000000100000001 # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
bltu x1, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x00000000ffffffff # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
bltu x1, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x14, 0x0000000100000001 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
bltu x14, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x00000000fffffffe # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
bltu x14, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x9, 0x0000000100000001 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
bltu x9, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x0000000100000000 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
bltu x9, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x31, 0x0000000100000001 # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
bltu x31, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x0000000100000001 # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
bltu x31, x19, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xb65e30fa56286621 # initialize rs1
li x0, 0x54800bc7fd07a78a # initialize rs2
bltu x0, x0, 1f # perform operation
nop
nop
1:
# same values in both registers
li x0, 0x54800bc7fd07a78a # initialize rs1
li x0, 0x54800bc7fd07a78a # initialize rs2
bltu x0, x0, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xba5dc4b308a31881 # initialize rs1
li x1, 0xe2d987acdacbc297 # initialize rs2
bltu x1, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0xe2d987acdacbc297 # initialize rs1
li x1, 0xe2d987acdacbc297 # initialize rs2
bltu x1, x1, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xcb1e4e1c0d0b7c04 # initialize rs1
li x2, 0xabb5f943821a9ad0 # initialize rs2
bltu x2, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0xabb5f943821a9ad0 # initialize rs1
li x2, 0xabb5f943821a9ad0 # initialize rs2
bltu x2, x2, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x6d585f827f60efd3 # initialize rs1
li x3, 0x9faeceebec79effb # initialize rs2
bltu x3, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x9faeceebec79effb # initialize rs1
li x3, 0x9faeceebec79effb # initialize rs2
bltu x3, x3, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x41c0b41445b36768 # initialize rs1
li x4, 0x609a013d06d48f18 # initialize rs2
bltu x4, x4, 1f # perform operation
nop
nop
1:
# same values in both registers
li x4, 0x609a013d06d48f18 # initialize rs1
li x4, 0x609a013d06d48f18 # initialize rs2
bltu x4, x4, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x9d21764241acc305 # initialize rs1
li x5, 0x68c4e9019cd18d04 # initialize rs2
bltu x5, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x68c4e9019cd18d04 # initialize rs1
li x5, 0x68c4e9019cd18d04 # initialize rs2
bltu x5, x5, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x311a80e91b7f1f59 # initialize rs1
li x6, 0xc42615f06235a191 # initialize rs2
bltu x6, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0xc42615f06235a191 # initialize rs1
li x6, 0xc42615f06235a191 # initialize rs2
bltu x6, x6, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xd60f2556914ad263 # initialize rs1
li x7, 0x19c0293d096f4651 # initialize rs2
bltu x7, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x19c0293d096f4651 # initialize rs1
li x7, 0x19c0293d096f4651 # initialize rs2
bltu x7, x7, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x0671e86dcfc471d7 # initialize rs1
li x8, 0x4dbfec560069e009 # initialize rs2
bltu x8, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x4dbfec560069e009 # initialize rs1
li x8, 0x4dbfec560069e009 # initialize rs2
bltu x8, x8, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x9d5ab37884965a52 # initialize rs1
li x9, 0x62e0a81a21d54791 # initialize rs2
bltu x9, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x62e0a81a21d54791 # initialize rs1
li x9, 0x62e0a81a21d54791 # initialize rs2
bltu x9, x9, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xb44c37cb6e0fddca # initialize rs1
li x10, 0x9a0ed94fc8881226 # initialize rs2
bltu x10, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x9a0ed94fc8881226 # initialize rs1
li x10, 0x9a0ed94fc8881226 # initialize rs2
bltu x10, x10, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xa434a9eb5d2ea32c # initialize rs1
li x11, 0x6884d14f66ef038e # initialize rs2
bltu x11, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x6884d14f66ef038e # initialize rs1
li x11, 0x6884d14f66ef038e # initialize rs2
bltu x11, x11, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x9e9483cef3492361 # initialize rs1
li x12, 0x3c9ab00a02ba49b6 # initialize rs2
bltu x12, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x3c9ab00a02ba49b6 # initialize rs1
li x12, 0x3c9ab00a02ba49b6 # initialize rs2
bltu x12, x12, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x2c279ef20de682a6 # initialize rs1
li x13, 0x65051d41f0024f1d # initialize rs2
bltu x13, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x65051d41f0024f1d # initialize rs1
li x13, 0x65051d41f0024f1d # initialize rs2
bltu x13, x13, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x94933d6ca4945ac7 # initialize rs1
li x14, 0x73344b12b4df3549 # initialize rs2
bltu x14, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x73344b12b4df3549 # initialize rs1
li x14, 0x73344b12b4df3549 # initialize rs2
bltu x14, x14, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x6b2d92ac96cea404 # initialize rs1
li x15, 0x6790cfe3072e4d47 # initialize rs2
bltu x15, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x6790cfe3072e4d47 # initialize rs1
li x15, 0x6790cfe3072e4d47 # initialize rs2
bltu x15, x15, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xaa75fefdf592f2f1 # initialize rs1
li x16, 0x7d8a671334bbb770 # initialize rs2
bltu x16, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x7d8a671334bbb770 # initialize rs1
li x16, 0x7d8a671334bbb770 # initialize rs2
bltu x16, x16, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xfe4e7839740f7ab8 # initialize rs1
li x17, 0x48961de8163f8b99 # initialize rs2
bltu x17, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x48961de8163f8b99 # initialize rs1
li x17, 0x48961de8163f8b99 # initialize rs2
bltu x17, x17, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x9691aac99f22031a # initialize rs1
li x18, 0xa937fef9fe99b499 # initialize rs2
bltu x18, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0xa937fef9fe99b499 # initialize rs1
li x18, 0xa937fef9fe99b499 # initialize rs2
bltu x18, x18, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x8409fa68d48c83b6 # initialize rs1
li x19, 0x2612641a9868afd6 # initialize rs2
bltu x19, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x2612641a9868afd6 # initialize rs1
li x19, 0x2612641a9868afd6 # initialize rs2
bltu x19, x19, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x43e6578857973f93 # initialize rs1
li x20, 0x6deb06033e1a9527 # initialize rs2
bltu x20, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x6deb06033e1a9527 # initialize rs1
li x20, 0x6deb06033e1a9527 # initialize rs2
bltu x20, x20, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x19e58e50dd491842 # initialize rs1
li x21, 0x75ffd9d26361d85c # initialize rs2
bltu x21, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x75ffd9d26361d85c # initialize rs1
li x21, 0x75ffd9d26361d85c # initialize rs2
bltu x21, x21, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xa7598e6deca2df9d # initialize rs1
li x22, 0xf6dd8d98d4cc75bb # initialize rs2
bltu x22, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0xf6dd8d98d4cc75bb # initialize rs1
li x22, 0xf6dd8d98d4cc75bb # initialize rs2
bltu x22, x22, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x256454f900b6fd4d # initialize rs1
li x23, 0xdd4238dd5ee60b18 # initialize rs2
bltu x23, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0xdd4238dd5ee60b18 # initialize rs1
li x23, 0xdd4238dd5ee60b18 # initialize rs2
bltu x23, x23, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x4c7e5e875de18ad7 # initialize rs1
li x24, 0xc4bc982c0a6fd9db # initialize rs2
bltu x24, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0xc4bc982c0a6fd9db # initialize rs1
li x24, 0xc4bc982c0a6fd9db # initialize rs2
bltu x24, x24, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x66ad86d716547b04 # initialize rs1
li x25, 0x5047e3eb90eeda4b # initialize rs2
bltu x25, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x5047e3eb90eeda4b # initialize rs1
li x25, 0x5047e3eb90eeda4b # initialize rs2
bltu x25, x25, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x0926ff88c844c6c4 # initialize rs1
li x26, 0x2ead7e092f65c58e # initialize rs2
bltu x26, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x2ead7e092f65c58e # initialize rs1
li x26, 0x2ead7e092f65c58e # initialize rs2
bltu x26, x26, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x0d58d15168c47e06 # initialize rs1
li x27, 0xb200e47d38c1d265 # initialize rs2
bltu x27, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0xb200e47d38c1d265 # initialize rs1
li x27, 0xb200e47d38c1d265 # initialize rs2
bltu x27, x27, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x60dd5ba59975f52f # initialize rs1
li x28, 0xbe5cc884004b0da2 # initialize rs2
bltu x28, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0xbe5cc884004b0da2 # initialize rs1
li x28, 0xbe5cc884004b0da2 # initialize rs2
bltu x28, x28, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x3f32e188576ccbc9 # initialize rs1
li x29, 0x59b4d4b10e78c46a # initialize rs2
bltu x29, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x59b4d4b10e78c46a # initialize rs1
li x29, 0x59b4d4b10e78c46a # initialize rs2
bltu x29, x29, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x1594f06ac1155fc6 # initialize rs1
li x30, 0x0057d7f132f9329b # initialize rs2
bltu x30, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x0057d7f132f9329b # initialize rs1
li x30, 0x0057d7f132f9329b # initialize rs2
bltu x30, x30, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x8447d7855b51367b # initialize rs1
li x31, 0xcd5a17d8b43b8f8f # initialize rs2
bltu x31, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0xcd5a17d8b43b8f8f # initialize rs1
li x31, 0xcd5a17d8b43b8f8f # initialize rs2
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
bltu x3, x6, arbitraryLabel139
nop
arbitraryLabel139:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x5, x16 # perform first operation
bltu x9, x23, arbitraryLabel140
nop
arbitraryLabel140:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x30, x5, x31 # perform first operation
bltu x2, x11, arbitraryLabel141
nop
arbitraryLabel141:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x16, x20, x30 # perform first operation
bltu x16, x28, arbitraryLabel142
nop
arbitraryLabel142:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x15, x18, x25 # perform first operation
bltu x13, x15, arbitraryLabel143
nop
arbitraryLabel143:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x20, x25, x15 # perform first operation
bltu x3, x9, arbitraryLabel144
nop
arbitraryLabel144:
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
