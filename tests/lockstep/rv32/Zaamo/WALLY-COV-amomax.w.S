///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zaamo/WALLY-COV-amomax.w.S
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
li x9, 0xfc0d8cbf # load random value
la x1, scratch # base address
sw x9, 0(x1) # store in memory
li x9, 0x69113edc # load another value into integer register
amomax.w x24, x9, (x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x17, 0xf858bcae # load random value
la x2, scratch # base address
sw x17, 0(x2) # store in memory
li x17, 0xd8a9ef0f # load another value into integer register
amomax.w x20, x17, (x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x26, 0x5219233f # load random value
la x3, scratch # base address
sw x26, 0(x3) # store in memory
li x26, 0xd1167cd9 # load another value into integer register
amomax.w x25, x26, (x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x21, 0x05ae97a3 # load random value
la x4, scratch # base address
sw x21, 0(x4) # store in memory
li x21, 0xb138493b # load another value into integer register
amomax.w x27, x21, (x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x17, 0x35aabab7 # load random value
la x5, scratch # base address
sw x17, 0(x5) # store in memory
li x17, 0xe4c3a861 # load another value into integer register
amomax.w x27, x17, (x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x22, 0x5aff4daf # load random value
la x6, scratch # base address
sw x22, 0(x6) # store in memory
li x22, 0x217800c7 # load another value into integer register
amomax.w x31, x22, (x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x11, 0x64a3b0f8 # load random value
la x7, scratch # base address
sw x11, 0(x7) # store in memory
li x11, 0xb830e525 # load another value into integer register
amomax.w x28, x11, (x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x9, 0xa414b0ed # load random value
la x8, scratch # base address
sw x9, 0(x8) # store in memory
li x9, 0x13e28889 # load another value into integer register
amomax.w x10, x9, (x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x21, 0x5b3aede5 # load random value
la x9, scratch # base address
sw x21, 0(x9) # store in memory
li x21, 0x2145e46f # load another value into integer register
amomax.w x28, x21, (x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x5, 0x18f44ee9 # load random value
la x10, scratch # base address
sw x5, 0(x10) # store in memory
li x5, 0x38083179 # load another value into integer register
amomax.w x8, x5, (x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x8, 0x95c6979e # load random value
la x11, scratch # base address
sw x8, 0(x11) # store in memory
li x8, 0x8d809b52 # load another value into integer register
amomax.w x7, x8, (x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x8, 0x7f3ba5eb # load random value
la x12, scratch # base address
sw x8, 0(x12) # store in memory
li x8, 0x282ac4e0 # load another value into integer register
amomax.w x22, x8, (x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x6, 0xcf9d530b # load random value
la x13, scratch # base address
sw x6, 0(x13) # store in memory
li x6, 0x87ef2306 # load another value into integer register
amomax.w x27, x6, (x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x23, 0xadc22e2c # load random value
la x14, scratch # base address
sw x23, 0(x14) # store in memory
li x23, 0x8cc02d99 # load another value into integer register
amomax.w x9, x23, (x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x9, 0x0a0d87a6 # load random value
la x15, scratch # base address
sw x9, 0(x15) # store in memory
li x9, 0x75d69a17 # load another value into integer register
amomax.w x1, x9, (x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x27, 0x5d1ad0e7 # load random value
la x16, scratch # base address
sw x27, 0(x16) # store in memory
li x27, 0xa72b9370 # load another value into integer register
amomax.w x6, x27, (x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x5, 0xba517077 # load random value
la x17, scratch # base address
sw x5, 0(x17) # store in memory
li x5, 0xae36b787 # load another value into integer register
amomax.w x25, x5, (x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x30, 0xe6762584 # load random value
la x18, scratch # base address
sw x30, 0(x18) # store in memory
li x30, 0x22576cf2 # load another value into integer register
amomax.w x19, x30, (x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x17, 0x8f8f48c6 # load random value
la x19, scratch # base address
sw x17, 0(x19) # store in memory
li x17, 0x4c0597a8 # load another value into integer register
amomax.w x6, x17, (x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x5, 0xaf12f5f4 # load random value
la x20, scratch # base address
sw x5, 0(x20) # store in memory
li x5, 0xcb0cffeb # load another value into integer register
amomax.w x9, x5, (x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x31, 0x0569b58f # load random value
la x21, scratch # base address
sw x31, 0(x21) # store in memory
li x31, 0x89354e5c # load another value into integer register
amomax.w x27, x31, (x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x21, 0x5060b494 # load random value
la x22, scratch # base address
sw x21, 0(x22) # store in memory
li x21, 0x931435d5 # load another value into integer register
amomax.w x14, x21, (x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x20, 0x3d8e5daa # load random value
la x23, scratch # base address
sw x20, 0(x23) # store in memory
li x20, 0x4eabbad3 # load another value into integer register
amomax.w x8, x20, (x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x12, 0xb56dd18e # load random value
la x24, scratch # base address
sw x12, 0(x24) # store in memory
li x12, 0x414e9228 # load another value into integer register
amomax.w x27, x12, (x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x1, 0x676eb1ef # load random value
la x25, scratch # base address
sw x1, 0(x25) # store in memory
li x1, 0xdd02e79b # load another value into integer register
amomax.w x14, x1, (x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x20, 0xfad0333e # load random value
la x26, scratch # base address
sw x20, 0(x26) # store in memory
li x20, 0x039c04ae # load another value into integer register
amomax.w x16, x20, (x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x26, 0x346fd7a7 # load random value
la x27, scratch # base address
sw x26, 0(x27) # store in memory
li x26, 0x9ed882c5 # load another value into integer register
amomax.w x20, x26, (x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x24, 0x07b9a53f # load random value
la x28, scratch # base address
sw x24, 0(x28) # store in memory
li x24, 0x86dd075d # load another value into integer register
amomax.w x15, x24, (x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x24, 0xadce01d5 # load random value
la x29, scratch # base address
sw x24, 0(x29) # store in memory
li x24, 0x74577e61 # load another value into integer register
amomax.w x2, x24, (x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x29, 0x2fb72f2f # load random value
la x30, scratch # base address
sw x29, 0(x30) # store in memory
li x29, 0x44fbaad9 # load another value into integer register
amomax.w x24, x29, (x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x29, 0xee652f5f # load random value
la x31, scratch # base address
sw x29, 0(x31) # store in memory
li x29, 0xbdd6571d # load another value into integer register
amomax.w x14, x29, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0xa5e90209 # load random value
la x10, scratch # base address
sw x0, 0(x10) # store in memory
li x0, 0x65faa35a # load another value into integer register
amomax.w x18, x0, (x10) # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0xac7054bd # load random value
la x23, scratch # base address
sw x1, 0(x23) # store in memory
li x1, 0x928668d9 # load another value into integer register
amomax.w x6, x1, (x23) # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0xb57ac1ac # load random value
la x8, scratch # base address
sw x2, 0(x8) # store in memory
li x2, 0x09c41eae # load another value into integer register
amomax.w x24, x2, (x8) # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0x4104839b # load random value
la x1, scratch # base address
sw x3, 0(x1) # store in memory
li x3, 0x4e8c409e # load another value into integer register
amomax.w x28, x3, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x5b37e821 # load random value
la x14, scratch # base address
sw x4, 0(x14) # store in memory
li x4, 0xe39730bc # load another value into integer register
amomax.w x21, x4, (x14) # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8a6fe4a8 # load random value
la x12, scratch # base address
sw x5, 0(x12) # store in memory
li x5, 0x408cf9d6 # load another value into integer register
amomax.w x28, x5, (x12) # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x853b218e # load random value
la x20, scratch # base address
sw x6, 0(x20) # store in memory
li x6, 0x239c9af4 # load another value into integer register
amomax.w x5, x6, (x20) # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x40390be2 # load random value
la x9, scratch # base address
sw x7, 0(x9) # store in memory
li x7, 0x3498cdbe # load another value into integer register
amomax.w x2, x7, (x9) # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0xd89cc192 # load random value
la x6, scratch # base address
sw x8, 0(x6) # store in memory
li x8, 0xd367673e # load another value into integer register
amomax.w x25, x8, (x6) # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x12bc9f23 # load random value
la x10, scratch # base address
sw x9, 0(x10) # store in memory
li x9, 0xe9ba5f8f # load another value into integer register
amomax.w x19, x9, (x10) # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0xa61747dc # load random value
la x26, scratch # base address
sw x10, 0(x26) # store in memory
li x10, 0xe014615a # load another value into integer register
amomax.w x11, x10, (x26) # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0xcbdcaab4 # load random value
la x26, scratch # base address
sw x11, 0(x26) # store in memory
li x11, 0xc3c02e6b # load another value into integer register
amomax.w x1, x11, (x26) # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0xa4aa33dd # load random value
la x5, scratch # base address
sw x12, 0(x5) # store in memory
li x12, 0xb3702ca1 # load another value into integer register
amomax.w x31, x12, (x5) # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x57703b9c # load random value
la x20, scratch # base address
sw x13, 0(x20) # store in memory
li x13, 0x50e14e82 # load another value into integer register
amomax.w x3, x13, (x20) # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x61a7017b # load random value
la x12, scratch # base address
sw x14, 0(x12) # store in memory
li x14, 0x94a6fc44 # load another value into integer register
amomax.w x17, x14, (x12) # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0xef341835 # load random value
la x16, scratch # base address
sw x15, 0(x16) # store in memory
li x15, 0x2fd98e30 # load another value into integer register
amomax.w x5, x15, (x16) # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0x17caf163 # load random value
la x31, scratch # base address
sw x16, 0(x31) # store in memory
li x16, 0xbe6d0e95 # load another value into integer register
amomax.w x12, x16, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0x0fe82759 # load random value
la x8, scratch # base address
sw x17, 0(x8) # store in memory
li x17, 0x22c2fe60 # load another value into integer register
amomax.w x1, x17, (x8) # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0xbd1394f8 # load random value
la x23, scratch # base address
sw x18, 0(x23) # store in memory
li x18, 0x10b98a14 # load another value into integer register
amomax.w x9, x18, (x23) # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0x0812efa6 # load random value
la x7, scratch # base address
sw x19, 0(x7) # store in memory
li x19, 0xdf3c76ac # load another value into integer register
amomax.w x26, x19, (x7) # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0x5089a902 # load random value
la x5, scratch # base address
sw x20, 0(x5) # store in memory
li x20, 0x41ab1847 # load another value into integer register
amomax.w x10, x20, (x5) # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0x279e3913 # load random value
la x18, scratch # base address
sw x21, 0(x18) # store in memory
li x21, 0x575dfec1 # load another value into integer register
amomax.w x19, x21, (x18) # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0x2c8cbdb6 # load random value
la x15, scratch # base address
sw x22, 0(x15) # store in memory
li x22, 0x18406281 # load another value into integer register
amomax.w x26, x22, (x15) # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0xa3915c41 # load random value
la x29, scratch # base address
sw x23, 0(x29) # store in memory
li x23, 0x8ab7a9ee # load another value into integer register
amomax.w x10, x23, (x29) # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0xa75d9913 # load random value
la x1, scratch # base address
sw x24, 0(x1) # store in memory
li x24, 0xdb14fbbc # load another value into integer register
amomax.w x31, x24, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0xf0ec1667 # load random value
la x15, scratch # base address
sw x25, 0(x15) # store in memory
li x25, 0x2c3686a3 # load another value into integer register
amomax.w x13, x25, (x15) # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0xc76ed41e # load random value
la x6, scratch # base address
sw x26, 0(x6) # store in memory
li x26, 0x84cc10a4 # load another value into integer register
amomax.w x14, x26, (x6) # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0x06410685 # load random value
la x19, scratch # base address
sw x27, 0(x19) # store in memory
li x27, 0x1d024f15 # load another value into integer register
amomax.w x16, x27, (x19) # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0x9e23a1fc # load random value
la x3, scratch # base address
sw x28, 0(x3) # store in memory
li x28, 0x0a7c4d6e # load another value into integer register
amomax.w x29, x28, (x3) # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0x2d0e5b39 # load random value
la x18, scratch # base address
sw x29, 0(x18) # store in memory
li x29, 0x8985a894 # load another value into integer register
amomax.w x3, x29, (x18) # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0xaf8f0492 # load random value
la x19, scratch # base address
sw x30, 0(x19) # store in memory
li x30, 0x25446c16 # load another value into integer register
amomax.w x21, x30, (x19) # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0xdba98866 # load random value
la x2, scratch # base address
sw x31, 0(x2) # store in memory
li x31, 0xb00305d2 # load another value into integer register
amomax.w x5, x31, (x2) # perform operation

# Testcase cp_rd (Test destination rd = x0)
li x29, 0xe805c0bc # load random value
la x6, scratch # base address
sw x29, 0(x6) # store in memory
li x29, 0x122d3ecb # load another value into integer register
amomax.w x0, x29, (x6) # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x14, 0x1984582d # load random value
la x23, scratch # base address
sw x14, 0(x23) # store in memory
li x14, 0x22f19198 # load another value into integer register
amomax.w x1, x14, (x23) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x8, 0xfeadf02c # load random value
la x3, scratch # base address
sw x8, 0(x3) # store in memory
li x8, 0xf7ec24a8 # load another value into integer register
amomax.w x2, x8, (x3) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x28, 0x34defd19 # load random value
la x30, scratch # base address
sw x28, 0(x30) # store in memory
li x28, 0xe66487fc # load another value into integer register
amomax.w x3, x28, (x30) # perform operation

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x31, 0xb107ff2a # load random value
la x21, scratch # base address
sw x31, 0(x21) # store in memory
li x31, 0x4b9ca214 # load another value into integer register
amomax.w x4, x31, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x23, 0x1404a645 # load random value
la x10, scratch # base address
sw x23, 0(x10) # store in memory
li x23, 0x13e44cf7 # load another value into integer register
amomax.w x5, x23, (x10) # perform operation

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x1, 0xdc28b63a # load random value
la x3, scratch # base address
sw x1, 0(x3) # store in memory
li x1, 0xa44831bd # load another value into integer register
amomax.w x6, x1, (x3) # perform operation

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x25, 0x969eb2c7 # load random value
la x21, scratch # base address
sw x25, 0(x21) # store in memory
li x25, 0x108989b1 # load another value into integer register
amomax.w x7, x25, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x16, 0xc96978cc # load random value
la x9, scratch # base address
sw x16, 0(x9) # store in memory
li x16, 0x2fb31093 # load another value into integer register
amomax.w x8, x16, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x3, 0x933e333e # load random value
la x27, scratch # base address
sw x3, 0(x27) # store in memory
li x3, 0x92e48761 # load another value into integer register
amomax.w x9, x3, (x27) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x3, 0x94d53632 # load random value
la x21, scratch # base address
sw x3, 0(x21) # store in memory
li x3, 0xdeec7b36 # load another value into integer register
amomax.w x10, x3, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x6, 0xdc5d9177 # load random value
la x8, scratch # base address
sw x6, 0(x8) # store in memory
li x6, 0xa12706a4 # load another value into integer register
amomax.w x11, x6, (x8) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x22, 0x3debbd54 # load random value
la x14, scratch # base address
sw x22, 0(x14) # store in memory
li x22, 0x7bab32bd # load another value into integer register
amomax.w x12, x22, (x14) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x27, 0x75a20cf9 # load random value
la x8, scratch # base address
sw x27, 0(x8) # store in memory
li x27, 0x93808ed4 # load another value into integer register
amomax.w x13, x27, (x8) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x15, 0xa31a71de # load random value
la x26, scratch # base address
sw x15, 0(x26) # store in memory
li x15, 0xa1498216 # load another value into integer register
amomax.w x14, x15, (x26) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x20, 0x024ff026 # load random value
la x21, scratch # base address
sw x20, 0(x21) # store in memory
li x20, 0xec480f86 # load another value into integer register
amomax.w x15, x20, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x6, 0x1dd30dba # load random value
la x20, scratch # base address
sw x6, 0(x20) # store in memory
li x6, 0x5e138a32 # load another value into integer register
amomax.w x16, x6, (x20) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x3, 0xe6254a56 # load random value
la x23, scratch # base address
sw x3, 0(x23) # store in memory
li x3, 0xc904e1e2 # load another value into integer register
amomax.w x17, x3, (x23) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x12, 0x7b4afec4 # load random value
la x28, scratch # base address
sw x12, 0(x28) # store in memory
li x12, 0x37befebc # load another value into integer register
amomax.w x18, x12, (x28) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x25, 0xa2378f87 # load random value
la x21, scratch # base address
sw x25, 0(x21) # store in memory
li x25, 0x8ae258f1 # load another value into integer register
amomax.w x19, x25, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x5, 0x5f54a346 # load random value
la x14, scratch # base address
sw x5, 0(x14) # store in memory
li x5, 0x8eeebcb2 # load another value into integer register
amomax.w x20, x5, (x14) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x7, 0x3a9fdc65 # load random value
la x24, scratch # base address
sw x7, 0(x24) # store in memory
li x7, 0x4c4e2487 # load another value into integer register
amomax.w x21, x7, (x24) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x3, 0x5e1c7049 # load random value
la x24, scratch # base address
sw x3, 0(x24) # store in memory
li x3, 0x1b6116cb # load another value into integer register
amomax.w x22, x3, (x24) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x30, 0x59be0736 # load random value
la x2, scratch # base address
sw x30, 0(x2) # store in memory
li x30, 0x7a4d95fa # load another value into integer register
amomax.w x23, x30, (x2) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x17, 0xee951a09 # load random value
la x5, scratch # base address
sw x17, 0(x5) # store in memory
li x17, 0x67a17972 # load another value into integer register
amomax.w x24, x17, (x5) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x18, 0xac14e248 # load random value
la x25, scratch # base address
sw x18, 0(x25) # store in memory
li x18, 0x8c124527 # load another value into integer register
amomax.w x25, x18, (x25) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x12, 0x34a8416a # load random value
la x29, scratch # base address
sw x12, 0(x29) # store in memory
li x12, 0x00c4d5bc # load another value into integer register
amomax.w x26, x12, (x29) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x18, 0xe5c7010f # load random value
la x1, scratch # base address
sw x18, 0(x1) # store in memory
li x18, 0xaa6a731b # load another value into integer register
amomax.w x27, x18, (x1) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x20, 0x1b2c0b9a # load random value
la x7, scratch # base address
sw x20, 0(x7) # store in memory
li x20, 0x69bda0a2 # load another value into integer register
amomax.w x28, x20, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x11, 0xd2dc5e53 # load random value
la x27, scratch # base address
sw x11, 0(x27) # store in memory
li x11, 0x0f15f0d5 # load another value into integer register
amomax.w x29, x11, (x27) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x24, 0xae92b781 # load random value
la x5, scratch # base address
sw x24, 0(x5) # store in memory
li x24, 0xa51c5f48 # load another value into integer register
amomax.w x30, x24, (x5) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x23, 0x551a746d # load random value
la x26, scratch # base address
sw x23, 0(x26) # store in memory
li x23, 0xda243f5e # load another value into integer register
amomax.w x31, x23, (x26) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x23, 0xd8865885 # load random value
la x3, scratch # base address
sw x23, 0(x3) # store in memory
li x23, 0x00000000 # load another value into integer register
amomax.w x1, x23, (x3) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x27, 0x79ceab6c # load random value
la x5, scratch # base address
sw x27, 0(x5) # store in memory
li x27, 0x00000001 # load another value into integer register
amomax.w x28, x27, (x5) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x9, 0x45f07664 # load random value
la x13, scratch # base address
sw x9, 0(x13) # store in memory
li x9, 0x00000002 # load another value into integer register
amomax.w x25, x9, (x13) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x29, 0x81dfb5e4 # load random value
la x8, scratch # base address
sw x29, 0(x8) # store in memory
li x29, 0x80000000 # load another value into integer register
amomax.w x1, x29, (x8) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x13, 0x71194ba4 # load random value
la x5, scratch # base address
sw x13, 0(x5) # store in memory
li x13, 0x80000001 # load another value into integer register
amomax.w x24, x13, (x5) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x30, 0x668e5641 # load random value
la x27, scratch # base address
sw x30, 0(x27) # store in memory
li x30, 0x7fffffff # load another value into integer register
amomax.w x8, x30, (x27) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x21, 0x53a7043f # load random value
la x24, scratch # base address
sw x21, 0(x24) # store in memory
li x21, 0x7ffffffe # load another value into integer register
amomax.w x26, x21, (x24) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x5, 0x44140fbd # load random value
la x20, scratch # base address
sw x5, 0(x20) # store in memory
li x5, 0xffffffff # load another value into integer register
amomax.w x11, x5, (x20) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x26, 0x828a9528 # load random value
la x11, scratch # base address
sw x26, 0(x11) # store in memory
li x26, 0xfffffffe # load another value into integer register
amomax.w x7, x26, (x11) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x11, 0xc279b71f # load random value
la x13, scratch # base address
sw x11, 0(x13) # store in memory
li x11, 0x5bbc8872 # load another value into integer register
amomax.w x2, x11, (x13) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x1, 0x0564e301 # load random value
la x14, scratch # base address
sw x1, 0(x14) # store in memory
li x1, 0xaaaaaaaa # load another value into integer register
amomax.w x6, x1, (x14) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x5, 0xe344f910 # load random value
la x10, scratch # base address
sw x5, 0(x10) # store in memory
li x5, 0x55555555 # load another value into integer register
amomax.w x8, x5, (x10) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xff9d98a9 # load random value
la x1, scratch # base address
sw x1, 0(x1) # store in memory
amomax.w x30, x1, (x1) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xd6cb6c21 # load random value
la x2, scratch # base address
sw x2, 0(x2) # store in memory
amomax.w x2, x2, (x2) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xb02ec929 # load random value
la x3, scratch # base address
sw x3, 0(x3) # store in memory
amomax.w x25, x3, (x3) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x2acbc1a0 # load random value
la x4, scratch # base address
sw x4, 0(x4) # store in memory
amomax.w x13, x4, (x4) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x09c315cc # load random value
la x5, scratch # base address
sw x5, 0(x5) # store in memory
amomax.w x12, x5, (x5) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x70857542 # load random value
la x6, scratch # base address
sw x6, 0(x6) # store in memory
amomax.w x3, x6, (x6) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x29309cf5 # load random value
la x7, scratch # base address
sw x7, 0(x7) # store in memory
amomax.w x28, x7, (x7) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x3a41fda3 # load random value
la x8, scratch # base address
sw x8, 0(x8) # store in memory
amomax.w x30, x8, (x8) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x80dd384b # load random value
la x9, scratch # base address
sw x9, 0(x9) # store in memory
amomax.w x16, x9, (x9) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x9f6ba14b # load random value
la x10, scratch # base address
sw x10, 0(x10) # store in memory
amomax.w x3, x10, (x10) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x8c2aac95 # load random value
la x11, scratch # base address
sw x11, 0(x11) # store in memory
amomax.w x24, x11, (x11) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x9bab93b8 # load random value
la x12, scratch # base address
sw x12, 0(x12) # store in memory
amomax.w x17, x12, (x12) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xdace11da # load random value
la x13, scratch # base address
sw x13, 0(x13) # store in memory
amomax.w x27, x13, (x13) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x87db70ec # load random value
la x14, scratch # base address
sw x14, 0(x14) # store in memory
amomax.w x19, x14, (x14) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x3dd1d7b6 # load random value
la x15, scratch # base address
sw x15, 0(x15) # store in memory
amomax.w x3, x15, (x15) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x8c3fc621 # load random value
la x16, scratch # base address
sw x16, 0(x16) # store in memory
amomax.w x25, x16, (x16) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x2898ab69 # load random value
la x17, scratch # base address
sw x17, 0(x17) # store in memory
amomax.w x10, x17, (x17) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x54bbd58c # load random value
la x18, scratch # base address
sw x18, 0(x18) # store in memory
amomax.w x15, x18, (x18) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x0aef1088 # load random value
la x19, scratch # base address
sw x19, 0(x19) # store in memory
amomax.w x16, x19, (x19) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xf7e2e16c # load random value
la x20, scratch # base address
sw x20, 0(x20) # store in memory
amomax.w x28, x20, (x20) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xe0e8a8ef # load random value
la x21, scratch # base address
sw x21, 0(x21) # store in memory
amomax.w x8, x21, (x21) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xd63b38a5 # load random value
la x22, scratch # base address
sw x22, 0(x22) # store in memory
amomax.w x3, x22, (x22) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xf810355f # load random value
la x23, scratch # base address
sw x23, 0(x23) # store in memory
amomax.w x28, x23, (x23) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xdea001ea # load random value
la x24, scratch # base address
sw x24, 0(x24) # store in memory
amomax.w x30, x24, (x24) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x660ec96c # load random value
la x25, scratch # base address
sw x25, 0(x25) # store in memory
amomax.w x29, x25, (x25) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xb94176da # load random value
la x26, scratch # base address
sw x26, 0(x26) # store in memory
amomax.w x26, x26, (x26) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xb8f40f64 # load random value
la x27, scratch # base address
sw x27, 0(x27) # store in memory
amomax.w x30, x27, (x27) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xee532e45 # load random value
la x28, scratch # base address
sw x28, 0(x28) # store in memory
amomax.w x31, x28, (x28) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xcc708c6b # load random value
la x29, scratch # base address
sw x29, 0(x29) # store in memory
amomax.w x22, x29, (x29) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x45784d76 # load random value
la x30, scratch # base address
sw x30, 0(x30) # store in memory
amomax.w x2, x30, (x30) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x3374c999 # load random value
la x31, scratch # base address
sw x31, 0(x31) # store in memory
amomax.w x25, x31, (x31) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x9, 0xa241ac03 # load random value
la x1, scratch # base address
sw x9, 0(x1) # store in memory
li x9, 0x2635e8d9 # load another value into integer register
amomax.w x1, x9, (x1) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x20, 0xe9fdb5c3 # load random value
la x2, scratch # base address
sw x20, 0(x2) # store in memory
li x20, 0x95de2185 # load another value into integer register
amomax.w x2, x20, (x2) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x20, 0x95d63756 # load random value
la x3, scratch # base address
sw x20, 0(x3) # store in memory
li x20, 0x863bb5be # load another value into integer register
amomax.w x3, x20, (x3) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x10, 0x70d51ac4 # load random value
la x4, scratch # base address
sw x10, 0(x4) # store in memory
li x10, 0xe820e0b2 # load another value into integer register
amomax.w x4, x10, (x4) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x17, 0xa1ed2b81 # load random value
la x5, scratch # base address
sw x17, 0(x5) # store in memory
li x17, 0x9fbe32bf # load another value into integer register
amomax.w x5, x17, (x5) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x30, 0x32fb35e9 # load random value
la x6, scratch # base address
sw x30, 0(x6) # store in memory
li x30, 0xe0ed8631 # load another value into integer register
amomax.w x6, x30, (x6) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x11, 0xf1f2f92d # load random value
la x7, scratch # base address
sw x11, 0(x7) # store in memory
li x11, 0xf2d88bbf # load another value into integer register
amomax.w x7, x11, (x7) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x5, 0xf0a0906f # load random value
la x8, scratch # base address
sw x5, 0(x8) # store in memory
li x5, 0x99e65db4 # load another value into integer register
amomax.w x8, x5, (x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x30, 0x212ed7c7 # load random value
la x9, scratch # base address
sw x30, 0(x9) # store in memory
li x30, 0x1bc98bdf # load another value into integer register
amomax.w x9, x30, (x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x15, 0xc5dd6d7e # load random value
la x10, scratch # base address
sw x15, 0(x10) # store in memory
li x15, 0x669513f9 # load another value into integer register
amomax.w x10, x15, (x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x10, 0x4ba366d5 # load random value
la x11, scratch # base address
sw x10, 0(x11) # store in memory
li x10, 0x09c3989e # load another value into integer register
amomax.w x11, x10, (x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xb05c9321 # load random value
la x12, scratch # base address
sw x12, 0(x12) # store in memory
amomax.w x12, x12, (x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x16, 0x3f95b4ed # load random value
la x13, scratch # base address
sw x16, 0(x13) # store in memory
li x16, 0xe7b3cfe6 # load another value into integer register
amomax.w x13, x16, (x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x8, 0xefcc11a2 # load random value
la x14, scratch # base address
sw x8, 0(x14) # store in memory
li x8, 0xb213596c # load another value into integer register
amomax.w x14, x8, (x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x26, 0x728a43b2 # load random value
la x15, scratch # base address
sw x26, 0(x15) # store in memory
li x26, 0x670a638d # load another value into integer register
amomax.w x15, x26, (x15) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x30, 0x7364ebc9 # load random value
la x16, scratch # base address
sw x30, 0(x16) # store in memory
li x30, 0x645db5ba # load another value into integer register
amomax.w x16, x30, (x16) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x14, 0x6d606fd6 # load random value
la x17, scratch # base address
sw x14, 0(x17) # store in memory
li x14, 0xbf11ed9a # load another value into integer register
amomax.w x17, x14, (x17) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x29, 0xd5f301cc # load random value
la x18, scratch # base address
sw x29, 0(x18) # store in memory
li x29, 0xdc211ffd # load another value into integer register
amomax.w x18, x29, (x18) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x8, 0x9687b92e # load random value
la x19, scratch # base address
sw x8, 0(x19) # store in memory
li x8, 0x1d080886 # load another value into integer register
amomax.w x19, x8, (x19) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x2, 0x21d0139c # load random value
la x20, scratch # base address
sw x2, 0(x20) # store in memory
li x2, 0x874f734a # load another value into integer register
amomax.w x20, x2, (x20) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x25, 0x04ba73cb # load random value
la x21, scratch # base address
sw x25, 0(x21) # store in memory
li x25, 0xe47edafe # load another value into integer register
amomax.w x21, x25, (x21) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x23, 0x5bf66ccb # load random value
la x22, scratch # base address
sw x23, 0(x22) # store in memory
li x23, 0x2b23af76 # load another value into integer register
amomax.w x22, x23, (x22) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x15, 0x255e6f6c # load random value
la x23, scratch # base address
sw x15, 0(x23) # store in memory
li x15, 0x33a03aee # load another value into integer register
amomax.w x23, x15, (x23) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x19, 0xc461fa4e # load random value
la x24, scratch # base address
sw x19, 0(x24) # store in memory
li x19, 0x9fb22eb9 # load another value into integer register
amomax.w x24, x19, (x24) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x10, 0x7c16d35f # load random value
la x25, scratch # base address
sw x10, 0(x25) # store in memory
li x10, 0x3576d301 # load another value into integer register
amomax.w x25, x10, (x25) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x3, 0x6151e788 # load random value
la x26, scratch # base address
sw x3, 0(x26) # store in memory
li x3, 0x50a86a14 # load another value into integer register
amomax.w x26, x3, (x26) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x25, 0xf38d9015 # load random value
la x27, scratch # base address
sw x25, 0(x27) # store in memory
li x25, 0xfe8af554 # load another value into integer register
amomax.w x27, x25, (x27) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x21, 0x1a9173c4 # load random value
la x28, scratch # base address
sw x21, 0(x28) # store in memory
li x21, 0x43f59a83 # load another value into integer register
amomax.w x28, x21, (x28) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x13, 0x580ce436 # load random value
la x29, scratch # base address
sw x13, 0(x29) # store in memory
li x13, 0xc90c07e8 # load another value into integer register
amomax.w x29, x13, (x29) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x11, 0x72a374a5 # load random value
la x30, scratch # base address
sw x11, 0(x30) # store in memory
li x11, 0x7231a828 # load another value into integer register
amomax.w x30, x11, (x30) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x14, 0x8bd74d1e # load random value
la x31, scratch # base address
sw x14, 0(x31) # store in memory
li x14, 0x3f136033 # load another value into integer register
amomax.w x31, x14, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x0, 0x41fc425e # load random value
la x10, scratch # base address
sw x0, 0(x10) # store in memory
li x0, 0x05572ce7 # load another value into integer register
amomax.w x0, x0, (x10) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0xba991a48 # load random value
la x6, scratch # base address
sw x1, 0(x6) # store in memory
li x1, 0x61fca783 # load another value into integer register
amomax.w x1, x1, (x6) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x2, 0x330f466b # load random value
la x22, scratch # base address
sw x2, 0(x22) # store in memory
li x2, 0xf7f807c0 # load another value into integer register
amomax.w x2, x2, (x22) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0xa9c0f2f2 # load random value
la x16, scratch # base address
sw x3, 0(x16) # store in memory
li x3, 0x1489f6e4 # load another value into integer register
amomax.w x3, x3, (x16) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x4c4faba4 # load random value
la x7, scratch # base address
sw x4, 0(x7) # store in memory
li x4, 0x178dee73 # load another value into integer register
amomax.w x4, x4, (x7) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x653789cd # load random value
la x3, scratch # base address
sw x5, 0(x3) # store in memory
li x5, 0x57563af4 # load another value into integer register
amomax.w x5, x5, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x043bb5d2 # load random value
la x28, scratch # base address
sw x6, 0(x28) # store in memory
li x6, 0x7aec0215 # load another value into integer register
amomax.w x6, x6, (x28) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xfdf12b29 # load random value
la x23, scratch # base address
sw x7, 0(x23) # store in memory
li x7, 0x7f27bfd2 # load another value into integer register
amomax.w x7, x7, (x23) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x9d43f200 # load random value
la x16, scratch # base address
sw x8, 0(x16) # store in memory
li x8, 0x094968b3 # load another value into integer register
amomax.w x8, x8, (x16) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x1e1eb153 # load random value
la x29, scratch # base address
sw x9, 0(x29) # store in memory
li x9, 0xddf96398 # load another value into integer register
amomax.w x9, x9, (x29) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x485b1e05 # load random value
la x12, scratch # base address
sw x10, 0(x12) # store in memory
li x10, 0xb2a10daf # load another value into integer register
amomax.w x10, x10, (x12) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0xa7075163 # load random value
la x3, scratch # base address
sw x11, 0(x3) # store in memory
li x11, 0xe4908fe2 # load another value into integer register
amomax.w x11, x11, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0xafb37ac1 # load random value
la x27, scratch # base address
sw x12, 0(x27) # store in memory
li x12, 0x7ada9ede # load another value into integer register
amomax.w x12, x12, (x27) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x153cf708 # load random value
la x26, scratch # base address
sw x13, 0(x26) # store in memory
li x13, 0x505669c5 # load another value into integer register
amomax.w x13, x13, (x26) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0xd2939001 # load random value
la x16, scratch # base address
sw x14, 0(x16) # store in memory
li x14, 0xedfd3e29 # load another value into integer register
amomax.w x14, x14, (x16) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0xfb2e7ce9 # load random value
la x27, scratch # base address
sw x15, 0(x27) # store in memory
li x15, 0x259bfced # load another value into integer register
amomax.w x15, x15, (x27) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0xc55d9972 # load random value
la x31, scratch # base address
sw x16, 0(x31) # store in memory
li x16, 0x52dc72b3 # load another value into integer register
amomax.w x16, x16, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0x8c7f6470 # load random value
la x28, scratch # base address
sw x17, 0(x28) # store in memory
li x17, 0xe3bd08b3 # load another value into integer register
amomax.w x17, x17, (x28) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x18, 0x09ecb0f6 # load random value
la x18, scratch # base address
sw x18, 0(x18) # store in memory
amomax.w x18, x18, (x18) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0x65abca50 # load random value
la x31, scratch # base address
sw x19, 0(x31) # store in memory
li x19, 0x67f99d48 # load another value into integer register
amomax.w x19, x19, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x20, 0xeb776765 # load random value
la x15, scratch # base address
sw x20, 0(x15) # store in memory
li x20, 0x86c9cc92 # load another value into integer register
amomax.w x20, x20, (x15) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0x090ea127 # load random value
la x29, scratch # base address
sw x21, 0(x29) # store in memory
li x21, 0x285421c9 # load another value into integer register
amomax.w x21, x21, (x29) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0x1212c611 # load random value
la x18, scratch # base address
sw x22, 0(x18) # store in memory
li x22, 0x41bc666f # load another value into integer register
amomax.w x22, x22, (x18) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0xe073cca6 # load random value
la x30, scratch # base address
sw x23, 0(x30) # store in memory
li x23, 0xfb432ec2 # load another value into integer register
amomax.w x23, x23, (x30) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x24, 0xdaa17ac4 # load random value
la x22, scratch # base address
sw x24, 0(x22) # store in memory
li x24, 0x1a5285a2 # load another value into integer register
amomax.w x24, x24, (x22) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0x5e4837bb # load random value
la x18, scratch # base address
sw x25, 0(x18) # store in memory
li x25, 0x8ed3ca23 # load another value into integer register
amomax.w x25, x25, (x18) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0xf0591e34 # load random value
la x5, scratch # base address
sw x26, 0(x5) # store in memory
li x26, 0xda75c077 # load another value into integer register
amomax.w x26, x26, (x5) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0xb855d4f6 # load random value
la x22, scratch # base address
sw x27, 0(x22) # store in memory
li x27, 0xd222db93 # load another value into integer register
amomax.w x27, x27, (x22) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0x75e78401 # load random value
la x28, scratch # base address
sw x28, 0(x28) # store in memory
amomax.w x28, x28, (x28) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0xab61dcb6 # load random value
la x11, scratch # base address
sw x29, 0(x11) # store in memory
li x29, 0x24a4102b # load another value into integer register
amomax.w x29, x29, (x11) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0x204ec759 # load random value
la x12, scratch # base address
sw x30, 0(x12) # store in memory
li x30, 0x1b8a44be # load another value into integer register
amomax.w x30, x30, (x12) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0x9eb5a365 # load random value
la x8, scratch # base address
sw x31, 0(x8) # store in memory
li x31, 0x03f388c5 # load another value into integer register
amomax.w x31, x31, (x8) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x34a4ec1f # load random value
la x1, scratch # base address
sw x1, 0(x1) # store in memory
amomax.w x1, x1, (x1) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x4e0ce3ec # load random value
la x2, scratch # base address
sw x2, 0(x2) # store in memory
amomax.w x2, x2, (x2) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xd6ab1cc0 # load random value
la x3, scratch # base address
sw x3, 0(x3) # store in memory
amomax.w x3, x3, (x3) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xb310f5b8 # load random value
la x4, scratch # base address
sw x4, 0(x4) # store in memory
amomax.w x4, x4, (x4) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xe916fa50 # load random value
la x5, scratch # base address
sw x5, 0(x5) # store in memory
amomax.w x5, x5, (x5) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xfa43e4e7 # load random value
la x6, scratch # base address
sw x6, 0(x6) # store in memory
amomax.w x6, x6, (x6) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x0c03f953 # load random value
la x7, scratch # base address
sw x7, 0(x7) # store in memory
amomax.w x7, x7, (x7) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x11721983 # load random value
la x8, scratch # base address
sw x8, 0(x8) # store in memory
amomax.w x8, x8, (x8) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x14bb54d8 # load random value
la x9, scratch # base address
sw x9, 0(x9) # store in memory
amomax.w x9, x9, (x9) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x7159ab71 # load random value
la x10, scratch # base address
sw x10, 0(x10) # store in memory
amomax.w x10, x10, (x10) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xfd7b2a8a # load random value
la x11, scratch # base address
sw x11, 0(x11) # store in memory
amomax.w x11, x11, (x11) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xe9ae2800 # load random value
la x12, scratch # base address
sw x12, 0(x12) # store in memory
amomax.w x12, x12, (x12) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x1dac92bd # load random value
la x13, scratch # base address
sw x13, 0(x13) # store in memory
amomax.w x13, x13, (x13) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x134d7f26 # load random value
la x14, scratch # base address
sw x14, 0(x14) # store in memory
amomax.w x14, x14, (x14) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xb26d5fe8 # load random value
la x15, scratch # base address
sw x15, 0(x15) # store in memory
amomax.w x15, x15, (x15) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xcb7a67b6 # load random value
la x16, scratch # base address
sw x16, 0(x16) # store in memory
amomax.w x16, x16, (x16) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x0eda759e # load random value
la x17, scratch # base address
sw x17, 0(x17) # store in memory
amomax.w x17, x17, (x17) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x1d785396 # load random value
la x18, scratch # base address
sw x18, 0(x18) # store in memory
amomax.w x18, x18, (x18) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xa0c63dd2 # load random value
la x19, scratch # base address
sw x19, 0(x19) # store in memory
amomax.w x19, x19, (x19) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x9c896547 # load random value
la x20, scratch # base address
sw x20, 0(x20) # store in memory
amomax.w x20, x20, (x20) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x614869b8 # load random value
la x21, scratch # base address
sw x21, 0(x21) # store in memory
amomax.w x21, x21, (x21) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xf4617730 # load random value
la x22, scratch # base address
sw x22, 0(x22) # store in memory
amomax.w x22, x22, (x22) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xdba6b337 # load random value
la x23, scratch # base address
sw x23, 0(x23) # store in memory
amomax.w x23, x23, (x23) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x3775583f # load random value
la x24, scratch # base address
sw x24, 0(x24) # store in memory
amomax.w x24, x24, (x24) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x8b43cf4c # load random value
la x25, scratch # base address
sw x25, 0(x25) # store in memory
amomax.w x25, x25, (x25) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x293cfd63 # load random value
la x26, scratch # base address
sw x26, 0(x26) # store in memory
amomax.w x26, x26, (x26) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xfd689550 # load random value
la x27, scratch # base address
sw x27, 0(x27) # store in memory
amomax.w x27, x27, (x27) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xacd4a5a1 # load random value
la x28, scratch # base address
sw x28, 0(x28) # store in memory
amomax.w x28, x28, (x28) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x17b74f29 # load random value
la x29, scratch # base address
sw x29, 0(x29) # store in memory
amomax.w x29, x29, (x29) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xe498cd81 # load random value
la x30, scratch # base address
sw x30, 0(x30) # store in memory
amomax.w x30, x30, (x30) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xd04a3e5f # load random value
la x31, scratch # base address
sw x31, 0(x31) # store in memory
amomax.w x31, x31, (x31) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x20, scratch
add x9, x19, x14 # perform first operation
amomax.w x21, x12, (x20) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x21, scratch
add x17, x27, x14 # perform first operation
amomax.w x11, x18, (x21) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x24, scratch
add x18, x23, x3 # perform first operation
amomax.w x30, x17, (x24) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x30, scratch
add x10, x10, x0 # perform first operation
amomax.w x28, x10, (x30) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x19, scratch
add x20, x20, x0 # perform first operation
amomax.w x1, x23, (x19) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x19, scratch
add x31, x31, x0 # perform first operation
amomax.w x27, x25, (x19) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x3, scratch
add x6, x12, x31 # perform first operation
amomax.w x6, x20, (x3) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x9, scratch
add x16, x28, x26 # perform first operation
amomax.w x16, x15, (x9) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x13, scratch
add x29, x2, x18 # perform first operation
amomax.w x29, x8, (x13) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x27, scratch
add x13, x10, x30 # perform first operation
amomax.w x10, x3, (x27) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x25, scratch
add x17, x9, x2 # perform first operation
amomax.w x2, x27, (x25) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x3, scratch
add x27, x12, x5 # perform first operation
amomax.w x13, x17, (x3) # perform second (triggering) operation

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
