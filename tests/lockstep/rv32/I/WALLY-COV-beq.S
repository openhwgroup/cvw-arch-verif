///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/I/WALLY-COV-beq.S
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
li x0, 0x2947ca01 # initialize rs1
li x26, 0x895e02a2 # initialize rs2
beq x0, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x0, 0x895e02a2 # initialize rs1
li x26, 0x895e02a2 # initialize rs2
beq x0, x26, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xe0f39171 # initialize rs1
li x24, 0xc6f11093 # initialize rs2
beq x1, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0xc6f11093 # initialize rs1
li x24, 0xc6f11093 # initialize rs2
beq x1, x24, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x233f2b3f # initialize rs1
li x14, 0x8d81b25a # initialize rs2
beq x2, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x8d81b25a # initialize rs1
li x14, 0x8d81b25a # initialize rs2
beq x2, x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x512d4a9d # initialize rs1
li x17, 0x5037fd77 # initialize rs2
beq x3, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x5037fd77 # initialize rs1
li x17, 0x5037fd77 # initialize rs2
beq x3, x17, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x04483796 # initialize rs1
li x11, 0x2113945b # initialize rs2
beq x4, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x4, 0x2113945b # initialize rs1
li x11, 0x2113945b # initialize rs2
beq x4, x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xcc63796c # initialize rs1
li x11, 0x07ff3ec8 # initialize rs2
beq x5, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x07ff3ec8 # initialize rs1
li x11, 0x07ff3ec8 # initialize rs2
beq x5, x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x6)
li x6, 0xb212874a # initialize rs1
li x20, 0x57dc47c2 # initialize rs2
beq x6, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x57dc47c2 # initialize rs1
li x20, 0x57dc47c2 # initialize rs2
beq x6, x20, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xb83888d7 # initialize rs1
li x2, 0x23e363ab # initialize rs2
beq x7, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x23e363ab # initialize rs1
li x2, 0x23e363ab # initialize rs2
beq x7, x2, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x86dc0567 # initialize rs1
li x7, 0xf740fa79 # initialize rs2
beq x8, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0xf740fa79 # initialize rs1
li x7, 0xf740fa79 # initialize rs2
beq x8, x7, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x3f464a26 # initialize rs1
li x2, 0x2087636d # initialize rs2
beq x9, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x2087636d # initialize rs1
li x2, 0x2087636d # initialize rs2
beq x9, x2, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x9a68fcb7 # initialize rs1
li x19, 0x41867ed6 # initialize rs2
beq x10, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x41867ed6 # initialize rs1
li x19, 0x41867ed6 # initialize rs2
beq x10, x19, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xbf5b3207 # initialize rs1
li x29, 0xe11591fc # initialize rs2
beq x11, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0xe11591fc # initialize rs1
li x29, 0xe11591fc # initialize rs2
beq x11, x29, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x760608a6 # initialize rs1
li x29, 0xab0c7880 # initialize rs2
beq x12, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0xab0c7880 # initialize rs1
li x29, 0xab0c7880 # initialize rs2
beq x12, x29, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xb0d7974c # initialize rs1
li x23, 0x60c274bb # initialize rs2
beq x13, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x60c274bb # initialize rs1
li x23, 0x60c274bb # initialize rs2
beq x13, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x1019aeaa # initialize rs1
li x8, 0x0605869e # initialize rs2
beq x14, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x0605869e # initialize rs1
li x8, 0x0605869e # initialize rs2
beq x14, x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x1a902c2b # initialize rs1
li x26, 0xadac5a36 # initialize rs2
beq x15, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0xadac5a36 # initialize rs1
li x26, 0xadac5a36 # initialize rs2
beq x15, x26, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x4342f8c6 # initialize rs1
li x5, 0x8d1ccd9c # initialize rs2
beq x16, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x8d1ccd9c # initialize rs1
li x5, 0x8d1ccd9c # initialize rs2
beq x16, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x8d6abe33 # initialize rs1
li x20, 0x75121e85 # initialize rs2
beq x17, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x75121e85 # initialize rs1
li x20, 0x75121e85 # initialize rs2
beq x17, x20, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x371ba9f0 # initialize rs1
li x13, 0x71a198ec # initialize rs2
beq x18, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x71a198ec # initialize rs1
li x13, 0x71a198ec # initialize rs2
beq x18, x13, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x1832d296 # initialize rs1
li x16, 0xf493f7a4 # initialize rs2
beq x19, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0xf493f7a4 # initialize rs1
li x16, 0xf493f7a4 # initialize rs2
beq x19, x16, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xaae834db # initialize rs1
li x27, 0x216fbf8d # initialize rs2
beq x20, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x216fbf8d # initialize rs1
li x27, 0x216fbf8d # initialize rs2
beq x20, x27, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xdc9de638 # initialize rs1
li x31, 0xd73adbc4 # initialize rs2
beq x21, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0xd73adbc4 # initialize rs1
li x31, 0xd73adbc4 # initialize rs2
beq x21, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x5a5adf57 # initialize rs1
li x18, 0x43664ec5 # initialize rs2
beq x22, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x43664ec5 # initialize rs1
li x18, 0x43664ec5 # initialize rs2
beq x22, x18, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x181efbc8 # initialize rs1
li x31, 0xa76e6cb5 # initialize rs2
beq x23, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0xa76e6cb5 # initialize rs1
li x31, 0xa76e6cb5 # initialize rs2
beq x23, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x3844fa36 # initialize rs1
li x16, 0x669c0e84 # initialize rs2
beq x24, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x669c0e84 # initialize rs1
li x16, 0x669c0e84 # initialize rs2
beq x24, x16, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xf7c655bc # initialize rs1
li x28, 0xd7c83c10 # initialize rs2
beq x25, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0xd7c83c10 # initialize rs1
li x28, 0xd7c83c10 # initialize rs2
beq x25, x28, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x65a72180 # initialize rs1
li x21, 0xa0f1b331 # initialize rs2
beq x26, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0xa0f1b331 # initialize rs1
li x21, 0xa0f1b331 # initialize rs2
beq x26, x21, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x7773b7a4 # initialize rs1
li x19, 0x6e1c59e3 # initialize rs2
beq x27, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x6e1c59e3 # initialize rs1
li x19, 0x6e1c59e3 # initialize rs2
beq x27, x19, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x83069137 # initialize rs1
li x19, 0x8a10b9a9 # initialize rs2
beq x28, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x8a10b9a9 # initialize rs1
li x19, 0x8a10b9a9 # initialize rs2
beq x28, x19, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x9976e7d9 # initialize rs1
li x21, 0xd10d5563 # initialize rs2
beq x29, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0xd10d5563 # initialize rs1
li x21, 0xd10d5563 # initialize rs2
beq x29, x21, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xadc00abf # initialize rs1
li x19, 0xe6ed243d # initialize rs2
beq x30, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0xe6ed243d # initialize rs1
li x19, 0xe6ed243d # initialize rs2
beq x30, x19, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x697bde7a # initialize rs1
li x18, 0xe7ffb2e8 # initialize rs2
beq x31, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0xe7ffb2e8 # initialize rs1
li x18, 0xe7ffb2e8 # initialize rs2
beq x31, x18, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x0)
li x30, 0x3aca3c00 # initialize rs1
li x0, 0x02a33c7b # initialize rs2
beq x30, x0, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x02a33c7b # initialize rs1
li x0, 0x02a33c7b # initialize rs2
beq x30, x0, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x1)
li x9, 0xc561393e # initialize rs1
li x1, 0xe542ebde # initialize rs2
beq x9, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0xe542ebde # initialize rs1
li x1, 0xe542ebde # initialize rs2
beq x9, x1, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x2)
li x12, 0x09804702 # initialize rs1
li x2, 0x5bf712bf # initialize rs2
beq x12, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x5bf712bf # initialize rs1
li x2, 0x5bf712bf # initialize rs2
beq x12, x2, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x3)
li x29, 0xd463bdfd # initialize rs1
li x3, 0xb2910eac # initialize rs2
beq x29, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0xb2910eac # initialize rs1
li x3, 0xb2910eac # initialize rs2
beq x29, x3, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x17, 0x1634f459 # initialize rs1
li x4, 0x74e1f486 # initialize rs2
beq x17, x4, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x74e1f486 # initialize rs1
li x4, 0x74e1f486 # initialize rs2
beq x17, x4, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x19, 0xb8a3e20a # initialize rs1
li x5, 0x8ca69d97 # initialize rs2
beq x19, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x8ca69d97 # initialize rs1
li x5, 0x8ca69d97 # initialize rs2
beq x19, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x1, 0xbfd84346 # initialize rs1
li x6, 0x3d3d2873 # initialize rs2
beq x1, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x3d3d2873 # initialize rs1
li x6, 0x3d3d2873 # initialize rs2
beq x1, x6, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x26, 0xb3c0744f # initialize rs1
li x7, 0x9327520d # initialize rs2
beq x26, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x9327520d # initialize rs1
li x7, 0x9327520d # initialize rs2
beq x26, x7, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x8)
li x11, 0x43ab9be9 # initialize rs1
li x8, 0xad0787aa # initialize rs2
beq x11, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0xad0787aa # initialize rs1
li x8, 0xad0787aa # initialize rs2
beq x11, x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x9)
li x31, 0x9f0c4142 # initialize rs1
li x9, 0x507b41f4 # initialize rs2
beq x31, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x507b41f4 # initialize rs1
li x9, 0x507b41f4 # initialize rs2
beq x31, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x10)
li x26, 0x2c87441f # initialize rs1
li x10, 0x9e5834ef # initialize rs2
beq x26, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x9e5834ef # initialize rs1
li x10, 0x9e5834ef # initialize rs2
beq x26, x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x11)
li x24, 0x6918276b # initialize rs1
li x11, 0xe71c0b1b # initialize rs2
beq x24, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0xe71c0b1b # initialize rs1
li x11, 0xe71c0b1b # initialize rs2
beq x24, x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x12)
li x19, 0xd844e773 # initialize rs1
li x12, 0x6ee5f4c2 # initialize rs2
beq x19, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x6ee5f4c2 # initialize rs1
li x12, 0x6ee5f4c2 # initialize rs2
beq x19, x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x13)
li x25, 0xbeee05ab # initialize rs1
li x13, 0x28a22815 # initialize rs2
beq x25, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x28a22815 # initialize rs1
li x13, 0x28a22815 # initialize rs2
beq x25, x13, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x14)
li x8, 0x869b4830 # initialize rs1
li x14, 0x8112cd8b # initialize rs2
beq x8, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x8112cd8b # initialize rs1
li x14, 0x8112cd8b # initialize rs2
beq x8, x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x15)
li x7, 0x0e28bb5b # initialize rs1
li x15, 0x54f2f53f # initialize rs2
beq x7, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x54f2f53f # initialize rs1
li x15, 0x54f2f53f # initialize rs2
beq x7, x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x16)
li x1, 0x600f83e6 # initialize rs1
li x16, 0xdd8637ca # initialize rs2
beq x1, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0xdd8637ca # initialize rs1
li x16, 0xdd8637ca # initialize rs2
beq x1, x16, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x17)
li x28, 0xfc5ee0fb # initialize rs1
li x17, 0x52662668 # initialize rs2
beq x28, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x52662668 # initialize rs1
li x17, 0x52662668 # initialize rs2
beq x28, x17, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x18)
li x2, 0x16b70e23 # initialize rs1
li x18, 0x11e43614 # initialize rs2
beq x2, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x11e43614 # initialize rs1
li x18, 0x11e43614 # initialize rs2
beq x2, x18, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x19)
li x17, 0x076d381f # initialize rs1
li x19, 0xae2e45b3 # initialize rs2
beq x17, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0xae2e45b3 # initialize rs1
li x19, 0xae2e45b3 # initialize rs2
beq x17, x19, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x20)
li x14, 0x72c98775 # initialize rs1
li x20, 0xc7e4aa08 # initialize rs2
beq x14, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0xc7e4aa08 # initialize rs1
li x20, 0xc7e4aa08 # initialize rs2
beq x14, x20, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x21)
li x10, 0x99f685be # initialize rs1
li x21, 0x4869512c # initialize rs2
beq x10, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x4869512c # initialize rs1
li x21, 0x4869512c # initialize rs2
beq x10, x21, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x22)
li x5, 0x5fb3a172 # initialize rs1
li x22, 0x61fd9f46 # initialize rs2
beq x5, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x61fd9f46 # initialize rs1
li x22, 0x61fd9f46 # initialize rs2
beq x5, x22, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x23)
li x3, 0x62d306f6 # initialize rs1
li x23, 0x01dde89e # initialize rs2
beq x3, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x01dde89e # initialize rs1
li x23, 0x01dde89e # initialize rs2
beq x3, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x24)
li x22, 0xcfce6012 # initialize rs1
li x24, 0xbe586421 # initialize rs2
beq x22, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0xbe586421 # initialize rs1
li x24, 0xbe586421 # initialize rs2
beq x22, x24, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x25)
li x11, 0xdd6868b4 # initialize rs1
li x25, 0xb090e2d4 # initialize rs2
beq x11, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0xb090e2d4 # initialize rs1
li x25, 0xb090e2d4 # initialize rs2
beq x11, x25, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x26)
li x9, 0x9fb27d3d # initialize rs1
li x26, 0x919d47cc # initialize rs2
beq x9, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x919d47cc # initialize rs1
li x26, 0x919d47cc # initialize rs2
beq x9, x26, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x27)
li x7, 0x2b5bf1b9 # initialize rs1
li x27, 0xa31a48e2 # initialize rs2
beq x7, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0xa31a48e2 # initialize rs1
li x27, 0xa31a48e2 # initialize rs2
beq x7, x27, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x28)
li x29, 0xaddb7831 # initialize rs1
li x28, 0x03fff37a # initialize rs2
beq x29, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x03fff37a # initialize rs1
li x28, 0x03fff37a # initialize rs2
beq x29, x28, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x29)
li x18, 0x42ddeb1a # initialize rs1
li x29, 0xf013fbaa # initialize rs2
beq x18, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0xf013fbaa # initialize rs1
li x29, 0xf013fbaa # initialize rs2
beq x18, x29, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x30)
li x8, 0xd1a976bd # initialize rs1
li x30, 0xe95e5aac # initialize rs2
beq x8, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0xe95e5aac # initialize rs1
li x30, 0xe95e5aac # initialize rs2
beq x8, x30, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x31)
li x17, 0x3fdda9a7 # initialize rs1
li x31, 0x109a4c98 # initialize rs2
beq x17, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x109a4c98 # initialize rs1
li x31, 0x109a4c98 # initialize rs2
beq x17, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x16, 0x00000000 # initialize rs1
li x14, 0x0fd9a423 # initialize rs2
beq x16, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x0fd9a423 # initialize rs1
li x14, 0x0fd9a423 # initialize rs2
beq x16, x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x22, 0x00000001 # initialize rs1
li x7, 0xd67b3600 # initialize rs2
beq x22, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0xd67b3600 # initialize rs1
li x7, 0xd67b3600 # initialize rs2
beq x22, x7, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x30, 0x00000002 # initialize rs1
li x23, 0x0c4eeb69 # initialize rs2
beq x30, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x0c4eeb69 # initialize rs1
li x23, 0x0c4eeb69 # initialize rs2
beq x30, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x26, 0x80000000 # initialize rs1
li x14, 0xeb7f8d23 # initialize rs2
beq x26, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0xeb7f8d23 # initialize rs1
li x14, 0xeb7f8d23 # initialize rs2
beq x26, x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x19, 0x80000001 # initialize rs1
li x21, 0x2a9341a7 # initialize rs2
beq x19, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x2a9341a7 # initialize rs1
li x21, 0x2a9341a7 # initialize rs2
beq x19, x21, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x12, 0x7fffffff # initialize rs1
li x5, 0x9c8071ca # initialize rs2
beq x12, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x9c8071ca # initialize rs1
li x5, 0x9c8071ca # initialize rs2
beq x12, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x23, 0x7ffffffe # initialize rs1
li x31, 0x6315728f # initialize rs2
beq x23, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x6315728f # initialize rs1
li x31, 0x6315728f # initialize rs2
beq x23, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x9, 0xffffffff # initialize rs1
li x22, 0xee04a96d # initialize rs2
beq x9, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0xee04a96d # initialize rs1
li x22, 0xee04a96d # initialize rs2
beq x9, x22, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x1, 0xfffffffe # initialize rs1
li x23, 0xbf747942 # initialize rs2
beq x1, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0xbf747942 # initialize rs1
li x23, 0xbf747942 # initialize rs2
beq x1, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x25, 0x5bbc8872 # initialize rs1
li x17, 0xca2f25f9 # initialize rs2
beq x25, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0xca2f25f9 # initialize rs1
li x17, 0xca2f25f9 # initialize rs2
beq x25, x17, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x13, 0xaaaaaaaa # initialize rs1
li x26, 0x9308365f # initialize rs2
beq x13, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x9308365f # initialize rs1
li x26, 0x9308365f # initialize rs2
beq x13, x26, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x31, 0x55555555 # initialize rs1
li x18, 0xe761f4ee # initialize rs2
beq x31, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0xe761f4ee # initialize rs1
li x18, 0xe761f4ee # initialize rs2
beq x31, x18, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x23, 0xca55b952 # initialize rs1
li x10, 0x00000000 # initialize rs2
beq x23, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x00000000 # initialize rs1
li x10, 0x00000000 # initialize rs2
beq x23, x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x24, 0xcdb510fe # initialize rs1
li x21, 0x00000001 # initialize rs2
beq x24, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x00000001 # initialize rs1
li x21, 0x00000001 # initialize rs2
beq x24, x21, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x11, 0xa9eed93f # initialize rs1
li x24, 0x00000002 # initialize rs2
beq x11, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x00000002 # initialize rs1
li x24, 0x00000002 # initialize rs2
beq x11, x24, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x5, 0xfe990cb8 # initialize rs1
li x22, 0x80000000 # initialize rs2
beq x5, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x80000000 # initialize rs1
li x22, 0x80000000 # initialize rs2
beq x5, x22, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x29, 0x7f0f87ce # initialize rs1
li x14, 0x80000001 # initialize rs2
beq x29, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x80000001 # initialize rs1
li x14, 0x80000001 # initialize rs2
beq x29, x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x11, 0xb2df99d8 # initialize rs1
li x1, 0x7fffffff # initialize rs2
beq x11, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x7fffffff # initialize rs1
li x1, 0x7fffffff # initialize rs2
beq x11, x1, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x11, 0x290d2767 # initialize rs1
li x6, 0x7ffffffe # initialize rs2
beq x11, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x7ffffffe # initialize rs1
li x6, 0x7ffffffe # initialize rs2
beq x11, x6, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x7, 0xb63e474d # initialize rs1
li x14, 0xffffffff # initialize rs2
beq x7, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0xffffffff # initialize rs1
li x14, 0xffffffff # initialize rs2
beq x7, x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x14, 0x13549efa # initialize rs1
li x10, 0xfffffffe # initialize rs2
beq x14, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0xfffffffe # initialize rs1
li x10, 0xfffffffe # initialize rs2
beq x14, x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x11, 0x0c5d5c1f # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
beq x11, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x5bbc8872 # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
beq x11, x27, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x24, 0x4994cedb # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
beq x24, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0xaaaaaaaa # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
beq x24, x28, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x19, 0xc1d5ce60 # initialize rs1
li x5, 0x55555555 # initialize rs2
beq x19, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x55555555 # initialize rs1
li x5, 0x55555555 # initialize rs2
beq x19, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x15, 0x00000000 # initialize rs1
li x11, 0x00000000 # initialize rs2
beq x15, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x00000000 # initialize rs1
li x11, 0x00000000 # initialize rs2
beq x15, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x2, 0x00000000 # initialize rs1
li x23, 0x00000001 # initialize rs2
beq x2, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x00000001 # initialize rs1
li x23, 0x00000001 # initialize rs2
beq x2, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x14, 0x00000000 # initialize rs1
li x7, 0x00000002 # initialize rs2
beq x14, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x00000002 # initialize rs1
li x7, 0x00000002 # initialize rs2
beq x14, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x10, 0x00000000 # initialize rs1
li x28, 0x80000000 # initialize rs2
beq x10, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x80000000 # initialize rs1
li x28, 0x80000000 # initialize rs2
beq x10, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x14, 0x00000000 # initialize rs1
li x8, 0x80000001 # initialize rs2
beq x14, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x80000001 # initialize rs1
li x8, 0x80000001 # initialize rs2
beq x14, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x22, 0x00000000 # initialize rs1
li x13, 0x7fffffff # initialize rs2
beq x22, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x7fffffff # initialize rs1
li x13, 0x7fffffff # initialize rs2
beq x22, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x13, 0x00000000 # initialize rs1
li x5, 0x7ffffffe # initialize rs2
beq x13, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x7ffffffe # initialize rs1
li x5, 0x7ffffffe # initialize rs2
beq x13, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x21, 0x00000000 # initialize rs1
li x12, 0xffffffff # initialize rs2
beq x21, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0xffffffff # initialize rs1
li x12, 0xffffffff # initialize rs2
beq x21, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x14, 0x00000000 # initialize rs1
li x28, 0xfffffffe # initialize rs2
beq x14, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0xfffffffe # initialize rs1
li x28, 0xfffffffe # initialize rs2
beq x14, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x20, 0x00000000 # initialize rs1
li x31, 0x5bbc8872 # initialize rs2
beq x20, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x5bbc8872 # initialize rs1
li x31, 0x5bbc8872 # initialize rs2
beq x20, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x26, 0x00000000 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
beq x26, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0xaaaaaaaa # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
beq x26, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x15, 0x00000000 # initialize rs1
li x17, 0x55555555 # initialize rs2
beq x15, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x55555555 # initialize rs1
li x17, 0x55555555 # initialize rs2
beq x15, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x1, 0x00000001 # initialize rs1
li x30, 0x00000000 # initialize rs2
beq x1, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x00000000 # initialize rs1
li x30, 0x00000000 # initialize rs2
beq x1, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x16, 0x00000001 # initialize rs1
li x17, 0x00000001 # initialize rs2
beq x16, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x00000001 # initialize rs1
li x17, 0x00000001 # initialize rs2
beq x16, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x18, 0x00000001 # initialize rs1
li x9, 0x00000002 # initialize rs2
beq x18, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x00000002 # initialize rs1
li x9, 0x00000002 # initialize rs2
beq x18, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x10, 0x00000001 # initialize rs1
li x6, 0x80000000 # initialize rs2
beq x10, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x80000000 # initialize rs1
li x6, 0x80000000 # initialize rs2
beq x10, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x22, 0x00000001 # initialize rs1
li x27, 0x80000001 # initialize rs2
beq x22, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x80000001 # initialize rs1
li x27, 0x80000001 # initialize rs2
beq x22, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x3, 0x00000001 # initialize rs1
li x7, 0x7fffffff # initialize rs2
beq x3, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x7fffffff # initialize rs1
li x7, 0x7fffffff # initialize rs2
beq x3, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x18, 0x00000001 # initialize rs1
li x11, 0x7ffffffe # initialize rs2
beq x18, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x7ffffffe # initialize rs1
li x11, 0x7ffffffe # initialize rs2
beq x18, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x18, 0x00000001 # initialize rs1
li x13, 0xffffffff # initialize rs2
beq x18, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0xffffffff # initialize rs1
li x13, 0xffffffff # initialize rs2
beq x18, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x7, 0x00000001 # initialize rs1
li x28, 0xfffffffe # initialize rs2
beq x7, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0xfffffffe # initialize rs1
li x28, 0xfffffffe # initialize rs2
beq x7, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x6, 0x00000001 # initialize rs1
li x15, 0x5bbc8872 # initialize rs2
beq x6, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x5bbc8872 # initialize rs1
li x15, 0x5bbc8872 # initialize rs2
beq x6, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x26, 0x00000001 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
beq x26, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0xaaaaaaaa # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
beq x26, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x29, 0x00000001 # initialize rs1
li x7, 0x55555555 # initialize rs2
beq x29, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x55555555 # initialize rs1
li x7, 0x55555555 # initialize rs2
beq x29, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x26, 0x00000002 # initialize rs1
li x27, 0x00000000 # initialize rs2
beq x26, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x00000000 # initialize rs1
li x27, 0x00000000 # initialize rs2
beq x26, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x28, 0x00000002 # initialize rs1
li x19, 0x00000001 # initialize rs2
beq x28, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x00000001 # initialize rs1
li x19, 0x00000001 # initialize rs2
beq x28, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x25, 0x00000002 # initialize rs1
li x20, 0x00000002 # initialize rs2
beq x25, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x00000002 # initialize rs1
li x20, 0x00000002 # initialize rs2
beq x25, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x30, 0x00000002 # initialize rs1
li x24, 0x80000000 # initialize rs2
beq x30, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x80000000 # initialize rs1
li x24, 0x80000000 # initialize rs2
beq x30, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x29, 0x00000002 # initialize rs1
li x18, 0x80000001 # initialize rs2
beq x29, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x80000001 # initialize rs1
li x18, 0x80000001 # initialize rs2
beq x29, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x22, 0x00000002 # initialize rs1
li x2, 0x7fffffff # initialize rs2
beq x22, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x7fffffff # initialize rs1
li x2, 0x7fffffff # initialize rs2
beq x22, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x29, 0x00000002 # initialize rs1
li x31, 0x7ffffffe # initialize rs2
beq x29, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x7ffffffe # initialize rs1
li x31, 0x7ffffffe # initialize rs2
beq x29, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x5, 0x00000002 # initialize rs1
li x10, 0xffffffff # initialize rs2
beq x5, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0xffffffff # initialize rs1
li x10, 0xffffffff # initialize rs2
beq x5, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x26, 0x00000002 # initialize rs1
li x12, 0xfffffffe # initialize rs2
beq x26, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0xfffffffe # initialize rs1
li x12, 0xfffffffe # initialize rs2
beq x26, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x14, 0x00000002 # initialize rs1
li x3, 0x5bbc8872 # initialize rs2
beq x14, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x5bbc8872 # initialize rs1
li x3, 0x5bbc8872 # initialize rs2
beq x14, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x21, 0x00000002 # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
beq x21, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0xaaaaaaaa # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
beq x21, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x12, 0x00000002 # initialize rs1
li x27, 0x55555555 # initialize rs2
beq x12, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x55555555 # initialize rs1
li x27, 0x55555555 # initialize rs2
beq x12, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x24, 0x80000000 # initialize rs1
li x15, 0x00000000 # initialize rs2
beq x24, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x00000000 # initialize rs1
li x15, 0x00000000 # initialize rs2
beq x24, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x7, 0x80000000 # initialize rs1
li x23, 0x00000001 # initialize rs2
beq x7, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x00000001 # initialize rs1
li x23, 0x00000001 # initialize rs2
beq x7, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x21, 0x80000000 # initialize rs1
li x18, 0x00000002 # initialize rs2
beq x21, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x00000002 # initialize rs1
li x18, 0x00000002 # initialize rs2
beq x21, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x16, 0x80000000 # initialize rs1
li x31, 0x80000000 # initialize rs2
beq x16, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x80000000 # initialize rs1
li x31, 0x80000000 # initialize rs2
beq x16, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x29, 0x80000000 # initialize rs1
li x12, 0x80000001 # initialize rs2
beq x29, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x80000001 # initialize rs1
li x12, 0x80000001 # initialize rs2
beq x29, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x15, 0x80000000 # initialize rs1
li x10, 0x7fffffff # initialize rs2
beq x15, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x7fffffff # initialize rs1
li x10, 0x7fffffff # initialize rs2
beq x15, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x24, 0x80000000 # initialize rs1
li x27, 0x7ffffffe # initialize rs2
beq x24, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x7ffffffe # initialize rs1
li x27, 0x7ffffffe # initialize rs2
beq x24, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x17, 0x80000000 # initialize rs1
li x28, 0xffffffff # initialize rs2
beq x17, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0xffffffff # initialize rs1
li x28, 0xffffffff # initialize rs2
beq x17, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x11, 0x80000000 # initialize rs1
li x6, 0xfffffffe # initialize rs2
beq x11, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0xfffffffe # initialize rs1
li x6, 0xfffffffe # initialize rs2
beq x11, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x18, 0x80000000 # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
beq x18, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x5bbc8872 # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
beq x18, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x8, 0x80000000 # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
beq x8, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0xaaaaaaaa # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
beq x8, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x7, 0x80000000 # initialize rs1
li x15, 0x55555555 # initialize rs2
beq x7, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x55555555 # initialize rs1
li x15, 0x55555555 # initialize rs2
beq x7, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x8, 0x80000001 # initialize rs1
li x6, 0x00000000 # initialize rs2
beq x8, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x00000000 # initialize rs1
li x6, 0x00000000 # initialize rs2
beq x8, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x29, 0x80000001 # initialize rs1
li x1, 0x00000001 # initialize rs2
beq x29, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x00000001 # initialize rs1
li x1, 0x00000001 # initialize rs2
beq x29, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x30, 0x80000001 # initialize rs1
li x29, 0x00000002 # initialize rs2
beq x30, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x00000002 # initialize rs1
li x29, 0x00000002 # initialize rs2
beq x30, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x19, 0x80000001 # initialize rs1
li x30, 0x80000000 # initialize rs2
beq x19, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x80000000 # initialize rs1
li x30, 0x80000000 # initialize rs2
beq x19, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x28, 0x80000001 # initialize rs1
li x10, 0x80000001 # initialize rs2
beq x28, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x80000001 # initialize rs1
li x10, 0x80000001 # initialize rs2
beq x28, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x14, 0x80000001 # initialize rs1
li x11, 0x7fffffff # initialize rs2
beq x14, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x7fffffff # initialize rs1
li x11, 0x7fffffff # initialize rs2
beq x14, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x26, 0x80000001 # initialize rs1
li x21, 0x7ffffffe # initialize rs2
beq x26, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x7ffffffe # initialize rs1
li x21, 0x7ffffffe # initialize rs2
beq x26, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x27, 0x80000001 # initialize rs1
li x30, 0xffffffff # initialize rs2
beq x27, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0xffffffff # initialize rs1
li x30, 0xffffffff # initialize rs2
beq x27, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x18, 0x80000001 # initialize rs1
li x27, 0xfffffffe # initialize rs2
beq x18, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0xfffffffe # initialize rs1
li x27, 0xfffffffe # initialize rs2
beq x18, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x20, 0x80000001 # initialize rs1
li x29, 0x5bbc8872 # initialize rs2
beq x20, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x5bbc8872 # initialize rs1
li x29, 0x5bbc8872 # initialize rs2
beq x20, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x17, 0x80000001 # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
beq x17, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0xaaaaaaaa # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
beq x17, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x5, 0x80000001 # initialize rs1
li x14, 0x55555555 # initialize rs2
beq x5, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x55555555 # initialize rs1
li x14, 0x55555555 # initialize rs2
beq x5, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x27, 0x7fffffff # initialize rs1
li x16, 0x00000000 # initialize rs2
beq x27, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x00000000 # initialize rs1
li x16, 0x00000000 # initialize rs2
beq x27, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x14, 0x7fffffff # initialize rs1
li x10, 0x00000001 # initialize rs2
beq x14, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x00000001 # initialize rs1
li x10, 0x00000001 # initialize rs2
beq x14, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x13, 0x7fffffff # initialize rs1
li x28, 0x00000002 # initialize rs2
beq x13, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x00000002 # initialize rs1
li x28, 0x00000002 # initialize rs2
beq x13, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x23, 0x7fffffff # initialize rs1
li x8, 0x80000000 # initialize rs2
beq x23, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x80000000 # initialize rs1
li x8, 0x80000000 # initialize rs2
beq x23, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x17, 0x7fffffff # initialize rs1
li x25, 0x80000001 # initialize rs2
beq x17, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x80000001 # initialize rs1
li x25, 0x80000001 # initialize rs2
beq x17, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x2, 0x7fffffff # initialize rs1
li x12, 0x7fffffff # initialize rs2
beq x2, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x7fffffff # initialize rs1
li x12, 0x7fffffff # initialize rs2
beq x2, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x28, 0x7fffffff # initialize rs1
li x8, 0x7ffffffe # initialize rs2
beq x28, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x7ffffffe # initialize rs1
li x8, 0x7ffffffe # initialize rs2
beq x28, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x8, 0x7fffffff # initialize rs1
li x25, 0xffffffff # initialize rs2
beq x8, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0xffffffff # initialize rs1
li x25, 0xffffffff # initialize rs2
beq x8, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x30, 0x7fffffff # initialize rs1
li x11, 0xfffffffe # initialize rs2
beq x30, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0xfffffffe # initialize rs1
li x11, 0xfffffffe # initialize rs2
beq x30, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x24, 0x7fffffff # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
beq x24, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x5bbc8872 # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
beq x24, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x13, 0x7fffffff # initialize rs1
li x27, 0xaaaaaaaa # initialize rs2
beq x13, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0xaaaaaaaa # initialize rs1
li x27, 0xaaaaaaaa # initialize rs2
beq x13, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x20, 0x7fffffff # initialize rs1
li x22, 0x55555555 # initialize rs2
beq x20, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x55555555 # initialize rs1
li x22, 0x55555555 # initialize rs2
beq x20, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x6, 0x7ffffffe # initialize rs1
li x18, 0x00000000 # initialize rs2
beq x6, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x00000000 # initialize rs1
li x18, 0x00000000 # initialize rs2
beq x6, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x13, 0x7ffffffe # initialize rs1
li x2, 0x00000001 # initialize rs2
beq x13, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x00000001 # initialize rs1
li x2, 0x00000001 # initialize rs2
beq x13, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x8, 0x7ffffffe # initialize rs1
li x14, 0x00000002 # initialize rs2
beq x8, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x00000002 # initialize rs1
li x14, 0x00000002 # initialize rs2
beq x8, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x17, 0x7ffffffe # initialize rs1
li x3, 0x80000000 # initialize rs2
beq x17, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x80000000 # initialize rs1
li x3, 0x80000000 # initialize rs2
beq x17, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x21, 0x7ffffffe # initialize rs1
li x18, 0x80000001 # initialize rs2
beq x21, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x80000001 # initialize rs1
li x18, 0x80000001 # initialize rs2
beq x21, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x19, 0x7ffffffe # initialize rs1
li x27, 0x7fffffff # initialize rs2
beq x19, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x7fffffff # initialize rs1
li x27, 0x7fffffff # initialize rs2
beq x19, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x29, 0x7ffffffe # initialize rs1
li x30, 0x7ffffffe # initialize rs2
beq x29, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x7ffffffe # initialize rs1
li x30, 0x7ffffffe # initialize rs2
beq x29, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x6, 0x7ffffffe # initialize rs1
li x1, 0xffffffff # initialize rs2
beq x6, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0xffffffff # initialize rs1
li x1, 0xffffffff # initialize rs2
beq x6, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x30, 0x7ffffffe # initialize rs1
li x22, 0xfffffffe # initialize rs2
beq x30, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0xfffffffe # initialize rs1
li x22, 0xfffffffe # initialize rs2
beq x30, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x10, 0x7ffffffe # initialize rs1
li x25, 0x5bbc8872 # initialize rs2
beq x10, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x5bbc8872 # initialize rs1
li x25, 0x5bbc8872 # initialize rs2
beq x10, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x21, 0x7ffffffe # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
beq x21, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0xaaaaaaaa # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
beq x21, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x22, 0x7ffffffe # initialize rs1
li x21, 0x55555555 # initialize rs2
beq x22, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x55555555 # initialize rs1
li x21, 0x55555555 # initialize rs2
beq x22, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x28, 0xffffffff # initialize rs1
li x6, 0x00000000 # initialize rs2
beq x28, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x00000000 # initialize rs1
li x6, 0x00000000 # initialize rs2
beq x28, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x15, 0xffffffff # initialize rs1
li x16, 0x00000001 # initialize rs2
beq x15, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x00000001 # initialize rs1
li x16, 0x00000001 # initialize rs2
beq x15, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x21, 0xffffffff # initialize rs1
li x17, 0x00000002 # initialize rs2
beq x21, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x00000002 # initialize rs1
li x17, 0x00000002 # initialize rs2
beq x21, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x25, 0xffffffff # initialize rs1
li x15, 0x80000000 # initialize rs2
beq x25, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x80000000 # initialize rs1
li x15, 0x80000000 # initialize rs2
beq x25, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x19, 0xffffffff # initialize rs1
li x23, 0x80000001 # initialize rs2
beq x19, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x80000001 # initialize rs1
li x23, 0x80000001 # initialize rs2
beq x19, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x24, 0xffffffff # initialize rs1
li x2, 0x7fffffff # initialize rs2
beq x24, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x7fffffff # initialize rs1
li x2, 0x7fffffff # initialize rs2
beq x24, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x31, 0xffffffff # initialize rs1
li x12, 0x7ffffffe # initialize rs2
beq x31, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x7ffffffe # initialize rs1
li x12, 0x7ffffffe # initialize rs2
beq x31, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x8, 0xffffffff # initialize rs1
li x15, 0xffffffff # initialize rs2
beq x8, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0xffffffff # initialize rs1
li x15, 0xffffffff # initialize rs2
beq x8, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x29, 0xffffffff # initialize rs1
li x27, 0xfffffffe # initialize rs2
beq x29, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0xfffffffe # initialize rs1
li x27, 0xfffffffe # initialize rs2
beq x29, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x12, 0xffffffff # initialize rs1
li x21, 0x5bbc8872 # initialize rs2
beq x12, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x5bbc8872 # initialize rs1
li x21, 0x5bbc8872 # initialize rs2
beq x12, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x16, 0xffffffff # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
beq x16, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0xaaaaaaaa # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
beq x16, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x29, 0xffffffff # initialize rs1
li x3, 0x55555555 # initialize rs2
beq x29, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x55555555 # initialize rs1
li x3, 0x55555555 # initialize rs2
beq x29, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x9, 0xfffffffe # initialize rs1
li x23, 0x00000000 # initialize rs2
beq x9, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x00000000 # initialize rs1
li x23, 0x00000000 # initialize rs2
beq x9, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x6, 0xfffffffe # initialize rs1
li x8, 0x00000001 # initialize rs2
beq x6, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x00000001 # initialize rs1
li x8, 0x00000001 # initialize rs2
beq x6, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x15, 0xfffffffe # initialize rs1
li x13, 0x00000002 # initialize rs2
beq x15, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x00000002 # initialize rs1
li x13, 0x00000002 # initialize rs2
beq x15, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x7, 0xfffffffe # initialize rs1
li x5, 0x80000000 # initialize rs2
beq x7, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x80000000 # initialize rs1
li x5, 0x80000000 # initialize rs2
beq x7, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x3, 0xfffffffe # initialize rs1
li x7, 0x80000001 # initialize rs2
beq x3, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x80000001 # initialize rs1
li x7, 0x80000001 # initialize rs2
beq x3, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x13, 0xfffffffe # initialize rs1
li x29, 0x7fffffff # initialize rs2
beq x13, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x7fffffff # initialize rs1
li x29, 0x7fffffff # initialize rs2
beq x13, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x23, 0xfffffffe # initialize rs1
li x12, 0x7ffffffe # initialize rs2
beq x23, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x7ffffffe # initialize rs1
li x12, 0x7ffffffe # initialize rs2
beq x23, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x5, 0xfffffffe # initialize rs1
li x22, 0xffffffff # initialize rs2
beq x5, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0xffffffff # initialize rs1
li x22, 0xffffffff # initialize rs2
beq x5, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x25, 0xfffffffe # initialize rs1
li x16, 0xfffffffe # initialize rs2
beq x25, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0xfffffffe # initialize rs1
li x16, 0xfffffffe # initialize rs2
beq x25, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x6, 0xfffffffe # initialize rs1
li x21, 0x5bbc8872 # initialize rs2
beq x6, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x5bbc8872 # initialize rs1
li x21, 0x5bbc8872 # initialize rs2
beq x6, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x3, 0xfffffffe # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
beq x3, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0xaaaaaaaa # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
beq x3, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x9, 0xfffffffe # initialize rs1
li x12, 0x55555555 # initialize rs2
beq x9, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x55555555 # initialize rs1
li x12, 0x55555555 # initialize rs2
beq x9, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x12, 0x5bbc8872 # initialize rs1
li x22, 0x00000000 # initialize rs2
beq x12, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x00000000 # initialize rs1
li x22, 0x00000000 # initialize rs2
beq x12, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x26, 0x5bbc8872 # initialize rs1
li x30, 0x00000001 # initialize rs2
beq x26, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x00000001 # initialize rs1
li x30, 0x00000001 # initialize rs2
beq x26, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x5, 0x5bbc8872 # initialize rs1
li x25, 0x00000002 # initialize rs2
beq x5, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x00000002 # initialize rs1
li x25, 0x00000002 # initialize rs2
beq x5, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x1, 0x5bbc8872 # initialize rs1
li x26, 0x80000000 # initialize rs2
beq x1, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x80000000 # initialize rs1
li x26, 0x80000000 # initialize rs2
beq x1, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x16, 0x5bbc8872 # initialize rs1
li x5, 0x80000001 # initialize rs2
beq x16, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x80000001 # initialize rs1
li x5, 0x80000001 # initialize rs2
beq x16, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x18, 0x5bbc8872 # initialize rs1
li x12, 0x7fffffff # initialize rs2
beq x18, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x7fffffff # initialize rs1
li x12, 0x7fffffff # initialize rs2
beq x18, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x14, 0x5bbc8872 # initialize rs1
li x6, 0x7ffffffe # initialize rs2
beq x14, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x7ffffffe # initialize rs1
li x6, 0x7ffffffe # initialize rs2
beq x14, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x27, 0x5bbc8872 # initialize rs1
li x17, 0xffffffff # initialize rs2
beq x27, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0xffffffff # initialize rs1
li x17, 0xffffffff # initialize rs2
beq x27, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x13, 0x5bbc8872 # initialize rs1
li x1, 0xfffffffe # initialize rs2
beq x13, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0xfffffffe # initialize rs1
li x1, 0xfffffffe # initialize rs2
beq x13, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x2, 0x5bbc8872 # initialize rs1
li x29, 0x5bbc8872 # initialize rs2
beq x2, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x5bbc8872 # initialize rs1
li x29, 0x5bbc8872 # initialize rs2
beq x2, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x12, 0x5bbc8872 # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
beq x12, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0xaaaaaaaa # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
beq x12, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x7, 0x5bbc8872 # initialize rs1
li x24, 0x55555555 # initialize rs2
beq x7, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x55555555 # initialize rs1
li x24, 0x55555555 # initialize rs2
beq x7, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x12, 0xaaaaaaaa # initialize rs1
li x19, 0x00000000 # initialize rs2
beq x12, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x00000000 # initialize rs1
li x19, 0x00000000 # initialize rs2
beq x12, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x6, 0xaaaaaaaa # initialize rs1
li x13, 0x00000001 # initialize rs2
beq x6, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x00000001 # initialize rs1
li x13, 0x00000001 # initialize rs2
beq x6, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x6, 0xaaaaaaaa # initialize rs1
li x23, 0x00000002 # initialize rs2
beq x6, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x00000002 # initialize rs1
li x23, 0x00000002 # initialize rs2
beq x6, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x18, 0xaaaaaaaa # initialize rs1
li x1, 0x80000000 # initialize rs2
beq x18, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x80000000 # initialize rs1
li x1, 0x80000000 # initialize rs2
beq x18, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x11, 0xaaaaaaaa # initialize rs1
li x26, 0x80000001 # initialize rs2
beq x11, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x80000001 # initialize rs1
li x26, 0x80000001 # initialize rs2
beq x11, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x14, 0xaaaaaaaa # initialize rs1
li x10, 0x7fffffff # initialize rs2
beq x14, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x7fffffff # initialize rs1
li x10, 0x7fffffff # initialize rs2
beq x14, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x30, 0xaaaaaaaa # initialize rs1
li x21, 0x7ffffffe # initialize rs2
beq x30, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x7ffffffe # initialize rs1
li x21, 0x7ffffffe # initialize rs2
beq x30, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x18, 0xaaaaaaaa # initialize rs1
li x23, 0xffffffff # initialize rs2
beq x18, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0xffffffff # initialize rs1
li x23, 0xffffffff # initialize rs2
beq x18, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x19, 0xaaaaaaaa # initialize rs1
li x31, 0xfffffffe # initialize rs2
beq x19, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0xfffffffe # initialize rs1
li x31, 0xfffffffe # initialize rs2
beq x19, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x2, 0xaaaaaaaa # initialize rs1
li x3, 0x5bbc8872 # initialize rs2
beq x2, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x5bbc8872 # initialize rs1
li x3, 0x5bbc8872 # initialize rs2
beq x2, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x12, 0xaaaaaaaa # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
beq x12, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0xaaaaaaaa # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
beq x12, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x14, 0xaaaaaaaa # initialize rs1
li x26, 0x55555555 # initialize rs2
beq x14, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x55555555 # initialize rs1
li x26, 0x55555555 # initialize rs2
beq x14, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x21, 0x55555555 # initialize rs1
li x15, 0x00000000 # initialize rs2
beq x21, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x00000000 # initialize rs1
li x15, 0x00000000 # initialize rs2
beq x21, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x27, 0x55555555 # initialize rs1
li x9, 0x00000001 # initialize rs2
beq x27, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x00000001 # initialize rs1
li x9, 0x00000001 # initialize rs2
beq x27, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x22, 0x55555555 # initialize rs1
li x30, 0x00000002 # initialize rs2
beq x22, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x00000002 # initialize rs1
li x30, 0x00000002 # initialize rs2
beq x22, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x29, 0x55555555 # initialize rs1
li x11, 0x80000000 # initialize rs2
beq x29, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x80000000 # initialize rs1
li x11, 0x80000000 # initialize rs2
beq x29, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x13, 0x55555555 # initialize rs1
li x6, 0x80000001 # initialize rs2
beq x13, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x80000001 # initialize rs1
li x6, 0x80000001 # initialize rs2
beq x13, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x9, 0x55555555 # initialize rs1
li x15, 0x7fffffff # initialize rs2
beq x9, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x7fffffff # initialize rs1
li x15, 0x7fffffff # initialize rs2
beq x9, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x20, 0x55555555 # initialize rs1
li x3, 0x7ffffffe # initialize rs2
beq x20, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x7ffffffe # initialize rs1
li x3, 0x7ffffffe # initialize rs2
beq x20, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x22, 0x55555555 # initialize rs1
li x11, 0xffffffff # initialize rs2
beq x22, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0xffffffff # initialize rs1
li x11, 0xffffffff # initialize rs2
beq x22, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x10, 0x55555555 # initialize rs1
li x30, 0xfffffffe # initialize rs2
beq x10, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0xfffffffe # initialize rs1
li x30, 0xfffffffe # initialize rs2
beq x10, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x28, 0x55555555 # initialize rs1
li x29, 0x5bbc8872 # initialize rs2
beq x28, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x5bbc8872 # initialize rs1
li x29, 0x5bbc8872 # initialize rs2
beq x28, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x15, 0x55555555 # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
beq x15, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0xaaaaaaaa # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
beq x15, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x2, 0x55555555 # initialize rs1
li x6, 0x55555555 # initialize rs2
beq x2, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x55555555 # initialize rs1
li x6, 0x55555555 # initialize rs2
beq x2, x6, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x5498f41d # initialize rs1
li x0, 0xb8c61f08 # initialize rs2
beq x0, x0, 1f # perform operation
nop
nop
1:
# same values in both registers
li x0, 0xb8c61f08 # initialize rs1
li x0, 0xb8c61f08 # initialize rs2
beq x0, x0, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x989d8f8c # initialize rs1
li x1, 0x436bb3e8 # initialize rs2
beq x1, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x436bb3e8 # initialize rs1
li x1, 0x436bb3e8 # initialize rs2
beq x1, x1, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x2a72a5a8 # initialize rs1
li x2, 0x43835542 # initialize rs2
beq x2, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x43835542 # initialize rs1
li x2, 0x43835542 # initialize rs2
beq x2, x2, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x1cba397e # initialize rs1
li x3, 0xcc91d0ab # initialize rs2
beq x3, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0xcc91d0ab # initialize rs1
li x3, 0xcc91d0ab # initialize rs2
beq x3, x3, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf010def6 # initialize rs1
li x4, 0x1f31219d # initialize rs2
beq x4, x4, 1f # perform operation
nop
nop
1:
# same values in both registers
li x4, 0x1f31219d # initialize rs1
li x4, 0x1f31219d # initialize rs2
beq x4, x4, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xe865bbcb # initialize rs1
li x5, 0x9cc152c4 # initialize rs2
beq x5, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x9cc152c4 # initialize rs1
li x5, 0x9cc152c4 # initialize rs2
beq x5, x5, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb58ffa22 # initialize rs1
li x6, 0x67d6b0d6 # initialize rs2
beq x6, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x67d6b0d6 # initialize rs1
li x6, 0x67d6b0d6 # initialize rs2
beq x6, x6, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x8dfb0b1a # initialize rs1
li x7, 0xb8da9300 # initialize rs2
beq x7, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0xb8da9300 # initialize rs1
li x7, 0xb8da9300 # initialize rs2
beq x7, x7, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xe589320a # initialize rs1
li x8, 0x94bce016 # initialize rs2
beq x8, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x94bce016 # initialize rs1
li x8, 0x94bce016 # initialize rs2
beq x8, x8, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x5555679d # initialize rs1
li x9, 0xf3a4e0e6 # initialize rs2
beq x9, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0xf3a4e0e6 # initialize rs1
li x9, 0xf3a4e0e6 # initialize rs2
beq x9, x9, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x7404bab1 # initialize rs1
li x10, 0x13321a81 # initialize rs2
beq x10, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x13321a81 # initialize rs1
li x10, 0x13321a81 # initialize rs2
beq x10, x10, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x2f038f88 # initialize rs1
li x11, 0xba52e168 # initialize rs2
beq x11, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0xba52e168 # initialize rs1
li x11, 0xba52e168 # initialize rs2
beq x11, x11, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x9e304822 # initialize rs1
li x12, 0xce3e9c0c # initialize rs2
beq x12, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0xce3e9c0c # initialize rs1
li x12, 0xce3e9c0c # initialize rs2
beq x12, x12, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xa4054ed4 # initialize rs1
li x13, 0x43867aa6 # initialize rs2
beq x13, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x43867aa6 # initialize rs1
li x13, 0x43867aa6 # initialize rs2
beq x13, x13, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x3969dfae # initialize rs1
li x14, 0xc55fa59d # initialize rs2
beq x14, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0xc55fa59d # initialize rs1
li x14, 0xc55fa59d # initialize rs2
beq x14, x14, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x9fe08277 # initialize rs1
li x15, 0xa4a0de11 # initialize rs2
beq x15, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0xa4a0de11 # initialize rs1
li x15, 0xa4a0de11 # initialize rs2
beq x15, x15, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x0ed8c469 # initialize rs1
li x16, 0x237e9ecb # initialize rs2
beq x16, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x237e9ecb # initialize rs1
li x16, 0x237e9ecb # initialize rs2
beq x16, x16, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x8114e81d # initialize rs1
li x17, 0x5701f975 # initialize rs2
beq x17, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x5701f975 # initialize rs1
li x17, 0x5701f975 # initialize rs2
beq x17, x17, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x4d129b7a # initialize rs1
li x18, 0xa1c4091b # initialize rs2
beq x18, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0xa1c4091b # initialize rs1
li x18, 0xa1c4091b # initialize rs2
beq x18, x18, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x63aa20b5 # initialize rs1
li x19, 0x604c02e1 # initialize rs2
beq x19, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x604c02e1 # initialize rs1
li x19, 0x604c02e1 # initialize rs2
beq x19, x19, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x9d1e1ccd # initialize rs1
li x20, 0xfe62f266 # initialize rs2
beq x20, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0xfe62f266 # initialize rs1
li x20, 0xfe62f266 # initialize rs2
beq x20, x20, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x428ecc49 # initialize rs1
li x21, 0x6bd22f38 # initialize rs2
beq x21, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x6bd22f38 # initialize rs1
li x21, 0x6bd22f38 # initialize rs2
beq x21, x21, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x3a255725 # initialize rs1
li x22, 0x480da104 # initialize rs2
beq x22, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x480da104 # initialize rs1
li x22, 0x480da104 # initialize rs2
beq x22, x22, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x16bec80d # initialize rs1
li x23, 0xef67c6ce # initialize rs2
beq x23, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0xef67c6ce # initialize rs1
li x23, 0xef67c6ce # initialize rs2
beq x23, x23, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xc76997cf # initialize rs1
li x24, 0x80998a86 # initialize rs2
beq x24, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x80998a86 # initialize rs1
li x24, 0x80998a86 # initialize rs2
beq x24, x24, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xf56b544e # initialize rs1
li x25, 0x3a641549 # initialize rs2
beq x25, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x3a641549 # initialize rs1
li x25, 0x3a641549 # initialize rs2
beq x25, x25, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x35fb1d87 # initialize rs1
li x26, 0xe31a9397 # initialize rs2
beq x26, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0xe31a9397 # initialize rs1
li x26, 0xe31a9397 # initialize rs2
beq x26, x26, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x720f1903 # initialize rs1
li x27, 0x28b701e5 # initialize rs2
beq x27, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x28b701e5 # initialize rs1
li x27, 0x28b701e5 # initialize rs2
beq x27, x27, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xcb85b6e5 # initialize rs1
li x28, 0xecea648e # initialize rs2
beq x28, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0xecea648e # initialize rs1
li x28, 0xecea648e # initialize rs2
beq x28, x28, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x21a4a4f0 # initialize rs1
li x29, 0x13797da1 # initialize rs2
beq x29, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x13797da1 # initialize rs1
li x29, 0x13797da1 # initialize rs2
beq x29, x29, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xf4402246 # initialize rs1
li x30, 0x1c3018a0 # initialize rs2
beq x30, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x1c3018a0 # initialize rs1
li x30, 0x1c3018a0 # initialize rs2
beq x30, x30, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xe518c331 # initialize rs1
li x31, 0x92c31208 # initialize rs2
beq x31, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x92c31208 # initialize rs1
li x31, 0x92c31208 # initialize rs2
beq x31, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_offset negative bin
j 2f # jump past backward branch target
1: j 3f # backward branch target: jump past backward branch
2: beq x0, x0, 1b # backward branch
3: nop # done with sequence

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x17, x11 # perform first operation
beq x3, x2, arbitraryLabel1
nop
arbitraryLabel1:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x21, x14 # perform first operation
beq x24, x31, arbitraryLabel2
nop
arbitraryLabel2:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x18, x19, x5 # perform first operation
beq x13, x29, arbitraryLabel3
nop
arbitraryLabel3:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x25, x22, x23 # perform first operation
beq x25, x28, arbitraryLabel4
nop
arbitraryLabel4:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x23, x22, x25 # perform first operation
beq x3, x23, arbitraryLabel5
nop
arbitraryLabel5:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x10, x6, x14 # perform first operation
beq x13, x12, arbitraryLabel6
nop
arbitraryLabel6:
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
