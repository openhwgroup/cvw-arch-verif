///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/I/WALLY-COV-blt.S
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
li x0, 0xab0b005f # initialize rs1
li x11, 0xe28112d7 # initialize rs2
blt x0, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x0, 0xe28112d7 # initialize rs1
li x11, 0xe28112d7 # initialize rs2
blt x0, x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xae81a168 # initialize rs1
li x6, 0x01042b82 # initialize rs2
blt x1, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x01042b82 # initialize rs1
li x6, 0x01042b82 # initialize rs2
blt x1, x6, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x770cc50c # initialize rs1
li x9, 0x8293cecf # initialize rs2
blt x2, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x8293cecf # initialize rs1
li x9, 0x8293cecf # initialize rs2
blt x2, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xf40b9c27 # initialize rs1
li x2, 0x3a3c1df9 # initialize rs2
blt x3, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x3a3c1df9 # initialize rs1
li x2, 0x3a3c1df9 # initialize rs2
blt x3, x2, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x0c42d8ae # initialize rs1
li x31, 0x842d2d9c # initialize rs2
blt x4, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x4, 0x842d2d9c # initialize rs1
li x31, 0x842d2d9c # initialize rs2
blt x4, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xd8d37957 # initialize rs1
li x9, 0x42d08b8a # initialize rs2
blt x5, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x42d08b8a # initialize rs1
li x9, 0x42d08b8a # initialize rs2
blt x5, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x3d2139d9 # initialize rs1
li x23, 0x9546ef0f # initialize rs2
blt x6, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x9546ef0f # initialize rs1
li x23, 0x9546ef0f # initialize rs2
blt x6, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x0aaa0ea2 # initialize rs1
li x28, 0x96273bc8 # initialize rs2
blt x7, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x96273bc8 # initialize rs1
li x28, 0x96273bc8 # initialize rs2
blt x7, x28, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x0c83716e # initialize rs1
li x30, 0xcc78b2c7 # initialize rs2
blt x8, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0xcc78b2c7 # initialize rs1
li x30, 0xcc78b2c7 # initialize rs2
blt x8, x30, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x2214e307 # initialize rs1
li x16, 0x76defca9 # initialize rs2
blt x9, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x76defca9 # initialize rs1
li x16, 0x76defca9 # initialize rs2
blt x9, x16, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x8106b234 # initialize rs1
li x5, 0xa20f4fc9 # initialize rs2
blt x10, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0xa20f4fc9 # initialize rs1
li x5, 0xa20f4fc9 # initialize rs2
blt x10, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xd35da38e # initialize rs1
li x8, 0x93bbde60 # initialize rs2
blt x11, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x93bbde60 # initialize rs1
li x8, 0x93bbde60 # initialize rs2
blt x11, x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xe620b940 # initialize rs1
li x26, 0x28b97edc # initialize rs2
blt x12, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x28b97edc # initialize rs1
li x26, 0x28b97edc # initialize rs2
blt x12, x26, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xd92cf24a # initialize rs1
li x28, 0x828ed5e9 # initialize rs2
blt x13, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x828ed5e9 # initialize rs1
li x28, 0x828ed5e9 # initialize rs2
blt x13, x28, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x742439ee # initialize rs1
li x1, 0x3b370bdf # initialize rs2
blt x14, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x3b370bdf # initialize rs1
li x1, 0x3b370bdf # initialize rs2
blt x14, x1, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xd26f7184 # initialize rs1
li x3, 0xf389c8f3 # initialize rs2
blt x15, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0xf389c8f3 # initialize rs1
li x3, 0xf389c8f3 # initialize rs2
blt x15, x3, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xd058817a # initialize rs1
li x31, 0x1a5a2b93 # initialize rs2
blt x16, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x1a5a2b93 # initialize rs1
li x31, 0x1a5a2b93 # initialize rs2
blt x16, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x042f41a6 # initialize rs1
li x12, 0xe2c975ed # initialize rs2
blt x17, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0xe2c975ed # initialize rs1
li x12, 0xe2c975ed # initialize rs2
blt x17, x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xaf80b249 # initialize rs1
li x15, 0x5b7d235b # initialize rs2
blt x18, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x5b7d235b # initialize rs1
li x15, 0x5b7d235b # initialize rs2
blt x18, x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xd4fd4739 # initialize rs1
li x3, 0x23e2c2a0 # initialize rs2
blt x19, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x23e2c2a0 # initialize rs1
li x3, 0x23e2c2a0 # initialize rs2
blt x19, x3, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x88a31dd3 # initialize rs1
li x19, 0x3dcb2a5f # initialize rs2
blt x20, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x3dcb2a5f # initialize rs1
li x19, 0x3dcb2a5f # initialize rs2
blt x20, x19, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xbe3094c7 # initialize rs1
li x1, 0x665f766a # initialize rs2
blt x21, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x665f766a # initialize rs1
li x1, 0x665f766a # initialize rs2
blt x21, x1, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x0b866b7e # initialize rs1
li x1, 0xca9b8b25 # initialize rs2
blt x22, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0xca9b8b25 # initialize rs1
li x1, 0xca9b8b25 # initialize rs2
blt x22, x1, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x2e14c79d # initialize rs1
li x22, 0xf8fbbef2 # initialize rs2
blt x23, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0xf8fbbef2 # initialize rs1
li x22, 0xf8fbbef2 # initialize rs2
blt x23, x22, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xf67cde75 # initialize rs1
li x2, 0x32beec0e # initialize rs2
blt x24, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x32beec0e # initialize rs1
li x2, 0x32beec0e # initialize rs2
blt x24, x2, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x6e69bfbe # initialize rs1
li x27, 0x1251956a # initialize rs2
blt x25, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x1251956a # initialize rs1
li x27, 0x1251956a # initialize rs2
blt x25, x27, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x0d3da735 # initialize rs1
li x20, 0xf5046e83 # initialize rs2
blt x26, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0xf5046e83 # initialize rs1
li x20, 0xf5046e83 # initialize rs2
blt x26, x20, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xc7eb966f # initialize rs1
li x14, 0x929064c4 # initialize rs2
blt x27, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x929064c4 # initialize rs1
li x14, 0x929064c4 # initialize rs2
blt x27, x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x18224a6f # initialize rs1
li x17, 0x93ecb2b8 # initialize rs2
blt x28, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x93ecb2b8 # initialize rs1
li x17, 0x93ecb2b8 # initialize rs2
blt x28, x17, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x399f10fc # initialize rs1
li x28, 0x1084ecea # initialize rs2
blt x29, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x1084ecea # initialize rs1
li x28, 0x1084ecea # initialize rs2
blt x29, x28, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xd7405903 # initialize rs1
li x16, 0x402e5f44 # initialize rs2
blt x30, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x402e5f44 # initialize rs1
li x16, 0x402e5f44 # initialize rs2
blt x30, x16, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x55890b66 # initialize rs1
li x22, 0x701bd3f6 # initialize rs2
blt x31, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x701bd3f6 # initialize rs1
li x22, 0x701bd3f6 # initialize rs2
blt x31, x22, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x0)
li x7, 0x2bdc628d # initialize rs1
li x0, 0x33c883d0 # initialize rs2
blt x7, x0, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x33c883d0 # initialize rs1
li x0, 0x33c883d0 # initialize rs2
blt x7, x0, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x1)
li x11, 0x5da28601 # initialize rs1
li x1, 0x3787f7cf # initialize rs2
blt x11, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x3787f7cf # initialize rs1
li x1, 0x3787f7cf # initialize rs2
blt x11, x1, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x2)
li x6, 0x560ad3dc # initialize rs1
li x2, 0x1e133432 # initialize rs2
blt x6, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x1e133432 # initialize rs1
li x2, 0x1e133432 # initialize rs2
blt x6, x2, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x3)
li x30, 0x5716dee8 # initialize rs1
li x3, 0x94e2b288 # initialize rs2
blt x30, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x94e2b288 # initialize rs1
li x3, 0x94e2b288 # initialize rs2
blt x30, x3, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x13, 0xff428c24 # initialize rs1
li x4, 0x90c8bb15 # initialize rs2
blt x13, x4, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x90c8bb15 # initialize rs1
li x4, 0x90c8bb15 # initialize rs2
blt x13, x4, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x17, 0x31b6d6d1 # initialize rs1
li x5, 0x3baca9dd # initialize rs2
blt x17, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x3baca9dd # initialize rs1
li x5, 0x3baca9dd # initialize rs2
blt x17, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x26, 0xc46b2c1d # initialize rs1
li x6, 0x6b1a8b92 # initialize rs2
blt x26, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x6b1a8b92 # initialize rs1
li x6, 0x6b1a8b92 # initialize rs2
blt x26, x6, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x11, 0x974c4686 # initialize rs1
li x7, 0x30715f8c # initialize rs2
blt x11, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x30715f8c # initialize rs1
li x7, 0x30715f8c # initialize rs2
blt x11, x7, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x8)
li x31, 0x6332e566 # initialize rs1
li x8, 0x46186efc # initialize rs2
blt x31, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x46186efc # initialize rs1
li x8, 0x46186efc # initialize rs2
blt x31, x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x9)
li x1, 0xfc1d73a5 # initialize rs1
li x9, 0xe84dbf96 # initialize rs2
blt x1, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0xe84dbf96 # initialize rs1
li x9, 0xe84dbf96 # initialize rs2
blt x1, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x10)
li x18, 0xf68bd5f8 # initialize rs1
li x10, 0x560b698d # initialize rs2
blt x18, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x560b698d # initialize rs1
li x10, 0x560b698d # initialize rs2
blt x18, x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x11)
li x29, 0x789f20e7 # initialize rs1
li x11, 0xcc541fbb # initialize rs2
blt x29, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0xcc541fbb # initialize rs1
li x11, 0xcc541fbb # initialize rs2
blt x29, x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x12)
li x6, 0x929a1346 # initialize rs1
li x12, 0xee56e6fd # initialize rs2
blt x6, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0xee56e6fd # initialize rs1
li x12, 0xee56e6fd # initialize rs2
blt x6, x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x13)
li x5, 0x3ac52d95 # initialize rs1
li x13, 0x3cfaaffc # initialize rs2
blt x5, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x3cfaaffc # initialize rs1
li x13, 0x3cfaaffc # initialize rs2
blt x5, x13, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x14)
li x28, 0x26fa7617 # initialize rs1
li x14, 0xa85123dc # initialize rs2
blt x28, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0xa85123dc # initialize rs1
li x14, 0xa85123dc # initialize rs2
blt x28, x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x15)
li x28, 0xdccf328c # initialize rs1
li x15, 0xefe7ea9f # initialize rs2
blt x28, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0xefe7ea9f # initialize rs1
li x15, 0xefe7ea9f # initialize rs2
blt x28, x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x16)
li x14, 0x198d2427 # initialize rs1
li x16, 0x5217e9a5 # initialize rs2
blt x14, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x5217e9a5 # initialize rs1
li x16, 0x5217e9a5 # initialize rs2
blt x14, x16, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x17)
li x11, 0x72d26b73 # initialize rs1
li x17, 0x56773d04 # initialize rs2
blt x11, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x56773d04 # initialize rs1
li x17, 0x56773d04 # initialize rs2
blt x11, x17, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x18)
li x6, 0xa138104c # initialize rs1
li x18, 0x5923eeab # initialize rs2
blt x6, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x5923eeab # initialize rs1
li x18, 0x5923eeab # initialize rs2
blt x6, x18, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x19)
li x10, 0x89a1ffba # initialize rs1
li x19, 0xd7ce63ab # initialize rs2
blt x10, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0xd7ce63ab # initialize rs1
li x19, 0xd7ce63ab # initialize rs2
blt x10, x19, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x20)
li x14, 0x8fb5c3cd # initialize rs1
li x20, 0x73e0b22e # initialize rs2
blt x14, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x73e0b22e # initialize rs1
li x20, 0x73e0b22e # initialize rs2
blt x14, x20, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x21)
li x18, 0xd9fbc1c5 # initialize rs1
li x21, 0x8119d68a # initialize rs2
blt x18, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x8119d68a # initialize rs1
li x21, 0x8119d68a # initialize rs2
blt x18, x21, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x22)
li x9, 0x418aede4 # initialize rs1
li x22, 0x2d57b08f # initialize rs2
blt x9, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x2d57b08f # initialize rs1
li x22, 0x2d57b08f # initialize rs2
blt x9, x22, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x23)
li x30, 0x1da9f4de # initialize rs1
li x23, 0xd7fb6f70 # initialize rs2
blt x30, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0xd7fb6f70 # initialize rs1
li x23, 0xd7fb6f70 # initialize rs2
blt x30, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x24)
li x5, 0xc8f855e3 # initialize rs1
li x24, 0x3ec0c528 # initialize rs2
blt x5, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x3ec0c528 # initialize rs1
li x24, 0x3ec0c528 # initialize rs2
blt x5, x24, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x25)
li x14, 0x20d15fff # initialize rs1
li x25, 0x8f060194 # initialize rs2
blt x14, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x8f060194 # initialize rs1
li x25, 0x8f060194 # initialize rs2
blt x14, x25, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x26)
li x15, 0x87566db6 # initialize rs1
li x26, 0x02f5b496 # initialize rs2
blt x15, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x02f5b496 # initialize rs1
li x26, 0x02f5b496 # initialize rs2
blt x15, x26, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x27)
li x14, 0xc0eff7cd # initialize rs1
li x27, 0x204a3922 # initialize rs2
blt x14, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x204a3922 # initialize rs1
li x27, 0x204a3922 # initialize rs2
blt x14, x27, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x28)
li x20, 0x6adae2e0 # initialize rs1
li x28, 0xaa7cc9bd # initialize rs2
blt x20, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0xaa7cc9bd # initialize rs1
li x28, 0xaa7cc9bd # initialize rs2
blt x20, x28, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x29)
li x25, 0x241659c9 # initialize rs1
li x29, 0xedc81e4f # initialize rs2
blt x25, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0xedc81e4f # initialize rs1
li x29, 0xedc81e4f # initialize rs2
blt x25, x29, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x30)
li x3, 0x57c68601 # initialize rs1
li x30, 0xe96a2622 # initialize rs2
blt x3, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0xe96a2622 # initialize rs1
li x30, 0xe96a2622 # initialize rs2
blt x3, x30, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x31)
li x23, 0xcf8a3fbf # initialize rs1
li x31, 0xd7c97d78 # initialize rs2
blt x23, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0xd7c97d78 # initialize rs1
li x31, 0xd7c97d78 # initialize rs2
blt x23, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x28, 0x00000000 # initialize rs1
li x9, 0xbf9e232a # initialize rs2
blt x28, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0xbf9e232a # initialize rs1
li x9, 0xbf9e232a # initialize rs2
blt x28, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x12, 0x00000001 # initialize rs1
li x24, 0xd91065e4 # initialize rs2
blt x12, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0xd91065e4 # initialize rs1
li x24, 0xd91065e4 # initialize rs2
blt x12, x24, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x23, 0x00000002 # initialize rs1
li x11, 0xfa962c57 # initialize rs2
blt x23, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0xfa962c57 # initialize rs1
li x11, 0xfa962c57 # initialize rs2
blt x23, x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x19, 0x80000000 # initialize rs1
li x12, 0x7173abb4 # initialize rs2
blt x19, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x7173abb4 # initialize rs1
li x12, 0x7173abb4 # initialize rs2
blt x19, x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x17, 0x80000001 # initialize rs1
li x23, 0xfeb82f23 # initialize rs2
blt x17, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0xfeb82f23 # initialize rs1
li x23, 0xfeb82f23 # initialize rs2
blt x17, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x18, 0x7fffffff # initialize rs1
li x31, 0xc7345e0c # initialize rs2
blt x18, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0xc7345e0c # initialize rs1
li x31, 0xc7345e0c # initialize rs2
blt x18, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x13, 0x7ffffffe # initialize rs1
li x19, 0xc3c9011b # initialize rs2
blt x13, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0xc3c9011b # initialize rs1
li x19, 0xc3c9011b # initialize rs2
blt x13, x19, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x11, 0xffffffff # initialize rs1
li x27, 0x7adc5865 # initialize rs2
blt x11, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x7adc5865 # initialize rs1
li x27, 0x7adc5865 # initialize rs2
blt x11, x27, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x14, 0xfffffffe # initialize rs1
li x1, 0xc162b3cd # initialize rs2
blt x14, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0xc162b3cd # initialize rs1
li x1, 0xc162b3cd # initialize rs2
blt x14, x1, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x13, 0x5bbc8872 # initialize rs1
li x11, 0xf04273f5 # initialize rs2
blt x13, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0xf04273f5 # initialize rs1
li x11, 0xf04273f5 # initialize rs2
blt x13, x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x9, 0xaaaaaaaa # initialize rs1
li x30, 0x4f1cc660 # initialize rs2
blt x9, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x4f1cc660 # initialize rs1
li x30, 0x4f1cc660 # initialize rs2
blt x9, x30, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x23, 0x55555555 # initialize rs1
li x1, 0x23b92554 # initialize rs2
blt x23, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x23b92554 # initialize rs1
li x1, 0x23b92554 # initialize rs2
blt x23, x1, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x17, 0xb39a5bfb # initialize rs1
li x10, 0x00000000 # initialize rs2
blt x17, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x00000000 # initialize rs1
li x10, 0x00000000 # initialize rs2
blt x17, x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x30, 0xa8ee7938 # initialize rs1
li x26, 0x00000001 # initialize rs2
blt x30, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x00000001 # initialize rs1
li x26, 0x00000001 # initialize rs2
blt x30, x26, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x18, 0xfd7a9678 # initialize rs1
li x5, 0x00000002 # initialize rs2
blt x18, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x00000002 # initialize rs1
li x5, 0x00000002 # initialize rs2
blt x18, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x1, 0x63d96cd8 # initialize rs1
li x26, 0x80000000 # initialize rs2
blt x1, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x80000000 # initialize rs1
li x26, 0x80000000 # initialize rs2
blt x1, x26, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x13, 0x09e89018 # initialize rs1
li x30, 0x80000001 # initialize rs2
blt x13, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x80000001 # initialize rs1
li x30, 0x80000001 # initialize rs2
blt x13, x30, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x8, 0x540452ad # initialize rs1
li x5, 0x7fffffff # initialize rs2
blt x8, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x7fffffff # initialize rs1
li x5, 0x7fffffff # initialize rs2
blt x8, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x14, 0x58308c83 # initialize rs1
li x17, 0x7ffffffe # initialize rs2
blt x14, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x7ffffffe # initialize rs1
li x17, 0x7ffffffe # initialize rs2
blt x14, x17, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x1, 0xd14ac610 # initialize rs1
li x5, 0xffffffff # initialize rs2
blt x1, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0xffffffff # initialize rs1
li x5, 0xffffffff # initialize rs2
blt x1, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x19, 0xe3e02fc6 # initialize rs1
li x28, 0xfffffffe # initialize rs2
blt x19, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0xfffffffe # initialize rs1
li x28, 0xfffffffe # initialize rs2
blt x19, x28, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x2, 0x77de343c # initialize rs1
li x8, 0x5bbc8872 # initialize rs2
blt x2, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x5bbc8872 # initialize rs1
li x8, 0x5bbc8872 # initialize rs2
blt x2, x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x30, 0x9c611331 # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
blt x30, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0xaaaaaaaa # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
blt x30, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x15, 0x88fc4af5 # initialize rs1
li x17, 0x55555555 # initialize rs2
blt x15, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x55555555 # initialize rs1
li x17, 0x55555555 # initialize rs2
blt x15, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x12, 0x00000000 # initialize rs1
li x23, 0x00000000 # initialize rs2
blt x12, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x00000000 # initialize rs1
li x23, 0x00000000 # initialize rs2
blt x12, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x14, 0x00000000 # initialize rs1
li x23, 0x00000001 # initialize rs2
blt x14, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x00000001 # initialize rs1
li x23, 0x00000001 # initialize rs2
blt x14, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x24, 0x00000000 # initialize rs1
li x18, 0x00000002 # initialize rs2
blt x24, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x00000002 # initialize rs1
li x18, 0x00000002 # initialize rs2
blt x24, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x21, 0x00000000 # initialize rs1
li x8, 0x80000000 # initialize rs2
blt x21, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x80000000 # initialize rs1
li x8, 0x80000000 # initialize rs2
blt x21, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x20, 0x00000000 # initialize rs1
li x10, 0x80000001 # initialize rs2
blt x20, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x80000001 # initialize rs1
li x10, 0x80000001 # initialize rs2
blt x20, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x25, 0x00000000 # initialize rs1
li x9, 0x7fffffff # initialize rs2
blt x25, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x7fffffff # initialize rs1
li x9, 0x7fffffff # initialize rs2
blt x25, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x25, 0x00000000 # initialize rs1
li x29, 0x7ffffffe # initialize rs2
blt x25, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x7ffffffe # initialize rs1
li x29, 0x7ffffffe # initialize rs2
blt x25, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x10, 0x00000000 # initialize rs1
li x31, 0xffffffff # initialize rs2
blt x10, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0xffffffff # initialize rs1
li x31, 0xffffffff # initialize rs2
blt x10, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x29, 0x00000000 # initialize rs1
li x11, 0xfffffffe # initialize rs2
blt x29, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0xfffffffe # initialize rs1
li x11, 0xfffffffe # initialize rs2
blt x29, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x8, 0x00000000 # initialize rs1
li x24, 0x5bbc8872 # initialize rs2
blt x8, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x5bbc8872 # initialize rs1
li x24, 0x5bbc8872 # initialize rs2
blt x8, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x8, 0x00000000 # initialize rs1
li x18, 0xaaaaaaaa # initialize rs2
blt x8, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0xaaaaaaaa # initialize rs1
li x18, 0xaaaaaaaa # initialize rs2
blt x8, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x27, 0x00000000 # initialize rs1
li x5, 0x55555555 # initialize rs2
blt x27, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x55555555 # initialize rs1
li x5, 0x55555555 # initialize rs2
blt x27, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x10, 0x00000001 # initialize rs1
li x17, 0x00000000 # initialize rs2
blt x10, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x00000000 # initialize rs1
li x17, 0x00000000 # initialize rs2
blt x10, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x3, 0x00000001 # initialize rs1
li x6, 0x00000001 # initialize rs2
blt x3, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x00000001 # initialize rs1
li x6, 0x00000001 # initialize rs2
blt x3, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x27, 0x00000001 # initialize rs1
li x30, 0x00000002 # initialize rs2
blt x27, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x00000002 # initialize rs1
li x30, 0x00000002 # initialize rs2
blt x27, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x2, 0x00000001 # initialize rs1
li x16, 0x80000000 # initialize rs2
blt x2, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x80000000 # initialize rs1
li x16, 0x80000000 # initialize rs2
blt x2, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x23, 0x00000001 # initialize rs1
li x3, 0x80000001 # initialize rs2
blt x23, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x80000001 # initialize rs1
li x3, 0x80000001 # initialize rs2
blt x23, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x5, 0x00000001 # initialize rs1
li x9, 0x7fffffff # initialize rs2
blt x5, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x7fffffff # initialize rs1
li x9, 0x7fffffff # initialize rs2
blt x5, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x5, 0x00000001 # initialize rs1
li x7, 0x7ffffffe # initialize rs2
blt x5, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x7ffffffe # initialize rs1
li x7, 0x7ffffffe # initialize rs2
blt x5, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x24, 0x00000001 # initialize rs1
li x8, 0xffffffff # initialize rs2
blt x24, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0xffffffff # initialize rs1
li x8, 0xffffffff # initialize rs2
blt x24, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x11, 0x00000001 # initialize rs1
li x17, 0xfffffffe # initialize rs2
blt x11, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0xfffffffe # initialize rs1
li x17, 0xfffffffe # initialize rs2
blt x11, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x25, 0x00000001 # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
blt x25, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x5bbc8872 # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
blt x25, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x14, 0x00000001 # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
blt x14, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0xaaaaaaaa # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
blt x14, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x24, 0x00000001 # initialize rs1
li x16, 0x55555555 # initialize rs2
blt x24, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x55555555 # initialize rs1
li x16, 0x55555555 # initialize rs2
blt x24, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x18, 0x00000002 # initialize rs1
li x7, 0x00000000 # initialize rs2
blt x18, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x00000000 # initialize rs1
li x7, 0x00000000 # initialize rs2
blt x18, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x18, 0x00000002 # initialize rs1
li x8, 0x00000001 # initialize rs2
blt x18, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x00000001 # initialize rs1
li x8, 0x00000001 # initialize rs2
blt x18, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x31, 0x00000002 # initialize rs1
li x22, 0x00000002 # initialize rs2
blt x31, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x00000002 # initialize rs1
li x22, 0x00000002 # initialize rs2
blt x31, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x10, 0x00000002 # initialize rs1
li x2, 0x80000000 # initialize rs2
blt x10, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x80000000 # initialize rs1
li x2, 0x80000000 # initialize rs2
blt x10, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x13, 0x00000002 # initialize rs1
li x15, 0x80000001 # initialize rs2
blt x13, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x80000001 # initialize rs1
li x15, 0x80000001 # initialize rs2
blt x13, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x14, 0x00000002 # initialize rs1
li x17, 0x7fffffff # initialize rs2
blt x14, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x7fffffff # initialize rs1
li x17, 0x7fffffff # initialize rs2
blt x14, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x20, 0x00000002 # initialize rs1
li x27, 0x7ffffffe # initialize rs2
blt x20, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x7ffffffe # initialize rs1
li x27, 0x7ffffffe # initialize rs2
blt x20, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x23, 0x00000002 # initialize rs1
li x11, 0xffffffff # initialize rs2
blt x23, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0xffffffff # initialize rs1
li x11, 0xffffffff # initialize rs2
blt x23, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x27, 0x00000002 # initialize rs1
li x6, 0xfffffffe # initialize rs2
blt x27, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0xfffffffe # initialize rs1
li x6, 0xfffffffe # initialize rs2
blt x27, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x1, 0x00000002 # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
blt x1, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x5bbc8872 # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
blt x1, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x3, 0x00000002 # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
blt x3, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0xaaaaaaaa # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
blt x3, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x22, 0x00000002 # initialize rs1
li x8, 0x55555555 # initialize rs2
blt x22, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x55555555 # initialize rs1
li x8, 0x55555555 # initialize rs2
blt x22, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x25, 0x80000000 # initialize rs1
li x18, 0x00000000 # initialize rs2
blt x25, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x00000000 # initialize rs1
li x18, 0x00000000 # initialize rs2
blt x25, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x9, 0x80000000 # initialize rs1
li x22, 0x00000001 # initialize rs2
blt x9, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x00000001 # initialize rs1
li x22, 0x00000001 # initialize rs2
blt x9, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x21, 0x80000000 # initialize rs1
li x24, 0x00000002 # initialize rs2
blt x21, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x00000002 # initialize rs1
li x24, 0x00000002 # initialize rs2
blt x21, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x15, 0x80000000 # initialize rs1
li x6, 0x80000000 # initialize rs2
blt x15, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x80000000 # initialize rs1
li x6, 0x80000000 # initialize rs2
blt x15, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x27, 0x80000000 # initialize rs1
li x21, 0x80000001 # initialize rs2
blt x27, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x80000001 # initialize rs1
li x21, 0x80000001 # initialize rs2
blt x27, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x14, 0x80000000 # initialize rs1
li x10, 0x7fffffff # initialize rs2
blt x14, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x7fffffff # initialize rs1
li x10, 0x7fffffff # initialize rs2
blt x14, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x8, 0x80000000 # initialize rs1
li x6, 0x7ffffffe # initialize rs2
blt x8, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x7ffffffe # initialize rs1
li x6, 0x7ffffffe # initialize rs2
blt x8, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x18, 0x80000000 # initialize rs1
li x16, 0xffffffff # initialize rs2
blt x18, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0xffffffff # initialize rs1
li x16, 0xffffffff # initialize rs2
blt x18, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x23, 0x80000000 # initialize rs1
li x8, 0xfffffffe # initialize rs2
blt x23, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0xfffffffe # initialize rs1
li x8, 0xfffffffe # initialize rs2
blt x23, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x26, 0x80000000 # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
blt x26, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x5bbc8872 # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
blt x26, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x11, 0x80000000 # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
blt x11, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0xaaaaaaaa # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
blt x11, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x7, 0x80000000 # initialize rs1
li x28, 0x55555555 # initialize rs2
blt x7, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x55555555 # initialize rs1
li x28, 0x55555555 # initialize rs2
blt x7, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x26, 0x80000001 # initialize rs1
li x2, 0x00000000 # initialize rs2
blt x26, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x00000000 # initialize rs1
li x2, 0x00000000 # initialize rs2
blt x26, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x22, 0x80000001 # initialize rs1
li x24, 0x00000001 # initialize rs2
blt x22, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x00000001 # initialize rs1
li x24, 0x00000001 # initialize rs2
blt x22, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x16, 0x80000001 # initialize rs1
li x26, 0x00000002 # initialize rs2
blt x16, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x00000002 # initialize rs1
li x26, 0x00000002 # initialize rs2
blt x16, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x13, 0x80000001 # initialize rs1
li x12, 0x80000000 # initialize rs2
blt x13, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x80000000 # initialize rs1
li x12, 0x80000000 # initialize rs2
blt x13, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x13, 0x80000001 # initialize rs1
li x24, 0x80000001 # initialize rs2
blt x13, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x80000001 # initialize rs1
li x24, 0x80000001 # initialize rs2
blt x13, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x20, 0x80000001 # initialize rs1
li x10, 0x7fffffff # initialize rs2
blt x20, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x7fffffff # initialize rs1
li x10, 0x7fffffff # initialize rs2
blt x20, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x20, 0x80000001 # initialize rs1
li x8, 0x7ffffffe # initialize rs2
blt x20, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x7ffffffe # initialize rs1
li x8, 0x7ffffffe # initialize rs2
blt x20, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x7, 0x80000001 # initialize rs1
li x20, 0xffffffff # initialize rs2
blt x7, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0xffffffff # initialize rs1
li x20, 0xffffffff # initialize rs2
blt x7, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x16, 0x80000001 # initialize rs1
li x23, 0xfffffffe # initialize rs2
blt x16, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0xfffffffe # initialize rs1
li x23, 0xfffffffe # initialize rs2
blt x16, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x18, 0x80000001 # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
blt x18, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x5bbc8872 # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
blt x18, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x11, 0x80000001 # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
blt x11, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0xaaaaaaaa # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
blt x11, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x14, 0x80000001 # initialize rs1
li x10, 0x55555555 # initialize rs2
blt x14, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x55555555 # initialize rs1
li x10, 0x55555555 # initialize rs2
blt x14, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x25, 0x7fffffff # initialize rs1
li x21, 0x00000000 # initialize rs2
blt x25, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x00000000 # initialize rs1
li x21, 0x00000000 # initialize rs2
blt x25, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x20, 0x7fffffff # initialize rs1
li x10, 0x00000001 # initialize rs2
blt x20, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x00000001 # initialize rs1
li x10, 0x00000001 # initialize rs2
blt x20, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x7, 0x7fffffff # initialize rs1
li x20, 0x00000002 # initialize rs2
blt x7, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x00000002 # initialize rs1
li x20, 0x00000002 # initialize rs2
blt x7, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x13, 0x7fffffff # initialize rs1
li x14, 0x80000000 # initialize rs2
blt x13, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x80000000 # initialize rs1
li x14, 0x80000000 # initialize rs2
blt x13, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x5, 0x7fffffff # initialize rs1
li x25, 0x80000001 # initialize rs2
blt x5, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x80000001 # initialize rs1
li x25, 0x80000001 # initialize rs2
blt x5, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x27, 0x7fffffff # initialize rs1
li x3, 0x7fffffff # initialize rs2
blt x27, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x7fffffff # initialize rs1
li x3, 0x7fffffff # initialize rs2
blt x27, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x10, 0x7fffffff # initialize rs1
li x30, 0x7ffffffe # initialize rs2
blt x10, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x7ffffffe # initialize rs1
li x30, 0x7ffffffe # initialize rs2
blt x10, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x24, 0x7fffffff # initialize rs1
li x31, 0xffffffff # initialize rs2
blt x24, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0xffffffff # initialize rs1
li x31, 0xffffffff # initialize rs2
blt x24, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x30, 0x7fffffff # initialize rs1
li x3, 0xfffffffe # initialize rs2
blt x30, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0xfffffffe # initialize rs1
li x3, 0xfffffffe # initialize rs2
blt x30, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x13, 0x7fffffff # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
blt x13, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x5bbc8872 # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
blt x13, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x10, 0x7fffffff # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
blt x10, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0xaaaaaaaa # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
blt x10, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x19, 0x7fffffff # initialize rs1
li x3, 0x55555555 # initialize rs2
blt x19, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x55555555 # initialize rs1
li x3, 0x55555555 # initialize rs2
blt x19, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x29, 0x7ffffffe # initialize rs1
li x3, 0x00000000 # initialize rs2
blt x29, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x00000000 # initialize rs1
li x3, 0x00000000 # initialize rs2
blt x29, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x11, 0x7ffffffe # initialize rs1
li x19, 0x00000001 # initialize rs2
blt x11, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x00000001 # initialize rs1
li x19, 0x00000001 # initialize rs2
blt x11, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x26, 0x7ffffffe # initialize rs1
li x7, 0x00000002 # initialize rs2
blt x26, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x00000002 # initialize rs1
li x7, 0x00000002 # initialize rs2
blt x26, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x2, 0x7ffffffe # initialize rs1
li x9, 0x80000000 # initialize rs2
blt x2, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x80000000 # initialize rs1
li x9, 0x80000000 # initialize rs2
blt x2, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x19, 0x7ffffffe # initialize rs1
li x20, 0x80000001 # initialize rs2
blt x19, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x80000001 # initialize rs1
li x20, 0x80000001 # initialize rs2
blt x19, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x8, 0x7ffffffe # initialize rs1
li x7, 0x7fffffff # initialize rs2
blt x8, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x7fffffff # initialize rs1
li x7, 0x7fffffff # initialize rs2
blt x8, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x31, 0x7ffffffe # initialize rs1
li x11, 0x7ffffffe # initialize rs2
blt x31, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x7ffffffe # initialize rs1
li x11, 0x7ffffffe # initialize rs2
blt x31, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x26, 0x7ffffffe # initialize rs1
li x16, 0xffffffff # initialize rs2
blt x26, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0xffffffff # initialize rs1
li x16, 0xffffffff # initialize rs2
blt x26, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x22, 0x7ffffffe # initialize rs1
li x21, 0xfffffffe # initialize rs2
blt x22, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0xfffffffe # initialize rs1
li x21, 0xfffffffe # initialize rs2
blt x22, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x1, 0x7ffffffe # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
blt x1, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x5bbc8872 # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
blt x1, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x11, 0x7ffffffe # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
blt x11, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0xaaaaaaaa # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
blt x11, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x30, 0x7ffffffe # initialize rs1
li x2, 0x55555555 # initialize rs2
blt x30, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x55555555 # initialize rs1
li x2, 0x55555555 # initialize rs2
blt x30, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x29, 0xffffffff # initialize rs1
li x9, 0x00000000 # initialize rs2
blt x29, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x00000000 # initialize rs1
li x9, 0x00000000 # initialize rs2
blt x29, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x24, 0xffffffff # initialize rs1
li x16, 0x00000001 # initialize rs2
blt x24, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x00000001 # initialize rs1
li x16, 0x00000001 # initialize rs2
blt x24, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x1, 0xffffffff # initialize rs1
li x20, 0x00000002 # initialize rs2
blt x1, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x00000002 # initialize rs1
li x20, 0x00000002 # initialize rs2
blt x1, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x17, 0xffffffff # initialize rs1
li x19, 0x80000000 # initialize rs2
blt x17, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x80000000 # initialize rs1
li x19, 0x80000000 # initialize rs2
blt x17, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x12, 0xffffffff # initialize rs1
li x10, 0x80000001 # initialize rs2
blt x12, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x80000001 # initialize rs1
li x10, 0x80000001 # initialize rs2
blt x12, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x16, 0xffffffff # initialize rs1
li x1, 0x7fffffff # initialize rs2
blt x16, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x7fffffff # initialize rs1
li x1, 0x7fffffff # initialize rs2
blt x16, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x11, 0xffffffff # initialize rs1
li x26, 0x7ffffffe # initialize rs2
blt x11, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x7ffffffe # initialize rs1
li x26, 0x7ffffffe # initialize rs2
blt x11, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x19, 0xffffffff # initialize rs1
li x7, 0xffffffff # initialize rs2
blt x19, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0xffffffff # initialize rs1
li x7, 0xffffffff # initialize rs2
blt x19, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x29, 0xffffffff # initialize rs1
li x31, 0xfffffffe # initialize rs2
blt x29, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0xfffffffe # initialize rs1
li x31, 0xfffffffe # initialize rs2
blt x29, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x23, 0xffffffff # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
blt x23, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x5bbc8872 # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
blt x23, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x2, 0xffffffff # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
blt x2, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0xaaaaaaaa # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
blt x2, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x12, 0xffffffff # initialize rs1
li x3, 0x55555555 # initialize rs2
blt x12, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x55555555 # initialize rs1
li x3, 0x55555555 # initialize rs2
blt x12, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x13, 0xfffffffe # initialize rs1
li x8, 0x00000000 # initialize rs2
blt x13, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x00000000 # initialize rs1
li x8, 0x00000000 # initialize rs2
blt x13, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x29, 0xfffffffe # initialize rs1
li x31, 0x00000001 # initialize rs2
blt x29, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x00000001 # initialize rs1
li x31, 0x00000001 # initialize rs2
blt x29, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x16, 0xfffffffe # initialize rs1
li x15, 0x00000002 # initialize rs2
blt x16, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x00000002 # initialize rs1
li x15, 0x00000002 # initialize rs2
blt x16, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x7, 0xfffffffe # initialize rs1
li x13, 0x80000000 # initialize rs2
blt x7, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x80000000 # initialize rs1
li x13, 0x80000000 # initialize rs2
blt x7, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x26, 0xfffffffe # initialize rs1
li x25, 0x80000001 # initialize rs2
blt x26, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x80000001 # initialize rs1
li x25, 0x80000001 # initialize rs2
blt x26, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x19, 0xfffffffe # initialize rs1
li x10, 0x7fffffff # initialize rs2
blt x19, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x7fffffff # initialize rs1
li x10, 0x7fffffff # initialize rs2
blt x19, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x30, 0xfffffffe # initialize rs1
li x1, 0x7ffffffe # initialize rs2
blt x30, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x7ffffffe # initialize rs1
li x1, 0x7ffffffe # initialize rs2
blt x30, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x15, 0xfffffffe # initialize rs1
li x17, 0xffffffff # initialize rs2
blt x15, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0xffffffff # initialize rs1
li x17, 0xffffffff # initialize rs2
blt x15, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x2, 0xfffffffe # initialize rs1
li x28, 0xfffffffe # initialize rs2
blt x2, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0xfffffffe # initialize rs1
li x28, 0xfffffffe # initialize rs2
blt x2, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x28, 0xfffffffe # initialize rs1
li x8, 0x5bbc8872 # initialize rs2
blt x28, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x5bbc8872 # initialize rs1
li x8, 0x5bbc8872 # initialize rs2
blt x28, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x8, 0xfffffffe # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
blt x8, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0xaaaaaaaa # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
blt x8, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x24, 0xfffffffe # initialize rs1
li x23, 0x55555555 # initialize rs2
blt x24, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x55555555 # initialize rs1
li x23, 0x55555555 # initialize rs2
blt x24, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x24, 0x5bbc8872 # initialize rs1
li x3, 0x00000000 # initialize rs2
blt x24, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x00000000 # initialize rs1
li x3, 0x00000000 # initialize rs2
blt x24, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x3, 0x5bbc8872 # initialize rs1
li x12, 0x00000001 # initialize rs2
blt x3, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x00000001 # initialize rs1
li x12, 0x00000001 # initialize rs2
blt x3, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x11, 0x5bbc8872 # initialize rs1
li x7, 0x00000002 # initialize rs2
blt x11, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x00000002 # initialize rs1
li x7, 0x00000002 # initialize rs2
blt x11, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x20, 0x5bbc8872 # initialize rs1
li x11, 0x80000000 # initialize rs2
blt x20, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x80000000 # initialize rs1
li x11, 0x80000000 # initialize rs2
blt x20, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x7, 0x5bbc8872 # initialize rs1
li x18, 0x80000001 # initialize rs2
blt x7, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x80000001 # initialize rs1
li x18, 0x80000001 # initialize rs2
blt x7, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x23, 0x5bbc8872 # initialize rs1
li x27, 0x7fffffff # initialize rs2
blt x23, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x7fffffff # initialize rs1
li x27, 0x7fffffff # initialize rs2
blt x23, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x17, 0x5bbc8872 # initialize rs1
li x1, 0x7ffffffe # initialize rs2
blt x17, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x7ffffffe # initialize rs1
li x1, 0x7ffffffe # initialize rs2
blt x17, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x17, 0x5bbc8872 # initialize rs1
li x2, 0xffffffff # initialize rs2
blt x17, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0xffffffff # initialize rs1
li x2, 0xffffffff # initialize rs2
blt x17, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x25, 0x5bbc8872 # initialize rs1
li x22, 0xfffffffe # initialize rs2
blt x25, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0xfffffffe # initialize rs1
li x22, 0xfffffffe # initialize rs2
blt x25, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x31, 0x5bbc8872 # initialize rs1
li x24, 0x5bbc8872 # initialize rs2
blt x31, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x5bbc8872 # initialize rs1
li x24, 0x5bbc8872 # initialize rs2
blt x31, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x28, 0x5bbc8872 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
blt x28, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0xaaaaaaaa # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
blt x28, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x10, 0x5bbc8872 # initialize rs1
li x23, 0x55555555 # initialize rs2
blt x10, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x55555555 # initialize rs1
li x23, 0x55555555 # initialize rs2
blt x10, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x6, 0xaaaaaaaa # initialize rs1
li x29, 0x00000000 # initialize rs2
blt x6, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x00000000 # initialize rs1
li x29, 0x00000000 # initialize rs2
blt x6, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x2, 0xaaaaaaaa # initialize rs1
li x24, 0x00000001 # initialize rs2
blt x2, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x00000001 # initialize rs1
li x24, 0x00000001 # initialize rs2
blt x2, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x14, 0xaaaaaaaa # initialize rs1
li x21, 0x00000002 # initialize rs2
blt x14, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x00000002 # initialize rs1
li x21, 0x00000002 # initialize rs2
blt x14, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x10, 0xaaaaaaaa # initialize rs1
li x28, 0x80000000 # initialize rs2
blt x10, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x80000000 # initialize rs1
li x28, 0x80000000 # initialize rs2
blt x10, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x6, 0xaaaaaaaa # initialize rs1
li x27, 0x80000001 # initialize rs2
blt x6, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x80000001 # initialize rs1
li x27, 0x80000001 # initialize rs2
blt x6, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x14, 0xaaaaaaaa # initialize rs1
li x31, 0x7fffffff # initialize rs2
blt x14, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x7fffffff # initialize rs1
li x31, 0x7fffffff # initialize rs2
blt x14, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x18, 0xaaaaaaaa # initialize rs1
li x11, 0x7ffffffe # initialize rs2
blt x18, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x7ffffffe # initialize rs1
li x11, 0x7ffffffe # initialize rs2
blt x18, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x29, 0xaaaaaaaa # initialize rs1
li x23, 0xffffffff # initialize rs2
blt x29, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0xffffffff # initialize rs1
li x23, 0xffffffff # initialize rs2
blt x29, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x23, 0xaaaaaaaa # initialize rs1
li x5, 0xfffffffe # initialize rs2
blt x23, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0xfffffffe # initialize rs1
li x5, 0xfffffffe # initialize rs2
blt x23, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x14, 0xaaaaaaaa # initialize rs1
li x15, 0x5bbc8872 # initialize rs2
blt x14, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x5bbc8872 # initialize rs1
li x15, 0x5bbc8872 # initialize rs2
blt x14, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x25, 0xaaaaaaaa # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
blt x25, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0xaaaaaaaa # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
blt x25, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x20, 0xaaaaaaaa # initialize rs1
li x28, 0x55555555 # initialize rs2
blt x20, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x55555555 # initialize rs1
li x28, 0x55555555 # initialize rs2
blt x20, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x6, 0x55555555 # initialize rs1
li x19, 0x00000000 # initialize rs2
blt x6, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x00000000 # initialize rs1
li x19, 0x00000000 # initialize rs2
blt x6, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x20, 0x55555555 # initialize rs1
li x10, 0x00000001 # initialize rs2
blt x20, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x00000001 # initialize rs1
li x10, 0x00000001 # initialize rs2
blt x20, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x31, 0x55555555 # initialize rs1
li x13, 0x00000002 # initialize rs2
blt x31, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x00000002 # initialize rs1
li x13, 0x00000002 # initialize rs2
blt x31, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x27, 0x55555555 # initialize rs1
li x20, 0x80000000 # initialize rs2
blt x27, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x80000000 # initialize rs1
li x20, 0x80000000 # initialize rs2
blt x27, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x12, 0x55555555 # initialize rs1
li x29, 0x80000001 # initialize rs2
blt x12, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x80000001 # initialize rs1
li x29, 0x80000001 # initialize rs2
blt x12, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x27, 0x55555555 # initialize rs1
li x17, 0x7fffffff # initialize rs2
blt x27, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x7fffffff # initialize rs1
li x17, 0x7fffffff # initialize rs2
blt x27, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x23, 0x55555555 # initialize rs1
li x16, 0x7ffffffe # initialize rs2
blt x23, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x7ffffffe # initialize rs1
li x16, 0x7ffffffe # initialize rs2
blt x23, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x17, 0x55555555 # initialize rs1
li x1, 0xffffffff # initialize rs2
blt x17, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0xffffffff # initialize rs1
li x1, 0xffffffff # initialize rs2
blt x17, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x6, 0x55555555 # initialize rs1
li x12, 0xfffffffe # initialize rs2
blt x6, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0xfffffffe # initialize rs1
li x12, 0xfffffffe # initialize rs2
blt x6, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x18, 0x55555555 # initialize rs1
li x9, 0x5bbc8872 # initialize rs2
blt x18, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x5bbc8872 # initialize rs1
li x9, 0x5bbc8872 # initialize rs2
blt x18, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x7, 0x55555555 # initialize rs1
li x18, 0xaaaaaaaa # initialize rs2
blt x7, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0xaaaaaaaa # initialize rs1
li x18, 0xaaaaaaaa # initialize rs2
blt x7, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x17, 0x55555555 # initialize rs1
li x9, 0x55555555 # initialize rs2
blt x17, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x55555555 # initialize rs1
li x9, 0x55555555 # initialize rs2
blt x17, x9, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x500f90bf # initialize rs1
li x0, 0x962f9f7a # initialize rs2
blt x0, x0, 1f # perform operation
nop
nop
1:
# same values in both registers
li x0, 0x962f9f7a # initialize rs1
li x0, 0x962f9f7a # initialize rs2
blt x0, x0, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x61b41b99 # initialize rs1
li x1, 0xe92f70e4 # initialize rs2
blt x1, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0xe92f70e4 # initialize rs1
li x1, 0xe92f70e4 # initialize rs2
blt x1, x1, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x440df229 # initialize rs1
li x2, 0x027ac4c4 # initialize rs2
blt x2, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x027ac4c4 # initialize rs1
li x2, 0x027ac4c4 # initialize rs2
blt x2, x2, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x8c88960d # initialize rs1
li x3, 0x1f7d1380 # initialize rs2
blt x3, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x1f7d1380 # initialize rs1
li x3, 0x1f7d1380 # initialize rs2
blt x3, x3, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xab396fa0 # initialize rs1
li x4, 0xeb4015fc # initialize rs2
blt x4, x4, 1f # perform operation
nop
nop
1:
# same values in both registers
li x4, 0xeb4015fc # initialize rs1
li x4, 0xeb4015fc # initialize rs2
blt x4, x4, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x23aab4ee # initialize rs1
li x5, 0x1a13d018 # initialize rs2
blt x5, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x1a13d018 # initialize rs1
li x5, 0x1a13d018 # initialize rs2
blt x5, x5, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x266f62a3 # initialize rs1
li x6, 0x73ebfa4b # initialize rs2
blt x6, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x73ebfa4b # initialize rs1
li x6, 0x73ebfa4b # initialize rs2
blt x6, x6, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x19760802 # initialize rs1
li x7, 0xc95d6d45 # initialize rs2
blt x7, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0xc95d6d45 # initialize rs1
li x7, 0xc95d6d45 # initialize rs2
blt x7, x7, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x101b93ed # initialize rs1
li x8, 0x845aa09e # initialize rs2
blt x8, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x845aa09e # initialize rs1
li x8, 0x845aa09e # initialize rs2
blt x8, x8, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x35cbe688 # initialize rs1
li x9, 0xdd205ffa # initialize rs2
blt x9, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0xdd205ffa # initialize rs1
li x9, 0xdd205ffa # initialize rs2
blt x9, x9, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xe17ee87b # initialize rs1
li x10, 0x4e898671 # initialize rs2
blt x10, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x4e898671 # initialize rs1
li x10, 0x4e898671 # initialize rs2
blt x10, x10, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xfa16eff2 # initialize rs1
li x11, 0xb3348910 # initialize rs2
blt x11, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0xb3348910 # initialize rs1
li x11, 0xb3348910 # initialize rs2
blt x11, x11, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xf83cc4b8 # initialize rs1
li x12, 0x4cfed63f # initialize rs2
blt x12, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x4cfed63f # initialize rs1
li x12, 0x4cfed63f # initialize rs2
blt x12, x12, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x8e2afed0 # initialize rs1
li x13, 0x1e8be44f # initialize rs2
blt x13, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x1e8be44f # initialize rs1
li x13, 0x1e8be44f # initialize rs2
blt x13, x13, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xfe060d39 # initialize rs1
li x14, 0x8d596258 # initialize rs2
blt x14, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x8d596258 # initialize rs1
li x14, 0x8d596258 # initialize rs2
blt x14, x14, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x9ea774e8 # initialize rs1
li x15, 0x67caf1b8 # initialize rs2
blt x15, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x67caf1b8 # initialize rs1
li x15, 0x67caf1b8 # initialize rs2
blt x15, x15, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x8e80142a # initialize rs1
li x16, 0xf66270f1 # initialize rs2
blt x16, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0xf66270f1 # initialize rs1
li x16, 0xf66270f1 # initialize rs2
blt x16, x16, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xe733270d # initialize rs1
li x17, 0x05eb6571 # initialize rs2
blt x17, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x05eb6571 # initialize rs1
li x17, 0x05eb6571 # initialize rs2
blt x17, x17, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x1c514bb0 # initialize rs1
li x18, 0x06e750ec # initialize rs2
blt x18, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x06e750ec # initialize rs1
li x18, 0x06e750ec # initialize rs2
blt x18, x18, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xcfd8b493 # initialize rs1
li x19, 0x2ba6a412 # initialize rs2
blt x19, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x2ba6a412 # initialize rs1
li x19, 0x2ba6a412 # initialize rs2
blt x19, x19, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xa3d749bb # initialize rs1
li x20, 0x41e86df1 # initialize rs2
blt x20, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x41e86df1 # initialize rs1
li x20, 0x41e86df1 # initialize rs2
blt x20, x20, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xb3b542c2 # initialize rs1
li x21, 0x5546c6e4 # initialize rs2
blt x21, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x5546c6e4 # initialize rs1
li x21, 0x5546c6e4 # initialize rs2
blt x21, x21, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x5c1870a5 # initialize rs1
li x22, 0xbb52bce0 # initialize rs2
blt x22, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0xbb52bce0 # initialize rs1
li x22, 0xbb52bce0 # initialize rs2
blt x22, x22, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x7d81930e # initialize rs1
li x23, 0x340695a9 # initialize rs2
blt x23, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x340695a9 # initialize rs1
li x23, 0x340695a9 # initialize rs2
blt x23, x23, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x85e66201 # initialize rs1
li x24, 0xae497a55 # initialize rs2
blt x24, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0xae497a55 # initialize rs1
li x24, 0xae497a55 # initialize rs2
blt x24, x24, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xa7ade900 # initialize rs1
li x25, 0x221b944d # initialize rs2
blt x25, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x221b944d # initialize rs1
li x25, 0x221b944d # initialize rs2
blt x25, x25, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xf92e36c4 # initialize rs1
li x26, 0xa33577fc # initialize rs2
blt x26, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0xa33577fc # initialize rs1
li x26, 0xa33577fc # initialize rs2
blt x26, x26, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x17d7b4be # initialize rs1
li x27, 0x113797f5 # initialize rs2
blt x27, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x113797f5 # initialize rs1
li x27, 0x113797f5 # initialize rs2
blt x27, x27, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x684b1b96 # initialize rs1
li x28, 0x78dd5d2e # initialize rs2
blt x28, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x78dd5d2e # initialize rs1
li x28, 0x78dd5d2e # initialize rs2
blt x28, x28, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xfe9ac27f # initialize rs1
li x29, 0xa9c77737 # initialize rs2
blt x29, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0xa9c77737 # initialize rs1
li x29, 0xa9c77737 # initialize rs2
blt x29, x29, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x3999f3f5 # initialize rs1
li x30, 0x6c5939f0 # initialize rs2
blt x30, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x6c5939f0 # initialize rs1
li x30, 0x6c5939f0 # initialize rs2
blt x30, x30, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xebbb2799 # initialize rs1
li x31, 0x8445ce47 # initialize rs2
blt x31, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x8445ce47 # initialize rs1
li x31, 0x8445ce47 # initialize rs2
blt x31, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_offset negative bin
j 2f # jump past backward branch target
1: j 3f # backward branch target: jump past backward branch
2: blt x0, x0, 1b # backward branch
3: nop # done with sequence

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x7, x25 # perform first operation
blt x11, x26, arbitraryLabel19
nop
arbitraryLabel19:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x26, x20, x12 # perform first operation
blt x8, x22, arbitraryLabel20
nop
arbitraryLabel20:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x31, x17 # perform first operation
blt x27, x9, arbitraryLabel21
nop
arbitraryLabel21:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x7, x25, x19 # perform first operation
blt x7, x2, arbitraryLabel22
nop
arbitraryLabel22:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x20, x16, x27 # perform first operation
blt x13, x9, arbitraryLabel23
nop
arbitraryLabel23:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x9, x20, x6 # perform first operation
blt x25, x10, arbitraryLabel24
nop
arbitraryLabel24:
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
