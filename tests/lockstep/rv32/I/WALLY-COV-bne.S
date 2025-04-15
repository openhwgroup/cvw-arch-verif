///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/I/WALLY-COV-bne.S
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
li x0, 0xabf3dd30 # initialize rs1
li x18, 0x7a6b9942 # initialize rs2
bne x0, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x0, 0x7a6b9942 # initialize rs1
li x18, 0x7a6b9942 # initialize rs2
bne x0, x18, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x3aba44e6 # initialize rs1
li x13, 0x585b1c47 # initialize rs2
bne x1, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x585b1c47 # initialize rs1
li x13, 0x585b1c47 # initialize rs2
bne x1, x13, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x4010386d # initialize rs1
li x13, 0x566cb4a3 # initialize rs2
bne x2, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x566cb4a3 # initialize rs1
li x13, 0x566cb4a3 # initialize rs2
bne x2, x13, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x15577cd8 # initialize rs1
li x24, 0xcdcf9e02 # initialize rs2
bne x3, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0xcdcf9e02 # initialize rs1
li x24, 0xcdcf9e02 # initialize rs2
bne x3, x24, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x3c4fd5ee # initialize rs1
li x12, 0x9a25feb4 # initialize rs2
bne x4, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x4, 0x9a25feb4 # initialize rs1
li x12, 0x9a25feb4 # initialize rs2
bne x4, x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x16d5530f # initialize rs1
li x11, 0x892206f1 # initialize rs2
bne x5, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x892206f1 # initialize rs1
li x11, 0x892206f1 # initialize rs2
bne x5, x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x73504dcf # initialize rs1
li x5, 0xbc06483f # initialize rs2
bne x6, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0xbc06483f # initialize rs1
li x5, 0xbc06483f # initialize rs2
bne x6, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xa0e89eed # initialize rs1
li x26, 0xead9078e # initialize rs2
bne x7, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0xead9078e # initialize rs1
li x26, 0xead9078e # initialize rs2
bne x7, x26, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x2c308e44 # initialize rs1
li x24, 0xa2c02845 # initialize rs2
bne x8, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0xa2c02845 # initialize rs1
li x24, 0xa2c02845 # initialize rs2
bne x8, x24, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x9cba0d90 # initialize rs1
li x20, 0xb83fc723 # initialize rs2
bne x9, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0xb83fc723 # initialize rs1
li x20, 0xb83fc723 # initialize rs2
bne x9, x20, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x3a187f0e # initialize rs1
li x15, 0x1420f02b # initialize rs2
bne x10, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x1420f02b # initialize rs1
li x15, 0x1420f02b # initialize rs2
bne x10, x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xfcb0518f # initialize rs1
li x19, 0x14f18acf # initialize rs2
bne x11, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x14f18acf # initialize rs1
li x19, 0x14f18acf # initialize rs2
bne x11, x19, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xbd6146ad # initialize rs1
li x16, 0x1a681a79 # initialize rs2
bne x12, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x1a681a79 # initialize rs1
li x16, 0x1a681a79 # initialize rs2
bne x12, x16, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x81008ccf # initialize rs1
li x9, 0x686d7568 # initialize rs2
bne x13, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x686d7568 # initialize rs1
li x9, 0x686d7568 # initialize rs2
bne x13, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xa1f43111 # initialize rs1
li x30, 0xdaf533b2 # initialize rs2
bne x14, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0xdaf533b2 # initialize rs1
li x30, 0xdaf533b2 # initialize rs2
bne x14, x30, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x57b0f818 # initialize rs1
li x10, 0x89d39952 # initialize rs2
bne x15, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x89d39952 # initialize rs1
li x10, 0x89d39952 # initialize rs2
bne x15, x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xdb9bb7a8 # initialize rs1
li x3, 0x0bdede58 # initialize rs2
bne x16, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x0bdede58 # initialize rs1
li x3, 0x0bdede58 # initialize rs2
bne x16, x3, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xf45f4ad3 # initialize rs1
li x10, 0x6fb82317 # initialize rs2
bne x17, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x6fb82317 # initialize rs1
li x10, 0x6fb82317 # initialize rs2
bne x17, x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xabd7594a # initialize rs1
li x27, 0x35fcb4de # initialize rs2
bne x18, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x35fcb4de # initialize rs1
li x27, 0x35fcb4de # initialize rs2
bne x18, x27, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xdd1b48e6 # initialize rs1
li x1, 0x1e4585de # initialize rs2
bne x19, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x1e4585de # initialize rs1
li x1, 0x1e4585de # initialize rs2
bne x19, x1, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xaa4f6a9e # initialize rs1
li x8, 0xef22e37a # initialize rs2
bne x20, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0xef22e37a # initialize rs1
li x8, 0xef22e37a # initialize rs2
bne x20, x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xbafaf498 # initialize rs1
li x27, 0xeec272b9 # initialize rs2
bne x21, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0xeec272b9 # initialize rs1
li x27, 0xeec272b9 # initialize rs2
bne x21, x27, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xc93ba9ab # initialize rs1
li x6, 0xcd9cb5b3 # initialize rs2
bne x22, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0xcd9cb5b3 # initialize rs1
li x6, 0xcd9cb5b3 # initialize rs2
bne x22, x6, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xc4e76ffd # initialize rs1
li x18, 0xff9b19bb # initialize rs2
bne x23, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0xff9b19bb # initialize rs1
li x18, 0xff9b19bb # initialize rs2
bne x23, x18, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x40a7f792 # initialize rs1
li x5, 0x4426390c # initialize rs2
bne x24, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x4426390c # initialize rs1
li x5, 0x4426390c # initialize rs2
bne x24, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xd3b992f7 # initialize rs1
li x9, 0xb1f5c24f # initialize rs2
bne x25, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0xb1f5c24f # initialize rs1
li x9, 0xb1f5c24f # initialize rs2
bne x25, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x7ec469bc # initialize rs1
li x24, 0xb9ba0fdd # initialize rs2
bne x26, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0xb9ba0fdd # initialize rs1
li x24, 0xb9ba0fdd # initialize rs2
bne x26, x24, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x5057c4aa # initialize rs1
li x14, 0x76cb4ab9 # initialize rs2
bne x27, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x76cb4ab9 # initialize rs1
li x14, 0x76cb4ab9 # initialize rs2
bne x27, x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x0de2ca44 # initialize rs1
li x16, 0x79a630a1 # initialize rs2
bne x28, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x79a630a1 # initialize rs1
li x16, 0x79a630a1 # initialize rs2
bne x28, x16, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xc9d06f59 # initialize rs1
li x8, 0x54098250 # initialize rs2
bne x29, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x54098250 # initialize rs1
li x8, 0x54098250 # initialize rs2
bne x29, x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x3f01fca7 # initialize rs1
li x8, 0x0db9e17b # initialize rs2
bne x30, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x0db9e17b # initialize rs1
li x8, 0x0db9e17b # initialize rs2
bne x30, x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x6108eac5 # initialize rs1
li x17, 0x682ae472 # initialize rs2
bne x31, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x682ae472 # initialize rs1
li x17, 0x682ae472 # initialize rs2
bne x31, x17, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x0)
li x5, 0x6347002f # initialize rs1
li x0, 0x0fcd79d9 # initialize rs2
bne x5, x0, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x0fcd79d9 # initialize rs1
li x0, 0x0fcd79d9 # initialize rs2
bne x5, x0, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x1)
li x16, 0xbc636b0c # initialize rs1
li x1, 0x48f8bde7 # initialize rs2
bne x16, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x48f8bde7 # initialize rs1
li x1, 0x48f8bde7 # initialize rs2
bne x16, x1, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x2)
li x22, 0xbcfe35b7 # initialize rs1
li x2, 0x75c7888c # initialize rs2
bne x22, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x75c7888c # initialize rs1
li x2, 0x75c7888c # initialize rs2
bne x22, x2, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x3)
li x8, 0x865d83e1 # initialize rs1
li x3, 0xc321ed92 # initialize rs2
bne x8, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0xc321ed92 # initialize rs1
li x3, 0xc321ed92 # initialize rs2
bne x8, x3, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x28, 0x4f0e1d8c # initialize rs1
li x4, 0x6b2ab889 # initialize rs2
bne x28, x4, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x6b2ab889 # initialize rs1
li x4, 0x6b2ab889 # initialize rs2
bne x28, x4, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x8, 0xa25e576e # initialize rs1
li x5, 0x28e091e4 # initialize rs2
bne x8, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x28e091e4 # initialize rs1
li x5, 0x28e091e4 # initialize rs2
bne x8, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x26, 0xb8a8d424 # initialize rs1
li x6, 0x3f09d8ff # initialize rs2
bne x26, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x3f09d8ff # initialize rs1
li x6, 0x3f09d8ff # initialize rs2
bne x26, x6, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x11, 0x890cc67d # initialize rs1
li x7, 0x41aad056 # initialize rs2
bne x11, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x41aad056 # initialize rs1
li x7, 0x41aad056 # initialize rs2
bne x11, x7, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x8)
li x2, 0xfc27ec42 # initialize rs1
li x8, 0xfc35d345 # initialize rs2
bne x2, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0xfc35d345 # initialize rs1
li x8, 0xfc35d345 # initialize rs2
bne x2, x8, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x9)
li x13, 0xaadde99c # initialize rs1
li x9, 0x7490cd69 # initialize rs2
bne x13, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x7490cd69 # initialize rs1
li x9, 0x7490cd69 # initialize rs2
bne x13, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x10)
li x13, 0xd5056d88 # initialize rs1
li x10, 0x7199e7b3 # initialize rs2
bne x13, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x7199e7b3 # initialize rs1
li x10, 0x7199e7b3 # initialize rs2
bne x13, x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x11)
li x25, 0xcccba45f # initialize rs1
li x11, 0x3a513ea7 # initialize rs2
bne x25, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x3a513ea7 # initialize rs1
li x11, 0x3a513ea7 # initialize rs2
bne x25, x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x12)
li x29, 0xd974bb2a # initialize rs1
li x12, 0xe73a8e5d # initialize rs2
bne x29, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0xe73a8e5d # initialize rs1
li x12, 0xe73a8e5d # initialize rs2
bne x29, x12, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x13)
li x1, 0x3eaefddb # initialize rs1
li x13, 0x5ed9ba58 # initialize rs2
bne x1, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x5ed9ba58 # initialize rs1
li x13, 0x5ed9ba58 # initialize rs2
bne x1, x13, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x14)
li x1, 0x678e6405 # initialize rs1
li x14, 0x98f01526 # initialize rs2
bne x1, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x98f01526 # initialize rs1
li x14, 0x98f01526 # initialize rs2
bne x1, x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x15)
li x13, 0xad0e4ec3 # initialize rs1
li x15, 0xcdcfcdb3 # initialize rs2
bne x13, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0xcdcfcdb3 # initialize rs1
li x15, 0xcdcfcdb3 # initialize rs2
bne x13, x15, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x16)
li x17, 0x9376f64f # initialize rs1
li x16, 0xee1aa829 # initialize rs2
bne x17, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0xee1aa829 # initialize rs1
li x16, 0xee1aa829 # initialize rs2
bne x17, x16, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x17)
li x21, 0x9ef93d7f # initialize rs1
li x17, 0x6f644c70 # initialize rs2
bne x21, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x6f644c70 # initialize rs1
li x17, 0x6f644c70 # initialize rs2
bne x21, x17, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x18)
li x19, 0xef568af5 # initialize rs1
li x18, 0x57678a4a # initialize rs2
bne x19, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x57678a4a # initialize rs1
li x18, 0x57678a4a # initialize rs2
bne x19, x18, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x19)
li x20, 0x52c224d2 # initialize rs1
li x19, 0xca92e2fd # initialize rs2
bne x20, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0xca92e2fd # initialize rs1
li x19, 0xca92e2fd # initialize rs2
bne x20, x19, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x20)
li x29, 0x45984077 # initialize rs1
li x20, 0x8902d05a # initialize rs2
bne x29, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x8902d05a # initialize rs1
li x20, 0x8902d05a # initialize rs2
bne x29, x20, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x21)
li x22, 0x51f3188d # initialize rs1
li x21, 0x99000211 # initialize rs2
bne x22, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x99000211 # initialize rs1
li x21, 0x99000211 # initialize rs2
bne x22, x21, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x22)
li x18, 0xb0719eb8 # initialize rs1
li x22, 0x523584bc # initialize rs2
bne x18, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x523584bc # initialize rs1
li x22, 0x523584bc # initialize rs2
bne x18, x22, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x23)
li x10, 0xedaaff1c # initialize rs1
li x23, 0x031d48ce # initialize rs2
bne x10, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x031d48ce # initialize rs1
li x23, 0x031d48ce # initialize rs2
bne x10, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x24)
li x21, 0xe95ada80 # initialize rs1
li x24, 0x2df6c3a7 # initialize rs2
bne x21, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x2df6c3a7 # initialize rs1
li x24, 0x2df6c3a7 # initialize rs2
bne x21, x24, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x25)
li x28, 0x2049e1f5 # initialize rs1
li x25, 0x781e186b # initialize rs2
bne x28, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x781e186b # initialize rs1
li x25, 0x781e186b # initialize rs2
bne x28, x25, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x26)
li x5, 0x97dc0367 # initialize rs1
li x26, 0xf7bc4631 # initialize rs2
bne x5, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0xf7bc4631 # initialize rs1
li x26, 0xf7bc4631 # initialize rs2
bne x5, x26, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x27)
li x20, 0xd8b96021 # initialize rs1
li x27, 0x874ad641 # initialize rs2
bne x20, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x874ad641 # initialize rs1
li x27, 0x874ad641 # initialize rs2
bne x20, x27, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x28)
li x20, 0x328afe81 # initialize rs1
li x28, 0xd5ad3ff0 # initialize rs2
bne x20, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0xd5ad3ff0 # initialize rs1
li x28, 0xd5ad3ff0 # initialize rs2
bne x20, x28, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x29)
li x14, 0x4f2a4bf5 # initialize rs1
li x29, 0xc13485ce # initialize rs2
bne x14, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0xc13485ce # initialize rs1
li x29, 0xc13485ce # initialize rs2
bne x14, x29, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x30)
li x3, 0xcfacf19a # initialize rs1
li x30, 0x981d5db0 # initialize rs2
bne x3, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x981d5db0 # initialize rs1
li x30, 0x981d5db0 # initialize rs2
bne x3, x30, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2 (Test source rs2 = x31)
li x14, 0x33c1d846 # initialize rs1
li x31, 0x49be0364 # initialize rs2
bne x14, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x49be0364 # initialize rs1
li x31, 0x49be0364 # initialize rs2
bne x14, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x12, 0x00000000 # initialize rs1
li x5, 0x06ee5989 # initialize rs2
bne x12, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x06ee5989 # initialize rs1
li x5, 0x06ee5989 # initialize rs2
bne x12, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x30, 0x00000001 # initialize rs1
li x6, 0xdb2fb6d5 # initialize rs2
bne x30, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0xdb2fb6d5 # initialize rs1
li x6, 0xdb2fb6d5 # initialize rs2
bne x30, x6, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x7, 0x00000002 # initialize rs1
li x3, 0xaa4d0326 # initialize rs2
bne x7, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0xaa4d0326 # initialize rs1
li x3, 0xaa4d0326 # initialize rs2
bne x7, x3, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x3, 0x80000000 # initialize rs1
li x26, 0xf525ad3f # initialize rs2
bne x3, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0xf525ad3f # initialize rs1
li x26, 0xf525ad3f # initialize rs2
bne x3, x26, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x1, 0x80000001 # initialize rs1
li x25, 0xd33621ac # initialize rs2
bne x1, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0xd33621ac # initialize rs1
li x25, 0xd33621ac # initialize rs2
bne x1, x25, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x21, 0x7fffffff # initialize rs1
li x5, 0x9c464818 # initialize rs2
bne x21, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x9c464818 # initialize rs1
li x5, 0x9c464818 # initialize rs2
bne x21, x5, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x20, 0x7ffffffe # initialize rs1
li x25, 0x3f27dfe3 # initialize rs2
bne x20, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x3f27dfe3 # initialize rs1
li x25, 0x3f27dfe3 # initialize rs2
bne x20, x25, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x24, 0xffffffff # initialize rs1
li x28, 0xbb6d8be2 # initialize rs2
bne x24, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0xbb6d8be2 # initialize rs1
li x28, 0xbb6d8be2 # initialize rs2
bne x24, x28, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x25, 0xfffffffe # initialize rs1
li x9, 0xcb05482e # initialize rs2
bne x25, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0xcb05482e # initialize rs1
li x9, 0xcb05482e # initialize rs2
bne x25, x9, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x25, 0x5bbc8872 # initialize rs1
li x23, 0xd6e9f4a7 # initialize rs2
bne x25, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0xd6e9f4a7 # initialize rs1
li x23, 0xd6e9f4a7 # initialize rs2
bne x25, x23, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x17, 0xaaaaaaaa # initialize rs1
li x13, 0x7d525a1e # initialize rs2
bne x17, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x7d525a1e # initialize rs1
li x13, 0x7d525a1e # initialize rs2
bne x17, x13, 1f # perform operation
nop
nop
1:

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x8, 0x55555555 # initialize rs1
li x17, 0xc6795a62 # initialize rs2
bne x8, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0xc6795a62 # initialize rs1
li x17, 0xc6795a62 # initialize rs2
bne x8, x17, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x25, 0x706fa331 # initialize rs1
li x6, 0x00000000 # initialize rs2
bne x25, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x00000000 # initialize rs1
li x6, 0x00000000 # initialize rs2
bne x25, x6, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x14, 0x2911e77e # initialize rs1
li x31, 0x00000001 # initialize rs2
bne x14, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x00000001 # initialize rs1
li x31, 0x00000001 # initialize rs2
bne x14, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x8, 0x44839ec2 # initialize rs1
li x17, 0x00000002 # initialize rs2
bne x8, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x00000002 # initialize rs1
li x17, 0x00000002 # initialize rs2
bne x8, x17, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x23, 0x769d3d48 # initialize rs1
li x24, 0x80000000 # initialize rs2
bne x23, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x80000000 # initialize rs1
li x24, 0x80000000 # initialize rs2
bne x23, x24, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x16, 0xf955f208 # initialize rs1
li x20, 0x80000001 # initialize rs2
bne x16, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0x80000001 # initialize rs1
li x20, 0x80000001 # initialize rs2
bne x16, x20, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x20, 0x7a81510e # initialize rs1
li x30, 0x7fffffff # initialize rs2
bne x20, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x7fffffff # initialize rs1
li x30, 0x7fffffff # initialize rs2
bne x20, x30, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x2, 0x3ac8b3b9 # initialize rs1
li x14, 0x7ffffffe # initialize rs2
bne x2, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x7ffffffe # initialize rs1
li x14, 0x7ffffffe # initialize rs2
bne x2, x14, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x10, 0x82390508 # initialize rs1
li x27, 0xffffffff # initialize rs2
bne x10, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0xffffffff # initialize rs1
li x27, 0xffffffff # initialize rs2
bne x10, x27, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x17, 0x7ca05116 # initialize rs1
li x10, 0xfffffffe # initialize rs2
bne x17, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0xfffffffe # initialize rs1
li x10, 0xfffffffe # initialize rs2
bne x17, x10, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x23, 0x66e83d09 # initialize rs1
li x11, 0x5bbc8872 # initialize rs2
bne x23, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x5bbc8872 # initialize rs1
li x11, 0x5bbc8872 # initialize rs2
bne x23, x11, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x15, 0x105fbd2f # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
bne x15, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0xaaaaaaaa # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
bne x15, x13, 1f # perform operation
nop
nop
1:

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x22, 0x65b08426 # initialize rs1
li x28, 0x55555555 # initialize rs2
bne x22, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x55555555 # initialize rs1
li x28, 0x55555555 # initialize rs2
bne x22, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x17, 0x00000000 # initialize rs1
li x10, 0x00000000 # initialize rs2
bne x17, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x00000000 # initialize rs1
li x10, 0x00000000 # initialize rs2
bne x17, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x9, 0x00000000 # initialize rs1
li x22, 0x00000001 # initialize rs2
bne x9, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x00000001 # initialize rs1
li x22, 0x00000001 # initialize rs2
bne x9, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x29, 0x00000000 # initialize rs1
li x17, 0x00000002 # initialize rs2
bne x29, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x00000002 # initialize rs1
li x17, 0x00000002 # initialize rs2
bne x29, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x21, 0x00000000 # initialize rs1
li x24, 0x80000000 # initialize rs2
bne x21, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x80000000 # initialize rs1
li x24, 0x80000000 # initialize rs2
bne x21, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x22, 0x00000000 # initialize rs1
li x29, 0x80000001 # initialize rs2
bne x22, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x80000001 # initialize rs1
li x29, 0x80000001 # initialize rs2
bne x22, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x23, 0x00000000 # initialize rs1
li x17, 0x7fffffff # initialize rs2
bne x23, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x7fffffff # initialize rs1
li x17, 0x7fffffff # initialize rs2
bne x23, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x26, 0x00000000 # initialize rs1
li x11, 0x7ffffffe # initialize rs2
bne x26, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x7ffffffe # initialize rs1
li x11, 0x7ffffffe # initialize rs2
bne x26, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x6, 0x00000000 # initialize rs1
li x27, 0xffffffff # initialize rs2
bne x6, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0xffffffff # initialize rs1
li x27, 0xffffffff # initialize rs2
bne x6, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x17, 0x00000000 # initialize rs1
li x2, 0xfffffffe # initialize rs2
bne x17, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0xfffffffe # initialize rs1
li x2, 0xfffffffe # initialize rs2
bne x17, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x9, 0x00000000 # initialize rs1
li x28, 0x5bbc8872 # initialize rs2
bne x9, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x5bbc8872 # initialize rs1
li x28, 0x5bbc8872 # initialize rs2
bne x9, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x14, 0x00000000 # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
bne x14, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0xaaaaaaaa # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
bne x14, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x26, 0x00000000 # initialize rs1
li x13, 0x55555555 # initialize rs2
bne x26, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x55555555 # initialize rs1
li x13, 0x55555555 # initialize rs2
bne x26, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x29, 0x00000001 # initialize rs1
li x5, 0x00000000 # initialize rs2
bne x29, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x00000000 # initialize rs1
li x5, 0x00000000 # initialize rs2
bne x29, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x28, 0x00000001 # initialize rs1
li x25, 0x00000001 # initialize rs2
bne x28, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x00000001 # initialize rs1
li x25, 0x00000001 # initialize rs2
bne x28, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x25, 0x00000001 # initialize rs1
li x2, 0x00000002 # initialize rs2
bne x25, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x00000002 # initialize rs1
li x2, 0x00000002 # initialize rs2
bne x25, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x19, 0x00000001 # initialize rs1
li x2, 0x80000000 # initialize rs2
bne x19, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x80000000 # initialize rs1
li x2, 0x80000000 # initialize rs2
bne x19, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x17, 0x00000001 # initialize rs1
li x7, 0x80000001 # initialize rs2
bne x17, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x80000001 # initialize rs1
li x7, 0x80000001 # initialize rs2
bne x17, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x21, 0x00000001 # initialize rs1
li x12, 0x7fffffff # initialize rs2
bne x21, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x7fffffff # initialize rs1
li x12, 0x7fffffff # initialize rs2
bne x21, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x30, 0x00000001 # initialize rs1
li x13, 0x7ffffffe # initialize rs2
bne x30, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x7ffffffe # initialize rs1
li x13, 0x7ffffffe # initialize rs2
bne x30, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x7, 0x00000001 # initialize rs1
li x10, 0xffffffff # initialize rs2
bne x7, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0xffffffff # initialize rs1
li x10, 0xffffffff # initialize rs2
bne x7, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x20, 0x00000001 # initialize rs1
li x14, 0xfffffffe # initialize rs2
bne x20, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0xfffffffe # initialize rs1
li x14, 0xfffffffe # initialize rs2
bne x20, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x7, 0x00000001 # initialize rs1
li x11, 0x5bbc8872 # initialize rs2
bne x7, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x5bbc8872 # initialize rs1
li x11, 0x5bbc8872 # initialize rs2
bne x7, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x13, 0x00000001 # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
bne x13, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0xaaaaaaaa # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
bne x13, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x6, 0x00000001 # initialize rs1
li x26, 0x55555555 # initialize rs2
bne x6, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x55555555 # initialize rs1
li x26, 0x55555555 # initialize rs2
bne x6, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x21, 0x00000002 # initialize rs1
li x17, 0x00000000 # initialize rs2
bne x21, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x00000000 # initialize rs1
li x17, 0x00000000 # initialize rs2
bne x21, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x3, 0x00000002 # initialize rs1
li x9, 0x00000001 # initialize rs2
bne x3, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x00000001 # initialize rs1
li x9, 0x00000001 # initialize rs2
bne x3, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x10, 0x00000002 # initialize rs1
li x2, 0x00000002 # initialize rs2
bne x10, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x00000002 # initialize rs1
li x2, 0x00000002 # initialize rs2
bne x10, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x3, 0x00000002 # initialize rs1
li x24, 0x80000000 # initialize rs2
bne x3, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x80000000 # initialize rs1
li x24, 0x80000000 # initialize rs2
bne x3, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x8, 0x00000002 # initialize rs1
li x21, 0x80000001 # initialize rs2
bne x8, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0x80000001 # initialize rs1
li x21, 0x80000001 # initialize rs2
bne x8, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x18, 0x00000002 # initialize rs1
li x15, 0x7fffffff # initialize rs2
bne x18, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x7fffffff # initialize rs1
li x15, 0x7fffffff # initialize rs2
bne x18, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x23, 0x00000002 # initialize rs1
li x2, 0x7ffffffe # initialize rs2
bne x23, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x7ffffffe # initialize rs1
li x2, 0x7ffffffe # initialize rs2
bne x23, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x5, 0x00000002 # initialize rs1
li x10, 0xffffffff # initialize rs2
bne x5, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0xffffffff # initialize rs1
li x10, 0xffffffff # initialize rs2
bne x5, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x18, 0x00000002 # initialize rs1
li x23, 0xfffffffe # initialize rs2
bne x18, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0xfffffffe # initialize rs1
li x23, 0xfffffffe # initialize rs2
bne x18, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x12, 0x00000002 # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
bne x12, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x5bbc8872 # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
bne x12, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x28, 0x00000002 # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
bne x28, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0xaaaaaaaa # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
bne x28, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x3, 0x00000002 # initialize rs1
li x11, 0x55555555 # initialize rs2
bne x3, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x55555555 # initialize rs1
li x11, 0x55555555 # initialize rs2
bne x3, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x9, 0x80000000 # initialize rs1
li x25, 0x00000000 # initialize rs2
bne x9, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x00000000 # initialize rs1
li x25, 0x00000000 # initialize rs2
bne x9, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x25, 0x80000000 # initialize rs1
li x20, 0x00000001 # initialize rs2
bne x25, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x00000001 # initialize rs1
li x20, 0x00000001 # initialize rs2
bne x25, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x2, 0x80000000 # initialize rs1
li x15, 0x00000002 # initialize rs2
bne x2, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x00000002 # initialize rs1
li x15, 0x00000002 # initialize rs2
bne x2, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x18, 0x80000000 # initialize rs1
li x9, 0x80000000 # initialize rs2
bne x18, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x80000000 # initialize rs1
li x9, 0x80000000 # initialize rs2
bne x18, x9, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x23, 0x80000000 # initialize rs1
li x15, 0x80000001 # initialize rs2
bne x23, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x80000001 # initialize rs1
li x15, 0x80000001 # initialize rs2
bne x23, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x30, 0x80000000 # initialize rs1
li x16, 0x7fffffff # initialize rs2
bne x30, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0x7fffffff # initialize rs1
li x16, 0x7fffffff # initialize rs2
bne x30, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x26, 0x80000000 # initialize rs1
li x7, 0x7ffffffe # initialize rs2
bne x26, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x7ffffffe # initialize rs1
li x7, 0x7ffffffe # initialize rs2
bne x26, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x30, 0x80000000 # initialize rs1
li x28, 0xffffffff # initialize rs2
bne x30, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0xffffffff # initialize rs1
li x28, 0xffffffff # initialize rs2
bne x30, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x3, 0x80000000 # initialize rs1
li x6, 0xfffffffe # initialize rs2
bne x3, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0xfffffffe # initialize rs1
li x6, 0xfffffffe # initialize rs2
bne x3, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x20, 0x80000000 # initialize rs1
li x24, 0x5bbc8872 # initialize rs2
bne x20, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x5bbc8872 # initialize rs1
li x24, 0x5bbc8872 # initialize rs2
bne x20, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x6, 0x80000000 # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
bne x6, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0xaaaaaaaa # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
bne x6, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x26, 0x80000000 # initialize rs1
li x2, 0x55555555 # initialize rs2
bne x26, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x55555555 # initialize rs1
li x2, 0x55555555 # initialize rs2
bne x26, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x20, 0x80000001 # initialize rs1
li x11, 0x00000000 # initialize rs2
bne x20, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x00000000 # initialize rs1
li x11, 0x00000000 # initialize rs2
bne x20, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x26, 0x80000001 # initialize rs1
li x23, 0x00000001 # initialize rs2
bne x26, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x00000001 # initialize rs1
li x23, 0x00000001 # initialize rs2
bne x26, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x11, 0x80000001 # initialize rs1
li x26, 0x00000002 # initialize rs2
bne x11, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0x00000002 # initialize rs1
li x26, 0x00000002 # initialize rs2
bne x11, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x31, 0x80000001 # initialize rs1
li x17, 0x80000000 # initialize rs2
bne x31, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x80000000 # initialize rs1
li x17, 0x80000000 # initialize rs2
bne x31, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x21, 0x80000001 # initialize rs1
li x29, 0x80000001 # initialize rs2
bne x21, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x80000001 # initialize rs1
li x29, 0x80000001 # initialize rs2
bne x21, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x9, 0x80000001 # initialize rs1
li x22, 0x7fffffff # initialize rs2
bne x9, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x7fffffff # initialize rs1
li x22, 0x7fffffff # initialize rs2
bne x9, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x1, 0x80000001 # initialize rs1
li x16, 0x7ffffffe # initialize rs2
bne x1, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x7ffffffe # initialize rs1
li x16, 0x7ffffffe # initialize rs2
bne x1, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x15, 0x80000001 # initialize rs1
li x13, 0xffffffff # initialize rs2
bne x15, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0xffffffff # initialize rs1
li x13, 0xffffffff # initialize rs2
bne x15, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x30, 0x80000001 # initialize rs1
li x3, 0xfffffffe # initialize rs2
bne x30, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0xfffffffe # initialize rs1
li x3, 0xfffffffe # initialize rs2
bne x30, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x13, 0x80000001 # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
bne x13, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x5bbc8872 # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
bne x13, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x23, 0x80000001 # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
bne x23, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0xaaaaaaaa # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
bne x23, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x15, 0x80000001 # initialize rs1
li x23, 0x55555555 # initialize rs2
bne x15, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x55555555 # initialize rs1
li x23, 0x55555555 # initialize rs2
bne x15, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x29, 0x7fffffff # initialize rs1
li x18, 0x00000000 # initialize rs2
bne x29, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0x00000000 # initialize rs1
li x18, 0x00000000 # initialize rs2
bne x29, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x13, 0x7fffffff # initialize rs1
li x22, 0x00000001 # initialize rs2
bne x13, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x00000001 # initialize rs1
li x22, 0x00000001 # initialize rs2
bne x13, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x17, 0x7fffffff # initialize rs1
li x30, 0x00000002 # initialize rs2
bne x17, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x00000002 # initialize rs1
li x30, 0x00000002 # initialize rs2
bne x17, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x5, 0x7fffffff # initialize rs1
li x15, 0x80000000 # initialize rs2
bne x5, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x80000000 # initialize rs1
li x15, 0x80000000 # initialize rs2
bne x5, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x31, 0x7fffffff # initialize rs1
li x30, 0x80000001 # initialize rs2
bne x31, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x80000001 # initialize rs1
li x30, 0x80000001 # initialize rs2
bne x31, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x25, 0x7fffffff # initialize rs1
li x1, 0x7fffffff # initialize rs2
bne x25, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x7fffffff # initialize rs1
li x1, 0x7fffffff # initialize rs2
bne x25, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x6, 0x7fffffff # initialize rs1
li x11, 0x7ffffffe # initialize rs2
bne x6, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x7ffffffe # initialize rs1
li x11, 0x7ffffffe # initialize rs2
bne x6, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x16, 0x7fffffff # initialize rs1
li x20, 0xffffffff # initialize rs2
bne x16, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0xffffffff # initialize rs1
li x20, 0xffffffff # initialize rs2
bne x16, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x2, 0x7fffffff # initialize rs1
li x24, 0xfffffffe # initialize rs2
bne x2, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0xfffffffe # initialize rs1
li x24, 0xfffffffe # initialize rs2
bne x2, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x19, 0x7fffffff # initialize rs1
li x16, 0x5bbc8872 # initialize rs2
bne x19, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x5bbc8872 # initialize rs1
li x16, 0x5bbc8872 # initialize rs2
bne x19, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x30, 0x7fffffff # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
bne x30, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0xaaaaaaaa # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
bne x30, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x9, 0x7fffffff # initialize rs1
li x5, 0x55555555 # initialize rs2
bne x9, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x55555555 # initialize rs1
li x5, 0x55555555 # initialize rs2
bne x9, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x9, 0x7ffffffe # initialize rs1
li x18, 0x00000000 # initialize rs2
bne x9, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x00000000 # initialize rs1
li x18, 0x00000000 # initialize rs2
bne x9, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x1, 0x7ffffffe # initialize rs1
li x24, 0x00000001 # initialize rs2
bne x1, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x00000001 # initialize rs1
li x24, 0x00000001 # initialize rs2
bne x1, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x10, 0x7ffffffe # initialize rs1
li x6, 0x00000002 # initialize rs2
bne x10, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x00000002 # initialize rs1
li x6, 0x00000002 # initialize rs2
bne x10, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x15, 0x7ffffffe # initialize rs1
li x10, 0x80000000 # initialize rs2
bne x15, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x80000000 # initialize rs1
li x10, 0x80000000 # initialize rs2
bne x15, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x25, 0x7ffffffe # initialize rs1
li x15, 0x80000001 # initialize rs2
bne x25, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x80000001 # initialize rs1
li x15, 0x80000001 # initialize rs2
bne x25, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x12, 0x7ffffffe # initialize rs1
li x3, 0x7fffffff # initialize rs2
bne x12, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x7fffffff # initialize rs1
li x3, 0x7fffffff # initialize rs2
bne x12, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x2, 0x7ffffffe # initialize rs1
li x6, 0x7ffffffe # initialize rs2
bne x2, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x7ffffffe # initialize rs1
li x6, 0x7ffffffe # initialize rs2
bne x2, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x8, 0x7ffffffe # initialize rs1
li x29, 0xffffffff # initialize rs2
bne x8, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0xffffffff # initialize rs1
li x29, 0xffffffff # initialize rs2
bne x8, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x25, 0x7ffffffe # initialize rs1
li x31, 0xfffffffe # initialize rs2
bne x25, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0xfffffffe # initialize rs1
li x31, 0xfffffffe # initialize rs2
bne x25, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x2, 0x7ffffffe # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
bne x2, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x5bbc8872 # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
bne x2, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x13, 0x7ffffffe # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
bne x13, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0xaaaaaaaa # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
bne x13, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x6, 0x7ffffffe # initialize rs1
li x19, 0x55555555 # initialize rs2
bne x6, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x55555555 # initialize rs1
li x19, 0x55555555 # initialize rs2
bne x6, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x27, 0xffffffff # initialize rs1
li x15, 0x00000000 # initialize rs2
bne x27, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x00000000 # initialize rs1
li x15, 0x00000000 # initialize rs2
bne x27, x15, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x14, 0xffffffff # initialize rs1
li x2, 0x00000001 # initialize rs2
bne x14, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x00000001 # initialize rs1
li x2, 0x00000001 # initialize rs2
bne x14, x2, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x15, 0xffffffff # initialize rs1
li x5, 0x00000002 # initialize rs2
bne x15, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x00000002 # initialize rs1
li x5, 0x00000002 # initialize rs2
bne x15, x5, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x15, 0xffffffff # initialize rs1
li x17, 0x80000000 # initialize rs2
bne x15, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x80000000 # initialize rs1
li x17, 0x80000000 # initialize rs2
bne x15, x17, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x27, 0xffffffff # initialize rs1
li x3, 0x80000001 # initialize rs2
bne x27, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x80000001 # initialize rs1
li x3, 0x80000001 # initialize rs2
bne x27, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x1, 0xffffffff # initialize rs1
li x12, 0x7fffffff # initialize rs2
bne x1, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x7fffffff # initialize rs1
li x12, 0x7fffffff # initialize rs2
bne x1, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x6, 0xffffffff # initialize rs1
li x16, 0x7ffffffe # initialize rs2
bne x6, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x7ffffffe # initialize rs1
li x16, 0x7ffffffe # initialize rs2
bne x6, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x28, 0xffffffff # initialize rs1
li x25, 0xffffffff # initialize rs2
bne x28, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0xffffffff # initialize rs1
li x25, 0xffffffff # initialize rs2
bne x28, x25, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x22, 0xffffffff # initialize rs1
li x28, 0xfffffffe # initialize rs2
bne x22, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0xfffffffe # initialize rs1
li x28, 0xfffffffe # initialize rs2
bne x22, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x31, 0xffffffff # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
bne x31, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x5bbc8872 # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
bne x31, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x9, 0xffffffff # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
bne x9, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0xaaaaaaaa # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
bne x9, x22, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x25, 0xffffffff # initialize rs1
li x7, 0x55555555 # initialize rs2
bne x25, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x55555555 # initialize rs1
li x7, 0x55555555 # initialize rs2
bne x25, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x23, 0xfffffffe # initialize rs1
li x6, 0x00000000 # initialize rs2
bne x23, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x00000000 # initialize rs1
li x6, 0x00000000 # initialize rs2
bne x23, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x7, 0xfffffffe # initialize rs1
li x12, 0x00000001 # initialize rs2
bne x7, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x00000001 # initialize rs1
li x12, 0x00000001 # initialize rs2
bne x7, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x23, 0xfffffffe # initialize rs1
li x14, 0x00000002 # initialize rs2
bne x23, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x00000002 # initialize rs1
li x14, 0x00000002 # initialize rs2
bne x23, x14, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x12, 0xfffffffe # initialize rs1
li x7, 0x80000000 # initialize rs2
bne x12, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x80000000 # initialize rs1
li x7, 0x80000000 # initialize rs2
bne x12, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x17, 0xfffffffe # initialize rs1
li x6, 0x80000001 # initialize rs2
bne x17, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x80000001 # initialize rs1
li x6, 0x80000001 # initialize rs2
bne x17, x6, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x2, 0xfffffffe # initialize rs1
li x8, 0x7fffffff # initialize rs2
bne x2, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x7fffffff # initialize rs1
li x8, 0x7fffffff # initialize rs2
bne x2, x8, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x26, 0xfffffffe # initialize rs1
li x7, 0x7ffffffe # initialize rs2
bne x26, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x7ffffffe # initialize rs1
li x7, 0x7ffffffe # initialize rs2
bne x26, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x7, 0xfffffffe # initialize rs1
li x3, 0xffffffff # initialize rs2
bne x7, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0xffffffff # initialize rs1
li x3, 0xffffffff # initialize rs2
bne x7, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x1, 0xfffffffe # initialize rs1
li x3, 0xfffffffe # initialize rs2
bne x1, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0xfffffffe # initialize rs1
li x3, 0xfffffffe # initialize rs2
bne x1, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x15, 0xfffffffe # initialize rs1
li x12, 0x5bbc8872 # initialize rs2
bne x15, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x5bbc8872 # initialize rs1
li x12, 0x5bbc8872 # initialize rs2
bne x15, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x31, 0xfffffffe # initialize rs1
li x27, 0xaaaaaaaa # initialize rs2
bne x31, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0xaaaaaaaa # initialize rs1
li x27, 0xaaaaaaaa # initialize rs2
bne x31, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x10, 0xfffffffe # initialize rs1
li x30, 0x55555555 # initialize rs2
bne x10, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x55555555 # initialize rs1
li x30, 0x55555555 # initialize rs2
bne x10, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x25, 0x5bbc8872 # initialize rs1
li x21, 0x00000000 # initialize rs2
bne x25, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x00000000 # initialize rs1
li x21, 0x00000000 # initialize rs2
bne x25, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x19, 0x5bbc8872 # initialize rs1
li x21, 0x00000001 # initialize rs2
bne x19, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x00000001 # initialize rs1
li x21, 0x00000001 # initialize rs2
bne x19, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x13, 0x5bbc8872 # initialize rs1
li x10, 0x00000002 # initialize rs2
bne x13, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x00000002 # initialize rs1
li x10, 0x00000002 # initialize rs2
bne x13, x10, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x17, 0x5bbc8872 # initialize rs1
li x13, 0x80000000 # initialize rs2
bne x17, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x80000000 # initialize rs1
li x13, 0x80000000 # initialize rs2
bne x17, x13, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x6, 0x5bbc8872 # initialize rs1
li x29, 0x80000001 # initialize rs2
bne x6, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x80000001 # initialize rs1
li x29, 0x80000001 # initialize rs2
bne x6, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x17, 0x5bbc8872 # initialize rs1
li x28, 0x7fffffff # initialize rs2
bne x17, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x7fffffff # initialize rs1
li x28, 0x7fffffff # initialize rs2
bne x17, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x20, 0x5bbc8872 # initialize rs1
li x23, 0x7ffffffe # initialize rs2
bne x20, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x7ffffffe # initialize rs1
li x23, 0x7ffffffe # initialize rs2
bne x20, x23, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x12, 0x5bbc8872 # initialize rs1
li x1, 0xffffffff # initialize rs2
bne x12, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0xffffffff # initialize rs1
li x1, 0xffffffff # initialize rs2
bne x12, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x2, 0x5bbc8872 # initialize rs1
li x19, 0xfffffffe # initialize rs2
bne x2, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0xfffffffe # initialize rs1
li x19, 0xfffffffe # initialize rs2
bne x2, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x9, 0x5bbc8872 # initialize rs1
li x16, 0x5bbc8872 # initialize rs2
bne x9, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x5bbc8872 # initialize rs1
li x16, 0x5bbc8872 # initialize rs2
bne x9, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x18, 0x5bbc8872 # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
bne x18, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0xaaaaaaaa # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
bne x18, x24, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x22, 0x5bbc8872 # initialize rs1
li x11, 0x55555555 # initialize rs2
bne x22, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x55555555 # initialize rs1
li x11, 0x55555555 # initialize rs2
bne x22, x11, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x1, 0xaaaaaaaa # initialize rs1
li x16, 0x00000000 # initialize rs2
bne x1, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x00000000 # initialize rs1
li x16, 0x00000000 # initialize rs2
bne x1, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x14, 0xaaaaaaaa # initialize rs1
li x18, 0x00000001 # initialize rs2
bne x14, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0x00000001 # initialize rs1
li x18, 0x00000001 # initialize rs2
bne x14, x18, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x23, 0xaaaaaaaa # initialize rs1
li x20, 0x00000002 # initialize rs2
bne x23, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0x00000002 # initialize rs1
li x20, 0x00000002 # initialize rs2
bne x23, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x24, 0xaaaaaaaa # initialize rs1
li x1, 0x80000000 # initialize rs2
bne x24, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x80000000 # initialize rs1
li x1, 0x80000000 # initialize rs2
bne x24, x1, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x28, 0xaaaaaaaa # initialize rs1
li x3, 0x80000001 # initialize rs2
bne x28, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x80000001 # initialize rs1
li x3, 0x80000001 # initialize rs2
bne x28, x3, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x19, 0xaaaaaaaa # initialize rs1
li x16, 0x7fffffff # initialize rs2
bne x19, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x7fffffff # initialize rs1
li x16, 0x7fffffff # initialize rs2
bne x19, x16, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x9, 0xaaaaaaaa # initialize rs1
li x27, 0x7ffffffe # initialize rs2
bne x9, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0x7ffffffe # initialize rs1
li x27, 0x7ffffffe # initialize rs2
bne x9, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x13, 0xaaaaaaaa # initialize rs1
li x30, 0xffffffff # initialize rs2
bne x13, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0xffffffff # initialize rs1
li x30, 0xffffffff # initialize rs2
bne x13, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x3, 0xaaaaaaaa # initialize rs1
li x30, 0xfffffffe # initialize rs2
bne x3, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0xfffffffe # initialize rs1
li x30, 0xfffffffe # initialize rs2
bne x3, x30, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x21, 0xaaaaaaaa # initialize rs1
li x20, 0x5bbc8872 # initialize rs2
bne x21, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0x5bbc8872 # initialize rs1
li x20, 0x5bbc8872 # initialize rs2
bne x21, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x17, 0xaaaaaaaa # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
bne x17, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0xaaaaaaaa # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
bne x17, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x15, 0xaaaaaaaa # initialize rs1
li x21, 0x55555555 # initialize rs2
bne x15, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x55555555 # initialize rs1
li x21, 0x55555555 # initialize rs2
bne x15, x21, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x19, 0x55555555 # initialize rs1
li x31, 0x00000000 # initialize rs2
bne x19, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x00000000 # initialize rs1
li x31, 0x00000000 # initialize rs2
bne x19, x31, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x5, 0x55555555 # initialize rs1
li x7, 0x00000001 # initialize rs2
bne x5, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x00000001 # initialize rs1
li x7, 0x00000001 # initialize rs2
bne x5, x7, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x20, 0x55555555 # initialize rs1
li x12, 0x00000002 # initialize rs2
bne x20, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0x00000002 # initialize rs1
li x12, 0x00000002 # initialize rs2
bne x20, x12, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x19, 0x55555555 # initialize rs1
li x26, 0x80000000 # initialize rs2
bne x19, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x80000000 # initialize rs1
li x26, 0x80000000 # initialize rs2
bne x19, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x13, 0x55555555 # initialize rs1
li x20, 0x80000001 # initialize rs2
bne x13, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x80000001 # initialize rs1
li x20, 0x80000001 # initialize rs2
bne x13, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x18, 0x55555555 # initialize rs1
li x27, 0x7fffffff # initialize rs2
bne x18, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0x7fffffff # initialize rs1
li x27, 0x7fffffff # initialize rs2
bne x18, x27, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x19, 0x55555555 # initialize rs1
li x20, 0x7ffffffe # initialize rs2
bne x19, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0x7ffffffe # initialize rs1
li x20, 0x7ffffffe # initialize rs2
bne x19, x20, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x23, 0x55555555 # initialize rs1
li x19, 0xffffffff # initialize rs2
bne x23, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0xffffffff # initialize rs1
li x19, 0xffffffff # initialize rs2
bne x23, x19, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x16, 0x55555555 # initialize rs1
li x28, 0xfffffffe # initialize rs2
bne x16, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0xfffffffe # initialize rs1
li x28, 0xfffffffe # initialize rs2
bne x16, x28, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x13, 0x55555555 # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
bne x13, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x5bbc8872 # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
bne x13, x26, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x30, 0x55555555 # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
bne x30, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0xaaaaaaaa # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
bne x30, x29, 1f # perform operation
nop
nop
1:

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x2, 0x55555555 # initialize rs1
li x19, 0x55555555 # initialize rs2
bne x2, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x55555555 # initialize rs1
li x19, 0x55555555 # initialize rs2
bne x2, x19, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x295becef # initialize rs1
li x0, 0x2e365882 # initialize rs2
bne x0, x0, 1f # perform operation
nop
nop
1:
# same values in both registers
li x0, 0x2e365882 # initialize rs1
li x0, 0x2e365882 # initialize rs2
bne x0, x0, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x0be50c52 # initialize rs1
li x1, 0x1d96d3e5 # initialize rs2
bne x1, x1, 1f # perform operation
nop
nop
1:
# same values in both registers
li x1, 0x1d96d3e5 # initialize rs1
li x1, 0x1d96d3e5 # initialize rs2
bne x1, x1, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xff531a1d # initialize rs1
li x2, 0x5579b738 # initialize rs2
bne x2, x2, 1f # perform operation
nop
nop
1:
# same values in both registers
li x2, 0x5579b738 # initialize rs1
li x2, 0x5579b738 # initialize rs2
bne x2, x2, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x56e7d404 # initialize rs1
li x3, 0x90fef709 # initialize rs2
bne x3, x3, 1f # perform operation
nop
nop
1:
# same values in both registers
li x3, 0x90fef709 # initialize rs1
li x3, 0x90fef709 # initialize rs2
bne x3, x3, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x086c6cdf # initialize rs1
li x4, 0x3e49e57a # initialize rs2
bne x4, x4, 1f # perform operation
nop
nop
1:
# same values in both registers
li x4, 0x3e49e57a # initialize rs1
li x4, 0x3e49e57a # initialize rs2
bne x4, x4, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x4e6616f2 # initialize rs1
li x5, 0x3778b1fc # initialize rs2
bne x5, x5, 1f # perform operation
nop
nop
1:
# same values in both registers
li x5, 0x3778b1fc # initialize rs1
li x5, 0x3778b1fc # initialize rs2
bne x5, x5, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xc04b9a24 # initialize rs1
li x6, 0x159d9e71 # initialize rs2
bne x6, x6, 1f # perform operation
nop
nop
1:
# same values in both registers
li x6, 0x159d9e71 # initialize rs1
li x6, 0x159d9e71 # initialize rs2
bne x6, x6, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x9cea179e # initialize rs1
li x7, 0x12aba36d # initialize rs2
bne x7, x7, 1f # perform operation
nop
nop
1:
# same values in both registers
li x7, 0x12aba36d # initialize rs1
li x7, 0x12aba36d # initialize rs2
bne x7, x7, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x6b3b95f5 # initialize rs1
li x8, 0xcae83ce6 # initialize rs2
bne x8, x8, 1f # perform operation
nop
nop
1:
# same values in both registers
li x8, 0xcae83ce6 # initialize rs1
li x8, 0xcae83ce6 # initialize rs2
bne x8, x8, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xe95ccedc # initialize rs1
li x9, 0xbe290fc8 # initialize rs2
bne x9, x9, 1f # perform operation
nop
nop
1:
# same values in both registers
li x9, 0xbe290fc8 # initialize rs1
li x9, 0xbe290fc8 # initialize rs2
bne x9, x9, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x64f61ef2 # initialize rs1
li x10, 0x551d3893 # initialize rs2
bne x10, x10, 1f # perform operation
nop
nop
1:
# same values in both registers
li x10, 0x551d3893 # initialize rs1
li x10, 0x551d3893 # initialize rs2
bne x10, x10, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x3784c90e # initialize rs1
li x11, 0xce0806e7 # initialize rs2
bne x11, x11, 1f # perform operation
nop
nop
1:
# same values in both registers
li x11, 0xce0806e7 # initialize rs1
li x11, 0xce0806e7 # initialize rs2
bne x11, x11, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xb5b652c9 # initialize rs1
li x12, 0x434df5a3 # initialize rs2
bne x12, x12, 1f # perform operation
nop
nop
1:
# same values in both registers
li x12, 0x434df5a3 # initialize rs1
li x12, 0x434df5a3 # initialize rs2
bne x12, x12, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x062ee5a1 # initialize rs1
li x13, 0x82dea8e5 # initialize rs2
bne x13, x13, 1f # perform operation
nop
nop
1:
# same values in both registers
li x13, 0x82dea8e5 # initialize rs1
li x13, 0x82dea8e5 # initialize rs2
bne x13, x13, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xada288fa # initialize rs1
li x14, 0xeb8cd1a2 # initialize rs2
bne x14, x14, 1f # perform operation
nop
nop
1:
# same values in both registers
li x14, 0xeb8cd1a2 # initialize rs1
li x14, 0xeb8cd1a2 # initialize rs2
bne x14, x14, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x8233bf1f # initialize rs1
li x15, 0x2b7a4df7 # initialize rs2
bne x15, x15, 1f # perform operation
nop
nop
1:
# same values in both registers
li x15, 0x2b7a4df7 # initialize rs1
li x15, 0x2b7a4df7 # initialize rs2
bne x15, x15, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xfdb22e07 # initialize rs1
li x16, 0xd34e3b70 # initialize rs2
bne x16, x16, 1f # perform operation
nop
nop
1:
# same values in both registers
li x16, 0xd34e3b70 # initialize rs1
li x16, 0xd34e3b70 # initialize rs2
bne x16, x16, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xbeaeb161 # initialize rs1
li x17, 0x7cd17770 # initialize rs2
bne x17, x17, 1f # perform operation
nop
nop
1:
# same values in both registers
li x17, 0x7cd17770 # initialize rs1
li x17, 0x7cd17770 # initialize rs2
bne x17, x17, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xdc042d32 # initialize rs1
li x18, 0xb6c3a001 # initialize rs2
bne x18, x18, 1f # perform operation
nop
nop
1:
# same values in both registers
li x18, 0xb6c3a001 # initialize rs1
li x18, 0xb6c3a001 # initialize rs2
bne x18, x18, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xffe76d83 # initialize rs1
li x19, 0xa0894803 # initialize rs2
bne x19, x19, 1f # perform operation
nop
nop
1:
# same values in both registers
li x19, 0xa0894803 # initialize rs1
li x19, 0xa0894803 # initialize rs2
bne x19, x19, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x4ce19989 # initialize rs1
li x20, 0xce6a5f77 # initialize rs2
bne x20, x20, 1f # perform operation
nop
nop
1:
# same values in both registers
li x20, 0xce6a5f77 # initialize rs1
li x20, 0xce6a5f77 # initialize rs2
bne x20, x20, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x52ab3a97 # initialize rs1
li x21, 0xfdf3597e # initialize rs2
bne x21, x21, 1f # perform operation
nop
nop
1:
# same values in both registers
li x21, 0xfdf3597e # initialize rs1
li x21, 0xfdf3597e # initialize rs2
bne x21, x21, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x80fcc255 # initialize rs1
li x22, 0x9962d03b # initialize rs2
bne x22, x22, 1f # perform operation
nop
nop
1:
# same values in both registers
li x22, 0x9962d03b # initialize rs1
li x22, 0x9962d03b # initialize rs2
bne x22, x22, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x804c1d7e # initialize rs1
li x23, 0xdeb890ca # initialize rs2
bne x23, x23, 1f # perform operation
nop
nop
1:
# same values in both registers
li x23, 0xdeb890ca # initialize rs1
li x23, 0xdeb890ca # initialize rs2
bne x23, x23, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x99b2b70a # initialize rs1
li x24, 0x6fc8a888 # initialize rs2
bne x24, x24, 1f # perform operation
nop
nop
1:
# same values in both registers
li x24, 0x6fc8a888 # initialize rs1
li x24, 0x6fc8a888 # initialize rs2
bne x24, x24, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x79a136d1 # initialize rs1
li x25, 0x046f67fd # initialize rs2
bne x25, x25, 1f # perform operation
nop
nop
1:
# same values in both registers
li x25, 0x046f67fd # initialize rs1
li x25, 0x046f67fd # initialize rs2
bne x25, x25, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x3176d584 # initialize rs1
li x26, 0x4c76c9d7 # initialize rs2
bne x26, x26, 1f # perform operation
nop
nop
1:
# same values in both registers
li x26, 0x4c76c9d7 # initialize rs1
li x26, 0x4c76c9d7 # initialize rs2
bne x26, x26, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x9ca02c49 # initialize rs1
li x27, 0x5e5e382a # initialize rs2
bne x27, x27, 1f # perform operation
nop
nop
1:
# same values in both registers
li x27, 0x5e5e382a # initialize rs1
li x27, 0x5e5e382a # initialize rs2
bne x27, x27, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x439b64f5 # initialize rs1
li x28, 0x3b0b6579 # initialize rs2
bne x28, x28, 1f # perform operation
nop
nop
1:
# same values in both registers
li x28, 0x3b0b6579 # initialize rs1
li x28, 0x3b0b6579 # initialize rs2
bne x28, x28, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xf9af026a # initialize rs1
li x29, 0xa3e04eca # initialize rs2
bne x29, x29, 1f # perform operation
nop
nop
1:
# same values in both registers
li x29, 0xa3e04eca # initialize rs1
li x29, 0xa3e04eca # initialize rs2
bne x29, x29, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xfbe01912 # initialize rs1
li x30, 0xd79152de # initialize rs2
bne x30, x30, 1f # perform operation
nop
nop
1:
# same values in both registers
li x30, 0xd79152de # initialize rs1
li x30, 0xd79152de # initialize rs2
bne x30, x30, 1f # perform operation
nop
nop
1:

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x6d660e8b # initialize rs1
li x31, 0x8870d797 # initialize rs2
bne x31, x31, 1f # perform operation
nop
nop
1:
# same values in both registers
li x31, 0x8870d797 # initialize rs1
li x31, 0x8870d797 # initialize rs2
bne x31, x31, 1f # perform operation
nop
nop
1:

# Testcase cp_offset negative bin
j 2f # jump past backward branch target
1: j 3f # backward branch target: jump past backward branch
2: bne x0, x0, 1b # backward branch
3: nop # done with sequence

# Testcase cp_gpr/fpr_hazard nohaz test
add x3, x24, x23 # perform first operation
bne x12, x18, arbitraryLabel31
nop
arbitraryLabel31:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x6, x8 # perform first operation
bne x9, x25, arbitraryLabel32
nop
arbitraryLabel32:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x31, x22 # perform first operation
bne x3, x2, arbitraryLabel33
nop
arbitraryLabel33:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x15, x10, x13 # perform first operation
bne x15, x17, arbitraryLabel34
nop
arbitraryLabel34:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x17, x22, x24 # perform first operation
bne x10, x17, arbitraryLabel35
nop
arbitraryLabel35:
nop
 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x19, x30, x6 # perform first operation
bne x7, x26, arbitraryLabel36
nop
arbitraryLabel36:
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
