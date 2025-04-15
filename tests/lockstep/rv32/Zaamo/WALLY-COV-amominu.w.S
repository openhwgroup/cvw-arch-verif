///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zaamo/WALLY-COV-amominu.w.S
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
li x9, 0xc0da9a0a # load random value
la x1, scratch # base address
sw x9, 0(x1) # store in memory
li x9, 0x50434adf # load another value into integer register
amominu.w x3, x9, (x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x17, 0xe47c6f98 # load random value
la x2, scratch # base address
sw x17, 0(x2) # store in memory
li x17, 0x76a2081f # load another value into integer register
amominu.w x6, x17, (x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x15, 0x617a160d # load random value
la x3, scratch # base address
sw x15, 0(x3) # store in memory
li x15, 0x7e175f81 # load another value into integer register
amominu.w x21, x15, (x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x24, 0x3e9c8a42 # load random value
la x4, scratch # base address
sw x24, 0(x4) # store in memory
li x24, 0xb3a4c796 # load another value into integer register
amominu.w x30, x24, (x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x21, 0xab5f9529 # load random value
la x5, scratch # base address
sw x21, 0(x5) # store in memory
li x21, 0x6730a5b6 # load another value into integer register
amominu.w x11, x21, (x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x20, 0x8db2416b # load random value
la x6, scratch # base address
sw x20, 0(x6) # store in memory
li x20, 0xe57c61e6 # load another value into integer register
amominu.w x5, x20, (x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x23, 0x30f59e6e # load random value
la x7, scratch # base address
sw x23, 0(x7) # store in memory
li x23, 0xed581426 # load another value into integer register
amominu.w x28, x23, (x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x26, 0x4ec7af1b # load random value
la x8, scratch # base address
sw x26, 0(x8) # store in memory
li x26, 0x8398a0d1 # load another value into integer register
amominu.w x23, x26, (x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x25, 0x4940e760 # load random value
la x9, scratch # base address
sw x25, 0(x9) # store in memory
li x25, 0xec940293 # load another value into integer register
amominu.w x6, x25, (x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x16, 0xa9c16478 # load random value
la x10, scratch # base address
sw x16, 0(x10) # store in memory
li x16, 0xa83e899e # load another value into integer register
amominu.w x18, x16, (x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x19, 0x42b36a30 # load random value
la x11, scratch # base address
sw x19, 0(x11) # store in memory
li x19, 0xcf57989e # load another value into integer register
amominu.w x13, x19, (x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x18, 0x926ea02b # load random value
la x12, scratch # base address
sw x18, 0(x12) # store in memory
li x18, 0x8f826b90 # load another value into integer register
amominu.w x28, x18, (x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x29, 0x4bd31dd6 # load random value
la x13, scratch # base address
sw x29, 0(x13) # store in memory
li x29, 0xa95ee59c # load another value into integer register
amominu.w x23, x29, (x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x29, 0x2f5b6e65 # load random value
la x14, scratch # base address
sw x29, 0(x14) # store in memory
li x29, 0xd1b76e6c # load another value into integer register
amominu.w x3, x29, (x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x1, 0x0a47da6a # load random value
la x15, scratch # base address
sw x1, 0(x15) # store in memory
li x1, 0x12ab6e92 # load another value into integer register
amominu.w x25, x1, (x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x6, 0x79b86932 # load random value
la x16, scratch # base address
sw x6, 0(x16) # store in memory
li x6, 0x11c8ef96 # load another value into integer register
amominu.w x18, x6, (x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x16, 0xeaf20e35 # load random value
la x17, scratch # base address
sw x16, 0(x17) # store in memory
li x16, 0x561558e7 # load another value into integer register
amominu.w x2, x16, (x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x27, 0xeb755220 # load random value
la x18, scratch # base address
sw x27, 0(x18) # store in memory
li x27, 0x9013fd8f # load another value into integer register
amominu.w x15, x27, (x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x12, 0x9a158247 # load random value
la x19, scratch # base address
sw x12, 0(x19) # store in memory
li x12, 0x2ac47eaf # load another value into integer register
amominu.w x15, x12, (x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x28, 0x2b6d5578 # load random value
la x20, scratch # base address
sw x28, 0(x20) # store in memory
li x28, 0xc027fbb7 # load another value into integer register
amominu.w x25, x28, (x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x1, 0x9cf7213d # load random value
la x21, scratch # base address
sw x1, 0(x21) # store in memory
li x1, 0xc9fca54a # load another value into integer register
amominu.w x15, x1, (x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x27, 0x3609246a # load random value
la x22, scratch # base address
sw x27, 0(x22) # store in memory
li x27, 0xfa10c5bc # load another value into integer register
amominu.w x2, x27, (x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x30, 0x03075db9 # load random value
la x23, scratch # base address
sw x30, 0(x23) # store in memory
li x30, 0x3d126589 # load another value into integer register
amominu.w x2, x30, (x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x17, 0x845e676e # load random value
la x24, scratch # base address
sw x17, 0(x24) # store in memory
li x17, 0xccbec2c9 # load another value into integer register
amominu.w x25, x17, (x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x21, 0x73dbd6b7 # load random value
la x25, scratch # base address
sw x21, 0(x25) # store in memory
li x21, 0x58a8cfd6 # load another value into integer register
amominu.w x3, x21, (x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x5, 0x5c2b117e # load random value
la x26, scratch # base address
sw x5, 0(x26) # store in memory
li x5, 0x39360b2e # load another value into integer register
amominu.w x18, x5, (x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x10, 0xea7a590f # load random value
la x27, scratch # base address
sw x10, 0(x27) # store in memory
li x10, 0xcf216e68 # load another value into integer register
amominu.w x28, x10, (x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x22, 0xec6a793f # load random value
la x28, scratch # base address
sw x22, 0(x28) # store in memory
li x22, 0x002d28c1 # load another value into integer register
amominu.w x12, x22, (x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x17, 0xd8ec905b # load random value
la x29, scratch # base address
sw x17, 0(x29) # store in memory
li x17, 0xfa2bbaf1 # load another value into integer register
amominu.w x23, x17, (x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x16, 0x713c491c # load random value
la x30, scratch # base address
sw x16, 0(x30) # store in memory
li x16, 0x318a957c # load another value into integer register
amominu.w x12, x16, (x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x19, 0x4c34120d # load random value
la x31, scratch # base address
sw x19, 0(x31) # store in memory
li x19, 0xd7757923 # load another value into integer register
amominu.w x12, x19, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0x5610c037 # load random value
la x7, scratch # base address
sw x0, 0(x7) # store in memory
li x0, 0xd416e0c7 # load another value into integer register
amominu.w x23, x0, (x7) # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0x4975c750 # load random value
la x31, scratch # base address
sw x1, 0(x31) # store in memory
li x1, 0xd9742e28 # load another value into integer register
amominu.w x14, x1, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0xe5a2d738 # load random value
la x23, scratch # base address
sw x2, 0(x23) # store in memory
li x2, 0x43b3f948 # load another value into integer register
amominu.w x31, x2, (x23) # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0x01db9fe5 # load random value
la x23, scratch # base address
sw x3, 0(x23) # store in memory
li x3, 0xa141fbb5 # load another value into integer register
amominu.w x21, x3, (x23) # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x3086684b # load random value
la x5, scratch # base address
sw x4, 0(x5) # store in memory
li x4, 0x072ca4dc # load another value into integer register
amominu.w x10, x4, (x5) # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x5, 0x5b809bec # load random value
la x27, scratch # base address
sw x5, 0(x27) # store in memory
li x5, 0xfc14aa6c # load another value into integer register
amominu.w x25, x5, (x27) # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xce0f7896 # load random value
la x18, scratch # base address
sw x6, 0(x18) # store in memory
li x6, 0x0693c0c6 # load another value into integer register
amominu.w x24, x6, (x18) # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xbfe09bca # load random value
la x22, scratch # base address
sw x7, 0(x22) # store in memory
li x7, 0xcb9f8fc2 # load another value into integer register
amominu.w x13, x7, (x22) # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x98bb7713 # load random value
la x25, scratch # base address
sw x8, 0(x25) # store in memory
li x8, 0x5820e111 # load another value into integer register
amominu.w x20, x8, (x25) # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x085df3e8 # load random value
la x2, scratch # base address
sw x9, 0(x2) # store in memory
li x9, 0x9c3a158d # load another value into integer register
amominu.w x21, x9, (x2) # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x32b9050b # load random value
la x3, scratch # base address
sw x10, 0(x3) # store in memory
li x10, 0xd42513ad # load another value into integer register
amominu.w x6, x10, (x3) # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x4159b885 # load random value
la x12, scratch # base address
sw x11, 0(x12) # store in memory
li x11, 0x6b38a0f7 # load another value into integer register
amominu.w x22, x11, (x12) # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0xc5603b9d # load random value
la x28, scratch # base address
sw x12, 0(x28) # store in memory
li x12, 0x95595d36 # load another value into integer register
amominu.w x5, x12, (x28) # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x4bbf01a7 # load random value
la x25, scratch # base address
sw x13, 0(x25) # store in memory
li x13, 0xb58fcac3 # load another value into integer register
amominu.w x9, x13, (x25) # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x28ea5585 # load random value
la x27, scratch # base address
sw x14, 0(x27) # store in memory
li x14, 0x04cdca5b # load another value into integer register
amominu.w x16, x14, (x27) # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0xa3199f41 # load random value
la x11, scratch # base address
sw x15, 0(x11) # store in memory
li x15, 0xd6d0e6d4 # load another value into integer register
amominu.w x22, x15, (x11) # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0xfe3880a4 # load random value
la x31, scratch # base address
sw x16, 0(x31) # store in memory
li x16, 0x772af68b # load another value into integer register
amominu.w x15, x16, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0x4801c9fd # load random value
la x24, scratch # base address
sw x17, 0(x24) # store in memory
li x17, 0x40f884fe # load another value into integer register
amominu.w x15, x17, (x24) # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0xbbafddc9 # load random value
la x6, scratch # base address
sw x18, 0(x6) # store in memory
li x18, 0xc3115404 # load another value into integer register
amominu.w x13, x18, (x6) # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0x7abcc71b # load random value
la x18, scratch # base address
sw x19, 0(x18) # store in memory
li x19, 0x1dafdce5 # load another value into integer register
amominu.w x17, x19, (x18) # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0x8d539449 # load random value
la x19, scratch # base address
sw x20, 0(x19) # store in memory
li x20, 0x71d1474a # load another value into integer register
amominu.w x11, x20, (x19) # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0x3f447860 # load random value
la x26, scratch # base address
sw x21, 0(x26) # store in memory
li x21, 0x6611a0f3 # load another value into integer register
amominu.w x11, x21, (x26) # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0x06a74cfa # load random value
la x26, scratch # base address
sw x22, 0(x26) # store in memory
li x22, 0x20c9c439 # load another value into integer register
amominu.w x12, x22, (x26) # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0x8dd6a7ae # load random value
la x12, scratch # base address
sw x23, 0(x12) # store in memory
li x23, 0xd1acd429 # load another value into integer register
amominu.w x11, x23, (x12) # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0x93ca2841 # load random value
la x12, scratch # base address
sw x24, 0(x12) # store in memory
li x24, 0xa878e4f8 # load another value into integer register
amominu.w x29, x24, (x12) # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0x4d79a219 # load random value
la x2, scratch # base address
sw x25, 0(x2) # store in memory
li x25, 0xbb31af9e # load another value into integer register
amominu.w x13, x25, (x2) # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0xf6378d06 # load random value
la x27, scratch # base address
sw x26, 0(x27) # store in memory
li x26, 0xb8fc164e # load another value into integer register
amominu.w x25, x26, (x27) # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0x3dd754f3 # load random value
la x31, scratch # base address
sw x27, 0(x31) # store in memory
li x27, 0x3eb77063 # load another value into integer register
amominu.w x2, x27, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0x681bddd3 # load random value
la x15, scratch # base address
sw x28, 0(x15) # store in memory
li x28, 0xcbd35090 # load another value into integer register
amominu.w x14, x28, (x15) # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0xd352c17c # load random value
la x22, scratch # base address
sw x29, 0(x22) # store in memory
li x29, 0x15bca0c0 # load another value into integer register
amominu.w x17, x29, (x22) # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0x56cbac34 # load random value
la x31, scratch # base address
sw x30, 0(x31) # store in memory
li x30, 0x2523dbc8 # load another value into integer register
amominu.w x22, x30, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0xc87f9b4b # load random value
la x12, scratch # base address
sw x31, 0(x12) # store in memory
li x31, 0x1a16173a # load another value into integer register
amominu.w x30, x31, (x12) # perform operation

# Testcase cp_rd (Test destination rd = x0)
li x6, 0xf2dea4c6 # load random value
la x16, scratch # base address
sw x6, 0(x16) # store in memory
li x6, 0x4eac2f4d # load another value into integer register
amominu.w x0, x6, (x16) # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xf1e52306 # load random value
la x22, scratch # base address
sw x1, 0(x22) # store in memory
li x1, 0xea93adfa # load another value into integer register
amominu.w x1, x1, (x22) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x18, 0x6fa06d22 # load random value
la x1, scratch # base address
sw x18, 0(x1) # store in memory
li x18, 0x387c7516 # load another value into integer register
amominu.w x2, x18, (x1) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x10, 0xdd74c566 # load random value
la x7, scratch # base address
sw x10, 0(x7) # store in memory
li x10, 0x062ba12a # load another value into integer register
amominu.w x3, x10, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x17, 0x2b301149 # load random value
la x22, scratch # base address
sw x17, 0(x22) # store in memory
li x17, 0x89c346c3 # load another value into integer register
amominu.w x4, x17, (x22) # perform operation

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x9, 0xa29237f3 # load random value
la x29, scratch # base address
sw x9, 0(x29) # store in memory
li x9, 0x62911046 # load another value into integer register
amominu.w x5, x9, (x29) # perform operation

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x17, 0xabd7a212 # load random value
la x14, scratch # base address
sw x17, 0(x14) # store in memory
li x17, 0x16f7dfe0 # load another value into integer register
amominu.w x6, x17, (x14) # perform operation

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x29, 0x4fe85283 # load random value
la x3, scratch # base address
sw x29, 0(x3) # store in memory
li x29, 0x8b4eb3f8 # load another value into integer register
amominu.w x7, x29, (x3) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x22, 0xaf219817 # load random value
la x15, scratch # base address
sw x22, 0(x15) # store in memory
li x22, 0xa62c77be # load another value into integer register
amominu.w x8, x22, (x15) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x3, 0xa6c48c6b # load random value
la x19, scratch # base address
sw x3, 0(x19) # store in memory
li x3, 0x596da317 # load another value into integer register
amominu.w x9, x3, (x19) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x27, 0x7ba03dff # load random value
la x18, scratch # base address
sw x27, 0(x18) # store in memory
li x27, 0x5ea3f13c # load another value into integer register
amominu.w x10, x27, (x18) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x13, 0xcbaa7046 # load random value
la x30, scratch # base address
sw x13, 0(x30) # store in memory
li x13, 0xa14c089b # load another value into integer register
amominu.w x11, x13, (x30) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xe1fd2f46 # load random value
la x26, scratch # base address
sw x12, 0(x26) # store in memory
li x12, 0xe2247cee # load another value into integer register
amominu.w x12, x12, (x26) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x10, 0x1f9c1466 # load random value
la x2, scratch # base address
sw x10, 0(x2) # store in memory
li x10, 0x6bd76825 # load another value into integer register
amominu.w x13, x10, (x2) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x12, 0x0c1fb815 # load random value
la x31, scratch # base address
sw x12, 0(x31) # store in memory
li x12, 0x05afcf89 # load another value into integer register
amominu.w x14, x12, (x31) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x27, 0x11c59e67 # load random value
la x16, scratch # base address
sw x27, 0(x16) # store in memory
li x27, 0xf509b2cc # load another value into integer register
amominu.w x15, x27, (x16) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x23, 0x7983854f # load random value
la x18, scratch # base address
sw x23, 0(x18) # store in memory
li x23, 0xc9513b37 # load another value into integer register
amominu.w x16, x23, (x18) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x28, 0xb02b37ef # load random value
la x3, scratch # base address
sw x28, 0(x3) # store in memory
li x28, 0xd4be6e57 # load another value into integer register
amominu.w x17, x28, (x3) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x31, 0x5c003001 # load random value
la x2, scratch # base address
sw x31, 0(x2) # store in memory
li x31, 0x4bf30bf9 # load another value into integer register
amominu.w x18, x31, (x2) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x21, 0xad98bdc9 # load random value
la x13, scratch # base address
sw x21, 0(x13) # store in memory
li x21, 0x107617bb # load another value into integer register
amominu.w x19, x21, (x13) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x9, 0x0267d09b # load random value
la x29, scratch # base address
sw x9, 0(x29) # store in memory
li x9, 0x19b05b2a # load another value into integer register
amominu.w x20, x9, (x29) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x13, 0xb3d31866 # load random value
la x23, scratch # base address
sw x13, 0(x23) # store in memory
li x13, 0xb56dec70 # load another value into integer register
amominu.w x21, x13, (x23) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x18, 0x3a6967a9 # load random value
la x5, scratch # base address
sw x18, 0(x5) # store in memory
li x18, 0x07236cab # load another value into integer register
amominu.w x22, x18, (x5) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x18, 0x7f67c1e9 # load random value
la x30, scratch # base address
sw x18, 0(x30) # store in memory
li x18, 0x809e2a4a # load another value into integer register
amominu.w x23, x18, (x30) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x18, 0xa31b45c0 # load random value
la x13, scratch # base address
sw x18, 0(x13) # store in memory
li x18, 0x63badff1 # load another value into integer register
amominu.w x24, x18, (x13) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x19, 0x9be61093 # load random value
la x24, scratch # base address
sw x19, 0(x24) # store in memory
li x19, 0x287c9fe8 # load another value into integer register
amominu.w x25, x19, (x24) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x12, 0x064893a5 # load random value
la x25, scratch # base address
sw x12, 0(x25) # store in memory
li x12, 0x3979ad95 # load another value into integer register
amominu.w x26, x12, (x25) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x31, 0xcf6e7767 # load random value
la x11, scratch # base address
sw x31, 0(x11) # store in memory
li x31, 0xe7e33753 # load another value into integer register
amominu.w x27, x31, (x11) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x30, 0x2181d70f # load random value
la x31, scratch # base address
sw x30, 0(x31) # store in memory
li x30, 0xa59bcfd1 # load another value into integer register
amominu.w x28, x30, (x31) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x9, 0x95f7ee45 # load random value
la x27, scratch # base address
sw x9, 0(x27) # store in memory
li x9, 0x052aaff3 # load another value into integer register
amominu.w x29, x9, (x27) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x16, 0xdc7ac507 # load random value
la x30, scratch # base address
sw x16, 0(x30) # store in memory
li x16, 0x60b63d08 # load another value into integer register
amominu.w x30, x16, (x30) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x1, 0x889adbfb # load random value
la x10, scratch # base address
sw x1, 0(x10) # store in memory
li x1, 0xd805e9b1 # load another value into integer register
amominu.w x31, x1, (x10) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x24, 0x8ff982b5 # load random value
la x3, scratch # base address
sw x24, 0(x3) # store in memory
li x24, 0x00000000 # load another value into integer register
amominu.w x17, x24, (x3) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x2, 0x6ffd12d9 # load random value
la x13, scratch # base address
sw x2, 0(x13) # store in memory
li x2, 0x00000001 # load another value into integer register
amominu.w x27, x2, (x13) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x3, 0xdd61cd8f # load random value
la x17, scratch # base address
sw x3, 0(x17) # store in memory
li x3, 0x00000002 # load another value into integer register
amominu.w x23, x3, (x17) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x17, 0x28dd4e99 # load random value
la x8, scratch # base address
sw x17, 0(x8) # store in memory
li x17, 0x80000000 # load another value into integer register
amominu.w x10, x17, (x8) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x19, 0x53b8fc74 # load random value
la x1, scratch # base address
sw x19, 0(x1) # store in memory
li x19, 0x80000001 # load another value into integer register
amominu.w x8, x19, (x1) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x7, 0x5c9151c6 # load random value
la x18, scratch # base address
sw x7, 0(x18) # store in memory
li x7, 0x7fffffff # load another value into integer register
amominu.w x31, x7, (x18) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x12, 0xa655c171 # load random value
la x21, scratch # base address
sw x12, 0(x21) # store in memory
li x12, 0x7ffffffe # load another value into integer register
amominu.w x25, x12, (x21) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x22, 0x19a68bce # load random value
la x1, scratch # base address
sw x22, 0(x1) # store in memory
li x22, 0xffffffff # load another value into integer register
amominu.w x6, x22, (x1) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x3, 0xa256d095 # load random value
la x19, scratch # base address
sw x3, 0(x19) # store in memory
li x3, 0xfffffffe # load another value into integer register
amominu.w x20, x3, (x19) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x12, 0xc59069dc # load random value
la x5, scratch # base address
sw x12, 0(x5) # store in memory
li x12, 0x5bbc8872 # load another value into integer register
amominu.w x3, x12, (x5) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x11, 0x35852f79 # load random value
la x10, scratch # base address
sw x11, 0(x10) # store in memory
li x11, 0xaaaaaaaa # load another value into integer register
amominu.w x25, x11, (x10) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x28, 0x021e2a7a # load random value
la x21, scratch # base address
sw x28, 0(x21) # store in memory
li x28, 0x55555555 # load another value into integer register
amominu.w x19, x28, (x21) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x3554fd0b # load random value
la x1, scratch # base address
sw x1, 0(x1) # store in memory
amominu.w x2, x1, (x1) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xac57bb14 # load random value
la x2, scratch # base address
sw x2, 0(x2) # store in memory
amominu.w x5, x2, (x2) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x6f74958f # load random value
la x3, scratch # base address
sw x3, 0(x3) # store in memory
amominu.w x14, x3, (x3) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xa3776c40 # load random value
la x4, scratch # base address
sw x4, 0(x4) # store in memory
amominu.w x18, x4, (x4) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x71e1c10e # load random value
la x5, scratch # base address
sw x5, 0(x5) # store in memory
amominu.w x29, x5, (x5) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xdb149d7d # load random value
la x6, scratch # base address
sw x6, 0(x6) # store in memory
amominu.w x31, x6, (x6) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xaa872223 # load random value
la x7, scratch # base address
sw x7, 0(x7) # store in memory
amominu.w x15, x7, (x7) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xfbd350f2 # load random value
la x8, scratch # base address
sw x8, 0(x8) # store in memory
amominu.w x11, x8, (x8) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x6847ddc8 # load random value
la x9, scratch # base address
sw x9, 0(x9) # store in memory
amominu.w x7, x9, (x9) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xa835f8ef # load random value
la x10, scratch # base address
sw x10, 0(x10) # store in memory
amominu.w x29, x10, (x10) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xd9961294 # load random value
la x11, scratch # base address
sw x11, 0(x11) # store in memory
amominu.w x22, x11, (x11) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x838de0e4 # load random value
la x12, scratch # base address
sw x12, 0(x12) # store in memory
amominu.w x18, x12, (x12) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x63ec5e70 # load random value
la x13, scratch # base address
sw x13, 0(x13) # store in memory
amominu.w x26, x13, (x13) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x32d2e45f # load random value
la x14, scratch # base address
sw x14, 0(x14) # store in memory
amominu.w x30, x14, (x14) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xd602ad37 # load random value
la x15, scratch # base address
sw x15, 0(x15) # store in memory
amominu.w x9, x15, (x15) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x99dff896 # load random value
la x16, scratch # base address
sw x16, 0(x16) # store in memory
amominu.w x16, x16, (x16) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xda838f63 # load random value
la x17, scratch # base address
sw x17, 0(x17) # store in memory
amominu.w x19, x17, (x17) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x7cb83beb # load random value
la x18, scratch # base address
sw x18, 0(x18) # store in memory
amominu.w x2, x18, (x18) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x89084ae3 # load random value
la x19, scratch # base address
sw x19, 0(x19) # store in memory
amominu.w x28, x19, (x19) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x73964caf # load random value
la x20, scratch # base address
sw x20, 0(x20) # store in memory
amominu.w x22, x20, (x20) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x006a4282 # load random value
la x21, scratch # base address
sw x21, 0(x21) # store in memory
amominu.w x13, x21, (x21) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x85793da4 # load random value
la x22, scratch # base address
sw x22, 0(x22) # store in memory
amominu.w x18, x22, (x22) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x1e90d77c # load random value
la x23, scratch # base address
sw x23, 0(x23) # store in memory
amominu.w x5, x23, (x23) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x374a54fc # load random value
la x24, scratch # base address
sw x24, 0(x24) # store in memory
amominu.w x8, x24, (x24) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xb07217a8 # load random value
la x25, scratch # base address
sw x25, 0(x25) # store in memory
amominu.w x12, x25, (x25) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x789736ad # load random value
la x26, scratch # base address
sw x26, 0(x26) # store in memory
amominu.w x9, x26, (x26) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xcabc179b # load random value
la x27, scratch # base address
sw x27, 0(x27) # store in memory
amominu.w x28, x27, (x27) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x97f5f8cc # load random value
la x28, scratch # base address
sw x28, 0(x28) # store in memory
amominu.w x5, x28, (x28) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x060c8e35 # load random value
la x29, scratch # base address
sw x29, 0(x29) # store in memory
amominu.w x24, x29, (x29) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x7e374586 # load random value
la x30, scratch # base address
sw x30, 0(x30) # store in memory
amominu.w x27, x30, (x30) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xcf23d713 # load random value
la x31, scratch # base address
sw x31, 0(x31) # store in memory
amominu.w x25, x31, (x31) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x12, 0xd90c24c3 # load random value
la x1, scratch # base address
sw x12, 0(x1) # store in memory
li x12, 0xf2cc1b31 # load another value into integer register
amominu.w x1, x12, (x1) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x23, 0xfa958aae # load random value
la x2, scratch # base address
sw x23, 0(x2) # store in memory
li x23, 0xcc9a93ae # load another value into integer register
amominu.w x2, x23, (x2) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x31, 0x84d86ea0 # load random value
la x3, scratch # base address
sw x31, 0(x3) # store in memory
li x31, 0xb8839dfd # load another value into integer register
amominu.w x3, x31, (x3) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x18, 0xd0bedf72 # load random value
la x4, scratch # base address
sw x18, 0(x4) # store in memory
li x18, 0x656a1b2a # load another value into integer register
amominu.w x4, x18, (x4) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x30, 0x56af1e9f # load random value
la x5, scratch # base address
sw x30, 0(x5) # store in memory
li x30, 0xea684144 # load another value into integer register
amominu.w x5, x30, (x5) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x19, 0x81c96d4e # load random value
la x6, scratch # base address
sw x19, 0(x6) # store in memory
li x19, 0xd495c507 # load another value into integer register
amominu.w x6, x19, (x6) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x21, 0x584a0518 # load random value
la x7, scratch # base address
sw x21, 0(x7) # store in memory
li x21, 0x48f5372b # load another value into integer register
amominu.w x7, x21, (x7) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x26, 0xab0f95a9 # load random value
la x8, scratch # base address
sw x26, 0(x8) # store in memory
li x26, 0x1bb0ffe1 # load another value into integer register
amominu.w x8, x26, (x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x11, 0xa72ab3a4 # load random value
la x9, scratch # base address
sw x11, 0(x9) # store in memory
li x11, 0xdd4950f3 # load another value into integer register
amominu.w x9, x11, (x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x11, 0x09b94032 # load random value
la x10, scratch # base address
sw x11, 0(x10) # store in memory
li x11, 0xd66f326f # load another value into integer register
amominu.w x10, x11, (x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x24, 0xecc50d40 # load random value
la x11, scratch # base address
sw x24, 0(x11) # store in memory
li x24, 0x5167847f # load another value into integer register
amominu.w x11, x24, (x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xfb0c4810 # load random value
la x12, scratch # base address
sw x12, 0(x12) # store in memory
amominu.w x12, x12, (x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x11, 0xf3da224e # load random value
la x13, scratch # base address
sw x11, 0(x13) # store in memory
li x11, 0x69f294b0 # load another value into integer register
amominu.w x13, x11, (x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x22, 0x5d2aeaca # load random value
la x14, scratch # base address
sw x22, 0(x14) # store in memory
li x22, 0xfd906e05 # load another value into integer register
amominu.w x14, x22, (x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x6, 0x51729385 # load random value
la x15, scratch # base address
sw x6, 0(x15) # store in memory
li x6, 0x499e933b # load another value into integer register
amominu.w x15, x6, (x15) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x18, 0x8c69f45f # load random value
la x16, scratch # base address
sw x18, 0(x16) # store in memory
li x18, 0x09c40f7a # load another value into integer register
amominu.w x16, x18, (x16) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x25, 0x6c0337d2 # load random value
la x17, scratch # base address
sw x25, 0(x17) # store in memory
li x25, 0xf772bd3c # load another value into integer register
amominu.w x17, x25, (x17) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x29, 0x7c97990b # load random value
la x18, scratch # base address
sw x29, 0(x18) # store in memory
li x29, 0x30777df3 # load another value into integer register
amominu.w x18, x29, (x18) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x10, 0x8c615c05 # load random value
la x19, scratch # base address
sw x10, 0(x19) # store in memory
li x10, 0x0859982a # load another value into integer register
amominu.w x19, x10, (x19) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x21, 0xf089ebfe # load random value
la x20, scratch # base address
sw x21, 0(x20) # store in memory
li x21, 0x0f37e160 # load another value into integer register
amominu.w x20, x21, (x20) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x18, 0xe7b77213 # load random value
la x21, scratch # base address
sw x18, 0(x21) # store in memory
li x18, 0xb2b4fdc7 # load another value into integer register
amominu.w x21, x18, (x21) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x10, 0xc260b122 # load random value
la x22, scratch # base address
sw x10, 0(x22) # store in memory
li x10, 0xd4d20068 # load another value into integer register
amominu.w x22, x10, (x22) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x5, 0x8218aa29 # load random value
la x23, scratch # base address
sw x5, 0(x23) # store in memory
li x5, 0x465fbfbd # load another value into integer register
amominu.w x23, x5, (x23) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x8, 0x9dcfa2be # load random value
la x24, scratch # base address
sw x8, 0(x24) # store in memory
li x8, 0x9e7eb2f4 # load another value into integer register
amominu.w x24, x8, (x24) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x27, 0x45081cc2 # load random value
la x25, scratch # base address
sw x27, 0(x25) # store in memory
li x27, 0xd0a94af5 # load another value into integer register
amominu.w x25, x27, (x25) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x19, 0x778cc19b # load random value
la x26, scratch # base address
sw x19, 0(x26) # store in memory
li x19, 0xe7579bb9 # load another value into integer register
amominu.w x26, x19, (x26) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x13, 0x37bd443a # load random value
la x27, scratch # base address
sw x13, 0(x27) # store in memory
li x13, 0xd430247a # load another value into integer register
amominu.w x27, x13, (x27) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x31, 0xe38f8bbd # load random value
la x28, scratch # base address
sw x31, 0(x28) # store in memory
li x31, 0x37108f91 # load another value into integer register
amominu.w x28, x31, (x28) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x21, 0xda21ce65 # load random value
la x29, scratch # base address
sw x21, 0(x29) # store in memory
li x21, 0x430a30b8 # load another value into integer register
amominu.w x29, x21, (x29) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x28, 0xa120876f # load random value
la x30, scratch # base address
sw x28, 0(x30) # store in memory
li x28, 0xd330256a # load another value into integer register
amominu.w x30, x28, (x30) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x21, 0xbd46caf4 # load random value
la x31, scratch # base address
sw x21, 0(x31) # store in memory
li x21, 0x2cf94ebb # load another value into integer register
amominu.w x31, x21, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x0, 0x90e7efe1 # load random value
la x11, scratch # base address
sw x0, 0(x11) # store in memory
li x0, 0xf30ba3fe # load another value into integer register
amominu.w x0, x0, (x11) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0x51f82c9f # load random value
la x13, scratch # base address
sw x1, 0(x13) # store in memory
li x1, 0x940e6d2c # load another value into integer register
amominu.w x1, x1, (x13) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x2, 0x4f319245 # load random value
la x8, scratch # base address
sw x2, 0(x8) # store in memory
li x2, 0x33e01419 # load another value into integer register
amominu.w x2, x2, (x8) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0xe816af45 # load random value
la x29, scratch # base address
sw x3, 0(x29) # store in memory
li x3, 0xc796ade8 # load another value into integer register
amominu.w x3, x3, (x29) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x7095598d # load random value
la x2, scratch # base address
sw x4, 0(x2) # store in memory
li x4, 0xe1e36cdb # load another value into integer register
amominu.w x4, x4, (x2) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x9ef14a4f # load random value
la x7, scratch # base address
sw x5, 0(x7) # store in memory
li x5, 0xe625bbc7 # load another value into integer register
amominu.w x5, x5, (x7) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xffa60fa9 # load random value
la x31, scratch # base address
sw x6, 0(x31) # store in memory
li x6, 0xebd70bb4 # load another value into integer register
amominu.w x6, x6, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xb834b87b # load random value
la x4, scratch # base address
sw x7, 0(x4) # store in memory
li x7, 0x58ae94ce # load another value into integer register
amominu.w x7, x7, (x4) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x6ed3597b # load random value
la x3, scratch # base address
sw x8, 0(x3) # store in memory
li x8, 0xb55bac28 # load another value into integer register
amominu.w x8, x8, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0xf31c8429 # load random value
la x21, scratch # base address
sw x9, 0(x21) # store in memory
li x9, 0x82036efc # load another value into integer register
amominu.w x9, x9, (x21) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x039d1ad6 # load random value
la x3, scratch # base address
sw x10, 0(x3) # store in memory
li x10, 0x5eb1a333 # load another value into integer register
amominu.w x10, x10, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0xb685945d # load random value
la x29, scratch # base address
sw x11, 0(x29) # store in memory
li x11, 0x8669392d # load another value into integer register
amominu.w x11, x11, (x29) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x65c655a3 # load random value
la x12, scratch # base address
sw x12, 0(x12) # store in memory
amominu.w x12, x12, (x12) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x8fbbfb7f # load random value
la x17, scratch # base address
sw x13, 0(x17) # store in memory
li x13, 0xc0c9efd6 # load another value into integer register
amominu.w x13, x13, (x17) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0xe2fa6206 # load random value
la x15, scratch # base address
sw x14, 0(x15) # store in memory
li x14, 0x54069b34 # load another value into integer register
amominu.w x14, x14, (x15) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0xfb27b559 # load random value
la x25, scratch # base address
sw x15, 0(x25) # store in memory
li x15, 0x97433f78 # load another value into integer register
amominu.w x15, x15, (x25) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0x76f79de1 # load random value
la x28, scratch # base address
sw x16, 0(x28) # store in memory
li x16, 0x5c227345 # load another value into integer register
amominu.w x16, x16, (x28) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0x31d2fe85 # load random value
la x29, scratch # base address
sw x17, 0(x29) # store in memory
li x17, 0xb2a36f31 # load another value into integer register
amominu.w x17, x17, (x29) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x18, 0x9ec82794 # load random value
la x19, scratch # base address
sw x18, 0(x19) # store in memory
li x18, 0xc560579d # load another value into integer register
amominu.w x18, x18, (x19) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0xc5b248d3 # load random value
la x25, scratch # base address
sw x19, 0(x25) # store in memory
li x19, 0x0562d008 # load another value into integer register
amominu.w x19, x19, (x25) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x20, 0x798c4923 # load random value
la x29, scratch # base address
sw x20, 0(x29) # store in memory
li x20, 0xcab667fa # load another value into integer register
amominu.w x20, x20, (x29) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0x51738f86 # load random value
la x30, scratch # base address
sw x21, 0(x30) # store in memory
li x21, 0x254cf471 # load another value into integer register
amominu.w x21, x21, (x30) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0x5950e75b # load random value
la x2, scratch # base address
sw x22, 0(x2) # store in memory
li x22, 0xdd53ac21 # load another value into integer register
amominu.w x22, x22, (x2) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0x536ce6ed # load random value
la x26, scratch # base address
sw x23, 0(x26) # store in memory
li x23, 0xec1ecab9 # load another value into integer register
amominu.w x23, x23, (x26) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x24, 0xed8a6281 # load random value
la x16, scratch # base address
sw x24, 0(x16) # store in memory
li x24, 0x2f364847 # load another value into integer register
amominu.w x24, x24, (x16) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0x30d24e1a # load random value
la x31, scratch # base address
sw x25, 0(x31) # store in memory
li x25, 0xc9b4eb0f # load another value into integer register
amominu.w x25, x25, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0xa156ee8c # load random value
la x23, scratch # base address
sw x26, 0(x23) # store in memory
li x26, 0xafa6ff0d # load another value into integer register
amominu.w x26, x26, (x23) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0x3eebf056 # load random value
la x4, scratch # base address
sw x27, 0(x4) # store in memory
li x27, 0x4626abe0 # load another value into integer register
amominu.w x27, x27, (x4) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0xfb5011ce # load random value
la x27, scratch # base address
sw x28, 0(x27) # store in memory
li x28, 0x20fe4b38 # load another value into integer register
amominu.w x28, x28, (x27) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0x88af8322 # load random value
la x18, scratch # base address
sw x29, 0(x18) # store in memory
li x29, 0x72a6e24b # load another value into integer register
amominu.w x29, x29, (x18) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0x1559eafa # load random value
la x31, scratch # base address
sw x30, 0(x31) # store in memory
li x30, 0xb4be1113 # load another value into integer register
amominu.w x30, x30, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0xdf1b878b # load random value
la x31, scratch # base address
sw x31, 0(x31) # store in memory
amominu.w x31, x31, (x31) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xe3fdfd51 # load random value
la x1, scratch # base address
sw x1, 0(x1) # store in memory
amominu.w x1, x1, (x1) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x9d764990 # load random value
la x2, scratch # base address
sw x2, 0(x2) # store in memory
amominu.w x2, x2, (x2) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x978de311 # load random value
la x3, scratch # base address
sw x3, 0(x3) # store in memory
amominu.w x3, x3, (x3) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0x4b779a5f # load random value
la x4, scratch # base address
sw x4, 0(x4) # store in memory
amominu.w x4, x4, (x4) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x0c750b5e # load random value
la x5, scratch # base address
sw x5, 0(x5) # store in memory
amominu.w x5, x5, (x5) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x5e459c72 # load random value
la x6, scratch # base address
sw x6, 0(x6) # store in memory
amominu.w x6, x6, (x6) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xb468c4b3 # load random value
la x7, scratch # base address
sw x7, 0(x7) # store in memory
amominu.w x7, x7, (x7) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x493aff9c # load random value
la x8, scratch # base address
sw x8, 0(x8) # store in memory
amominu.w x8, x8, (x8) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x682ae176 # load random value
la x9, scratch # base address
sw x9, 0(x9) # store in memory
amominu.w x9, x9, (x9) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x943cd681 # load random value
la x10, scratch # base address
sw x10, 0(x10) # store in memory
amominu.w x10, x10, (x10) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x9374e81a # load random value
la x11, scratch # base address
sw x11, 0(x11) # store in memory
amominu.w x11, x11, (x11) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x9d1bf8d3 # load random value
la x12, scratch # base address
sw x12, 0(x12) # store in memory
amominu.w x12, x12, (x12) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xeff011d0 # load random value
la x13, scratch # base address
sw x13, 0(x13) # store in memory
amominu.w x13, x13, (x13) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xdbfa65b2 # load random value
la x14, scratch # base address
sw x14, 0(x14) # store in memory
amominu.w x14, x14, (x14) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x5386e8e6 # load random value
la x15, scratch # base address
sw x15, 0(x15) # store in memory
amominu.w x15, x15, (x15) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x3cef6497 # load random value
la x16, scratch # base address
sw x16, 0(x16) # store in memory
amominu.w x16, x16, (x16) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x4787a2d4 # load random value
la x17, scratch # base address
sw x17, 0(x17) # store in memory
amominu.w x17, x17, (x17) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xb44faa4a # load random value
la x18, scratch # base address
sw x18, 0(x18) # store in memory
amominu.w x18, x18, (x18) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x5cf215b9 # load random value
la x19, scratch # base address
sw x19, 0(x19) # store in memory
amominu.w x19, x19, (x19) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xaa43fe0f # load random value
la x20, scratch # base address
sw x20, 0(x20) # store in memory
amominu.w x20, x20, (x20) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x370d542a # load random value
la x21, scratch # base address
sw x21, 0(x21) # store in memory
amominu.w x21, x21, (x21) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x14504170 # load random value
la x22, scratch # base address
sw x22, 0(x22) # store in memory
amominu.w x22, x22, (x22) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xbe8401f1 # load random value
la x23, scratch # base address
sw x23, 0(x23) # store in memory
amominu.w x23, x23, (x23) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xb93eb8f9 # load random value
la x24, scratch # base address
sw x24, 0(x24) # store in memory
amominu.w x24, x24, (x24) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xb79a2697 # load random value
la x25, scratch # base address
sw x25, 0(x25) # store in memory
amominu.w x25, x25, (x25) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xa4ec8fd1 # load random value
la x26, scratch # base address
sw x26, 0(x26) # store in memory
amominu.w x26, x26, (x26) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xcc078512 # load random value
la x27, scratch # base address
sw x27, 0(x27) # store in memory
amominu.w x27, x27, (x27) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xaec8ed03 # load random value
la x28, scratch # base address
sw x28, 0(x28) # store in memory
amominu.w x28, x28, (x28) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x2d66bc61 # load random value
la x29, scratch # base address
sw x29, 0(x29) # store in memory
amominu.w x29, x29, (x29) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xc28eecf6 # load random value
la x30, scratch # base address
sw x30, 0(x30) # store in memory
amominu.w x30, x30, (x30) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xe6b6be99 # load random value
la x31, scratch # base address
sw x31, 0(x31) # store in memory
amominu.w x31, x31, (x31) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x3, scratch
add x30, x18, x5 # perform first operation
amominu.w x14, x12, (x3) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x1, scratch
add x22, x6, x5 # perform first operation
amominu.w x29, x3, (x1) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x18, scratch
add x23, x22, x17 # perform first operation
amominu.w x11, x26, (x18) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x16, scratch
add x13, x13, x0 # perform first operation
amominu.w x5, x13, (x16) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x27, scratch
add x27, x27, x0 # perform first operation
amominu.w x19, x15, (x27) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x17, scratch
add x25, x25, x0 # perform first operation
amominu.w x9, x20, (x17) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x21, scratch
add x10, x11, x15 # perform first operation
amominu.w x10, x26, (x21) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x18, scratch
add x30, x24, x13 # perform first operation
amominu.w x30, x27, (x18) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x27, scratch
add x9, x16, x13 # perform first operation
amominu.w x9, x29, (x27) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x17, scratch
add x14, x31, x23 # perform first operation
amominu.w x31, x3, (x17) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x2, scratch
add x12, x24, x22 # perform first operation
amominu.w x22, x15, (x2) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x8, scratch
add x17, x6, x13 # perform first operation
amominu.w x3, x7, (x8) # perform second (triggering) operation

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
